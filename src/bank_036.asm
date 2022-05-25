; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $036", ROMX[$4000], BANK[$36]

    ld [hl], $33                                  ; $4000: $36 $33
    bit 4, a                                      ; $4002: $cb $67
    ld e, c                                       ; $4004: $59
    scf                                           ; $4005: $37
    db $10                                        ; $4006: $10
    ld a, d                                       ; $4007: $7a
    db $38, $b6                                   ; $4008: $38 $b6
    ld c, h                                       ; $400a: $4c
    rst $18                                       ; $400b: $df
    call nc, $bfea                                ; $400c: $d4 $ea $bf
    sub b                                         ; $400f: $90
    halt                                          ; $4010: $76
    ld [hl], h                                    ; $4011: $74
    ld c, b                                       ; $4012: $48
    ld b, c                                       ; $4013: $41
    ld c, h                                       ; $4014: $4c
    db $10                                        ; $4015: $10
    sbc $aa                                       ; $4016: $de $aa
    push bc                                       ; $4018: $c5
    ld [$dbbf], a                                 ; $4019: $ea $bf $db
    ld h, a                                       ; $401c: $67
    dec b                                         ; $401d: $05
    xor $ec                                       ; $401e: $ee $ec
    sbc a                                         ; $4020: $9f
    ccf                                           ; $4021: $3f
    ld l, b                                       ; $4022: $68
    inc e                                         ; $4023: $1c
    dec e                                         ; $4024: $1d
    ld [hl], l                                    ; $4025: $75
    db $dd                                        ; $4026: $dd
    ld a, $25                                     ; $4027: $3e $25
    rst $00                                       ; $4029: $c7
    ld [hl], c                                    ; $402a: $71
    ld e, b                                       ; $402b: $58
    jp nc, $a31c                                  ; $402c: $d2 $1c $a3

    ccf                                           ; $402f: $3f
    ld [hl], $10                                  ; $4030: $36 $10
    ld [$9ed8], a                                 ; $4032: $ea $d8 $9e
    ldh a, [$15]                                  ; $4035: $f0 $15
    ld l, e                                       ; $4037: $6b
    pop de                                        ; $4038: $d1
    jp z, $ce94                                   ; $4039: $ca $94 $ce

    sbc b                                         ; $403c: $98
    inc bc                                        ; $403d: $03
    jp $3b63                                      ; $403e: $c3 $63 $3b


    ld [c], a                                     ; $4041: $e2
    rra                                           ; $4042: $1f
    inc bc                                        ; $4043: $03
    ld b, h                                       ; $4044: $44
    adc a                                         ; $4045: $8f
    add b                                         ; $4046: $80
    sbc [hl]                                      ; $4047: $9e
    ldh a, [$15]                                  ; $4048: $f0 $15
    ld l, e                                       ; $404a: $6b
    pop bc                                        ; $404b: $c1
    ld bc, $f121                                  ; $404c: $01 $21 $f1
    rst $20                                       ; $404f: $e7
    ld c, l                                       ; $4050: $4d
    dec sp                                        ; $4051: $3b
    jp nz, $96b1                                  ; $4052: $c2 $b1 $96

    ld c, $5e                                     ; $4055: $0e $5e
    ld e, e                                       ; $4057: $5b
    dec hl                                        ; $4058: $2b
    cp $7a                                        ; $4059: $fe $7a
    ei                                            ; $405b: $fb
    cp e                                          ; $405c: $bb
    call $3414                                    ; $405d: $cd $14 $34
    di                                            ; $4060: $f3
    xor d                                         ; $4061: $aa
    xor h                                         ; $4062: $ac
    db $e4                                        ; $4063: $e4
    xor a                                         ; $4064: $af
    ld e, b                                       ; $4065: $58
    res 3, [hl]                                   ; $4066: $cb $9e
    xor e                                         ; $4068: $ab
    adc [hl]                                      ; $4069: $8e
    sbc $43                                       ; $406a: $de $43
    ld l, [hl]                                    ; $406c: $6e
    inc [hl]                                      ; $406d: $34
    ld hl, sp-$0d                                 ; $406e: $f8 $f3
    sub [hl]                                      ; $4070: $96
    ret                                           ; $4071: $c9


    rst $18                                       ; $4072: $df
    rst $10                                       ; $4073: $d7
    sbc $fe                                       ; $4074: $de $fe
    dec h                                         ; $4076: $25
    dec hl                                        ; $4077: $2b
    add hl, bc                                    ; $4078: $09
    cp $c0                                        ; $4079: $fe $c0
    sbc e                                         ; $407b: $9b
    ld [hl], $81                                  ; $407c: $36 $81
    cp a                                          ; $407e: $bf
    sbc $2d                                       ; $407f: $de $2d
    jp c, $c1d5                                   ; $4081: $da $d5 $c1

    ld e, a                                       ; $4084: $5f
    ccf                                           ; $4085: $3f
    push bc                                       ; $4086: $c5
    ld [hl-], a                                   ; $4087: $32
    ld a, l                                       ; $4088: $7d
    ld d, e                                       ; $4089: $53
    xor e                                         ; $408a: $ab
    rst $38                                       ; $408b: $ff
    ld b, d                                       ; $408c: $42
    push de                                       ; $408d: $d5
    add d                                         ; $408e: $82
    dec b                                         ; $408f: $05
    add c                                         ; $4090: $81
    inc b                                         ; $4091: $04
    ld h, h                                       ; $4092: $64
    ld l, a                                       ; $4093: $6f
    sbc d                                         ; $4094: $9a
    inc bc                                        ; $4095: $03
    add hl, bc                                    ; $4096: $09
    db $fc                                        ; $4097: $fc
    push af                                       ; $4098: $f5
    ld a, l                                       ; $4099: $7d
    sub $3d                                       ; $409a: $d6 $3d
    ld [bc], a                                    ; $409c: $02
    ld e, b                                       ; $409d: $58
    rst $18                                       ; $409e: $df
    xor [hl]                                      ; $409f: $ae
    db $e3                                        ; $40a0: $e3
    ldh a, [$9e]                                  ; $40a1: $f0 $9e
    ld c, e                                       ; $40a3: $4b
    ld h, d                                       ; $40a4: $62
    dec l                                         ; $40a5: $2d
    cp l                                          ; $40a6: $bd
    ld a, a                                       ; $40a7: $7f
    ld l, h                                       ; $40a8: $6c
    inc a                                         ; $40a9: $3c
    ld l, c                                       ; $40aa: $69
    ld h, [hl]                                    ; $40ab: $66
    or c                                          ; $40ac: $b1
    ld [hl], $f4                                  ; $40ad: $36 $f4
    ld a, l                                       ; $40af: $7d
    ld d, $d2                                     ; $40b0: $16 $d2
    ld [hl-], a                                   ; $40b2: $32
    jp z, $8218                                   ; $40b3: $ca $18 $82

    adc b                                         ; $40b6: $88
    push de                                       ; $40b7: $d5
    sub a                                         ; $40b8: $97
    db $f4                                        ; $40b9: $f4
    ld e, $a2                                     ; $40ba: $1e $a2
    cp e                                          ; $40bc: $bb
    ld c, d                                       ; $40bd: $4a
    ld a, d                                       ; $40be: $7a
    ld [hl], a                                    ; $40bf: $77
    and $ad                                       ; $40c0: $e6 $ad
    dec d                                         ; $40c2: $15
    ld a, a                                       ; $40c3: $7f
    dec e                                         ; $40c4: $1d
    and l                                         ; $40c5: $a5
    or $06                                        ; $40c6: $f6 $06
    xor $a0                                       ; $40c8: $ee $a0
    add l                                         ; $40ca: $85
    add [hl]                                      ; $40cb: $86
    push bc                                       ; $40cc: $c5
    sbc e                                         ; $40cd: $9b
    and $49                                       ; $40ce: $e6 $49
    rra                                           ; $40d0: $1f
    sbc e                                         ; $40d1: $9b
    ld sp, hl                                     ; $40d2: $f9
    ld b, c                                       ; $40d3: $41
    ld [hl], l                                    ; $40d4: $75
    ldh a, [$d7]                                  ; $40d5: $f0 $d7

jr_036_40d7:
    dec c                                         ; $40d7: $0d

Call_036_40d8:
    cp $00                                        ; $40d8: $fe $00
    ei                                            ; $40da: $fb
    scf                                           ; $40db: $37
    db $ed                                        ; $40dc: $ed
    add sp, -$70                                  ; $40dd: $e8 $90
    ld h, [hl]                                    ; $40df: $66
    ld a, [hl]                                    ; $40e0: $7e
    sbc $9e                                       ; $40e1: $de $9e
    ld l, d                                       ; $40e3: $6a
    jr nz, jr_036_4129                            ; $40e4: $20 $43

    ld e, c                                       ; $40e6: $59
    inc hl                                        ; $40e7: $23
    ld e, d                                       ; $40e8: $5a
    cp d                                          ; $40e9: $ba
    sbc a                                         ; $40ea: $9f
    cp a                                          ; $40eb: $bf
    ld e, [hl]                                    ; $40ec: $5e
    xor h                                         ; $40ed: $ac
    or a                                          ; $40ee: $b7
    ld l, d                                       ; $40ef: $6a
    ld [hl], l                                    ; $40f0: $75
    ld e, c                                       ; $40f1: $59
    adc e                                         ; $40f2: $8b
    inc bc                                        ; $40f3: $03
    cp h                                          ; $40f4: $bc
    ld d, l                                       ; $40f5: $55
    adc e                                         ; $40f6: $8b
    dec e                                         ; $40f7: $1d
    cp h                                          ; $40f8: $bc
    inc h                                         ; $40f9: $24
    call $c901                                    ; $40fa: $cd $01 $c9
    sbc a                                         ; $40fd: $9f
    or d                                          ; $40fe: $b2
    dec h                                         ; $40ff: $25
    rst $18                                       ; $4100: $df
    rst $00                                       ; $4101: $c7
    and [hl]                                      ; $4102: $a6
    ld b, h                                       ; $4103: $44
    jp c, Jump_000_21d1                           ; $4104: $da $d1 $21

    push bc                                       ; $4107: $c5
    adc e                                         ; $4108: $8b
    ld d, d                                       ; $4109: $52
    ldh a, [rRP]                                  ; $410a: $f0 $56
    dec l                                         ; $410c: $2d
    sub [hl]                                      ; $410d: $96
    dec [hl]                                      ; $410e: $35
    and d                                         ; $410f: $a2
    and l                                         ; $4110: $a5
    xor h                                         ; $4111: $ac
    dec e                                         ; $4112: $1d
    call nc, $e69b                                ; $4113: $d4 $9b $e6
    add hl, bc                                    ; $4116: $09
    db $fc                                        ; $4117: $fc
    push af                                       ; $4118: $f5
    dec h                                         ; $4119: $25
    ld [bc], a                                    ; $411a: $02
    cp b                                          ; $411b: $b8
    rst $30                                       ; $411c: $f7

Jump_036_411d:
    sub b                                         ; $411d: $90
    dec de                                        ; $411e: $1b
    dec c                                         ; $411f: $0d
    cp $ba                                        ; $4120: $fe $ba
    pop bc                                        ; $4122: $c1
    rra                                           ; $4123: $1f
    inc [hl]                                      ; $4124: $34
    or e                                          ; $4125: $b3
    cp $fc                                        ; $4126: $fe $fc
    pop bc                                        ; $4128: $c1

jr_036_4129:
    cp c                                          ; $4129: $b9
    ld a, [$5623]                                 ; $412a: $fa $23 $56
    xor e                                         ; $412d: $ab
    ld [$564f], a                                 ; $412e: $ea $4f $56
    adc l                                         ; $4131: $8d
    xor l                                         ; $4132: $ad
    or [hl]                                       ; $4133: $b6
    ld [hl], h                                    ; $4134: $74
    or [hl]                                       ; $4135: $b6
    sbc a                                         ; $4136: $9f
    cp c                                          ; $4137: $b9
    ld l, h                                       ; $4138: $6c
    jr nz, jr_036_40d7                            ; $4139: $20 $9c

    sbc e                                         ; $413b: $9b
    db $fc                                        ; $413c: $fc
    ld b, l                                       ; $413d: $45
    add $a4                                       ; $413e: $c6 $a4
    add hl, sp                                    ; $4140: $39
    ld c, c                                       ; $4141: $49
    ld l, d                                       ; $4142: $6a
    ld c, b                                       ; $4143: $48
    add hl, de                                    ; $4144: $19
    db $fd                                        ; $4145: $fd
    ld a, d                                       ; $4146: $7a
    rrca                                          ; $4147: $0f
    ld l, e                                       ; $4148: $6b
    ld c, e                                       ; $4149: $4b
    ld h, e                                       ; $414a: $63
    or c                                          ; $414b: $b1
    jp $300c                                      ; $414c: $c3 $0c $30


    inc h                                         ; $414f: $24
    rlca                                          ; $4150: $07
    and e                                         ; $4151: $a3
    cp l                                          ; $4152: $bd
    db $db                                        ; $4153: $db
    ld a, b                                       ; $4154: $78
    ld d, d                                       ; $4155: $52
    srl l                                         ; $4156: $cb $3d
    sub b                                         ; $4158: $90
    ccf                                           ; $4159: $3f
    add sp, -$23                                  ; $415a: $e8 $dd
    and d                                         ; $415c: $a2
    dec c                                         ; $415d: $0d
    rst $20                                       ; $415e: $e7
    sbc $2d                                       ; $415f: $de $2d
    jp c, Jump_036_7bdb                           ; $4161: $da $db $7b

    ld c, b                                       ; $4164: $48
    ccf                                           ; $4165: $3f
    and l                                         ; $4166: $a5
    xor [hl]                                      ; $4167: $ae
    ld e, d                                       ; $4168: $5a
    or h                                          ; $4169: $b4
    cp b                                          ; $416a: $b8
    and e                                         ; $416b: $a3
    call nc, $c0de                                ; $416c: $d4 $de $c0
    dec e                                         ; $416f: $1d
    or h                                          ; $4170: $b4
    ret nc                                        ; $4171: $d0

    or b                                          ; $4172: $b0
    ld a, b                                       ; $4173: $78
    db $d3                                        ; $4174: $d3
    inc e                                         ; $4175: $1c
    ret                                           ; $4176: $c9


    ld e, a                                       ; $4177: $5f
    push af                                       ; $4178: $f5
    or e                                          ; $4179: $b3
    ld b, e                                       ; $417a: $43
    ld [hl], d                                    ; $417b: $72
    or e                                          ; $417c: $b3
    rst $38                                       ; $417d: $ff
    ld h, [hl]                                    ; $417e: $66
    ld a, [bc]                                    ; $417f: $0a
    adc $fd                                       ; $4180: $ce $fd
    xor h                                         ; $4182: $ac
    and l                                         ; $4183: $a5
    ld hl, sp+$33                                 ; $4184: $f8 $33
    add sp, $06                                   ; $4186: $e8 $06
    ld a, a                                       ; $4188: $7f
    ld [hl], b                                    ; $4189: $70
    ld l, [hl]                                    ; $418a: $6e
    ldh a, [$d7]                                  ; $418b: $f0 $d7
    sub a                                         ; $418d: $97
    ld [$5ae0], sp                                ; $418e: $08 $e0 $5a
    pop af                                        ; $4191: $f1
    rst $10                                       ; $4192: $d7
    dec c                                         ; $4193: $0d
    cp $a0                                        ; $4194: $fe $a0
    sbc c                                         ; $4196: $99
    rst $28                                       ; $4197: $ef
    ld e, a                                       ; $4198: $5f
    ld d, $d2                                     ; $4199: $16 $d2
    inc e                                         ; $419b: $1c
    ld c, c                                       ; $419c: $49
    pop hl                                        ; $419d: $e1
    ld [de], a                                    ; $419e: $12
    ld b, $70                                     ; $419f: $06 $70
    sub e                                         ; $41a1: $93
    cp $e1                                        ; $41a2: $fe $e1
    and [hl]                                      ; $41a4: $a6
    ld l, c                                       ; $41a5: $69
    ld e, d                                       ; $41a6: $5a
    inc c                                         ; $41a7: $0c
    scf                                           ; $41a8: $37
    db $10                                        ; $41a9: $10
    cp d                                          ; $41aa: $ba
    pop bc                                        ; $41ab: $c1
    rra                                           ; $41ac: $1f
    db $f4                                        ; $41ad: $f4
    add l                                         ; $41ae: $85
    ld h, l                                       ; $41af: $65
    ld c, b                                       ; $41b0: $48
    sbc c                                         ; $41b1: $99
    pop hl                                        ; $41b2: $e1
    ld [c], a                                     ; $41b3: $e2
    ld b, l                                       ; $41b4: $45
    ld l, c                                       ; $41b5: $69
    rst $30                                       ; $41b6: $f7
    di                                            ; $41b7: $f3
    rlca                                          ; $41b8: $07
    ret c                                         ; $41b9: $d8

    or c                                          ; $41ba: $b1
    add hl, bc                                    ; $41bb: $09
    or b                                          ; $41bc: $b0
    ld h, b                                       ; $41bd: $60
    push de                                       ; $41be: $d5
    add d                                         ; $41bf: $82
    push hl                                       ; $41c0: $e5
    xor $0c                                       ; $41c1: $ee $0c
    adc e                                         ; $41c3: $8b
    adc [hl]                                      ; $41c4: $8e
    ld c, l                                       ; $41c5: $4d
    sbc e                                         ; $41c6: $9b
    ret nz                                        ; $41c7: $c0

    ld e, a                                       ; $41c8: $5f
    ld l, a                                       ; $41c9: $6f
    ld a, a                                       ; $41ca: $7f
    or a                                          ; $41cb: $b7
    dec de                                        ; $41cc: $1b
    db $fc                                        ; $41cd: $fc
    ld b, c                                       ; $41ce: $41
    rst $28                                       ; $41cf: $ef
    ld h, c                                       ; $41d0: $61
    ld l, l                                       ; $41d1: $6d
    add hl, hl                                    ; $41d2: $29
    ld e, c                                       ; $41d3: $59
    add hl, bc                                    ; $41d4: $09
    adc c                                         ; $41d5: $89
    rst $18                                       ; $41d6: $df
    add [hl]                                      ; $41d7: $86
    db $e4                                        ; $41d8: $e4
    ld c, c                                       ; $41d9: $49
    rra                                           ; $41da: $1f
    dec de                                        ; $41db: $1b
    ld [$1a4d], sp                                ; $41dc: $08 $4d $1a
    sbc [hl]                                      ; $41df: $9e
    jr nc, jr_036_425d                            ; $41e0: $30 $7b

    ld b, a                                       ; $41e2: $47
    ret                                           ; $41e3: $c9


    push bc                                       ; $41e4: $c5
    ld d, d                                       ; $41e5: $52

jr_036_41e6:
    rra                                           ; $41e6: $1f
    ld l, c                                       ; $41e7: $69
    ld c, $73                                     ; $41e8: $0e $73
    xor c                                         ; $41ea: $a9
    rst $20                                       ; $41eb: $e7
    ld hl, $e04d                                  ; $41ec: $21 $4d $e0
    xor a                                         ; $41ef: $af
    rst $28                                       ; $41f0: $ef
    or e                                          ; $41f1: $b3
    xor [hl]                                      ; $41f2: $ae
    pop hl                                        ; $41f3: $e1
    cp $b1                                        ; $41f4: $fe $b1
    sbc c                                         ; $41f6: $99
    rst $18                                       ; $41f7: $df
    ret c                                         ; $41f8: $d8

    ld [bc], a                                    ; $41f9: $02
    ld l, c                                       ; $41fa: $69
    ld c, $09                                     ; $41fb: $0e $09
    db $fc                                        ; $41fd: $fc
    sub l                                         ; $41fe: $95
    adc l                                         ; $41ff: $8d
    dec l                                         ; $4200: $2d
    ld a, [c]                                     ; $4201: $f2
    ld [hl], a                                    ; $4202: $77
    ld l, l                                       ; $4203: $6d
    pop de                                        ; $4204: $d1
    ld bc, $8265                                  ; $4205: $01 $65 $82
    ld e, d                                       ; $4208: $5a
    db $ed                                        ; $4209: $ed
    db $ed                                        ; $420a: $ed
    dec bc                                        ; $420b: $0b
    ld c, e                                       ; $420c: $4b
    or l                                          ; $420d: $b5
    ld a, h                                       ; $420e: $7c
    dec [hl]                                      ; $420f: $35
    adc [hl]                                      ; $4210: $8e
    scf                                           ; $4211: $37
    ld l, l                                       ; $4212: $6d
    ld [bc], a                                    ; $4213: $02
    ld a, a                                       ; $4214: $7f
    ld a, l                                       ; $4215: $7d
    sbc a                                         ; $4216: $9f
    ld [hl], l                                    ; $4217: $75
    push af                                       ; $4218: $f5
    rst $00                                       ; $4219: $c7
    xor [hl]                                      ; $421a: $ae
    sub l                                         ; $421b: $95
    dec sp                                        ; $421c: $3b
    ld [$de23], a                                 ; $421d: $ea $23 $de
    cpl                                           ; $4220: $2f
    add c                                         ; $4221: $81
    ld c, $5a                                     ; $4222: $0e $5a
    ld [hl-], a                                   ; $4224: $32
    inc hl                                        ; $4225: $23
    ld a, d                                       ; $4226: $7a
    db $d3                                        ; $4227: $d3
    inc e                                         ; $4228: $1c
    ld c, c                                       ; $4229: $49
    rra                                           ; $422a: $1f
    dec sp                                        ; $422b: $3b
    ld [$de23], a                                 ; $422c: $ea $23 $de
    cpl                                           ; $422f: $2f
    add c                                         ; $4230: $81
    ld b, $42                                     ; $4231: $06 $42
    rst $00                                       ; $4233: $c7
    ld h, a                                       ; $4234: $67
    ld a, [c]                                     ; $4235: $f2
    ld [hl], a                                    ; $4236: $77
    ld [hl], a                                    ; $4237: $77
    xor h                                         ; $4238: $ac
    sub c                                         ; $4239: $91
    cp a                                          ; $423a: $bf
    db $fd                                        ; $423b: $fd
    adc d                                         ; $423c: $8a
    db $ec                                        ; $423d: $ec
    pop af                                        ; $423e: $f1
    db $d3                                        ; $423f: $d3
    adc [hl]                                      ; $4240: $8e
    ld c, $e9                                     ; $4241: $0e $e9

jr_036_4243:
    ld b, c                                       ; $4243: $41
    ld b, d                                       ; $4244: $42
    db $f4                                        ; $4245: $f4
    halt                                          ; $4246: $76
    cpl                                           ; $4247: $2f
    cp $7a                                        ; $4248: $fe $7a
    ld [hl], a                                    ; $424a: $77
    add b                                         ; $424b: $80
    push hl                                       ; $424c: $e5
    call c, Call_000_3dd9                         ; $424d: $dc $d9 $3d
    jr jr_036_41e6                                ; $4250: $18 $94

    ld a, [$7bdc]                                 ; $4252: $fa $dc $7b
    ld c, b                                       ; $4255: $48
    pop de                                        ; $4256: $d1
    rst $08                                       ; $4257: $cf
    ld e, e                                       ; $4258: $5b
    or l                                          ; $4259: $b5

jr_036_425a:
    ld e, b                                       ; $425a: $58
    inc e                                         ; $425b: $1c
    ld c, b                                       ; $425c: $48

jr_036_425d:
    inc b                                         ; $425d: $04
    ld c, e                                       ; $425e: $4b
    sbc d                                         ; $425f: $9a
    inc bc                                        ; $4260: $03
    or e                                          ; $4261: $b3
    ld a, l                                       ; $4262: $7d
    ld b, h                                       ; $4263: $44
    add sp, $11                                   ; $4264: $e8 $11
    db $fc                                        ; $4266: $fc
    push af                                       ; $4267: $f5
    add l                                         ; $4268: $85
    and l                                         ; $4269: $a5
    dec de                                        ; $426a: $1b
    db $fc                                        ; $426b: $fc
    ld b, c                                       ; $426c: $41
    ccf                                           ; $426d: $3f
    and l                                         ; $426e: $a5
    adc [hl]                                      ; $426f: $8e
    dec e                                         ; $4270: $1d
    sub d                                         ; $4271: $92
    inc bc                                        ; $4272: $03
    di                                            ; $4273: $f3
    xor h                                         ; $4274: $ac
    xor $11                                       ; $4275: $ee $11
    db $fc                                        ; $4277: $fc
    push af                                       ; $4278: $f5
    dec hl                                        ; $4279: $2b
    cp $ba                                        ; $427a: $fe $ba
    pop bc                                        ; $427c: $c1
    rra                                           ; $427d: $1f
    inc c                                         ; $427e: $0c
    ret                                           ; $427f: $c9


    ld bc, $2943                                  ; $4280: $01 $43 $29
    ld e, [hl]                                    ; $4283: $5e
    call $9c14                                    ; $4284: $cd $14 $9c
    ei                                            ; $4287: $fb
    ld e, c                                       ; $4288: $59
    ld c, e                                       ; $4289: $4b
    pop de                                        ; $428a: $d1
    ld d, c                                       ; $428b: $51
    sub [hl]                                      ; $428c: $96
    ld e, [hl]                                    ; $428d: $5e
    db $e3                                        ; $428e: $e3
    sub h                                         ; $428f: $94
    ld a, [hl-]                                   ; $4290: $3a
    ret nc                                        ; $4291: $d0

    ld l, c                                       ; $4292: $69
    ld c, $49                                     ; $4293: $0e $49
    cp a                                          ; $4295: $bf
    jr jr_036_4243                                ; $4296: $18 $ab

    ld a, e                                       ; $4298: $7b
    rrca                                          ; $4299: $0f
    ld c, c                                       ; $429a: $49
    sbc e                                         ; $429b: $9b
    db $fc                                        ; $429c: $fc
    add hl, hl                                    ; $429d: $29
    jr jr_036_425a                                ; $429e: $18 $ba

jr_036_42a0:
    sbc a                                         ; $42a0: $9f
    cp a                                          ; $42a1: $bf
    adc [hl]                                      ; $42a2: $8e
    db $fc                                        ; $42a3: $fc
    sub h                                         ; $42a4: $94
    cp b                                          ; $42a5: $b8
    add $54                                       ; $42a6: $c6 $54
    xor l                                         ; $42a8: $ad
    xor $cc                                       ; $42a9: $ee $cc
    ld a, [c]                                     ; $42ab: $f2
    ld e, c                                       ; $42ac: $59
    sub $1d                                       ; $42ad: $d6 $1d
    xor d                                         ; $42af: $aa
    db $10                                        ; $42b0: $10
    ld sp, hl                                     ; $42b1: $f9
    ei                                            ; $42b2: $fb
    ld a, [hl+]                                   ; $42b3: $2a
    call Call_036_4c01                            ; $42b4: $cd $01 $4c
    cp $96                                        ; $42b7: $fe $96
    ld b, h                                       ; $42b9: $44
    db $10                                        ; $42ba: $10
    and [hl]                                      ; $42bb: $a6
    ld [hl], l                                    ; $42bc: $75

jr_036_42bd:
    ld l, h                                       ; $42bd: $6c
    rst $28                                       ; $42be: $ef
    sbc $c8                                       ; $42bf: $de $c8
    ld a, [$ea2c]                                 ; $42c1: $fa $2c $ea
    jr c, jr_036_42bd                             ; $42c4: $38 $f7

    ld [hl], b                                    ; $42c6: $70
    xor h                                         ; $42c7: $ac
    sla h                                         ; $42c8: $cb $24
    adc l                                         ; $42ca: $8d

jr_036_42cb:
    db $e3                                        ; $42cb: $e3
    ld [hl], e                                    ; $42cc: $73
    ld e, a                                       ; $42cd: $5f
    ld e, b                                       ; $42ce: $58
    ld a, d                                       ; $42cf: $7a
    sub b                                         ; $42d0: $90
    db $10                                        ; $42d1: $10
    pop bc                                        ; $42d2: $c1
    ld e, e                                       ; $42d3: $5b
    inc c                                         ; $42d4: $0c
    sub a                                         ; $42d5: $97
    ld a, [hl]                                    ; $42d6: $7e
    dec b                                         ; $42d7: $05
    dec e                                         ; $42d8: $1d
    ld sp, hl                                     ; $42d9: $f9
    add hl, hl                                    ; $42da: $29
    ld [hl], c                                    ; $42db: $71
    adc l                                         ; $42dc: $8d
    ld l, c                                       ; $42dd: $69
    ld c, b                                       ; $42de: $48
    and $d5                                       ; $42df: $e6 $d5
    rst $30                                       ; $42e1: $f7
    xor e                                         ; $42e2: $ab
    ld [$37e6], sp                                ; $42e3: $08 $e6 $37
    ld l, a                                       ; $42e6: $6f
    sbc d                                         ; $42e7: $9a
    inc bc                                        ; $42e8: $03
    or e                                          ; $42e9: $b3
    ld a, h                                       ; $42ea: $7c
    push bc                                       ; $42eb: $c5
    ld e, a                                       ; $42ec: $5f
    db $d3                                        ; $42ed: $d3
    inc [hl]                                      ; $42ee: $34
    call $4901                                    ; $42ef: $cd $01 $49
    cp a                                          ; $42f2: $bf
    jr jr_036_42a0                                ; $42f3: $18 $ab

    adc e                                         ; $42f5: $8b
    pop hl                                        ; $42f6: $e1
    sbc [hl]                                      ; $42f7: $9e
    ld a, [$e487]                                 ; $42f8: $fa $87 $e4
    and e                                         ; $42fb: $a3
    ccf                                           ; $42fc: $3f
    or $f8                                        ; $42fd: $f6 $f8
    db $fc                                        ; $42ff: $fc
    ld b, c                                       ; $4300: $41

Call_036_4301:
    db $e3                                        ; $4301: $e3
    ld c, c                                       ; $4302: $49

jr_036_4303:
    or l                                          ; $4303: $b5
    ld [hl], a                                    ; $4304: $77
    ei                                            ; $4305: $fb
    add hl, hl                                    ; $4306: $29
    ld [hl], l                                    ; $4307: $75
    ld e, a                                       ; $4308: $5f
    ld e, b                                       ; $4309: $58
    adc $3d                                       ; $430a: $ce $3d
    ld [bc], a                                    ; $430c: $02
    ret nz                                        ; $430d: $c0

    db $db                                        ; $430e: $db
    ret c                                         ; $430f: $d8

    ld l, d                                       ; $4310: $6a
    ld c, e                                       ; $4311: $4b
    ld h, a                                       ; $4312: $67
    rst $38                                       ; $4313: $ff
    db $fc                                        ; $4314: $fc
    pop bc                                        ; $4315: $c1
    adc h                                         ; $4316: $8c
    add hl, sp                                    ; $4317: $39
    or e                                          ; $4318: $b3
    xor e                                         ; $4319: $ab
    dec a                                         ; $431a: $3d
    scf                                           ; $431b: $37

Jump_036_431c:
    ld hl, sp-$15                                 ; $431c: $f8 $eb
    ei                                            ; $431e: $fb
    xor h                                         ; $431f: $ac
    xor e                                         ; $4320: $ab
    ccf                                           ; $4321: $3f
    halt                                          ; $4322: $76
    call nc, $bc47                                ; $4323: $d4 $47 $bc
    ld e, a                                       ; $4326: $5f
    ld [bc], a                                    ; $4327: $02
    dec e                                         ; $4328: $1d
    or h                                          ; $4329: $b4
    ld h, h                                       ; $432a: $64
    ld b, [hl]                                    ; $432b: $46
    db $f4                                        ; $432c: $f4
    and [hl]                                      ; $432d: $a6
    add hl, sp                                    ; $432e: $39
    ld [hl], e                                    ; $432f: $73
    xor c                                         ; $4330: $a9
    rst $20                                       ; $4331: $e7
    ld hl, $0a4d                                  ; $4332: $21 $4d $0a
    ld h, e                                       ; $4335: $63
    inc bc                                        ; $4336: $03
    and c                                         ; $4337: $a1
    adc [hl]                                      ; $4338: $8e
    dec l                                         ; $4339: $2d
    ld a, [c]                                     ; $433a: $f2
    ld b, a                                       ; $433b: $47
    db $e3                                        ; $433c: $e3
    jr c, jr_036_42cb                             ; $433d: $38 $8c

    sbc l                                         ; $433f: $9d
    rst $10                                       ; $4340: $d7
    sub d                                         ; $4341: $92
    ld sp, hl                                     ; $4342: $f9

jr_036_4343:
    ld a, c                                       ; $4343: $79
    db $d3                                        ; $4344: $d3
    sbc [hl]                                      ; $4345: $9e
    ldh [$b7], a                                  ; $4346: $e0 $b7
    ld h, l                                       ; $4348: $65
    add d                                         ; $4349: $82
    ld a, h                                       ; $434a: $7c
    ld h, d                                       ; $434b: $62
    ld b, b                                       ; $434c: $40
    db $ed                                        ; $434d: $ed
    dec c                                         ; $434e: $0d
    ld e, h                                       ; $434f: $5c
    add d                                         ; $4350: $82
    inc h                                         ; $4351: $24
    ld c, l                                       ; $4352: $4d
    cp $0a                                        ; $4353: $fe $0a
    sra b                                         ; $4355: $cb $28
    ld h, e                                       ; $4357: $63
    ld [$5622], sp                                ; $4358: $08 $22 $56
    ld e, a                                       ; $435b: $5f
    ld d, d                                       ; $435c: $52
    or l                                          ; $435d: $b5
    cp d                                          ; $435e: $ba
    adc [hl]                                      ; $435f: $8e
    ld [hl], l                                    ; $4360: $75
    sbc c                                         ; $4361: $99
    jr nz, jr_036_4303                            ; $4362: $20 $9f

    ld hl, sp-$3e                                 ; $4364: $f8 $c2
    ld a, [hl-]                                   ; $4366: $3a
    jr nz, jr_036_43d6                            ; $4367: $20 $6d

    ld [bc], a                                    ; $4369: $02
    ld a, a                                       ; $436a: $7f
    ld h, l                                       ; $436b: $65
    ld h, e                                       ; $436c: $63
    ld a, e                                       ; $436d: $7b
    add h                                         ; $436e: $84
    inc d                                         ; $436f: $14
    add e                                         ; $4370: $83
    ccf                                           ; $4371: $3f
    res 7, c                                      ; $4372: $cb $b9
    ld a, [$7623]                                 ; $4374: $fa $23 $76
    db $e4                                        ; $4377: $e4
    rst $10                                       ; $4378: $d7
    rst $38                                       ; $4379: $ff
    add sp, -$58                                  ; $437a: $e8 $a8
    db $eb                                        ; $437c: $eb
    jr nz, jr_036_4343                            ; $437d: $20 $c4

    ld h, e                                       ; $437f: $63
    ld l, d                                       ; $4380: $6a
    dec h                                         ; $4381: $25
    ld l, [hl]                                    ; $4382: $6e
    ld [hl], d                                    ; $4383: $72
    ld d, b                                       ; $4384: $50
    jp nz, Jump_000_2e3d                          ; $4385: $c2 $3d $2e

    ret                                           ; $4388: $c9


    cp h                                          ; $4389: $bc
    call $3414                                    ; $438a: $cd $14 $34
    inc sp                                        ; $438d: $33
    dec hl                                        ; $438e: $2b
    ld e, a                                       ; $438f: $5f
    pop af                                        ; $4390: $f1
    rst $20                                       ; $4391: $e7
    db $ed                                        ; $4392: $ed
    db $ed                                        ; $4393: $ed
    rst $28                                       ; $4394: $ef
    and [hl]                                      ; $4395: $a6
    ld c, l                                       ; $4396: $4d
    ld a, b                                       ; $4397: $78
    jp nc, Jump_036_45bb                          ; $4398: $d2 $bb $45

    dec de                                        ; $439b: $1b
    xor d                                         ; $439c: $aa
    jp Jump_036_661d                              ; $439d: $c3 $1d $66


    add b                                         ; $43a0: $80
    ld bc, $efe2                                  ; $43a1: $01 $e2 $ef
    ld a, d                                       ; $43a4: $7a
    adc e                                         ; $43a5: $8b
    ld e, a                                       ; $43a6: $5f
    or c                                          ; $43a7: $b1
    sub [hl]                                      ; $43a8: $96
    db $e3                                        ; $43a9: $e3
    di                                            ; $43aa: $f3
    rst $20                                       ; $43ab: $e7
    ld c, l                                       ; $43ac: $4d
    ld [hl], e                                    ; $43ad: $73
    ld c, c                                       ; $43ae: $49
    pop hl                                        ; $43af: $e1
    ld c, $33                                     ; $43b0: $0e $33
    ret nz                                        ; $43b2: $c0

    nop                                           ; $43b3: $00
    pop af                                        ; $43b4: $f1
    ld [hl], a                                    ; $43b5: $77
    cp l                                          ; $43b6: $bd
    inc sp                                        ; $43b7: $33
    and $09                                       ; $43b8: $e6 $09
    ld e, c                                       ; $43ba: $59
    nop                                           ; $43bb: $00

Call_036_43bc:
    inc c                                         ; $43bc: $0c
    ret                                           ; $43bd: $c9


    ld bc, $abb3                                  ; $43be: $01 $b3 $ab
    db $ed                                        ; $43c1: $ed
    ld h, a                                       ; $43c2: $67
    dec l                                         ; $43c3: $2d
    db $fd                                        ; $43c4: $fd
    ld l, h                                       ; $43c5: $6c
    ld h, e                                       ; $43c6: $63
    ld l, e                                       ; $43c7: $6b
    dec h                                         ; $43c8: $25
    xor $30                                       ; $43c9: $ee $30
    inc bc                                        ; $43cb: $03
    ld a, b                                       ; $43cc: $78
    db $d3                                        ; $43cd: $d3
    inc e                                         ; $43ce: $1c
    ld c, c                                       ; $43cf: $49
    rra                                           ; $43d0: $1f
    or c                                          ; $43d1: $b1
    ld b, a                                       ; $43d2: $47
    ld c, b                                       ; $43d3: $48
    push af                                       ; $43d4: $f5
    rst $00                                       ; $43d5: $c7

jr_036_43d6:
    or d                                          ; $43d6: $b2
    db $f4                                        ; $43d7: $f4
    ld a, [de]                                    ; $43d8: $1a
    and a                                         ; $43d9: $a7
    dec de                                        ; $43da: $1b
    db $fc                                        ; $43db: $fc
    ld b, c                                       ; $43dc: $41
    rst $30                                       ; $43dd: $f7
    ld [c], a                                     ; $43de: $e2
    xor a                                         ; $43df: $af
    rst $00                                       ; $43e0: $c7
    and a                                         ; $43e1: $a7
    dec e                                         ; $43e2: $1d
    cp h                                          ; $43e3: $bc
    db $e4                                        ; $43e4: $e4
    halt                                          ; $43e5: $76
    dec e                                         ; $43e6: $1d
    rlca                                          ; $43e7: $07
    inc c                                         ; $43e8: $0c
    ld l, c                                       ; $43e9: $69
    ld c, a                                       ; $43ea: $4f
    ldh a, [$db]                                  ; $43eb: $f0 $db
    ld [hl-], a                                   ; $43ed: $32
    ld b, c                                       ; $43ee: $41
    ld a, $31                                     ; $43ef: $3e $31
    and b                                         ; $43f1: $a0
    or $06                                        ; $43f2: $f6 $06
    ld l, $41                                     ; $43f4: $2e $41
    sub d                                         ; $43f6: $92
    ld [hl-], a                                   ; $43f7: $32
    jp z, $8218                                   ; $43f8: $ca $18 $82

    adc b                                         ; $43fb: $88
    push de                                       ; $43fc: $d5
    sub a                                         ; $43fd: $97
    and h                                         ; $43fe: $a4
    db $ed                                        ; $43ff: $ed
    db $ec                                        ; $4400: $ec
    ld l, d                                       ; $4401: $6a
    ei                                            ; $4402: $fb
    ld e, c                                       ; $4403: $59
    ld c, e                                       ; $4404: $4b
    ccf                                           ; $4405: $3f
    db $db                                        ; $4406: $db
    ret c                                         ; $4407: $d8

    ld e, d                                       ; $4408: $5a
    adc c                                         ; $4409: $89
    dec sp                                        ; $440a: $3b
    call z, $de00                                 ; $440b: $cc $00 $de
    inc [hl]                                      ; $440e: $34
    rlca                                          ; $440f: $07
    ret                                           ; $4410: $c9


    sbc a                                         ; $4411: $9f
    push af                                       ; $4412: $f5
    sub [hl]                                      ; $4413: $96
    add hl, de                                    ; $4414: $19
    ld l, $f2                                     ; $4415: $2e $f2
    ld [hl], a                                    ; $4417: $77
    ld l, l                                       ; $4418: $6d
    sbc a                                         ; $4419: $9f
    push hl                                       ; $441a: $e5
    dec hl                                        ; $441b: $2b
    call z, $a84c                                 ; $441c: $cc $4c $a8
    push de                                       ; $441f: $d5
    sbc $73                                       ; $4420: $de $73
    rst $28                                       ; $4422: $ef
    pop hl                                        ; $4423: $e1
    ld [hl-], a                                   ; $4424: $32
    jp Jump_036_5bfd                              ; $4425: $c3 $fd $5b


    db $ed                                        ; $4428: $ed
    dec l                                         ; $4429: $2d
    inc de                                        ; $442a: $13
    inc e                                         ; $442b: $1c
    ld e, e                                       ; $442c: $5b
    ld l, l                                       ; $442d: $6d
    jp hl                                         ; $442e: $e9


    ld l, b                                       ; $442f: $68
    rlca                                          ; $4430: $07
    ld a, d                                       ; $4431: $7a
    ld a, e                                       ; $4432: $7b
    cp e                                          ; $4433: $bb
    adc [hl]                                      ; $4434: $8e
    jp Jump_036_633b                              ; $4435: $c3 $3b $63


    ld c, $43                                     ; $4438: $0e $43
    daa                                           ; $443a: $27
    cp $13                                        ; $443b: $fe $13
    ld a, a                                       ; $443d: $7f
    sub $72                                       ; $443e: $d6 $72
    ld l, [hl]                                    ; $4440: $6e
    ld c, h                                       ; $4441: $4c
    inc e                                         ; $4442: $1c
    inc de                                        ; $4443: $13
    rlca                                          ; $4444: $07
    ld a, a                                       ; $4445: $7f
    ld c, l                                       ; $4446: $4d
    db $d3                                        ; $4447: $d3
    inc [hl]                                      ; $4448: $34
    rlca                                          ; $4449: $07
    ld c, c                                       ; $444a: $49
    ld a, a                                       ; $444b: $7f
    or a                                          ; $444c: $b7
    ld hl, sp+$33                                 ; $444d: $f8 $33
    ld l, a                                       ; $444f: $6f
    sbc c                                         ; $4450: $99
    pop hl                                        ; $4451: $e1
    ld e, $21                                     ; $4452: $1e $21
    cp l                                          ; $4454: $bd
    ld a, e                                       ; $4455: $7b
    inc hl                                        ; $4456: $23
    ld b, e                                       ; $4457: $43
    ldh a, [$e2]                                  ; $4458: $f0 $e2
    cp c                                          ; $445a: $b9
    rst $30                                       ; $445b: $f7
    ld [hl], b                                    ; $445c: $70
    add e                                         ; $445d: $83
    cp a                                          ; $445e: $bf
    cp $6d                                        ; $445f: $fe $6d
    inc a                                         ; $4461: $3c
    pop af                                        ; $4462: $f1
    pop de                                        ; $4463: $d1
    db $e4                                        ; $4464: $e4
    db $eb                                        ; $4465: $eb
    and [hl]                                      ; $4466: $a6
    ld [hl], b                                    ; $4467: $70
    ldh [$ba], a                                  ; $4468: $e0 $ba
    add hl, hl                                    ; $446a: $29
    db $ec                                        ; $446b: $ec
    ldh [rNR51], a                                ; $446c: $e0 $25
    xor h                                         ; $446e: $ac
    db $e3                                        ; $446f: $e3
    halt                                          ; $4470: $76
    dec e                                         ; $4471: $1d
    add a                                         ; $4472: $87
    or a                                          ; $4473: $b7
    or a                                          ; $4474: $b7
    cp a                                          ; $4475: $bf
    sbc e                                         ; $4476: $9b
    and $49                                       ; $4477: $e6 $49
    inc de                                        ; $4479: $13
    db $eb                                        ; $447a: $eb
    adc c                                         ; $447b: $89
    push af                                       ; $447c: $f5
    rst $00                                       ; $447d: $c7
    sbc $13                                       ; $447e: $de $13
    push bc                                       ; $4480: $c5
    push de                                       ; $4481: $d5
    rla                                           ; $4482: $17
    ld a, a                                       ; $4483: $7f
    sbc l                                         ; $4484: $9d
    ld [hl], a                                    ; $4485: $77
    ld [c], a                                     ; $4486: $e2
    pop bc                                        ; $4487: $c1
    adc c                                         ; $4488: $89
    rlca                                          ; $4489: $07
    dec l                                         ; $448a: $2d
    jr nz, jr_036_44ec                            ; $448b: $20 $5f

    ld a, c                                       ; $448d: $79
    sub c                                         ; $448e: $91
    dec d                                         ; $448f: $15
    push bc                                       ; $4490: $c5
    ld e, a                                       ; $4491: $5f
    db $d3                                        ; $4492: $d3
    inc [hl]                                      ; $4493: $34
    call $a301                                    ; $4494: $cd $01 $a3
    ld b, e                                       ; $4497: $43
    adc d                                         ; $4498: $8a
    inc bc                                        ; $4499: $03
    ld h, d                                       ; $449a: $62
    cp $bc                                        ; $449b: $fe $bc
    ld d, l                                       ; $449d: $55
    adc e                                         ; $449e: $8b
    cp l                                          ; $449f: $bd
    add a                                         ; $44a0: $87
    or l                                          ; $44a1: $b5
    push hl                                       ; $44a2: $e5
    call c, $77bb                                 ; $44a3: $dc $bb $77
    rrc h                                         ; $44a6: $cb $0c
    rla                                           ; $44a8: $17
    add e                                         ; $44a9: $83
    cp a                                          ; $44aa: $bf
    ld a, d                                       ; $44ab: $7a
    ld bc, $0bf9                                  ; $44ac: $01 $f9 $0b
    ld l, e                                       ; $44af: $6b
    ld l, a                                       ; $44b0: $6f
    rst $18                                       ; $44b1: $df
    ld h, a                                       ; $44b2: $67
    cp l                                          ; $44b3: $bd
    rst $20                                       ; $44b4: $e7
    ld e, $01                                     ; $44b5: $1e $01
    cp l                                          ; $44b7: $bd
    ei                                            ; $44b8: $fb
    jr z, jr_036_44ee                             ; $44b9: $28 $33

    ld e, h                                       ; $44bb: $5c
    or d                                          ; $44bc: $b2
    jp nz, Jump_000_1c7f                          ; $44bd: $c2 $7f $1c

    sbc $2f                                       ; $44c0: $de $2f
    xor h                                         ; $44c2: $ac
    inc bc                                        ; $44c3: $03
    cp h                                          ; $44c4: $bc
    cp l                                          ; $44c5: $bd
    ld e, a                                       ; $44c6: $5f
    sub h                                         ; $44c7: $94
    ld a, d                                       ; $44c8: $7a
    db $d3                                        ; $44c9: $d3
    inc e                                         ; $44ca: $1c
    daa                                           ; $44cb: $27
    xor b                                         ; $44cc: $a8
    and e                                         ; $44cd: $a3
    adc h                                         ; $44ce: $8c
    sub h                                         ; $44cf: $94
    call nz, $e76f                                ; $44d0: $c4 $6f $e7
    ld h, d                                       ; $44d3: $62
    cp b                                          ; $44d4: $b8
    rst $28                                       ; $44d5: $ef
    or e                                          ; $44d6: $b3
    sbc $aa                                       ; $44d7: $de $aa
    push bc                                       ; $44d9: $c5
    ld l, [hl]                                    ; $44da: $6e
    ldh a, [rTAC]                                 ; $44db: $f0 $07
    call Call_036_7e8c                            ; $44dd: $cd $8c $7e
    sbc $34                                       ; $44e0: $de $34
    rlca                                          ; $44e2: $07
    and e                                         ; $44e3: $a3
    ccf                                           ; $44e4: $3f
    ld [hl], $10                                  ; $44e5: $36 $10
    xor d                                         ; $44e7: $aa
    dec l                                         ; $44e8: $2d
    ld h, l                                       ; $44e9: $65
    add d                                         ; $44ea: $82
    ld h, e                                       ; $44eb: $63

jr_036_44ec:
    xor e                                         ; $44ec: $ab
    dec l                                         ; $44ed: $2d

jr_036_44ee:
    dec e                                         ; $44ee: $1d
    db $ed                                        ; $44ef: $ed
    ld b, b                                       ; $44f0: $40

jr_036_44f1:
    rst $28                                       ; $44f1: $ef
    adc h                                         ; $44f2: $8c
    add hl, sp                                    ; $44f3: $39
    add hl, bc                                    ; $44f4: $09
    db $fc                                        ; $44f5: $fc
    push af                                       ; $44f6: $f5
    xor $18                                       ; $44f7: $ee $18
    and a                                         ; $44f9: $a7
    dec de                                        ; $44fa: $1b
    db $fc                                        ; $44fb: $fc
    pop bc                                        ; $44fc: $c1
    cp c                                          ; $44fd: $b9
    sbc a                                         ; $44fe: $9f
    or l                                          ; $44ff: $b5
    sub h                                         ; $4500: $94
    cp c                                          ; $4501: $b9
    ld a, a                                       ; $4502: $7f
    ret nz                                        ; $4503: $c0

    dec a                                         ; $4504: $3d
    add $e6                                       ; $4505: $c6 $e6
    rrca                                          ; $4507: $0f
    call c, Call_036_5b78                         ; $4508: $dc $78 $5b
    inc b                                         ; $450b: $04
    ccf                                           ; $450c: $3f
    ld [$921d], a                                 ; $450d: $ea $1d $92
    inc bc                                        ; $4510: $03
    or e                                          ; $4511: $b3
    inc b                                         ; $4512: $04
    push hl                                       ; $4513: $e5
    ld l, a                                       ; $4514: $6f
    ld c, b                                       ; $4515: $48
    ld b, a                                       ; $4516: $47
    add a                                         ; $4517: $87
    db $f4                                        ; $4518: $f4
    ld a, l                                       ; $4519: $7d
    sub $db                                       ; $451a: $d6 $db
    ld a, b                                       ; $451c: $78
    db $db                                        ; $451d: $db
    db $ec                                        ; $451e: $ec
    cpl                                           ; $451f: $2f
    cp c                                          ; $4520: $b9
    add e                                         ; $4521: $83
    sub [hl]                                      ; $4522: $96
    call z, $de88                                 ; $4523: $cc $88 $de
    inc [hl]                                      ; $4526: $34
    rlca                                          ; $4527: $07
    ld c, h                                       ; $4528: $4c
    cp $d6                                        ; $4529: $fe $d6
    sub h                                         ; $452b: $94
    sbc [hl]                                      ; $452c: $9e
    dec sp                                        ; $452d: $3b
    ld l, b                                       ; $452e: $68
    ld b, c                                       ; $452f: $41
    jr nc, jr_036_44f1                            ; $4530: $30 $bf

    ld b, c                                       ; $4532: $41
    xor l                                         ; $4533: $ad
    ld hl, sp+$4b                                 ; $4534: $f8 $4b
    ld [hl], e                                    ; $4536: $73
    ret                                           ; $4537: $c9


    inc de                                        ; $4538: $13
    daa                                           ; $4539: $27
    ld c, a                                       ; $453a: $4f
    sbc h                                         ; $453b: $9c
    db $fc                                        ; $453c: $fc
    ld b, l                                       ; $453d: $45
    add $34                                       ; $453e: $c6 $34
    ld c, l                                       ; $4540: $4d
    db $d3                                        ; $4541: $d3
    ld [c], a                                     ; $4542: $e2
    call nz, Call_000_3138                        ; $4543: $c4 $38 $31
    add [hl]                                      ; $4546: $86
    ld e, a                                       ; $4547: $5f
    ld [hl], a                                    ; $4548: $77
    ld [c], a                                     ; $4549: $e2
    sbc l                                         ; $454a: $9d
    ld a, b                                       ; $454b: $78
    sub l                                         ; $454c: $95
    inc c                                         ; $454d: $0c
    ret                                           ; $454e: $c9


    ld bc, $aa49                                  ; $454f: $01 $49 $aa
    ld a, b                                       ; $4552: $78
    ld d, c                                       ; $4553: $51
    ld a, [bc]                                    ; $4554: $0a
    ld b, [hl]                                    ; $4555: $46
    add sp, -$33                                  ; $4556: $e8 $cd
    or c                                          ; $4558: $b1
    xor $e8                                       ; $4559: $ee $e8
    nop                                           ; $455b: $00
    or d                                          ; $455c: $b2
    xor e                                         ; $455d: $ab
    cp a                                          ; $455e: $bf
    sub b                                         ; $455f: $90
    ld e, b                                       ; $4560: $58
    ld c, e                                       ; $4561: $4b
    adc a                                         ; $4562: $8f
    rst $08                                       ; $4563: $cf
    sbc a                                         ; $4564: $9f
    rst $30                                       ; $4565: $f7
    ld e, h                                       ; $4566: $5c
    db $fd                                        ; $4567: $fd
    ld de, $a73b                                  ; $4568: $11 $3b $a7
    ld a, [bc]                                    ; $456b: $0a
    ld de, $5a53                                  ; $456c: $11 $53 $5a
    add h                                         ; $456f: $84
    dec bc                                        ; $4570: $0b
    ret nz                                        ; $4571: $c0

    ld [bc], a                                    ; $4572: $02
    ld l, c                                       ; $4573: $69
    ld c, $b3                                     ; $4574: $0e $b3
    dec sp                                        ; $4576: $3b
    halt                                          ; $4577: $76
    ld c, b                                       ; $4578: $48
    sbc c                                         ; $4579: $99
    pop hl                                        ; $457a: $e1
    scf                                           ; $457b: $37
    inc h                                         ; $457c: $24
    rlca                                          ; $457d: $07
    and e                                         ; $457e: $a3
    sbc l                                         ; $457f: $9d
    push af                                       ; $4580: $f5
    add l                                         ; $4581: $85
    ld h, l                                       ; $4582: $65
    ld c, b                                       ; $4583: $48
    sub e                                         ; $4584: $93
    ld a, [hl]                                    ; $4585: $7e
    inc bc                                        ; $4586: $03
    and c                                         ; $4587: $a1
    ld b, a                                       ; $4588: $47
    ld c, b                                       ; $4589: $48
    ld c, a                                       ; $458a: $4f
    db $fd                                        ; $458b: $fd
    push bc                                       ; $458c: $c5
    dec hl                                        ; $458d: $2b
    ei                                            ; $458e: $fb
    jp nc, $8259                                  ; $458f: $d2 $59 $82

    ld a, [c]                                     ; $4592: $f2
    rst $10                                       ; $4593: $d7
    cp l                                          ; $4594: $bd
    ld hl, sp+$2b                                 ; $4595: $f8 $2b
    dec c                                         ; $4597: $0d
    or e                                          ; $4598: $b3
    sub [hl]                                      ; $4599: $96
    ld a, [hl]                                    ; $459a: $7e
    adc d                                         ; $459b: $8a
    push de                                       ; $459c: $d5
    rra                                           ; $459d: $1f
    ei                                            ; $459e: $fb
    jp nz, Jump_000_2432                          ; $459f: $c2 $32 $24

    rlca                                          ; $45a2: $07
    and e                                         ; $45a3: $a3
    cp a                                          ; $45a4: $bf
    xor b                                         ; $45a5: $a8
    and e                                         ; $45a6: $a3
    jr c, jr_036_4609                             ; $45a7: $38 $60

    ld de, $316f                                  ; $45a9: $11 $6f $31
    ld e, h                                       ; $45ac: $5c
    dec e                                         ; $45ad: $1d
    ld b, [hl]                                    ; $45ae: $46
    ld h, e                                       ; $45af: $63
    ld b, a                                       ; $45b0: $47
    ld e, [hl]                                    ; $45b1: $5e
    adc e                                         ; $45b2: $8b
    ld h, b                                       ; $45b3: $60
    jp hl                                         ; $45b4: $e9


    dec bc                                        ; $45b5: $0b
    ld c, e                                       ; $45b6: $4b
    ld h, e                                       ; $45b7: $63
    xor e                                         ; $45b8: $ab
    dec l                                         ; $45b9: $2d
    ld h, l                                       ; $45ba: $65

Call_036_45bb:
Jump_036_45bb:
    ld a, [c]                                     ; $45bb: $f2
    and a                                         ; $45bc: $a7
    xor b                                         ; $45bd: $a8
    db $eb                                        ; $45be: $eb
    ret c                                         ; $45bf: $d8

    add hl, de                                    ; $45c0: $19
    ld [hl], e                                    ; $45c1: $73
    ret                                           ; $45c2: $c9


    rra                                           ; $45c3: $1f
    and c                                         ; $45c4: $a1
    ld e, d                                       ; $45c5: $5a
    ld d, l                                       ; $45c6: $55
    ld a, e                                       ; $45c7: $7b
    or a                                          ; $45c8: $b7
    dec de                                        ; $45c9: $1b
    db $fc                                        ; $45ca: $fc
    ld b, c                                       ; $45cb: $41
    ld [hl], l                                    ; $45cc: $75
    cp b                                          ; $45cd: $b8
    or e                                          ; $45ce: $b3
    ld a, h                                       ; $45cf: $7c
    ld c, d                                       ; $45d0: $4a
    add c                                         ; $45d1: $81
    inc h                                         ; $45d2: $24
    call Call_036_7e8c                            ; $45d3: $cd $8c $7e
    sbc $73                                       ; $45d6: $de $73
    cp a                                          ; $45d8: $bf
    ld [hl+], a                                   ; $45d9: $22
    xor d                                         ; $45da: $aa
    dec l                                         ; $45db: $2d
    dec [hl]                                      ; $45dc: $35
    ld d, $e1                                     ; $45dd: $16 $e1
    xor a                                         ; $45df: $af
    sbc [hl]                                      ; $45e0: $9e
    or c                                          ; $45e1: $b1
    jp $acb1                                      ; $45e2: $c3 $b1 $ac


    rst $28                                       ; $45e5: $ef
    sbc a                                         ; $45e6: $9f
    ccf                                           ; $45e7: $3f
    ld l, b                                       ; $45e8: $68
    ld c, b                                       ; $45e9: $48
    and $d5                                       ; $45ea: $e6 $d5
    add [hl]                                      ; $45ec: $86
    ei                                            ; $45ed: $fb
    rst $00                                       ; $45ee: $c7
    inc [hl]                                      ; $45ef: $34
    rlca                                          ; $45f0: $07
    add hl, bc                                    ; $45f1: $09
    db $fc                                        ; $45f2: $fc
    push af                                       ; $45f3: $f5
    ld l, [hl]                                    ; $45f4: $6e
    nop                                           ; $45f5: $00
    sbc a                                         ; $45f6: $9f
    ld l, e                                       ; $45f7: $6b
    inc l                                         ; $45f8: $2c
    db $eb                                        ; $45f9: $eb
    ei                                            ; $45fa: $fb
    rst $20                                       ; $45fb: $e7
    rrca                                          ; $45fc: $0f
    xor d                                         ; $45fd: $aa
    cp l                                          ; $45fe: $bd
    ld h, l                                       ; $45ff: $65
    add d                                         ; $4600: $82
    ld h, e                                       ; $4601: $63
    xor e                                         ; $4602: $ab
    dec l                                         ; $4603: $2d
    dec e                                         ; $4604: $1d
    db $ed                                        ; $4605: $ed
    ld b, b                                       ; $4606: $40
    rst $28                                       ; $4607: $ef
    sub b                                         ; $4608: $90

jr_036_4609:
    inc e                                         ; $4609: $1c
    jp $81b1                                      ; $460a: $c3 $b1 $81


    ret nc                                        ; $460d: $d0

    call z, $e244                                 ; $460e: $cc $44 $e2
    inc de                                        ; $4611: $13
    ld a, [de]                                    ; $4612: $1a
    db $fc                                        ; $4613: $fc
    push af                                       ; $4614: $f5
    add l                                         ; $4615: $85
    and l                                         ; $4616: $a5
    ld l, d                                       ; $4617: $6a
    ld [hl], l                                    ; $4618: $75
    cp a                                          ; $4619: $bf
    ld a, [de]                                    ; $461a: $1a
    rst $00                                       ; $461b: $c7
    and d                                         ; $461c: $a2
    ld a, l                                       ; $461d: $7d
    inc [hl]                                      ; $461e: $34
    db $10                                        ; $461f: $10
    ld l, d                                       ; $4620: $6a
    inc l                                         ; $4621: $2c
    ld a, [c]                                     ; $4622: $f2
    ld [hl], a                                    ; $4623: $77
    ld l, l                                       ; $4624: $6d
    ld [hl], c                                    ; $4625: $71
    jr nz, jr_036_4639                            ; $4626: $20 $11

    jp nc, $f6ce                                  ; $4628: $d2 $ce $f6

    ld de, $6aa1                                  ; $462b: $11 $a1 $6a
    or c                                          ; $462e: $b1
    ld h, h                                       ; $462f: $64
    dec h                                         ; $4630: $25
    inc h                                         ; $4631: $24
    ld a, [hl]                                    ; $4632: $7e
    set 7, h                                      ; $4633: $cb $fc
    cp h                                          ; $4635: $bc
    ld d, l                                       ; $4636: $55
    xor e                                         ; $4637: $ab
    cp e                                          ; $4638: $bb

jr_036_4639:
    sbc a                                         ; $4639: $9f
    ccf                                           ; $463a: $3f
    db $f4                                        ; $463b: $f4
    di                                            ; $463c: $f3
    sbc [hl]                                      ; $463d: $9e
    ld a, e                                       ; $463e: $7b
    or c                                          ; $463f: $b1
    push de                                       ; $4640: $d5
    pop hl                                        ; $4641: $e1
    ld [de], a                                    ; $4642: $12
    ld b, $70                                     ; $4643: $06 $70
    sub e                                         ; $4645: $93
    cp $e1                                        ; $4646: $fe $e1
    sbc $c3                                       ; $4648: $de $c3
    jp c, $b252                                   ; $464a: $da $52 $b2

    ld [de], a                                    ; $464d: $12
    ld [de], a                                    ; $464e: $12
    cp a                                          ; $464f: $bf
    dec [hl]                                      ; $4650: $35
    db $10                                        ; $4651: $10
    jp nc, $a31c                                  ; $4652: $d2 $1c $a3

    xor a                                         ; $4655: $af
    xor d                                         ; $4656: $aa
    and e                                         ; $4657: $a3
    ret                                           ; $4658: $c9


    ld [hl], c                                    ; $4659: $71
    inc e                                         ; $465a: $1c
    and [hl]                                      ; $465b: $a6
    ret c                                         ; $465c: $d8

    ld a, e                                       ; $465d: $7b
    ld d, b                                       ; $465e: $50
    ld [$3a2d], a                                 ; $465f: $ea $2d $3a
    ld [hl], h                                    ; $4662: $74
    db $e3                                        ; $4663: $e3
    ld c, c                                       ; $4664: $49
    ccf                                           ; $4665: $3f
    and l                                         ; $4666: $a5
    ld l, [hl]                                    ; $4667: $6e
    and $bb                                       ; $4668: $e6 $bb
    pop de                                        ; $466a: $d1
    dec sp                                        ; $466b: $3b
    ld h, e                                       ; $466c: $63
    ld c, $49                                     ; $466d: $0e $49
    rra                                           ; $466f: $1f
    dec de                                        ; $4670: $1b
    ld [$d53d], sp                                ; $4671: $08 $3d $d5
    ld b, b                                       ; $4674: $40
    add [hl]                                      ; $4675: $86
    ld a, [hl-]                                   ; $4676: $3a
    ei                                            ; $4677: $fb
    or h                                          ; $4678: $b4
    inc de                                        ; $4679: $13
    sub a                                         ; $467a: $97
    ret                                           ; $467b: $c9


    rst $18                                       ; $467c: $df
    db $dd                                        ; $467d: $dd
    or c                                          ; $467e: $b1
    ld b, [hl]                                    ; $467f: $46
    cp $f6                                        ; $4680: $fe $f6
    dec hl                                        ; $4682: $2b
    or d                                          ; $4683: $b2
    add a                                         ; $4684: $87
    db $e4                                        ; $4685: $e4
    and e                                         ; $4686: $a3
    ld b, e                                       ; $4687: $43
    adc d                                         ; $4688: $8a
    rla                                           ; $4689: $17
    and l                                         ; $468a: $a5
    ldh [$ed], a                                  ; $468b: $e0 $ed
    xor c                                         ; $468d: $a9
    ld b, $32                                     ; $468e: $06 $32
    db $f4                                        ; $4690: $f4
    ld e, $72                                     ; $4691: $1e $72
    and e                                         ; $4693: $a3
    pop bc                                        ; $4694: $c1
    ld e, a                                       ; $4695: $5f
    cp a                                          ; $4696: $bf
    ld [hl+], a                                   ; $4697: $22
    sbc $d8                                       ; $4698: $de $d8
    ld [c], a                                     ; $469a: $e2
    dec a                                         ; $469b: $3d
    sub a                                         ; $469c: $97
    call nz, $aa5a                                ; $469d: $c4 $5a $aa
    jp Jump_000_32e8                              ; $46a0: $c3 $e8 $32


    ccf                                           ; $46a3: $3f
    ld a, a                                       ; $46a4: $7f
    ld l, $59                                     ; $46a5: $2e $59
    dec d                                         ; $46a7: $15
    rlca                                          ; $46a8: $07
    call nz, Call_036_79fc                        ; $46a9: $c4 $fc $79
    db $d3                                        ; $46ac: $d3
    adc $b3                                       ; $46ad: $ce $b3
    cp d                                          ; $46af: $ba
    and a                                         ; $46b0: $a7
    ld a, [de]                                    ; $46b1: $1a
    ret z                                         ; $46b2: $c8

    ld [hl], b                                    ; $46b3: $70
    xor $dd                                       ; $46b4: $ee $dd
    cp e                                          ; $46b6: $bb
    dec [hl]                                      ; $46b7: $35
    sub $8a                                       ; $46b8: $d6 $8a
    cp a                                          ; $46ba: $bf
    ld l, [hl]                                    ; $46bb: $6e
    ldh a, [rTAC]                                 ; $46bc: $f0 $07
    ret c                                         ; $46be: $d8

    xor a                                         ; $46bf: $af
    ldh a, [$f8]                                  ; $46c0: $f0 $f8
    db $fc                                        ; $46c2: $fc
    pop bc                                        ; $46c3: $c1
    cp c                                          ; $46c4: $b9
    sbc c                                         ; $46c5: $99
    sbc a                                         ; $46c6: $9f
    dec de                                        ; $46c7: $1b
    db $fc                                        ; $46c8: $fc

jr_036_46c9:
    dec [hl]                                      ; $46c9: $35
    ld d, $3b                                     ; $46ca: $16 $3b
    call z, Call_036_6900                         ; $46cc: $cc $00 $69
    ld c, $09                                     ; $46cf: $0e $09
    db $fc                                        ; $46d1: $fc
    push af                                       ; $46d2: $f5
    dec hl                                        ; $46d3: $2b
    cp $d2                                        ; $46d4: $fe $d2
    adc $2d                                       ; $46d6: $ce $2d
    ld e, $bc                                     ; $46d8: $1e $bc
    and h                                         ; $46da: $a4
    or a                                          ; $46db: $b7
    cp a                                          ; $46dc: $bf
    db $db                                        ; $46dd: $db
    dec c                                         ; $46de: $0d
    cp $a0                                        ; $46df: $fe $a0
    adc [hl]                                      ; $46e1: $8e
    ld b, l                                       ; $46e2: $45
    cp $e8                                        ; $46e3: $fe $e8
    daa                                           ; $46e5: $27
    cp h                                          ; $46e6: $bc
    rst $20                                       ; $46e7: $e7
    sbc $bd                                       ; $46e8: $de $bd
    db $db                                        ; $46ea: $db
    ldh [$af], a                                  ; $46eb: $e0 $af
    dec de                                        ; $46ed: $1b
    db $fc                                        ; $46ee: $fc
    ld b, c                                       ; $46ef: $41
    push af                                       ; $46f0: $f5
    cpl                                           ; $46f1: $2f
    dec de                                        ; $46f2: $1b
    sbc e                                         ; $46f3: $9b
    and $a3                                       ; $46f4: $e6 $a3
    ld b, e                                       ; $46f6: $43
    adc d                                         ; $46f7: $8a
    rla                                           ; $46f8: $17
    and l                                         ; $46f9: $a5
    ldh [$ed], a                                  ; $46fa: $e0 $ed
    ld de, $91d0                                  ; $46fc: $11 $d0 $91
    sbc h                                         ; $46ff: $9c
    pop af                                        ; $4700: $f1
    jp c, Jump_036_7d9f                           ; $4701: $da $9f $7d

    ld c, d                                       ; $4704: $4a
    ld c, e                                       ; $4705: $4b
    ld h, d                                       ; $4706: $62
    dec l                                         ; $4707: $2d
    ld h, l                                       ; $4708: $65
    xor $1f                                       ; $4709: $ee $1f
    ld [hl], b                                    ; $470b: $70
    ld [hl], c                                    ; $470c: $71
    ld b, b                                       ; $470d: $40
    call z, $379f                                 ; $470e: $cc $9f $37
    call Call_000_0901                            ; $4711: $cd $01 $09
    db $fc                                        ; $4714: $fc
    ld d, l                                       ; $4715: $55
    ld a, e                                       ; $4716: $7b
    ld l, a                                       ; $4717: $6f
    ld a, $17                                     ; $4718: $3e $17
    jp $87bd                                      ; $471a: $c3 $bd $87


    add sp, -$56                                  ; $471d: $e8 $aa
    push bc                                       ; $471f: $c5
    ld l, [hl]                                    ; $4720: $6e
    ldh a, [rTAC]                                 ; $4721: $f0 $07
    call $57e8                                    ; $4723: $cd $e8 $57
    xor h                                         ; $4726: $ac
    scf                                           ; $4727: $37
    db $ed                                        ; $4728: $ed
    ld d, b                                       ; $4729: $50
    dec [hl]                                      ; $472a: $35
    adc [hl]                                      ; $472b: $8e
    ld b, l                                       ; $472c: $45
    ei                                            ; $472d: $fb
    add sp, -$63                                  ; $472e: $e8 $9d
    inc h                                         ; $4730: $24
    jp c, Jump_036_7bdb                           ; $4731: $da $db $7b

    ld c, b                                       ; $4734: $48
    push af                                       ; $4735: $f5
    ccf                                           ; $4736: $3f
    ld [bc], a                                    ; $4737: $02
    ld c, d                                       ; $4738: $4a
    ld d, [hl]                                    ; $4739: $56
    sbc c                                         ; $473a: $99
    ld e, c                                       ; $473b: $59
    rst $28                                       ; $473c: $ef
    cp c                                          ; $473d: $b9
    ld a, [$f623]                                 ; $473e: $fa $23 $f6
    ld e, $52                                     ; $4741: $1e $52
    ld l, d                                       ; $4743: $6a
    jr nz, jr_036_46c9                            ; $4744: $20 $83

    dec sp                                        ; $4746: $3b
    ei                                            ; $4747: $fb
    rst $20                                       ; $4748: $e7
    rrca                                          ; $4749: $0f
    xor d                                         ; $474a: $aa
    sub l                                         ; $474b: $95
    ldh a, [$57]                                  ; $474c: $f0 $57
    db $fd                                        ; $474e: $fd
    or c                                          ; $474f: $b1
    adc h                                         ; $4750: $8c
    ld h, [hl]                                    ; $4751: $66
    inc de                                        ; $4752: $13
    sub l                                         ; $4753: $95
    halt                                          ; $4754: $76
    inc sp                                        ; $4755: $33
    inc hl                                        ; $4756: $23
    ld a, a                                       ; $4757: $7f
    inc [hl]                                      ; $4758: $34
    ld hl, sp-$0d                                 ; $4759: $f8 $f3
    ld d, $63                                     ; $475b: $16 $63
    ld [hl], l                                    ; $475d: $75
    sbc d                                         ; $475e: $9a
    inc bc                                        ; $475f: $03
    or e                                          ; $4760: $b3
    cp $73                                        ; $4761: $fe $73
    sub c                                         ; $4763: $91
    cp a                                          ; $4764: $bf
    ld l, e                                       ; $4765: $6b
    rst $08                                       ; $4766: $cf
    db $fd                                        ; $4767: $fd
    xor h                                         ; $4768: $ac
    and l                                         ; $4769: $a5

jr_036_476a:
    rst $30                                       ; $476a: $f7
    sub b                                         ; $476b: $90
    ld e, $24                                     ; $476c: $1e $24
    ld b, h                                       ; $476e: $44
    ld l, a                                       ; $476f: $6f
    push af                                       ; $4770: $f5
    push bc                                       ; $4771: $c5
    ld e, a                                       ; $4772: $5f
    ld b, e                                       ; $4773: $43
    ld [hl-], a                                   ; $4774: $32
    xor a                                         ; $4775: $af
    ld [hl], $dc                                  ; $4776: $36 $dc
    ccf                                           ; $4778: $3f
    ld d, [hl]                                    ; $4779: $56
    dec l                                         ; $477a: $2d
    ld e, b                                       ; $477b: $58
    sub $ef                                       ; $477c: $d6 $ef
    ldh a, [$0e]                                  ; $477e: $f0 $0e
    ret                                           ; $4780: $c9


    ld bc, $43a3                                  ; $4781: $01 $a3 $43
    jp z, Jump_036_57ca                           ; $4784: $ca $ca $57

    db $fc                                        ; $4787: $fc
    ld a, c                                       ; $4788: $79
    cp e                                          ; $4789: $bb
    rla                                           ; $478a: $17
    ld a, a                                       ; $478b: $7f
    dec a                                         ; $478c: $3d
    db $fc                                        ; $478d: $fc
    and h                                         ; $478e: $a4
    jp Jump_036_777c                              ; $478f: $c3 $7c $77


    and b                                         ; $4792: $a0
    rst $08                                       ; $4793: $cf
    ld d, l                                       ; $4794: $55
    ld b, a                                       ; $4795: $47
    ld b, a                                       ; $4796: $47
    ld [hl], d                                    ; $4797: $72
    add $6b                                       ; $4798: $c6 $6b
    ld a, a                                       ; $479a: $7f
    or $29                                        ; $479b: $f6 $29
    dec l                                         ; $479d: $2d
    ld e, c                                       ; $479e: $59
    sub l                                         ; $479f: $95
    call nz, $c85a                                ; $47a0: $c4 $5a $c8
    ld d, [hl]                                    ; $47a3: $56
    sbc c                                         ; $47a4: $99
    scf                                           ; $47a5: $37
    db $ed                                        ; $47a6: $ed
    add sp, -$70                                  ; $47a7: $e8 $90
    ld e, $24                                     ; $47a9: $1e $24
    ld b, h                                       ; $47ab: $44
    ld l, a                                       ; $47ac: $6f
    sbc a                                         ; $47ad: $9f
    push hl                                       ; $47ae: $e5
    dec hl                                        ; $47af: $2b
    ld h, h                                       ; $47b0: $64
    ld a, l                                       ; $47b1: $7d
    cp e                                          ; $47b2: $bb
    adc [hl]                                      ; $47b3: $8e
    jp $ee7b                                      ; $47b4: $c3 $7b $ee


    db $fd                                        ; $47b7: $fd
    ld h, e                                       ; $47b8: $63
    or l                                          ; $47b9: $b5
    and l                                         ; $47ba: $a5
    ld c, h                                       ; $47bb: $4c
    ld [hl], b                                    ; $47bc: $70
    ld l, h                                       ; $47bd: $6c
    or l                                          ; $47be: $b5
    and l                                         ; $47bf: $a5
    and e                                         ; $47c0: $a3
    dec e                                         ; $47c1: $1d
    add sp, $6d                                   ; $47c2: $e8 $6d
    jr nz, jr_036_476a                            ; $47c4: $20 $a4

    add hl, sp                                    ; $47c6: $39
    adc h                                         ; $47c7: $8c
    ld a, [bc]                                    ; $47c8: $0a
    call c, Call_036_6d04                         ; $47c9: $dc $04 $6d
    and a                                         ; $47cc: $a7
    dec e                                         ; $47cd: $1d
    dec e                                         ; $47ce: $1d
    ld d, d                                       ; $47cf: $52
    ld [c], a                                     ; $47d0: $e2
    ld l, a                                       ; $47d1: $6f
    and $ed                                       ; $47d2: $e6 $ed
    ld [hl], c                                    ; $47d4: $71
    ld c, c                                       ; $47d5: $49
    and $ad                                       ; $47d6: $e6 $ad
    cp $47                                        ; $47d8: $fe $47
    ld b, b                                       ; $47da: $40
    rst $38                                       ; $47db: $ff
    and [hl]                                      ; $47dc: $a6
    dec e                                         ; $47dd: $1d
    add hl, de                                    ; $47de: $19
    ld d, d                                       ; $47df: $52
    ld [hl], c                                    ; $47e0: $71
    ldh a, [rTAC]                                 ; $47e1: $f0 $07
    db $e3                                        ; $47e3: $e3
    ld h, e                                       ; $47e4: $63
    add hl, bc                                    ; $47e5: $09
    sub d                                         ; $47e6: $92
    db $f4                                        ; $47e7: $f4
    ld e, c                                       ; $47e8: $59
    add c                                         ; $47e9: $81
    db $d3                                        ; $47ea: $d3
    ld [hl-], a                                   ; $47eb: $32
    ld a, [hl+]                                   ; $47ec: $2a
    ld [hl], b                                    ; $47ed: $70
    ld h, a                                       ; $47ee: $67
    rst $38                                       ; $47ef: $ff
    db $fc                                        ; $47f0: $fc
    pop bc                                        ; $47f1: $c1
    cp c                                          ; $47f2: $b9
    ret                                           ; $47f3: $c9


    ld e, a                                       ; $47f4: $5f
    ld h, h                                       ; $47f5: $64
    ld c, h                                       ; $47f6: $4c
    sbc d                                         ; $47f7: $9a
    inc bc                                        ; $47f8: $03
    adc h                                         ; $47f9: $8c
    ld a, [bc]                                    ; $47fa: $0a
    call c, Call_000_3fd9                         ; $47fb: $dc $d9 $3f
    ld a, a                                       ; $47fe: $7f
    ld [hl], b                                    ; $47ff: $70
    xor $5c                                       ; $4800: $ee $5c
    rst $10                                       ; $4802: $d7
    and [hl]                                      ; $4803: $a6
    add hl, sp                                    ; $4804: $39
    or e                                          ; $4805: $b3
    xor e                                         ; $4806: $ab
    db $ed                                        ; $4807: $ed
    db $ed                                        ; $4808: $ed
    ld a, [hl-]                                   ; $4809: $3a
    adc [hl]                                      ; $480a: $8e
    ld [hl], e                                    ; $480b: $73
    rst $28                                       ; $480c: $ef
    ld hl, $483d                                  ; $480d: $21 $3d $48
    adc b                                         ; $4810: $88
    sbc $de                                       ; $4811: $de $de
    jp Jump_036_52da                              ; $4813: $c3 $da $52


    or d                                          ; $4816: $b2
    ld [de], a                                    ; $4817: $12
    ld [de], a                                    ; $4818: $12
    cp a                                          ; $4819: $bf
    dec [hl]                                      ; $481a: $35
    or [hl]                                       ; $481b: $b6
    jp c, Jump_036_51db                           ; $481c: $da $db $51

    rst $10                                       ; $481f: $d7
    db $ed                                        ; $4820: $ed
    ld d, e                                       ; $4821: $53
    ld sp, hl                                     ; $4822: $f9
    ld [$5aa8], a                                 ; $4823: $ea $a8 $5a
    db $dd                                        ; $4826: $dd
    sub c                                         ; $4827: $91
    sbc a                                         ; $4828: $9f
    ld [de], a                                    ; $4829: $12
    rst $10                                       ; $482a: $d7
    sbc b                                         ; $482b: $98
    and d                                         ; $482c: $a2
    ld [c], a                                     ; $482d: $e2
    rst $08                                       ; $482e: $cf
    sbc e                                         ; $482f: $9b
    and $a3                                       ; $4830: $e6 $a3
    ld b, e                                       ; $4832: $43
    adc d                                         ; $4833: $8a
    rla                                           ; $4834: $17
    and l                                         ; $4835: $a5
    ldh [$ed], a                                  ; $4836: $e0 $ed
    dec bc                                        ; $4838: $0b
    ld c, e                                       ; $4839: $4b
    ld e, c                                       ; $483a: $59
    ld [$bd60], a                                 ; $483b: $ea $60 $bd
    rst $20                                       ; $483e: $e7
    ld h, $7f                                     ; $483f: $26 $7f
    sub c                                         ; $4841: $91
    ld sp, $9b69                                  ; $4842: $31 $69 $9b
    ld h, h                                       ; $4845: $64
    jp hl                                         ; $4846: $e9


    xor b                                         ; $4847: $a8
    db $eb                                        ; $4848: $eb
    or $a9                                        ; $4849: $f6 $a9
    ld a, h                                       ; $484b: $7c
    ld [hl], l                                    ; $484c: $75
    inc [hl]                                      ; $484d: $34
    db $10                                        ; $484e: $10
    ld a, [de]                                    ; $484f: $1a
    ld b, a                                       ; $4850: $47
    or l                                          ; $4851: $b5
    inc b                                         ; $4852: $04
    add b                                         ; $4853: $80
    or a                                          ; $4854: $b7
    ld c, h                                       ; $4855: $4c
    cp b                                          ; $4856: $b8
    ld hl, sp+$2d                                 ; $4857: $f8 $2d

Jump_036_4859:
    call Call_036_4301                            ; $4859: $cd $01 $43
    add hl, hl                                    ; $485c: $29
    dec [hl]                                      ; $485d: $35
    or $46                                        ; $485e: $f6 $46
    cp a                                          ; $4860: $bf
    sbc h                                         ; $4861: $9c
    sbc e                                         ; $4862: $9b
    db $fc                                        ; $4863: $fc
    ld b, l                                       ; $4864: $45
    add $a4                                       ; $4865: $c6 $a4
    db $ed                                        ; $4867: $ed
    ld l, h                                       ; $4868: $6c
    rra                                           ; $4869: $1f
    or c                                          ; $486a: $b1

Jump_036_486b:
    ld l, d                                       ; $486b: $6a
    or c                                          ; $486c: $b1
    ld h, h                                       ; $486d: $64
    ld d, l                                       ; $486e: $55
    or l                                          ; $486f: $b5
    ld l, b                                       ; $4870: $68
    pop af                                        ; $4871: $f1
    pop de                                        ; $4872: $d1
    cp c                                          ; $4873: $b9
    inc bc                                        ; $4874: $03
    ld sp, hl                                     ; $4875: $f9
    ld l, e                                       ; $4876: $6b
    and $e7                                       ; $4877: $e6 $e7
    ld c, l                                       ; $4879: $4d
    ld [hl], e                                    ; $487a: $73

Call_036_487b:
    ld c, h                                       ; $487b: $4c
    cp $ee                                        ; $487c: $fe $ee
    adc [hl]                                      ; $487e: $8e
    dec [hl]                                      ; $487f: $35
    ld a, [c]                                     ; $4880: $f2
    or a                                          ; $4881: $b7
    ld e, a                                       ; $4882: $5f
    sub c                                         ; $4883: $91
    sbc l                                         ; $4884: $9d
    and $09                                       ; $4885: $e6 $09
    db $fc                                        ; $4887: $fc
    dec [hl]                                      ; $4888: $35
    di                                            ; $4889: $f3
    ld [hl], e                                    ; $488a: $73
    push af                                       ; $488b: $f5
    dec h                                         ; $488c: $25
    ld d, b                                       ; $488d: $50
    sub $88                                       ; $488e: $d6 $88
    sub [hl]                                      ; $4890: $96
    ld l, [hl]                                    ; $4891: $6e
    ldh a, [rTAC]                                 ; $4892: $f0 $07
    ld a, l                                       ; $4894: $7d
    or c                                          ; $4895: $b1
    adc [hl]                                      ; $4896: $8e
    ld c, l                                       ; $4897: $4d
    db $db                                        ; $4898: $db
    pop hl                                        ; $4899: $e1

jr_036_489a:
    ret c                                         ; $489a: $d8

    ld b, b                                       ; $489b: $40
    add sp, -$60                                  ; $489c: $e8 $a0
    add l                                         ; $489e: $85
    cp l                                          ; $489f: $bd
    ret nz                                        ; $48a0: $c0

    sbc e                                         ; $48a1: $9b
    and $b3                                       ; $48a2: $e6 $b3
    ret z                                         ; $48a4: $c8

    ret c                                         ; $48a5: $d8

    adc a                                         ; $48a6: $8f
    ld b, $7f                                     ; $48a7: $06 $7f
    xor $68                                       ; $48a9: $ee $68
    rst $00                                       ; $48ab: $c7
    db $db                                        ; $48ac: $db
    rst $08                                       ; $48ad: $cf
    rra                                           ; $48ae: $1f
    ld a, b                                       ; $48af: $78
    rst $08                                       ; $48b0: $cf
    ld c, l                                       ; $48b1: $4d
    cp $22                                        ; $48b2: $fe $22
    ld h, e                                       ; $48b4: $63
    add [hl]                                      ; $48b5: $86
    db $e4                                        ; $48b6: $e4
    or e                                          ; $48b7: $b3
    ret z                                         ; $48b8: $c8

    ret c                                         ; $48b9: $d8

    adc a                                         ; $48ba: $8f
    ld b, $7f                                     ; $48bb: $06 $7f
    xor $68                                       ; $48bd: $ee $68
    rst $00                                       ; $48bf: $c7
    db $db                                        ; $48c0: $db
    rst $08                                       ; $48c1: $cf
    rra                                           ; $48c2: $1f
    ld a, b                                       ; $48c3: $78
    rst $08                                       ; $48c4: $cf
    sbc l                                         ; $48c5: $9d
    db $eb                                        ; $48c6: $eb
    jp c, Jump_036_6521                           ; $48c7: $da $21 $65

    add [hl]                                      ; $48ca: $86
    ld e, a                                       ; $48cb: $5f
    adc a                                         ; $48cc: $8f
    ld c, a                                       ; $48cd: $4f
    rst $08                                       ; $48ce: $cf
    cp l                                          ; $48cf: $bd
    add a                                         ; $48d0: $87
    db $f4                                        ; $48d1: $f4
    ld a, l                                       ; $48d2: $7d
    sub $5b                                       ; $48d3: $d6 $5b
    ld b, [hl]                                    ; $48d5: $46
    inc hl                                        ; $48d6: $23
    ld a, a                                       ; $48d7: $7f
    sbc $9b                                       ; $48d8: $de $9b
    set 7, d                                      ; $48da: $cb $fa
    halt                                          ; $48dc: $76
    dec e                                         ; $48dd: $1d
    add a                                         ; $48de: $87
    scf                                           ; $48df: $37
    call $4901                                    ; $48e0: $cd $01 $49
    pop hl                                        ; $48e3: $e1
    cp $d5                                        ; $48e4: $fe $d5
    ld d, $6f                                     ; $48e6: $16 $6f
    sbc c                                         ; $48e8: $99
    db $fc                                        ; $48e9: $fc
    sub c                                         ; $48ea: $91
    xor b                                         ; $48eb: $a8
    and l                                         ; $48ec: $a5
    jr jr_036_489a                                ; $48ed: $18 $ab

    ei                                            ; $48ef: $fb
    add hl, hl                                    ; $48f0: $29
    ld [hl], l                                    ; $48f1: $75
    rst $28                                       ; $48f2: $ef
    adc $ce                                       ; $48f3: $ce $ce
    db $fd                                        ; $48f5: $fd
    xor h                                         ; $48f6: $ac
    and l                                         ; $48f7: $a5
    rst $30                                       ; $48f8: $f7
    sub b                                         ; $48f9: $90
    sbc $c6                                       ; $48fa: $de $c6
    sbc $f5                                       ; $48fc: $de $f5
    ld d, [hl]                                    ; $48fe: $56
    dec l                                         ; $48ff: $2d
    or $2b                                        ; $4900: $f6 $2b
    cp $7a                                        ; $4902: $fe $7a
    cp l                                          ; $4904: $bd
    ld [hl], l                                    ; $4905: $75
    ld [hl], l                                    ; $4906: $75
    cp b                                          ; $4907: $b8
    ld a, a                                       ; $4908: $7f
    or l                                          ; $4909: $b5
    push bc                                       ; $490a: $c5
    db $db                                        ; $490b: $db
    ld a, a                                       ; $490c: $7f
    sub b                                         ; $490d: $90
    jr nc, jr_036_493c                            ; $490e: $30 $2c

    sbc $21                                       ; $4910: $de $21
    add hl, sp                                    ; $4912: $39
    ld c, h                                       ; $4913: $4c
    cp $c6                                        ; $4914: $fe $c6
    ld e, [hl]                                    ; $4916: $5e
    ld [hl], a                                    ; $4917: $77
    ld d, $4b                                     ; $4918: $16 $4b
    ld a, b                                       ; $491a: $78
    rst $08                                       ; $491b: $cf
    adc l                                         ; $491c: $8d
    daa                                           ; $491d: $27
    ld [hl], l                                    ; $491e: $75
    inc l                                         ; $491f: $2c
    cp $c3                                        ; $4920: $fe $c3
    ld a, e                                       ; $4922: $7b
    xor $8d                                       ; $4923: $ee $8d
    ld a, [hl-]                                   ; $4925: $3a
    sub $db                                       ; $4926: $d6 $db
    pop hl                                        ; $4928: $e1
    add d                                         ; $4929: $82
    ld [hl], b                                    ; $492a: $70
    and e                                         ; $492b: $a3
    adc c                                         ; $492c: $89
    adc b                                         ; $492d: $88
    call nc, $e692                                ; $492e: $d4 $92 $e6
    and e                                         ; $4931: $a3
    ccf                                           ; $4932: $3f
    or $1e                                        ; $4933: $f6 $1e
    sub h                                         ; $4935: $94
    ld [hl+], a                                   ; $4936: $22
    ld d, h                                       ; $4937: $54
    xor e                                         ; $4938: $ab
    ld [hl], e                                    ; $4939: $73
    ld b, a                                       ; $493a: $47
    reti                                          ; $493b: $d9


jr_036_493c:
    add e                                         ; $493c: $83
    add $19                                       ; $493d: $c6 $19
    ld [hl], e                                    ; $493f: $73
    adc h                                         ; $4940: $8c
    ld b, [hl]                                    ; $4941: $46
    cp $bc                                        ; $4942: $fe $bc
    scf                                           ; $4944: $37
    sbc a                                         ; $4945: $9f
    bit 5, b                                      ; $4946: $cb $68
    db $e4                                        ; $4948: $e4
    rst $08                                       ; $4949: $cf
    ld a, e                                       ; $494a: $7b
    di                                            ; $494b: $f3
    cp c                                          ; $494c: $b9
    adc h                                         ; $494d: $8c
    ld b, [hl]                                    ; $494e: $46
    cp $bc                                        ; $494f: $fe $bc
    scf                                           ; $4951: $37
    rrca                                          ; $4952: $0f

Call_036_4953:
    ld l, c                                       ; $4953: $69
    jp nc, $bec7                                  ; $4954: $d2 $c7 $be

    or b                                          ; $4957: $b0
    inc d                                         ; $4958: $14
    jp $aa0f                                      ; $4959: $c3 $0f $aa


    cpl                                           ; $495c: $2f
    cp $8a                                        ; $495d: $fe $8a
    db $fc                                        ; $495f: $fc
    ld e, l                                       ; $4960: $5d
    ld e, e                                       ; $4961: $5b
    db $f4                                        ; $4962: $f4
    sub e                                         ; $4963: $93
    add $82                                       ; $4964: $c6 $82
    push bc                                       ; $4966: $c5
    adc b                                         ; $4967: $88
    ld a, a                                       ; $4968: $7f
    and c                                         ; $4969: $a1
    ld e, a                                       ; $496a: $5f
    ld h, c                                       ; $496b: $61
    sbc d                                         ; $496c: $9a
    inc bc                                        ; $496d: $03
    adc h                                         ; $496e: $8c
    pop bc                                        ; $496f: $c1
    sub $58                                       ; $4970: $d6 $58
    or d                                          ; $4972: $b2
    ld [de], a                                    ; $4973: $12
    ld [de], a                                    ; $4974: $12
    cp a                                          ; $4975: $bf
    sbc l                                         ; $4976: $9d
    dec sp                                        ; $4977: $3b
    jp z, $341e                                   ; $4978: $ca $1e $34

    ld c, $c9                                     ; $497b: $0e $c9
    ld bc, $c38c                                  ; $497d: $01 $8c $c3
    add a                                         ; $4980: $87
    dec c                                         ; $4981: $0d
    sbc a                                         ; $4982: $9f
    cp l                                          ; $4983: $bd
    add c                                         ; $4984: $81
    ld d, b                                       ; $4985: $50
    inc [hl]                                      ; $4986: $34
    adc l                                         ; $4987: $8d
    call z, $ed52                                 ; $4988: $cc $52 $ed
    db $dd                                        ; $498b: $dd
    adc $3e                                       ; $498c: $ce $3e
    inc a                                         ; $498e: $3c
    ld a, c                                       ; $498f: $79
    db $e4                                        ; $4990: $e4
    ldh a, [$d9]                                  ; $4991: $f0 $d9
    db $d3                                        ; $4993: $d3
    ld [hl-], a                                   ; $4994: $32
    ccf                                           ; $4995: $3f
    ld a, a                                       ; $4996: $7f
    sbc $0e                                       ; $4997: $de $0e
    ld e, d                                       ; $4999: $5a
    db $10                                        ; $499a: $10
    call z, $de6f                                 ; $499b: $cc $6f $de
    ld e, $9f                                     ; $499e: $1e $9f
    ccf                                           ; $49a0: $3f
    add sp, -$57                                  ; $49a1: $e8 $a9
    sub $17                                       ; $49a3: $d6 $17
    ld a, a                                       ; $49a5: $7f
    db $dd                                        ; $49a6: $dd
    adc e                                         ; $49a7: $8b
    cp a                                          ; $49a8: $bf
    ld c, $86                                     ; $49a9: $0e $86
    ld l, c                                       ; $49ab: $69
    rrca                                          ; $49ac: $0f
    ccf                                           ; $49ad: $3f
    add hl, hl                                    ; $49ae: $29
    ld [hl], e                                    ; $49af: $73
    ldh [$8f], a                                  ; $49b0: $e0 $8f
    inc sp                                        ; $49b2: $33
    and h                                         ; $49b3: $a4
    add hl, bc                                    ; $49b4: $09
    ld c, a                                       ; $49b5: $4f
    ld a, d                                       ; $49b6: $7a
    dec de                                        ; $49b7: $1b
    ld a, e                                       ; $49b8: $7b
    rla                                           ; $49b9: $17
    ld l, d                                       ; $49ba: $6a
    inc l                                         ; $49bb: $2c
    ld e, c                                       ; $49bc: $59
    add hl, bc                                    ; $49bd: $09
    adc c                                         ; $49be: $89
    rst $18                                       ; $49bf: $df
    sbc $67                                       ; $49c0: $de $67
    cp l                                          ; $49c2: $bd
    rst $20                                       ; $49c3: $e7
    add $93                                       ; $49c4: $c6 $93
    ld e, $24                                     ; $49c6: $1e $24
    ld b, h                                       ; $49c8: $44
    xor b                                         ; $49c9: $a8
    or c                                          ; $49ca: $b1
    xor e                                         ; $49cb: $ab
    and h                                         ; $49cc: $a4
    ld b, h                                       ; $49cd: $44
    xor h                                         ; $49ce: $ac
    or $a6                                        ; $49cf: $f6 $a6
    add hl, sp                                    ; $49d1: $39
    add hl, bc                                    ; $49d2: $09
    db $fc                                        ; $49d3: $fc
    sub l                                         ; $49d4: $95
    ld a, [hl]                                    ; $49d5: $7e
    ld b, h                                       ; $49d6: $44
    rst $30                                       ; $49d7: $f7
    ld [$e0e9], sp                                ; $49d8: $08 $e9 $e0
    or l                                          ; $49db: $b5
    dec e                                         ; $49dc: $1d
    ld h, l                                       ; $49dd: $65
    rrca                                          ; $49de: $0f
    ld a, [de]                                    ; $49df: $1a
    cp e                                          ; $49e0: $bb
    pop bc                                        ; $49e1: $c1
    rra                                           ; $49e2: $1f
    ld d, h                                       ; $49e3: $54
    ld a, a                                       ; $49e4: $7f
    db $ec                                        ; $49e5: $ec
    ld l, b                                       ; $49e6: $68
    rst $00                                       ; $49e7: $c7
    db $db                                        ; $49e8: $db
    rst $08                                       ; $49e9: $cf
    rra                                           ; $49ea: $1f
    jr nz, jr_036_4a4e                            ; $49eb: $20 $61

    add h                                         ; $49ed: $84
    ld c, $5a                                     ; $49ee: $0e $5a
    adc [hl]                                      ; $49f0: $8e
    jr nc, jr_036_4a6d                            ; $49f1: $30 $7a

    db $d3                                        ; $49f3: $d3
    ld h, $f0                                     ; $49f4: $26 $f0
    rst $10                                       ; $49f6: $d7
    cp e                                          ; $49f7: $bb
    ld b, l                                       ; $49f8: $45
    cp e                                          ; $49f9: $bb
    add a                                         ; $49fa: $87
    ld h, e                                       ; $49fb: $63
    bit 5, b                                      ; $49fc: $cb $68
    db $e4                                        ; $49fe: $e4
    rst $08                                       ; $49ff: $cf
    ld a, e                                       ; $4a00: $7b
    dec hl                                        ; $4a01: $2b
    ld a, [c]                                     ; $4a02: $f2
    ld [hl], a                                    ; $4a03: $77
    ld l, l                                       ; $4a04: $6d
    adc c                                         ; $4a05: $89
    ld e, b                                       ; $4a06: $58
    db $ed                                        ; $4a07: $ed
    dec e                                         ; $4a08: $1d
    sub d                                         ; $4a09: $92
    inc bc                                        ; $4a0a: $03
    jp $f7b1                                      ; $4a0b: $c3 $b1 $f7


    db $10                                        ; $4a0e: $10
    ld e, l                                       ; $4a0f: $5d
    db $e4                                        ; $4a10: $e4
    rst $28                                       ; $4a11: $ef
    ld l, [hl]                                    ; $4a12: $6e
    add hl, hl                                    ; $4a13: $29
    ld a, [hl-]                                   ; $4a14: $3a
    or $5c                                        ; $4a15: $f6 $5c
    ld h, e                                       ; $4a17: $63
    ld h, e                                       ; $4a18: $63
    xor e                                         ; $4a19: $ab
    dec l                                         ; $4a1a: $2d
    sub l                                         ; $4a1b: $95
    jr nc, jr_036_4a64                            ; $4a1c: $30 $46

    and $ad                                       ; $4a1e: $e6 $ad
    ld e, d                                       ; $4a20: $5a
    db $dd                                        ; $4a21: $dd
    pop bc                                        ; $4a22: $c1
    ld c, e                                       ; $4a23: $4b
    ld a, [$f529]                                 ; $4a24: $fa $29 $f5
    ld d, c                                       ; $4a27: $51
    ld l, d                                       ; $4a28: $6a
    adc e                                         ; $4a29: $8b
    or a                                          ; $4a2a: $b7
    ld c, h                                       ; $4a2b: $4c
    cp $14                                        ; $4a2c: $fe $14
    ld [hl], l                                    ; $4a2e: $75
    ret                                           ; $4a2f: $c9


    xor d                                         ; $4a30: $aa
    ld b, h                                       ; $4a31: $44
    xor h                                         ; $4a32: $ac
    or $a6                                        ; $4a33: $f6 $a6
    ld c, l                                       ; $4a35: $4d
    ldh [$af], a                                  ; $4a36: $e0 $af
    inc l                                         ; $4a38: $2c
    ld [hl], l                                    ; $4a39: $75
    or b                                          ; $4a3a: $b0
    xor $0b                                       ; $4a3b: $ee $0b
    res 7, c                                      ; $4a3d: $cb $b9
    ld [$57e8], a                                 ; $4a3f: $ea $e8 $57
    inc b                                         ; $4a42: $04
    ld e, c                                       ; $4a43: $59
    dec c                                         ; $4a44: $0d
    ld a, h                                       ; $4a45: $7c
    ld b, h                                       ; $4a46: $44
    rst $28                                       ; $4a47: $ef
    cp c                                          ; $4a48: $b9
    ld a, [$d623]                                 ; $4a49: $fa $23 $d6
    ld d, d                                       ; $4a4c: $52
    inc c                                         ; $4a4d: $0c

jr_036_4a4e:
    cp $ba                                        ; $4a4e: $fe $ba
    pop bc                                        ; $4a50: $c1
    rra                                           ; $4a51: $1f
    ld [hl], h                                    ; $4a52: $74
    cpl                                           ; $4a53: $2f
    cp $7a                                        ; $4a54: $fe $7a
    ld hl, sp+$49                                 ; $4a56: $f8 $49
    push de                                       ; $4a58: $d5
    add d                                         ; $4a59: $82

Call_036_4a5a:
    and l                                         ; $4a5a: $a5
    jp c, $d9db                                   ; $4a5b: $da $db $d9

    ld a, a                                       ; $4a5e: $7f
    ld h, [hl]                                    ; $4a5f: $66
    ld e, d                                       ; $4a60: $5a
    ld [hl], c                                    ; $4a61: $71
    adc h                                         ; $4a62: $8c
    inc bc                                        ; $4a63: $03

jr_036_4a64:
    ld l, c                                       ; $4a64: $69
    ld c, $c9                                     ; $4a65: $0e $c9
    rst $00                                       ; $4a67: $c7
    cp c                                          ; $4a68: $b9
    cpl                                           ; $4a69: $2f
    inc l                                         ; $4a6a: $2c
    dec c                                         ; $4a6b: $0d
    add h                                         ; $4a6c: $84

jr_036_4a6d:
    ld a, [hl-]                                   ; $4a6d: $3a
    or [hl]                                       ; $4a6e: $b6
    ret                                           ; $4a6f: $c9


    or c                                          ; $4a70: $b1
    ld [hl], a                                    ; $4a71: $77
    rlca                                          ; $4a72: $07
    and [hl]                                      ; $4a73: $a6
    add hl, sp                                    ; $4a74: $39
    or e                                          ; $4a75: $b3
    add l                                         ; $4a76: $85
    or c                                          ; $4a77: $b1
    ld a, [hl-]                                   ; $4a78: $3a
    and h                                         ; $4a79: $a4
    ld d, $84                                     ; $4a7a: $16 $84
    ld e, $9f                                     ; $4a7c: $1e $9f
    or $53                                        ; $4a7e: $f6 $53
    ld l, d                                       ; $4a80: $6a
    xor h                                         ; $4a81: $ac
    ld d, [hl]                                    ; $4a82: $56
    jp nz, $b9df                                  ; $4a83: $c2 $df $b9

    xor h                                         ; $4a86: $ac
    rlca                                          ; $4a87: $07
    cpl                                           ; $4a88: $2f
    xor c                                         ; $4a89: $a9
    ld d, [hl]                                    ; $4a8a: $56
    dec a                                         ; $4a8b: $3d
    ld [bc], a                                    ; $4a8c: $02
    xor d                                         ; $4a8d: $aa
    dec l                                         ; $4a8e: $2d
    ld h, l                                       ; $4a8f: $65
    ld a, [hl+]                                   ; $4a90: $2a
    cp $5c                                        ; $4a91: $fe $5c
    sub $59                                       ; $4a93: $d6 $59
    db $ec                                        ; $4a95: $ec
    ld [hl+], a                                   ; $4a96: $22
    and h                                         ; $4a97: $a4
    add hl, sp                                    ; $4a98: $39
    jp $cb63                                      ; $4a99: $c3 $63 $cb


    rst $18                                       ; $4a9c: $df
    sub a                                         ; $4a9d: $97
    db $e3                                        ; $4a9e: $e3
    cpl                                           ; $4a9f: $2f
    ld e, b                                       ; $4aa0: $58
    ld a, [hl-]                                   ; $4aa1: $3a
    ld [$60a2], a                                 ; $4aa2: $ea $a2 $60
    ret                                           ; $4aa5: $c9


    inc e                                         ; $4aa6: $1c
    ld [$fd65], sp                                ; $4aa7: $08 $65 $fd
    cp [hl]                                       ; $4aaa: $be
    ld a, [de]                                    ; $4aab: $1a
    nop                                           ; $4aac: $00
    jp $3ab9                                      ; $4aad: $c3 $b9 $3a


    call c, $fe13                                 ; $4ab0: $dc $13 $fe
    and e                                         ; $4ab3: $a3
    ld b, l                                       ; $4ab4: $45
    di                                            ; $4ab5: $f3
    add a                                         ; $4ab6: $87
    cp l                                          ; $4ab7: $bd
    daa                                           ; $4ab8: $27
    adc d                                         ; $4ab9: $8a
    db $eb                                        ; $4aba: $eb
    ld e, b                                       ; $4abb: $58
    sub a                                         ; $4abc: $97
    sub c                                         ; $4abd: $91
    sub d                                         ; $4abe: $92
    ld hl, sp+$0d                                 ; $4abf: $f8 $0d
    ret                                           ; $4ac1: $c9


    rst $38                                       ; $4ac2: $ff
    pop de                                        ; $4ac3: $d1
    inc [hl]                                      ; $4ac4: $34
    rlca                                          ; $4ac5: $07
    inc hl                                        ; $4ac6: $23
    ld l, $04                                     ; $4ac7: $2e $04
    cpl                                           ; $4ac9: $2f
    cp l                                          ; $4aca: $bd
    ret nc                                        ; $4acb: $d0

    dec e                                         ; $4acc: $1d
    db $ed                                        ; $4acd: $ed
    ld a, b                                       ; $4ace: $78
    ei                                            ; $4acf: $fb

jr_036_4ad0:
    ld sp, hl                                     ; $4ad0: $f9
    inc bc                                        ; $4ad1: $03
    call z, $fc8c                                 ; $4ad2: $cc $8c $fc
    ld a, c                                       ; $4ad5: $79
    ld l, a                                       ; $4ad6: $6f
    ld c, [hl]                                    ; $4ad7: $4e
    dec sp                                        ; $4ad8: $3b
    ei                                            ; $4ad9: $fb
    push bc                                       ; $4ada: $c5
    ld e, a                                       ; $4adb: $5f
    rlca                                          ; $4adc: $07
    dec l                                         ; $4add: $2d
    inc bc                                        ; $4ade: $03
    sbc a                                         ; $4adf: $9f
    rst $18                                       ; $4ae0: $df
    jr nz, jr_036_4ad0                            ; $4ae1: $20 $ed

    ld l, b                                       ; $4ae3: $68
    rlca                                          ; $4ae4: $07
    ld e, b                                       ; $4ae5: $58
    call c, Call_000_2584                         ; $4ae6: $dc $84 $25
    ld l, $39                                     ; $4ae9: $2e $39
    ld a, $c4                                     ; $4aeb: $3e $c4
    or l                                          ; $4aed: $b5
    sbc $b2                                       ; $4aee: $de $b2
    adc [hl]                                      ; $4af0: $8e
    adc [hl]                                      ; $4af1: $8e
    or d                                          ; $4af2: $b2
    rlca                                          ; $4af3: $07
    adc l                                         ; $4af4: $8d
    or l                                          ; $4af5: $b5
    cp h                                          ; $4af6: $bc
    ld b, h                                       ; $4af7: $44
    ld a, [bc]                                    ; $4af8: $0a
    inc [hl]                                      ; $4af9: $34
    ld hl, sp+$4b                                 ; $4afa: $f8 $4b
    ld [hl], e                                    ; $4afc: $73
    ret                                           ; $4afd: $c9


    sbc a                                         ; $4afe: $9f
    push af                                       ; $4aff: $f5
    sub [hl]                                      ; $4b00: $96
    add hl, de                                    ; $4b01: $19
    xor $28                                       ; $4b02: $ee $28
    ld a, e                                       ; $4b04: $7b
    ret nc                                        ; $4b05: $d0

    ret c                                         ; $4b06: $d8

    call z, $e7e8                                 ; $4b07: $cc $e8 $e7
    sbc l                                         ; $4b0a: $9d
    or c                                          ; $4b0b: $b1
    jp $efa5                                      ; $4b0c: $c3 $a5 $ef


    ld b, e                                       ; $4b0f: $43
    rrca                                          ; $4b10: $0f
    rst $00                                       ; $4b11: $c7
    halt                                          ; $4b12: $76
    or h                                          ; $4b13: $b4
    db $e3                                        ; $4b14: $e3
    db $ed                                        ; $4b15: $ed
    rst $20                                       ; $4b16: $e7
    rrca                                          ; $4b17: $0f
    jr nc, jr_036_4b4d                            ; $4b18: $30 $33

    ld a, [c]                                     ; $4b1a: $f2
    rst $20                                       ; $4b1b: $e7
    cp l                                          ; $4b1c: $bd

jr_036_4b1d:
    dec [hl]                                      ; $4b1d: $35
    di                                            ; $4b1e: $f3
    adc l                                         ; $4b1f: $8d
    ld a, [hl]                                    ; $4b20: $7e
    dec b                                         ; $4b21: $05
    ld l, c                                       ; $4b22: $69
    ld c, $b3                                     ; $4b23: $0e $b3
    dec sp                                        ; $4b25: $3b
    or $dc                                        ; $4b26: $f6 $dc
    ldh [$af], a                                  ; $4b28: $e0 $af
    rst $28                                       ; $4b2a: $ef
    or e                                          ; $4b2b: $b3
    ld l, [hl]                                    ; $4b2c: $6e
    cp h                                          ; $4b2d: $bc
    db $ed                                        ; $4b2e: $ed
    ld b, $7f                                     ; $4b2f: $06 $7f
    ret nc                                        ; $4b31: $d0

    call z, $e7e8                                 ; $4b32: $cc $e8 $e7
    ld c, l                                       ; $4b35: $4d
    sbc e                                         ; $4b36: $9b
    ret nz                                        ; $4b37: $c0

    ld e, a                                       ; $4b38: $5f
    rst $28                                       ; $4b39: $ef
    adc [hl]                                      ; $4b3a: $8e
    ld [hl], c                                    ; $4b3b: $71
    cp d                                          ; $4b3c: $ba
    ld c, d                                       ; $4b3d: $4a
    adc $d5                                       ; $4b3e: $ce $d5
    rra                                           ; $4b40: $1f
    or c                                          ; $4b41: $b1
    sub [hl]                                      ; $4b42: $96
    ld h, [hl]                                    ; $4b43: $66
    sub [hl]                                      ; $4b44: $96
    ld [hl], l                                    ; $4b45: $75
    sbc c                                         ; $4b46: $99
    sbc a                                         ; $4b47: $9f
    ccf                                           ; $4b48: $3f
    ld l, a                                       ; $4b49: $6f
    ld e, a                                       ; $4b4a: $5f
    inc l                                         ; $4b4b: $2c
    ld e, b                                       ; $4b4c: $58

jr_036_4b4d:
    ld a, [hl-]                                   ; $4b4d: $3a
    ld l, b                                       ; $4b4e: $68
    ld b, c                                       ; $4b4f: $41
    cp $e8                                        ; $4b50: $fe $e8
    add l                                         ; $4b52: $85
    add sp, -$0b                                  ; $4b53: $e8 $f5
    halt                                          ; $4b55: $76
    ld l, [hl]                                    ; $4b56: $6e
    sub d                                         ; $4b57: $92
    ld a, b                                       ; $4b58: $78
    dec sp                                        ; $4b59: $3b
    ld l, b                                       ; $4b5a: $68

Jump_036_4b5b:
    ld b, c                                       ; $4b5b: $41
    jr nc, jr_036_4b1d                            ; $4b5c: $30 $bf

    ld b, c                                       ; $4b5e: $41
    sbc d                                         ; $4b5f: $9a
    inc bc                                        ; $4b60: $03
    add hl, bc                                    ; $4b61: $09
    db $fc                                        ; $4b62: $fc
    push af                                       ; $4b63: $f5
    ld a, l                                       ; $4b64: $7d
    sub $8d                                       ; $4b65: $d6 $8d
    or a                                          ; $4b67: $b7
    db $dd                                        ; $4b68: $dd
    ldh [rIF], a                                  ; $4b69: $e0 $0f
    sbc d                                         ; $4b6b: $9a
    add hl, de                                    ; $4b6c: $19
    db $fd                                        ; $4b6d: $fd
    cp h                                          ; $4b6e: $bc
    ld l, c                                       ; $4b6f: $69
    ld c, $a3                                     ; $4b70: $0e $a3
    db $ec                                        ; $4b72: $ec
    ld b, c                                       ; $4b73: $41
    db $e3                                        ; $4b74: $e3
    sub b                                         ; $4b75: $90
    ld c, $97                                     ; $4b76: $0e $97
    ld [hl+], a                                   ; $4b78: $22
    ld a, a                                       ; $4b79: $7f
    sbc a                                         ; $4b7a: $9f
    jr nz, jr_036_4b1d                            ; $4b7b: $20 $a0

    add $73                                       ; $4b7d: $c6 $73
    or l                                          ; $4b7f: $b5
    or a                                          ; $4b80: $b7
    or e                                          ; $4b81: $b3
    cp $4c                                        ; $4b82: $fe $4c
    db $e3                                        ; $4b84: $e3
    ret nz                                        ; $4b85: $c0

    dec h                                         ; $4b86: $25
    ret nc                                        ; $4b87: $d0

    ret c                                         ; $4b88: $d8

Call_036_4b89:
    ld a, [hl-]                                   ; $4b89: $3a
    or [hl]                                       ; $4b8a: $b6
    ret z                                         ; $4b8b: $c8

    rra                                           ; $4b8c: $1f
    dec [hl]                                      ; $4b8d: $35
    ld a, a                                       ; $4b8e: $7f
    ld h, b                                       ; $4b8f: $60
    db $ec                                        ; $4b90: $ec
    ld l, h                                       ; $4b91: $6c
    pop bc                                        ; $4b92: $c1
    rra                                           ; $4b93: $1f
    sub h                                         ; $4b94: $94
    xor h                                         ; $4b95: $ac
    ld a, [hl+]                                   ; $4b96: $2a
    inc h                                         ; $4b97: $24
    ld a, [hl]                                    ; $4b98: $7e
    di                                            ; $4b99: $f3
    and [hl]                                      ; $4b9a: $a6
    ld c, l                                       ; $4b9b: $4d
    ldh [$af], a                                  ; $4b9c: $e0 $af
    rst $28                                       ; $4b9e: $ef
    or e                                          ; $4b9f: $b3
    ld l, [hl]                                    ; $4ba0: $6e
    cp h                                          ; $4ba1: $bc
    dec l                                         ; $4ba2: $2d
    ld a, [c]                                     ; $4ba3: $f2
    ld [hl], a                                    ; $4ba4: $77
    ld l, l                                       ; $4ba5: $6d
    ld l, c                                       ; $4ba6: $69
    ld [c], a                                     ; $4ba7: $e2
    ld h, [hl]                                    ; $4ba8: $66
    sub [hl]                                      ; $4ba9: $96
    ld l, [hl]                                    ; $4baa: $6e
    ldh a, [rTAC]                                 ; $4bab: $f0 $07
    dec a                                         ; $4bad: $3d
    db $fc                                        ; $4bae: $fc
    and h                                         ; $4baf: $a4
    sbc c                                         ; $4bb0: $99
    pop de                                        ; $4bb1: $d1
    rst $08                                       ; $4bb2: $cf
    sbc e                                         ; $4bb3: $9b
    and $09                                       ; $4bb4: $e6 $09
    db $fc                                        ; $4bb6: $fc
    push af                                       ; $4bb7: $f5
    ld a, l                                       ; $4bb8: $7d
    sub $bd                                       ; $4bb9: $d6 $bd
    ld e, e                                       ; $4bbb: $5b
    ld e, e                                       ; $4bbc: $5b
    ld a, [de]                                    ; $4bbd: $1a
    ld l, a                                       ; $4bbe: $6f
    rst $08                                       ; $4bbf: $cf
    db $dd                                        ; $4bc0: $dd
    adc e                                         ; $4bc1: $8b
    cp a                                          ; $4bc2: $bf
    ld [$658f], a                                 ; $4bc3: $ea $8f $65
    inc [hl]                                      ; $4bc6: $34
    ld a, [c]                                     ; $4bc7: $f2
    rst $20                                       ; $4bc8: $e7
    cp l                                          ; $4bc9: $bd
    dec [hl]                                      ; $4bca: $35
    inc sp                                        ; $4bcb: $33
    ld a, [$d379]                                 ; $4bcc: $fa $79 $d3
    ld h, $f0                                     ; $4bcf: $26 $f0
    rst $10                                       ; $4bd1: $d7
    ld [hl], a                                    ; $4bd2: $77
    ld de, $cf84                                  ; $4bd3: $11 $84 $cf
    dec [hl]                                      ; $4bd6: $35
    or $fe                                        ; $4bd7: $f6 $fe
    and l                                         ; $4bd9: $a5
    dec de                                        ; $4bda: $1b
    db $fc                                        ; $4bdb: $fc
    ld bc, $5196                                  ; $4bdc: $01 $96 $51
    add c                                         ; $4bdf: $81
    or c                                          ; $4be0: $b1
    ld h, h                                       ; $4be1: $64
    push de                                       ; $4be2: $d5
    pop hl                                        ; $4be3: $e1
    adc b                                         ; $4be4: $88
    sbc $ea                                       ; $4be5: $de $ea
    cpl                                           ; $4be7: $2f
    or c                                          ; $4be8: $b1
    ld l, c                                       ; $4be9: $69

Call_036_4bea:
    ld c, $09                                     ; $4bea: $0e $09
    db $fc                                        ; $4bec: $fc
    push af                                       ; $4bed: $f5
    ld a, l                                       ; $4bee: $7d
    sub $3d                                       ; $4bef: $d6 $3d
    add d                                         ; $4bf1: $82
    cp a                                          ; $4bf2: $bf
    ld [hl+], a                                   ; $4bf3: $22
    ld a, a                                       ; $4bf4: $7f
    rst $10                                       ; $4bf5: $d7
    ld [hl], $33                                  ; $4bf6: $36 $33
    ld hl, $833f                                  ; $4bf8: $21 $3f $83
    ld [hl], e                                    ; $4bfb: $73
    rst $28                                       ; $4bfc: $ef
    rra                                           ; $4bfd: $1f
    ld c, e                                       ; $4bfe: $4b
    sub b                                         ; $4bff: $90
    and h                                         ; $4c00: $a4

Call_036_4c01:
    adc [hl]                                      ; $4c01: $8e
    db $ed                                        ; $4c02: $ed
    xor b                                         ; $4c03: $a8

jr_036_4c04:
    ld a, a                                       ; $4c04: $7f
    inc sp                                        ; $4c05: $33
    call nc, $fd52                                ; $4c06: $d4 $52 $fd
    ld a, e                                       ; $4c09: $7b
    inc b                                         ; $4c0a: $04
    inc d                                         ; $4c0b: $14
    add e                                         ; $4c0c: $83
    cp a                                          ; $4c0d: $bf
    adc d                                         ; $4c0e: $8a
    ld a, [hl-]                                   ; $4c0f: $3a
    ld b, b                                       ; $4c10: $40
    ld [de], a                                    ; $4c11: $12
    inc sp                                        ; $4c12: $33
    ld c, b                                       ; $4c13: $48
    ld [hl], e                                    ; $4c14: $73
    add hl, bc                                    ; $4c15: $09
    db $fc                                        ; $4c16: $fc
    push af                                       ; $4c17: $f5
    ld a, l                                       ; $4c18: $7d
    sub $cd                                       ; $4c19: $d6 $cd
    adc h                                         ; $4c1b: $8c
    ld a, [hl]                                    ; $4c1c: $7e
    sbc $73                                       ; $4c1d: $de $73
    rst $28                                       ; $4c1f: $ef
    pop hl                                        ; $4c20: $e1
    ld e, d                                       ; $4c21: $5a
    xor d                                         ; $4c22: $aa
    sub l                                         ; $4c23: $95
    ldh a, [$57]                                  ; $4c24: $f0 $57
    dec e                                         ; $4c26: $1d
    xor $a0                                       ; $4c27: $ee $a0
    dec b                                         ; $4c29: $05
    ld sp, hl                                     ; $4c2a: $f9
    and e                                         ; $4c2b: $a3
    rla                                           ; $4c2c: $17
    and d                                         ; $4c2d: $a2
    rst $10                                       ; $4c2e: $d7
    sbc l                                         ; $4c2f: $9d
    sbc e                                         ; $4c30: $9b
    inc h                                         ; $4c31: $24
    call Call_036_799c                            ; $4c32: $cd $9c $79
    ld c, c                                       ; $4c35: $49
    xor h                                         ; $4c36: $ac
    and l                                         ; $4c37: $a5
    jp c, $e747                                   ; $4c38: $da $47 $e7

    ld e, c                                       ; $4c3b: $59
    or b                                          ; $4c3c: $b0
    ld c, b                                       ; $4c3d: $48
    ldh a, [rTAC]                                 ; $4c3e: $f0 $07
    jr z, jr_036_4ca1                             ; $4c40: $28 $5f

    dec e                                         ; $4c42: $1d
    dec h                                         ; $4c43: $25
    ld c, b                                       ; $4c44: $48
    jp nc, Jump_000_14a1                          ; $4c45: $d2 $a1 $14

    call c, $d4b9                                 ; $4c48: $dc $b9 $d4
    ld a, d                                       ; $4c4b: $7a
    dec sp                                        ; $4c4c: $3b
    ld l, b                                       ; $4c4d: $68
    ld b, c                                       ; $4c4e: $41
    cp $ee                                        ; $4c4f: $fe $ee
    ld l, d                                       ; $4c51: $6a
    or l                                          ; $4c52: $b5
    or a                                          ; $4c53: $b7
    add c                                         ; $4c54: $81
    sub b                                         ; $4c55: $90
    and $09                                       ; $4c56: $e6 $09
    db $fc                                        ; $4c58: $fc
    push af                                       ; $4c59: $f5
    ld a, l                                       ; $4c5a: $7d
    sub $cd                                       ; $4c5b: $d6 $cd
    adc h                                         ; $4c5d: $8c
    ld a, [hl]                                    ; $4c5e: $7e
    sbc $73                                       ; $4c5f: $de $73
    rst $28                                       ; $4c61: $ef
    pop hl                                        ; $4c62: $e1
    ld e, d                                       ; $4c63: $5a
    ld a, [$5615]                                 ; $4c64: $fa $15 $56
    ei                                            ; $4c67: $fb
    jr z, jr_036_4c04                             ; $4c68: $28 $9a

    ccf                                           ; $4c6a: $3f
    inc b                                         ; $4c6b: $04

jr_036_4c6c:
    ld l, a                                       ; $4c6c: $6f
    sbc c                                         ; $4c6d: $99
    ld [hl], b                                    ; $4c6e: $70
    pop af                                        ; $4c6f: $f1
    ld e, e                                       ; $4c70: $5b
    ld l, a                                       ; $4c71: $6f
    rst $38                                       ; $4c72: $ff
    jr c, jr_036_4c6c                             ; $4c73: $38 $f7

    or e                                          ; $4c75: $b3
    sub [hl]                                      ; $4c76: $96
    ld e, d                                       ; $4c77: $5a
    ld a, [bc]                                    ; $4c78: $0a
    and d                                         ; $4c79: $a2
    or d                                          ; $4c7a: $b2
    ld l, [hl]                                    ; $4c7b: $6e
    ldh a, [rTAC]                                 ; $4c7c: $f0 $07
    ld e, b                                       ; $4c7e: $58
    sub $51                                       ; $4c7f: $d6 $51
    inc c                                         ; $4c81: $0c
    cp $d2                                        ; $4c82: $fe $d2
    inc e                                         ; $4c84: $1c
    ld c, c                                       ; $4c85: $49
    cp a                                          ; $4c86: $bf
    rst $28                                       ; $4c87: $ef
    or e                                          ; $4c88: $b3
    dec c                                         ; $4c89: $0d
    cp $aa                                        ; $4c8a: $fe $aa
    add e                                         ; $4c8c: $83
    cp a                                          ; $4c8d: $bf
    ld hl, $524d                                  ; $4c8e: $21 $4d $52
    ld h, l                                       ; $4c91: $65
    inc bc                                        ; $4c92: $03
    and c                                         ; $4c93: $a1
    adc [hl]                                      ; $4c94: $8e
    dec l                                         ; $4c95: $2d
    and e                                         ; $4c96: $a3
    adc h                                         ; $4c97: $8c
    ld hl, $5888                                  ; $4c98: $21 $88 $58

jr_036_4c9b:
    ld a, l                                       ; $4c9b: $7d
    ret                                           ; $4c9c: $c9


    cp c                                          ; $4c9d: $b9
    sbc a                                         ; $4c9e: $9f
    ld [c], a                                     ; $4c9f: $e2
    push de                                       ; $4ca0: $d5

jr_036_4ca1:
    xor a                                         ; $4ca1: $af
    adc b                                         ; $4ca2: $88
    sub d                                         ; $4ca3: $92
    ld d, l                                       ; $4ca4: $55
    ld b, a                                       ; $4ca5: $47
    ret                                           ; $4ca6: $c9


    ld b, l                                       ; $4ca7: $45
    jr jr_036_4c9b                                ; $4ca8: $18 $f1

    sub d                                         ; $4caa: $92
    adc [hl]                                      ; $4cab: $8e
    db $e4                                        ; $4cac: $e4
    adc h                                         ; $4cad: $8c
    rst $10                                       ; $4cae: $d7
    cp $ec                                        ; $4caf: $fe $ec
    ld d, e                                       ; $4cb1: $53
    sbc d                                         ; $4cb2: $9a
    and $49                                       ; $4cb3: $e6 $49
    rra                                           ; $4cb5: $1f
    dec sp                                        ; $4cb6: $3b
    inc a                                         ; $4cb7: $3c
    ld d, [hl]                                    ; $4cb8: $56
    ld c, e                                       ; $4cb9: $4b
    ld l, h                                       ; $4cba: $6c
    and $6d                                       ; $4cbb: $e6 $6d
    ld l, h                                       ; $4cbd: $6c
    ld b, a                                       ; $4cbe: $47
    ld c, d                                       ; $4cbf: $4a
    jp c, $8259                                   ; $4cc0: $da $59 $82

    ld a, [c]                                     ; $4cc3: $f2
    add a                                         ; $4cc4: $87
    sbc l                                         ; $4cc5: $9d
    db $ed                                        ; $4cc6: $ed
    ld h, a                                       ; $4cc7: $67
    ld d, $f9                                     ; $4cc8: $16 $f9
    ld [$2068], a                                 ; $4cca: $ea $68 $20
    call nc, $b5b1                                ; $4ccd: $d4 $b1 $b5
    inc l                                         ; $4cd0: $2c
    jp nz, Jump_000_04fb                          ; $4cd1: $c2 $fb $04

    jr jr_036_4d11                                ; $4cd4: $18 $3b

    xor a                                         ; $4cd6: $af
    dec h                                         ; $4cd7: $25
    di                                            ; $4cd8: $f3
    di                                            ; $4cd9: $f3

jr_036_4cda:
    sbc [hl]                                      ; $4cda: $9e
    sbc e                                         ; $4cdb: $9b
    db $fc                                        ; $4cdc: $fc
    ld b, l                                       ; $4cdd: $45
    add $a4                                       ; $4cde: $c6 $a4
    add hl, sp                                    ; $4ce0: $39
    ld b, e                                       ; $4ce1: $43
    ld e, c                                       ; $4ce2: $59
    ld c, e                                       ; $4ce3: $4b
    ld b, a                                       ; $4ce4: $47
    ret                                           ; $4ce5: $c9


    ld b, l                                       ; $4ce6: $45
    jr jr_036_4cda                                ; $4ce7: $18 $f1

    sub d                                         ; $4ce9: $92
    adc [hl]                                      ; $4cea: $8e
    db $e4                                        ; $4ceb: $e4
    adc h                                         ; $4cec: $8c
    rst $10                                       ; $4ced: $d7
    cp $ec                                        ; $4cee: $fe $ec
    ld d, e                                       ; $4cf0: $53
    jp c, Jump_036_4d34                           ; $4cf1: $da $34 $4d

    ld [hl], e                                    ; $4cf4: $73
    inc hl                                        ; $4cf5: $23
    inc e                                         ; $4cf6: $1c
    db $eb                                        ; $4cf7: $eb
    ld c, $5f                                     ; $4cf8: $0e $5f
    ld b, b                                       ; $4cfa: $40
    cp $14                                        ; $4cfb: $fe $14
    push de                                       ; $4cfd: $d5
    sub c                                         ; $4cfe: $91
    xor c                                         ; $4cff: $a9
    call Call_036_43bc                            ; $4d00: $cd $bc $43
    ld a, [hl-]                                   ; $4d03: $3a
    jp c, Jump_000_3b41                           ; $4d04: $da $41 $3b

    jp c, $f6f1                                   ; $4d07: $da $f1 $f6

    di                                            ; $4d0a: $f3
    rlca                                          ; $4d0b: $07
    sbc $06                                       ; $4d0c: $de $06
    jp nz, Jump_036_77b9                          ; $4d0e: $c2 $b9 $77

jr_036_4d11:
    adc e                                         ; $4d11: $8b
    halt                                          ; $4d12: $76
    add e                                         ; $4d13: $83
    cp a                                          ; $4d14: $bf
    ld [$ae90], a                                 ; $4d15: $ea $90 $ae
    sub d                                         ; $4d18: $92
    ld a, [hl-]                                   ; $4d19: $3a
    sub $db                                       ; $4d1a: $d6 $db
    db $e4                                        ; $4d1c: $e4
    xor a                                         ; $4d1d: $af
    ld [hl], b                                    ; $4d1e: $70
    ld b, b                                       ; $4d1f: $40
    db $ed                                        ; $4d20: $ed
    dec c                                         ; $4d21: $0d
    ld a, [$7259]                                 ; $4d22: $fa $59 $72
    ld hl, sp+$79                                 ; $4d25: $f8 $79
    db $d3                                        ; $4d27: $d3
    adc $6a                                       ; $4d28: $ce $6a
    jr nz, jr_036_4d6f                            ; $4d2a: $20 $43

    ccf                                           ; $4d2c: $3f
    ld l, e                                       ; $4d2d: $6b
    jp hl                                         ; $4d2e: $e9


    ld h, a                                       ; $4d2f: $67
    ld a, e                                       ; $4d30: $7b
    inc b                                         ; $4d31: $04
    ld d, h                                       ; $4d32: $54
    add a                                         ; $4d33: $87

Call_036_4d34:
Jump_036_4d34:
    inc c                                         ; $4d34: $0c
    ret                                           ; $4d35: $c9


    ld bc, $acf3                                  ; $4d36: $01 $f3 $ac
    ld l, $88                                     ; $4d39: $2e $88
    add e                                         ; $4d3b: $83
    xor l                                         ; $4d3c: $ad
    ld c, $fe                                     ; $4d3d: $0e $fe
    cp d                                          ; $4d3f: $ba
    pop bc                                        ; $4d40: $c1
    rra                                           ; $4d41: $1f
    db $f4                                        ; $4d42: $f4
    ld l, a                                       ; $4d43: $6f
    rst $20                                       ; $4d44: $e7
    db $10                                        ; $4d45: $10
    ldh a, [$f6]                                  ; $4d46: $f0 $f6
    ld e, c                                       ; $4d48: $59
    call nc, $ae71                                ; $4d49: $d4 $71 $ae
    ld c, $57                                     ; $4d4c: $0e $57
    xor e                                         ; $4d4e: $ab
    ld l, [hl]                                    ; $4d4f: $6e
    ldh a, [rTAC]                                 ; $4d50: $f0 $07
    ld h, l                                       ; $4d52: $65
    dec c                                         ; $4d53: $0d
    ld h, d                                       ; $4d54: $62
    ldh a, [rNR21]                                ; $4d55: $f0 $16
    cpl                                           ; $4d57: $2f
    ld c, d                                       ; $4d58: $4a
    pop bc                                        ; $4d59: $c1
    ld [$7243], sp                                ; $4d5a: $08 $43 $72
    ret                                           ; $4d5d: $c9


    rra                                           ; $4d5e: $1f
    and c                                         ; $4d5f: $a1
    ld e, d                                       ; $4d60: $5a
    ld d, l                                       ; $4d61: $55
    dec sp                                        ; $4d62: $3b
    or [hl]                                       ; $4d63: $b6
    adc h                                         ; $4d64: $8c
    ld b, [hl]                                    ; $4d65: $46
    cp $bc                                        ; $4d66: $fe $bc
    or a                                          ; $4d68: $b7
    ld h, [hl]                                    ; $4d69: $66
    ld h, $d4                                     ; $4d6a: $26 $d4
    ld l, d                                       ; $4d6c: $6a
    rst $28                                       ; $4d6d: $ef
    cp c                                          ; $4d6e: $b9

jr_036_4d6f:
    ret                                           ; $4d6f: $c9


    ld e, a                                       ; $4d70: $5f
    ld h, h                                       ; $4d71: $64
    call z, Call_000_398c                         ; $4d72: $cc $8c $39
    or e                                          ; $4d75: $b3
    dec sp                                        ; $4d76: $3b
    ld [hl], $cd                                  ; $4d77: $36 $cd
    ld bc, $7f49                                  ; $4d79: $01 $49 $7f
    or a                                          ; $4d7c: $b7
    xor b                                         ; $4d7d: $a8
    ld hl, sp-$15                                 ; $4d7e: $f8 $eb
    db $dd                                        ; $4d80: $dd
    ld bc, $b496                                  ; $4d81: $01 $96 $b4
    add hl, bc                                    ; $4d84: $09
    db $fc                                        ; $4d85: $fc
    push af                                       ; $4d86: $f5
    ld l, [hl]                                    ; $4d87: $6e
    pop de                                        ; $4d88: $d1
    xor $e1                                       ; $4d89: $ee $e1
    ld e, b                                       ; $4d8b: $58
    sub a                                         ; $4d8c: $97
    pop de                                        ; $4d8d: $d1
    ret z                                         ; $4d8e: $c8

    sbc a                                         ; $4d8f: $9f
    rst $30                                       ; $4d90: $f7
    and $5a                                       ; $4d91: $e6 $5a
    db $10                                        ; $4d93: $10
    ld a, [$7115]                                 ; $4d94: $fa $15 $71
    ld a, h                                       ; $4d97: $7c
    cp $bc                                        ; $4d98: $fe $bc
    rst $20                                       ; $4d9a: $e7
    sbc $bd                                       ; $4d9b: $de $bd
    ld e, e                                       ; $4d9d: $5b
    xor l                                         ; $4d9e: $ad
    xor d                                         ; $4d9f: $aa
    dec e                                         ; $4da0: $1d
    adc e                                         ; $4da1: $8b
    cp l                                          ; $4da2: $bd
    add a                                         ; $4da3: $87
    or l                                          ; $4da4: $b5
    and l                                         ; $4da5: $a5
    rst $28                                       ; $4da6: $ef
    inc hl                                        ; $4da7: $23
    and h                                         ; $4da8: $a4
    add hl, sp                                    ; $4da9: $39
    ld [hl], e                                    ; $4daa: $73
    ld e, l                                       ; $4dab: $5d
    dec sp                                        ; $4dac: $3b
    and h                                         ; $4dad: $a4
    add hl, bc                                    ; $4dae: $09
    db $fc                                        ; $4daf: $fc
    push af                                       ; $4db0: $f5
    ld a, l                                       ; $4db1: $7d
    sub $3d                                       ; $4db2: $d6 $3d
    inc e                                         ; $4db4: $1c
    ld e, e                                       ; $4db5: $5b
    ld b, [hl]                                    ; $4db6: $46
    inc hl                                        ; $4db7: $23
    ld a, a                                       ; $4db8: $7f
    sbc $5b                                       ; $4db9: $de $5b
    inc sp                                        ; $4dbb: $33
    inc de                                        ; $4dbc: $13
    ld l, d                                       ; $4dbd: $6a
    or l                                          ; $4dbe: $b5
    ld [hl], a                                    ; $4dbf: $77
    ld c, b                                       ; $4dc0: $48
    ld c, $23                                     ; $4dc1: $0e $23
    add sp, $47                                   ; $4dc3: $e8 $47
    db $f4                                        ; $4dc5: $f4
    sub b                                         ; $4dc6: $90
    adc [hl]                                      ; $4dc7: $8e
    cp b                                          ; $4dc8: $b8
    adc [hl]                                      ; $4dc9: $8e
    db $e3                                        ; $4dca: $e3
    call c, Call_036_487b                         ; $4dcb: $dc $7b $48
    adc a                                         ; $4dce: $8f
    rst $08                                       ; $4dcf: $cf
    sbc a                                         ; $4dd0: $9f
    or a                                          ; $4dd1: $b7
    and a                                         ; $4dd2: $a7
    ld a, [de]                                    ; $4dd3: $1a
    ret z                                         ; $4dd4: $c8

    ret nc                                        ; $4dd5: $d0

    ld c, a                                       ; $4dd6: $4f
    xor c                                         ; $4dd7: $a9
    ei                                            ; $4dd8: $fb
    dec d                                         ; $4dd9: $15
    sub c                                         ; $4dda: $91

Jump_036_4ddb:
    and $b3                                       ; $4ddb: $e6 $b3
    sub b                                         ; $4ddd: $90
    and h                                         ; $4dde: $a4
    ret                                           ; $4ddf: $c9


    ld e, a                                       ; $4de0: $5f
    ld h, h                                       ; $4de1: $64
    ld c, h                                       ; $4de2: $4c
    rlca                                          ; $4de3: $07
    xor a                                         ; $4de4: $af
    ld l, l                                       ; $4de5: $6d
    ld a, [c]                                     ; $4de6: $f2
    rst $08                                       ; $4de7: $cf
    inc h                                         ; $4de8: $24
    ld [hl], h                                    ; $4de9: $74
    sbc d                                         ; $4dea: $9a
    inc bc                                        ; $4deb: $03
    jp $dd63                                      ; $4dec: $c3 $63 $dd


    db $e4                                        ; $4def: $e4
    adc e                                         ; $4df0: $8b
    sub d                                         ; $4df1: $92
    add hl, bc                                    ; $4df2: $09
    ld a, [hl-]                                   ; $4df3: $3a
    ld [hl], $78                                  ; $4df4: $36 $78
    ld c, b                                       ; $4df6: $48
    sbc c                                         ; $4df7: $99
    pop hl                                        ; $4df8: $e1
    rlca                                          ; $4df9: $07
    call $92fe                                    ; $4dfa: $cd $fe $92
    adc e                                         ; $4dfd: $8b
    ld d, a                                       ; $4dfe: $57
    cp a                                          ; $4dff: $bf
    jp nz, Jump_000_3f73                          ; $4e00: $c2 $73 $3f

    push bc                                       ; $4e03: $c5
    cp [hl]                                       ; $4e04: $be
    ld b, h                                       ; $4e05: $44

jr_036_4e06:
    nop                                           ; $4e06: $00
    rst $10                                       ; $4e07: $d7
    ld d, d                                       ; $4e08: $52
    inc c                                         ; $4e09: $0c
    rla                                           ; $4e0a: $17
    ld c, l                                       ; $4e0b: $4d
    ld e, c                                       ; $4e0c: $59
    ld c, e                                       ; $4e0d: $4b
    inc sp                                        ; $4e0e: $33
    inc hl                                        ; $4e0f: $23
    ld a, a                                       ; $4e10: $7f
    dec de                                        ; $4e11: $1b
    ld b, b                                       ; $4e12: $40

jr_036_4e13:
    add [hl]                                      ; $4e13: $86
    inc [hl]                                      ; $4e14: $34
    rlca                                          ; $4e15: $07
    ret                                           ; $4e16: $c9


    ld h, e                                       ; $4e17: $63
    dec bc                                        ; $4e18: $0b
    inc d                                         ; $4e19: $14
    add e                                         ; $4e1a: $83
    cp a                                          ; $4e1b: $bf
    ld a, [hl-]                                   ; $4e1c: $3a
    or [hl]                                       ; $4e1d: $b6
    ld l, h                                       ; $4e1e: $6c
    jr nz, jr_036_4e13                            ; $4e1f: $20 $f2

    rst $20                                       ; $4e21: $e7
    db $ed                                        ; $4e22: $ed
    rst $18                                       ; $4e23: $df
    ld [hl], e                                    ; $4e24: $73
    rst $28                                       ; $4e25: $ef
    pop hl                                        ; $4e26: $e1
    ld a, [hl-]                                   ; $4e27: $3a
    sub $1d                                       ; $4e28: $d6 $1d
    xor [hl]                                      ; $4e2a: $ae
    xor b                                         ; $4e2b: $a8
    db $d3                                        ; $4e2c: $d3
    inc e                                         ; $4e2d: $1c
    ld [hl], e                                    ; $4e2e: $73
    cp h                                          ; $4e2f: $bc
    xor [hl]                                      ; $4e30: $ae
    ld h, e                                       ; $4e31: $63
    rst $08                                       ; $4e32: $cf
    ld b, l                                       ; $4e33: $45
    cp $ae                                        ; $4e34: $fe $ae
    db $ed                                        ; $4e36: $ed
    dec a                                         ; $4e37: $3d

jr_036_4e38:
    xor h                                         ; $4e38: $ac
    dec l                                         ; $4e39: $2d
    ld [hl], l                                    ; $4e3a: $75
    ld l, h                                       ; $4e3b: $6c
    ld l, a                                       ; $4e3c: $6f
    rra                                           ; $4e3d: $1f
    pop hl                                        ; $4e3e: $e1
    ld l, a                                       ; $4e3f: $6f
    ld a, b                                       ; $4e40: $78
    ld e, c                                       ; $4e41: $59
    ld sp, hl                                     ; $4e42: $f9
    ld l, d                                       ; $4e43: $6a
    dec l                                         ; $4e44: $2d
    dec e                                         ; $4e45: $1d
    and l                                         ; $4e46: $a5
    jr z, jr_036_4e06                             ; $4e47: $28 $bd

    ld b, $2d                                     ; $4e49: $06 $2d
    ld l, c                                       ; $4e4b: $69
    inc de                                        ; $4e4c: $13
    ld hl, sp-$15                                 ; $4e4d: $f8 $eb
    pop af                                        ; $4e4f: $f1
    or e                                          ; $4e50: $b3
    adc [hl]                                      ; $4e51: $8e
    ld hl, sp+$08                                 ; $4e52: $f8 $08
    ld a, a                                       ; $4e54: $7f
    jp $cacb                                      ; $4e55: $c3 $cb $ca


    ld d, a                                       ; $4e58: $57
    db $db                                        ; $4e59: $db
    dec c                                         ; $4e5a: $0d
    cp $20                                        ; $4e5b: $fe $20
    call $c901                                    ; $4e5d: $cd $01 $c9
    ld h, c                                       ; $4e60: $61
    ld l, c                                       ; $4e61: $69
    jr nz, jr_036_4e38                            ; $4e62: $20 $d4

    or c                                          ; $4e64: $b1
    xor $88                                       ; $4e65: $ee $88
    cpl                                           ; $4e67: $2f
    ldh [$34], a                                  ; $4e68: $e0 $34
    rlca                                          ; $4e6a: $07
    di                                            ; $4e6b: $f3
    ld e, [hl]                                    ; $4e6c: $5e
    db $db                                        ; $4e6d: $db
    add hl, sp                                    ; $4e6e: $39
    or $66                                        ; $4e6f: $f6 $66
    jp c, Jump_000_2d79                           ; $4e71: $da $79 $2d

    ld a, e                                       ; $4e74: $7b
    ld l, l                                       ; $4e75: $6d
    push de                                       ; $4e76: $d5
    ld [$fdce], a                                 ; $4e77: $ea $ce $fd
    rla                                           ; $4e7a: $17
    call c, Call_000_0651                         ; $4e7b: $dc $51 $06
    or l                                          ; $4e7e: $b5

jr_036_4e7f:
    pop af                                        ; $4e7f: $f1
    db $d3                                        ; $4e80: $d3
    inc e                                         ; $4e81: $1c
    jp $3b63                                      ; $4e82: $c3 $63 $3b


    dec bc                                        ; $4e85: $0b
    ld l, c                                       ; $4e86: $69
    add hl, bc                                    ; $4e87: $09
    ld [hl], d                                    ; $4e88: $72
    ld h, h                                       ; $4e89: $64
    inc de                                        ; $4e8a: $13
    adc a                                         ; $4e8b: $8f
    ld a, [c]                                     ; $4e8c: $f2
    ld [hl], d                                    ; $4e8d: $72
    ld c, a                                       ; $4e8e: $4f
    db $cc, $04, $12                              ; $4e8f: $cc $04 $12
    cp a                                          ; $4e92: $bf
    and l                                         ; $4e93: $a5
    ld h, l                                       ; $4e94: $65
    ld a, [$3349]                                 ; $4e95: $fa $49 $33
    cp c                                          ; $4e98: $b9
    add $21                                       ; $4e99: $c6 $21
    sub e                                         ; $4e9b: $93
    or d                                          ; $4e9c: $b2
    ret z                                         ; $4e9d: $c8

    ld c, d                                       ; $4e9e: $4a
    sub b                                         ; $4e9f: $90
    and h                                         ; $4ea0: $a4
    pop af                                        ; $4ea1: $f1
    call nz, $d79d                                ; $4ea2: $c4 $9d $d7
    ld a, [c]                                     ; $4ea5: $f2
    ld [de], a                                    ; $4ea6: $12
    add hl, hl                                    ; $4ea7: $29
    ld l, h                                       ; $4ea8: $6c
    jr nz, jr_036_4ee5                            ; $4ea9: $20 $3a

    call $cc01                                    ; $4eab: $cd $01 $cc
    ldh a, [$eb]                                  ; $4eae: $f0 $eb
    pop af                                        ; $4eb0: $f1
    jp hl                                         ; $4eb1: $e9


    cp c                                          ; $4eb2: $b9
    adc [hl]                                      ; $4eb3: $8e
    ld l, l                                       ; $4eb4: $6d
    ld h, $d7                                     ; $4eb5: $26 $d7
    jr c, jr_036_4e7f                             ; $4eb7: $38 $c6

    adc [hl]                                      ; $4eb9: $8e
    ld a, [$4337]                                 ; $4eba: $fa $37 $43
    sbc c                                         ; $4ebd: $99
    db $fc                                        ; $4ebe: $fc
    ld e, l                                       ; $4ebf: $5d
    or a                                          ; $4ec0: $b7
    adc e                                         ; $4ec1: $8b
    sub b                                         ; $4ec2: $90
    or c                                          ; $4ec3: $b1
    sub c                                         ; $4ec4: $91
    ccf                                           ; $4ec5: $3f
    and a                                         ; $4ec6: $a7

jr_036_4ec7:
    dec e                                         ; $4ec7: $1d
    xor d                                         ; $4ec8: $aa
    adc b                                         ; $4ec9: $88
    ld l, d                                       ; $4eca: $6a
    rra                                           ; $4ecb: $1f
    ld h, l                                       ; $4ecc: $65
    ld a, [c]                                     ; $4ecd: $f2
    rla                                           ; $4ece: $17
    ld d, h                                       ; $4ecf: $54
    rla                                           ; $4ed0: $17
    pop bc                                        ; $4ed1: $c1
    rrca                                          ; $4ed2: $0f
    adc $d5                                       ; $4ed3: $ce $d5
    rra                                           ; $4ed5: $1f
    or c                                          ; $4ed6: $b1
    jr jr_036_4ec7                                ; $4ed7: $18 $ee

    ldh [$b5], a                                  ; $4ed9: $e0 $b5
    ld c, l                                       ; $4edb: $4d
    or [hl]                                       ; $4edc: $b6
    inc e                                         ; $4edd: $1c
    or c                                          ; $4ede: $b1
    ld l, $c6                                     ; $4edf: $2e $c6
    ld [$43b4], a                                 ; $4ee1: $ea $b4 $43
    push de                                       ; $4ee4: $d5

jr_036_4ee5:
    jr c, jr_036_4efd                             ; $4ee5: $38 $16

    db $ed                                        ; $4ee7: $ed
    and e                                         ; $4ee8: $a3
    add c                                         ; $4ee9: $81
    ret nc                                        ; $4eea: $d0

    xor a                                         ; $4eeb: $af
    ld hl, sp-$15                                 ; $4eec: $f8 $eb
    ld e, [hl]                                    ; $4eee: $5e
    db $fc                                        ; $4eef: $fc
    push de                                       ; $4ef0: $d5
    or c                                          ; $4ef1: $b1
    xor $b0                                       ; $4ef2: $ee $b0
    and b                                         ; $4ef4: $a0
    ld a, [$05f6]                                 ; $4ef5: $fa $f6 $05
    call c, $6bc1                                 ; $4ef8: $dc $c1 $6b
    bit 3, d                                      ; $4efb: $cb $5a

jr_036_4efd:
    ld c, b                                       ; $4efd: $48
    rst $28                                       ; $4efe: $ef
    nop                                           ; $4eff: $00
    ld l, a                                       ; $4f00: $6f
    sub e                                         ; $4f01: $93
    ld a, l                                       ; $4f02: $7d
    cp d                                          ; $4f03: $ba
    or a                                          ; $4f04: $b7
    ld l, d                                       ; $4f05: $6a
    ld [hl], l                                    ; $4f06: $75
    ld c, a                                       ; $4f07: $4f
    ld hl, sp-$76                                 ; $4f08: $f8 $8a
    or l                                          ; $4f0a: $b5
    ld e, b                                       ; $4f0b: $58
    or [hl]                                       ; $4f0c: $b6
    ld b, a                                       ; $4f0d: $47
    ld b, b                                       ; $4f0e: $40
    sub e                                         ; $4f0f: $93
    call nc, Call_036_52c1                        ; $4f10: $d4 $c1 $52
    db $eb                                        ; $4f13: $eb
    ld c, e                                       ; $4f14: $4b
    ld e, h                                       ; $4f15: $5c
    dec l                                         ; $4f16: $2d
    or c                                          ; $4f17: $b1
    ld b, e                                       ; $4f18: $43
    ld [hl], d                                    ; $4f19: $72
    ld c, c                                       ; $4f1a: $49
    ld h, c                                       ; $4f1b: $61
    ld [hl], h                                    ; $4f1c: $74
    ld b, a                                       ; $4f1d: $47
    ld a, h                                       ; $4f1e: $7c
    ld bc, $2f17                                  ; $4f1f: $01 $17 $2f
    ld c, d                                       ; $4f22: $4a
    pop bc                                        ; $4f23: $c1
    dec a                                         ; $4f24: $3d
    cp $f6                                        ; $4f25: $fe $f6
    dec hl                                        ; $4f27: $2b
    and d                                         ; $4f28: $a2
    sbc a                                         ; $4f29: $9f
    ld d, d                                       ; $4f2a: $52
    ld [hl], a                                    ; $4f2b: $77
    sub [hl]                                      ; $4f2c: $96
    ld b, h                                       ; $4f2d: $44
    ld c, d                                       ; $4f2e: $4a
    ld e, l                                       ; $4f2f: $5d
    sub $18                                       ; $4f30: $d6 $18
    ld b, b                                       ; $4f32: $40
    or $a6                                        ; $4f33: $f6 $a6
    add hl, sp                                    ; $4f35: $39
    ld [hl], e                                    ; $4f36: $73
    ld e, l                                       ; $4f37: $5d
    ld a, e                                       ; $4f38: $7b
    xor $1b                                       ; $4f39: $ee $1b
    ld e, e                                       ; $4f3b: $5b
    xor d                                         ; $4f3c: $aa
    ld b, e                                       ; $4f3d: $43
    xor d                                         ; $4f3e: $aa
    ccf                                           ; $4f3f: $3f
    or $f8                                        ; $4f40: $f6 $f8
    or h                                          ; $4f42: $b4
    ld a, a                                       ; $4f43: $7f
    and a                                         ; $4f44: $a7
    rst $28                                       ; $4f45: $ef
    ld hl, sp+$4c                                 ; $4f46: $f8 $4c
    cp $14                                        ; $4f48: $fe $14
    and l                                         ; $4f4a: $a5
    ld c, $b0                                     ; $4f4b: $0e $b0
    ld [hl], h                                    ; $4f4d: $74
    ldh a, [$da]                                  ; $4f4e: $f0 $da
    ld h, $5f                                     ; $4f50: $26 $5f
    reti                                          ; $4f52: $d9


    db $fd                                        ; $4f53: $fd
    dec bc                                        ; $4f54: $0b
    ld h, b                                       ; $4f55: $60
    jp c, $c459                                   ; $4f56: $da $59 $c4

    ld l, d                                       ; $4f59: $6a
    ld [hl], l                                    ; $4f5a: $75
    rlca                                          ; $4f5b: $07
    xor a                                         ; $4f5c: $af
    db $ed                                        ; $4f5d: $ed
    db $ec                                        ; $4f5e: $ec
    pop bc                                        ; $4f5f: $c1
    cpl                                           ; $4f60: $2f
    ld a, [$b3b1]                                 ; $4f61: $fa $b1 $b3
    ret nc                                        ; $4f64: $d0

    ld a, a                                       ; $4f65: $7f
    sbc b                                         ; $4f66: $98

Jump_036_4f67:
    halt                                          ; $4f67: $76
    ld [c], a                                     ; $4f68: $e2
    ld h, $5b                                     ; $4f69: $26 $5b
    db $10                                        ; $4f6b: $10
    ld c, h                                       ; $4f6c: $4c
    xor c                                         ; $4f6d: $a9
    and l                                         ; $4f6e: $a5
    jp c, $2658                                   ; $4f6f: $da $58 $26

    jr c, @+$18                                   ; $4f72: $38 $16

    xor e                                         ; $4f74: $ab
    dec l                                         ; $4f75: $2d
    dec e                                         ; $4f76: $1d
    db $ed                                        ; $4f77: $ed
    ld b, b                                       ; $4f78: $40
    ld l, a                                       ; $4f79: $6f
    ld a, [hl-]                                   ; $4f7a: $3a
    ld a, [hl]                                    ; $4f7b: $7e
    ld h, a                                       ; $4f7c: $67
    dec [hl]                                      ; $4f7d: $35
    sub b                                         ; $4f7e: $90
    and c                                         ; $4f7f: $a1
    rst $30                                       ; $4f80: $f7
    ld b, b                                       ; $4f81: $40
    db $f4                                        ; $4f82: $f4
    or $1e                                        ; $4f83: $f6 $1e
    ld [hl], d                                    ; $4f85: $72
    xor $dd                                       ; $4f86: $ee $dd
    jp nc, $83d9                                  ; $4f88: $d2 $d9 $83

    ld e, a                                       ; $4f8b: $5f
    db $f4                                        ; $4f8c: $f4
    ld h, e                                       ; $4f8d: $63
    ld h, a                                       ; $4f8e: $67
    and c                                         ; $4f8f: $a1
    rst $38                                       ; $4f90: $ff
    jr nc, jr_036_5000                            ; $4f91: $30 $6d

    jr nz, jr_036_4fa1                            ; $4f93: $20 $0c

    ret                                           ; $4f95: $c9


    ld bc, $acf3                                  ; $4f96: $01 $f3 $ac
    xor [hl]                                      ; $4f99: $ae
    or [hl]                                       ; $4f9a: $b6
    sub h                                         ; $4f9b: $94
    add hl, bc                                    ; $4f9c: $09
    adc [hl]                                      ; $4f9d: $8e
    xor l                                         ; $4f9e: $ad
    or [hl]                                       ; $4f9f: $b6
    ld [hl], h                                    ; $4fa0: $74

jr_036_4fa1:
    or h                                          ; $4fa1: $b4
    inc bc                                        ; $4fa2: $03
    cp l                                          ; $4fa3: $bd
    ld c, l                                       ; $4fa4: $4d
    db $d3                                        ; $4fa5: $d3
    or h                                          ; $4fa6: $b4
    add e                                         ; $4fa7: $83
    ld h, c                                       ; $4fa8: $61
    ld c, d                                       ; $4fa9: $4a
    dec e                                         ; $4faa: $1d
    db $fc                                        ; $4fab: $fc
    ld b, c                                       ; $4fac: $41
    inc bc                                        ; $4fad: $03
    and c                                         ; $4fae: $a1
    add $ea                                       ; $4faf: $c6 $ea
    adc a                                         ; $4fb1: $8f
    rst $20                                       ; $4fb2: $e7
    sbc $3f                                       ; $4fb3: $de $3f
    ld d, [hl]                                    ; $4fb5: $56
    ld e, e                                       ; $4fb6: $5b
    sbc d                                         ; $4fb7: $9a
    xor h                                         ; $4fb8: $ac
    ld d, [hl]                                    ; $4fb9: $56
    sub a                                         ; $4fba: $97
    push af                                       ; $4fbb: $f5
    db $fd                                        ; $4fbc: $fd
    di                                            ; $4fbd: $f3
    rlca                                          ; $4fbe: $07
    ld l, c                                       ; $4fbf: $69
    ld c, $a3                                     ; $4fc0: $0e $a3
    ld b, e                                       ; $4fc2: $43
    adc d                                         ; $4fc3: $8a
    rla                                           ; $4fc4: $17
    and l                                         ; $4fc5: $a5
    ldh [$ed], a                                  ; $4fc6: $e0 $ed
    and b                                         ; $4fc8: $a0
    dec b                                         ; $4fc9: $05
    dec d                                         ; $4fca: $15
    ld a, a                                       ; $4fcb: $7f
    sbc $73                                       ; $4fcc: $de $73
    rrca                                          ; $4fce: $0f
    ccf                                           ; $4fcf: $3f
    xor c                                         ; $4fd0: $a9
    cp $42                                        ; $4fd1: $fe $42
    ld h, d                                       ; $4fd3: $62
    dec l                                         ; $4fd4: $2d
    ld a, l                                       ; $4fd5: $7d
    sub [hl]                                      ; $4fd6: $96
    xor a                                         ; $4fd7: $af
    sub b                                         ; $4fd8: $90
    xor h                                         ; $4fd9: $ac
    adc b                                         ; $4fda: $88
    ld e, b                                       ; $4fdb: $58
    db $ed                                        ; $4fdc: $ed
    dec a                                         ; $4fdd: $3d
    rst $30                                       ; $4fde: $f7
    or e                                          ; $4fdf: $b3
    sub [hl]                                      ; $4fe0: $96
    ld e, d                                       ; $4fe1: $5a
    db $10                                        ; $4fe2: $10
    adc $dd                                       ; $4fe3: $ce $dd
    rst $08                                       ; $4fe5: $cf
    sbc a                                         ; $4fe6: $9f
    or $d1                                        ; $4fe7: $f6 $d1
    ld a, e                                       ; $4fe9: $7b
    ld c, b                                       ; $4fea: $48
    push de                                       ; $4feb: $d5
    and d                                         ; $4fec: $a2
    push bc                                       ; $4fed: $c5
    ld h, l                                       ; $4fee: $65
    inc [hl]                                      ; $4fef: $34
    ld a, [c]                                     ; $4ff0: $f2
    rst $20                                       ; $4ff1: $e7
    cp l                                          ; $4ff2: $bd
    cp c                                          ; $4ff3: $b9
    ld e, a                                       ; $4ff4: $5f
    ld de, $8f99                                  ; $4ff5: $11 $99 $8f
    rst $08                                       ; $4ff8: $cf
    rra                                           ; $4ff9: $1f
    db $f4                                        ; $4ffa: $f4
    ld a, l                                       ; $4ffb: $7d
    sub $9b                                       ; $4ffc: $d6 $9b
    and $23                                       ; $4ffe: $e6 $23

jr_036_5000:
    ccf                                           ; $5000: $3f
    ld a, a                                       ; $5001: $7f
    push de                                       ; $5002: $d5
    rra                                           ; $5003: $1f
    ld a, e                                       ; $5004: $7b
    ld a, h                                       ; $5005: $7c
    jp c, $88af                                   ; $5006: $da $af $88

    inc [hl]                                      ; $5009: $34
    rlca                                          ; $500a: $07
    and e                                         ; $500b: $a3
    cp l                                          ; $500c: $bd
    ld e, e                                       ; $500d: $5b
    ld h, e                                       ; $500e: $63
    push af                                       ; $500f: $f5
    rst $00                                       ; $5010: $c7
    ld b, $c2                                     ; $5011: $06 $c2
    cp c                                          ; $5013: $b9
    rst $30                                       ; $5014: $f7
    adc a                                         ; $5015: $8f
    dec c                                         ; $5016: $0d
    cp $9a                                        ; $5017: $fe $9a
    pop de                                        ; $5019: $d1
    xor a                                         ; $501a: $af
    ld e, b                                       ; $501b: $58
    sbc a                                         ; $501c: $9f
    xor e                                         ; $501d: $ab
    rst $38                                       ; $501e: $ff
    ld l, [hl]                                    ; $501f: $6e
    inc bc                                        ; $5020: $03
    and c                                         ; $5021: $a1
    add $a2                                       ; $5022: $c6 $a2
    sbc a                                         ; $5024: $9f
    inc d                                         ; $5025: $14
    ld c, l                                       ; $5026: $4d
    pop bc                                        ; $5027: $c1
    ld e, e                                       ; $5028: $5b
    or l                                          ; $5029: $b5
    cp d                                          ; $502a: $ba
    rst $30                                       ; $502b: $f7
    sub b                                         ; $502c: $90
    dec de                                        ; $502d: $1b
    dec c                                         ; $502e: $0d
    cp $7a                                        ; $502f: $fe $7a
    or a                                          ; $5031: $b7
    ret nz                                        ; $5032: $c0

    ldh [rLYC], a                                 ; $5033: $e0 $45
    ld l, c                                       ; $5035: $69
    sbc d                                         ; $5036: $9a
    inc bc                                        ; $5037: $03
    and e                                         ; $5038: $a3
    ccf                                           ; $5039: $3f
    ld [hl], $10                                  ; $503a: $36 $10
    ld l, d                                       ; $503c: $6a
    xor h                                         ; $503d: $ac
    or $6e                                        ; $503e: $f6 $6e
    or l                                          ; $5040: $b5
    ld h, e                                       ; $5041: $63
    dec l                                         ; $5042: $2d
    dec e                                         ; $5043: $1d
    jp hl                                         ; $5044: $e9


    ld e, b                                       ; $5045: $58
    or l                                          ; $5046: $b5
    ld e, c                                       ; $5047: $59
    rst $30                                       ; $5048: $f7
    di                                            ; $5049: $f3
    scf                                           ; $504a: $37
    ld h, e                                       ; $504b: $63
    ld c, $c3                                     ; $504c: $0e $c3
    ld h, e                                       ; $504e: $63
    dec sp                                        ; $504f: $3b
    rst $30                                       ; $5050: $f7
    sub a                                         ; $5051: $97
    ld d, l                                       ; $5052: $55
    rst $00                                       ; $5053: $c7
    ei                                            ; $5054: $fb
    sbc e                                         ; $5055: $9b
    and l                                         ; $5056: $a5
    ld c, l                                       ; $5057: $4d
    ldh [$af], a                                  ; $5058: $e0 $af
    ld l, h                                       ; $505a: $6c
    ld l, h                                       ; $505b: $6c
    adc a                                         ; $505c: $8f
    sub b                                         ; $505d: $90
    ld [de], a                                    ; $505e: $12

jr_036_505f:
    rra                                           ; $505f: $1f
    and c                                         ; $5060: $a1
    jr jr_036_505f                                ; $5061: $18 $fc

    ld e, c                                       ; $5063: $59
    adc $d5                                       ; $5064: $ce $d5
    rra                                           ; $5066: $1f
    or c                                          ; $5067: $b1
    add $3a                                       ; $5068: $c6 $3a
    sub $d2                                       ; $506a: $d6 $d2
    ld b, b                                       ; $506c: $40
    ld c, b                                       ; $506d: $48
    dec sp                                        ; $506e: $3b
    ld c, d                                       ; $506f: $4a
    ld l, $36                                     ; $5070: $2e $36
    inc l                                         ; $5072: $2c
    adc l                                         ; $5073: $8d
    or a                                          ; $5074: $b7
    db $fd                                        ; $5075: $fd
    sbc e                                         ; $5076: $9b
    and $b3                                       ; $5077: $e6 $b3
    cp $73                                        ; $5079: $fe $73
    adc l                                         ; $507b: $8d
    dec c                                         ; $507c: $0d
    add h                                         ; $507d: $84
    ld a, [hl-]                                   ; $507e: $3a
    sub $32                                       ; $507f: $d6 $32
    and h                                         ; $5081: $a4
    call z, $ebf0                                 ; $5082: $cc $f0 $eb
    ld a, [hl+]                                   ; $5085: $2a
    add hl, de                                    ; $5086: $19
    sub d                                         ; $5087: $92
    inc bc                                        ; $5088: $03
    add hl, bc                                    ; $5089: $09
    db $fc                                        ; $508a: $fc
    sub l                                         ; $508b: $95
    adc l                                         ; $508c: $8d
    xor l                                         ; $508d: $ad
    ld e, d                                       ; $508e: $5a
    inc c                                         ; $508f: $0c
    cp $80                                        ; $5090: $fe $80
    db $fd                                        ; $5092: $fd
    ld [hl-], a                                   ; $5093: $32
    and h                                         ; $5094: $a4
    call z, $ebf0                                 ; $5095: $cc $f0 $eb
    ld a, [hl+]                                   ; $5098: $2a
    add hl, sp                                    ; $5099: $39
    rst $30                                       ; $509a: $f7
    add l                                         ; $509b: $85
    and l                                         ; $509c: $a5
    add c                                         ; $509d: $81
    ld d, b                                       ; $509e: $50
    rst $00                                       ; $509f: $c7
    or $04                                        ; $50a0: $f6 $04
    inc bc                                        ; $50a2: $03
    sbc b                                         ; $50a3: $98
    and [hl]                                      ; $50a4: $a6
    add hl, sp                                    ; $50a5: $39
    ld c, c                                       ; $50a6: $49
    adc [hl]                                      ; $50a7: $8e
    db $ed                                        ; $50a8: $ed
    cp h                                          ; $50a9: $bc
    rra                                           ; $50aa: $1f
    inc l                                         ; $50ab: $2c
    ld a, l                                       ; $50ac: $7d
    rra                                           ; $50ad: $1f
    ld a, d                                       ; $50ae: $7a
    add h                                         ; $50af: $84
    ld d, h                                       ; $50b0: $54
    add a                                         ; $50b1: $87
    or c                                          ; $50b2: $b1
    add e                                         ; $50b3: $83
    sub a                                         ; $50b4: $97
    inc d                                         ; $50b5: $14
    dec e                                         ; $50b6: $1d
    db $eb                                        ; $50b7: $eb
    and e                                         ; $50b8: $a3
    ld [hl], e                                    ; $50b9: $73
    ld e, a                                       ; $50ba: $5f
    cp d                                          ; $50bb: $ba
    ld h, h                                       ; $50bc: $64
    dec h                                         ; $50bd: $25
    dec e                                         ; $50be: $1d
    xor d                                         ; $50bf: $aa
    ld [$f7d6], sp                                ; $50c0: $08 $d6 $f7
    rst $38                                       ; $50c3: $ff
    ld b, h                                       ; $50c4: $44
    ld l, l                                       ; $50c5: $6d
    ld d, [hl]                                    ; $50c6: $56
    ld [de], a                                    ; $50c7: $12
    ld l, e                                       ; $50c8: $6b
    ld de, $7f07                                  ; $50c9: $11 $07 $7f
    sub b                                         ; $50cc: $90
    halt                                          ; $50cd: $76
    halt                                          ; $50ce: $76
    or l                                          ; $50cf: $b5
    dec c                                         ; $50d0: $0d
    add h                                         ; $50d1: $84
    ld [$4f70], a                                 ; $50d2: $ea $70 $4f
    ld [hl], b                                    ; $50d5: $70
    ld b, b                                       ; $50d6: $40
    inc sp                                        ; $50d7: $33
    rst $18                                       ; $50d8: $df
    xor [hl]                                      ; $50d9: $ae
    db $e3                                        ; $50da: $e3
    ldh a, [$9e]                                  ; $50db: $f0 $9e
    dec de                                        ; $50dd: $1b
    ld l, a                                       ; $50de: $6f
    xor e                                         ; $50df: $ab
    ld b, e                                       ; $50e0: $43
    ld c, d                                       ; $50e1: $4a
    ld d, [hl]                                    ; $50e2: $56
    call Call_036_7acc                            ; $50e3: $cd $cc $7a
    db $d3                                        ; $50e6: $d3
    ld [hl-], a                                   ; $50e7: $32
    sbc d                                         ; $50e8: $9a
    sub l                                         ; $50e9: $95
    xor a                                         ; $50ea: $af
    ld hl, sp+$73                                 ; $50eb: $f8 $73
    db $e3                                        ; $50ed: $e3
    ld l, l                                       ; $50ee: $6d
    ld l, a                                       ; $50ef: $6f
    ld d, h                                       ; $50f0: $54
    ld h, l                                       ; $50f1: $65
    ld l, c                                       ; $50f2: $69
    ld h, a                                       ; $50f3: $67
    sub c                                         ; $50f4: $91
    or c                                          ; $50f5: $b1
    rra                                           ; $50f6: $1f
    dec c                                         ; $50f7: $0d
    cp $dc                                        ; $50f8: $fe $dc
    pop de                                        ; $50fa: $d1
    adc [hl]                                      ; $50fb: $8e
    or a                                          ; $50fc: $b7
    sbc a                                         ; $50fd: $9f
    ccf                                           ; $50fe: $3f
    ldh a, [$f6]                                  ; $50ff: $f0 $f6
    ld c, [hl]                                    ; $5101: $4e

jr_036_5102:
    ld e, d                                       ; $5102: $5a
    db $e4                                        ; $5103: $e4
    rst $08                                       ; $5104: $cf
    dec c                                         ; $5105: $0d
    cp $aa                                        ; $5106: $fe $aa
    ld b, e                                       ; $5108: $43
    jp nc, $091c                                  ; $5109: $d2 $1c $09

    db $fc                                        ; $510c: $fc
    push af                                       ; $510d: $f5
    ld c, [hl]                                    ; $510e: $4e
    ld [de], a                                    ; $510f: $12
    db $ed                                        ; $5110: $ed
    ld a, [hl]                                    ; $5111: $7e
    ld c, d                                       ; $5112: $4a
    adc l                                         ; $5113: $8d

jr_036_5114:
    call Call_036_7acc                            ; $5114: $cd $cc $7a
    ld c, e                                       ; $5117: $4b
    sub b                                         ; $5118: $90
    and h                                         ; $5119: $a4
    adc [hl]                                      ; $511a: $8e
    push af                                       ; $511b: $f5
    ld d, [hl]                                    ; $511c: $56
    rst $38                                       ; $511d: $ff
    pop bc                                        ; $511e: $c1
    ld l, e                                       ; $511f: $6b
    add a                                         ; $5120: $87
    db $e4                                        ; $5121: $e4
    and e                                         ; $5122: $a3
    dec l                                         ; $5123: $2d
    ld a, l                                       ; $5124: $7d
    rra                                           ; $5125: $1f
    ld a, d                                       ; $5126: $7a
    add h                                         ; $5127: $84
    sub h                                         ; $5128: $94
    and l                                         ; $5129: $a5
    rst $10                                       ; $512a: $d7
    jr c, jr_036_5102                             ; $512b: $38 $d5

    ld h, c                                       ; $512d: $61
    db $f4                                        ; $512e: $f4
    halt                                          ; $512f: $76
    sbc [hl]                                      ; $5130: $9e
    db $e3                                        ; $5131: $e3
    db $fd                                        ; $5132: $fd
    call Call_000_199a                            ; $5133: $cd $9a $19
    ld sp, hl                                     ; $5136: $f9
    dec bc                                        ; $5137: $0b
    ld a, [hl]                                    ; $5138: $7e
    add e                                         ; $5139: $83
    add hl, de                                    ; $513a: $19
    ld [hl], e                                    ; $513b: $73
    add hl, bc                                    ; $513c: $09
    db $fc                                        ; $513d: $fc
    dec [hl]                                      ; $513e: $35
    and e                                         ; $513f: $a3
    ld e, a                                       ; $5140: $5f
    or c                                          ; $5141: $b1
    ld a, $37                                     ; $5142: $3e $37
    ld hl, sp-$15                                 ; $5144: $f8 $eb
    add b                                         ; $5146: $80
    ld e, h                                       ; $5147: $5c
    ld l, h                                       ; $5148: $6c
    ld e, b                                       ; $5149: $58
    ld e, h                                       ; $514a: $5c
    db $ed                                        ; $514b: $ed
    db $ed                                        ; $514c: $ed
    inc a                                         ; $514d: $3c
    rst $00                                       ; $514e: $c7
    ei                                            ; $514f: $fb
    sbc e                                         ; $5150: $9b
    push de                                       ; $5151: $d5
    or c                                          ; $5152: $b1
    rst $00                                       ; $5153: $c7
    and a                                         ; $5154: $a7
    db $fd                                        ; $5155: $fd
    ld a, [bc]                                    ; $5156: $0a
    add a                                         ; $5157: $87
    db $e4                                        ; $5158: $e4
    add hl, bc                                    ; $5159: $09
    db $fc                                        ; $515a: $fc
    push af                                       ; $515b: $f5
    or $77                                        ; $515c: $f6 $77
    dec de                                        ; $515e: $1b
    ld e, e                                       ; $515f: $5b
    dec e                                         ; $5160: $1d
    xor $a0                                       ; $5161: $ee $a0
    add l                                         ; $5163: $85
    cp l                                          ; $5164: $bd
    ret nz                                        ; $5165: $c0

    db $eb                                        ; $5166: $eb
    ld c, $65                                     ; $5167: $0e $65
    pop bc                                        ; $5169: $c1
    ld b, c                                       ; $516a: $41
    push de                                       ; $516b: $d5
    ld h, [hl]                                    ; $516c: $66
    call $bcfc                                    ; $516d: $cd $fc $bc
    rst $20                                       ; $5170: $e7
    ld e, [hl]                                    ; $5171: $5e
    ld l, a                                       ; $5172: $6f
    ld e, l                                       ; $5173: $5d
    db $fd                                        ; $5174: $fd
    ld de, $047b                                  ; $5175: $11 $7b $04
    ld a, a                                       ; $5178: $7f
    dec a                                         ; $5179: $3d
    push de                                       ; $517a: $d5
    rst $00                                       ; $517b: $c7
    ld e, a                                       ; $517c: $5f
    ld e, l                                       ; $517d: $5d
    inc c                                         ; $517e: $0c
    ccf                                           ; $517f: $3f
    jr jr_036_5114                                ; $5180: $18 $92

    inc bc                                        ; $5182: $03
    ret                                           ; $5183: $c9


    sbc a                                         ; $5184: $9f
    jp nc, $dceb                                  ; $5185: $d2 $eb $dc

    cp e                                          ; $5188: $bb
    and l                                         ; $5189: $a5
    add c                                         ; $518a: $81
    ld d, b                                       ; $518b: $50
    db $fd                                        ; $518c: $fd
    ld h, a                                       ; $518d: $67
    call z, $b301                                 ; $518e: $cc $01 $b3
    ld a, [de]                                    ; $5191: $1a
    ret z                                         ; $5192: $c8

    ret nc                                        ; $5193: $d0

    rst $30                                       ; $5194: $f7
    reti                                          ; $5195: $d9


    ld b, $7f                                     ; $5196: $06 $7f
    push de                                       ; $5198: $d5
    pop bc                                        ; $5199: $c1
    rst $18                                       ; $519a: $df
    sub b                                         ; $519b: $90
    inc e                                         ; $519c: $1c
    ret                                           ; $519d: $c9


    ld e, a                                       ; $519e: $5f
    ld h, h                                       ; $519f: $64
    ld c, h                                       ; $51a0: $4c
    ld b, a                                       ; $51a1: $47
    ld e, l                                       ; $51a2: $5d
    nop                                           ; $51a3: $00
    sub [hl]                                      ; $51a4: $96
    ld hl, $524d                                  ; $51a5: $21 $4d $52
    dec b                                         ; $51a8: $05
    ld [hl], c                                    ; $51a9: $71
    or b                                          ; $51aa: $b0
    ld [$c1d5], sp                                ; $51ab: $08 $d5 $c1
    ld e, a                                       ; $51ae: $5f
    rst $30                                       ; $51af: $f7
    di                                            ; $51b0: $f3
    rlca                                          ; $51b1: $07
    ret c                                         ; $51b2: $d8

    ld h, a                                       ; $51b3: $67
    ld d, c                                       ; $51b4: $51
    ld b, a                                       ; $51b5: $47
    push de                                       ; $51b6: $d5
    ld [$c5ee], a                                 ; $51b7: $ea $ee $c5
    ld e, a                                       ; $51ba: $5f
    push af                                       ; $51bb: $f5
    daa                                           ; $51bc: $27
    xor e                                         ; $51bd: $ab
    add $56                                       ; $51be: $c6 $56
    ld e, e                                       ; $51c0: $5b
    ld a, [hl-]                                   ; $51c1: $3a
    ld l, b                                       ; $51c2: $68
    ld h, c                                       ; $51c3: $61
    cpl                                           ; $51c4: $2f
    ldh a, [$7a]                                  ; $51c5: $f0 $7a
    dec sp                                        ; $51c7: $3b
    sub h                                         ; $51c8: $94
    dec b                                         ; $51c9: $05
    rlca                                          ; $51ca: $07
    ld d, l                                       ; $51cb: $55
    sbc e                                         ; $51cc: $9b
    dec c                                         ; $51cd: $0d
    jp hl                                         ; $51ce: $e9


    add hl, bc                                    ; $51cf: $09
    ld a, [hl]                                    ; $51d0: $7e
    ld e, e                                       ; $51d1: $5b
    ld h, $c8                                     ; $51d2: $26 $c8
    daa                                           ; $51d4: $27
    ld b, $d4                                     ; $51d5: $06 $d4
    sbc $c0                                       ; $51d7: $de $c0
    ld l, c                                       ; $51d9: $69
    ld h, a                                       ; $51da: $67

Jump_036_51db:
    dec [hl]                                      ; $51db: $35
    sub b                                         ; $51dc: $90
    and c                                         ; $51dd: $a1
    rst $00                                       ; $51de: $c7
    rst $20                                       ; $51df: $e7
    xor a                                         ; $51e0: $af
    sbc a                                         ; $51e1: $9f
    or l                                          ; $51e2: $b5
    sbc h                                         ; $51e3: $9c
    xor e                                         ; $51e4: $ab
    ccf                                           ; $51e5: $3f
    ld h, d                                       ; $51e6: $62
    or l                                          ; $51e7: $b5
    ld a, [hl+]                                   ; $51e8: $2a
    ld e, c                                       ; $51e9: $59
    add hl, bc                                    ; $51ea: $09
    adc c                                         ; $51eb: $89
    rst $18                                       ; $51ec: $df
    ld a, [de]                                    ; $51ed: $1a
    adc e                                         ; $51ee: $8b
    dec e                                         ; $51ef: $1d
    ld h, [hl]                                    ; $51f0: $66
    add b                                         ; $51f1: $80
    sbc $ae                                       ; $51f2: $de $ae
    db $e3                                        ; $51f4: $e3
    ld b, b                                       ; $51f5: $40
    ld c, b                                       ; $51f6: $48
    ld [hl], e                                    ; $51f7: $73
    ld c, c                                       ; $51f8: $49
    ld h, c                                       ; $51f9: $61
    inc [hl]                                      ; $51fa: $34
    halt                                          ; $51fb: $76
    db $e4                                        ; $51fc: $e4
    and a                                         ; $51fd: $a7
    cp l                                          ; $51fe: $bd
    ld e, e                                       ; $51ff: $5b
    or h                                          ; $5200: $b4
    dec de                                        ; $5201: $1b
    db $fc                                        ; $5202: $fc
    ld [hl], l                                    ; $5203: $75
    ldh a, [rNR12]                                ; $5204: $f0 $12
    inc c                                         ; $5206: $0c
    cp $20                                        ; $5207: $fe $20
    ld [hl-], a                                   ; $5209: $32
    ld c, e                                       ; $520a: $4b
    pop de                                        ; $520b: $d1
    or c                                          ; $520c: $b1
    ld l, c                                       ; $520d: $69
    ld c, $a3                                     ; $520e: $0e $a3
    ccf                                           ; $5210: $3f
    ld [hl], $10                                  ; $5211: $36 $10
    xor d                                         ; $5213: $aa
    cp l                                          ; $5214: $bd
    db $db                                        ; $5215: $db
    rla                                           ; $5216: $17
    sub [hl]                                      ; $5217: $96
    jp nc, Jump_036_670b                          ; $5218: $d2 $0b $67

    call z, $b301                                 ; $521b: $cc $01 $b3
    ld a, [de]                                    ; $521e: $1a
    ret z                                         ; $521f: $c8

    ret nc                                        ; $5220: $d0

    rst $30                                       ; $5221: $f7
    reti                                          ; $5222: $d9


    ld b, $7f                                     ; $5223: $06 $7f
    push de                                       ; $5225: $d5
    pop bc                                        ; $5226: $c1
    rst $18                                       ; $5227: $df
    sub b                                         ; $5228: $90
    inc e                                         ; $5229: $1c
    ld b, e                                       ; $522a: $43
    rst $18                                       ; $522b: $df
    ccf                                           ; $522c: $3f
    scf                                           ; $522d: $37
    ld sp, hl                                     ; $522e: $f9
    adc e                                         ; $522f: $8b
    adc h                                         ; $5230: $8c
    jp hl                                         ; $5231: $e9


    xor b                                         ; $5232: $a8
    dec bc                                        ; $5233: $0b
    ret nz                                        ; $5234: $c0

    ld [hl-], a                                   ; $5235: $32
    and h                                         ; $5236: $a4
    add hl, bc                                    ; $5237: $09
    db $fc                                        ; $5238: $fc
    push af                                       ; $5239: $f5
    ld a, l                                       ; $523a: $7d
    sub $8d                                       ; $523b: $d6 $8d
    or a                                          ; $523d: $b7
    rst $20                                       ; $523e: $e7
    adc [hl]                                      ; $523f: $8e
    db $fc                                        ; $5240: $fc
    ld a, [$1d1f]                                 ; $5241: $fa $1f $1d
    dec d                                         ; $5244: $15
    res 3, l                                      ; $5245: $cb $9d
    and $49                                       ; $5247: $e6 $49
    xor d                                         ; $5249: $aa
    jr nz, jr_036_525a                            ; $524a: $20 $0e

    ld d, $a1                                     ; $524c: $16 $a1
    ld a, [hl-]                                   ; $524e: $3a
    ld hl, sp-$15                                 ; $524f: $f8 $eb
    ld a, [hl]                                    ; $5251: $7e
    cp $00                                        ; $5252: $fe $00
    ei                                            ; $5254: $fb

Jump_036_5255:
    inc l                                         ; $5255: $2c
    ld [$5aa8], a                                 ; $5256: $ea $a8 $5a
    db $dd                                        ; $5259: $dd

jr_036_525a:
    cp l                                          ; $525a: $bd
    ld hl, sp-$55                                 ; $525b: $f8 $ab
    cp $64                                        ; $525d: $fe $64
    push de                                       ; $525f: $d5
    ret c                                         ; $5260: $d8

    ld l, d                                       ; $5261: $6a
    ld c, e                                       ; $5262: $4b
    rlca                                          ; $5263: $07
    dec l                                         ; $5264: $2d
    db $ec                                        ; $5265: $ec
    dec b                                         ; $5266: $05
    ld e, [hl]                                    ; $5267: $5e
    ld l, a                                       ; $5268: $6f
    add a                                         ; $5269: $87
    or d                                          ; $526a: $b2
    ldh [$a0], a                                  ; $526b: $e0 $a0
    ld l, d                                       ; $526d: $6a
    or e                                          ; $526e: $b3
    ld [hl], e                                    ; $526f: $73
    rst $28                                       ; $5270: $ef
    sbc $6d                                       ; $5271: $de $6d
    ldh a, [$d7]                                  ; $5273: $f0 $d7
    inc hl                                        ; $5275: $23
    ld hl, sp-$15                                 ; $5276: $f8 $eb
    ld b, $7f                                     ; $5278: $06 $7f
    ret nc                                        ; $527a: $d0

    db $10                                        ; $527b: $10
    ld [hl], c                                    ; $527c: $71
    jp c, $fc13                                   ; $527d: $da $13 $fc

    or [hl]                                       ; $5280: $b6
    ld c, h                                       ; $5281: $4c
    sub b                                         ; $5282: $90
    ld c, a                                       ; $5283: $4f
    inc c                                         ; $5284: $0c
    xor b                                         ; $5285: $a8
    cp l                                          ; $5286: $bd
    add c                                         ; $5287: $81
    db $d3                                        ; $5288: $d3
    adc $6a                                       ; $5289: $ce $6a
    jr nz, jr_036_52d0                            ; $528b: $20 $43

    adc a                                         ; $528d: $8f
    rst $08                                       ; $528e: $cf
    ld e, a                                       ; $528f: $5f
    ccf                                           ; $5290: $3f
    ld l, e                                       ; $5291: $6b
    add hl, sp                                    ; $5292: $39
    ld d, a                                       ; $5293: $57
    ld a, a                                       ; $5294: $7f
    call nz, Call_036_556a                        ; $5295: $c4 $6a $55
    or d                                          ; $5298: $b2
    ld [de], a                                    ; $5299: $12
    ld [de], a                                    ; $529a: $12
    cp a                                          ; $529b: $bf
    dec [hl]                                      ; $529c: $35
    ld d, $3b                                     ; $529d: $16 $3b
    call z, $bd00                                 ; $529f: $cc $00 $bd
    ld e, l                                       ; $52a2: $5d
    rst $00                                       ; $52a3: $c7
    add c                                         ; $52a4: $81
    sub b                                         ; $52a5: $90
    and $09                                       ; $52a6: $e6 $09
    db $fc                                        ; $52a8: $fc
    push af                                       ; $52a9: $f5
    xor $18                                       ; $52aa: $ee $18
    rst $20                                       ; $52ac: $e7
    ld e, h                                       ; $52ad: $5c
    db $fd                                        ; $52ae: $fd
    ld de, $c18b                                  ; $52af: $11 $8b $c1
    ld e, a                                       ; $52b2: $5f
    ld e, a                                       ; $52b3: $5f
    ld e, b                                       ; $52b4: $58
    ld a, [de]                                    ; $52b5: $1a
    sub d                                         ; $52b6: $92
    ld a, c                                       ; $52b7: $79
    push af                                       ; $52b8: $f5
    db $fd                                        ; $52b9: $fd
    ld [$3ea9], a                                 ; $52ba: $ea $a9 $3e
    cp $ea                                        ; $52bd: $fe $ea
    ld a, $8b                                     ; $52bf: $3e $8b

Call_036_52c1:
    ld a, [hl-]                                   ; $52c1: $3a
    ld b, b                                       ; $52c2: $40
    inc e                                         ; $52c3: $1c
    inc l                                         ; $52c4: $2c
    and h                                         ; $52c5: $a4
    ld c, l                                       ; $52c6: $4d
    ldh [$af], a                                  ; $52c7: $e0 $af
    rst $28                                       ; $52c9: $ef
    or e                                          ; $52ca: $b3
    xor [hl]                                      ; $52cb: $ae
    pop hl                                        ; $52cc: $e1
    cp $b1                                        ; $52cd: $fe $b1
    sbc c                                         ; $52cf: $99

jr_036_52d0:
    rst $18                                       ; $52d0: $df
    ret c                                         ; $52d1: $d8

    ld [bc], a                                    ; $52d2: $02
    ld l, c                                       ; $52d3: $69
    ld c, $23                                     ; $52d4: $0e $23
    xor [hl]                                      ; $52d6: $ae
    db $e3                                        ; $52d7: $e3
    xor b                                         ; $52d8: $a8
    ld a, h                                       ; $52d9: $7c

Jump_036_52da:
    add l                                         ; $52da: $85
    rst $20                                       ; $52db: $e7
    sbc $ae                                       ; $52dc: $de $ae
    db $e3                                        ; $52de: $e3
    xor b                                         ; $52df: $a8
    ld a, h                                       ; $52e0: $7c
    add l                                         ; $52e1: $85
    rst $20                                       ; $52e2: $e7
    sbc $2d                                       ; $52e3: $de $2d
    adc l                                         ; $52e5: $8d
    db $e3                                        ; $52e6: $e3
    or b                                          ; $52e7: $b0
    ld d, h                                       ; $52e8: $54
    xor e                                         ; $52e9: $ab
    ld a, [hl]                                    ; $52ea: $7e
    push bc                                       ; $52eb: $c5
    ld e, a                                       ; $52ec: $5f
    reti                                          ; $52ed: $d9


    ld b, b                                       ; $52ee: $40
    ld c, b                                       ; $52ef: $48
    ld [hl], e                                    ; $52f0: $73
    ld c, c                                       ; $52f1: $49
    cp a                                          ; $52f2: $bf
    ld l, h                                       ; $52f3: $6c
    jr nz, jr_036_534a                            ; $52f4: $20 $54

    xor e                                         ; $52f6: $ab
    sbc [hl]                                      ; $52f7: $9e
    ld a, [$e487]                                 ; $52f8: $fa $87 $e4
    inc hl                                        ; $52fb: $23
    ccf                                           ; $52fc: $3f
    ld a, a                                       ; $52fd: $7f
    ld [$ac75], sp                                ; $52fe: $08 $75 $ac
    or a                                          ; $5301: $b7
    scf                                           ; $5302: $37
    ld [$6f58], a                                 ; $5303: $ea $58 $6f
    sbc c                                         ; $5306: $99
    inc bc                                        ; $5307: $03
    sbc a                                         ; $5308: $9f
    inc e                                         ; $5309: $1c
    sub [hl]                                      ; $530a: $96
    db $ec                                        ; $530b: $ec
    ld l, a                                       ; $530c: $6f
    halt                                          ; $530d: $76
    xor $06                                       ; $530e: $ee $06
    ld a, a                                       ; $5310: $7f
    ret nc                                        ; $5311: $d0

    ei                                            ; $5312: $fb
    ld a, a                                       ; $5313: $7f
    ld [hl], d                                    ; $5314: $72
    xor $a8                                       ; $5315: $ee $a8
    dec bc                                        ; $5317: $0b
    ret nz                                        ; $5318: $c0

    ld [hl-], a                                   ; $5319: $32
    ld h, e                                       ; $531a: $63
    inc de                                        ; $531b: $13
    ld hl, sp+$6b                                 ; $531c: $f8 $6b
    ld h, [hl]                                    ; $531e: $66
    sub $d5                                       ; $531f: $d6 $d5
    ld hl, $4825                                  ; $5321: $21 $25 $48
    ld c, e                                       ; $5324: $4b
    sub h                                         ; $5325: $94
    add hl, bc                                    ; $5326: $09
    ld a, [c]                                     ; $5327: $f2
    adc c                                         ; $5328: $89
    ld bc, $37b5                                  ; $5329: $01 $b5 $37
    ld [hl], b                                    ; $532c: $70
    jp c, Jump_000_0d59                           ; $532d: $da $59 $0d

    ld h, h                                       ; $5330: $64
    add sp, $67                                   ; $5331: $e8 $67
    dec l                                         ; $5333: $2d
    db $fd                                        ; $5334: $fd
    ld l, h                                       ; $5335: $6c
    ld h, e                                       ; $5336: $63
    or c                                          ; $5337: $b1
    jp $300c                                      ; $5338: $c3 $0c $30


    inc h                                         ; $533b: $24
    rlca                                          ; $533c: $07
    ld [hl], e                                    ; $533d: $73
    or b                                          ; $533e: $b0
    ld a, l                                       ; $533f: $7d
    ld h, c                                       ; $5340: $61
    jp hl                                         ; $5341: $e9


    db $fd                                        ; $5342: $fd
    ld a, d                                       ; $5343: $7a
    or h                                          ; $5344: $b4
    ld [hl], c                                    ; $5345: $71
    inc e                                         ; $5346: $1c
    sub [hl]                                      ; $5347: $96
    xor $c5                                       ; $5348: $ee $c5

jr_036_534a:
    ld e, a                                       ; $534a: $5f
    ld c, a                                       ; $534b: $4f
    push af                                       ; $534c: $f5
    pop af                                        ; $534d: $f1
    ld d, a                                       ; $534e: $57
    rst $30                                       ; $534f: $f7
    dec hl                                        ; $5350: $2b
    and d                                         ; $5351: $a2
    jp c, Jump_036_6747                           ; $5352: $da $47 $67

    and c                                         ; $5355: $a1
    ld c, d                                       ; $5356: $4a
    ld a, [de]                                    ; $5357: $1a
    ld [$3633], sp                                ; $5358: $08 $33 $36
    add c                                         ; $535b: $81
    cp a                                          ; $535c: $bf
    sbc $fe                                       ; $535d: $de $fe
    ld l, [hl]                                    ; $535f: $6e
    scf                                           ; $5360: $37
    ld a, h                                       ; $5361: $7c
    db $fc                                        ; $5362: $fc
    push de                                       ; $5363: $d5
    sbc $a2                                       ; $5364: $de $a2
    sbc a                                         ; $5366: $9f
    scf                                           ; $5367: $37
    call Call_000_0901                            ; $5368: $cd $01 $09
    db $fc                                        ; $536b: $fc
    push af                                       ; $536c: $f5
    ld l, [hl]                                    ; $536d: $6e
    pop de                                        ; $536e: $d1
    ld l, [hl]                                    ; $536f: $6e
    cp h                                          ; $5370: $bc
    dec l                                         ; $5371: $2d
    ld a, [c]                                     ; $5372: $f2
    ld [hl], a                                    ; $5373: $77
    ld l, l                                       ; $5374: $6d
    adc c                                         ; $5375: $89
    ld e, b                                       ; $5376: $58
    db $ed                                        ; $5377: $ed
    ld c, l                                       ; $5378: $4d
    ld [hl], e                                    ; $5379: $73
    add hl, bc                                    ; $537a: $09
    db $fc                                        ; $537b: $fc
    push af                                       ; $537c: $f5
    ld h, $e1                                     ; $537d: $26 $e1
    xor h                                         ; $537f: $ac
    ld a, [hl-]                                   ; $5380: $3a
    ld hl, sp+$2b                                 ; $5381: $f8 $2b
    ld a, [c]                                     ; $5383: $f2
    ld [hl], a                                    ; $5384: $77
    db $ed                                        ; $5385: $ed
    sub b                                         ; $5386: $90
    inc e                                         ; $5387: $1c
    adc h                                         ; $5388: $8c
    pop bc                                        ; $5389: $c1
    or $2b                                        ; $538a: $f6 $2b
    ld [c], a                                     ; $538c: $e2
    call c, $a5bb                                 ; $538d: $dc $bb $a5

jr_036_5390:
    ld [hl], c                                    ; $5390: $71
    inc e                                         ; $5391: $1c
    sub [hl]                                      ; $5392: $96
    ld l, d                                       ; $5393: $6a
    ld d, l                                       ; $5394: $55
    ld [hl], $10                                  ; $5395: $36 $10
    jp nc, $091c                                  ; $5397: $d2 $1c $09

    db $fc                                        ; $539a: $fc
    push af                                       ; $539b: $f5
    ld a, l                                       ; $539c: $7d
    sub $dd                                       ; $539d: $d6 $dd
    ldh a, [$f1]                                  ; $539f: $f0 $f1
    ld d, a                                       ; $53a1: $57
    ld a, e                                       ; $53a2: $7b
    sbc e                                         ; $53a3: $9b
    sbc c                                         ; $53a4: $99
    ld d, b                                       ; $53a5: $50
    xor e                                         ; $53a6: $ab
    cp l                                          ; $53a7: $bd
    rst $20                                       ; $53a8: $e7
    adc [hl]                                      ; $53a9: $8e
    sub d                                         ; $53aa: $92
    adc e                                         ; $53ab: $8b
    jr nc, jr_036_5390                            ; $53ac: $30 $e2

    dec h                                         ; $53ae: $25
    ld l, c                                       ; $53af: $69
    ld c, $09                                     ; $53b0: $0e $09
    db $fc                                        ; $53b2: $fc
    push af                                       ; $53b3: $f5
    dec hl                                        ; $53b4: $2b
    cp $ba                                        ; $53b5: $fe $ba
    pop bc                                        ; $53b7: $c1
    rra                                           ; $53b8: $1f
    and h                                         ; $53b9: $a4
    dec e                                         ; $53ba: $1d
    jp z, $1a5a                                   ; $53bb: $ca $5a $1a

    db $fc                                        ; $53be: $fc
    sub l                                         ; $53bf: $95
    adc l                                         ; $53c0: $8d
    db $ed                                        ; $53c1: $ed
    ld de, $0c52                                  ; $53c2: $11 $52 $0c
    cp $2c                                        ; $53c5: $fe $2c
    rst $20                                       ; $53c7: $e7
    ld [$588f], a                                 ; $53c8: $ea $8f $58
    inc c                                         ; $53cb: $0c
    cp $fa                                        ; $53cc: $fe $fa
    jp nz, Jump_036_53d2                          ; $53ce: $c2 $d2 $53

    ld a, l                                       ; $53d1: $7d

Jump_036_53d2:
    db $fc                                        ; $53d2: $fc
    push de                                       ; $53d3: $d5
    ld a, l                                       ; $53d4: $7d
    ld d, $75                                     ; $53d5: $16 $75
    add b                                         ; $53d7: $80
    jr c, jr_036_5432                             ; $53d8: $38 $58

    xor b                                         ; $53da: $a8
    ld e, d                                       ; $53db: $5a
    db $dd                                        ; $53dc: $dd
    ldh [$af], a                                  ; $53dd: $e0 $af
    rst $30                                       ; $53df: $f7
    and b                                         ; $53e0: $a0
    or h                                          ; $53e1: $b4
    rst $30                                       ; $53e2: $f7
    ld b, b                                       ; $53e3: $40
    db $f4                                        ; $53e4: $f4
    sbc [hl]                                      ; $53e5: $9e
    ld a, e                                       ; $53e6: $7b
    or a                                          ; $53e7: $b7
    call nc, Call_036_40d8                        ; $53e8: $d4 $d8 $40
    ld c, b                                       ; $53eb: $48
    ld [hl], e                                    ; $53ec: $73
    call z, $df70                                 ; $53ed: $cc $70 $df
    ld h, a                                       ; $53f0: $67
    cp l                                          ; $53f1: $bd
    push de                                       ; $53f2: $d5
    ld h, c                                       ; $53f3: $61
    db $f4                                        ; $53f4: $f4
    halt                                          ; $53f5: $76
    db $c4, $25, $12                              ; $53f6: $c4 $25 $12
    ld a, [$0e92]                                 ; $53f9: $fa $92 $0e
    ld e, d                                       ; $53fc: $5a
    ld [hl], b                                    ; $53fd: $70
    ret nz                                        ; $53fe: $c0

    ld [hl+], a                                   ; $53ff: $22
    sub b                                         ; $5400: $90
    ld [hl], $81                                  ; $5401: $36 $81
    cp a                                          ; $5403: $bf
    ld h, [hl]                                    ; $5404: $66
    db $f4                                        ; $5405: $f4
    dec hl                                        ; $5406: $2b
    sub $e7                                       ; $5407: $d6 $e7
    ld b, $7f                                     ; $5409: $06 $7f
    cp l                                          ; $540b: $bd
    ld e, l                                       ; $540c: $5d
    rst $00                                       ; $540d: $c7
    pop hl                                        ; $540e: $e1
    ld l, [hl]                                    ; $540f: $6e
    ldh a, [rTAC]                                 ; $5410: $f0 $07
    dec a                                         ; $5412: $3d
    db $fc                                        ; $5413: $fc
    and h                                         ; $5414: $a4
    ld a, a                                       ; $5415: $7f
    dec de                                        ; $5416: $1b
    ld l, a                                       ; $5417: $6f
    cp l                                          ; $5418: $bd
    dec e                                         ; $5419: $1d
    cp h                                          ; $541a: $bc
    add h                                         ; $541b: $84
    ld [hl], l                                    ; $541c: $75
    and h                                         ; $541d: $a4
    add hl, sp                                    ; $541e: $39
    ret                                           ; $541f: $c9


    adc c                                         ; $5420: $89
    inc sp                                        ; $5421: $33
    sub [hl]                                      ; $5422: $96
    pop de                                        ; $5423: $d1
    ld a, [c]                                     ; $5424: $f2
    or l                                          ; $5425: $b5
    dec de                                        ; $5426: $1b
    ld [$dc35], sp                                ; $5427: $08 $35 $dc
    ccf                                           ; $542a: $3f
    ld [hl], $73                                  ; $542b: $36 $73
    and $ed                                       ; $542d: $e6 $ed
    ld de, $35fc                                  ; $542f: $11 $fc $35

jr_036_5432:
    inc sp                                        ; $5432: $33
    db $fd                                        ; $5433: $fd
    adc d                                         ; $5434: $8a
    ldh a, [$a6]                                  ; $5435: $f0 $a6
    add hl, sp                                    ; $5437: $39
    call z, Call_036_78ab                         ; $5438: $cc $ab $78
    sbc l                                         ; $543b: $9d
    sbc e                                         ; $543c: $9b
    db $fc                                        ; $543d: $fc
    ld b, l                                       ; $543e: $45
    add $74                                       ; $543f: $c6 $74
    call nc, Call_036_6005                        ; $5441: $d4 $05 $60
    ld c, c                                       ; $5444: $49
    sbc e                                         ; $5445: $9b
    and h                                         ; $5446: $a4
    ld a, [$423e]                                 ; $5447: $fa $3e $42
    ccf                                           ; $544a: $3f
    push bc                                       ; $544b: $c5
    xor e                                         ; $544c: $ab
    jp c, $79db                                   ; $544d: $da $db $79

    adc [hl]                                      ; $5450: $8e
    rst $30                                       ; $5451: $f7
    scf                                           ; $5452: $37
    xor e                                         ; $5453: $ab
    halt                                          ; $5454: $76
    xor h                                         ; $5455: $ac
    or c                                          ; $5456: $b1
    di                                            ; $5457: $f3
    ld a, [hl]                                    ; $5458: $7e
    or b                                          ; $5459: $b0
    ld d, h                                       ; $545a: $54
    xor l                                         ; $545b: $ad
    ld l, $eb                                     ; $545c: $2e $eb
    ld d, l                                       ; $545e: $55
    ld b, b                                       ; $545f: $40
    add [hl]                                      ; $5460: $86
    add $db                                       ; $5461: $c6 $db
    ld h, [hl]                                    ; $5463: $66
    sbc $af                                       ; $5464: $de $af
    ldh a, [$ea]                                  ; $5466: $f0 $ea
    dec a                                         ; $5468: $3d
    ld e, h                                       ; $5469: $5c
    ld c, e                                       ; $546a: $4b
    jp c, Jump_036_4859                           ; $546b: $da $59 $48

    ld c, e                                       ; $546e: $4b
    sub h                                         ; $546f: $94
    add hl, bc                                    ; $5470: $09
    ld a, [c]                                     ; $5471: $f2
    adc c                                         ; $5472: $89
    ld bc, $37b5                                  ; $5473: $01 $b5 $37
    ldh a, [$b9]                                  ; $5476: $f0 $b9
    ld [hl], a                                    ; $5478: $77
    rlca                                          ; $5479: $07
    xor l                                         ; $547a: $ad
    ld d, [hl]                                    ; $547b: $56
    push de                                       ; $547c: $d5
    pop bc                                        ; $547d: $c1
    ld e, a                                       ; $547e: $5f
    rst $30                                       ; $547f: $f7
    di                                            ; $5480: $f3
    rlca                                          ; $5481: $07
    ret c                                         ; $5482: $d8

    ld h, a                                       ; $5483: $67
    ld d, c                                       ; $5484: $51
    rlca                                          ; $5485: $07
    adc b                                         ; $5486: $88
    add e                                         ; $5487: $83
    ld b, l                                       ; $5488: $45
    ld c, b                                       ; $5489: $48
    ld [hl], e                                    ; $548a: $73
    jp $fb63                                      ; $548b: $c3 $63 $fb


    add hl, hl                                    ; $548e: $29
    ld e, b                                       ; $548f: $58
    jp z, Jump_000_081c                           ; $5490: $ca $1c $08

    ld h, a                                       ; $5493: $67
    and [hl]                                      ; $5494: $a6
    ld l, c                                       ; $5495: $69
    ld b, a                                       ; $5496: $47
    ld a, a                                       ; $5497: $7f
    ld d, c                                       ; $5498: $51
    ld b, a                                       ; $5499: $47
    ld de, $a0fc                                  ; $549a: $11 $fc $a0
    sub [hl]                                      ; $549d: $96
    cp [hl]                                       ; $549e: $be
    or b                                          ; $549f: $b0
    inc [hl]                                      ; $54a0: $34
    or [hl]                                       ; $54a1: $b6
    ld a, [hl-]                                   ; $54a2: $3a
    adc h                                         ; $54a3: $8c
    ld a, $4a                                     ; $54a4: $3e $4a
    ld l, l                                       ; $54a6: $6d
    pop af                                        ; $54a7: $f1
    halt                                          ; $54a8: $76
    inc b                                         ; $54a9: $04
    db $fd                                        ; $54aa: $fd
    adc b                                         ; $54ab: $88
    ld e, [hl]                                    ; $54ac: $5e
    ld [hl], d                                    ; $54ad: $72
    inc e                                         ; $54ae: $1c
    add a                                         ; $54af: $87
    ld h, l                                       ; $54b0: $65
    add $1c                                       ; $54b1: $c6 $1c
    add hl, bc                                    ; $54b3: $09
    ld c, a                                       ; $54b4: $4f
    call c, Call_000_2aa1                         ; $54b5: $dc $a1 $2a
    di                                            ; $54b8: $f3
    ld d, $63                                     ; $54b9: $16 $63
    ld [hl], l                                    ; $54bb: $75
    inc sp                                        ; $54bc: $33
    rst $28                                       ; $54bd: $ef
    ld d, a                                       ; $54be: $57
    cp l                                          ; $54bf: $bd
    add a                                         ; $54c0: $87
    xor e                                         ; $54c1: $ab
    jp Jump_000_1c3d                              ; $54c2: $c3 $3d $1c


    db $eb                                        ; $54c5: $eb
    ld l, l                                       ; $54c6: $6d
    sbc d                                         ; $54c7: $9a
    and [hl]                                      ; $54c8: $a6
    ld d, l                                       ; $54c9: $55
    xor e                                         ; $54ca: $ab
    ld l, e                                       ; $54cb: $6b
    jp hl                                         ; $54cc: $e9


    ei                                            ; $54cd: $fb
    ld d, b                                       ; $54ce: $50
    db $fd                                        ; $54cf: $fd
    or c                                          ; $54d0: $b1
    add hl, de                                    ; $54d1: $19
    ld [hl], l                                    ; $54d2: $75
    ldh a, [$e7]                                  ; $54d3: $f0 $e7
    ld h, $ff                                     ; $54d5: $26 $ff
    cpl                                           ; $54d7: $2f
    cp l                                          ; $54d8: $bd
    add a                                         ; $54d9: $87
    dec de                                        ; $54da: $1b
    db $fc                                        ; $54db: $fc
    and l                                         ; $54dc: $a5
    dec e                                         ; $54dd: $1d
    ld sp, hl                                     ; $54de: $f9
    adc a                                         ; $54df: $8f
    ccf                                           ; $54e0: $3f
    ld h, e                                       ; $54e1: $63
    ld b, a                                       ; $54e2: $47
    db $fd                                        ; $54e3: $fd
    add c                                         ; $54e4: $81
    ccf                                           ; $54e5: $3f
    ld h, e                                       ; $54e6: $63
    ld c, $49                                     ; $54e7: $0e $49
    xor d                                         ; $54e9: $aa
    rst $28                                       ; $54ea: $ef
    inc hl                                        ; $54eb: $23
    db $f4                                        ; $54ec: $f4
    ld d, e                                       ; $54ed: $53
    cp h                                          ; $54ee: $bc
    xor d                                         ; $54ef: $aa
    jp Jump_000_211d                              ; $54f0: $c3 $1d $21


    adc c                                         ; $54f3: $89
    inc b                                         ; $54f4: $04
    cp b                                          ; $54f5: $b8
    jp c, $e658                                   ; $54f6: $da $58 $e6

    ld b, b                                       ; $54f9: $40
    jr c, @+$35                                   ; $54fa: $38 $33

    push bc                                       ; $54fc: $c5
    adc $6e                                       ; $54fd: $ce $6e
    ld a, c                                       ; $54ff: $79
    adc $cc                                       ; $5500: $ce $cc
    sub $0b                                       ; $5502: $d6 $0b
    jp c, $06fc                                   ; $5504: $da $fc $06

    ld l, c                                       ; $5507: $69
    ld c, $a3                                     ; $5508: $0e $a3
    db $e4                                        ; $550a: $e4
    ld [hl+], a                                   ; $550b: $22
    adc h                                         ; $550c: $8c
    ld a, b                                       ; $550d: $78
    ld c, c                                       ; $550e: $49
    sub e                                         ; $550f: $93
    call nc, Call_036_52c1                        ; $5510: $d4 $c1 $52
    db $eb                                        ; $5513: $eb
    ld c, e                                       ; $5514: $4b
    inc a                                         ; $5515: $3c
    and h                                         ; $5516: $a4
    and e                                         ; $5517: $a3
    jp $5dbd                                      ; $5518: $c3 $bd $5d


    rst $00                                       ; $551b: $c7
    pop hl                                        ; $551c: $e1
    dec l                                         ; $551d: $2d
    inc sp                                        ; $551e: $33
    ld e, h                                       ; $551f: $5c
    db $ed                                        ; $5520: $ed
    db $dd                                        ; $5521: $dd
    cp [hl]                                       ; $5522: $be
    or b                                          ; $5523: $b0
    db $f4                                        ; $5524: $f4
    push bc                                       ; $5525: $c5
    adc $98                                       ; $5526: $ce $98
    inc bc                                        ; $5528: $03
    add hl, bc                                    ; $5529: $09
    db $fc                                        ; $552a: $fc
    sub l                                         ; $552b: $95
    sub l                                         ; $552c: $95
    xor a                                         ; $552d: $af
    ld hl, sp+$73                                 ; $552e: $f8 $73
    ld l, a                                       ; $5530: $6f
    adc [hl]                                      ; $5531: $8e
    push af                                       ; $5532: $f5
    halt                                          ; $5533: $76
    sbc [hl]                                      ; $5534: $9e
    db $e3                                        ; $5535: $e3
    db $fd                                        ; $5536: $fd
    call Call_036_55ce                            ; $5537: $cd $ce $55
    ld b, a                                       ; $553a: $47
    push de                                       ; $553b: $d5
    ld h, d                                       ; $553c: $62
    ldh a, [rTAC]                                 ; $553d: $f0 $07
    db $ec                                        ; $553f: $ec
    sub a                                         ; $5540: $97
    sub d                                         ; $5541: $92
    ld d, l                                       ; $5542: $55
    pop de                                        ; $5543: $d1
    or c                                          ; $5544: $b1
    ld l, c                                       ; $5545: $69
    ld h, a                                       ; $5546: $67
    ld d, a                                       ; $5547: $57
    ld a, e                                       ; $5548: $7b
    xor $ed                                       ; $5549: $ee $ed
    rst $28                                       ; $554b: $ef
    ld [hl+], a                                   ; $554c: $22
    ld d, h                                       ; $554d: $54
    xor e                                         ; $554e: $ab
    ld [$6a90], a                                 ; $554f: $ea $90 $6a
    rst $28                                       ; $5552: $ef
    call $ee7b                                    ; $5553: $cd $7b $ee
    db $fd                                        ; $5556: $fd
    ld h, e                                       ; $5557: $63
    or l                                          ; $5558: $b5
    and l                                         ; $5559: $a5
    call z, Call_036_7081                         ; $555a: $cc $81 $70
    ld h, [hl]                                    ; $555d: $66
    jp c, $2dd9                                   ; $555e: $da $d9 $2d

    rst $08                                       ; $5561: $cf
    sbc c                                         ; $5562: $99
    reti                                          ; $5563: $d9


    xor d                                         ; $5564: $aa
    push bc                                       ; $5565: $c5
    ld a, [hl]                                    ; $5566: $7e
    ld c, d                                       ; $5567: $4a
    cp l                                          ; $5568: $bd
    dec h                                         ; $5569: $25

Call_036_556a:
    dec sp                                        ; $556a: $3b
    ld [hl-], a                                   ; $556b: $32
    sbc b                                         ; $556c: $98
    ld sp, $2307                                  ; $556d: $31 $07 $23
    dec e                                         ; $5570: $1d
    db $eb                                        ; $5571: $eb
    ld c, $a7                                     ; $5572: $0e $a7
    ld h, b                                       ; $5574: $60
    reti                                          ; $5575: $d9


    add hl, de                                    ; $5576: $19
    ld [hl], e                                    ; $5577: $73
    jp Jump_036_64a5                              ; $5578: $c3 $a5 $64


    ld b, a                                       ; $557b: $47
    ld b, $55                                     ; $557c: $06 $55
    adc e                                         ; $557e: $8b
    ld d, l                                       ; $557f: $55
    adc e                                         ; $5580: $8b
    ld d, $6f                                     ; $5581: $16 $6f
    inc sp                                        ; $5583: $33
    add hl, de                                    ; $5584: $19
    ld a, e                                       ; $5585: $7b
    inc e                                         ; $5586: $1c
    ldh a, [$36]                                  ; $5587: $f0 $36
    reti                                          ; $5589: $d9


    ld b, d                                       ; $558a: $42
    or $e2                                        ; $558b: $f6 $e2
    ld e, l                                       ; $558d: $5d
    dec l                                         ; $558e: $2d
    ld a, [c]                                     ; $558f: $f2
    ld [hl], a                                    ; $5590: $77
    xor $67                                       ; $5591: $ee $67
    dec l                                         ; $5593: $2d
    db $dd                                        ; $5594: $dd
    ldh [rIF], a                                  ; $5595: $e0 $0f
    xor d                                         ; $5597: $aa
    jp $fd1d                                      ; $5598: $c3 $1d $fd


    sbc a                                         ; $559b: $9f
    inc a                                         ; $559c: $3c
    rlca                                          ; $559d: $07
    and h                                         ; $559e: $a4
    ld c, l                                       ; $559f: $4d
    or d                                          ; $55a0: $b2
    sub h                                         ; $55a1: $94
    add hl, sp                                    ; $55a2: $39
    db $10                                        ; $55a3: $10
    adc $4c                                       ; $55a4: $ce $4c
    ld a, e                                       ; $55a6: $7b
    cp e                                          ; $55a7: $bb
    adc [hl]                                      ; $55a8: $8e
    inc bc                                        ; $55a9: $03
    ld a, d                                       ; $55aa: $7a
    ld e, h                                       ; $55ab: $5c
    sub d                                         ; $55ac: $92
    ld a, c                                       ; $55ad: $79
    ei                                            ; $55ae: $fb
    or a                                          ; $55af: $b7
    adc [hl]                                      ; $55b0: $8e
    push af                                       ; $55b1: $f5
    halt                                          ; $55b2: $76
    xor l                                         ; $55b3: $ad
    cp h                                          ; $55b4: $bc
    dec e                                         ; $55b5: $1d
    ld b, l                                       ; $55b6: $45
    ccf                                           ; $55b7: $3f
    sub b                                         ; $55b8: $90
    rst $08                                       ; $55b9: $cf
    db $fd                                        ; $55ba: $fd
    xor h                                         ; $55bb: $ac
    and l                                         ; $55bc: $a5
    pop bc                                        ; $55bd: $c1
    ld e, a                                       ; $55be: $5f
    ld l, a                                       ; $55bf: $6f
    ld a, a                                       ; $55c0: $7f
    or a                                          ; $55c1: $b7
    ld a, [hl-]                                   ; $55c2: $3a
    and h                                         ; $55c3: $a4
    dec de                                        ; $55c4: $1b
    db $fc                                        ; $55c5: $fc
    ld b, c                                       ; $55c6: $41
    pop af                                        ; $55c7: $f1
    ld h, a                                       ; $55c8: $67
    sbc $de                                       ; $55c9: $de $de
    cp a                                          ; $55cb: $bf
    xor b                                         ; $55cc: $a8
    inc hl                                        ; $55cd: $23

Call_036_55ce:
    ld l, l                                       ; $55ce: $6d
    sub d                                         ; $55cf: $92
    ld a, [hl+]                                   ; $55d0: $2a
    ld e, [hl]                                    ; $55d1: $5e
    sub h                                         ; $55d2: $94
    add d                                         ; $55d3: $82
    ld de, $aa7a                                  ; $55d4: $11 $7a $aa
    add c                                         ; $55d7: $81
    inc c                                         ; $55d8: $0c
    dec h                                         ; $55d9: $25
    dec hl                                        ; $55da: $2b
    ld hl, $5bf1                                  ; $55db: $21 $f1 $5b
    ld h, e                                       ; $55de: $63
    xor e                                         ; $55df: $ab
    dec e                                         ; $55e0: $1d
    db $db                                        ; $55e1: $db
    ld h, c                                       ; $55e2: $61
    ld b, $68                                     ; $55e3: $06 $68
    and $e7                                       ; $55e5: $e6 $e7
    ld c, l                                       ; $55e7: $4d
    dec sp                                        ; $55e8: $3b
    xor a                                         ; $55e9: $af
    push hl                                       ; $55ea: $e5
    xor $d5                                       ; $55eb: $ee $d5
    xor [hl]                                      ; $55ed: $ae
    or $76                                        ; $55ee: $f6 $76
    sbc [hl]                                      ; $55f0: $9e
    db $e3                                        ; $55f1: $e3
    db $fd                                        ; $55f2: $fd
    call $c5ce                                    ; $55f3: $cd $ce $c5
    ld l, e                                       ; $55f6: $6b
    ld de, $937a                                  ; $55f7: $11 $7a $93
    ld [hl], b                                    ; $55fa: $70
    add [hl]                                      ; $55fb: $86
    ld d, b                                       ; $55fc: $50
    xor l                                         ; $55fd: $ad
    cp d                                          ; $55fe: $ba
    rla                                           ; $55ff: $17
    ld a, a                                       ; $5600: $7f
    dec e                                         ; $5601: $1d
    ld d, a                                       ; $5602: $57
    ld [hl-], a                                   ; $5603: $32
    res 7, c                                      ; $5604: $cb $b9
    ld [hl], a                                    ; $5606: $77
    rlca                                          ; $5607: $07
    xor l                                         ; $5608: $ad
    ld d, [hl]                                    ; $5609: $56
    push de                                       ; $560a: $d5
    pop bc                                        ; $560b: $c1
    ld e, a                                       ; $560c: $5f
    rst $30                                       ; $560d: $f7
    di                                            ; $560e: $f3
    rlca                                          ; $560f: $07
    ret c                                         ; $5610: $d8

    rla                                           ; $5611: $17
    sub [hl]                                      ; $5612: $96
    adc d                                         ; $5613: $8a
    ld a, [hl-]                                   ; $5614: $3a
    ld b, b                                       ; $5615: $40
    inc e                                         ; $5616: $1c
    inc l                                         ; $5617: $2c
    ld b, d                                       ; $5618: $42
    sbc d                                         ; $5619: $9a
    inc bc                                        ; $561a: $03
    ld b, e                                       ; $561b: $43
    ld e, c                                       ; $561c: $59
    ld c, e                                       ; $561d: $4b
    sbc c                                         ; $561e: $99
    ei                                            ; $561f: $fb
    rlca                                          ; $5620: $07
    call c, Call_036_4d34                         ; $5621: $dc $34 $4d
    ld [hl], e                                    ; $5624: $73
    add hl, bc                                    ; $5625: $09
    db $fc                                        ; $5626: $fc
    dec d                                         ; $5627: $15
    ld sp, hl                                     ; $5628: $f9
    dec bc                                        ; $5629: $0b
    ld a, [hl]                                    ; $562a: $7e
    ld [hl], e                                    ; $562b: $73
    db $e3                                        ; $562c: $e3
    ld l, l                                       ; $562d: $6d
    call $897a                                    ; $562e: $cd $7a $89
    ld c, a                                       ; $5631: $4f
    add hl, hl                                    ; $5632: $29
    ld [hl], $16                                  ; $5633: $36 $16
    dec sp                                        ; $5635: $3b
    call z, Call_036_6900                         ; $5636: $cc $00 $69
    ld c, $09                                     ; $5639: $0e $09
    db $fc                                        ; $563b: $fc
    sub l                                         ; $563c: $95
    sub b                                         ; $563d: $90
    sbc a                                         ; $563e: $9f
    cp c                                          ; $563f: $b9
    ld b, a                                       ; $5640: $47

jr_036_5641:
    ldh a, [rPCM34]                               ; $5641: $f0 $77
    xor $fd                                       ; $5643: $ee $fd
    ld a, [de]                                    ; $5645: $1a
    cp h                                          ; $5646: $bc
    or [hl]                                       ; $5647: $b6
    ld a, [hl-]                                   ; $5648: $3a
    adc h                                         ; $5649: $8c
    add $0e                                       ; $564a: $c6 $0e
    ld d, e                                       ; $564c: $53
    db $fc                                        ; $564d: $fc
    push af                                       ; $564e: $f5
    db $fd                                        ; $564f: $fd
    push de                                       ; $5650: $d5
    and [hl]                                      ; $5651: $a6
    sub b                                         ; $5652: $90
    and $8c                                       ; $5653: $e6 $8c
    ld a, [bc]                                    ; $5655: $0a
    sbc d                                         ; $5656: $9a
    ld sp, hl                                     ; $5657: $f9
    ld hl, sp-$04                                 ; $5658: $f8 $fc
    pop bc                                        ; $565a: $c1
    cp c                                          ; $565b: $b9
    inc hl                                        ; $565c: $23
    dec b                                         ; $565d: $05
    db $d3                                        ; $565e: $d3

Call_036_565f:
    adc $7e                                       ; $565f: $ce $7e
    adc c                                         ; $5661: $89
    inc b                                         ; $5662: $04
    and [hl]                                      ; $5663: $a6
    add hl, sp                                    ; $5664: $39
    ld c, c                                       ; $5665: $49
    pop hl                                        ; $5666: $e1
    adc $81                                       ; $5667: $ce $81
    ld h, b                                       ; $5669: $60
    ld hl, $e12c                                  ; $566a: $21 $2c $e1
    dec l                                         ; $566d: $2d
    add $ea                                       ; $566e: $c6 $ea
    or d                                          ; $5670: $b2
    adc [hl]                                      ; $5671: $8e
    sbc $1d                                       ; $5672: $de $1d
    ldh [$a3], a                                  ; $5674: $e0 $a3
    dec de                                        ; $5676: $1b
    db $fc                                        ; $5677: $fc
    ld b, c                                       ; $5678: $41
    pop af                                        ; $5679: $f1
    ld a, [hl+]                                   ; $567a: $2a
    ld a, [c]                                     ; $567b: $f2
    scf                                           ; $567c: $37
    or $f6                                        ; $567d: $f6 $f6
    ld e, $ae                                     ; $567f: $1e $ae
    ld c, $77                                     ; $5681: $0e $77
    or h                                          ; $5683: $b4
    db $e3                                        ; $5684: $e3
    db $ed                                        ; $5685: $ed
    rst $20                                       ; $5686: $e7
    rrca                                          ; $5687: $0f
    sub b                                         ; $5688: $90
    or b                                          ; $5689: $b0
    add h                                         ; $568a: $84
    or a                                          ; $568b: $b7
    inc de                                        ; $568c: $13
    rst $30                                       ; $568d: $f7
    ld e, $d2                                     ; $568e: $1e $d2
    add e                                         ; $5690: $83
    add h                                         ; $5691: $84
    add sp, -$13                                  ; $5692: $e8 $ed

Call_036_5694:
    ld h, b                                       ; $5694: $60
    sbc b                                         ; $5695: $98
    sub [hl]                                      ; $5696: $96
    xor h                                         ; $5697: $ac
    ld a, [hl-]                                   ; $5698: $3a
    jr jr_036_5641                                ; $5699: $18 $a6

    and l                                         ; $569b: $a5
    sub [hl]                                      ; $569c: $96
    push af                                       ; $569d: $f5
    ld c, $c9                                     ; $569e: $0e $c9
    ld bc, $e149                                  ; $56a0: $01 $49 $e1
    adc [hl]                                      ; $56a3: $8e
    ld [de], a                                    ; $56a4: $12
    ld [de], a                                    ; $56a5: $12
    and c                                         ; $56a6: $a1
    ld [hl], $f3                                  ; $56a7: $36 $f3
    ld d, $c1                                     ; $56a9: $16 $c1
    rst $08                                       ; $56ab: $cf
    ld e, e                                       ; $56ac: $5b
    sub $83                                       ; $56ad: $d6 $83
    sub a                                         ; $56af: $97
    sbc h                                         ; $56b0: $9c
    xor e                                         ; $56b1: $ab
    adc l                                         ; $56b2: $8d
    rst $28                                       ; $56b3: $ef
    ld d, e                                       ; $56b4: $53
    or [hl]                                       ; $56b5: $b6
    rlca                                          ; $56b6: $07
    add hl, bc                                    ; $56b7: $09
    pop de                                        ; $56b8: $d1
    db $db                                        ; $56b9: $db
    ld a, e                                       ; $56ba: $7b
    ld c, b                                       ; $56bb: $48
    xor c                                         ; $56bc: $a9
    ld h, l                                       ; $56bd: $65
    cp l                                          ; $56be: $bd
    ld b, e                                       ; $56bf: $43
    ld a, [hl-]                                   ; $56c0: $3a
    ld a, [hl-]                                   ; $56c1: $3a
    and h                                         ; $56c2: $a4
    rlca                                          ; $56c3: $07
    add hl, bc                                    ; $56c4: $09
    pop de                                        ; $56c5: $d1
    ld e, e                                       ; $56c6: $5b
    inc c                                         ; $56c7: $0c
    sub a                                         ; $56c8: $97
    dec [hl]                                      ; $56c9: $35
    add d                                         ; $56ca: $82
    sbc a                                         ; $56cb: $9f
    rst $30                                       ; $56cc: $f7
    ld e, h                                       ; $56cd: $5c
    db $fd                                        ; $56ce: $fd
    adc a                                         ; $56cf: $8f
    add b                                         ; $56d0: $80
    sbc $43                                       ; $56d1: $de $43
    ld a, [de]                                    ; $56d3: $1a
    adc e                                         ; $56d4: $8b
    db $dd                                        ; $56d5: $dd
    ld b, h                                       ; $56d6: $44
    cp $10                                        ; $56d7: $fe $10
    ld e, h                                       ; $56d9: $5c
    ld h, $7f                                     ; $56da: $26 $7f
    adc d                                         ; $56dc: $8a
    sbc [hl]                                      ; $56dd: $9e
    ld a, [$f49f]                                 ; $56de: $fa $9f $f4
    halt                                          ; $56e1: $76
    dec e                                         ; $56e2: $1d
    add a                                         ; $56e3: $87
    scf                                           ; $56e4: $37
    call $c901                                    ; $56e5: $cd $01 $c9
    ccf                                           ; $56e8: $3f
    sub e                                         ; $56e9: $93
    ret nc                                        ; $56ea: $d0

    ld b, e                                       ; $56eb: $43
    ld a, [hl-]                                   ; $56ec: $3a
    ld a, [$8f63]                                 ; $56ed: $fa $63 $8f
    rst $08                                       ; $56f0: $cf
    rra                                           ; $56f1: $1f
    ld b, d                                       ; $56f2: $42
    or l                                          ; $56f3: $b5
    xor d                                         ; $56f4: $aa
    cp $33                                        ; $56f5: $fe $33
    and $e3                                       ; $56f7: $e6 $e3
    cp [hl]                                       ; $56f9: $be
    and [hl]                                      ; $56fa: $a6
    ld l, c                                       ; $56fb: $69
    jp c, $f14c                                   ; $56fc: $da $4c $f1

    ld e, e                                       ; $56ff: $5b
    ld d, a                                       ; $5700: $57
    ld c, c                                       ; $5701: $49
    rst $28                                       ; $5702: $ef
    rra                                           ; $5703: $1f
    cp e                                          ; $5704: $bb

Jump_036_5705:
    sbc a                                         ; $5705: $9f
    cp a                                          ; $5706: $bf
    or h                                          ; $5707: $b4
    and e                                         ; $5708: $a3
    xor a                                         ; $5709: $af
    db $fd                                        ; $570a: $fd
    db $fc                                        ; $570b: $fc
    dec d                                         ; $570c: $15
    dec d                                         ; $570d: $15
    ld a, a                                       ; $570e: $7f
    ret nc                                        ; $570f: $d0

    ld a, b                                       ; $5710: $78
    ld d, d                                       ; $5711: $52
    db $ed                                        ; $5712: $ed
    db $dd                                        ; $5713: $dd
    add hl, de                                    ; $5714: $19
    dec sp                                        ; $5715: $3b
    ld a, e                                       ; $5716: $7b

jr_036_5717:
    ldh a, [$8b]                                  ; $5717: $f0 $8b
    ld a, [hl]                                    ; $5719: $7e
    db $ec                                        ; $571a: $ec
    inc l                                         ; $571b: $2c
    db $f4                                        ; $571c: $f4
    rra                                           ; $571d: $1f
    and [hl]                                      ; $571e: $a6
    rst $20                                       ; $571f: $e7
    ld l, [hl]                                    ; $5720: $6e
    ldh a, [rTAC]                                 ; $5721: $f0 $07
    cp l                                          ; $5723: $bd
    rst $38                                       ; $5724: $ff
    daa                                           ; $5725: $27
    inc sp                                        ; $5726: $33
    and $49                                       ; $5727: $e6 $49
    rra                                           ; $5729: $1f
    ei                                            ; $572a: $fb
    ld a, $eb                                     ; $572b: $3e $eb
    db $ed                                        ; $572d: $ed
    dec a                                         ; $572e: $3d
    and h                                         ; $572f: $a4
    ld a, [$afe2]                                 ; $5730: $fa $e2 $af
    ret z                                         ; $5733: $c8

    rst $18                                       ; $5734: $df
    or l                                          ; $5735: $b5
    and l                                         ; $5736: $a5
    adc c                                         ; $5737: $89
    sbc e                                         ; $5738: $9b
    ld hl, $59f4                                  ; $5739: $21 $f4 $59
    cp [hl]                                       ; $573c: $be
    jp nz, $84cc                                  ; $573d: $c2 $cc $84

    ld e, d                                       ; $5740: $5a
    db $ed                                        ; $5741: $ed
    xor l                                         ; $5742: $ad
    ld e, d                                       ; $5743: $5a
    db $dd                                        ; $5744: $dd
    ld a, e                                       ; $5745: $7b
    ld c, b                                       ; $5746: $48
    rst $28                                       ; $5747: $ef
    add c                                         ; $5748: $81
    add sp, -$13                                  ; $5749: $e8 $ed
    ld d, a                                       ; $574b: $57
    db $fc                                        ; $574c: $fc
    sbc l                                         ; $574d: $9d
    ld a, e                                       ; $574e: $7b
    rst $38                                       ; $574f: $ff
    ret c                                         ; $5750: $d8

    ld e, c                                       ; $5751: $59
    xor b                                         ; $5752: $a8
    ld [hl+], a                                   ; $5753: $22
    adc b                                         ; $5754: $88
    ld sp, $7d65                                  ; $5755: $31 $65 $7d
    rst $38                                       ; $5758: $ff
    db $fc                                        ; $5759: $fc
    pop bc                                        ; $575a: $c1
    cp c                                          ; $575b: $b9
    jp c, $265b                                   ; $575c: $da $5b $26

    jr c, jr_036_5717                             ; $575f: $38 $b6

    jp c, $d1d2                                   ; $5761: $da $d2 $d1

    ld l, c                                       ; $5764: $69
    sbc d                                         ; $5765: $9a
    and $a3                                       ; $5766: $e6 $a3
    db $10                                        ; $5768: $10
    adc $45                                       ; $5769: $ce $45
    cp $c4                                        ; $576b: $fe $c4
    ld bc, $1fd5                                  ; $576d: $01 $d5 $1f
    xor e                                         ; $5770: $ab
    cpl                                           ; $5771: $2f
    cp $ba                                        ; $5772: $fe $ba
    pop bc                                        ; $5774: $c1
    rra                                           ; $5775: $1f
    inc d                                         ; $5776: $14
    xor a                                         ; $5777: $af
    ld a, $8b                                     ; $5778: $3e $8b
    ld a, [hl-]                                   ; $577a: $3a
    add [hl]                                      ; $577b: $86
    db $e4                                        ; $577c: $e4
    and e                                         ; $577d: $a3
    ccf                                           ; $577e: $3f
    sbc [hl]                                      ; $577f: $9e
    ei                                            ; $5780: $fb
    reti                                          ; $5781: $d9


    call z, $e7e8                                 ; $5782: $cc $e8 $e7
    db $ed                                        ; $5785: $ed
    ldh [$b5], a                                  ; $5786: $e0 $b5
    sbc l                                         ; $5788: $9d
    add l                                         ; $5789: $85
    ld a, [hl+]                                   ; $578a: $2a
    add d                                         ; $578b: $82
    jr jr_036_5801                                ; $578c: $18 $73

    ld l, $eb                                     ; $578e: $2e $eb
    ei                                            ; $5790: $fb
    rst $20                                       ; $5791: $e7
    rrca                                          ; $5792: $0f
    xor d                                         ; $5793: $aa
    cp l                                          ; $5794: $bd
    ld h, l                                       ; $5795: $65
    add d                                         ; $5796: $82
    ld h, e                                       ; $5797: $63
    cp e                                          ; $5798: $bb
    rla                                           ; $5799: $17
    ld a, a                                       ; $579a: $7f
    inc sp                                        ; $579b: $33
    and $a3                                       ; $579c: $e6 $a3
    db $10                                        ; $579e: $10

Call_036_579f:
    add [hl]                                      ; $579f: $86
    ld [hl], h                                    ; $57a0: $74
    db $e4                                        ; $57a1: $e4
    rst $18                                       ; $57a2: $df
    sbc $fe                                       ; $57a3: $de $fe
    ld l, [hl]                                    ; $57a5: $6e
    scf                                           ; $57a6: $37
    call c, $207b                                 ; $57a7: $dc $7b $20
    ld a, d                                       ; $57aa: $7a
    rst $08                                       ; $57ab: $cf
    cp l                                          ; $57ac: $bd
    ld e, e                                       ; $57ad: $5b
    ld a, [$3529]                                 ; $57ae: $fa $29 $35
    sub [hl]                                      ; $57b1: $96
    xor h                                         ; $57b2: $ac
    sbc $d8                                       ; $57b3: $de $d8
    ld [bc], a                                    ; $57b5: $02
    ld l, c                                       ; $57b6: $69
    ld b, a                                       ; $57b7: $47
    ld e, h                                       ; $57b8: $5c
    rst $00                                       ; $57b9: $c7
    ld bc, $81c5                                  ; $57ba: $01 $c5 $81
    ld b, h                                       ; $57bd: $44
    or b                                          ; $57be: $b0
    db $f4                                        ; $57bf: $f4
    ld hl, sp-$4c                                 ; $57c0: $f8 $b4
    ld b, d                                       ; $57c2: $42
    ld h, d                                       ; $57c3: $62
    dec l                                         ; $57c4: $2d
    dec h                                         ; $57c5: $25
    xor e                                         ; $57c6: $ab
    ld e, $21                                     ; $57c7: $1e $21
    ld l, c                                       ; $57c9: $69

Jump_036_57ca:
    ld c, $a3                                     ; $57ca: $0e $a3
    ccf                                           ; $57cc: $3f
    or $7d                                        ; $57cd: $f6 $7d
    nop                                           ; $57cf: $00
    scf                                           ; $57d0: $37
    ld sp, hl                                     ; $57d1: $f9
    ld h, a                                       ; $57d2: $67
    ld [de], a                                    ; $57d3: $12
    cp d                                          ; $57d4: $ba
    xor e                                         ; $57d5: $ab
    and h                                         ; $57d6: $a4
    or c                                          ; $57d7: $b1
    push de                                       ; $57d8: $d5
    sub [hl]                                      ; $57d9: $96
    ld h, $c9                                     ; $57da: $26 $c9
    rst $20                                       ; $57dc: $e7
    rst $08                                       ; $57dd: $cf
    ei                                            ; $57de: $fb
    ld e, c                                       ; $57df: $59
    ld [hl], b                                    ; $57e0: $70
    ld d, b                                       ; $57e1: $50
    or l                                          ; $57e2: $b5
    ld e, c                                       ; $57e3: $59
    or l                                          ; $57e4: $b5
    and l                                         ; $57e5: $a5
    jp $a582                                      ; $57e6: $c3 $82 $a5


    ld [hl], c                                    ; $57e9: $71
    pop bc                                        ; $57ea: $c1
    di                                            ; $57eb: $f3
    xor l                                         ; $57ec: $ad
    ld h, h                                       ; $57ed: $64
    ld d, l                                       ; $57ee: $55
    ld d, h                                       ; $57ef: $54
    db $fc                                        ; $57f0: $fc
    ld a, c                                       ; $57f1: $79
    ld h, a                                       ; $57f2: $67
    call z, $c301                                 ; $57f3: $cc $01 $c3
    and l                                         ; $57f6: $a5
    rst $28                                       ; $57f7: $ef
    ld b, e                                       ; $57f8: $43
    adc a                                         ; $57f9: $8f
    sub b                                         ; $57fa: $90
    ld e, $9f                                     ; $57fb: $1e $9f
    sub $42                                       ; $57fd: $d6 $42
    ld c, [hl]                                    ; $57ff: $4e
    ld a, h                                       ; $5800: $7c

jr_036_5801:
    inc d                                         ; $5801: $14
    adc $d5                                       ; $5802: $ce $d5
    rra                                           ; $5804: $1f
    or c                                          ; $5805: $b1
    sub [hl]                                      ; $5806: $96
    ld [hl+], a                                   ; $5807: $22
    ld a, a                                       ; $5808: $7f
    rst $10                                       ; $5809: $d7
    ld [hl], $8e                                  ; $580a: $36 $8e
    jp $c752                                      ; $580c: $c3 $52 $c7


    ld a, d                                       ; $580f: $7a
    sbc e                                         ; $5810: $9b
    inc h                                         ; $5811: $24
    sbc a                                         ; $5812: $9f
    ccf                                           ; $5813: $3f
    ld l, a                                       ; $5814: $6f
    rst $18                                       ; $5815: $df
    ld h, a                                       ; $5816: $67
    cp l                                          ; $5817: $bd
    cp l                                          ; $5818: $bd
    ld e, a                                       ; $5819: $5f
    sub h                                         ; $581a: $94
    add d                                         ; $581b: $82
    db $d3                                        ; $581c: $d3
    inc e                                         ; $581d: $1c
    and e                                         ; $581e: $a3
    db $10                                        ; $581f: $10
    add [hl]                                      ; $5820: $86
    ld [hl], h                                    ; $5821: $74
    db $e4                                        ; $5822: $e4
    and a                                         ; $5823: $a7
    call nz, $a635                                ; $5824: $c4 $35 $a6
    ld l, a                                       ; $5827: $6f
    ld l, h                                       ; $5828: $6c
    add c                                         ; $5829: $81
    xor d                                         ; $582a: $aa
    push bc                                       ; $582b: $c5
    sub d                                         ; $582c: $92
    push de                                       ; $582d: $d5
    sub b                                         ; $582e: $90
    adc $f6                                       ; $582f: $ce $f6
    ld de, $6aa1                                  ; $5831: $11 $a1 $6a
    or c                                          ; $5834: $b1
    xor e                                         ; $5835: $ab
    or [hl]                                       ; $5836: $b6
    ld h, h                                       ; $5837: $64
    push de                                       ; $5838: $d5
    db $e4                                        ; $5839: $e4
    sbc a                                         ; $583a: $9f
    ld c, c                                       ; $583b: $49
    add sp, $66                                   ; $583c: $e8 $66
    ld a, [hl]                                    ; $583e: $7e
    sbc $34                                       ; $583f: $de $34
    rlca                                          ; $5841: $07
    ret                                           ; $5842: $c9


    ld b, a                                       ; $5843: $47
    db $d3                                        ; $5844: $d3
    inc [hl]                                      ; $5845: $34
    call $b301                                    ; $5846: $cd $01 $b3
    xor e                                         ; $5849: $ab
    ld l, l                                       ; $584a: $6d
    and [hl]                                      ; $584b: $a6
    ldh [$5c], a                                  ; $584c: $e0 $5c
    ld [hl], l                                    ; $584e: $75
    call nc, $dc4a                                ; $584f: $d4 $4a $dc
    ld e, c                                       ; $5852: $59
    db $e4                                        ; $5853: $e4
    ld h, a                                       ; $5854: $67
    sbc $92                                       ; $5855: $de $92
    ld d, l                                       ; $5857: $55
    ld e, c                                       ; $5858: $59
    rst $38                                       ; $5859: $ff
    add l                                         ; $585a: $85
    ei                                            ; $585b: $fb
    dec h                                         ; $585c: $25
    ldh [$6d], a                                  ; $585d: $e0 $6d
    sbc d                                         ; $585f: $9a
    and [hl]                                      ; $5860: $a6
    dec e                                         ; $5861: $1d
    ld e, $1b                                     ; $5862: $1e $1b
    sbc c                                         ; $5864: $99
    dec sp                                        ; $5865: $3b
    ld a, b                                       ; $5866: $78
    ld l, l                                       ; $5867: $6d
    or l                                          ; $5868: $b5
    or a                                          ; $5869: $b7
    or e                                          ; $586a: $b3
    ld sp, hl                                     ; $586b: $f9
    adc c                                         ; $586c: $89
    ld h, l                                       ; $586d: $65
    ei                                            ; $586e: $fb
    ld a, $eb                                     ; $586f: $3e $eb

Jump_036_5871:
    xor l                                         ; $5871: $ad
    or $96                                        ; $5872: $f6 $96
    add hl, bc                                    ; $5874: $09
    adc [hl]                                      ; $5875: $8e
    xor l                                         ; $5876: $ad
    or [hl]                                       ; $5877: $b6
    ld [hl], h                                    ; $5878: $74
    or h                                          ; $5879: $b4
    inc bc                                        ; $587a: $03
    cp l                                          ; $587b: $bd
    dec a                                         ; $587c: $3d
    ld [bc], a                                    ; $587d: $02
    ld a, d                                       ; $587e: $7a
    jp nz, $ac57                                  ; $587f: $c2 $57 $ac

    add l                                         ; $5882: $85
    db $fd                                        ; $5883: $fd
    cp e                                          ; $5884: $bb
    sbc $b2                                       ; $5885: $de $b2
    and [hl]                                      ; $5887: $a6
    adc $60                                       ; $5888: $ce $60
    ld a, [$e48e]                                 ; $588a: $fa $8e $e4
    adc h                                         ; $588d: $8c
    rst $10                                       ; $588e: $d7
    cp $ec                                        ; $588f: $fe $ec
    ld d, e                                       ; $5891: $53
    ld a, d                                       ; $5892: $7a
    xor $2c                                       ; $5893: $ee $2c
    inc [hl]                                      ; $5895: $34
    ldh [rNR34], a                                ; $5896: $e0 $1e
    db $fc                                        ; $5898: $fc
    halt                                          ; $5899: $76
    ld l, $73                                     ; $589a: $2e $73
    ld b, b                                       ; $589c: $40
    ld l, $05                                     ; $589d: $2e $05
    rst $20                                       ; $589f: $e7
    adc $a9                                       ; $58a0: $ce $a9
    ld b, d                                       ; $58a2: $42
    call nz, Call_036_5694                        ; $58a3: $c4 $94 $56
    xor l                                         ; $58a6: $ad
    ld l, $73                                     ; $58a7: $2e $73
    rst $38                                       ; $58a9: $ff
    add b                                         ; $58aa: $80
    db $d3                                        ; $58ab: $d3
    inc e                                         ; $58ac: $1c
    call z, Call_000_03fd                         ; $58ad: $cc $fd $03
    ld e, $92                                     ; $58b0: $1e $92
    inc bc                                        ; $58b2: $03
    call z, Call_000_03fd                         ; $58b3: $cc $fd $03
    xor $fb                                       ; $58b6: $ee $fb
    ret nc                                        ; $58b8: $d0

    call z, $a2ef                                 ; $58b9: $cc $ef $a2
    add h                                         ; $58bc: $84
    rst $30                                       ; $58bd: $f7
    ld e, h                                       ; $58be: $5c
    db $ed                                        ; $58bf: $ed
    dec l                                         ; $58c0: $2d
    inc de                                        ; $58c1: $13
    inc e                                         ; $58c2: $1c
    ld e, e                                       ; $58c3: $5b
    or d                                          ; $58c4: $b2
    ld a, [hl+]                                   ; $58c5: $2a
    ld a, [c]                                     ; $58c6: $f2
    ld b, a                                       ; $58c7: $47
    ld [bc], a                                    ; $58c8: $02
    or d                                          ; $58c9: $b2
    rst $30                                       ; $58ca: $f7
    call c, $f8af                                 ; $58cb: $dc $af $f8
    db $eb                                        ; $58ce: $eb
    db $dd                                        ; $58cf: $dd
    cp e                                          ; $58d0: $bb
    adc l                                         ; $58d1: $8d
    daa                                           ; $58d2: $27
    adc l                                         ; $58d3: $8d
    db $e3                                        ; $58d4: $e3
    or b                                          ; $58d5: $b0
    ld [hl], h                                    ; $58d6: $74
    cpl                                           ; $58d7: $2f
    cp $7a                                        ; $58d8: $fe $7a
    jr c, jr_036_58f2                             ; $58da: $38 $16

    adc $b5                                       ; $58dc: $ce $b5
    db $f4                                        ; $58de: $f4
    ld a, [hl]                                    ; $58df: $7e
    ld d, c                                       ; $58e0: $51
    ld [$dbc6], a                                 ; $58e1: $ea $c6 $db
    ld [hl+], a                                   ; $58e4: $22
    ld hl, sp+$51                                 ; $58e5: $f8 $51
    ld l, a                                       ; $58e7: $6f
    sbc d                                         ; $58e8: $9a
    inc bc                                        ; $58e9: $03
    call z, Call_000_03fd                         ; $58ea: $cc $fd $03
    xor $3d                                       ; $58ed: $ee $3d
    ld b, h                                       ; $58ef: $44
    rst $10                                       ; $58f0: $d7
    ld e, b                                       ; $58f1: $58

jr_036_58f2:
    dec bc                                        ; $58f2: $0b
    ld b, d                                       ; $58f3: $42
    rlca                                          ; $58f4: $07
    dec l                                         ; $58f5: $2d
    xor b                                         ; $58f6: $a8
    ld hl, sp-$0d                                 ; $58f7: $f8 $f3
    sbc [hl]                                      ; $58f9: $9e
    ld a, e                                       ; $58fa: $7b
    rst $30                                       ; $58fb: $f7
    ld l, [hl]                                    ; $58fc: $6e
    dec l                                         ; $58fd: $2d
    cp l                                          ; $58fe: $bd
    dec sp                                        ; $58ff: $3b
    add $39                                       ; $5900: $c6 $39
    rst $30                                       ; $5902: $f7
    ld e, $ae                                     ; $5903: $1e $ae
    and l                                         ; $5905: $a5
    ld a, a                                       ; $5906: $7f
    dec sp                                        ; $5907: $3b
    dec bc                                        ; $5908: $0b
    ld d, l                                       ; $5909: $55
    inc b                                         ; $590a: $04
    ld sp, $83a6                                  ; $590b: $31 $a6 $83
    sub a                                         ; $590e: $97
    or b                                          ; $590f: $b0
    adc [hl]                                      ; $5910: $8e
    db $db                                        ; $5911: $db
    ld [hl], l                                    ; $5912: $75
    inc e                                         ; $5913: $1c
    sbc $de                                       ; $5914: $de $de
    cp $6e                                        ; $5916: $fe $6e
    sbc d                                         ; $5918: $9a
    inc bc                                        ; $5919: $03
    and e                                         ; $591a: $a3
    cp a                                          ; $591b: $bf
    xor b                                         ; $591c: $a8
    and e                                         ; $591d: $a3
    add c                                         ; $591e: $81
    ld d, b                                       ; $591f: $50
    ld h, e                                       ; $5920: $63
    ld e, a                                       ; $5921: $5f
    ld e, b                                       ; $5922: $58
    xor d                                         ; $5923: $aa
    dec h                                         ; $5924: $25
    halt                                          ; $5925: $76
    cp l                                          ; $5926: $bd
    push bc                                       ; $5927: $c5
    xor e                                         ; $5928: $ab
    rst $30                                       ; $5929: $f7
    cpl                                           ; $592a: $2f
    rst $00                                       ; $592b: $c7
    adc h                                         ; $592c: $8c
    add hl, sp                                    ; $592d: $39
    ret                                           ; $592e: $c9


    ccf                                           ; $592f: $3f
    sub e                                         ; $5930: $93
    ret nc                                        ; $5931: $d0

    ld c, l                                       ; $5932: $4d
    db $d3                                        ; $5933: $d3
    or h                                          ; $5934: $b4
    rst $30                                       ; $5935: $f7
    adc a                                         ; $5936: $8f
    dec c                                         ; $5937: $0d
    add h                                         ; $5938: $84
    ld l, d                                       ; $5939: $6a
    rst $28                                       ; $593a: $ef
    ld d, [hl]                                    ; $593b: $56
    ld a, a                                       ; $593c: $7f
    sbc h                                         ; $593d: $9c
    ld sp, $4907                                  ; $593e: $31 $07 $49
    rra                                           ; $5941: $1f
    ld h, a                                       ; $5942: $67
    db $ec                                        ; $5943: $ec
    cp b                                          ; $5944: $b8
    rst $28                                       ; $5945: $ef
    jr c, jr_036_59bf                             ; $5946: $38 $77

    ld a, a                                       ; $5948: $7f
    ld c, a                                       ; $5949: $4f
    db $fd                                        ; $594a: $fd
    ld c, l                                       ; $594b: $4d
    db $d3                                        ; $594c: $d3
    inc [hl]                                      ; $594d: $34
    rlca                                          ; $594e: $07
    ld c, c                                       ; $594f: $49
    rra                                           ; $5950: $1f
    dec de                                        ; $5951: $1b
    ld [$6c75], sp                                ; $5952: $08 $75 $6c
    sub e                                         ; $5955: $93
    db $e4                                        ; $5956: $e4
    di                                            ; $5957: $f3
    rst $20                                       ; $5958: $e7
    ld [hl], l                                    ; $5959: $75
    inc c                                         ; $595a: $0c
    jp hl                                         ; $595b: $e9


    add sp, -$55                                  ; $595c: $e8 $ab
    rst $28                                       ; $595e: $ef
    inc hl                                        ; $595f: $23
    ld d, h                                       ; $5960: $54
    xor e                                         ; $5961: $ab
    ld [$d58f], a                                 ; $5962: $ea $8f $d5
    sbc $ed                                       ; $5965: $de $ed
    or e                                          ; $5967: $b3
    call z, $0398                                 ; $5968: $cc $98 $03
    ret                                           ; $596b: $c9


    sbc a                                         ; $596c: $9f
    dec e                                         ; $596d: $1d
    rra                                           ; $596e: $1f
    dec sp                                        ; $596f: $3b
    ld a, b                                       ; $5970: $78
    ld l, l                                       ; $5971: $6d
    dec e                                         ; $5972: $1d
    db $eb                                        ; $5973: $eb
    and e                                         ; $5974: $a3
    or e                                          ; $5975: $b3
    adc b                                         ; $5976: $88
    rrca                                          ; $5977: $0f
    db $ed                                        ; $5978: $ed
    ld l, l                                       ; $5979: $6d
    and $fb                                       ; $597a: $e6 $fb
    or l                                          ; $597c: $b5
    db $eb                                        ; $597d: $eb
    ld c, l                                       ; $597e: $4d
    bit 1, b                                      ; $597f: $cb $48
    cp a                                          ; $5981: $bf
    ld h, d                                       ; $5982: $62
    ld a, l                                       ; $5983: $7d
    xor [hl]                                      ; $5984: $ae
    and l                                         ; $5985: $a5
    rst $30                                       ; $5986: $f7
    cpl                                           ; $5987: $2f
    call $92fe                                    ; $5988: $cd $fe $92
    ld c, e                                       ; $598b: $4b
    ret z                                         ; $598c: $c8

    push af                                       ; $598d: $f5
    adc $d5                                       ; $598e: $ce $d5
    rra                                           ; $5990: $1f
    or c                                          ; $5991: $b1
    sub [hl]                                      ; $5992: $96
    ld a, [de]                                    ; $5993: $1a
    ld c, e                                       ; $5994: $4b
    cpl                                           ; $5995: $2f
    call z, $bf7c                                 ; $5996: $cc $7c $bf
    ld b, h                                       ; $5999: $44
    ld a, e                                       ; $599a: $7b
    dec de                                        ; $599b: $1b
    ld [$9369], sp                                ; $599c: $08 $69 $93
    ccf                                           ; $599f: $3f
    db $db                                        ; $59a0: $db
    pop af                                        ; $59a1: $f1
    or a                                          ; $59a2: $b7
    ld l, h                                       ; $59a3: $6c
    jr nz, @-$0c                                  ; $59a4: $20 $f2

    rst $20                                       ; $59a6: $e7
    db $ed                                        ; $59a7: $ed
    db $fd                                        ; $59a8: $fd
    ld h, e                                       ; $59a9: $63
    inc sp                                        ; $59aa: $33
    ld d, e                                       ; $59ab: $53
    and e                                         ; $59ac: $a3
    scf                                           ; $59ad: $37
    ld l, l                                       ; $59ae: $6d
    ld [bc], a                                    ; $59af: $02
    ld b, d                                       ; $59b0: $42
    dec e                                         ; $59b1: $1d
    db $db                                        ; $59b2: $db
    reti                                          ; $59b3: $d9


    cpl                                           ; $59b4: $2f
    cp c                                          ; $59b5: $b9
    dec sp                                        ; $59b6: $3b
    dec bc                                        ; $59b7: $0b
    db $e4                                        ; $59b8: $e4
    rst $08                                       ; $59b9: $cf
    ld d, d                                       ; $59ba: $52
    ld h, $7c                                     ; $59bb: $26 $7c
    cp $4c                                        ; $59bd: $fe $4c

jr_036_59bf:
    ld e, c                                       ; $59bf: $59
    push bc                                       ; $59c0: $c5
    ld l, a                                       ; $59c1: $6f
    and [hl]                                      ; $59c2: $a6
    rst $20                                       ; $59c3: $e7
    and d                                         ; $59c4: $a2
    sbc a                                         ; $59c5: $9f
    inc d                                         ; $59c6: $14
    ld c, l                                       ; $59c7: $4d
    pop bc                                        ; $59c8: $c1
    sbc e                                         ; $59c9: $9b
    and $c3                                       ; $59ca: $e6 $c3
    and l                                         ; $59cc: $a5
    ret z                                         ; $59cd: $c8

    rra                                           ; $59ce: $1f
    dec h                                         ; $59cf: $25
    dec c                                         ; $59d0: $0d
    db $10                                        ; $59d1: $10

Jump_036_59d2:
    jr nc, jr_036_59f8                            ; $59d2: $30 $24

    rlca                                          ; $59d4: $07
    and e                                         ; $59d5: $a3
    dec l                                         ; $59d6: $2d
    cp d                                          ; $59d7: $ba
    pop af                                        ; $59d8: $f1
    or [hl]                                       ; $59d9: $b6
    or e                                          ; $59da: $b3
    ld e, a                                       ; $59db: $5f
    jp nz, $a05a                                  ; $59dc: $c2 $5a $a0

    db $eb                                        ; $59df: $eb
    ld e, l                                       ; $59e0: $5d
    ld l, a                                       ; $59e1: $6f
    sbc d                                         ; $59e2: $9a
    inc bc                                        ; $59e3: $03
    or e                                          ; $59e4: $b3
    ld e, a                                       ; $59e5: $5f
    jp nz, Jump_036_605a                          ; $59e6: $c2 $5a $60

    add $1c                                       ; $59e9: $c6 $1c
    and e                                         ; $59eb: $a3
    ld b, e                                       ; $59ec: $43
    ld a, d                                       ; $59ed: $7a
    sub b                                         ; $59ee: $90
    db $10                                        ; $59ef: $10
    cp l                                          ; $59f0: $bd
    dec e                                         ; $59f1: $1d
    cp h                                          ; $59f2: $bc
    inc b                                         ; $59f3: $04
    add e                                         ; $59f4: $83
    ccf                                           ; $59f5: $3f
    adc b                                         ; $59f6: $88
    xor h                                         ; $59f7: $ac

jr_036_59f8:
    add sp, -$28                                  ; $59f8: $e8 $d8
    ld [hl], e                                    ; $59fa: $73
    sub e                                         ; $59fb: $93
    ld a, a                                       ; $59fc: $7f
    ld h, $a1                                     ; $59fd: $26 $a1
    db $d3                                        ; $59ff: $d3
    ld h, $f0                                     ; $5a00: $26 $f0
    rst $10                                       ; $5a02: $d7
    adc h                                         ; $5a03: $8c
    ld a, [hl]                                    ; $5a04: $7e
    push bc                                       ; $5a05: $c5
    ld a, [$91dc]                                 ; $5a06: $fa $dc $91
    sbc a                                         ; $5a09: $9f
    ld [de], a                                    ; $5a0a: $12
    rst $10                                       ; $5a0b: $d7
    sbc b                                         ; $5a0c: $98
    sbc $1d                                       ; $5a0d: $de $1d
    db $e3                                        ; $5a0f: $e3
    sbc h                                         ; $5a10: $9c
    ld a, e                                       ; $5a11: $7b
    rst $38                                       ; $5a12: $ff
    ld e, b                                       ; $5a13: $58
    xor l                                         ; $5a14: $ad
    ld a, [$d2c2]                                 ; $5a15: $fa $c2 $d2
    db $e3                                        ; $5a18: $e3
    di                                            ; $5a19: $f3
    add a                                         ; $5a1a: $87
    sub b                                         ; $5a1b: $90
    and $c3                                       ; $5a1c: $e6 $c3
    and l                                         ; $5a1e: $a5
    rst $28                                       ; $5a1f: $ef
    ld b, e                                       ; $5a20: $43
    adc a                                         ; $5a21: $8f
    ldh [$af], a                                  ; $5a22: $e0 $af
    or c                                          ; $5a24: $b1
    dec a                                         ; $5a25: $3d
    inc e                                         ; $5a26: $1c
    db $eb                                        ; $5a27: $eb
    dec l                                         ; $5a28: $2d
    inc de                                        ; $5a29: $13
    jp nz, Jump_036_6984                          ; $5a2a: $c2 $84 $69

    inc sp                                        ; $5a2d: $33
    or e                                          ; $5a2e: $b3
    add c                                         ; $5a2f: $81
    add sp, $4d                                   ; $5a30: $e8 $4d
    sbc e                                         ; $5a32: $9b
    ld h, h                                       ; $5a33: $64
    jp hl                                         ; $5a34: $e9


    sub a                                         ; $5a35: $97
    jp Jump_036_411d                              ; $5a36: $c3 $1d $41


    dec e                                         ; $5a39: $1d
    db $eb                                        ; $5a3a: $eb
    ld e, $0a                                     ; $5a3b: $1e $0a
    or c                                          ; $5a3d: $b1
    ld c, a                                       ; $5a3e: $4f
    ld l, l                                       ; $5a3f: $6d
    ld h, $91                                     ; $5a40: $26 $91
    dec d                                         ; $5a42: $15
    dec e                                         ; $5a43: $1d
    sbc e                                         ; $5a44: $9b
    and $a3                                       ; $5a45: $e6 $a3
    ccf                                           ; $5a47: $3f
    ld [hl], $10                                  ; $5a48: $36 $10
    and c                                         ; $5a4a: $a1
    sub [hl]                                      ; $5a4b: $96
    ld l, d                                       ; $5a4c: $6a
    rst $28                                       ; $5a4d: $ef
    ld d, $af                                     ; $5a4e: $16 $af
    add hl, de                                    ; $5a50: $19
    res 4, h                                      ; $5a51: $cb $a4
    ld h, e                                       ; $5a53: $63
    ldh [$59], a                                  ; $5a54: $e0 $59
    ld h, d                                       ; $5a56: $62
    pop af                                        ; $5a57: $f1
    call c, Call_000_1177                         ; $5a58: $dc $77 $11
    add h                                         ; $5a5b: $84
    dec de                                        ; $5a5c: $1b
    db $fc                                        ; $5a5d: $fc
    and l                                         ; $5a5e: $a5
    add hl, sp                                    ; $5a5f: $39
    or e                                          ; $5a60: $b3
    db $db                                        ; $5a61: $db
    rst $20                                       ; $5a62: $e7
    ld c, $5e                                     ; $5a63: $0e $5e
    ld e, e                                       ; $5a65: $5b
    db $ed                                        ; $5a66: $ed
    push af                                       ; $5a67: $f5
    or $1e                                        ; $5a68: $f6 $1e
    and d                                         ; $5a6a: $a2
    ld l, e                                       ; $5a6b: $6b
    jp hl                                         ; $5a6c: $e9


    ld c, l                                       ; $5a6d: $4d
    cp $de                                        ; $5a6e: $fe $de
    jp nc, Jump_036_6c26                          ; $5a70: $d2 $26 $6c

    or l                                          ; $5a73: $b5
    or a                                          ; $5a74: $b7
    jp $fc48                                      ; $5a75: $c3 $48 $fc


    ld e, c                                       ; $5a78: $59
    or [hl]                                       ; $5a79: $b6
    ld [$f57f], sp                                ; $5a7a: $08 $7f $f5
    cp c                                          ; $5a7d: $b9
    sub [hl]                                      ; $5a7e: $96
    sbc $49                                       ; $5a7f: $de $49
    and d                                         ; $5a81: $a2
    db $dd                                        ; $5a82: $dd
    ld h, h                                       ; $5a83: $64
    jp nc, Jump_036_4b5b                          ; $5a84: $d2 $5b $4b

    adc a                                         ; $5a87: $8f
    or c                                          ; $5a88: $b1
    inc sp                                        ; $5a89: $33
    ld l, a                                       ; $5a8a: $6f
    jp c, Jump_036_6311                           ; $5a8b: $da $11 $63

    rst $28                                       ; $5a8e: $ef
    ld b, d                                       ; $5a8f: $42
    db $e3                                        ; $5a90: $e3
    ld c, c                                       ; $5a91: $49
    adc a                                         ; $5a92: $8f
    sub b                                         ; $5a93: $90
    ld [de], a                                    ; $5a94: $12
    and h                                         ; $5a95: $a4
    dec h                                         ; $5a96: $25
    ld a, [$ea2e]                                 ; $5a97: $fa $2e $ea
    sbc l                                         ; $5a9a: $9d
    or c                                          ; $5a9b: $b1
    inc hl                                        ; $5a9c: $23
    rst $38                                       ; $5a9d: $ff
    ld a, [c]                                     ; $5a9e: $f2
    ld [hl], a                                    ; $5a9f: $77
    ld a, h                                       ; $5aa0: $7c
    ld e, d                                       ; $5aa1: $5a
    ld a, [$e115]                                 ; $5aa2: $fa $15 $e1
    db $ed                                        ; $5aa5: $ed
    dec a                                         ; $5aa6: $3d
    xor b                                         ; $5aa7: $a8
    halt                                          ; $5aa8: $76
    cp a                                          ; $5aa9: $bf
    ld [hl+], a                                   ; $5aaa: $22
    xor d                                         ; $5aab: $aa
    ld a, l                                       ; $5aac: $7d
    sub h                                         ; $5aad: $94
    ret                                           ; $5aae: $c9


    sbc a                                         ; $5aaf: $9f
    and d                                         ; $5ab0: $a2
    sbc c                                         ; $5ab1: $99
    ld l, c                                       ; $5ab2: $69
    ld [c], a                                     ; $5ab3: $e2
    ld l, d                                       ; $5ab4: $6a
    ld d, a                                       ; $5ab5: $57
    call nc, $e691                                ; $5ab6: $d4 $91 $e6

Call_036_5ab9:
    or e                                          ; $5ab9: $b3
    rst $38                                       ; $5aba: $ff
    sbc $e8                                       ; $5abb: $de $e8
    sub a                                         ; $5abd: $97
    or h                                          ; $5abe: $b4
    ld c, c                                       ; $5abf: $49
    rra                                           ; $5ac0: $1f
    ld a, e                                       ; $5ac1: $7b
    ei                                            ; $5ac2: $fb
    cp e                                          ; $5ac3: $bb
    dec a                                         ; $5ac4: $3d
    push af                                       ; $5ac5: $f5
    ld [hl], a                                    ; $5ac6: $77
    add e                                         ; $5ac7: $83
    ccf                                           ; $5ac8: $3f
    jr z, jr_036_5b29                             ; $5ac9: $28 $5e

    ld b, l                                       ; $5acb: $45
    cp $ee                                        ; $5acc: $fe $ee
    sub [hl]                                      ; $5ace: $96
    and d                                         ; $5acf: $a2
    ld h, e                                       ; $5ad0: $63

jr_036_5ad1:
    db $d3                                        ; $5ad1: $d3
    inc e                                         ; $5ad2: $1c
    ret                                           ; $5ad3: $c9


    ld h, c                                       ; $5ad4: $61
    add hl, hl                                    ; $5ad5: $29
    add $ea                                       ; $5ad6: $c6 $ea
    ld [$9370], a                                 ; $5ad8: $ea $70 $93
    ld c, c                                       ; $5adb: $49
    ld l, a                                       ; $5adc: $6f
    dec l                                         ; $5add: $2d
    rst $20                                       ; $5ade: $e7
    ld h, $ff                                     ; $5adf: $26 $ff
    ld c, h                                       ; $5ae1: $4c
    ld b, d                                       ; $5ae2: $42
    and a                                         ; $5ae3: $a7
    add hl, sp                                    ; $5ae4: $39
    ld c, c                                       ; $5ae5: $49
    ld a, a                                       ; $5ae6: $7f
    ld l, a                                       ; $5ae7: $6f
    ld a, $37                                     ; $5ae8: $3e $37
    ld sp, hl                                     ; $5aea: $f9
    adc e                                         ; $5aeb: $8b
    adc h                                         ; $5aec: $8c
    ld c, c                                       ; $5aed: $49
    dec sp                                        ; $5aee: $3b
    add d                                         ; $5aef: $82
    ld a, [hl-]                                   ; $5af0: $3a
    or [hl]                                       ; $5af1: $b6
    or e                                          ; $5af2: $b3
    ld e, a                                       ; $5af3: $5f
    jp nz, $a05a                                  ; $5af4: $c2 $5a $a0

    rst $30                                       ; $5af7: $f7
    ld b, h                                       ; $5af8: $44
    ld [hl], c                                    ; $5af9: $71
    adc c                                         ; $5afa: $89
    adc a                                         ; $5afb: $8f
    ret nc                                        ; $5afc: $d0

    ld b, c                                       ; $5afd: $41
    bit 2, e                                      ; $5afe: $cb $53
    sbc e                                         ; $5b00: $9b
    ld e, c                                       ; $5b01: $59
    jr nz, jr_036_5ad1                            ; $5b02: $20 $cd

    ld bc, $3fc9                                  ; $5b04: $01 $c9 $3f
    sub e                                         ; $5b07: $93
    ret nc                                        ; $5b08: $d0

    rst $20                                       ; $5b09: $e7
    add $56                                       ; $5b0a: $c6 $56
    ld e, e                                       ; $5b0c: $5b
    ld a, d                                       ; $5b0d: $7a
    ld d, e                                       ; $5b0e: $53
    ld b, d                                       ; $5b0f: $42
    or $f6                                        ; $5b10: $f6 $f6
    inc b                                         ; $5b12: $04
    rlca                                          ; $5b13: $07
    sbc h                                         ; $5b14: $9c
    dec de                                        ; $5b15: $1b
    ld e, e                                       ; $5b16: $5b
    ld l, l                                       ; $5b17: $6d
    ld l, c                                       ; $5b18: $69
    ldh a, [$d7]                                  ; $5b19: $f0 $d7
    cp e                                          ; $5b1b: $bb
    or e                                          ; $5b1c: $b3
    sbc $bf                                       ; $5b1d: $de $bf
    sbc h                                         ; $5b1f: $9c
    dec de                                        ; $5b20: $1b
    ld [$f4b5], sp                                ; $5b21: $08 $b5 $f4
    call nc, $bddf                                ; $5b24: $d4 $df $bd
    ld hl, sp+$6b                                 ; $5b27: $f8 $6b

jr_036_5b29:
    ld h, $63                                     ; $5b29: $26 $63
    adc a                                         ; $5b2b: $8f
    ld h, e                                       ; $5b2c: $63
    ld l, c                                       ; $5b2d: $69
    and $fb                                       ; $5b2e: $e6 $fb
    dec h                                         ; $5b30: $25
    jp c, $a43b                                   ; $5b31: $da $3b $a4

    add hl, bc                                    ; $5b34: $09
    ld e, e                                       ; $5b35: $5b
    rst $00                                       ; $5b36: $c7
    ld e, d                                       ; $5b37: $5a
    ld a, [hl-]                                   ; $5b38: $3a
    ld a, [$cfe2]                                 ; $5b39: $fa $e2 $cf
    cp l                                          ; $5b3c: $bd
    add a                                         ; $5b3d: $87
    add sp, $5a                                   ; $5b3e: $e8 $5a
    adc d                                         ; $5b40: $8a
    ld d, a                                       ; $5b41: $57
    inc sp                                        ; $5b42: $33
    cp c                                          ; $5b43: $b9
    add $29                                       ; $5b44: $c6 $29
    ld a, [hl-]                                   ; $5b46: $3a
    or [hl]                                       ; $5b47: $b6
    rst $30                                       ; $5b48: $f7
    ld [hl], b                                    ; $5b49: $70
    or l                                          ; $5b4a: $b5
    ld h, e                                       ; $5b4b: $63
    db $dd                                        ; $5b4c: $dd
    ld h, h                                       ; $5b4d: $64
    ld [de], a                                    ; $5b4e: $12
    add b                                         ; $5b4f: $80
    db $d3                                        ; $5b50: $d3
    adc [hl]                                      ; $5b51: $8e
    db $fc                                        ; $5b52: $fc
    sub h                                         ; $5b53: $94
    cp b                                          ; $5b54: $b8
    add $f4                                       ; $5b55: $c6 $f4
    ld [hl], $f6                                  ; $5b57: $36 $f6
    ld l, $b8                                     ; $5b59: $2e $b8
    ld a, [hl-]                                   ; $5b5b: $3a
    ld hl, sp-$55                                 ; $5b5c: $f8 $ab
    cp $bb                                        ; $5b5e: $fe $bb
    call $92fe                                    ; $5b60: $cd $fe $92
    db $eb                                        ; $5b63: $eb
    ld e, b                                       ; $5b64: $58
    ld [c], a                                     ; $5b65: $e2
    di                                            ; $5b66: $f3
    ld d, a                                       ; $5b67: $57
    cpl                                           ; $5b68: $2f
    ret nz                                        ; $5b69: $c0

    sub a                                         ; $5b6a: $97
    push af                                       ; $5b6b: $f5
    and [hl]                                      ; $5b6c: $a6
    add hl, sp                                    ; $5b6d: $39
    add hl, bc                                    ; $5b6e: $09
    db $fc                                        ; $5b6f: $fc
    push af                                       ; $5b70: $f5
    xor $18                                       ; $5b71: $ee $18
    rst $20                                       ; $5b73: $e7
    call c, $afe0                                 ; $5b74: $dc $e0 $af
    or a                                          ; $5b77: $b7

Call_036_5b78:
    cp a                                          ; $5b78: $bf
    db $db                                        ; $5b79: $db
    ld a, b                                       ; $5b7a: $78
    db $db                                        ; $5b7b: $db
    dec c                                         ; $5b7c: $0d
    cp $a0                                        ; $5b7d: $fe $a0
    cp [hl]                                       ; $5b7f: $be
    ld b, a                                       ; $5b80: $47
    ld d, [hl]                                    ; $5b81: $56
    sub $ef                                       ; $5b82: $d6 $ef
    ld d, e                                       ; $5b84: $53
    ldh a, [$9e]                                  ; $5b85: $f0 $9e
    ei                                            ; $5b87: $fb
    ld e, c                                       ; $5b88: $59
    ld c, e                                       ; $5b89: $4b
    add e                                         ; $5b8a: $83
    cp a                                          ; $5b8b: $bf
    sbc $fe                                       ; $5b8c: $de $fe
    ld l, [hl]                                    ; $5b8e: $6e
    db $e3                                        ; $5b8f: $e3
    ld l, l                                       ; $5b90: $6d
    push af                                       ; $5b91: $f5
    push bc                                       ; $5b92: $c5
    ld e, a                                       ; $5b93: $5f
    scf                                           ; $5b94: $37
    ld hl, sp-$7d                                 ; $5b95: $f8 $83
    ld a, [hl-]                                   ; $5b97: $3a
    sub [hl]                                      ; $5b98: $96
    ld hl, sp-$04                                 ; $5b99: $f8 $fc
    push af                                       ; $5b9b: $f5
    dec hl                                        ; $5b9c: $2b
    ld b, h                                       ; $5b9d: $44
    inc bc                                        ; $5b9e: $03
    reti                                          ; $5b9f: $d9


    sbc e                                         ; $5ba0: $9b
    and $23                                       ; $5ba1: $e6 $23
    dec e                                         ; $5ba3: $1d
    db $db                                        ; $5ba4: $db
    ld h, c                                       ; $5ba5: $61
    and d                                         ; $5ba6: $a2
    or h                                          ; $5ba7: $b4
    and l                                         ; $5ba8: $a5
    inc sp                                        ; $5ba9: $33
    cp a                                          ; $5baa: $bf
    cpl                                           ; $5bab: $2f
    inc [hl]                                      ; $5bac: $34
    ld e, h                                       ; $5bad: $5c
    dec bc                                        ; $5bae: $0b
    ld [hl], c                                    ; $5baf: $71
    add hl, bc                                    ; $5bb0: $09
    ld a, [c]                                     ; $5bb1: $f2
    rlca                                          ; $5bb2: $07
    ld c, l                                       ; $5bb3: $4d
    sub d                                         ; $5bb4: $92
    rst $08                                       ; $5bb5: $cf
    sbc a                                         ; $5bb6: $9f
    or a                                          ; $5bb7: $b7
    or c                                          ; $5bb8: $b1
    sbc l                                         ; $5bb9: $9d
    ld c, e                                       ; $5bba: $4b
    dec e                                         ; $5bbb: $1d
    adc c                                         ; $5bbc: $89
    dec de                                        ; $5bbd: $1b
    sbc $b4                                       ; $5bbe: $de $b4
    di                                            ; $5bc0: $f3
    add [hl]                                      ; $5bc1: $86
    add hl, hl                                    ; $5bc2: $29
    ld [hl], l                                    ; $5bc3: $75
    ldh a, [rTAC]                                 ; $5bc4: $f0 $07
    cp l                                          ; $5bc6: $bd
    adc l                                         ; $5bc7: $8d
    cp l                                          ; $5bc8: $bd
    dec bc                                        ; $5bc9: $0b

jr_036_5bca:
    xor [hl]                                      ; $5bca: $ae
    and l                                         ; $5bcb: $a5
    jr jr_036_5bca                                ; $5bcc: $18 $fc

    ld d, l                                       ; $5bce: $55
    dec e                                         ; $5bcf: $1d
    adc l                                         ; $5bd0: $8d
    or a                                          ; $5bd1: $b7
    cp l                                          ; $5bd2: $bd
    sub c                                         ; $5bd3: $91
    adc [hl]                                      ; $5bd4: $8e
    jp Jump_036_69b2                              ; $5bd5: $c3 $b2 $69


    ld c, $a3                                     ; $5bd8: $0e $a3
    ld b, e                                       ; $5bda: $43
    ld a, d                                       ; $5bdb: $7a
    dec de                                        ; $5bdc: $1b
    ld a, e                                       ; $5bdd: $7b
    rla                                           ; $5bde: $17
    cp h                                          ; $5bdf: $bc
    ld c, l                                       ; $5be0: $4d
    or [hl]                                       ; $5be1: $b6
    cp [hl]                                       ; $5be2: $be
    ld b, a                                       ; $5be3: $47
    sub $23                                       ; $5be4: $d6 $23
    and b                                         ; $5be6: $a0
    adc [hl]                                      ; $5be7: $8e
    or l                                          ; $5be8: $b5
    ld [hl], h                                    ; $5be9: $74
    or $cf                                        ; $5bea: $f6 $cf
    sbc a                                         ; $5bec: $9f
    inc b                                         ; $5bed: $04
    ld a, a                                       ; $5bee: $7f
    ld d, b                                       ; $5bef: $50
    ld a, d                                       ; $5bf0: $7a
    ld hl, $17f2                                  ; $5bf1: $21 $f2 $17
    db $fc                                        ; $5bf4: $fc
    and $4d                                       ; $5bf5: $e6 $4d
    dec sp                                        ; $5bf7: $3b

jr_036_5bf8:
    ld a, [$5f63]                                 ; $5bf8: $fa $63 $5f
    ld [hl+], a                                   ; $5bfb: $22
    dec b                                         ; $5bfc: $05

Jump_036_5bfd:
    add h                                         ; $5bfd: $84
    ld l, d                                       ; $5bfe: $6a
    ld d, l                                       ; $5bff: $55
    db $fd                                        ; $5c00: $fd
    rlca                                          ; $5c01: $07
    xor a                                         ; $5c02: $af
    dec a                                         ; $5c03: $3d
    scf                                           ; $5c04: $37
    ld sp, hl                                     ; $5c05: $f9
    ld h, a                                       ; $5c06: $67
    ld [de], a                                    ; $5c07: $12
    ld a, d                                       ; $5c08: $7a
    add $1c                                       ; $5c09: $c6 $1c
    or e                                          ; $5c0b: $b3
    xor e                                         ; $5c0c: $ab
    dec a                                         ; $5c0d: $3d
    rst $30                                       ; $5c0e: $f7
    ld d, b                                       ; $5c0f: $50
    adc b                                         ; $5c10: $88
    cp l                                          ; $5c11: $bd
    ld e, a                                       ; $5c12: $5f
    adc a                                         ; $5c13: $8f
    ld d, $1d                                     ; $5c14: $16 $1d
    sbc e                                         ; $5c16: $9b
    and $c9                                       ; $5c17: $e6 $c9
    rra                                           ; $5c19: $1f
    and c                                         ; $5c1a: $a1
    ld e, d                                       ; $5c1b: $5a
    sub l                                         ; $5c1c: $95
    jr nz, jr_036_5c4c                            ; $5c1d: $20 $2d

    pop de                                        ; $5c1f: $d1
    ld h, h                                       ; $5c20: $64
    jp nc, Jump_036_4b5b                          ; $5c21: $d2 $5b $4b

    inc sp                                        ; $5c24: $33
    inc de                                        ; $5c25: $13
    ld l, d                                       ; $5c26: $6a
    or l                                          ; $5c27: $b5
    rst $30                                       ; $5c28: $f7
    call c, Call_000_2fe4                         ; $5c29: $dc $e4 $2f
    ld [hl-], a                                   ; $5c2c: $32
    ld h, [hl]                                    ; $5c2d: $66
    add $1c                                       ; $5c2e: $c6 $1c
    or e                                          ; $5c30: $b3
    ld e, a                                       ; $5c31: $5f
    db $fc                                        ; $5c32: $fc
    ld [hl], l                                    ; $5c33: $75
    add e                                         ; $5c34: $83
    ccf                                           ; $5c35: $3f
    ld c, b                                       ; $5c36: $48
    ld [hl], e                                    ; $5c37: $73
    jp $a0ec                                      ; $5c38: $c3 $ec $a0


    push de                                       ; $5c3b: $d5
    pop bc                                        ; $5c3c: $c1
    rst $18                                       ; $5c3d: $df
    sub b                                         ; $5c3e: $90
    halt                                          ; $5c3f: $76
    cp b                                          ; $5c40: $b8
    db $f4                                        ; $5c41: $f4
    ld e, $a2                                     ; $5c42: $1e $a2
    dec sp                                        ; $5c44: $3b
    rst $10                                       ; $5c45: $d7
    or l                                          ; $5c46: $b5
    dec e                                         ; $5c47: $1d
    or h                                          ; $5c48: $b4
    ldh [$80], a                                  ; $5c49: $e0 $80
    inc bc                                        ; $5c4b: $03

jr_036_5c4c:
    cp l                                          ; $5c4c: $bd
    rst $20                                       ; $5c4d: $e7
    sbc $bd                                       ; $5c4e: $de $bd
    ld e, e                                       ; $5c50: $5b
    xor l                                         ; $5c51: $ad
    cp d                                          ; $5c52: $ba
    pop bc                                        ; $5c53: $c1
    rra                                           ; $5c54: $1f
    sub h                                         ; $5c55: $94
    db $fd                                        ; $5c56: $fd
    ld d, h                                       ; $5c57: $54
    rst $30                                       ; $5c58: $f7
    ld [$f6a8], sp                                ; $5c59: $08 $a8 $f6
    pop de                                        ; $5c5c: $d1
    pop hl                                        ; $5c5d: $e1
    adc b                                         ; $5c5e: $88
    sbc $de                                       ; $5c5f: $de $de
    xor [hl]                                      ; $5c61: $ae
    db $e3                                        ; $5c62: $e3
    ld b, b                                       ; $5c63: $40
    jr jr_036_5bf8                                ; $5c64: $18 $92

    inc bc                                        ; $5c66: $03
    ld c, c                                       ; $5c67: $49
    cp a                                          ; $5c68: $bf
    ld l, h                                       ; $5c69: $6c
    jr nz, jr_036_5cc0                            ; $5c6a: $20 $54

    xor e                                         ; $5c6c: $ab
    sbc [hl]                                      ; $5c6d: $9e
    ld a, [$4dcf]                                 ; $5c6e: $fa $cf $4d
    cp $22                                        ; $5c71: $fe $22
    ld h, e                                       ; $5c73: $63
    jp nc, $7476                                  ; $5c74: $d2 $76 $74

    ld c, b                                       ; $5c77: $48
    rst $18                                       ; $5c78: $df
    ld h, a                                       ; $5c79: $67
    cp l                                          ; $5c7a: $bd
    ld b, l                                       ; $5c7b: $45
    cp $ae                                        ; $5c7c: $fe $ae
    db $ed                                        ; $5c7e: $ed
    ld d, a                                       ; $5c7f: $57
    ld b, h                                       ; $5c80: $44
    ld [hl], l                                    ; $5c81: $75
    ldh a, [$d7]                                  ; $5c82: $f0 $d7
    call z, Call_000_2ff7                         ; $5c84: $cc $f7 $2f
    ld h, b                                       ; $5c87: $60
    ld c, b                                       ; $5c88: $48
    ld [hl], e                                    ; $5c89: $73
    add hl, bc                                    ; $5c8a: $09
    db $fc                                        ; $5c8b: $fc
    push af                                       ; $5c8c: $f5
    ld l, [hl]                                    ; $5c8d: $6e
    nop                                           ; $5c8e: $00

jr_036_5c8f:
    sbc a                                         ; $5c8f: $9f
    sbc e                                         ; $5c90: $9b
    db $fc                                        ; $5c91: $fc
    inc sp                                        ; $5c92: $33
    add hl, bc                                    ; $5c93: $09
    db $dd                                        ; $5c94: $dd
    db $db                                        ; $5c95: $db
    rst $18                                       ; $5c96: $df
    xor l                                         ; $5c97: $ad
    ld e, d                                       ; $5c98: $5a
    db $ec                                        ; $5c99: $ec
    ld e, [hl]                                    ; $5c9a: $5e
    db $fc                                        ; $5c9b: $fc
    push de                                       ; $5c9c: $d5
    or c                                          ; $5c9d: $b1
    sub c                                         ; $5c9e: $91
    cp c                                          ; $5c9f: $b9
    or c                                          ; $5ca0: $b1
    ld h, b                                       ; $5ca1: $60
    ld sp, $5fe2                                  ; $5ca2: $31 $e2 $5f
    ld [hl], b                                    ; $5ca5: $70
    inc de                                        ; $5ca6: $13
    sub [hl]                                      ; $5ca7: $96
    cp b                                          ; $5ca8: $b8
    db $e4                                        ; $5ca9: $e4
    ld hl, sp+$10                                 ; $5caa: $f8 $10
    rst $10                                       ; $5cac: $d7
    ld a, d                                       ; $5cad: $7a
    ld c, e                                       ; $5cae: $4b
    ld h, d                                       ; $5caf: $62
    dec l                                         ; $5cb0: $2d
    push de                                       ; $5cb1: $d5
    sbc $32                                       ; $5cb2: $de $32
    pop bc                                        ; $5cb4: $c1
    or c                                          ; $5cb5: $b1
    push de                                       ; $5cb6: $d5
    sub [hl]                                      ; $5cb7: $96
    adc [hl]                                      ; $5cb8: $8e
    halt                                          ; $5cb9: $76
    and b                                         ; $5cba: $a0
    or a                                          ; $5cbb: $b7
    sbc c                                         ; $5cbc: $99
    ld e, c                                       ; $5cbd: $59
    ld l, a                                       ; $5cbe: $6f
    sbc d                                         ; $5cbf: $9a

jr_036_5cc0:
    inc bc                                        ; $5cc0: $03
    and e                                         ; $5cc1: $a3
    ccf                                           ; $5cc2: $3f
    or $7d                                        ; $5cc3: $f6 $7d
    add h                                         ; $5cc5: $84
    ld l, d                                       ; $5cc6: $6a
    push de                                       ; $5cc7: $d5
    rla                                           ; $5cc8: $17
    sub [hl]                                      ; $5cc9: $96
    sub d                                         ; $5cca: $92
    ld d, l                                       ; $5ccb: $55
    ld d, c                                       ; $5ccc: $51
    pop af                                        ; $5ccd: $f1
    rst $20                                       ; $5cce: $e7
    dec a                                         ; $5ccf: $3d
    ld [hl], a                                    ; $5cd0: $77
    db $e4                                        ; $5cd1: $e4
    and a                                         ; $5cd2: $a7
    call nz, Call_036_6635                        ; $5cd3: $c4 $35 $66
    add $1c                                       ; $5cd6: $c6 $1c
    add hl, bc                                    ; $5cd8: $09
    db $fc                                        ; $5cd9: $fc
    ld [hl], l                                    ; $5cda: $75
    add b                                         ; $5cdb: $80
    and b                                         ; $5cdc: $a0
    inc h                                         ; $5cdd: $24
    ld a, [hl]                                    ; $5cde: $7e
    ld [hl], e                                    ; $5cdf: $73
    dec e                                         ; $5ce0: $1d
    db $eb                                        ; $5ce1: $eb
    db $ed                                        ; $5ce2: $ed
    jr nc, jr_036_5c8f                            ; $5ce3: $30 $aa

    ld c, $2f                                     ; $5ce5: $0e $2f
    add d                                         ; $5ce7: $82
    ld a, h                                       ; $5ce8: $7c
    dec [hl]                                      ; $5ce9: $35
    ld c, [hl]                                    ; $5cea: $4e
    add hl, bc                                    ; $5ceb: $09
    sub d                                         ; $5cec: $92
    call nc, $deb1                                ; $5ced: $d4 $b1 $de
    ld [hl-], a                                   ; $5cf0: $32
    ld sp, hl                                     ; $5cf1: $f9
    inc hl                                        ; $5cf2: $23
    ld d, c                                       ; $5cf3: $51
    ld c, e                                       ; $5cf4: $4b
    push de                                       ; $5cf5: $d5
    ld [$63a2], a                                 ; $5cf6: $ea $a2 $63
    db $dd                                        ; $5cf9: $dd
    ld e, c                                       ; $5cfa: $59
    call nz, $b56a                                ; $5cfb: $c4 $6a $b5
    rst $08                                       ; $5cfe: $cf
    cp l                                          ; $5cff: $bd
    dec sp                                        ; $5d00: $3b
    ld l, b                                       ; $5d01: $68
    ld sp, $1d5c                                  ; $5d02: $31 $5c $1d
    ld l, $93                                     ; $5d05: $2e $93
    ccf                                           ; $5d07: $3f
    ld b, l                                       ; $5d08: $45
    ld e, l                                       ; $5d09: $5d
    or $53                                        ; $5d0a: $f6 $53
    db $dd                                        ; $5d0c: $dd
    ld b, c                                       ; $5d0d: $41
    dec bc                                        ; $5d0e: $0b
    db $fd                                        ; $5d0f: $fd
    adc b                                         ; $5d10: $88
    sbc $de                                       ; $5d11: $de $de
    dec l                                         ; $5d13: $2d
    jp c, $e69b                                   ; $5d14: $da $9b $e6

    ld c, h                                       ; $5d17: $4c
    ccf                                           ; $5d18: $3f
    add sp, $2a                                   ; $5d19: $e8 $2a
    add hl, sp                                    ; $5d1b: $39
    scf                                           ; $5d1c: $37
    reti                                          ; $5d1d: $d9


    ld a, [$591e]                                 ; $5d1e: $fa $1e $59
    inc bc                                        ; $5d21: $03
    and c                                         ; $5d22: $a1
    ld h, h                                       ; $5d23: $64
    dec h                                         ; $5d24: $25

jr_036_5d25:
    inc h                                         ; $5d25: $24
    ld a, [hl]                                    ; $5d26: $7e
    dec de                                        ; $5d27: $1b
    sub d                                         ; $5d28: $92
    inc bc                                        ; $5d29: $03
    call z, $df70                                 ; $5d2a: $cc $70 $df
    add a                                         ; $5d2d: $87
    ld a, [hl-]                                   ; $5d2e: $3a
    sub $9d                                       ; $5d2f: $d6 $9d
    db $fd                                        ; $5d31: $fd
    di                                            ; $5d32: $f3
    daa                                           ; $5d33: $27
    pop bc                                        ; $5d34: $c1
    rra                                           ; $5d35: $1f
    ld [hl], h                                    ; $5d36: $74
    ldh a, [$da]                                  ; $5d37: $f0 $da
    adc $fc                                       ; $5d39: $ce $fc
    cp [hl]                                       ; $5d3b: $be
    ret nc                                        ; $5d3c: $d0

    ld [hl], b                                    ; $5d3d: $70
    jp c, $c2d9                                   ; $5d3e: $da $d9 $c2

    ld e, b                                       ; $5d41: $58
    inc c                                         ; $5d42: $0c
    sbc a                                         ; $5d43: $9f
    dec sp                                        ; $5d44: $3b
    rst $10                                       ; $5d45: $d7
    or l                                          ; $5d46: $b5
    ld l, c                                       ; $5d47: $69
    ld c, $e3                                     ; $5d48: $0e $e3
    rst $08                                       ; $5d4a: $cf
    ld d, $66                                     ; $5d4b: $16 $66
    dec l                                         ; $5d4d: $2d
    sbc l                                         ; $5d4e: $9d
    db $eb                                        ; $5d4f: $eb
    jp c, $f8f3                                   ; $5d50: $da $f3 $f8

    add hl, sp                                    ; $5d53: $39
    db $e3                                        ; $5d54: $e3
    daa                                           ; $5d55: $27
    ldh a, [$d7]                                  ; $5d56: $f0 $d7
    dec sp                                        ; $5d58: $3b
    ld c, c                                       ; $5d59: $49
    or h                                          ; $5d5a: $b4
    xor e                                         ; $5d5b: $ab
    cp l                                          ; $5d5c: $bd
    ld c, l                                       ; $5d5d: $4d
    sub d                                         ; $5d5e: $92
    rst $08                                       ; $5d5f: $cf
    sbc a                                         ; $5d60: $9f
    or a                                          ; $5d61: $b7
    sbc c                                         ; $5d62: $99
    ld h, l                                       ; $5d63: $65
    db $dd                                        ; $5d64: $dd
    push af                                       ; $5d65: $f5
    dec sp                                        ; $5d66: $3b
    cp h                                          ; $5d67: $bc
    rst $20                                       ; $5d68: $e7
    ld a, [hl]                                    ; $5d69: $7e
    sub $52                                       ; $5d6a: $d6 $52
    ld h, e                                       ; $5d6c: $63
    rst $28                                       ; $5d6d: $ef
    ld hl, $1bba                                  ; $5d6e: $21 $ba $1b
    db $fc                                        ; $5d71: $fc
    ld b, c                                       ; $5d72: $41
    xor c                                         ; $5d73: $a9
    add e                                         ; $5d74: $83
    ccf                                           ; $5d75: $3f
    jr z, @+$3c                                   ; $5d76: $28 $3a

    ld [hl], $6d                                  ; $5d78: $36 $6d
    ld [bc], a                                    ; $5d7a: $02
    ld a, a                                       ; $5d7b: $7f
    call $57e8                                    ; $5d7c: $cd $e8 $57
    xor h                                         ; $5d7f: $ac
    rst $08                                       ; $5d80: $cf
    push de                                       ; $5d81: $d5
    rra                                           ; $5d82: $1f
    dec sp                                        ; $5d83: $3b
    call z, Call_036_6e08                         ; $5d84: $cc $08 $6e
    jr nz, jr_036_5d25                            ; $5d87: $20 $9c

    dec de                                        ; $5d89: $1b
    ld l, a                                       ; $5d8a: $6f
    db $eb                                        ; $5d8b: $eb
    ret c                                         ; $5d8c: $d8

    ld c, $fc                                     ; $5d8d: $0e $fc
    cpl                                           ; $5d8f: $2f
    sbc l                                         ; $5d90: $9d
    ld b, l                                       ; $5d91: $45
    xor h                                         ; $5d92: $ac
    ld d, [hl]                                    ; $5d93: $56
    ld a, e                                       ; $5d94: $7b
    dec sp                                        ; $5d95: $3b
    ld a, b                                       ; $5d96: $78
    ld l, l                                       ; $5d97: $6d
    adc a                                         ; $5d98: $8f
    sub b                                         ; $5d99: $90
    ld e, $01                                     ; $5d9a: $1e $01
    ld h, h                                       ; $5d9c: $64
    sub l                                         ; $5d9d: $95
    sbc c                                         ; $5d9e: $99
    push af                                       ; $5d9f: $f5
    sbc [hl]                                      ; $5da0: $9e
    xor e                                         ; $5da1: $ab
    jp $823d                                      ; $5da2: $c3 $3d $82


    cp a                                          ; $5da5: $bf
    ld l, [hl]                                    ; $5da6: $6e
    ld [hl+], a                                   ; $5da7: $22
    ld a, a                                       ; $5da8: $7f
    ld [$e8ee], sp                                ; $5da9: $08 $ee $e8
    adc e                                         ; $5dac: $8b
    ccf                                           ; $5dad: $3f
    sub a                                         ; $5dae: $97
    dec [hl]                                      ; $5daf: $35
    ld a, [hl+]                                   ; $5db0: $2a
    cp $bc                                        ; $5db1: $fe $bc
    cp l                                          ; $5db3: $bd
    ld e, l                                       ; $5db4: $5d
    rst $00                                       ; $5db5: $c7
    pop hl                                        ; $5db6: $e1

jr_036_5db7:
    ld c, l                                       ; $5db7: $4d
    dec sp                                        ; $5db8: $3b
    ld h, d                                       ; $5db9: $62
    db $ec                                        ; $5dba: $ec
    ld e, l                                       ; $5dbb: $5d
    jr nc, jr_036_5e00                            ; $5dbc: $30 $42

    or l                                          ; $5dbe: $b5
    xor d                                         ; $5dbf: $aa
    or $96                                        ; $5dc0: $f6 $96
    add hl, bc                                    ; $5dc2: $09
    sbc a                                         ; $5dc3: $9f
    ccf                                           ; $5dc4: $3f
    ld d, e                                       ; $5dc5: $53
    ld d, [hl]                                    ; $5dc6: $56
    pop af                                        ; $5dc7: $f1
    sbc e                                         ; $5dc8: $9b
    ld l, c                                       ; $5dc9: $69
    rst $38                                       ; $5dca: $ff
    ld d, c                                       ; $5dcb: $51
    and $3f                                       ; $5dcc: $e6 $3f
    db $10                                        ; $5dce: $10
    ld a, [hl]                                    ; $5dcf: $7e
    ld d, [hl]                                    ; $5dd0: $56
    ld [hl], l                                    ; $5dd1: $75
    ld [hl], h                                    ; $5dd2: $74
    ld h, h                                       ; $5dd3: $64
    nop                                           ; $5dd4: $00
    ld e, b                                       ; $5dd5: $58
    or $f3                                        ; $5dd6: $f6 $f3
    rlca                                          ; $5dd8: $07
    db $fd                                        ; $5dd9: $fd
    adc d                                         ; $5dda: $8a
    xor b                                         ; $5ddb: $a8
    or $f6                                        ; $5ddc: $f6 $f6
    adc l                                         ; $5dde: $8d
    call $821f                                    ; $5ddf: $cd $1f $82
    or a                                          ; $5de2: $b7
    ld [hl], e                                    ; $5de3: $73
    dec hl                                        ; $5de4: $2b
    add hl, sp                                    ; $5de5: $39
    adc d                                         ; $5de6: $8a
    ld b, $b2                                     ; $5de7: $06 $b2
    ld [hl], a                                    ; $5de9: $77
    add $32                                       ; $5dea: $c6 $32
    jp $8dbd                                      ; $5dec: $c3 $bd $8d


    cp l                                          ; $5def: $bd
    db $eb                                        ; $5df0: $eb
    xor l                                         ; $5df1: $ad
    ld c, $fe                                     ; $5df2: $0e $fe
    xor d                                         ; $5df4: $aa
    cpl                                           ; $5df5: $2f
    add c                                         ; $5df6: $81
    add d                                         ; $5df7: $82
    sbc b                                         ; $5df8: $98
    jr nz, jr_036_5db7                            ; $5df9: $20 $bc

    ld d, l                                       ; $5dfb: $55
    xor e                                         ; $5dfc: $ab
    dec de                                        ; $5dfd: $1b
    ld l, a                                       ; $5dfe: $6f
    ld a, e                                       ; $5dff: $7b

jr_036_5e00:
    inc b                                         ; $5e00: $04
    xor h                                         ; $5e01: $ac
    rst $18                                       ; $5e02: $df
    pop hl                                        ; $5e03: $e1
    dec a                                         ; $5e04: $3d
    rst $30                                       ; $5e05: $f7
    sbc [hl]                                      ; $5e06: $9e
    ld hl, sp-$3c                                 ; $5e07: $f8 $c4
    xor e                                         ; $5e09: $ab
    ld l, e                                       ; $5e0a: $6b
    db $ec                                        ; $5e0b: $ec
    ld e, [hl]                                    ; $5e0c: $5e
    db $fc                                        ; $5e0d: $fc
    ld d, l                                       ; $5e0e: $55
    xor e                                         ; $5e0f: $ab
    cp l                                          ; $5e10: $bd
    sbc c                                         ; $5e11: $99
    ld [hl], $10                                  ; $5e12: $36 $10
    jp nc, $f932                                  ; $5e14: $d2 $32 $f9

    dec bc                                        ; $5e17: $0b
    ld a, [hl]                                    ; $5e18: $7e
    db $eb                                        ; $5e19: $eb
    ld de, $bc52                                  ; $5e1a: $11 $52 $bc
    ret c                                         ; $5e1d: $d8

    ld c, a                                       ; $5e1e: $4f
    ld [hl], l                                    ; $5e1f: $75
    rst $28                                       ; $5e20: $ef
    pop hl                                        ; $5e21: $e1
    ld e, $63                                     ; $5e22: $1e $63
    ld h, a                                       ; $5e24: $67
    inc [hl]                                      ; $5e25: $34
    ld hl, sp-$55                                 ; $5e26: $f8 $ab

jr_036_5e28:
    ld h, e                                       ; $5e28: $63
    db $dd                                        ; $5e29: $dd
    and c                                         ; $5e2a: $a1
    dec bc                                        ; $5e2b: $0b
    rst $30                                       ; $5e2c: $f7
    ld c, e                                       ; $5e2d: $4b
    jr nz, jr_036_5e4d                            ; $5e2e: $20 $1d

    ccf                                           ; $5e30: $3f
    rlca                                          ; $5e31: $07
    db $e3                                        ; $5e32: $e3
    daa                                           ; $5e33: $27
    ld e, e                                       ; $5e34: $5b
    ret z                                         ; $5e35: $c8

    inc [hl]                                      ; $5e36: $34
    ld hl, sp+$43                                 ; $5e37: $f8 $43
    add sp, -$34                                  ; $5e39: $e8 $cc
    rst $28                                       ; $5e3b: $ef
    dec bc                                        ; $5e3c: $0b
    dec c                                         ; $5e3d: $0d
    adc a                                         ; $5e3e: $8f
    sbc a                                         ; $5e3f: $9f
    and $a3                                       ; $5e40: $e6 $a3
    ld b, e                                       ; $5e42: $43
    ld a, d                                       ; $5e43: $7a
    dec de                                        ; $5e44: $1b
    ld a, e                                       ; $5e45: $7b
    rst $10                                       ; $5e46: $d7
    ld e, e                                       ; $5e47: $5b
    db $ed                                        ; $5e48: $ed
    db $ed                                        ; $5e49: $ed
    call c, Call_036_565f                         ; $5e4a: $dc $5f $56

jr_036_5e4d:
    dec e                                         ; $5e4d: $1d
    rst $28                                       ; $5e4e: $ef
    ld l, a                                       ; $5e4f: $6f
    ld d, [hl]                                    ; $5e50: $56
    sub $ab                                       ; $5e51: $d6 $ab
    add b                                         ; $5e53: $80
    db $ec                                        ; $5e54: $ec
    dec a                                         ; $5e55: $3d
    ld d, a                                       ; $5e56: $57
    dec e                                         ; $5e57: $1d
    adc l                                         ; $5e58: $8d
    or a                                          ; $5e59: $b7
    dec h                                         ; $5e5a: $25
    xor e                                         ; $5e5b: $ab
    and e                                         ; $5e5c: $a3
    ld [hl], e                                    ; $5e5d: $73
    dec hl                                        ; $5e5e: $2b
    add hl, sp                                    ; $5e5f: $39
    ld c, d                                       ; $5e60: $4a
    ld d, [hl]                                    ; $5e61: $56
    ld h, l                                       ; $5e62: $65
    dec h                                         ; $5e63: $25
    ld [hl], $f3                                  ; $5e64: $36 $f3
    and [hl]                                      ; $5e66: $a6
    ld c, l                                       ; $5e67: $4d
    ldh [$af], a                                  ; $5e68: $e0 $af
    add hl, de                                    ; $5e6a: $19
    db $fd                                        ; $5e6b: $fd
    adc d                                         ; $5e6c: $8a
    push af                                       ; $5e6d: $f5
    cp c                                          ; $5e6e: $b9
    sub [hl]                                      ; $5e6f: $96
    ld b, $42                                     ; $5e70: $06 $42
    inc sp                                        ; $5e72: $33
    cp c                                          ; $5e73: $b9
    add $69                                       ; $5e74: $c6 $69
    and $55                                       ; $5e76: $e6 $55
    reti                                          ; $5e78: $d9


    cp c                                          ; $5e79: $b9
    ld [$f928], a                                 ; $5e7a: $ea $28 $f9
    xor $e8                                       ; $5e7d: $ee $e8
    ldh [$b5], a                                  ; $5e7f: $e0 $b5
    ld d, l                                       ; $5e81: $55
    adc e                                         ; $5e82: $8b
    ld d, l                                       ; $5e83: $55
    xor e                                         ; $5e84: $ab
    dec sp                                        ; $5e85: $3b
    ei                                            ; $5e86: $fb
    dec h                                         ; $5e87: $25
    xor h                                         ; $5e88: $ac
    dec b                                         ; $5e89: $05
    ld c, d                                       ; $5e8a: $4a
    ld d, [hl]                                    ; $5e8b: $56
    dec e                                         ; $5e8c: $1d
    or h                                          ; $5e8d: $b4
    jr nz, jr_036_5e28                            ; $5e8e: $20 $98

    rst $18                                       ; $5e90: $df
    cp h                                          ; $5e91: $bc
    ld l, c                                       ; $5e92: $69
    inc de                                        ; $5e93: $13
    ld hl, sp+$2b                                 ; $5e94: $f8 $2b
    ld a, [c]                                     ; $5e96: $f2
    rla                                           ; $5e97: $17
    db $fc                                        ; $5e98: $fc
    and $26                                       ; $5e99: $e6 $26
    ld e, e                                       ; $5e9b: $5b
    rst $18                                       ; $5e9c: $df
    inc hl                                        ; $5e9d: $23
    db $eb                                        ; $5e9e: $eb
    ld de, $c750                                  ; $5e9f: $11 $50 $c7
    ld e, d                                       ; $5ea2: $5a
    ld a, [hl-]                                   ; $5ea3: $3a
    ld [hl], h                                    ; $5ea4: $74
    pop hl                                        ; $5ea5: $e1
    ld a, [hl]                                    ; $5ea6: $7e
    add hl, bc                                    ; $5ea7: $09
    sub h                                         ; $5ea8: $94
    xor h                                         ; $5ea9: $ac
    add h                                         ; $5eaa: $84
    call nz, Call_036_696f                        ; $5eab: $c4 $6f $69
    ld b, a                                       ; $5eae: $47
    add a                                         ; $5eaf: $87
    inc d                                         ; $5eb0: $14
    cpl                                           ; $5eb1: $2f
    ld c, d                                       ; $5eb2: $4a
    pop bc                                        ; $5eb3: $c1
    ld e, e                                       ; $5eb4: $5b
    ld h, e                                       ; $5eb5: $63
    ld d, a                                       ; $5eb6: $57
    ld l, l                                       ; $5eb7: $6d
    sub e                                         ; $5eb8: $93
    ld a, a                                       ; $5eb9: $7f
    ld h, $a1                                     ; $5eba: $26 $a1
    adc e                                         ; $5ebc: $8b
    ccf                                           ; $5ebd: $3f
    di                                            ; $5ebe: $f3
    and [hl]                                      ; $5ebf: $a6
    add hl, sp                                    ; $5ec0: $39
    or e                                          ; $5ec1: $b3
    ld e, a                                       ; $5ec2: $5f
    jp nz, Jump_036_605a                          ; $5ec3: $c2 $5a $60

    ld c, b                                       ; $5ec6: $48
    add a                                         ; $5ec7: $87
    ld c, e                                       ; $5ec8: $4b
    inc bc                                        ; $5ec9: $03
    and c                                         ; $5eca: $a1
    sbc a                                         ; $5ecb: $9f
    call $befc                                    ; $5ecc: $cd $fc $be
    ld a, [c]                                     ; $5ecf: $f2
    ld c, $e9                                     ; $5ed0: $0e $e9
    jr nc, jr_036_5f0f                            ; $5ed2: $30 $3b

    ld l, b                                       ; $5ed4: $68
    ld [hl], l                                    ; $5ed5: $75
    ldh a, [rPCM34]                               ; $5ed6: $f0 $77
    ld l, [hl]                                    ; $5ed8: $6e
    ld a, [c]                                     ; $5ed9: $f2
    rla                                           ; $5eda: $17
    add hl, de                                    ; $5edb: $19
    ld [hl], e                                    ; $5edc: $73
    ld l, $f1                                     ; $5edd: $2e $f1
    scf                                           ; $5edf: $37
    ld l, e                                       ; $5ee0: $6b
    cp h                                          ; $5ee1: $bc
    xor l                                         ; $5ee2: $ad
    ld h, e                                       ; $5ee3: $63
    add a                                         ; $5ee4: $87
    db $e4                                        ; $5ee5: $e4
    ld c, c                                       ; $5ee6: $49
    cp a                                          ; $5ee7: $bf
    rst $28                                       ; $5ee8: $ef
    inc hl                                        ; $5ee9: $23
    ld d, h                                       ; $5eea: $54
    xor e                                         ; $5eeb: $ab
    add $db                                       ; $5eec: $c6 $db
    sbc $c3                                       ; $5eee: $de $c3
    jp c, $3692                                   ; $5ef0: $da $92 $36

    ld c, c                                       ; $5ef3: $49
    push af                                       ; $5ef4: $f5
    xor [hl]                                      ; $5ef5: $ae
    db $10                                        ; $5ef6: $10
    pop bc                                        ; $5ef7: $c1
    ld [$17d5], sp                                ; $5ef8: $08 $d5 $17
    ld a, a                                       ; $5efb: $7f
    rst $20                                       ; $5efc: $e7
    ld [$588f], a                                 ; $5efd: $ea $8f $58
    db $fd                                        ; $5f00: $fd
    or c                                          ; $5f01: $b1
    inc bc                                        ; $5f02: $03
    rra                                           ; $5f03: $1f
    ld sp, $de2c                                  ; $5f04: $31 $2c $de
    sbc $49                                       ; $5f07: $de $49
    and d                                         ; $5f09: $a2
    ld a, l                                       ; $5f0a: $7d
    xor $a5                                       ; $5f0b: $ee $a5
    dec l                                         ; $5f0d: $2d
    inc sp                                        ; $5f0e: $33

jr_036_5f0f:
    and $b3                                       ; $5f0f: $e6 $b3
    cp $b4                                        ; $5f11: $fe $b4
    inc hl                                        ; $5f13: $23
    dec d                                         ; $5f14: $15
    ld h, d                                       ; $5f15: $62
    ld l, a                                       ; $5f16: $6f
    call nc, $9db1                                ; $5f17: $d4 $b1 $9d
    db $fd                                        ; $5f1a: $fd
    ld [de], a                                    ; $5f1b: $12
    sub $02                                       ; $5f1c: $d6 $02
    cp l                                          ; $5f1e: $bd
    ld e, a                                       ; $5f1f: $5f
    adc a                                         ; $5f20: $8f
    or $ee                                        ; $5f21: $f6 $ee
    inc c                                         ; $5f23: $0c
    ld sp, hl                                     ; $5f24: $f9
    dec bc                                        ; $5f25: $0b
    ld a, [hl]                                    ; $5f26: $7e
    di                                            ; $5f27: $f3
    halt                                          ; $5f28: $76
    ld [bc], a                                    ; $5f29: $02
    db $e4                                        ; $5f2a: $e4
    ld l, a                                       ; $5f2b: $6f
    jp $84c4                                      ; $5f2c: $c3 $c4 $84


    ld l, c                                       ; $5f2f: $69
    ld c, $a3                                     ; $5f30: $0e $a3
    ld b, e                                       ; $5f32: $43
    ld a, [$eb3e]                                 ; $5f33: $fa $3e $eb
    xor l                                         ; $5f36: $ad
    ld h, e                                       ; $5f37: $63
    cp l                                          ; $5f38: $bd
    dec e                                         ; $5f39: $1d
    ld h, $61                                     ; $5f3a: $26 $61
    and d                                         ; $5f3c: $a2
    add e                                         ; $5f3d: $83
    rst $10                                       ; $5f3e: $d7
    halt                                          ; $5f3f: $76
    and $f7                                       ; $5f40: $e6 $f7
    add l                                         ; $5f42: $85
    add [hl]                                      ; $5f43: $86
    dec sp                                        ; $5f44: $3b
    jp c, $a91f                                   ; $5f45: $da $1f $a9

    rst $00                                       ; $5f48: $c7
    sub h                                         ; $5f49: $94
    push af                                       ; $5f4a: $f5
    db $ed                                        ; $5f4b: $ed
    ld a, [hl-]                                   ; $5f4c: $3a
    ld c, $6f                                     ; $5f4d: $0e $6f
    jp c, $b1e1                                   ; $5f4f: $da $e1 $b1

    dec e                                         ; $5f52: $1d
    ld hl, sp+$5f                                 ; $5f53: $f8 $5f
    ld a, [hl-]                                   ; $5f55: $3a
    adc e                                         ; $5f56: $8b
    ld e, b                                       ; $5f57: $58
    xor l                                         ; $5f58: $ad
    halt                                          ; $5f59: $76
    rlca                                          ; $5f5a: $07
    xor a                                         ; $5f5b: $af
    ld l, l                                       ; $5f5c: $6d
    cp h                                          ; $5f5d: $bc
    and e                                         ; $5f5e: $a3
    or a                                          ; $5f5f: $b7
    or c                                          ; $5f60: $b1
    ld [hl], a                                    ; $5f61: $77
    cp l                                          ; $5f62: $bd
    sbc l                                         ; $5f63: $9d
    db $fd                                        ; $5f64: $fd
    ld [de], a                                    ; $5f65: $12
    sub $02                                       ; $5f66: $d6 $02
    db $dd                                        ; $5f68: $dd
    ld b, h                                       ; $5f69: $44
    cp $10                                        ; $5f6a: $fe $10
    cp h                                          ; $5f6c: $bc
    ld h, l                                       ; $5f6d: $65
    cp $03                                        ; $5f6e: $fe $03
    pop hl                                        ; $5f70: $e1
    ld h, a                                       ; $5f71: $67
    ld d, l                                       ; $5f72: $55
    ld b, a                                       ; $5f73: $47
    ld b, a                                       ; $5f74: $47
    ld b, $80                                     ; $5f75: $06 $80
    ld h, l                                       ; $5f77: $65
    ccf                                           ; $5f78: $3f
    ld a, a                                       ; $5f79: $7f
    ret nc                                        ; $5f7a: $d0

    rst $08                                       ; $5f7b: $cf
    cp [hl]                                       ; $5f7c: $be
    adc e                                         ; $5f7d: $8b
    ld a, d                                       ; $5f7e: $7a
    db $d3                                        ; $5f7f: $d3
    inc e                                         ; $5f80: $1c
    jp Jump_000_0763                              ; $5f81: $c3 $63 $07


    dec l                                         ; $5f84: $2d
    ld [$b57f], sp                                ; $5f85: $08 $7f $b5
    rst $30                                       ; $5f88: $f7
    ld e, h                                       ; $5f89: $5c
    ld [hl], $b0                                  ; $5f8a: $36 $b0
    ld a, [$a6ef]                                 ; $5f8c: $fa $ef $a6
    add hl, sp                                    ; $5f8f: $39
    ret                                           ; $5f90: $c9


    rra                                           ; $5f91: $1f
    and c                                         ; $5f92: $a1
    ld e, d                                       ; $5f93: $5a
    dec [hl]                                      ; $5f94: $35
    sbc $ce                                       ; $5f95: $de $ce
    sbc b                                         ; $5f97: $98
    inc bc                                        ; $5f98: $03
    or e                                          ; $5f99: $b3
    dec sp                                        ; $5f9a: $3b
    or $dc                                        ; $5f9b: $f6 $dc
    cp l                                          ; $5f9d: $bd
    ld hl, sp-$15                                 ; $5f9e: $f8 $eb
    ld b, $7f                                     ; $5fa0: $06 $7f
    sub b                                         ; $5fa2: $90
    and $f3                                       ; $5fa3: $e6 $f3
    ld e, d                                       ; $5fa5: $5a
    ld d, b                                       ; $5fa6: $50
    pop af                                        ; $5fa7: $f1
    ld d, a                                       ; $5fa8: $57
    ld h, e                                       ; $5fa9: $63
    rst $30                                       ; $5faa: $f7
    ld [c], a                                     ; $5fab: $e2
    xor a                                         ; $5fac: $af
    rst $00                                       ; $5fad: $c7
    and a                                         ; $5fae: $a7
    rst $20                                       ; $5faf: $e7
    ld h, $7f                                     ; $5fb0: $26 $7f
    sub c                                         ; $5fb2: $91
    ld sp, $da43                                  ; $5fb3: $31 $43 $da
    sub c                                         ; $5fb6: $91
    inc h                                         ; $5fb7: $24
    ld b, h                                       ; $5fb8: $44
    ld l, a                                       ; $5fb9: $6f
    db $e3                                        ; $5fba: $e3
    ld l, l                                       ; $5fbb: $6d

Call_036_5fbc:
    ret                                           ; $5fbc: $c9


    ld c, d                                       ; $5fbd: $4a
    ld c, b                                       ; $5fbe: $48
    db $fc                                        ; $5fbf: $fc
    or $3e                                        ; $5fc0: $f6 $3e
    db $eb                                        ; $5fc2: $eb
    dec e                                         ; $5fc3: $1d
    sub d                                         ; $5fc4: $92
    inc bc                                        ; $5fc5: $03
    and e                                         ; $5fc6: $a3
    ld b, e                                       ; $5fc7: $43
    adc d                                         ; $5fc8: $8a
    rla                                           ; $5fc9: $17
    and l                                         ; $5fca: $a5
    ldh [$ad], a                                  ; $5fcb: $e0 $ad
    ld e, d                                       ; $5fcd: $5a
    db $ec                                        ; $5fce: $ec
    xor c                                         ; $5fcf: $a9
    ld b, $32                                     ; $5fd0: $06 $32
    sub h                                         ; $5fd2: $94
    dec [hl]                                      ; $5fd3: $35
    and d                                         ; $5fd4: $a2
    and l                                         ; $5fd5: $a5
    ld e, a                                       ; $5fd6: $5f
    ld de, $ded5                                  ; $5fd7: $11 $d5 $de
    adc [hl]                                      ; $5fda: $8e
    halt                                          ; $5fdb: $76
    sub $e3                                       ; $5fdc: $d6 $e3
    di                                            ; $5fde: $f3
    rst $20                                       ; $5fdf: $e7
    ld c, l                                       ; $5fe0: $4d
    ld [hl], e                                    ; $5fe1: $73
    add hl, bc                                    ; $5fe2: $09
    db $fc                                        ; $5fe3: $fc
    dec d                                         ; $5fe4: $15
    cpl                                           ; $5fe5: $2f
    ld c, d                                       ; $5fe6: $4a
    pop bc                                        ; $5fe7: $c1
    call $bcfc                                    ; $5fe8: $cd $fc $bc
    rst $20                                       ; $5feb: $e7
    ld l, [hl]                                    ; $5fec: $6e
    ldh a, [rTAC]                                 ; $5fed: $f0 $07
    push de                                       ; $5fef: $d5
    ld [$64dc], a                                 ; $5ff0: $ea $dc $64
    rl c                                          ; $5ff3: $cb $11
    db $eb                                        ; $5ff5: $eb
    inc [hl]                                      ; $5ff6: $34
    rlca                                          ; $5ff7: $07
    ld c, c                                       ; $5ff8: $49
    xor d                                         ; $5ff9: $aa
    ld l, h                                       ; $5ffa: $6c
    jr nz, jr_036_6071                            ; $5ffb: $20 $74

    cpl                                           ; $5ffd: $2f
    cp $ba                                        ; $5ffe: $fe $ba
    pop bc                                        ; $6000: $c1
    rra                                           ; $6001: $1f
    db $f4                                        ; $6002: $f4
    ld e, $d6                                     ; $6003: $1e $d6

Call_036_6005:
    sub [hl]                                      ; $6005: $96
    ld h, [hl]                                    ; $6006: $66
    ld a, a                                       ; $6007: $7f
    ret                                           ; $6008: $c9


    call Call_036_6a8c                            ; $6009: $cd $8c $6a
    ld [hl], l                                    ; $600c: $75
    push de                                       ; $600d: $d5
    ld [$357e], a                                 ; $600e: $ea $7e $35
    adc [hl]                                      ; $6011: $8e
    ld b, l                                       ; $6012: $45
    ei                                            ; $6013: $fb
    add sp, -$0f                                  ; $6014: $e8 $f1
    ld sp, hl                                     ; $6016: $f9
    add e                                         ; $6017: $83
    ld a, [de]                                    ; $6018: $1a
    sbc e                                         ; $6019: $9b
    ld a, l                                       ; $601a: $7d
    jp hl                                         ; $601b: $e9


    call $deb1                                    ; $601c: $cd $b1 $de
    adc $b3                                       ; $601f: $ce $b3
    ld h, b                                       ; $6021: $60
    ld b, c                                       ; $6022: $41
    cp $c2                                        ; $6023: $fe $c2
    ld a, [$8bdc]                                 ; $6025: $fa $dc $8b
    xor l                                         ; $6028: $ad
    ld d, [hl]                                    ; $6029: $56
    call Call_000_10fc                            ; $602a: $cd $fc $10
    ld a, d                                       ; $602d: $7a
    ld l, c                                       ; $602e: $69
    ld c, e                                       ; $602f: $4b
    add e                                         ; $6030: $83
    cp a                                          ; $6031: $bf
    inc [hl]                                      ; $6032: $34
    rlca                                          ; $6033: $07
    ld c, c                                       ; $6034: $49
    rra                                           ; $6035: $1f
    ld a, e                                       ; $6036: $7b
    ld c, a                                       ; $6037: $4f
    inc d                                         ; $6038: $14
    scf                                           ; $6039: $37
    di                                            ; $603a: $f3
    adc l                                         ; $603b: $8d
    ld h, $0a                                     ; $603c: $26 $0a
    inc c                                         ; $603e: $0c
    jp hl                                         ; $603f: $e9


    adc b                                         ; $6040: $88
    db $eb                                        ; $6041: $eb
    jr c, jr_036_60be                             ; $6042: $38 $7a

    xor d                                         ; $6044: $aa
    add c                                         ; $6045: $81
    inc c                                         ; $6046: $0c
    rst $20                                       ; $6047: $e7
    ld h, $5b                                     ; $6048: $26 $5b
    adc [hl]                                      ; $604a: $8e
    ld e, b                                       ; $604b: $58
    and a                                         ; $604c: $a7
    add hl, sp                                    ; $604d: $39
    and e                                         ; $604e: $a3
    ld b, e                                       ; $604f: $43
    ld a, d                                       ; $6050: $7a
    sub b                                         ; $6051: $90
    db $10                                        ; $6052: $10
    cp l                                          ; $6053: $bd
    dec a                                         ; $6054: $3d
    push de                                       ; $6055: $d5
    ld b, b                                       ; $6056: $40
    add [hl]                                      ; $6057: $86
    ld h, [hl]                                    ; $6058: $66
    ld a, [hl]                                    ; $6059: $7e

Jump_036_605a:
    sbc $73                                       ; $605a: $de $73
    sub e                                         ; $605c: $93
    ld a, a                                       ; $605d: $7f
    ld h, $a1                                     ; $605e: $26 $a1
    db $d3                                        ; $6060: $d3
    inc e                                         ; $6061: $1c
    ret                                           ; $6062: $c9


    sbc a                                         ; $6063: $9f
    db $ed                                        ; $6064: $ed
    ld hl, sp-$15                                 ; $6065: $f8 $eb
    adc [hl]                                      ; $6067: $8e
    db $f4                                        ; $6068: $f4
    ld h, [hl]                                    ; $6069: $66
    xor $28                                       ; $606a: $ee $28
    cp c                                          ; $606c: $b9
    ld b, $e3                                     ; $606d: $06 $e3
    cpl                                           ; $606f: $2f
    sub h                                         ; $6070: $94

jr_036_6071:
    jr nz, jr_036_60bc                            ; $6071: $20 $49

    ld [hl], l                                    ; $6073: $75
    cp b                                          ; $6074: $b8
    ld [hl], e                                    ; $6075: $73
    add hl, sp                                    ; $6076: $39
    ret nc                                        ; $6077: $d0

    ld d, l                                       ; $6078: $55
    xor e                                         ; $6079: $ab
    adc e                                         ; $607a: $8b
    adc [hl]                                      ; $607b: $8e
    push af                                       ; $607c: $f5
    halt                                          ; $607d: $76
    ld l, [hl]                                    ; $607e: $6e
    ld l, e                                       ; $607f: $6b
    dec a                                         ; $6080: $3d
    add [hl]                                      ; $6081: $86
    ld c, l                                       ; $6082: $4d
    inc d                                         ; $6083: $14
    ld l, a                                       ; $6084: $6f
    dec e                                         ; $6085: $1d
    sbc e                                         ; $6086: $9b
    ld a, c                                       ; $6087: $79
    ldh [$f3], a                                  ; $6088: $e0 $f3
    dec de                                        ; $608a: $1b
    sbc h                                         ; $608b: $9c
    ld c, e                                       ; $608c: $4b
    ld a, h                                       ; $608d: $7c
    ld c, d                                       ; $608e: $4a
    or c                                          ; $608f: $b1
    sub [hl]                                      ; $6090: $96
    ld h, d                                       ; $6091: $62
    ldh a, [$57]                                  ; $6092: $f0 $57
    rst $00                                       ; $6094: $c7
    ld [c], a                                     ; $6095: $e2
    ccf                                           ; $6096: $3f
    ld c, d                                       ; $6097: $4a
    sub b                                         ; $6098: $90
    ld e, $85                                     ; $6099: $1e $85
    inc [hl]                                      ; $609b: $34
    rlca                                          ; $609c: $07
    jp $f7a5                                      ; $609d: $c3 $a5 $f7


    db $10                                        ; $60a0: $10
    ld e, l                                       ; $60a1: $5d
    db $ed                                        ; $60a2: $ed
    db $ed                                        ; $60a3: $ed
    call c, $7ad6                                 ; $60a4: $dc $d6 $7a
    inc c                                         ; $60a7: $0c
    sbc e                                         ; $60a8: $9b
    jr z, @-$20                                   ; $60a9: $28 $de

    sbc $ff                                       ; $60ab: $de $ff
    inc de                                        ; $60ad: $13
    db $e4                                        ; $60ae: $e4
    rst $08                                       ; $60af: $cf
    or c                                          ; $60b0: $b1
    inc [hl]                                      ; $60b1: $34
    ld hl, sp-$15                                 ; $60b2: $f8 $eb
    and a                                         ; $60b4: $a7
    ret c                                         ; $60b5: $d8

    pop hl                                        ; $60b6: $e1
    add d                                         ; $60b7: $82
    ld h, b                                       ; $60b8: $60
    db $ec                                        ; $60b9: $ec
    and b                                         ; $60ba: $a0
    dec b                                         ; $60bb: $05

jr_036_60bc:
    rlca                                          ; $60bc: $07
    inc e                                         ; $60bd: $1c

jr_036_60be:
    add sp, $4d                                   ; $60be: $e8 $4d
    ld [hl], e                                    ; $60c0: $73
    and e                                         ; $60c1: $a3
    ld b, e                                       ; $60c2: $43
    adc d                                         ; $60c3: $8a
    rla                                           ; $60c4: $17
    and l                                         ; $60c5: $a5
    ldh [$ad], a                                  ; $60c6: $e0 $ad
    ld e, d                                       ; $60c8: $5a
    inc l                                         ; $60c9: $2c
    ld l, e                                       ; $60ca: $6b
    ld b, h                                       ; $60cb: $44
    ld c, e                                       ; $60cc: $4b
    cp a                                          ; $60cd: $bf
    ld [hl+], a                                   ; $60ce: $22
    xor d                                         ; $60cf: $aa
    cp l                                          ; $60d0: $bd
    dec e                                         ; $60d1: $1d
    db $ed                                        ; $60d2: $ed
    xor h                                         ; $60d3: $ac
    rst $00                                       ; $60d4: $c7
    rst $20                                       ; $60d5: $e7
    rst $08                                       ; $60d6: $cf
    ld a, e                                       ; $60d7: $7b
    xor $dd                                       ; $60d8: $ee $dd
    cp e                                          ; $60da: $bb
    cp l                                          ; $60db: $bd
    add a                                         ; $60dc: $87
    ld [hl], h                                    ; $60dd: $74
    add b                                         ; $60de: $80
    or h                                          ; $60df: $b4
    scf                                           ; $60e0: $37
    and b                                         ; $60e1: $a0
    pop bc                                        ; $60e2: $c1
    ld e, a                                       ; $60e3: $5f
    ld e, c                                       ; $60e4: $59
    rst $00                                       ; $60e5: $c7
    pop de                                        ; $60e6: $d1
    cp c                                          ; $60e7: $b9
    sub l                                         ; $60e8: $95
    inc e                                         ; $60e9: $1c
    ld b, l                                       ; $60ea: $45
    rst $00                                       ; $60eb: $c7
    or $7e                                        ; $60ec: $f6 $7e
    ld d, c                                       ; $60ee: $51
    ld [$734d], a                                 ; $60ef: $ea $4d $73
    inc hl                                        ; $60f2: $23
    ccf                                           ; $60f3: $3f
    ld a, a                                       ; $60f4: $7f
    db $e3                                        ; $60f5: $e3
    ld h, e                                       ; $60f6: $63
    inc sp                                        ; $60f7: $33
    dec b                                         ; $60f8: $05
    rst $20                                       ; $60f9: $e7
    adc $7e                                       ; $60fa: $ce $7e
    add hl, bc                                    ; $60fc: $09
    ld l, e                                       ; $60fd: $6b
    add c                                         ; $60fe: $81
    ld hl, $fe4d                                  ; $60ff: $21 $4d $fe
    sbc c                                         ; $6102: $99
    add h                                         ; $6103: $84
    xor $3d                                       ; $6104: $ee $3d
    ld b, h                                       ; $6106: $44
    ld d, a                                       ; $6107: $57
    rlca                                          ; $6108: $07
    ld a, a                                       ; $6109: $7f
    db $dd                                        ; $610a: $dd
    ld [hl], b                                    ; $610b: $70
    rlca                                          ; $610c: $07
    dec l                                         ; $610d: $2d
    sbc c                                         ; $610e: $99
    ld de, $43bd                                  ; $610f: $11 $bd $43
    ld [hl], d                                    ; $6112: $72
    or e                                          ; $6113: $b3
    ld a, a                                       ; $6114: $7f
    cp $30                                        ; $6115: $fe $30
    add b                                         ; $6117: $80
    db $ec                                        ; $6118: $ec
    xor l                                         ; $6119: $ad
    ld e, d                                       ; $611a: $5a
    ld e, l                                       ; $611b: $5d
    ld a, [c]                                     ; $611c: $f2
    db $fd                                        ; $611d: $fd
    cpl                                           ; $611e: $2f
    add hl, sp                                    ; $611f: $39
    or d                                          ; $6120: $b2
    ld [hl-], a                                   ; $6121: $32
    ld b, c                                       ; $6122: $41
    ld a, $31                                     ; $6123: $3e $31
    and b                                         ; $6125: $a0
    or $06                                        ; $6126: $f6 $06
    ld a, $f7                                     ; $6128: $3e $f7
    xor $a0                                       ; $612a: $ee $a0
    adc l                                         ; $612c: $8d
    daa                                           ; $612d: $27
    db $dd                                        ; $612e: $dd
    rst $08                                       ; $612f: $cf
    rra                                           ; $6130: $1f
    ld h, b                                       ; $6131: $60
    or l                                          ; $6132: $b5

jr_036_6133:
    ld [de], a                                    ; $6133: $12
    cp $aa                                        ; $6134: $fe $aa
    jp Jump_036_7465                              ; $6136: $c3 $65 $74


    and $d5                                       ; $6139: $e6 $d5
    and l                                         ; $613b: $a5
    ld e, a                                       ; $613c: $5f
    ld de, $2430                                  ; $613d: $11 $30 $24
    rlca                                          ; $6140: $07
    call z, $0770                                 ; $6141: $cc $70 $07
    dec l                                         ; $6144: $2d
    ld [$de7e], sp                                ; $6145: $08 $7e $de
    ld l, [hl]                                    ; $6148: $6e
    ldh a, [rTAC]                                 ; $6149: $f0 $07
    rst $20                                       ; $614b: $e7
    adc [hl]                                      ; $614c: $8e
    sub d                                         ; $614d: $92
    adc e                                         ; $614e: $8b
    jr nc, jr_036_6133                            ; $614f: $30 $e2

    dec h                                         ; $6151: $25
    ld l, c                                       ; $6152: $69
    sub e                                         ; $6153: $93
    cp a                                          ; $6154: $bf
    ret z                                         ; $6155: $c8

    sbc b                                         ; $6156: $98
    adc [hl]                                      ; $6157: $8e
    cp d                                          ; $6158: $ba
    nop                                           ; $6159: $00
    inc l                                         ; $615a: $2c
    dec c                                         ; $615b: $0d
    add h                                         ; $615c: $84
    ld a, [hl]                                    ; $615d: $7e
    ld b, l                                       ; $615e: $45
    ld d, h                                       ; $615f: $54
    ei                                            ; $6160: $fb
    add sp, $68                                   ; $6161: $e8 $68
    ld h, a                                       ; $6163: $67
    sbc l                                         ; $6164: $9d
    cp b                                          ; $6165: $b8
    sub [hl]                                      ; $6166: $96
    cp [hl]                                       ; $6167: $be
    rrca                                          ; $6168: $0f
    ld [hl], l                                    ; $6169: $75
    xor h                                         ; $616a: $ac
    or a                                          ; $616b: $b7
    ld c, c                                       ; $616c: $49
    ld a, [c]                                     ; $616d: $f2
    ld sp, hl                                     ; $616e: $f9
    di                                            ; $616f: $f3
    ld c, $c9                                     ; $6170: $0e $c9
    ld bc, $3fa3                                  ; $6172: $01 $a3 $3f
    sub [hl]                                      ; $6175: $96
    jr nz, jr_036_61c1                            ; $6176: $20 $49

    dec e                                         ; $6178: $1d
    db $db                                        ; $6179: $db
    ld a, c                                       ; $617a: $79
    ld d, $63                                     ; $617b: $16 $63
    ld [hl], a                                    ; $617d: $77
    ld c, b                                       ; $617e: $48
    inc de                                        ; $617f: $13
    ld hl, sp-$15                                 ; $6180: $f8 $eb
    db $dd                                        ; $6182: $dd
    and d                                         ; $6183: $a2
    db $dd                                        ; $6184: $dd
    inc hl                                        ; $6185: $23
    and b                                         ; $6186: $a0
    and e                                         ; $6187: $a3
    db $e4                                        ; $6188: $e4
    ld [hl+], a                                   ; $6189: $22
    adc h                                         ; $618a: $8c
    ld a, b                                       ; $618b: $78
    ld c, c                                       ; $618c: $49
    sbc c                                         ; $618d: $99
    ei                                            ; $618e: $fb
    rlca                                          ; $618f: $07
    ld e, h                                       ; $6190: $5c
    db $fd                                        ; $6191: $fd
    add l                                         ; $6192: $85
    call nz, $8a5a                                ; $6193: $c4 $5a $8a
    inc bc                                        ; $6196: $03
    ld h, d                                       ; $6197: $62
    cp $bc                                        ; $6198: $fe $bc
    ld b, e                                       ; $619a: $43
    ld [hl], d                                    ; $619b: $72
    call z, $ebf0                                 ; $619c: $cc $f0 $eb
    ld a, [hl+]                                   ; $619f: $2a
    add hl, sp                                    ; $61a0: $39
    ld d, a                                       ; $61a1: $57
    rst $38                                       ; $61a2: $ff
    ld h, d                                       ; $61a3: $62
    xor h                                         ; $61a4: $ac
    ld l, $86                                     ; $61a5: $2e $86
    add a                                         ; $61a7: $87
    db $e4                                        ; $61a8: $e4
    and e                                         ; $61a9: $a3
    ld b, e                                       ; $61aa: $43
    adc d                                         ; $61ab: $8a
    or c                                          ; $61ac: $b1
    cp d                                          ; $61ad: $ba
    cpl                                           ; $61ae: $2f
    inc l                                         ; $61af: $2c
    ld d, l                                       ; $61b0: $55
    dec bc                                        ; $61b1: $0b
    sbc $21                                       ; $61b2: $de $21
    add hl, sp                                    ; $61b4: $39
    daa                                           ; $61b5: $27
    xor b                                         ; $61b6: $a8
    and e                                         ; $61b7: $a3
    adc h                                         ; $61b8: $8c
    sub h                                         ; $61b9: $94
    call nz, $0d6f                                ; $61ba: $c4 $6f $0d
    add h                                         ; $61bd: $84
    ld [$3d8f], a                                 ; $61be: $ea $8f $3d

jr_036_61c1:
    push de                                       ; $61c1: $d5
    ld b, b                                       ; $61c2: $40
    add [hl]                                      ; $61c3: $86
    sub d                                         ; $61c4: $92
    ld e, b                                       ; $61c5: $58
    dec bc                                        ; $61c6: $0b
    jp nz, $ed5f                                  ; $61c7: $c2 $5f $ed

    ld c, l                                       ; $61ca: $4d
    ld [hl], e                                    ; $61cb: $73
    or e                                          ; $61cc: $b3
    ld e, a                                       ; $61cd: $5f
    db $fc                                        ; $61ce: $fc
    ld [hl], l                                    ; $61cf: $75
    add e                                         ; $61d0: $83
    ccf                                           ; $61d1: $3f
    ld l, b                                       ; $61d2: $68
    or $97                                        ; $61d3: $f6 $97
    sbc h                                         ; $61d5: $9c
    halt                                          ; $61d6: $76
    ld [hl], h                                    ; $61d7: $74
    ld c, b                                       ; $61d8: $48
    rrca                                          ; $61d9: $0f
    ld [de], a                                    ; $61da: $12
    and d                                         ; $61db: $a2
    or a                                          ; $61dc: $b7
    and a                                         ; $61dd: $a7
    cp $22                                        ; $61de: $fe $22
    ld a, a                                       ; $61e0: $7f
    inc [hl]                                      ; $61e1: $34
    inc a                                         ; $61e2: $3c
    ld c, $0d                                     ; $61e3: $0e $0d
    cp $ba                                        ; $61e5: $fe $ba
    rla                                           ; $61e7: $17
    ld a, a                                       ; $61e8: $7f
    db $dd                                        ; $61e9: $dd
    rst $08                                       ; $61ea: $cf
    ld e, a                                       ; $61eb: $5f
    add hl, de                                    ; $61ec: $19
    ld h, l                                       ; $61ed: $65
    inc c                                         ; $61ee: $0c
    ld b, c                                       ; $61ef: $41
    call nz, Call_036_4bea                        ; $61f0: $c4 $ea $4b
    ld c, d                                       ; $61f3: $4a
    ld d, [hl]                                    ; $61f4: $56
    ld b, d                                       ; $61f5: $42
    ld [c], a                                     ; $61f6: $e2
    or a                                          ; $61f7: $b7
    inc [hl]                                      ; $61f8: $34
    rlca                                          ; $61f9: $07
    ret                                           ; $61fa: $c9


    sub [hl]                                      ; $61fb: $96
    inc hl                                        ; $61fc: $23
    sub $e7                                       ; $61fd: $d6 $e7
    ld b, $7f                                     ; $61ff: $06 $7f
    ld a, l                                       ; $6201: $7d
    sbc a                                         ; $6202: $9f
    ld [hl], l                                    ; $6203: $75
    rrca                                          ; $6204: $0f
    rst $00                                       ; $6205: $c7
    ld a, d                                       ; $6206: $7a
    dec sp                                        ; $6207: $3b
    rst $30                                       ; $6208: $f7
    sub a                                         ; $6209: $97
    ld d, l                                       ; $620a: $55
    rst $00                                       ; $620b: $c7
    ei                                            ; $620c: $fb
    sbc e                                         ; $620d: $9b
    push af                                       ; $620e: $f5
    ld h, d                                       ; $620f: $62
    cp l                                          ; $6210: $bd
    adc l                                         ; $6211: $8d
    and e                                         ; $6212: $a3
    ld [hl], e                                    ; $6213: $73
    dec hl                                        ; $6214: $2b
    add hl, sp                                    ; $6215: $39
    ld a, [hl-]                                   ; $6216: $3a
    ld l, b                                       ; $6217: $68
    ret                                           ; $6218: $c9


    adc h                                         ; $6219: $8c
    add sp, $1d                                   ; $621a: $e8 $1d
    sub d                                         ; $621c: $92
    inc bc                                        ; $621d: $03
    or e                                          ; $621e: $b3
    ld a, [de]                                    ; $621f: $1a
    ret z                                         ; $6220: $c8

    ret nc                                        ; $6221: $d0

    rst $30                                       ; $6222: $f7
    reti                                          ; $6223: $d9


    ld b, $7f                                     ; $6224: $06 $7f
    or l                                          ; $6226: $b5
    ld [c], a                                     ; $6227: $e2
    xor a                                         ; $6228: $af
    sub [hl]                                      ; $6229: $96
    ld a, e                                       ; $622a: $7b
    jr nz, jr_036_62ac                            ; $622b: $20 $7f

    jr nc, jr_036_6253                            ; $622d: $30 $24

    rlca                                          ; $622f: $07
    ld c, c                                       ; $6230: $49
    pop hl                                        ; $6231: $e1
    adc [hl]                                      ; $6232: $8e
    ld [de], a                                    ; $6233: $12
    ld [de], a                                    ; $6234: $12
    and c                                         ; $6235: $a1
    ld [hl], $f3                                  ; $6236: $36 $f3
    ld d, $63                                     ; $6238: $16 $63
    ld [hl], l                                    ; $623a: $75
    rlca                                          ; $623b: $07
    cpl                                           ; $623c: $2f
    ld h, c                                       ; $623d: $61
    dec e                                         ; $623e: $1d
    ld b, e                                       ; $623f: $43
    ld a, [hl-]                                   ; $6240: $3a
    db $ec                                        ; $6241: $ec
    ld d, e                                       ; $6242: $53
    db $dd                                        ; $6243: $dd
    rst $30                                       ; $6244: $f7
    ld e, c                                       ; $6245: $59
    ld l, a                                       ; $6246: $6f
    rst $28                                       ; $6247: $ef
    ld hl, $5e65                                  ; $6248: $21 $65 $5e
    rst $00                                       ; $624b: $c7
    ld h, c                                       ; $624c: $61
    ld hl, $e12c                                  ; $624d: $21 $2c $e1
    dec e                                         ; $6250: $1d
    sub d                                         ; $6251: $92
    inc bc                                        ; $6252: $03

jr_036_6253:
    or e                                          ; $6253: $b3
    cp $73                                        ; $6254: $fe $73
    adc l                                         ; $6256: $8d
    cp l                                          ; $6257: $bd
    add a                                         ; $6258: $87
    add sp, -$1e                                  ; $6259: $e8 $e2
    push de                                       ; $625b: $d5
    ld c, h                                       ; $625c: $4c
    ld b, c                                       ; $625d: $41
    rst $28                                       ; $625e: $ef
    pop hl                                        ; $625f: $e1
    ld l, [hl]                                    ; $6260: $6e
    ld hl, sp-$08                                 ; $6261: $f8 $f8
    xor e                                         ; $6263: $ab
    ld a, e                                       ; $6264: $7b
    ld hl, sp+$49                                 ; $6265: $f8 $49
    ld e, a                                       ; $6267: $5f
    ld e, b                                       ; $6268: $58
    adc d                                         ; $6269: $8a
    adc [hl]                                      ; $626a: $8e
    ld c, l                                       ; $626b: $4d
    sbc e                                         ; $626c: $9b
    db $f4                                        ; $626d: $f4
    push hl                                       ; $626e: $e5
    dec hl                                        ; $626f: $2b
    and d                                         ; $6270: $a2
    rst $28                                       ; $6271: $ef
    ld b, e                                       ; $6272: $43
    sbc c                                         ; $6273: $99
    ei                                            ; $6274: $fb
    rlca                                          ; $6275: $07
    call c, Call_036_7f53                         ; $6276: $dc $53 $7f
    ld d, a                                       ; $6279: $57
    ld c, c                                       ; $627a: $49
    inc sp                                        ; $627b: $33
    rst $18                                       ; $627c: $df
    cp a                                          ; $627d: $bf
    add b                                         ; $627e: $80
    ld hl, $01cd                                  ; $627f: $21 $cd $01
    ret                                           ; $6282: $c9


    ld e, a                                       ; $6283: $5f
    ld h, h                                       ; $6284: $64
    call z, $f7b9                                 ; $6285: $cc $b9 $f7
    sub b                                         ; $6288: $90
    cp [hl]                                       ; $6289: $be
    rst $08                                       ; $628a: $cf
    ld a, d                                       ; $628b: $7a
    ld a, e                                       ; $628c: $7b
    ld [$5eef], a                                 ; $628d: $ea $ef $5e
    db $fc                                        ; $6290: $fc
    ld [hl], l                                    ; $6291: $75
    add e                                         ; $6292: $83
    ccf                                           ; $6293: $3f
    xor b                                         ; $6294: $a8
    ld h, e                                       ; $6295: $63
    adc a                                         ; $6296: $8f
    ld c, a                                       ; $6297: $4f
    db $eb                                        ; $6298: $eb
    ld e, b                                       ; $6299: $58
    ld [hl], a                                    ; $629a: $77
    add sp, $5b                                   ; $629b: $e8 $5b
    or l                                          ; $629d: $b5
    reti                                          ; $629e: $d9


    cp c                                          ; $629f: $b9
    rla                                           ; $62a0: $17
    ld e, e                                       ; $62a1: $5b
    and $fe                                       ; $62a2: $e6 $fe
    ld bc, $08f7                                  ; $62a4: $01 $f7 $08
    nop                                           ; $62a7: $00
    ld l, d                                       ; $62a8: $6a
    cp c                                          ; $62a9: $b9
    dec sp                                        ; $62aa: $3b
    xor b                                         ; $62ab: $a8

jr_036_62ac:
    ld a, e                                       ; $62ac: $7b
    ld [hl], a                                    ; $62ad: $77
    adc h                                         ; $62ae: $8c
    ld [hl], e                                    ; $62af: $73
    xor $3d                                       ; $62b0: $ee $3d
    ld e, h                                       ; $62b2: $5c
    ld c, e                                       ; $62b3: $4b
    rst $38                                       ; $62b4: $ff
    halt                                          ; $62b5: $76
    ld d, $aa                                     ; $62b6: $16 $aa
    ld [$4c62], sp                                ; $62b8: $08 $62 $4c
    rlca                                          ; $62bb: $07
    cpl                                           ; $62bc: $2f
    ld h, c                                       ; $62bd: $61
    dec e                                         ; $62be: $1d
    or a                                          ; $62bf: $b7
    db $eb                                        ; $62c0: $eb
    jr c, jr_036_62e3                             ; $62c1: $38 $20

    call Call_036_4301                            ; $62c3: $cd $01 $43
    ld e, c                                       ; $62c6: $59
    ld c, e                                       ; $62c7: $4b
    rrca                                          ; $62c8: $0f
    rst $00                                       ; $62c9: $c7
    cp d                                          ; $62ca: $ba
    or e                                          ; $62cb: $b3
    ld a, a                                       ; $62cc: $7f
    ld h, c                                       ; $62cd: $61
    ld e, l                                       ; $62ce: $5d
    ld d, b                                       ; $62cf: $50
    ret nc                                        ; $62d0: $d0

    inc hl                                        ; $62d1: $23
    and h                                         ; $62d2: $a4
    ld l, a                                       ; $62d3: $6f
    ld l, h                                       ; $62d4: $6c
    ld c, d                                       ; $62d5: $4a
    inc bc                                        ; $62d6: $03
    ld sp, hl                                     ; $62d7: $f9
    db $eb                                        ; $62d8: $eb
    db $dd                                        ; $62d9: $dd
    cpl                                           ; $62da: $2f
    ld l, l                                       ; $62db: $6d
    jp nc, $06c7                                  ; $62dc: $d2 $c7 $06

    ld b, d                                       ; $62df: $42
    ld sp, $b3f8                                  ; $62e0: $31 $f8 $b3

jr_036_62e3:
    call nc, $3db1                                ; $62e3: $d4 $b1 $3d
    pop bc                                        ; $62e6: $c1
    pop bc                                        ; $62e7: $c1
    sbc a                                         ; $62e8: $9f
    or a                                          ; $62e9: $b7
    ld a, [$2413]                                 ; $62ea: $fa $13 $24
    add hl, sp                                    ; $62ed: $39
    ld d, a                                       ; $62ee: $57
    ld a, a                                       ; $62ef: $7f
    call nz, Call_000_3b1a                        ; $62f0: $c4 $1a $3b
    xor [hl]                                      ; $62f3: $ae
    ld h, h                                       ; $62f4: $64
    sub [hl]                                      ; $62f5: $96
    ld h, [hl]                                    ; $62f6: $66
    ld h, [hl]                                    ; $62f7: $66
    cp l                                          ; $62f8: $bd
    cp l                                          ; $62f9: $bd
    add a                                         ; $62fa: $87
    add sp, $34                                   ; $62fb: $e8 $34
    rlca                                          ; $62fd: $07
    ret                                           ; $62fe: $c9


    sbc a                                         ; $62ff: $9f
    jp nc, Jump_036_486b                          ; $6300: $d2 $6b $48

    add hl, de                                    ; $6303: $19
    cp l                                          ; $6304: $bd
    pop hl                                        ; $6305: $e1
    ld [hl], c                                    ; $6306: $71
    and b                                         ; $6307: $a0
    ld a, e                                       ; $6308: $7b
    pop af                                        ; $6309: $f1
    ld d, a                                       ; $630a: $57
    rst $00                                       ; $630b: $c7
    or $ee                                        ; $630c: $f6 $ee
    adc l                                         ; $630e: $8d
    xor h                                         ; $630f: $ac
    ld a, [hl-]                                   ; $6310: $3a

Call_036_6311:
Jump_036_6311:
    ld e, h                                       ; $6311: $5c
    and $b5                                       ; $6312: $e6 $b5
    db $eb                                        ; $6314: $eb
    ld [hl], e                                    ; $6315: $73
    ld e, c                                       ; $6316: $59
    rrca                                          ; $6317: $0f
    ld e, [hl]                                    ; $6318: $5e
    jp nc, $d278                                  ; $6319: $d2 $78 $d2

    db $fd                                        ; $631c: $fd
    db $fc                                        ; $631d: $fc
    dec [hl]                                      ; $631e: $35
    ld sp, hl                                     ; $631f: $f9
    dec hl                                        ; $6320: $2b
    ld [hl], h                                    ; $6321: $74
    adc c                                         ; $6322: $89
    rst $38                                       ; $6323: $ff
    inc b                                         ; $6324: $04
    adc $bd                                       ; $6325: $ce $bd
    ld a, a                                       ; $6327: $7f
    sbc h                                         ; $6328: $9c
    ld sp, $c907                                  ; $6329: $31 $07 $c9
    ccf                                           ; $632c: $3f
    sub e                                         ; $632d: $93
    ret nc                                        ; $632e: $d0

    rst $20                                       ; $632f: $e7
    sbc $bd                                       ; $6330: $de $bd
    db $db                                        ; $6332: $db
    ld d, e                                       ; $6333: $53
    ld a, l                                       ; $6334: $7d
    db $fc                                        ; $6335: $fc
    push de                                       ; $6336: $d5
    db $fd                                        ; $6337: $fd
    db $db                                        ; $6338: $db
    ld e, c                                       ; $6339: $59
    xor b                                         ; $633a: $a8

Jump_036_633b:
    ld [hl+], a                                   ; $633b: $22
    adc b                                         ; $633c: $88
    ld sp, $bc1d                                  ; $633d: $31 $1d $bc
    add h                                         ; $6340: $84
    ld [hl], l                                    ; $6341: $75
    call c, $e3ae                                 ; $6342: $dc $ae $e3
    ldh a, [$f6]                                  ; $6345: $f0 $f6
    ld e, $94                                     ; $6347: $1e $94
    sbc [hl]                                      ; $6349: $9e
    ld a, e                                       ; $634a: $7b
    rrca                                          ; $634b: $0f
    rst $30                                       ; $634c: $f7
    jr nz, jr_036_6370                            ; $634d: $20 $21

    add d                                         ; $634f: $82
    ld l, e                                       ; $6350: $6b
    xor c                                         ; $6351: $a9
    cp $d8                                        ; $6352: $fe $d8
    cp a                                          ; $6354: $bf
    ld [$d4a6], sp                                ; $6355: $08 $a6 $d4
    dec sp                                        ; $6358: $3b
    ld h, e                                       ; $6359: $63
    ld c, $c9                                     ; $635a: $0e $c9
    sbc a                                         ; $635c: $9f
    ld b, d                                       ; $635d: $42
    pop af                                        ; $635e: $f1
    ld a, [hl-]                                   ; $635f: $3a
    rst $30                                       ; $6360: $f7
    ld e, $6e                                     ; $6361: $1e $6e
    ldh a, [$57]                                  ; $6363: $f0 $57
    ld h, e                                       ; $6365: $63
    cp a                                          ; $6366: $bf
    ld [c], a                                     ; $6367: $e2
    xor a                                         ; $6368: $af
    jp c, Jump_036_6747                           ; $6369: $da $47 $67

    ld de, $da1f                                  ; $636c: $11 $1f $da
    ld e, e                                       ; $636f: $5b

jr_036_6370:
    res 1, l                                      ; $6370: $cb $8d
    ld h, $0a                                     ; $6372: $26 $0a
    db $f4                                        ; $6374: $f4
    ld a, l                                       ; $6375: $7d
    halt                                          ; $6376: $76
    ld a, [$0732]                                 ; $6377: $fa $32 $07
    jp nz, $f1b4                                  ; $637a: $c2 $b4 $f1

    adc [hl]                                      ; $637d: $8e
    ld a, [hl-]                                   ; $637e: $3a
    sub [hl]                                      ; $637f: $96
    ld hl, sp-$04                                 ; $6380: $f8 $fc
    ld [hl], l                                    ; $6382: $75
    db $fc                                        ; $6383: $fc
    ld l, l                                       ; $6384: $6d
    rst $28                                       ; $6385: $ef
    sbc $c8                                       ; $6386: $de $c8
    ld a, [hl-]                                   ; $6388: $3a
    ld d, d                                       ; $6389: $52
    ld h, c                                       ; $638a: $61
    call c, Call_036_783a                         ; $638b: $dc $3a $78
    ret                                           ; $638e: $c9


    cp c                                          ; $638f: $b9
    ld l, d                                       ; $6390: $6a
    ld [hl], l                                    ; $6391: $75
    dec l                                         ; $6392: $2d
    cp l                                          ; $6393: $bd
    add a                                         ; $6394: $87
    add sp, $7e                                   ; $6395: $e8 $7e
    ld b, l                                       ; $6397: $45
    ld d, h                                       ; $6398: $54
    ld e, e                                       ; $6399: $5b
    jp z, $5304                                   ; $639a: $ca $04 $53

    ld [$163a], a                                 ; $639d: $ea $3a $16
    ld sp, hl                                     ; $63a0: $f9
    and e                                         ; $63a1: $a3
    sbc a                                         ; $63a2: $9f
    ldh a, [$a6]                                  ; $63a3: $f0 $a6
    sbc l                                         ; $63a5: $9d
    ld c, l                                       ; $63a6: $4d
    ld hl, $7644                                  ; $63a7: $21 $44 $76
    xor [hl]                                      ; $63aa: $ae
    cp $88                                        ; $63ab: $fe $88
    or l                                          ; $63ad: $b5
    db $f4                                        ; $63ae: $f4
    ld [$f6a8], sp                                ; $63af: $08 $a8 $f6
    pop de                                        ; $63b2: $d1
    pop hl                                        ; $63b3: $e1
    pop de                                        ; $63b4: $d1
    xor a                                         ; $63b5: $af

jr_036_63b6:
    adc b                                         ; $63b6: $88
    call z, $15f0                                 ; $63b7: $cc $f0 $15
    ld a, a                                       ; $63ba: $7f
    ret nc                                        ; $63bb: $d0

    ld b, b                                       ; $63bc: $40
    jr c, jr_036_63b6                             ; $63bd: $38 $f7

    ld d, e                                       ; $63bf: $53
    ld l, h                                       ; $63c0: $6c
    ldh a, [$57]                                  ; $63c1: $f0 $57
    ld h, e                                       ; $63c3: $63
    adc a                                         ; $63c4: $8f
    sub b                                         ; $63c5: $90
    cp $a3                                        ; $63c6: $fe $a3
    add a                                         ; $63c8: $87
    inc bc                                        ; $63c9: $03
    pop bc                                        ; $63ca: $c1
    db $db                                        ; $63cb: $db
    call z, $d277                                 ; $63cc: $cc $77 $d2
    ld [hl+], a                                   ; $63cf: $22
    ld a, a                                       ; $63d0: $7f
    ret nc                                        ; $63d1: $d0

    rst $30                                       ; $63d2: $f7
    reti                                          ; $63d3: $d9


    inc [hl]                                      ; $63d4: $34
    rlca                                          ; $63d5: $07
    and e                                         ; $63d6: $a3
    ld b, e                                       ; $63d7: $43
    ld a, d                                       ; $63d8: $7a
    sub b                                         ; $63d9: $90
    db $10                                        ; $63da: $10
    cp l                                          ; $63db: $bd
    ld c, l                                       ; $63dc: $4d
    ld d, d                                       ; $63dd: $52
    rlca                                          ; $63de: $07
    ld c, e                                       ; $63df: $4b
    xor l                                         ; $63e0: $ad
    cpl                                           ; $63e1: $2f
    ld [hl], c                                    ; $63e2: $71
    ccf                                           ; $63e3: $3f
    and l                                         ; $63e4: $a5
    add $5a                                       ; $63e5: $c6 $5a
    ret z                                         ; $63e7: $c8

    adc c                                         ; $63e8: $89
    adc a                                         ; $63e9: $8f
    ld a, d                                       ; $63ea: $7a
    db $d3                                        ; $63eb: $d3
    ld c, $c7                                     ; $63ec: $0e $c7
    sbc $bf                                       ; $63ee: $de $bf
    sub h                                         ; $63f0: $94
    cp c                                          ; $63f1: $b9
    ld a, a                                       ; $63f2: $7f
    ret nz                                        ; $63f3: $c0

    rst $20                                       ; $63f4: $e7
    ld l, d                                       ; $63f5: $6a
    ld c, e                                       ; $63f6: $4b
    sub e                                         ; $63f7: $93
    ld a, a                                       ; $63f8: $7f
    ld h, $a1                                     ; $63f9: $26 $a1
    xor e                                         ; $63fb: $ab
    ccf                                           ; $63fc: $3f
    ld [hl], $49                                  ; $63fd: $36 $49
    ld a, $7f                                     ; $63ff: $3e $7f
    ld e, [hl]                                    ; $6401: $5e
    ld b, a                                       ; $6402: $47
    inc sp                                        ; $6403: $33
    ld h, a                                       ; $6404: $67
    ld h, [hl]                                    ; $6405: $66
    cp l                                          ; $6406: $bd
    ld a, l                                       ; $6407: $7d
    rra                                           ; $6408: $1f
    jp nc, Jump_036_431c                          ; $6409: $d2 $1c $43

    ld e, c                                       ; $640c: $59
    ld c, e                                       ; $640d: $4b
    rst $28                                       ; $640e: $ef
    ld hl, $07bd                                  ; $640f: $21 $bd $07
    and d                                         ; $6412: $a2
    or a                                          ; $6413: $b7
    dec de                                        ; $6414: $1b
    db $fc                                        ; $6415: $fc
    pop bc                                        ; $6416: $c1
    cp c                                          ; $6417: $b9
    rst $30                                       ; $6418: $f7
    xor e                                         ; $6419: $ab
    ld c, c                                       ; $641a: $49
    ld [$a960], a                                 ; $641b: $ea $60 $a9
    push af                                       ; $641e: $f5
    dec h                                         ; $641f: $25
    add $0e                                       ; $6420: $c6 $0e
    inc hl                                        ; $6422: $23
    ret                                           ; $6423: $c9


    push de                                       ; $6424: $d5
    ld b, b                                       ; $6425: $40
    ld c, b                                       ; $6426: $48
    ld [hl], e                                    ; $6427: $73
    ld c, c                                       ; $6428: $49
    ld a, a                                       ; $6429: $7f
    or a                                          ; $642a: $b7
    rlca                                          ; $642b: $07
    add hl, bc                                    ; $642c: $09
    pop de                                        ; $642d: $d1
    db $db                                        ; $642e: $db
    ld a, e                                       ; $642f: $7b
    ld c, b                                       ; $6430: $48
    adc l                                         ; $6431: $8d
    dec [hl]                                      ; $6432: $35
    db $eb                                        ; $6433: $eb
    dec l                                         ; $6434: $2d
    ld a, [hl+]                                   ; $6435: $2a
    cp $bc                                        ; $6436: $fe $bc
    ld l, c                                       ; $6438: $69
    dec sp                                        ; $6439: $3b
    ld a, [hl-]                                   ; $643a: $3a
    and h                                         ; $643b: $a4
    ldh [$a0], a                                  ; $643c: $e0 $a0
    sbc $aa                                       ; $643e: $de $aa
    push bc                                       ; $6440: $c5
    ld a, [hl]                                    ; $6441: $7e
    ld b, l                                       ; $6442: $45
    ld d, h                                       ; $6443: $54
    xor l                                         ; $6444: $ad
    ld l, $88                                     ; $6445: $2e $88
    add hl, bc                                    ; $6447: $09
    jp nz, $b55b                                  ; $6448: $c2 $5b $b5

    ld e, b                                       ; $644b: $58
    db $fd                                        ; $644c: $fd
    ld [hl], a                                    ; $644d: $77
    dec de                                        ; $644e: $1b
    ld e, e                                       ; $644f: $5b
    ld b, [hl]                                    ; $6450: $46
    add hl, de                                    ; $6451: $19
    ld b, e                                       ; $6452: $43
    db $10                                        ; $6453: $10
    or c                                          ; $6454: $b1
    ld a, [$de92]                                 ; $6455: $fa $92 $de
    jp $92da                                      ; $6458: $c3 $da $92


    and $a3                                       ; $645b: $e6 $a3
    dec e                                         ; $645d: $1d
    db $e3                                        ; $645e: $e3
    ld b, b                                       ; $645f: $40
    or l                                          ; $6460: $b5
    ld a, [hl-]                                   ; $6461: $3a
    rst $30                                       ; $6462: $f7
    ld a, [hl]                                    ; $6463: $7e
    dec [hl]                                      ; $6464: $35
    ld c, c                                       ; $6465: $49
    dec e                                         ; $6466: $1d
    inc l                                         ; $6467: $2c
    or l                                          ; $6468: $b5
    cp [hl]                                       ; $6469: $be
    call nz, $840d                                ; $646a: $c4 $0d $84
    add hl, de                                    ; $646d: $19
    ld [hl], e                                    ; $646e: $73
    or e                                          ; $646f: $b3
    dec sp                                        ; $6470: $3b
    or $dc                                        ; $6471: $f6 $dc
    ldh [$af], a                                  ; $6473: $e0 $af
    rst $28                                       ; $6475: $ef
    or e                                          ; $6476: $b3
    ld l, [hl]                                    ; $6477: $6e
    cp h                                          ; $6478: $bc
    xor l                                         ; $6479: $ad
    or $36                                        ; $647a: $f6 $36
    ei                                            ; $647c: $fb
    ld c, e                                       ; $647d: $4b
    or $76                                        ; $647e: $f6 $76
    xor $9f                                       ; $6480: $ee $9f
    ld [hl], l                                    ; $6482: $75
    cpl                                           ; $6483: $2f
    cp $ba                                        ; $6484: $fe $ba

Jump_036_6486:
    pop bc                                        ; $6486: $c1
    rra                                           ; $6487: $1f
    inc [hl]                                      ; $6488: $34
    inc sp                                        ; $6489: $33
    ld a, [$d379]                                 ; $648a: $fa $79 $d3
    inc e                                         ; $648d: $1c
    add hl, bc                                    ; $648e: $09
    db $fc                                        ; $648f: $fc
    push af                                       ; $6490: $f5
    ld a, l                                       ; $6491: $7d
    sub $cd                                       ; $6492: $d6 $cd
    db $fc                                        ; $6494: $fc
    add $16                                       ; $6495: $c6 $16
    jr c, @+$59                                   ; $6497: $38 $57

    ld a, a                                       ; $6499: $7f
    call nz, $aa5a                                ; $649a: $c4 $5a $aa
    dec h                                         ; $649d: $25

jr_036_649e:
    ld [hl], $f3                                  ; $649e: $36 $f3
    ld [$9dde], a                                 ; $64a0: $ea $de $9d
    push af                                       ; $64a3: $f5
    ld d, b                                       ; $64a4: $50

Jump_036_64a5:
    adc b                                         ; $64a5: $88
    ldh [$34], a                                  ; $64a6: $e0 $34
    rlca                                          ; $64a8: $07
    inc hl                                        ; $64a9: $23
    add $de                                       ; $64aa: $c6 $de
    push af                                       ; $64ac: $f5
    sub [hl]                                      ; $64ad: $96
    add hl, de                                    ; $64ae: $19
    xor [hl]                                      ; $64af: $ae
    ld e, d                                       ; $64b0: $5a
    db $ec                                        ; $64b1: $ec
    ld h, b                                       ; $64b2: $60
    sbc b                                         ; $64b3: $98
    ld d, d                                       ; $64b4: $52
    rlca                                          ; $64b5: $07

jr_036_64b6:
    ld a, a                                       ; $64b6: $7f
    ld d, b                                       ; $64b7: $50
    db $fc                                        ; $64b8: $fc
    sbc c                                         ; $64b9: $99
    rst $30                                       ; $64ba: $f7
    call c, $d5fb                                 ; $64bb: $dc $fb $d5
    ld a, e                                       ; $64be: $7b
    ld c, b                                       ; $64bf: $48
    ld b, a                                       ; $64c0: $47
    ret                                           ; $64c1: $c9


    ld b, l                                       ; $64c2: $45
    jr jr_036_64b6                                ; $64c3: $18 $f1

    sub d                                         ; $64c5: $92
    ld h, $a9                                     ; $64c6: $26 $a9
    add e                                         ; $64c8: $83
    and l                                         ; $64c9: $a5
    sub $97                                       ; $64ca: $d6 $97
    cp b                                          ; $64cc: $b8
    ld b, h                                       ; $64cd: $44
    xor h                                         ; $64ce: $ac
    or $f6                                        ; $64cf: $f6 $f6
    ld [hl], $f6                                  ; $64d1: $36 $f6
    xor [hl]                                      ; $64d3: $ae
    ld [hl], a                                    ; $64d4: $77
    add $1c                                       ; $64d5: $c6 $1c
    add hl, bc                                    ; $64d7: $09
    db $fc                                        ; $64d8: $fc
    push af                                       ; $64d9: $f5
    ld c, [hl]                                    ; $64da: $4e
    ld [de], a                                    ; $64db: $12
    db $ed                                        ; $64dc: $ed
    ld a, [de]                                    ; $64dd: $1a
    ld l, e                                       ; $64de: $6b
    push bc                                       ; $64df: $c5
    ld e, a                                       ; $64e0: $5f
    pop af                                        ; $64e1: $f1
    ld h, a                                       ; $64e2: $67
    sbc $73                                       ; $64e3: $de $73
    rst $28                                       ; $64e5: $ef
    sbc $6d                                       ; $64e6: $de $6d
    ldh a, [$57]                                  ; $64e8: $f0 $57
    ld h, e                                       ; $64ea: $63
    rst $28                                       ; $64eb: $ef
    inc h                                         ; $64ec: $24
    ld b, h                                       ; $64ed: $44
    ld [hl], b                                    ; $64ee: $70
    jp c, $d2e1                                   ; $64ef: $da $e1 $d2

    ld b, b                                       ; $64f2: $40
    xor b                                         ; $64f3: $a8
    ld h, e                                       ; $64f4: $63
    dec sp                                        ; $64f5: $3b
    jr jr_036_649e                                ; $64f6: $18 $a6

    xor h                                         ; $64f8: $ac
    sub c                                         ; $64f9: $91
    cp a                                          ; $64fa: $bf
    ld b, h                                       ; $64fb: $44
    ld [bc], a                                    ; $64fc: $02
    ld [hl+], a                                   ; $64fd: $22
    inc bc                                        ; $64fe: $03
    ld c, e                                       ; $64ff: $4b
    ld b, a                                       ; $6500: $47
    cp $dd                                        ; $6501: $fe $dd
    inc [hl]                                      ; $6503: $34
    rlca                                          ; $6504: $07
    inc hl                                        ; $6505: $23
    add $de                                       ; $6506: $c6 $de
    push af                                       ; $6508: $f5
    sub [hl]                                      ; $6509: $96
    add hl, de                                    ; $650a: $19
    xor [hl]                                      ; $650b: $ae
    ld e, d                                       ; $650c: $5a
    db $ec                                        ; $650d: $ec
    ld h, b                                       ; $650e: $60
    sbc b                                         ; $650f: $98
    ld d, d                                       ; $6510: $52
    rlca                                          ; $6511: $07
    ld a, a                                       ; $6512: $7f
    ld d, b                                       ; $6513: $50
    db $fc                                        ; $6514: $fc

jr_036_6515:
    sbc c                                         ; $6515: $99
    rst $30                                       ; $6516: $f7
    call c, $d5fb                                 ; $6517: $dc $fb $d5
    ld d, c                                       ; $651a: $51
    ld [hl], d                                    ; $651b: $72
    ld de, $bc46                                  ; $651c: $11 $46 $bc
    and h                                         ; $651f: $a4
    ld c, c                                       ; $6520: $49

Jump_036_6521:
    ld [$a960], a                                 ; $6521: $ea $60 $a9
    push af                                       ; $6524: $f5
    dec h                                         ; $6525: $25
    ld l, $06                                     ; $6526: $2e $06
    ld a, a                                       ; $6528: $7f
    db $fd                                        ; $6529: $fd
    adc d                                         ; $652a: $8a
    ld a, b                                       ; $652b: $78
    adc c                                         ; $652c: $89
    inc d                                         ; $652d: $14
    ld h, [hl]                                    ; $652e: $66
    call z, $2301                                 ; $652f: $cc $01 $23
    rst $38                                       ; $6532: $ff
    or $7d                                        ; $6533: $f6 $7d
    add sp, $11                                   ; $6535: $e8 $11
    ld d, d                                       ; $6537: $52
    dec bc                                        ; $6538: $0b
    add hl, sp                                    ; $6539: $39
    pop af                                        ; $653a: $f1
    ld d, c                                       ; $653b: $51
    jr c, jr_036_6515                             ; $653c: $38 $d7

    jp nc, $8483                                  ; $653e: $d2 $83 $84

    add sp, $6a                                   ; $6541: $e8 $6a
    adc c                                         ; $6543: $89
    call $babc                                    ; $6544: $cd $bc $ba
    ld [hl], a                                    ; $6547: $77
    ld h, a                                       ; $6548: $67
    ld l, c                                       ; $6549: $69
    inc de                                        ; $654a: $13
    ld hl, sp-$15                                 ; $654b: $f8 $eb
    db $dd                                        ; $654d: $dd
    ld sp, $4f4e                                  ; $654e: $31 $4e $4f
    or l                                          ; $6551: $b5
    cp [hl]                                       ; $6552: $be
    ld hl, sp-$15                                 ; $6553: $f8 $eb
    ld b, $7f                                     ; $6555: $06 $7f
    ld [hl], b                                    ; $6557: $70
    xor $c5                                       ; $6558: $ee $c5
    sub $52                                       ; $655a: $d6 $52
    db $e4                                        ; $655c: $e4
    rst $28                                       ; $655d: $ef
    jp c, Jump_000_05aa                           ; $655e: $da $aa $05

    set 3, l                                      ; $6561: $cb $dd
    add hl, de                                    ; $6563: $19
    ld [hl], $10                                  ; $6564: $36 $10
    jp nc, $091c                                  ; $6566: $d2 $1c $09

    db $fc                                        ; $6569: $fc
    push af                                       ; $656a: $f5
    ld d, b                                       ; $656b: $50
    adc b                                         ; $656c: $88
    dec a                                         ; $656d: $3d
    ld [bc], a                                    ; $656e: $02
    ld a, [hl-]                                   ; $656f: $3a
    ld c, d                                       ; $6570: $4a
    ld l, $c2                                     ; $6571: $2e $c2
    adc b                                         ; $6573: $88
    sub a                                         ; $6574: $97
    inc [hl]                                      ; $6575: $34
    ld c, c                                       ; $6576: $49
    dec e                                         ; $6577: $1d
    inc l                                         ; $6578: $2c
    or l                                          ; $6579: $b5
    cp [hl]                                       ; $657a: $be
    call nz, $01c5                                ; $657b: $c4 $c5 $01
    ld sp, $de7f                                  ; $657e: $31 $7f $de
    or h                                          ; $6581: $b4
    jp $81b1                                      ; $6582: $c3 $b1 $81


    ld d, b                                       ; $6585: $50
    db $f4                                        ; $6586: $f4
    sub e                                         ; $6587: $93
    ld l, d                                       ; $6588: $6a
    adc c                                         ; $6589: $89
    call Call_036_7abc                            ; $658a: $cd $bc $7a
    ld c, b                                       ; $658d: $48
    ld c, $a3                                     ; $658e: $0e $a3
    db $e4                                        ; $6590: $e4
    ld [hl+], a                                   ; $6591: $22
    adc h                                         ; $6592: $8c
    ld a, b                                       ; $6593: $78
    ld c, c                                       ; $6594: $49
    sub e                                         ; $6595: $93
    call nc, Call_036_52c1                        ; $6596: $d4 $c1 $52
    db $eb                                        ; $6599: $eb
    ld c, e                                       ; $659a: $4b
    call c, Call_036_6840                         ; $659b: $dc $40 $68
    ld l, h                                       ; $659e: $6c
    ld h, a                                       ; $659f: $67
    cp e                                          ; $65a0: $bb
    ld d, [hl]                                    ; $65a1: $56
    ld e, a                                       ; $65a2: $5f
    sbc e                                         ; $65a3: $9b
    halt                                          ; $65a4: $76
    cp b                                          ; $65a5: $b8
    db $f4                                        ; $65a6: $f4
    ld a, l                                       ; $65a7: $7d
    xor b                                         ; $65a8: $a8
    ld h, e                                       ; $65a9: $63
    ld e, l                                       ; $65aa: $5d
    rlca                                          ; $65ab: $07
    adc l                                         ; $65ac: $8d
    call z, $fd9d                                 ; $65ad: $cc $9d $fd
    di                                            ; $65b0: $f3
    daa                                           ; $65b1: $27
    pop bc                                        ; $65b2: $c1
    rra                                           ; $65b3: $1f
    ld [hl], h                                    ; $65b4: $74
    ldh a, [$3a]                                  ; $65b5: $f0 $3a
    ld a, d                                       ; $65b7: $7a
    jp nz, $ac57                                  ; $65b8: $c2 $57 $ac

    push hl                                       ; $65bb: $e5
    adc b                                         ; $65bc: $88
    dec c                                         ; $65bd: $0d
    inc b                                         ; $65be: $04
    ld c, e                                       ; $65bf: $4b
    xor b                                         ; $65c0: $a8
    and e                                         ; $65c1: $a3
    sub [hl]                                      ; $65c2: $96
    rst $30                                       ; $65c3: $f7
    add hl, hl                                    ; $65c4: $29
    ld a, b                                       ; $65c5: $78
    db $d3                                        ; $65c6: $d3
    adc [hl]                                      ; $65c7: $8e
    cp $a2                                        ; $65c8: $fe $a2
    adc [hl]                                      ; $65ca: $8e
    sbc $83                                       ; $65cb: $de $83
    ld d, d                                       ; $65cd: $52
    add h                                         ; $65ce: $84
    ld l, d                                       ; $65cf: $6a
    push de                                       ; $65d0: $d5
    ld a, b                                       ; $65d1: $78
    ld e, e                                       ; $65d2: $5b
    db $ed                                        ; $65d3: $ed
    db $dd                                        ; $65d4: $dd
    ld [c], a                                     ; $65d5: $e2
    ld d, l                                       ; $65d6: $55
    dec l                                         ; $65d7: $2d
    or c                                          ; $65d8: $b1
    sbc c                                         ; $65d9: $99
    ld d, a                                       ; $65da: $57
    rla                                           ; $65db: $17
    rlca                                          ; $65dc: $07
    call nz, Call_036_79fc                        ; $65dd: $c4 $fc $79
    ld h, a                                       ; $65e0: $67
    call z, $c301                                 ; $65e1: $cc $01 $c3
    or c                                          ; $65e4: $b1
    add c                                         ; $65e5: $81
    ret nc                                        ; $65e6: $d0

    cp e                                          ; $65e7: $bb
    inc sp                                        ; $65e8: $33
    ld l, a                                       ; $65e9: $6f
    or l                                          ; $65ea: $b5
    adc a                                         ; $65eb: $8f

Jump_036_65ec:
    and [hl]                                      ; $65ec: $a6
    ld l, c                                       ; $65ed: $69
    ld e, d                                       ; $65ee: $5a
    ld h, $38                                     ; $65ef: $26 $38
    or [hl]                                       ; $65f1: $b6
    jp c, $d1d2                                   ; $65f2: $da $d2 $d1

    ld c, $f4                                     ; $65f5: $0e $f4
    and [hl]                                      ; $65f7: $a6
    add hl, sp                                    ; $65f8: $39
    and e                                         ; $65f9: $a3
    xor a                                         ; $65fa: $af
    ld h, a                                       ; $65fb: $67
    jp hl                                         ; $65fc: $e9


    db $dd                                        ; $65fd: $dd
    ld sp, $540e                                  ; $65fe: $31 $0e $54
    xor e                                         ; $6601: $ab
    ld [$783f], a                                 ; $6602: $ea $3f $78
    db $ed                                        ; $6605: $ed
    adc h                                         ; $6606: $8c
    add hl, sp                                    ; $6607: $39
    ld c, c                                       ; $6608: $49
    rra                                           ; $6609: $1f
    dec de                                        ; $660a: $1b
    ld [$d53d], sp                                ; $660b: $08 $3d $d5
    ld b, b                                       ; $660e: $40
    add [hl]                                      ; $660f: $86
    ld l, [hl]                                    ; $6610: $6e
    ldh a, [rTAC]                                 ; $6611: $f0 $07

Jump_036_6613:
    cp l                                          ; $6613: $bd
    rlca                                          ; $6614: $07
    ld a, a                                       ; $6615: $7f
    db $10                                        ; $6616: $10
    ld e, c                                       ; $6617: $59
    ld e, d                                       ; $6618: $5a
    and $fe                                       ; $6619: $e6 $fe
    and [hl]                                      ; $661b: $a6
    ld l, c                                       ; $661c: $69

Jump_036_661d:
    jp c, Jump_036_77c4                           ; $661d: $da $c4 $77

    sbc h                                         ; $6620: $9c
    ld a, e                                       ; $6621: $7b
    xor d                                         ; $6622: $aa
    adc a                                         ; $6623: $8f
    cp a                                          ; $6624: $bf
    cp d                                          ; $6625: $ba
    rst $30                                       ; $6626: $f7
    and b                                         ; $6627: $a0
    or h                                          ; $6628: $b4
    pop af                                        ; $6629: $f1
    or [hl]                                       ; $662a: $b6
    ld [$d47e], sp                                ; $662b: $08 $7e $d4
    sbc e                                         ; $662e: $9b
    and $b3                                       ; $662f: $e6 $b3
    add a                                         ; $6631: $87
    adc a                                         ; $6632: $8f
    cp a                                          ; $6633: $bf
    cp d                                          ; $6634: $ba

Call_036_6635:
    add c                                         ; $6635: $81
    ret nc                                        ; $6636: $d0

    ret c                                         ; $6637: $d8

    ld l, d                                       ; $6638: $6a
    ld c, e                                       ; $6639: $4b
    ld h, a                                       ; $663a: $67
    ei                                            ; $663b: $fb
    sbc c                                         ; $663c: $99
    rst $08                                       ; $663d: $cf
    push de                                       ; $663e: $d5
    sbc $32                                       ; $663f: $de $32
    pop bc                                        ; $6641: $c1
    or c                                          ; $6642: $b1
    dec h                                         ; $6643: $25
    xor e                                         ; $6644: $ab
    ld [hl+], a                                   ; $6645: $22
    ld hl, sp+$51                                 ; $6646: $f8 $51
    ld l, a                                       ; $6648: $6f
    jp c, Jump_036_7251                           ; $6649: $da $51 $72

    ld de, $bc46                                  ; $664c: $11 $46 $bc
    and h                                         ; $664f: $a4
    ld c, c                                       ; $6650: $49
    ld [$a960], a                                 ; $6651: $ea $60 $a9
    push af                                       ; $6654: $f5
    dec h                                         ; $6655: $25
    xor $ed                                       ; $6656: $ee $ed
    ld a, [hl-]                                   ; $6658: $3a
    ld c, $e8                                     ; $6659: $0e $e8
    ld [hl], c                                    ; $665b: $71
    ld c, c                                       ; $665c: $49
    and $2d                                       ; $665d: $e6 $2d
    ld e, c                                       ; $665f: $59
    add hl, bc                                    ; $6660: $09
    adc c                                         ; $6661: $89
    rst $18                                       ; $6662: $df
    jp nc, $f026                                  ; $6663: $d2 $26 $f0

    rst $10                                       ; $6666: $d7
    db $db                                        ; $6667: $db
    rst $18                                       ; $6668: $df
    db $ed                                        ; $6669: $ed
    ld de, $c1d2                                  ; $666a: $11 $d2 $c1
    ld c, e                                       ; $666d: $4b
    db $10                                        ; $666e: $10
    ld c, h                                       ; $666f: $4c
    xor c                                         ; $6670: $a9
    rst $30                                       ; $6671: $f7
    ld e, h                                       ; $6672: $5c
    db $fd                                        ; $6673: $fd
    ld de, $296b                                  ; $6674: $11 $6b $29
    ld b, $7f                                     ; $6677: $06 $7f
    db $dd                                        ; $6679: $dd
    adc e                                         ; $667a: $8b
    cp a                                          ; $667b: $bf
    ld a, [hl]                                    ; $667c: $7e
    add l                                         ; $667d: $85
    inc b                                         ; $667e: $04
    jp hl                                         ; $667f: $e9


    add hl, bc                                    ; $6680: $09
    dec c                                         ; $6681: $0d
    cp $7a                                        ; $6682: $fe $7a
    inc b                                         ; $6684: $04
    ld d, h                                       ; $6685: $54
    add a                                         ; $6686: $87
    sub h                                         ; $6687: $94
    call nz, $aa5a                                ; $6688: $c4 $5a $aa
    jp Jump_036_7e65                              ; $668b: $c3 $65 $7e


    cp $5c                                        ; $668e: $fe $5c
    or l                                          ; $6690: $b5
    ld h, b                                       ; $6691: $60
    ld a, c                                       ; $6692: $79
    sbc a                                         ; $6693: $9f
    add d                                         ; $6694: $82
    or a                                          ; $6695: $b7
    rst $00                                       ; $6696: $c7
    ret c                                         ; $6697: $d8

    db $fc                                        ; $6698: $fc
    add c                                         ; $6699: $81
    db $d3                                        ; $669a: $d3
    inc e                                         ; $669b: $1c
    and e                                         ; $669c: $a3
    cp l                                          ; $669d: $bd
    ld e, e                                       ; $669e: $5b
    inc c                                         ; $669f: $0c
    rst $30                                       ; $66a0: $f7
    xor $18                                       ; $66a1: $ee $18
    rst $20                                       ; $66a3: $e7
    ld e, h                                       ; $66a4: $5c
    db $fd                                        ; $66a5: $fd
    ld de, $a49b                                  ; $66a6: $11 $9b $a4
    ld c, $96                                     ; $66a9: $0e $96
    ld e, d                                       ; $66ab: $5a
    ld e, a                                       ; $66ac: $5f
    ld [c], a                                     ; $66ad: $e2
    sbc $9d                                       ; $66ae: $de $9d
    dec [hl]                                      ; $66b0: $35
    db $10                                        ; $66b1: $10
    adc $d5                                       ; $66b2: $ce $d5
    ld a, a                                       ; $66b4: $7f
    or a                                          ; $66b5: $b7
    ld [hl], a                                    ; $66b6: $77
    rst $00                                       ; $66b7: $c7
    jr c, jr_036_66ef                             ; $66b8: $38 $35

    or $2b                                        ; $66ba: $f6 $2b
    cp $ca                                        ; $66bc: $fe $ca
    call c, $e03f                                 ; $66be: $dc $3f $e0
    or h                                          ; $66c1: $b4
    jp $f7a5                                      ; $66c2: $c3 $a5 $f7


    db $10                                        ; $66c5: $10
    db $dd                                        ; $66c6: $dd
    cp l                                          ; $66c7: $bd
    ld hl, sp-$55                                 ; $66c8: $f8 $ab
    ld c, $a3                                     ; $66ca: $0e $a3
    dec sp                                        ; $66cc: $3b
    ei                                            ; $66cd: $fb
    rst $20                                       ; $66ce: $e7
    rrca                                          ; $66cf: $0f
    ld a, [hl-]                                   ; $66d0: $3a
    ld l, b                                       ; $66d1: $68
    ld b, c                                       ; $66d2: $41
    push bc                                       ; $66d3: $c5
    sbc a                                         ; $66d4: $9f
    rst $30                                       ; $66d5: $f7
    ld e, h                                       ; $66d6: $5c
    db $ed                                        ; $66d7: $ed
    dec l                                         ; $66d8: $2d
    inc de                                        ; $66d9: $13
    inc e                                         ; $66da: $1c
    ld e, e                                       ; $66db: $5b
    or d                                          ; $66dc: $b2
    ld a, [hl+]                                   ; $66dd: $2a
    add d                                         ; $66de: $82
    rra                                           ; $66df: $1f
    push af                                       ; $66e0: $f5
    ld c, $c9                                     ; $66e1: $0e $c9
    ld bc, $7f49                                  ; $66e3: $01 $49 $7f
    or a                                          ; $66e6: $b7
    add e                                         ; $66e7: $83
    ld d, $54                                     ; $66e8: $16 $54
    db $fc                                        ; $66ea: $fc
    cp c                                          ; $66eb: $b9
    pop bc                                        ; $66ec: $c1
    rst $18                                       ; $66ed: $df
    cp c                                          ; $66ee: $b9

jr_036_66ef:
    jp c, $265b                                   ; $66ef: $da $5b $26

    jr c, @-$48                                   ; $66f2: $38 $b6

    sbc a                                         ; $66f4: $9f
    ld h, d                                       ; $66f5: $62
    add a                                         ; $66f6: $87
    dec bc                                        ; $66f7: $0b
    add d                                         ; $66f8: $82
    and l                                         ; $66f9: $a5
    ld h, h                                       ; $66fa: $64
    ld d, l                                       ; $66fb: $55
    sub $b7                                       ; $66fc: $d6 $b7
    db $eb                                        ; $66fe: $eb
    jr c, @-$42                                   ; $66ff: $38 $bc

    ld l, c                                       ; $6701: $69
    ld c, $09                                     ; $6702: $0e $09
    db $fc                                        ; $6704: $fc
    push af                                       ; $6705: $f5
    halt                                          ; $6706: $76
    dec e                                         ; $6707: $1d
    add a                                         ; $6708: $87
    ld a, e                                       ; $6709: $7b
    inc b                                         ; $670a: $04

Jump_036_670b:
    and h                                         ; $670b: $a4
    add hl, sp                                    ; $670c: $39
    add hl, bc                                    ; $670d: $09
    db $fc                                        ; $670e: $fc
    push af                                       ; $670f: $f5
    dec hl                                        ; $6710: $2b
    cp $86                                        ; $6711: $fe $86
    db $e4                                        ; $6713: $e4
    and e                                         ; $6714: $a3
    ld b, e                                       ; $6715: $43
    ld a, d                                       ; $6716: $7a
    sub b                                         ; $6717: $90
    db $10                                        ; $6718: $10
    cp l                                          ; $6719: $bd
    and l                                         ; $671a: $a5
    rla                                           ; $671b: $17
    and [hl]                                      ; $671c: $a6
    dec e                                         ; $671d: $1d
    dec e                                         ; $671e: $1d
    ld d, d                                       ; $671f: $52
    cp h                                          ; $6720: $bc
    jr z, jr_036_6728                             ; $6721: $28 $05

    ld l, a                                       ; $6723: $6f
    or l                                          ; $6724: $b5
    or a                                          ; $6725: $b7
    di                                            ; $6726: $f3
    inc e                                         ; $6727: $1c

jr_036_6728:
    rst $28                                       ; $6728: $ef
    ld l, a                                       ; $6729: $6f
    sub $bf                                       ; $672a: $d6 $bf
    db $e4                                        ; $672c: $e4
    ldh a, [$f3]                                  ; $672d: $f0 $f3
    ld d, [hl]                                    ; $672f: $56
    xor l                                         ; $6730: $ad
    ld l, [hl]                                    ; $6731: $6e
    sbc d                                         ; $6732: $9a
    and [hl]                                      ; $6733: $a6
    add hl, sp                                    ; $6734: $39
    ld [hl], e                                    ; $6735: $73
    adc e                                         ; $6736: $8b
    rlca                                          ; $6737: $07
    cpl                                           ; $6738: $2f
    sbc c                                         ; $6739: $99
    or c                                          ; $673a: $b1
    jp $a102                                      ; $673b: $c3 $02 $a1


    ld e, d                                       ; $673e: $5a
    push af                                       ; $673f: $f5
    add l                                         ; $6740: $85
    and l                                         ; $6741: $a5
    ld l, d                                       ; $6742: $6a
    pop bc                                        ; $6743: $c1
    dec sp                                        ; $6744: $3b
    ld h, e                                       ; $6745: $63
    sub e                                         ; $6746: $93

Jump_036_6747:
    ccf                                           ; $6747: $3f
    and l                                         ; $6748: $a5
    rst $10                                       ; $6749: $d7
    cp c                                          ; $674a: $b9
    rst $30                                       ; $674b: $f7
    adc a                                         ; $674c: $8f
    dec a                                         ; $674d: $3d
    ld a, $7f                                     ; $674e: $3e $7f
    ret nc                                        ; $6750: $d0

    ld a, b                                       ; $6751: $78
    ld d, d                                       ; $6752: $52
    db $ed                                        ; $6753: $ed
    db $dd                                        ; $6754: $dd
    cp [hl]                                       ; $6755: $be
    or b                                          ; $6756: $b0
    call z, $0398                                 ; $6757: $cc $98 $03
    ld b, e                                       ; $675a: $43
    ld sp, hl                                     ; $675b: $f9
    db $eb                                        ; $675c: $eb
    ld b, $7f                                     ; $675d: $06 $7f
    add b                                         ; $675f: $80
    rst $20                                       ; $6760: $e7
    adc $ee                                       ; $6761: $ce $ee
    pop bc                                        ; $6763: $c1
    and b                                         ; $6764: $a0
    call nc, Call_000_0e69                        ; $6765: $d4 $69 $0e
    add hl, bc                                    ; $6768: $09
    ld c, a                                       ; $6769: $4f
    sbc d                                         ; $676a: $9a
    ld sp, hl                                     ; $676b: $f9
    ld b, c                                       ; $676c: $41
    rst $28                                       ; $676d: $ef
    ld h, c                                       ; $676e: $61
    ld l, l                                       ; $676f: $6d
    xor c                                         ; $6770: $a9
    ld a, h                                       ; $6771: $7c
    add l                                         ; $6772: $85
    rst $20                                       ; $6773: $e7
    ld [hl+], a                                   ; $6774: $22
    call nz, $c071                                ; $6775: $c4 $71 $c0
    ld hl, sp+$38                                 ; $6778: $f8 $38
    ld h, e                                       ; $677a: $63
    ld c, $b3                                     ; $677b: $0e $b3
    dec sp                                        ; $677d: $3b
    or $5c                                        ; $677e: $f6 $5c
    db $fd                                        ; $6780: $fd
    or c                                          ; $6781: $b1
    and b                                         ; $6782: $a0
    or [hl]                                       ; $6783: $b6
    rst $30                                       ; $6784: $f7
    sub b                                         ; $6785: $90
    ld l, [hl]                                    ; $6786: $6e
    ldh a, [rTAC]                                 ; $6787: $f0 $07
    ld l, c                                       ; $6789: $69
    add hl, de                                    ; $678a: $19
    db $fd                                        ; $678b: $fd
    ld a, [de]                                    ; $678c: $1a
    adc e                                         ; $678d: $8b
    dec e                                         ; $678e: $1d
    ld h, [hl]                                    ; $678f: $66
    add b                                         ; $6790: $80
    ld [hl], e                                    ; $6791: $73
    ld h, a                                       ; $6792: $67
    rst $30                                       ; $6793: $f7
    ld h, b                                       ; $6794: $60
    ld d, b                                       ; $6795: $50
    ld [$3921], a                                 ; $6796: $ea $21 $39
    add hl, bc                                    ; $6799: $09
    ld c, a                                       ; $679a: $4f
    ld a, d                                       ; $679b: $7a
    dec de                                        ; $679c: $1b
    ld a, e                                       ; $679d: $7b
    rla                                           ; $679e: $17
    cp d                                          ; $679f: $ba
    pop bc                                        ; $67a0: $c1
    rra                                           ; $67a1: $1f
    ld d, h                                       ; $67a2: $54
    cp [hl]                                       ; $67a3: $be
    jp nz, $cfcc                                  ; $67a4: $c2 $cc $cf

    sbc e                                         ; $67a7: $9b
    sub [hl]                                      ; $67a8: $96
    add hl, de                                    ; $67a9: $19
    xor $dd                                       ; $67aa: $ee $dd
    and d                                         ; $67ac: $a2
    cp l                                          ; $67ad: $bd
    or l                                          ; $67ae: $b5
    ld [c], a                                     ; $67af: $e2
    xor a                                         ; $67b0: $af
    rst $30                                       ; $67b1: $f7
    or b                                          ; $67b2: $b0
    or [hl]                                       ; $67b3: $b6
    call nc, Call_000_0f72                        ; $67b4: $d4 $72 $0f
    db $e4                                        ; $67b7: $e4
    rst $08                                       ; $67b8: $cf
    ld e, e                                       ; $67b9: $5b
    or l                                          ; $67ba: $b5
    cp d                                          ; $67bb: $ba
    pop af                                        ; $67bc: $f1
    and h                                         ; $67bd: $a4
    ld [hl], a                                    ; $67be: $77
    adc e                                         ; $67bf: $8b
    ld [hl], $74                                  ; $67c0: $36 $74
    cpl                                           ; $67c2: $2f
    cp $7a                                        ; $67c3: $fe $7a
    ld hl, sp+$49                                 ; $67c5: $f8 $49
    ld b, a                                       ; $67c7: $47
    xor c                                         ; $67c8: $a9
    cp l                                          ; $67c9: $bd
    add c                                         ; $67ca: $81
    dec sp                                        ; $67cb: $3b
    ld l, b                                       ; $67cc: $68
    and c                                         ; $67cd: $a1
    ld h, c                                       ; $67ce: $61
    pop af                                        ; $67cf: $f1
    and [hl]                                      ; $67d0: $a6
    add hl, sp                                    ; $67d1: $39
    ld c, c                                       ; $67d2: $49
    rra                                           ; $67d3: $1f
    dec sp                                        ; $67d4: $3b
    ld l, b                                       ; $67d5: $68
    ld b, c                                       ; $67d6: $41
    ldh a, [rSCX]                                 ; $67d7: $f0 $43
    xor b                                         ; $67d9: $a8
    ld d, [hl]                                    ; $67da: $56
    db $dd                                        ; $67db: $dd
    ldh [rIF], a                                  ; $67dc: $e0 $0f
    adc $35                                       ; $67de: $ce $35
    ld [hl], $10                                  ; $67e0: $36 $10
    ld a, d                                       ; $67e2: $7a
    rrca                                          ; $67e3: $0f
    cp $20                                        ; $67e4: $fe $20
    or d                                          ; $67e6: $b2
    inc [hl]                                      ; $67e7: $34
    rlca                                          ; $67e8: $07
    add hl, bc                                    ; $67e9: $09
    db $fc                                        ; $67ea: $fc
    sub l                                         ; $67eb: $95
    ld a, [hl]                                    ; $67ec: $7e
    ld b, h                                       ; $67ed: $44
    rst $10                                       ; $67ee: $d7
    adc d                                         ; $67ef: $8a
    cp a                                          ; $67f0: $bf
    ld l, [hl]                                    ; $67f1: $6e
    ldh a, [rTAC]                                 ; $67f2: $f0 $07
    call $bcfc                                    ; $67f4: $cd $fc $bc
    ld l, c                                       ; $67f7: $69
    inc de                                        ; $67f8: $13
    ld hl, sp-$15                                 ; $67f9: $f8 $eb
    ei                                            ; $67fb: $fb
    xor h                                         ; $67fc: $ac
    dec sp                                        ; $67fd: $3b
    ld a, b                                       ; $67fe: $78

jr_036_67ff:
    ld l, l                                       ; $67ff: $6d
    xor l                                         ; $6800: $ad
    ld hl, sp+$6b                                 ; $6801: $f8 $6b
    ld h, [hl]                                    ; $6803: $66
    ld l, d                                       ; $6804: $6a
    ld e, c                                       ; $6805: $59
    jr c, jr_036_67ff                             ; $6806: $38 $f7

    ld e, $ee                                     ; $6808: $1e $ee

jr_036_680a:
    pop af                                        ; $680a: $f1
    or a                                          ; $680b: $b7
    jr jr_036_680a                                ; $680c: $18 $fc

    dec [hl]                                      ; $680e: $35
    ld [hl], e                                    ; $680f: $73
    and $ed                                       ; $6810: $e6 $ed
    ld e, a                                       ; $6812: $5f
    ld l, l                                       ; $6813: $6d
    ld [hl], c                                    ; $6814: $71
    rst $28                                       ; $6815: $ef
    ld a, [hl]                                    ; $6816: $7e
    ld [bc], a                                    ; $6817: $02
    ld l, c                                       ; $6818: $69
    inc de                                        ; $6819: $13
    ld hl, sp-$15                                 ; $681a: $f8 $eb
    db $dd                                        ; $681c: $dd
    and d                                         ; $681d: $a2
    db $dd                                        ; $681e: $dd
    call z, $b799                                 ; $681f: $cc $99 $b7
    ld d, [hl]                                    ; $6822: $56
    db $fc                                        ; $6823: $fc
    push af                                       ; $6824: $f5
    sub [hl]                                      ; $6825: $96
    ld a, b                                       ; $6826: $78
    inc c                                         ; $6827: $0c
    db $10                                        ; $6828: $10
    sbc $21                                       ; $6829: $de $21
    add hl, sp                                    ; $682b: $39
    ld [hl], e                                    ; $682c: $73
    dec hl                                        ; $682d: $2b
    add sp, $11                                   ; $682e: $e8 $11
    jp nc, Jump_000_1cd9                          ; $6830: $d2 $d9 $1c

    ld a, [$cfdc]                                 ; $6833: $fa $dc $cf
    ld e, d                                       ; $6836: $5a
    ld a, [de]                                    ; $6837: $1a
    db $fc                                        ; $6838: $fc
    push af                                       ; $6839: $f5
    ld d, b                                       ; $683a: $50
    adc b                                         ; $683b: $88
    push de                                       ; $683c: $d5
    rra                                           ; $683d: $1f
    ld a, e                                       ; $683e: $7b
    xor d                                         ; $683f: $aa

Call_036_6840:
    add c                                         ; $6840: $81
    inc c                                         ; $6841: $0c
    dec a                                         ; $6842: $3d
    ld a, $7f                                     ; $6843: $3e $7f
    sbc $73                                       ; $6845: $de $73
    ld h, a                                       ; $6847: $67
    rst $30                                       ; $6848: $f7

jr_036_6849:
    ld h, b                                       ; $6849: $60
    ld d, b                                       ; $684a: $50
    ld [$a3b4], a                                 ; $684b: $ea $b4 $a3
    inc c                                         ; $684e: $0c
    ld [de], a                                    ; $684f: $12
    ld b, h                                       ; $6850: $44
    ld [hl], b                                    ; $6851: $70
    add l                                         ; $6852: $85
    sbc l                                         ; $6853: $9d
    ei                                            ; $6854: $fb
    add d                                         ; $6855: $82
    ld c, a                                       ; $6856: $4f
    dec d                                         ; $6857: $15
    ld c, $c9                                     ; $6858: $0e $c9
    ld bc, $81cc                                  ; $685a: $01 $cc $81
    ld b, h                                       ; $685d: $44
    or b                                          ; $685e: $b0
    db $f4                                        ; $685f: $f4
    ld e, $82                                     ; $6860: $1e $82
    ld d, b                                       ; $6862: $50
    xor l                                         ; $6863: $ad
    ld l, d                                       ; $6864: $6a
    db $ec                                        ; $6865: $ec
    and b                                         ; $6866: $a0
    dec b                                         ; $6867: $05
    pop bc                                        ; $6868: $c1
    rst $08                                       ; $6869: $cf
    ld a, e                                       ; $686a: $7b
    xor $ec                                       ; $686b: $ee $ec
    ld e, $0c                                     ; $686d: $1e $0c
    ld c, d                                       ; $686f: $4a
    sbc l                                         ; $6870: $9d
    and $49                                       ; $6871: $e6 $49
    pop hl                                        ; $6873: $e1
    adc $4d                                       ; $6874: $ce $4d
    sub d                                         ; $6876: $92
    ld [hl+], a                                   ; $6877: $22
    ld hl, sp+$41                                 ; $6878: $f8 $41
    cpl                                           ; $687a: $2f
    add d                                         ; $687b: $82
    ldh a, [$0e]                                  ; $687c: $f0 $0e
    add hl, hl                                    ; $687e: $29
    ld [hl], e                                    ; $687f: $73
    rst $38                                       ; $6880: $ff
    add b                                         ; $6881: $80
    ld a, e                                       ; $6882: $7b
    jr z, jr_036_6849                             ; $6883: $28 $c4

    ld [hl+], a                                   ; $6885: $22
    ld a, a                                       ; $6886: $7f
    rst $10                                       ; $6887: $d7
    or $85                                        ; $6888: $f6 $85
    and l                                         ; $688a: $a5
    add sp, -$28                                  ; $688b: $e8 $d8
    inc [hl]                                      ; $688d: $34
    rlca                                          ; $688e: $07
    add hl, bc                                    ; $688f: $09
    db $fc                                        ; $6890: $fc
    dec [hl]                                      ; $6891: $35
    and e                                         ; $6892: $a3
    ld e, a                                       ; $6893: $5f
    or c                                          ; $6894: $b1
    xor $06                                       ; $6895: $ee $06
    ld a, a                                       ; $6897: $7f
    ld [hl], b                                    ; $6898: $70
    xor [hl]                                      ; $6899: $ae
    cp $88                                        ; $689a: $fe $88
    sbc l                                         ; $689c: $9d
    add l                                         ; $689d: $85
    ld a, [hl+]                                   ; $689e: $2a
    add d                                         ; $689f: $82
    jr jr_036_68f5                                ; $68a0: $18 $53

    or l                                          ; $68a2: $b5
    ld e, b                                       ; $68a3: $58
    db $f4                                        ; $68a4: $f4
    di                                            ; $68a5: $f3
    or $f6                                        ; $68a6: $f6 $f6
    ld [hl], a                                    ; $68a8: $77
    db $d3                                        ; $68a9: $d3
    inc e                                         ; $68aa: $1c
    ld c, h                                       ; $68ab: $4c
    cp $d6                                        ; $68ac: $fe $d6
    sub h                                         ; $68ae: $94
    sbc [hl]                                      ; $68af: $9e
    sbc e                                         ; $68b0: $9b
    db $fc                                        ; $68b1: $fc
    ld b, l                                       ; $68b2: $45
    add $9c                                       ; $68b3: $c6 $9c
    adc e                                         ; $68b5: $8b
    inc bc                                        ; $68b6: $03
    ld h, c                                       ; $68b7: $61
    jp c, $88af                                   ; $68b8: $da $af $88

    ld l, d                                       ; $68bb: $6a
    ld c, e                                       ; $68bc: $4b
    ld h, a                                       ; $68bd: $67
    and c                                         ; $68be: $a1
    ld h, e                                       ; $68bf: $63
    add e                                         ; $68c0: $83
    db $d3                                        ; $68c1: $d3
    inc e                                         ; $68c2: $1c
    add hl, bc                                    ; $68c3: $09
    db $fc                                        ; $68c4: $fc
    push af                                       ; $68c5: $f5
    ld a, l                                       ; $68c6: $7d
    sub $c5                                       ; $68c7: $d6 $c5
    ld [hl], b                                    ; $68c9: $70
    rlca                                          ; $68ca: $07
    dec l                                         ; $68cb: $2d
    sbc c                                         ; $68cc: $99
    ld de, $43bd                                  ; $68cd: $11 $bd $43
    ld a, [hl-]                                   ; $68d0: $3a
    ld a, [hl-]                                   ; $68d1: $3a
    and h                                         ; $68d2: $a4
    rlca                                          ; $68d3: $07
    add hl, bc                                    ; $68d4: $09
    pop de                                        ; $68d5: $d1
    ld e, e                                       ; $68d6: $5b
    or d                                          ; $68d7: $b2
    ld [de], a                                    ; $68d8: $12
    ld [de], a                                    ; $68d9: $12
    cp a                                          ; $68da: $bf
    dec c                                         ; $68db: $0d
    ret                                           ; $68dc: $c9


    ld bc, $fc09                                  ; $68dd: $01 $09 $fc
    dec [hl]                                      ; $68e0: $35
    and e                                         ; $68e1: $a3
    ld e, a                                       ; $68e2: $5f
    or c                                          ; $68e3: $b1
    ld a, $57                                     ; $68e4: $3e $57
    ld a, a                                       ; $68e6: $7f
    db $ec                                        ; $68e7: $ec
    or b                                          ; $68e8: $b0
    jr nc, jr_036_692d                            ; $68e9: $30 $42

    sub c                                         ; $68eb: $91
    ccf                                           ; $68ec: $3f
    sbc d                                         ; $68ed: $9a
    ld c, b                                       ; $68ee: $48
    ld b, b                                       ; $68ef: $40
    jp c, Jump_000_2ed9                           ; $68f0: $da $d9 $2e

jr_036_68f3:
    db $ec                                        ; $68f3: $ec
    xor c                                         ; $68f4: $a9

jr_036_68f5:
    ld b, $32                                     ; $68f5: $06 $32
    inc c                                         ; $68f7: $0c
    ret                                           ; $68f8: $c9


    ld bc, $e4a3                                  ; $68f9: $01 $a3 $e4
    ld [hl+], a                                   ; $68fc: $22
    adc h                                         ; $68fd: $8c
    ld a, b                                       ; $68fe: $78
    ld c, c                                       ; $68ff: $49

Call_036_6900:
    ld b, a                                       ; $6900: $47
    ld [hl], d                                    ; $6901: $72
    add $6b                                       ; $6902: $c6 $6b
    ld a, a                                       ; $6904: $7f
    or $29                                        ; $6905: $f6 $29
    db $ed                                        ; $6907: $ed
    ei                                            ; $6908: $fb
    ret nc                                        ; $6909: $d0

    inc hl                                        ; $690a: $23
    and h                                         ; $690b: $a4
    ld d, $72                                     ; $690c: $16 $72
    ld [c], a                                     ; $690e: $e2
    and e                                         ; $690f: $a3
    ld [hl], b                                    ; $6910: $70
    xor [hl]                                      ; $6911: $ae
    cp $88                                        ; $6912: $fe $88
    ld c, l                                       ; $6914: $4d
    ld d, d                                       ; $6915: $52
    rlca                                          ; $6916: $07
    ld c, e                                       ; $6917: $4b
    xor l                                         ; $6918: $ad
    cpl                                           ; $6919: $2f
    ld [hl], c                                    ; $691a: $71
    ld h, e                                       ; $691b: $63
    dec sp                                        ; $691c: $3b
    db $db                                        ; $691d: $db
    or l                                          ; $691e: $b5
    ld a, [$06da]                                 ; $691f: $fa $da $06
    ld b, d                                       ; $6922: $42
    sbc d                                         ; $6923: $9a
    inc bc                                        ; $6924: $03
    and e                                         ; $6925: $a3
    dec e                                         ; $6926: $1d
    db $e3                                        ; $6927: $e3
    ld b, b                                       ; $6928: $40
    or l                                          ; $6929: $b5
    ld a, [hl-]                                   ; $692a: $3a
    rst $30                                       ; $692b: $f7
    ld a, [hl]                                    ; $692c: $7e

jr_036_692d:
    dec [hl]                                      ; $692d: $35
    ld c, c                                       ; $692e: $49
    dec e                                         ; $692f: $1d
    inc l                                         ; $6930: $2c
    or l                                          ; $6931: $b5
    cp [hl]                                       ; $6932: $be
    call nz, $840d                                ; $6933: $c4 $0d $84
    add hl, de                                    ; $6936: $19
    ld [hl], e                                    ; $6937: $73
    add hl, bc                                    ; $6938: $09
    db $fc                                        ; $6939: $fc
    push af                                       ; $693a: $f5
    ld a, l                                       ; $693b: $7d
    sub $cd                                       ; $693c: $d6 $cd
    db $fc                                        ; $693e: $fc
    add $16                                       ; $693f: $c6 $16
    jr c, jr_036_699a                             ; $6941: $38 $57

    ld a, a                                       ; $6943: $7f
    call nz, $fa5a                                ; $6944: $c4 $5a $fa
    dec d                                         ; $6947: $15
    pop de                                        ; $6948: $d1
    cp c                                          ; $6949: $b9
    inc e                                         ; $694a: $1c
    add sp, $6d                                   ; $694b: $e8 $6d
    jr nz, jr_036_68f3                            ; $694d: $20 $a4

    add hl, sp                                    ; $694f: $39
    jp $b7a5                                      ; $6950: $c3 $a5 $b7


    cp a                                          ; $6953: $bf
    ld e, e                                       ; $6954: $5b
    ld [de], a                                    ; $6955: $12
    ld l, e                                       ; $6956: $6b
    ld sp, hl                                     ; $6957: $f9
    sub h                                         ; $6958: $94
    ld d, $1d                                     ; $6959: $16 $1d
    sbc e                                         ; $695b: $9b
    and $b3                                       ; $695c: $e6 $b3
    dec sp                                        ; $695e: $3b
    or $dc                                        ; $695f: $f6 $dc
    ldh [$af], a                                  ; $6961: $e0 $af
    rst $28                                       ; $6963: $ef
    or e                                          ; $6964: $b3
    ld l, [hl]                                    ; $6965: $6e
    cp h                                          ; $6966: $bc
    db $ed                                        ; $6967: $ed
    xor c                                         ; $6968: $a9
    sub $17                                       ; $6969: $d6 $17
    ld a, a                                       ; $696b: $7f
    ld b, l                                       ; $696c: $45
    cp $ae                                        ; $696d: $fe $ae

Call_036_696f:
    db $ed                                        ; $696f: $ed
    ld b, l                                       ; $6970: $45
    ld b, b                                       ; $6971: $40
    db $e3                                        ; $6972: $e3
    jr z, jr_036_69b6                             ; $6973: $28 $41

    ld e, d                                       ; $6975: $5a
    ld [bc], a                                    ; $6976: $02
    cp h                                          ; $6977: $bc
    ld h, l                                       ; $6978: $65
    jp nz, Jump_036_6fc5                          ; $6979: $c2 $c5 $6f

    call Call_036_7e8c                            ; $697c: $cd $8c $7e
    sbc $34                                       ; $697f: $de $34
    rlca                                          ; $6981: $07
    add hl, bc                                    ; $6982: $09
    db $fc                                        ; $6983: $fc

Jump_036_6984:
    push af                                       ; $6984: $f5
    ld a, l                                       ; $6985: $7d
    sub $8d                                       ; $6986: $d6 $8d
    or a                                          ; $6988: $b7
    push de                                       ; $6989: $d5
    sbc $66                                       ; $698a: $de $66
    ld a, a                                       ; $698c: $7f
    ret                                           ; $698d: $c9


    sbc $ce                                       ; $698e: $de $ce
    db $fd                                        ; $6990: $fd
    or e                                          ; $6991: $b3
    xor $c5                                       ; $6992: $ee $c5
    ld e, a                                       ; $6994: $5f
    scf                                           ; $6995: $37
    ld hl, sp-$7d                                 ; $6996: $f8 $83
    ld h, [hl]                                    ; $6998: $66

Jump_036_6999:
    ld b, [hl]                                    ; $6999: $46

jr_036_699a:
    ccf                                           ; $699a: $3f
    ld l, a                                       ; $699b: $6f
    sbc d                                         ; $699c: $9a
    inc bc                                        ; $699d: $03
    add hl, bc                                    ; $699e: $09
    db $fc                                        ; $699f: $fc
    push af                                       ; $69a0: $f5
    ld a, l                                       ; $69a1: $7d
    sub $3d                                       ; $69a2: $d6 $3d
    push de                                       ; $69a4: $d5
    rst $00                                       ; $69a5: $c7
    ld e, a                                       ; $69a6: $5f
    db $ed                                        ; $69a7: $ed
    db $ed                                        ; $69a8: $ed
    db $dd                                        ; $69a9: $dd
    add hl, de                                    ; $69aa: $19
    ld b, c                                       ; $69ab: $41
    jp $b799                                      ; $69ac: $c3 $99 $b7


    add sp, -$19                                  ; $69af: $e8 $e7
    dec a                                         ; $69b1: $3d

Jump_036_69b2:
    ld [hl], a                                    ; $69b2: $77
    jr nc, jr_036_6a01                            ; $69b3: $30 $4c

    xor c                                         ; $69b5: $a9

jr_036_69b6:
    add e                                         ; $69b6: $83
    ccf                                           ; $69b7: $3f
    add sp, -$03                                  ; $69b8: $e8 $fd
    ld c, e                                       ; $69ba: $4b
    dec l                                         ; $69bb: $2d
    dec [hl]                                      ; $69bc: $35
    and [hl]                                      ; $69bd: $a6
    add hl, sp                                    ; $69be: $39
    or e                                          ; $69bf: $b3
    ret z                                         ; $69c0: $c8

    rst $08                                       ; $69c1: $cf
    ld a, [hl-]                                   ; $69c2: $3a
    sub d                                         ; $69c3: $92
    inc sp                                        ; $69c4: $33
    ld e, [hl]                                    ; $69c5: $5e
    ei                                            ; $69c6: $fb
    or e                                          ; $69c7: $b3
    ld c, a                                       ; $69c8: $4f
    ld l, c                                       ; $69c9: $69
    jp c, $fe04                                   ; $69ca: $da $04 $fe

    ld a, [$eb3e]                                 ; $69cd: $fa $3e $eb
    ld h, [hl]                                    ; $69d0: $66
    ld b, [hl]                                    ; $69d1: $46
    ccf                                           ; $69d2: $3f
    rst $28                                       ; $69d3: $ef
    cp c                                          ; $69d4: $b9
    rst $30                                       ; $69d5: $f7
    ld [hl], b                                    ; $69d6: $70
    ld sp, $0c5c                                  ; $69d7: $31 $5c $0c
    cp $aa                                        ; $69da: $fe $aa
    ld d, $2c                                     ; $69dc: $16 $2c
    rst $28                                       ; $69de: $ef
    ld d, e                                       ; $69df: $53
    ldh a, [$f6]                                  ; $69e0: $f0 $f6
    ld a, l                                       ; $69e2: $7d
    sub $9b                                       ; $69e3: $d6 $9b
    and $c3                                       ; $69e5: $e6 $c3
    or c                                          ; $69e7: $b1
    add c                                         ; $69e8: $81
    ret nc                                        ; $69e9: $d0

    dec c                                         ; $69ea: $0d
    cp $a0                                        ; $69eb: $fe $a0
    add a                                         ; $69ed: $87
    ld h, e                                       ; $69ee: $63
    db $dd                                        ; $69ef: $dd
    and c                                         ; $69f0: $a1
    adc d                                         ; $69f1: $8a
    ret z                                         ; $69f2: $c8

    ld a, $eb                                     ; $69f3: $3e $eb
    ld [hl], e                                    ; $69f5: $73
    db $e3                                        ; $69f6: $e3
    ld l, l                                       ; $69f7: $6d
    ret                                           ; $69f8: $c9


    xor d                                         ; $69f9: $aa
    xor h                                         ; $69fa: $ac
    cpl                                           ; $69fb: $2f
    or $f3                                        ; $69fc: $f6 $f3
    rlca                                          ; $69fe: $07
    sbc $34                                       ; $69ff: $de $34

jr_036_6a01:
    rlca                                          ; $6a01: $07
    di                                            ; $6a02: $f3
    add [hl]                                      ; $6a03: $86
    add hl, hl                                    ; $6a04: $29
    ld [hl], l                                    ; $6a05: $75
    ldh a, [rTAC]                                 ; $6a06: $f0 $07
    dec c                                         ; $6a08: $0d

jr_036_6a09:
    add h                                         ; $6a09: $84
    ld e, d                                       ; $6a0a: $5a
    jp z, $9a3a                                   ; $6a0b: $ca $3a $9a

    db $fc                                        ; $6a0e: $fc
    inc sp                                        ; $6a0f: $33
    add hl, bc                                    ; $6a10: $09
    sbc l                                         ; $6a11: $9d
    ld [hl], $29                                  ; $6a12: $36 $29
    ld e, h                                       ; $6a14: $5c
    sub $a1                                       ; $6a15: $d6 $a1
    cp l                                          ; $6a17: $bd
    ld d, l                                       ; $6a18: $55
    dec bc                                        ; $6a19: $0b
    sub [hl]                                      ; $6a1a: $96
    rst $30                                       ; $6a1b: $f7
    add hl, hl                                    ; $6a1c: $29
    ld a, b                                       ; $6a1d: $78
    adc e                                         ; $6a1e: $8b
    pop bc                                        ; $6a1f: $c1
    ld e, a                                       ; $6a20: $5f
    rst $00                                       ; $6a21: $c7
    ld h, $c0                                     ; $6a22: $26 $c0
    sub d                                         ; $6a24: $92
    and $09                                       ; $6a25: $e6 $09
    db $fc                                        ; $6a27: $fc
    push af                                       ; $6a28: $f5
    ld a, l                                       ; $6a29: $7d
    sub $cd                                       ; $6a2a: $d6 $cd
    db $fc                                        ; $6a2c: $fc
    add $16                                       ; $6a2d: $c6 $16
    jr c, @+$59                                   ; $6a2f: $38 $57

    ld a, a                                       ; $6a31: $7f
    call nz, $9a5a                                ; $6a32: $c4 $5a $9a
    sbc c                                         ; $6a35: $99
    ld a, h                                       ; $6a36: $7c
    ld d, a                                       ; $6a37: $57
    sbc e                                         ; $6a38: $9b
    ld a, c                                       ; $6a39: $79
    ld a, e                                       ; $6a3a: $7b
    rst $38                                       ; $6a3b: $ff
    ld [hl], d                                    ; $6a3c: $72
    xor [hl]                                      ; $6a3d: $ae
    ld h, e                                       ; $6a3e: $63
    cp l                                          ; $6a3f: $bd
    dec e                                         ; $6a40: $1d
    and c                                         ; $6a41: $a1
    add h                                         ; $6a42: $84
    xor h                                         ; $6a43: $ac
    add h                                         ; $6a44: $84
    ld a, [hl]                                    ; $6a45: $7e
    push bc                                       ; $6a46: $c5
    or $2f                                        ; $6a47: $f6 $2f
    ld e, c                                       ; $6a49: $59
    add c                                         ; $6a4a: $81
    jr jr_036_6a09                                ; $6a4b: $18 $bc

    ld l, c                                       ; $6a4d: $69
    ld c, $09                                     ; $6a4e: $0e $09
    db $fc                                        ; $6a50: $fc

jr_036_6a51:
    push af                                       ; $6a51: $f5
    ld a, l                                       ; $6a52: $7d
    sub $cd                                       ; $6a53: $d6 $cd
    db $fc                                        ; $6a55: $fc
    add $16                                       ; $6a56: $c6 $16
    jr c, jr_036_6a51                             ; $6a58: $38 $f7

    ld e, $ae                                     ; $6a5a: $1e $ae
    and l                                         ; $6a5c: $a5
    add [hl]                                      ; $6a5d: $86
    ei                                            ; $6a5e: $fb
    rst $00                                       ; $6a5f: $c7
    sub d                                         ; $6a60: $92
    ld e, b                                       ; $6a61: $58
    ld c, e                                       ; $6a62: $4b
    dec e                                         ; $6a63: $1d
    db $db                                        ; $6a64: $db
    ld a, e                                       ; $6a65: $7b
    ldh a, [rTAC]                                 ; $6a66: $f0 $07
    sub c                                         ; $6a68: $91
    add hl, de                                    ; $6a69: $19
    dec sp                                        ; $6a6a: $3b
    or a                                          ; $6a6b: $b7
    sbc b                                         ; $6a6c: $98
    jr nz, @-$42                                  ; $6a6d: $20 $bc

    call $287c                                    ; $6a6f: $cd $7c $28
    add hl, sp                                    ; $6a72: $39
    ld c, h                                       ; $6a73: $4c
    and c                                         ; $6a74: $a1
    rst $28                                       ; $6a75: $ef
    ld b, e                                       ; $6a76: $43
    sbc d                                         ; $6a77: $9a
    inc bc                                        ; $6a78: $03
    add hl, bc                                    ; $6a79: $09
    db $fc                                        ; $6a7a: $fc
    push af                                       ; $6a7b: $f5
    ld a, l                                       ; $6a7c: $7d
    sub $8d                                       ; $6a7d: $d6 $8d
    or a                                          ; $6a7f: $b7
    ld b, l                                       ; $6a80: $45
    cp $ae                                        ; $6a81: $fe $ae
    dec l                                         ; $6a83: $2d
    ld a, [hl-]                                   ; $6a84: $3a
    and b                                         ; $6a85: $a0
    jp c, $8747                                   ; $6a86: $da $47 $87

    or d                                          ; $6a89: $b2
    ld e, [hl]                                    ; $6a8a: $5e
    ld l, l                                       ; $6a8b: $6d

Call_036_6a8c:
    ld b, h                                       ; $6a8c: $44
    ld l, a                                       ; $6a8d: $6f
    scf                                           ; $6a8e: $37
    ld hl, sp-$7d                                 ; $6a8f: $f8 $83
    ld e, $7e                                     ; $6a91: $1e $7e
    jp nc, $e8cc                                  ; $6a93: $d2 $cc $e8

    rst $20                                       ; $6a96: $e7
    ld c, l                                       ; $6a97: $4d
    ld [hl], e                                    ; $6a98: $73
    add hl, bc                                    ; $6a99: $09
    db $fc                                        ; $6a9a: $fc
    push af                                       ; $6a9b: $f5
    ld [hl], $f6                                  ; $6a9c: $36 $f6
    ld l, $b8                                     ; $6a9e: $2e $b8
    ld b, a                                       ; $6aa0: $47
    ld c, b                                       ; $6aa1: $48
    rlca                                          ; $6aa2: $07
    cpl                                           ; $6aa3: $2f
    ld b, c                                       ; $6aa4: $41
    jr nc, @-$59                                  ; $6aa5: $30 $a5

    sbc $73                                       ; $6aa7: $de $73
    push af                                       ; $6aa9: $f5
    ld b, a                                       ; $6aaa: $47
    xor h                                         ; $6aab: $ac
    ld d, [hl]                                    ; $6aac: $56
    ld b, l                                       ; $6aad: $45
    ld d, e                                       ; $6aae: $53
    ld d, $a1                                     ; $6aaf: $16 $a1
    ld c, c                                       ; $6ab1: $49
    ld [$a960], a                                 ; $6ab2: $ea $60 $a9
    push af                                       ; $6ab5: $f5
    dec h                                         ; $6ab6: $25
    ld l, $1b                                     ; $6ab7: $2e $1b
    ld [$0e69], sp                                ; $6ab9: $08 $69 $0e
    or e                                          ; $6abc: $b3
    dec sp                                        ; $6abd: $3b
    or $5c                                        ; $6abe: $f6 $5c
    ld c, e                                       ; $6ac0: $4b
    rst $28                                       ; $6ac1: $ef
    ld e, a                                       ; $6ac2: $5f
    cp d                                          ; $6ac3: $ba
    pop bc                                        ; $6ac4: $c1
    rra                                           ; $6ac5: $1f
    sub h                                         ; $6ac6: $94
    ld [hl], l                                    ; $6ac7: $75
    inc e                                         ; $6ac8: $1c
    sbc l                                         ; $6ac9: $9d
    ld b, l                                       ; $6aca: $45
    ld c, b                                       ; $6acb: $48
    rrca                                          ; $6acc: $0f
    add c                                         ; $6acd: $81
    call nz, Call_036_696f                        ; $6ace: $c4 $6f $69
    ld c, $09                                     ; $6ad1: $0e $09
    db $fc                                        ; $6ad3: $fc
    push af                                       ; $6ad4: $f5
    ld a, l                                       ; $6ad5: $7d
    sub $8d                                       ; $6ad6: $d6 $8d
    or a                                          ; $6ad8: $b7
    dec a                                         ; $6ad9: $3d
    ld [bc], a                                    ; $6ada: $02
    adc d                                         ; $6adb: $8a
    adc [hl]                                      ; $6adc: $8e
    push af                                       ; $6add: $f5
    pop de                                        ; $6ade: $d1
    ld h, c                                       ; $6adf: $61
    ld b, [hl]                                    ; $6ae0: $46
    ld l, a                                       ; $6ae1: $6f
    inc sp                                        ; $6ae2: $33
    and e                                         ; $6ae3: $a3
    sbc a                                         ; $6ae4: $9f
    scf                                           ; $6ae5: $37
    db $ed                                        ; $6ae6: $ed
    cp h                                          ; $6ae7: $bc
    ld h, c                                       ; $6ae8: $61
    ld c, d                                       ; $6ae9: $4a
    dec e                                         ; $6aea: $1d
    db $fc                                        ; $6aeb: $fc
    ld b, c                                       ; $6aec: $41
    rst $28                                       ; $6aed: $ef
    rla                                           ; $6aee: $17
    and l                                         ; $6aef: $a5
    ldh [$5a], a                                  ; $6af0: $e0 $5a
    xor d                                         ; $6af2: $aa
    ccf                                           ; $6af3: $3f
    sub [hl]                                      ; $6af4: $96
    ret                                           ; $6af5: $c9


    sbc a                                         ; $6af6: $9f
    and d                                         ; $6af7: $a2
    sbc c                                         ; $6af8: $99
    ld l, c                                       ; $6af9: $69
    ld [c], a                                     ; $6afa: $e2
    ld l, d                                       ; $6afb: $6a
    rst $30                                       ; $6afc: $f7
    and $27                                       ; $6afd: $e6 $27
    sbc $34                                       ; $6aff: $de $34
    rlca                                          ; $6b01: $07
    add hl, bc                                    ; $6b02: $09
    db $fc                                        ; $6b03: $fc
    push af                                       ; $6b04: $f5
    xor $18                                       ; $6b05: $ee $18
    and a                                         ; $6b07: $a7
    ld a, e                                       ; $6b08: $7b
    pop af                                        ; $6b09: $f1
    rst $10                                       ; $6b0a: $d7
    dec c                                         ; $6b0b: $0d
    cp $a0                                        ; $6b0c: $fe $a0
    rst $00                                       ; $6b0e: $c7
    and a                                         ; $6b0f: $a7
    rst $20                                       ; $6b10: $e7
    sbc $af                                       ; $6b11: $de $af
    and d                                         ; $6b13: $a2
    ld h, e                                       ; $6b14: $63
    dec sp                                        ; $6b15: $3b
    adc h                                         ; $6b16: $8c
    inc h                                         ; $6b17: $24
    ld d, a                                       ; $6b18: $57
    inc bc                                        ; $6b19: $03
    ld hl, $01cd                                  ; $6b1a: $21 $cd $01
    or e                                          ; $6b1d: $b3
    dec sp                                        ; $6b1e: $3b
    or $dc                                        ; $6b1f: $f6 $dc
    rst $08                                       ; $6b21: $cf
    ld e, d                                       ; $6b22: $5a
    ld [$4b58], a                                 ; $6b23: $ea $58 $4b
    or l                                          ; $6b26: $b5
    and l                                         ; $6b27: $a5
    ld a, a                                       ; $6b28: $7f
    or l                                          ; $6b29: $b5
    push bc                                       ; $6b2a: $c5
    db $db                                        ; $6b2b: $db
    reti                                          ; $6b2c: $d9


    db $fc                                        ; $6b2d: $fc
    call nz, $bbd2                                ; $6b2e: $c4 $d2 $bb
    ld h, e                                       ; $6b31: $63
    sbc h                                         ; $6b32: $9c
    ld a, [de]                                    ; $6b33: $1a
    adc e                                         ; $6b34: $8b
    pop bc                                        ; $6b35: $c1
    sbc a                                         ; $6b36: $9f
    dec h                                         ; $6b37: $25
    call Call_000_0901                            ; $6b38: $cd $01 $09
    db $fc                                        ; $6b3b: $fc
    push af                                       ; $6b3c: $f5
    ld a, l                                       ; $6b3d: $7d
    sub $cd                                       ; $6b3e: $d6 $cd
    adc h                                         ; $6b40: $8c
    ld a, [hl]                                    ; $6b41: $7e
    sbc $73                                       ; $6b42: $de $73
    rst $28                                       ; $6b44: $ef
    pop hl                                        ; $6b45: $e1
    ld e, d                                       ; $6b46: $5a
    adc d                                         ; $6b47: $8a
    pop bc                                        ; $6b48: $c1
    ld e, a                                       ; $6b49: $5f
    dec l                                         ; $6b4a: $2d
    adc e                                         ; $6b4b: $8b
    ldh a, [$3e]                                  ; $6b4c: $f0 $3e
    ld bc, $023d                                  ; $6b4e: $01 $3d $02
    ld a, [hl-]                                   ; $6b51: $3a
    sub d                                         ; $6b52: $92
    inc sp                                        ; $6b53: $33
    ld e, [hl]                                    ; $6b54: $5e
    ei                                            ; $6b55: $fb
    or e                                          ; $6b56: $b3
    ld c, a                                       ; $6b57: $4f
    ld l, c                                       ; $6b58: $69
    push de                                       ; $6b59: $d5
    add d                                         ; $6b5a: $82
    push hl                                       ; $6b5b: $e5
    ld a, l                                       ; $6b5c: $7d
    ld a, [bc]                                    ; $6b5d: $0a
    sbc $be                                       ; $6b5e: $de $be
    rrca                                          ; $6b60: $0f
    ld l, c                                       ; $6b61: $69
    ld b, a                                       ; $6b62: $47
    adc [hl]                                      ; $6b63: $8e
    sbc l                                         ; $6b64: $9d
    pop de                                        ; $6b65: $d1
    ldh [$cf], a                                  ; $6b66: $e0 $cf
    ld [hl], d                                    ; $6b68: $72
    ld [hl], a                                    ; $6b69: $77
    and b                                         ; $6b6a: $a0
    ld a, e                                       ; $6b6b: $7b
    ld [hl], a                                    ; $6b6c: $77
    adc h                                         ; $6b6d: $8c
    ld d, e                                       ; $6b6e: $53
    inc c                                         ; $6b6f: $0c
    rst $10                                       ; $6b70: $d7
    ld [hl], b                                    ; $6b71: $70
    rst $38                                       ; $6b72: $ff
    sbc b                                         ; $6b73: $98
    and $09                                       ; $6b74: $e6 $09
    db $fc                                        ; $6b76: $fc
    push af                                       ; $6b77: $f5
    xor $18                                       ; $6b78: $ee $18
    and a                                         ; $6b7a: $a7
    ld a, [hl-]                                   ; $6b7b: $3a
    call c, $29f7                                 ; $6b7c: $dc $f7 $29
    db $eb                                        ; $6b7f: $eb
    sbc [hl]                                      ; $6b80: $9e
    ldh [$80], a                                  ; $6b81: $e0 $80
    ld l, [hl]                                    ; $6b83: $6e
    ldh a, [rTAC]                                 ; $6b84: $f0 $07
    ld [hl], l                                    ; $6b86: $75
    db $ec                                        ; $6b87: $ec
    pop af                                        ; $6b88: $f1
    jp hl                                         ; $6b89: $e9


    cp c                                          ; $6b8a: $b9
    rst $30                                       ; $6b8b: $f7
    xor e                                         ; $6b8c: $ab
    pop bc                                        ; $6b8d: $c1
    ld e, a                                       ; $6b8e: $5f
    adc a                                         ; $6b8f: $8f
    ldh [$af], a                                  ; $6b90: $e0 $af
    ld l, b                                       ; $6b92: $68
    jp z, $3422                                   ; $6b93: $ca $22 $34

    or e                                          ; $6b96: $b3
    ld a, h                                       ; $6b97: $7c
    db $ed                                        ; $6b98: $ed
    ld a, [hl]                                    ; $6b99: $7e
    ld b, l                                       ; $6b9a: $45
    cp h                                          ; $6b9b: $bc
    ld c, a                                       ; $6b9c: $4f
    pop bc                                        ; $6b9d: $c1
    ld l, c                                       ; $6b9e: $69
    ld c, $f3                                     ; $6b9f: $0e $f3
    add [hl]                                      ; $6ba1: $86
    add hl, hl                                    ; $6ba2: $29
    ld [hl], l                                    ; $6ba3: $75
    ldh a, [rTAC]                                 ; $6ba4: $f0 $07
    dec c                                         ; $6ba6: $0d
    add h                                         ; $6ba7: $84
    ld e, d                                       ; $6ba8: $5a
    ld a, [de]                                    ; $6ba9: $1a
    ld e, e                                       ; $6baa: $5b
    ld l, l                                       ; $6bab: $6d
    add hl, hl                                    ; $6bac: $29
    and e                                         ; $6bad: $a3
    ld e, h                                       ; $6bae: $5c
    db $e3                                        ; $6baf: $e3
    ld a, b                                       ; $6bb0: $78
    sbc e                                         ; $6bb1: $9b
    db $fc                                        ; $6bb2: $fc
    add hl, hl                                    ; $6bb3: $29
    ld [hl], l                                    ; $6bb4: $75
    push de                                       ; $6bb5: $d5
    ld [$5892], a                                 ; $6bb6: $ea $92 $58
    jr z, jr_036_6bf5                             ; $6bb9: $28 $3a

    sub $9d                                       ; $6bbb: $d6 $9d
    push af                                       ; $6bbd: $f5
    ccf                                           ; $6bbe: $3f
    ld sp, $167e                                  ; $6bbf: $31 $7e $16
    ld sp, hl                                     ; $6bc2: $f9
    and e                                         ; $6bc3: $a3
    ld a, [bc]                                    ; $6bc4: $0a
    ld d, c                                       ; $6bc5: $51
    xor h                                         ; $6bc6: $ac
    sbc l                                         ; $6bc7: $9d
    and $c3                                       ; $6bc8: $e6 $c3
    and l                                         ; $6bca: $a5
    add c                                         ; $6bcb: $81
    ld d, b                                       ; $6bcc: $50
    db $fd                                        ; $6bcd: $fd

Jump_036_6bce:
    rst $08                                       ; $6bce: $cf
    cp l                                          ; $6bcf: $bd
    ld e, a                                       ; $6bd0: $5f
    or l                                          ; $6bd1: $b5
    inc d                                         ; $6bd2: $14
    dec e                                         ; $6bd3: $1d
    db $db                                        ; $6bd4: $db
    ld a, e                                       ; $6bd5: $7b
    ld d, b                                       ; $6bd6: $50
    sbc d                                         ; $6bd7: $9a
    and $09                                       ; $6bd8: $e6 $09
    db $fc                                        ; $6bda: $fc
    push af                                       ; $6bdb: $f5
    ld a, l                                       ; $6bdc: $7d
    sub $8d                                       ; $6bdd: $d6 $8d
    or a                                          ; $6bdf: $b7
    ld b, l                                       ; $6be0: $45
    cp $ae                                        ; $6be1: $fe $ae
    dec l                                         ; $6be3: $2d
    ld a, [hl-]                                   ; $6be4: $3a
    and b                                         ; $6be5: $a0
    adc [hl]                                      ; $6be6: $8e
    db $ed                                        ; $6be7: $ed
    ret nz                                        ; $6be8: $c0

    rst $38                                       ; $6be9: $ff
    jp nc, $7fb9                                  ; $6bea: $d2 $b9 $7f

    and $ed                                       ; $6bed: $e6 $ed
    ld b, $7f                                     ; $6bef: $06 $7f
    ret nc                                        ; $6bf1: $d0

    jp $9a4f                                      ; $6bf2: $c3 $4f $9a


jr_036_6bf5:
    add hl, de                                    ; $6bf5: $19
    db $fd                                        ; $6bf6: $fd

Call_036_6bf7:
    cp h                                          ; $6bf7: $bc
    ld l, c                                       ; $6bf8: $69
    ld c, $b3                                     ; $6bf9: $0e $b3
    ret z                                         ; $6bfb: $c8

    rst $08                                       ; $6bfc: $cf
    ld [$6f58], a                                 ; $6bfd: $ea $58 $6f
    ld h, a                                       ; $6c00: $67
    di                                            ; $6c01: $f3
    inc de                                        ; $6c02: $13
    ld c, e                                       ; $6c03: $4b
    ld e, d                                       ; $6c04: $5a
    ld h, [hl]                                    ; $6c05: $66
    cp b                                          ; $6c06: $b8
    xor h                                         ; $6c07: $ac
    sub c                                         ; $6c08: $91
    cp a                                          ; $6c09: $bf
    rrca                                          ; $6c0a: $0f
    ldh [$2d], a                                  ; $6c0b: $e0 $2d
    ld b, $7f                                     ; $6c0d: $06 $7f
    adc l                                         ; $6c0f: $8d
    db $e3                                        ; $6c10: $e3
    or b                                          ; $6c11: $b0
    inc [hl]                                      ; $6c12: $34
    ld [hl], e                                    ; $6c13: $73
    and $45                                       ; $6c14: $e6 $45
    rlca                                          ; $6c16: $07
    ld b, h                                       ; $6c17: $44
    sub [hl]                                      ; $6c18: $96
    and $c9                                       ; $6c19: $e6 $c9
    ld h, c                                       ; $6c1b: $61
    xor c                                         ; $6c1c: $a9
    ld e, d                                       ; $6c1d: $5a
    ld e, l                                       ; $6c1e: $5d
    ld a, l                                       ; $6c1f: $7d
    add hl, bc                                    ; $6c20: $09
    sbc h                                         ; $6c21: $9c
    ld a, e                                       ; $6c22: $7b
    or c                                          ; $6c23: $b1
    sbc $aa                                       ; $6c24: $de $aa

Jump_036_6c26:
    push de                                       ; $6c26: $d5
    ld d, l                                       ; $6c27: $55
    dec bc                                        ; $6c28: $0b
    sbc $73                                       ; $6c29: $de $73
    ld c, c                                       ; $6c2b: $49
    xor h                                         ; $6c2c: $ac
    push hl                                       ; $6c2d: $e5
    ld d, e                                       ; $6c2e: $53
    ld e, d                                       ; $6c2f: $5a
    or l                                          ; $6c30: $b5
    cp d                                          ; $6c31: $ba
    dec de                                        ; $6c32: $1b
    sub d                                         ; $6c33: $92
    ld a, c                                       ; $6c34: $79
    dec [hl]                                      ; $6c35: $35
    halt                                          ; $6c36: $76
    ld [c], a                                     ; $6c37: $e2
    ld l, d                                       ; $6c38: $6a
    push de                                       ; $6c39: $d5
    rst $30                                       ; $6c3a: $f7
    ld de, $c3aa                                  ; $6c3b: $11 $aa $c3
    dec e                                         ; $6c3e: $1d
    db $fd                                        ; $6c3f: $fd
    rra                                           ; $6c40: $1f
    ld c, l                                       ; $6c41: $4d
    ld [hl], e                                    ; $6c42: $73
    add hl, bc                                    ; $6c43: $09
    db $fc                                        ; $6c44: $fc
    push af                                       ; $6c45: $f5
    ld a, l                                       ; $6c46: $7d
    sub $cd                                       ; $6c47: $d6 $cd
    db $fc                                        ; $6c49: $fc
    add $16                                       ; $6c4a: $c6 $16
    jr c, @+$59                                   ; $6c4c: $38 $57

    ld a, a                                       ; $6c4e: $7f
    call nz, Call_036_4a5a                        ; $6c4f: $c4 $5a $4a
    sub b                                         ; $6c52: $90
    and h                                         ; $6c53: $a4
    adc [hl]                                      ; $6c54: $8e
    ld [hl], l                                    ; $6c55: $75
    ld b, a                                       ; $6c56: $47
    dec sp                                        ; $6c57: $3b
    xor b                                         ; $6c58: $a8
    ld c, e                                       ; $6c59: $4b
    ld e, h                                       ; $6c5a: $5c
    ld [bc], a                                    ; $6c5b: $02
    sbc c                                         ; $6c5c: $99
    or e                                          ; $6c5d: $b3
    cp a                                          ; $6c5e: $bf
    sbc c                                         ; $6c5f: $99
    or a                                          ; $6c60: $b7
    add c                                         ; $6c61: $81
    sub b                                         ; $6c62: $90
    and $c3                                       ; $6c63: $e6 $c3
    and l                                         ; $6c65: $a5
    rst $30                                       ; $6c66: $f7
    db $10                                        ; $6c67: $10
    ld e, l                                       ; $6c68: $5d
    db $e4                                        ; $6c69: $e4
    rst $28                                       ; $6c6a: $ef
    jp c, Jump_036_6486                           ; $6c6b: $da $86 $64

    ld e, [hl]                                    ; $6c6e: $5e
    ld a, l                                       ; $6c6f: $7d
    cp a                                          ; $6c70: $bf
    adc d                                         ; $6c71: $8a
    ld h, b                                       ; $6c72: $60
    ld a, [hl]                                    ; $6c73: $7e
    di                                            ; $6c74: $f3
    and [hl]                                      ; $6c75: $a6
    dec e                                         ; $6c76: $1d
    ld l, $bd                                     ; $6c77: $2e $bd
    db $fd                                        ; $6c79: $fd
    db $dd                                        ; $6c7a: $dd
    sbc [hl]                                      ; $6c7b: $9e
    ld l, d                                       ; $6c7c: $6a
    ld a, l                                       ; $6c7d: $7d
    pop af                                        ; $6c7e: $f1
    ld d, a                                       ; $6c7f: $57
    ld [de], a                                    ; $6c80: $12
    ld l, e                                       ; $6c81: $6b
    ld sp, hl                                     ; $6c82: $f9
    sub h                                         ; $6c83: $94
    ld d, $1d                                     ; $6c84: $16 $1d
    sbc e                                         ; $6c86: $9b
    and $f3                                       ; $6c87: $e6 $f3
    add [hl]                                      ; $6c89: $86
    add hl, hl                                    ; $6c8a: $29
    ld [hl], l                                    ; $6c8b: $75
    ldh a, [rTAC]                                 ; $6c8c: $f0 $07
    ld b, l                                       ; $6c8e: $45
    push bc                                       ; $6c8f: $c5
    rra                                           ; $6c90: $1f
    call nc, $b252                                ; $6c91: $d4 $52 $b2
    jp nz, Jump_000_1c7f                          ; $6c94: $c2 $7f $1c

    sbc $1e                                       ; $6c97: $de $1e
    ld bc, $dd9d                                  ; $6c99: $01 $9d $dd
    add e                                         ; $6c9c: $83
    ld b, c                                       ; $6c9d: $41
    xor c                                         ; $6c9e: $a9
    dec sp                                        ; $6c9f: $3b
    db $db                                        ; $6ca0: $db
    or l                                          ; $6ca1: $b5
    add hl, de                                    ; $6ca2: $19
    ld a, e                                       ; $6ca3: $7b
    ld bc, $475c                                  ; $6ca4: $01 $5c $47
    rst $30                                       ; $6ca7: $f7
    di                                            ; $6ca8: $f3
    ld d, a                                       ; $6ca9: $57
    ld l, l                                       ; $6caa: $6d
    jp hl                                         ; $6cab: $e9


    ld [$1b19], sp                                ; $6cac: $08 $19 $1b
    sbc h                                         ; $6caf: $9c
    and $09                                       ; $6cb0: $e6 $09
    db $fc                                        ; $6cb2: $fc
    push af                                       ; $6cb3: $f5
    ld a, l                                       ; $6cb4: $7d
    sub $cd                                       ; $6cb5: $d6 $cd
    adc h                                         ; $6cb7: $8c
    ld a, [hl]                                    ; $6cb8: $7e
    sbc $73                                       ; $6cb9: $de $73
    rst $28                                       ; $6cbb: $ef
    pop hl                                        ; $6cbc: $e1
    ld e, d                                       ; $6cbd: $5a
    adc d                                         ; $6cbe: $8a
    pop bc                                        ; $6cbf: $c1
    ld e, a                                       ; $6cc0: $5f
    db $e3                                        ; $6cc1: $e3
    add sp, $2c                                   ; $6cc2: $e8 $2c
    sub h                                         ; $6cc4: $94
    add h                                         ; $6cc5: $84
    ld h, b                                       ; $6cc6: $60
    add c                                         ; $6cc7: $81
    ld l, e                                       ; $6cc8: $6b
    ld a, e                                       ; $6cc9: $7b
    inc b                                         ; $6cca: $04
    ld [hl], h                                    ; $6ccb: $74
    inc h                                         ; $6ccc: $24
    ld h, a                                       ; $6ccd: $67
    cp h                                          ; $6cce: $bc
    or $67                                        ; $6ccf: $f6 $67
    sbc a                                         ; $6cd1: $9f
    jp nc, Jump_000_05aa                          ; $6cd2: $d2 $aa $05

    set 7, e                                      ; $6cd5: $cb $fb
    inc d                                         ; $6cd7: $14
    cp h                                          ; $6cd8: $bc
    ld a, l                                       ; $6cd9: $7d
    rra                                           ; $6cda: $1f
    jp nc, Jump_000_22ce                          ; $6cdb: $d2 $ce $22

    ccf                                           ; $6cde: $3f
    xor e                                         ; $6cdf: $ab
    cp [hl]                                       ; $6ce0: $be
    ld hl, sp-$15                                 ; $6ce1: $f8 $eb
    pop af                                        ; $6ce3: $f1
    ld l, c                                       ; $6ce4: $69
    ld sp, $e69c                                  ; $6ce5: $31 $9c $e6
    add hl, bc                                    ; $6ce8: $09
    db $fc                                        ; $6ce9: $fc
    push af                                       ; $6cea: $f5
    ld a, l                                       ; $6ceb: $7d
    sub $cd                                       ; $6cec: $d6 $cd
    db $fc                                        ; $6cee: $fc
    add $16                                       ; $6cef: $c6 $16
    jr c, @+$59                                   ; $6cf1: $38 $57

    ld a, a                                       ; $6cf3: $7f
    call nz, $9a5a                                ; $6cf4: $c4 $5a $9a
    ld e, c                                       ; $6cf7: $59
    sub $fd                                       ; $6cf8: $d6 $fd
    adc d                                         ; $6cfa: $8a
    xor b                                         ; $6cfb: $a8
    or $51                                        ; $6cfc: $f6 $51
    and [hl]                                      ; $6cfe: $a6
    ld e, l                                       ; $6cff: $5d
    ld d, h                                       ; $6d00: $54
    ld b, d                                       ; $6d01: $42
    ld a, b                                       ; $6d02: $78
    sbc e                                         ; $6d03: $9b

Call_036_6d04:
    ld sp, hl                                     ; $6d04: $f9
    ld b, c                                       ; $6d05: $41
    jp c, $b439                                   ; $6d06: $da $39 $b4

    and l                                         ; $6d09: $a5
    rst $30                                       ; $6d0a: $f7
    cpl                                           ; $6d0b: $2f
    push de                                       ; $6d0c: $d5
    rra                                           ; $6d0d: $1f
    dec sp                                        ; $6d0e: $3b
    ld c, e                                       ; $6d0f: $4b
    ld d, b                                       ; $6d10: $50
    cp $66                                        ; $6d11: $fe $66
    call z, $b301                                 ; $6d13: $cc $01 $b3
    xor e                                         ; $6d16: $ab
    dec a                                         ; $6d17: $3d
    rst $10                                       ; $6d18: $d7
    jp nc, $e840                                  ; $6d19: $d2 $40 $e8

    ld d, a                                       ; $6d1c: $57
    ld b, h                                       ; $6d1d: $44
    ld c, a                                       ; $6d1e: $4f
    or l                                          ; $6d1f: $b5
    or $76                                        ; $6d20: $f6 $76
    sub [hl]                                      ; $6d22: $96
    ld c, a                                       ; $6d23: $4f
    ld l, c                                       ; $6d24: $69
    scf                                           ; $6d25: $37
    ld hl, sp-$7d                                 ; $6d26: $f8 $83
    cp [hl]                                       ; $6d28: $be
    or b                                          ; $6d29: $b0
    db $f4                                        ; $6d2a: $f4
    ld h, d                                       ; $6d2b: $62
    cp l                                          ; $6d2c: $bd
    ld l, c                                       ; $6d2d: $69
    ld c, $23                                     ; $6d2e: $0e $23
    add hl, sp                                    ; $6d30: $39
    db $e3                                        ; $6d31: $e3
    or l                                          ; $6d32: $b5
    ccf                                           ; $6d33: $3f
    ei                                            ; $6d34: $fb
    sub h                                         ; $6d35: $94
    ld [hl], $10                                  ; $6d36: $36 $10
    adc d                                         ; $6d38: $8a
    ld h, b                                       ; $6d39: $60
    ld c, d                                       ; $6d3a: $4a
    rlca                                          ; $6d3b: $07
    dec l                                         ; $6d3c: $2d
    jr nz, jr_036_6d45                            ; $6d3d: $20 $06

    xor a                                         ; $6d3f: $af
    halt                                          ; $6d40: $76
    sbc c                                         ; $6d41: $99
    db $fc                                        ; $6d42: $fc
    add hl, hl                                    ; $6d43: $29
    ld c, d                                       ; $6d44: $4a

jr_036_6d45:
    dec e                                         ; $6d45: $1d
    ld h, b                                       ; $6d46: $60
    adc c                                         ; $6d47: $89
    ld c, l                                       ; $6d48: $4d
    rrc h                                         ; $6d49: $cb $0c
    rst $30                                       ; $6d4b: $f7
    xor $18                                       ; $6d4c: $ee $18
    and a                                         ; $6d4e: $a7
    jr @-$02                                      ; $6d4f: $18 $fc

    ld e, c                                       ; $6d51: $59
    adc $bd                                       ; $6d52: $ce $bd
    ld e, a                                       ; $6d54: $5f
    or l                                          ; $6d55: $b5
    inc d                                         ; $6d56: $14
    pop bc                                        ; $6d57: $c1
    db $fc                                        ; $6d58: $fc
    ld b, $69                                     ; $6d59: $06 $69
    ld c, $09                                     ; $6d5b: $0e $09
    db $fc                                        ; $6d5d: $fc
    push af                                       ; $6d5e: $f5
    ld a, l                                       ; $6d5f: $7d
    sub $8d                                       ; $6d60: $d6 $8d

jr_036_6d62:
    or a                                          ; $6d62: $b7
    ld a, l                                       ; $6d63: $7d
    ld d, [hl]                                    ; $6d64: $56
    ldh [$ee], a                                  ; $6d65: $e0 $ee
    push bc                                       ; $6d67: $c5
    ld e, a                                       ; $6d68: $5f
    scf                                           ; $6d69: $37
    ld hl, sp-$7d                                 ; $6d6a: $f8 $83
    ld h, [hl]                                    ; $6d6c: $66
    ld b, [hl]                                    ; $6d6d: $46
    ccf                                           ; $6d6e: $3f
    ld l, a                                       ; $6d6f: $6f
    sbc d                                         ; $6d70: $9a
    inc bc                                        ; $6d71: $03
    add hl, bc                                    ; $6d72: $09
    db $fc                                        ; $6d73: $fc
    dec d                                         ; $6d74: $15
    db $fd                                        ; $6d75: $fd
    call c, $db78                                 ; $6d76: $dc $78 $db
    dec c                                         ; $6d79: $0d
    cp $a0                                        ; $6d7a: $fe $a0
    add sp, $27                                   ; $6d7c: $e8 $27
    cp l                                          ; $6d7e: $bd
    ld [$7348], sp                                ; $6d7f: $08 $48 $73
    di                                            ; $6d82: $f3
    db $10                                        ; $6d83: $10
    call nz, Call_000_1c90                        ; $6d84: $c4 $90 $1c
    inc hl                                        ; $6d87: $23
    inc e                                         ; $6d88: $1c
    db $eb                                        ; $6d89: $eb
    ld [hl-], a                                   ; $6d8a: $32
    rlca                                          ; $6d8b: $07
    sub h                                         ; $6d8c: $94
    ld [hl], h                                    ; $6d8d: $74
    ldh a, [$da]                                  ; $6d8e: $f0 $da
    ld [hl-], a                                   ; $6d90: $32
    rst $30                                       ; $6d91: $f7

jr_036_6d92:
    rrca                                          ; $6d92: $0f
    jr c, jr_036_6d62                             ; $6d93: $38 $cd

    ld bc, $fc09                                  ; $6d95: $01 $09 $fc
    push af                                       ; $6d98: $f5
    or $77                                        ; $6d99: $f6 $77
    ld a, e                                       ; $6d9b: $7b
    inc b                                         ; $6d9c: $04
    ld a, a                                       ; $6d9d: $7f
    db $dd                                        ; $6d9e: $dd
    ldh [rIF], a                                  ; $6d9f: $e0 $0f
    jp z, $eefa                                   ; $6da1: $ca $fa $ee

    call z, $243b                                 ; $6da4: $cc $3b $24
    rlca                                          ; $6da7: $07
    add hl, bc                                    ; $6da8: $09
    db $fc                                        ; $6da9: $fc
    push af                                       ; $6daa: $f5
    dec hl                                        ; $6dab: $2b
    cp $ba                                        ; $6dac: $fe $ba
    pop bc                                        ; $6dae: $c1
    rra                                           ; $6daf: $1f
    inc c                                         ; $6db0: $0c
    ld l, c                                       ; $6db1: $69
    ld d, d                                       ; $6db2: $52
    jr jr_036_6d92                                ; $6db3: $18 $dd

    ld d, c                                       ; $6db5: $51
    inc b                                         ; $6db6: $04
    db $fd                                        ; $6db7: $fd
    ld c, e                                       ; $6db8: $4b
    or $f6                                        ; $6db9: $f6 $f6
    ld a, l                                       ; $6dbb: $7d
    sub $5b                                       ; $6dbc: $d6 $5b
    inc c                                         ; $6dbe: $0c
    cp $aa                                        ; $6dbf: $fe $aa
    adc [hl]                                      ; $6dc1: $8e
    xor d                                         ; $6dc2: $aa
    ld b, l                                       ; $6dc3: $45
    adc e                                         ; $6dc4: $8b
    dec sp                                        ; $6dc5: $3b
    dec bc                                        ; $6dc6: $0b
    ld l, c                                       ; $6dc7: $69
    inc e                                         ; $6dc8: $1c
    scf                                           ; $6dc9: $37
    di                                            ; $6dca: $f3
    ld e, l                                       ; $6dcb: $5d
    xor l                                         ; $6dcc: $ad
    or $a6                                        ; $6dcd: $f6 $a6
    ld c, l                                       ; $6dcf: $4d
    ld a, [$83d8]                                 ; $6dd0: $fa $d8 $83
    add h                                         ; $6dd3: $84
    add sp, -$13                                  ; $6dd4: $e8 $ed
    call c, $8456                                 ; $6dd6: $dc $56 $84
    add hl, hl                                    ; $6dd9: $29
    ld [hl+], a                                   ; $6dda: $22
    ld a, a                                       ; $6ddb: $7f
    inc [hl]                                      ; $6ddc: $34
    ld [hl], $f3                                  ; $6ddd: $36 $f3
    ld d, $1d                                     ; $6ddf: $16 $1d
    dec sp                                        ; $6de1: $3b
    and h                                         ; $6de2: $a4
    add hl, bc                                    ; $6de3: $09
    db $fc                                        ; $6de4: $fc
    push af                                       ; $6de5: $f5
    ld a, l                                       ; $6de6: $7d
    sub $45                                       ; $6de7: $d6 $45
    cp $ae                                        ; $6de9: $fe $ae
    db $ed                                        ; $6deb: $ed
    pop af                                        ; $6dec: $f1
    ld l, c                                       ; $6ded: $69
    dec c                                         ; $6dee: $0d
    rst $30                                       ; $6def: $f7
    adc a                                         ; $6df0: $8f
    dec h                                         ; $6df1: $25
    or c                                          ; $6df2: $b1
    sub [hl]                                      ; $6df3: $96
    ld h, d                                       ; $6df4: $62
    cp b                                          ; $6df5: $b8
    sbc c                                         ; $6df6: $99
    xor c                                         ; $6df7: $a9
    pop de                                        ; $6df8: $d1
    dec sp                                        ; $6df9: $3b
    and h                                         ; $6dfa: $a4
    inc hl                                        ; $6dfb: $23
    ccf                                           ; $6dfc: $3f
    ld a, a                                       ; $6dfd: $7f
    sbc l                                         ; $6dfe: $9d
    dec l                                         ; $6dff: $2d
    ld hl, sp-$7d                                 ; $6e00: $f8 $83
    ld e, [hl]                                    ; $6e02: $5e
    jp c, Jump_036_59d2                           ; $6e03: $da $d2 $59

    xor h                                         ; $6e06: $ac
    inc l                                         ; $6e07: $2c

Call_036_6e08:
    rst $20                                       ; $6e08: $e7
    ld h, $7f                                     ; $6e09: $26 $7f
    sub c                                         ; $6e0b: $91
    ld sp, $7243                                  ; $6e0c: $31 $43 $72
    ld c, c                                       ; $6e0f: $49
    ld a, a                                       ; $6e10: $7f
    ld l, a                                       ; $6e11: $6f
    ld a, $37                                     ; $6e12: $3e $37
    ld sp, hl                                     ; $6e14: $f9
    adc e                                         ; $6e15: $8b
    adc h                                         ; $6e16: $8c
    add hl, sp                                    ; $6e17: $39
    rla                                           ; $6e18: $17
    jp $9f7d                                      ; $6e19: $c3 $7d $9f


    push af                                       ; $6e1c: $f5
    or $08                                        ; $6e1d: $f6 $08
    add hl, hl                                    ; $6e1f: $29
    db $eb                                        ; $6e20: $eb
    ret c                                         ; $6e21: $d8

    rst $38                                       ; $6e22: $ff
    ld e, h                                       ; $6e23: $5c
    dec e                                         ; $6e24: $1d
    ld l, [hl]                                    ; $6e25: $6e
    or $97                                        ; $6e26: $f6 $97
    db $ec                                        ; $6e28: $ec
    adc $a6                                       ; $6e29: $ce $a6
    ld [$57e8], sp                                ; $6e2b: $08 $e8 $57
    ld e, b                                       ; $6e2e: $58
    db $ed                                        ; $6e2f: $ed
    and e                                         ; $6e30: $a3
    inc hl                                        ; $6e31: $23
    add $96                                       ; $6e32: $c6 $96
    ld bc, $334b                                  ; $6e34: $01 $4b $33
    rrca                                          ; $6e37: $0f
    adc b                                         ; $6e38: $88
    ld de, $cd21                                  ; $6e39: $11 $21 $cd
    ld bc, $7db3                                  ; $6e3c: $01 $b3 $7d
    ld b, h                                       ; $6e3f: $44
    xor b                                         ; $6e40: $a8
    ld e, d                                       ; $6e41: $5a
    db $ec                                        ; $6e42: $ec
    db $dd                                        ; $6e43: $dd
    ld bc, $6696                                  ; $6e44: $01 $96 $66
    ld a, [hl]                                    ; $6e47: $7e
    sbc $b4                                       ; $6e48: $de $b4
    call z, Call_000_03fd                         ; $6e4a: $cc $fd $03
    xor $fb                                       ; $6e4d: $ee $fb
    ld d, b                                       ; $6e4f: $50
    db $e4                                        ; $6e50: $e4
    rst $28                                       ; $6e51: $ef
    jp c, $d63a                                   ; $6e52: $da $3a $d6

    db $db                                        ; $6e55: $db
    ld a, c                                       ; $6e56: $79
    cpl                                           ; $6e57: $2f
    pop bc                                        ; $6e58: $c1
    ld bc, $9b51                                  ; $6e59: $01 $51 $9b
    and l                                         ; $6e5c: $a5
    add hl, sp                                    ; $6e5d: $39
    and e                                         ; $6e5e: $a3
    ld b, e                                       ; $6e5f: $43
    adc d                                         ; $6e60: $8a
    ld bc, $6f64                                  ; $6e61: $01 $64 $6f
    db $e3                                        ; $6e64: $e3
    jr c, jr_036_6e93                             ; $6e65: $38 $2c

    db $dd                                        ; $6e67: $dd
    adc e                                         ; $6e68: $8b
    cp a                                          ; $6e69: $bf
    ld [de], a                                    ; $6e6a: $12
    ld b, [hl]                                    ; $6e6b: $46
    jr c, jr_036_6ea5                             ; $6e6c: $38 $37

    ld sp, hl                                     ; $6e6e: $f9
    adc e                                         ; $6e6f: $8b
    adc h                                         ; $6e70: $8c
    add hl, de                                    ; $6e71: $19
    jp nc, Jump_036_6bce                          ; $6e72: $d2 $ce $6b

    ld b, c                                       ; $6e75: $41
    push bc                                       ; $6e76: $c5
    ld e, a                                       ; $6e77: $5f
    adc l                                         ; $6e78: $8d
    db $dd                                        ; $6e79: $dd
    adc e                                         ; $6e7a: $8b
    cp a                                          ; $6e7b: $bf
    ld a, [hl-]                                   ; $6e7c: $3a
    or $f8                                        ; $6e7d: $f6 $f8
    ld [hl], h                                    ; $6e7f: $74
    ld c, b                                       ; $6e80: $48
    ld c, $f3                                     ; $6e81: $0e $f3
    adc [hl]                                      ; $6e83: $8e
    sbc l                                         ; $6e84: $9d
    sbc c                                         ; $6e85: $99
    ld c, $e9                                     ; $6e86: $0e $e9
    call c, $a15f                                 ; $6e88: $dc $5f $a1
    ld d, a                                       ; $6e8b: $57
    cp e                                          ; $6e8c: $bb
    di                                            ; $6e8d: $f3
    adc [hl]                                      ; $6e8e: $8e
    sbc l                                         ; $6e8f: $9d
    sbc c                                         ; $6e90: $99
    ld c, $29                                     ; $6e91: $0e $29

jr_036_6e93:
    inc sp                                        ; $6e93: $33
    call c, Call_036_45bb                         ; $6e94: $dc $bb $45
    ld a, e                                       ; $6e97: $7b
    xor e                                         ; $6e98: $ab
    ld d, $7b                                     ; $6e99: $16 $7b
    adc h                                         ; $6e9b: $8c
    sbc l                                         ; $6e9c: $9d
    pop de                                        ; $6e9d: $d1
    ldh [$cf], a                                  ; $6e9e: $e0 $cf
    ld [hl], d                                    ; $6ea0: $72
    ld [hl], a                                    ; $6ea1: $77
    and b                                         ; $6ea2: $a0
    ei                                            ; $6ea3: $fb
    scf                                           ; $6ea4: $37

jr_036_6ea5:
    inc de                                        ; $6ea5: $13
    rlca                                          ; $6ea6: $07
    pop hl                                        ; $6ea7: $e1
    dec a                                         ; $6ea8: $3d
    rst $30                                       ; $6ea9: $f7
    xor $dd                                       ; $6eaa: $ee $dd
    sbc $43                                       ; $6eac: $de $43
    ld a, [hl-]                                   ; $6eae: $3a
    ld l, b                                       ; $6eaf: $68
    ld b, c                                       ; $6eb0: $41
    push bc                                       ; $6eb1: $c5
    sbc a                                         ; $6eb2: $9f
    rst $30                                       ; $6eb3: $f7
    ld e, h                                       ; $6eb4: $5c
    db $ed                                        ; $6eb5: $ed
    db $ed                                        ; $6eb6: $ed
    ld e, h                                       ; $6eb7: $5c
    ld e, a                                       ; $6eb8: $5f
    dec e                                         ; $6eb9: $1d
    dec h                                         ; $6eba: $25
    xor e                                         ; $6ebb: $ab
    ld l, d                                       ; $6ebc: $6a
    dec h                                         ; $6ebd: $25
    db $fc                                        ; $6ebe: $fc
    sbc l                                         ; $6ebf: $9d
    and [hl]                                      ; $6ec0: $a6
    inc l                                         ; $6ec1: $2c
    sbc $34                                       ; $6ec2: $de $34
    rlca                                          ; $6ec4: $07
    ld c, c                                       ; $6ec5: $49
    rra                                           ; $6ec6: $1f
    adc e                                         ; $6ec7: $8b
    or c                                          ; $6ec8: $b1
    cp d                                          ; $6ec9: $ba
    scf                                           ; $6eca: $37
    rst $00                                       ; $6ecb: $c7
    cp d                                          ; $6ecc: $ba
    di                                            ; $6ecd: $f3
    adc [hl]                                      ; $6ece: $8e
    sbc l                                         ; $6ecf: $9d
    sbc c                                         ; $6ed0: $99
    sbc [hl]                                      ; $6ed1: $9e
    xor e                                         ; $6ed2: $ab
    ccf                                           ; $6ed3: $3f
    ld d, $63                                     ; $6ed4: $16 $63

jr_036_6ed6:
    ld [hl], l                                    ; $6ed6: $75
    inc sp                                        ; $6ed7: $33
    inc de                                        ; $6ed8: $13
    sub h                                         ; $6ed9: $94
    sub h                                         ; $6eda: $94
    sbc c                                         ; $6edb: $99
    add d                                         ; $6edc: $82
    set 4, h                                      ; $6edd: $cb $e4
    adc a                                         ; $6edf: $8f
    sub d                                         ; $6ee0: $92
    db $10                                        ; $6ee1: $10
    ld c, l                                       ; $6ee2: $4d
    add a                                         ; $6ee3: $87
    db $e4                                        ; $6ee4: $e4
    di                                            ; $6ee5: $f3
    ld e, d                                       ; $6ee6: $5a
    sub b                                         ; $6ee7: $90
    ccf                                           ; $6ee8: $3f
    ld a, d                                       ; $6ee9: $7a
    ld hl, $d37a                                  ; $6eea: $21 $7a $d3
    ld c, $8f                                     ; $6eed: $0e $8f
    or l                                          ; $6eef: $b5
    ld d, h                                       ; $6ef0: $54
    add a                                         ; $6ef1: $87
    pop de                                        ; $6ef2: $d1
    ld d, d                                       ; $6ef3: $52
    ld h, $7f                                     ; $6ef4: $26 $7f
    sub h                                         ; $6ef6: $94
    add h                                         ; $6ef7: $84
    ld l, b                                       ; $6ef8: $68
    jp c, Jump_000_2143                           ; $6ef9: $da $43 $21

    ld [hl], $b6                                  ; $6efc: $36 $b6
    ld a, [hl-]                                   ; $6efe: $3a
    adc h                                         ; $6eff: $8c
    add $32                                       ; $6f00: $c6 $32
    ld sp, hl                                     ; $6f02: $f9
    and e                                         ; $6f03: $a3
    rla                                           ; $6f04: $17
    ld h, d                                       ; $6f05: $62
    rlca                                          ; $6f06: $07
    ld a, $a2                                     ; $6f07: $3e $a2
    scf                                           ; $6f09: $37
    call Call_036_4301                            ; $6f0a: $cd $01 $43
    ld e, c                                       ; $6f0d: $59
    ld c, e                                       ; $6f0e: $4b
    rst $28                                       ; $6f0f: $ef
    and [hl]                                      ; $6f10: $a6
    db $fc                                        ; $6f11: $fc
    ld e, c                                       ; $6f12: $59
    ld h, [hl]                                    ; $6f13: $66
    call z, $4901                                 ; $6f14: $cc $01 $49
    sub [hl]                                      ; $6f17: $96
    ld [$ecdf], a                                 ; $6f18: $ea $df $ec
    cpl                                           ; $6f1b: $2f
    cp c                                          ; $6f1c: $b9
    rla                                           ; $6f1d: $17
    db $eb                                        ; $6f1e: $eb
    dec l                                         ; $6f1f: $2d
    add [hl]                                      ; $6f20: $86
    rra                                           ; $6f21: $1f
    db $f4                                        ; $6f22: $f4
    xor a                                         ; $6f23: $af
    or [hl]                                       ; $6f24: $b6
    ld h, b                                       ; $6f25: $60
    cp a                                          ; $6f26: $bf
    jp nz, $8a7e                                  ; $6f27: $c2 $7e $8a

    push de                                       ; $6f2a: $d5
    pop hl                                        ; $6f2b: $e1
    cp $d5                                        ; $6f2c: $fe $d5
    ld d, $6f                                     ; $6f2e: $16 $6f
    sbc d                                         ; $6f30: $9a
    inc bc                                        ; $6f31: $03
    inc hl                                        ; $6f32: $23
    dec e                                         ; $6f33: $1d
    adc e                                         ; $6f34: $8b
    ld d, b                                       ; $6f35: $50
    xor l                                         ; $6f36: $ad
    xor d                                         ; $6f37: $aa
    cp l                                          ; $6f38: $bd
    call $aa2e                                    ; $6f39: $cd $2e $aa
    cp l                                          ; $6f3c: $bd
    sbc $73                                       ; $6f3d: $de $73
    or l                                          ; $6f3f: $b5
    and l                                         ; $6f40: $a5
    db $e4                                        ; $6f41: $e4
    ld a, e                                       ; $6f42: $7b
    jr nz, jr_036_6fc4                            ; $6f43: $20 $7f

    sbc $7e                                       ; $6f45: $de $7e
    ld c, d                                       ; $6f47: $4a
    xor e                                         ; $6f48: $ab
    cp l                                          ; $6f49: $bd
    push bc                                       ; $6f4a: $c5
    and b                                         ; $6f4b: $a0
    xor h                                         ; $6f4c: $ac
    ld h, l                                       ; $6f4d: $65
    cp l                                          ; $6f4e: $bd
    dec h                                         ; $6f4f: $25
    ld l, b                                       ; $6f50: $68
    jr c, jr_036_6ed6                             ; $6f51: $38 $83

    add hl, de                                    ; $6f53: $19
    ld [hl], e                                    ; $6f54: $73
    or e                                          ; $6f55: $b3
    cp $73                                        ; $6f56: $fe $73
    inc sp                                        ; $6f58: $33
    rst $28                                       ; $6f59: $ef
    ld d, a                                       ; $6f5a: $57

Jump_036_6f5b:
    push de                                       ; $6f5b: $d5
    sbc $b4                                       ; $6f5c: $de $b4
    di                                            ; $6f5e: $f3
    add [hl]                                      ; $6f5f: $86

jr_036_6f60:
    add hl, hl                                    ; $6f60: $29
    ld [hl], l                                    ; $6f61: $75
    ldh a, [rTAC]                                 ; $6f62: $f0 $07
    cp l                                          ; $6f64: $bd
    adc l                                         ; $6f65: $8d
    cp l                                          ; $6f66: $bd
    db $eb                                        ; $6f67: $eb
    db $ed                                        ; $6f68: $ed
    dec a                                         ; $6f69: $3d
    and h                                         ; $6f6a: $a4
    ld b, a                                       ; $6f6b: $47
    ld b, b                                       ; $6f6c: $40
    db $e3                                        ; $6f6d: $e3
    dec e                                         ; $6f6e: $1d
    push de                                       ; $6f6f: $d5
    pop hl                                        ; $6f70: $e1
    adc $4d                                       ; $6f71: $ce $4d
    sub d                                         ; $6f73: $92
    adc [hl]                                      ; $6f74: $8e
    ld c, l                                       ; $6f75: $4d
    db $10                                        ; $6f76: $10
    db $eb                                        ; $6f77: $eb
    ld c, l                                       ; $6f78: $4d
    ld [hl], e                                    ; $6f79: $73
    ld c, c                                       ; $6f7a: $49
    xor d                                         ; $6f7b: $aa
    ld a, b                                       ; $6f7c: $78
    ld d, c                                       ; $6f7d: $51
    ld a, [bc]                                    ; $6f7e: $0a
    ld b, [hl]                                    ; $6f7f: $46
    add sp, $7e                                   ; $6f80: $e8 $7e
    cp $7a                                        ; $6f82: $fe $7a
    or c                                          ; $6f84: $b1
    sbc $12                                       ; $6f85: $de $12
    inc [hl]                                      ; $6f87: $34
    sbc h                                         ; $6f88: $9c
    ld a, c                                       ; $6f89: $79
    xor e                                         ; $6f8a: $ab
    ld d, [hl]                                    ; $6f8b: $56
    scf                                           ; $6f8c: $37
    sbc $f6                                       ; $6f8d: $de $f6
    ld e, l                                       ; $6f8f: $5d
    call nc, Call_000_2e7b                        ; $6f90: $d4 $7b $2e
    ld e, [hl]                                    ; $6f93: $5e
    adc e                                         ; $6f94: $8b
    ret nc                                        ; $6f95: $d0

    db $db                                        ; $6f96: $db
    ld [hl], l                                    ; $6f97: $75
    inc e                                         ; $6f98: $1c
    sbc $de                                       ; $6f99: $de $de
    ld b, e                                       ; $6f9b: $43
    cp d                                          ; $6f9c: $ba
    pop hl                                        ; $6f9d: $e1
    ld l, d                                       ; $6f9e: $6a
    dec h                                         ; $6f9f: $25
    db $fc                                        ; $6fa0: $fc
    ld d, l                                       ; $6fa1: $55
    add a                                         ; $6fa2: $87
    pop de                                        ; $6fa3: $d1
    sbc l                                         ; $6fa4: $9d
    sbc e                                         ; $6fa5: $9b
    inc h                                         ; $6fa6: $24
    ld l, c                                       ; $6fa7: $69
    ld c, $09                                     ; $6fa8: $0e $09
    db $fc                                        ; $6faa: $fc
    push af                                       ; $6fab: $f5
    ld a, l                                       ; $6fac: $7d
    sub $fd                                       ; $6fad: $d6 $fd
    xor h                                         ; $6faf: $ac
    and l                                         ; $6fb0: $a5
    add a                                         ; $6fb1: $87
    ld h, e                                       ; $6fb2: $63
    cp l                                          ; $6fb3: $bd
    dec e                                         ; $6fb4: $1d
    ld h, [hl]                                    ; $6fb5: $66
    db $f4                                        ; $6fb6: $f4
    halt                                          ; $6fb7: $76
    add e                                         ; $6fb8: $83
    ccf                                           ; $6fb9: $3f
    xor b                                         ; $6fba: $a8
    cp $ac                                        ; $6fbb: $fe $ac
    inc hl                                        ; $6fbd: $23
    call $b301                                    ; $6fbe: $cd $01 $b3
    rst $00                                       ; $6fc1: $c7
    ld [hl], c                                    ; $6fc2: $71
    db $f4                                        ; $6fc3: $f4

jr_036_6fc4:
    ld [hl], b                                    ; $6fc4: $70

Jump_036_6fc5:
    xor h                                         ; $6fc5: $ac
    scf                                           ; $6fc6: $37
    db $ed                                        ; $6fc7: $ed
    ld [hl], b                                    ; $6fc8: $70
    ld l, h                                       ; $6fc9: $6c
    jr nz, jr_036_6f60                            ; $6fca: $20 $94

    ld a, h                                       ; $6fcc: $7c
    rst $38                                       ; $6fcd: $ff
    jp nc, Jump_036_5255                          ; $6fce: $d2 $55 $52

    rst $00                                       ; $6fd1: $c7
    halt                                          ; $6fd2: $76
    sbc b                                         ; $6fd3: $98
    pop de                                        ; $6fd4: $d1
    ld e, e                                       ; $6fd5: $5b
    add d                                         ; $6fd6: $82
    inc h                                         ; $6fd7: $24
    dec e                                         ; $6fd8: $1d
    cp d                                          ; $6fd9: $ba
    ld b, h                                       ; $6fda: $44
    ld [c], a                                     ; $6fdb: $e2
    ld h, [hl]                                    ; $6fdc: $66
    sub [hl]                                      ; $6fdd: $96
    ld [hl], e                                    ; $6fde: $73
    ccf                                           ; $6fdf: $3f
    ld l, e                                       ; $6fe0: $6b
    jp hl                                         ; $6fe1: $e9


    dec a                                         ; $6fe2: $3d
    and h                                         ; $6fe3: $a4
    rst $28                                       ; $6fe4: $ef
    or e                                          ; $6fe5: $b3
    sbc $de                                       ; $6fe6: $de $de
    inc e                                         ; $6fe8: $1c
    db $eb                                        ; $6fe9: $eb
    cp $d5                                        ; $6fea: $fe $d5
    ld d, $77                                     ; $6fec: $16 $77
    db $f4                                        ; $6fee: $f4
    ld a, a                                       ; $6fef: $7f
    inc [hl]                                      ; $6ff0: $34
    call Call_000_0901                            ; $6ff1: $cd $01 $09
    db $fc                                        ; $6ff4: $fc
    push af                                       ; $6ff5: $f5
    ld a, l                                       ; $6ff6: $7d
    sub $d5                                       ; $6ff7: $d6 $d5
    sbc $32                                       ; $6ff9: $de $32
    ld sp, hl                                     ; $6ffb: $f9
    and e                                         ; $6ffc: $a3
    inc h                                         ; $6ffd: $24
    ld b, h                                       ; $6ffe: $44
    db $d3                                        ; $6fff: $d3
    or h                                          ; $7000: $b4
    sbc l                                         ; $7001: $9d
    db $ed                                        ; $7002: $ed
    inc hl                                        ; $7003: $23
    ld b, d                                       ; $7004: $42

jr_036_7005:
    push de                                       ; $7005: $d5
    ld h, d                                       ; $7006: $62
    inc sp                                        ; $7007: $33
    ccf                                           ; $7008: $3f
    ld l, a                                       ; $7009: $6f
    sbc d                                         ; $700a: $9a
    inc bc                                        ; $700b: $03
    call z, $8eab                                 ; $700c: $cc $ab $8e
    db $ed                                        ; $700f: $ed
    jr z, jr_036_7005                             ; $7010: $28 $f3

    ld [hl], a                                    ; $7012: $77
    ld l, [hl]                                    ; $7013: $6e
    ldh a, [$d7]                                  ; $7014: $f0 $d7
    rst $30                                       ; $7016: $f7
    ld e, c                                       ; $7017: $59
    ld d, a                                       ; $7018: $57
    ld a, e                                       ; $7019: $7b
    set 4, h                                      ; $701a: $cb $e4
    adc a                                         ; $701c: $8f
    sub d                                         ; $701d: $92
    db $10                                        ; $701e: $10
    ld c, l                                       ; $701f: $4d
    dec sp                                        ; $7020: $3b
    ld l, b                                       ; $7021: $68
    ld hl, $28fc                                  ; $7022: $21 $fc $28
    and h                                         ; $7025: $a4
    ld l, l                                       ; $7026: $6d
    ld [bc], a                                    ; $7027: $02
    ld a, a                                       ; $7028: $7f
    dec a                                         ; $7029: $3d
    inc d                                         ; $702a: $14
    ld h, d                                       ; $702b: $62
    adc l                                         ; $702c: $8d
    cp l                                          ; $702d: $bd
    ld e, a                                       ; $702e: $5f
    adc a                                         ; $702f: $8f
    halt                                          ; $7030: $76
    cpl                                           ; $7031: $2f
    cp $ea                                        ; $7032: $fe $ea
    ret c                                         ; $7034: $d8

    db $e3                                        ; $7035: $e3
    db $d3                                        ; $7036: $d3
    ld c, $5a                                     ; $7037: $0e $5a
    ld d, b                                       ; $7039: $50
    pop af                                        ; $703a: $f1
    rst $20                                       ; $703b: $e7
    dec e                                         ; $703c: $1d
    sub d                                         ; $703d: $92
    inc bc                                        ; $703e: $03
    ld c, h                                       ; $703f: $4c
    cp $3e                                        ; $7040: $fe $3e
    ld a, a                                       ; $7042: $7f
    ld b, h                                       ; $7043: $44
    ld h, h                                       ; $7044: $64
    ld c, d                                       ; $7045: $4a
    cp h                                          ; $7046: $bc
    ld b, e                                       ; $7047: $43
    sbc d                                         ; $7048: $9a
    inc d                                         ; $7049: $14
    ld l, $c6                                     ; $704a: $2e $c6
    ld [$d67e], a                                 ; $704c: $ea $7e $d6
    ld d, d                                       ; $704f: $52
    add hl, bc                                    ; $7050: $09
    ld h, e                                       ; $7051: $63
    ld h, h                                       ; $7052: $64
    ld b, e                                       ; $7053: $43
    ld [hl], d                                    ; $7054: $72
    ld c, c                                       ; $7055: $49
    ld h, c                                       ; $7056: $61
    ld [hl], h                                    ; $7057: $74
    sbc c                                         ; $7058: $99
    db $fc                                        ; $7059: $fc
    ld a, l                                       ; $705a: $7d
    cp $88                                        ; $705b: $fe $88
    ret z                                         ; $705d: $c8

    sub h                                         ; $705e: $94
    ld a, b                                       ; $705f: $78
    adc e                                         ; $7060: $8b
    or c                                          ; $7061: $b1
    cp d                                          ; $7062: $ba
    sbc c                                         ; $7063: $99
    ld e, h                                       ; $7064: $5c
    db $e3                                        ; $7065: $e3
    inc [hl]                                      ; $7066: $34
    di                                            ; $7067: $f3
    xor d                                         ; $7068: $aa
    db $ec                                        ; $7069: $ec
    ld e, h                                       ; $706a: $5c
    ld [hl], l                                    ; $706b: $75
    db $f4                                        ; $706c: $f4
    ld d, h                                       ; $706d: $54
    rra                                           ; $706e: $1f
    ld a, a                                       ; $706f: $7f
    or l                                          ; $7070: $b5
    or a                                          ; $7071: $b7
    ld h, h                                       ; $7072: $64
    push de                                       ; $7073: $d5
    ld b, c                                       ; $7074: $41
    dec bc                                        ; $7075: $0b
    dec [hl]                                      ; $7076: $35
    sub b                                         ; $7077: $90
    cp l                                          ; $7078: $bd
    ld l, c                                       ; $7079: $69
    ld c, $49                                     ; $707a: $0e $49
    pop hl                                        ; $707c: $e1
    ld e, $0e                                     ; $707d: $1e $0e
    inc b                                         ; $707f: $04
    ld l, a                                       ; $7080: $6f

Call_036_7081:
    rlca                                          ; $7081: $07
    xor a                                         ; $7082: $af
    ld l, l                                       ; $7083: $6d
    cp h                                          ; $7084: $bc
    push af                                       ; $7085: $f5
    ld d, $c1                                     ; $7086: $16 $c1
    rst $08                                       ; $7088: $cf
    db $db                                        ; $7089: $db
    dec c                                         ; $708a: $0d
    cp $a0                                        ; $708b: $fe $a0
    ld e, a                                       ; $708d: $5f
    ld de, $3ed5                                  ; $708e: $11 $d5 $3e
    jp z, $efe4                                   ; $7091: $ca $e4 $ef

    di                                            ; $7094: $f3
    rst $00                                       ; $7095: $c7
    adc d                                         ; $7096: $8a
    ld bc, $26d2                                  ; $7097: $01 $d2 $26
    ld a, l                                       ; $709a: $7d
    inc l                                         ; $709b: $2c
    add [hl]                                      ; $709c: $86
    rra                                           ; $709d: $1f
    db $f4                                        ; $709e: $f4
    ld [$9fa9], sp                                ; $709f: $08 $a9 $9f
    and l                                         ; $70a2: $a5
    ei                                            ; $70a3: $fb
    ld sp, hl                                     ; $70a4: $f9
    xor e                                         ; $70a5: $ab
    ld h, e                                       ; $70a6: $63
    dec l                                         ; $70a7: $2d
    sbc l                                         ; $70a8: $9d
    push hl                                       ; $70a9: $e5
    ld d, e                                       ; $70aa: $53
    ld [$8a7e], a                                 ; $70ab: $ea $7e $8a
    db $dd                                        ; $70ae: $dd
    rst $08                                       ; $70af: $cf
    ld e, a                                       ; $70b0: $5f
    dec e                                         ; $70b1: $1d
    db $eb                                        ; $70b2: $eb
    and e                                         ; $70b3: $a3
    adc [hl]                                      ; $70b4: $8e
    dec h                                         ; $70b5: $25
    ld a, $7f                                     ; $70b6: $3e $7f
    sbc $32                                       ; $70b8: $de $32
    ld sp, hl                                     ; $70ba: $f9
    ei                                            ; $70bb: $fb
    db $fc                                        ; $70bc: $fc
    pop hl                                        ; $70bd: $e1
    ld b, b                                       ; $70be: $40
    sbc b                                         ; $70bf: $98
    or $2b                                        ; $70c0: $f6 $2b
    ld c, h                                       ; $70c2: $4c
    ld [hl], e                                    ; $70c3: $73
    ld [hl], e                                    ; $70c4: $73
    ld e, l                                       ; $70c5: $5d
    ld a, e                                       ; $70c6: $7b
    xor $3a                                       ; $70c7: $ee $3a
    halt                                          ; $70c9: $76
    ld c, b                                       ; $70ca: $48
    ld c, $4c                                     ; $70cb: $0e $4c
    ld b, a                                       ; $70cd: $47
    rlca                                          ; $70ce: $07
    cpl                                           ; $70cf: $2f
    pop bc                                        ; $70d0: $c1
    ldh [rIF], a                                  ; $70d1: $e0 $0f
    ld [hl+], a                                   ; $70d3: $22
    ld l, e                                       ; $70d4: $6b
    sbc d                                         ; $70d5: $9a
    and [hl]                                      ; $70d6: $a6
    add hl, sp                                    ; $70d7: $39
    ld b, e                                       ; $70d8: $43
    ld sp, hl                                     ; $70d9: $f9
    inc bc                                        ; $70da: $03
    rst $30                                       ; $70db: $f7
    dec hl                                        ; $70dc: $2b
    and d                                         ; $70dd: $a2
    ld a, [hl-]                                   ; $70de: $3a
    call c, Call_036_6311                         ; $70df: $dc $11 $63
    ld l, a                                       ; $70e2: $6f
    ld h, h                                       ; $70e3: $64
    or c                                          ; $70e4: $b1
    rst $20                                       ; $70e5: $e7
    ld h, d                                       ; $70e6: $62
    cp b                                          ; $70e7: $b8
    add c                                         ; $70e8: $81
    ld d, b                                       ; $70e9: $50
    dec e                                         ; $70ea: $1d
    xor $91                                       ; $70eb: $ee $91
    ret z                                         ; $70ed: $c8

    rra                                           ; $70ee: $1f
    ld b, h                                       ; $70ef: $44
    add [hl]                                      ; $70f0: $86
    ldh [$0e], a                                  ; $70f1: $e0 $0e
    ld e, [hl]                                    ; $70f3: $5e
    db $db                                        ; $70f4: $db
    ld c, a                                       ; $70f5: $4f
    xor c                                         ; $70f6: $a9
    scf                                           ; $70f7: $37
    call $a301                                    ; $70f8: $cd $01 $a3
    ld a, $62                                     ; $70fb: $3e $62
    cp a                                          ; $70fd: $bf
    ld [hl+], a                                   ; $70fe: $22
    adc $4d                                       ; $70ff: $ce $4d
    cp $22                                        ; $7101: $fe $22
    ld h, e                                       ; $7103: $63
    add [hl]                                      ; $7104: $86
    db $e4                                        ; $7105: $e4
    and e                                         ; $7106: $a3
    jp $fccd                                      ; $7107: $c3 $cd $fc


    and b                                         ; $710a: $a0
    add $ce                                       ; $710b: $c6 $ce
    ld [hl], l                                    ; $710d: $75
    db $ed                                        ; $710e: $ed
    adc h                                         ; $710f: $8c
    add hl, sp                                    ; $7110: $39
    add hl, bc                                    ; $7111: $09
    db $fc                                        ; $7112: $fc
    dec [hl]                                      ; $7113: $35
    and e                                         ; $7114: $a3
    ld e, a                                       ; $7115: $5f
    or c                                          ; $7116: $b1
    ld a, $d7                                     ; $7117: $3e $d7
    jp nc, Jump_000_2840                          ; $7119: $d2 $40 $28

    ld e, [hl]                                    ; $711c: $5e
    ld [hl], a                                    ; $711d: $77
    rlca                                          ; $711e: $07
    inc [hl]                                      ; $711f: $34
    or [hl]                                       ; $7120: $b6
    ld [hl], e                                    ; $7121: $73
    adc b                                         ; $7122: $88
    ld e, [hl]                                    ; $7123: $5e
    or l                                          ; $7124: $b5
    reti                                          ; $7125: $d9


    cp c                                          ; $7126: $b9
    sbc a                                         ; $7127: $9f
    or l                                          ; $7128: $b5
    call nc, $e452                                ; $7129: $d4 $52 $e4
    rst $08                                       ; $712c: $cf
    or c                                          ; $712d: $b1
    ld d, b                                       ; $712e: $50
    sub $77                                       ; $712f: $d6 $77
    add l                                         ; $7131: $85
    ld [$c2f4], sp                                ; $7132: $08 $f4 $c2
    sub d                                         ; $7135: $92
    ld d, l                                       ; $7136: $55
    pop de                                        ; $7137: $d1

jr_036_7138:
    or c                                          ; $7138: $b1
    ld l, c                                       ; $7139: $69
    ld c, $a3                                     ; $713a: $0e $a3
    ld b, e                                       ; $713c: $43
    ld a, d                                       ; $713d: $7a
    dec de                                        ; $713e: $1b
    ld a, e                                       ; $713f: $7b
    rst $10                                       ; $7140: $d7
    db $db                                        ; $7141: $db
    ld d, e                                       ; $7142: $53
    dec c                                         ; $7143: $0d
    ld h, h                                       ; $7144: $64
    add sp, $06                                   ; $7145: $e8 $06
    ld a, a                                       ; $7147: $7f
    ret nc                                        ; $7148: $d0

    xor a                                         ; $7149: $af
    adc b                                         ; $714a: $88
    add $db                                       ; $714b: $c6 $db
    sbc $bf                                       ; $714d: $de $bf
    add b                                         ; $714f: $80
    scf                                           ; $7150: $37
    ld l, l                                       ; $7151: $6d
    ld [hl], d                                    ; $7152: $72
    ld e, b                                       ; $7153: $58
    ld a, d                                       ; $7154: $7a
    ei                                            ; $7155: $fb
    cp e                                          ; $7156: $bb
    adc l                                         ; $7157: $8d
    ld [hl], a                                    ; $7158: $77
    ld [hl], h                                    ; $7159: $74
    add e                                         ; $715a: $83
    ccf                                           ; $715b: $3f
    ret nz                                        ; $715c: $c0

    ld e, $7e                                     ; $715d: $1e $7e
    jp nc, $c8cc                                  ; $715f: $d2 $cc $c8

    sbc a                                         ; $7162: $9f
    sbc a                                         ; $7163: $9f
    scf                                           ; $7164: $37
    db $ed                                        ; $7165: $ed
    adc b                                         ; $7166: $88
    db $eb                                        ; $7167: $eb
    jr c, jr_036_7138                             ; $7168: $38 $ce

    cp l                                          ; $716a: $bd
    add a                                         ; $716b: $87
    inc [hl]                                      ; $716c: $34
    di                                            ; $716d: $f3
    di                                            ; $716e: $f3
    ld [hl], $b6                                  ; $716f: $36 $b6
    jp c, Jump_036_4ddb                           ; $7171: $da $db $4d

    db $e4                                        ; $7174: $e4
    rrca                                          ; $7175: $0f
    pop bc                                        ; $7176: $c1
    db $db                                        ; $7177: $db
    cp c                                          ; $7178: $b9
    cp [hl]                                       ; $7179: $be
    ld a, [hl-]                                   ; $717a: $3a
    jp nc, $c31c                                  ; $717b: $d2 $1c $c3

    ld h, e                                       ; $717e: $63
    dec sp                                        ; $717f: $3b
    or a                                          ; $7180: $b7
    ld e, h                                       ; $7181: $5c
    sub h                                         ; $7182: $94
    ld c, $e9                                     ; $7183: $0e $e9
    db $ec                                        ; $7185: $ec
    pop bc                                        ; $7186: $c1
    rra                                           ; $7187: $1f
    inc d                                         ; $7188: $14
    ld sp, hl                                     ; $7189: $f9
    cp e                                          ; $718a: $bb
    or [hl]                                       ; $718b: $b6
    rst $30                                       ; $718c: $f7
    or b                                          ; $718d: $b0
    or [hl]                                       ; $718e: $b6
    inc c                                         ; $718f: $0c
    ret                                           ; $7190: $c9


    ld bc, $9fc9                                  ; $7191: $01 $c9 $9f
    db $ed                                        ; $7194: $ed
    call $eeb1                                    ; $7195: $cd $b1 $ee
    ret nc                                        ; $7198: $d0

    call $d210                                    ; $7199: $cd $10 $d2
    ld h, $f0                                     ; $719c: $26 $f0
    rst $10                                       ; $719e: $d7
    adc h                                         ; $719f: $8c
    ld a, [hl]                                    ; $71a0: $7e
    push bc                                       ; $71a1: $c5
    ld a, [$4b5c]                                 ; $71a2: $fa $5c $4b
    inc bc                                        ; $71a5: $03
    and c                                         ; $71a6: $a1
    ret z                                         ; $71a7: $c8

    rst $18                                       ; $71a8: $df
    or l                                          ; $71a9: $b5
    dec e                                         ; $71aa: $1d
    sub c                                         ; $71ab: $91
    ld e, [hl]                                    ; $71ac: $5e
    ld l, c                                       ; $71ad: $69
    sbc c                                         ; $71ae: $99
    pop hl                                        ; $71af: $e1
    ld d, a                                       ; $71b0: $57
    dec e                                         ; $71b1: $1d
    jp nc, Jump_036_5255                          ; $71b2: $d2 $55 $52

    dec e                                         ; $71b5: $1d
    xor [hl]                                      ; $71b6: $ae
    ld l, a                                       ; $71b7: $6f
    inc [hl]                                      ; $71b8: $34
    ld [hl-], a                                   ; $71b9: $32
    ld [hl], a                                    ; $71ba: $77
    sbc b                                         ; $71bb: $98
    dec d                                         ; $71bc: $15
    ld [hl], l                                    ; $71bd: $75
    cp a                                          ; $71be: $bf
    ld [hl+], a                                   ; $71bf: $22
    adc d                                         ; $71c0: $8a
    adc [hl]                                      ; $71c1: $8e
    push af                                       ; $71c2: $f5
    pop de                                        ; $71c3: $d1
    ld de, $00d7                                  ; $71c4: $11 $d7 $00
    pop de                                        ; $71c7: $d1
    cp a                                          ; $71c8: $bf
    ld b, e                                       ; $71c9: $43
    ld [hl], d                                    ; $71ca: $72
    ld c, c                                       ; $71cb: $49
    pop hl                                        ; $71cc: $e1
    ld c, $b3                                     ; $71cd: $0e $b3
    and d                                         ; $71cf: $a2
    ld l, [hl]                                    ; $71d0: $6e
    jr nz, jr_036_7247                            ; $71d1: $20 $74

    add e                                         ; $71d3: $83
    ccf                                           ; $71d4: $3f
    xor b                                         ; $71d5: $a8
    cp $d8                                        ; $71d6: $fe $d8
    pop hl                                        ; $71d8: $e1
    or c                                          ; $71d9: $b1
    db $e4                                        ; $71da: $e4
    ret z                                         ; $71db: $c8

    ld a, h                                       ; $71dc: $7c
    xor $fd                                       ; $71dd: $ee $fd
    ld h, e                                       ; $71df: $63
    rst $38                                       ; $71e0: $ff
    ld d, $1d                                     ; $71e1: $16 $1d
    db $eb                                        ; $71e3: $eb
    and e                                         ; $71e4: $a3
    inc hl                                        ; $71e5: $23
    xor [hl]                                      ; $71e6: $ae
    ld bc, $bea2                                  ; $71e7: $01 $a2 $be
    pop de                                        ; $71ea: $d1
    ret z                                         ; $71eb: $c8

    ld a, [$6215]                                 ; $71ec: $fa $15 $62
    ld hl, sp+$41                                 ; $71ef: $f8 $41
    sbc d                                         ; $71f1: $9a
    inc bc                                        ; $71f2: $03
    jp $3b63                                      ; $71f3: $c3 $63 $3b


    jp nc, $1fd9                                  ; $71f6: $d2 $d9 $1f

    cp b                                          ; $71f9: $b8
    xor $96                                       ; $71fa: $ee $96
    adc c                                         ; $71fc: $89

jr_036_71fd:
    rst $20                                       ; $71fd: $e7
    sub [hl]                                      ; $71fe: $96
    cp a                                          ; $71ff: $bf
    or a                                          ; $7200: $b7
    ld hl, $2e1d                                  ; $7201: $21 $1d $2e
    cp l                                          ; $7204: $bd
    add a                                         ; $7205: $87
    add sp, -$22                                  ; $7206: $e8 $de
    xor a                                         ; $7208: $af
    ld b, a                                       ; $7209: $47
    cp e                                          ; $720a: $bb
    pop bc                                        ; $720b: $c1
    rra                                           ; $720c: $1f
    db $f4                                        ; $720d: $f4
    ldh a, [$93]                                  ; $720e: $f0 $93
    ld [$564f], a                                 ; $7210: $ea $4f $56
    cp l                                          ; $7213: $bd
    ld e, l                                       ; $7214: $5d
    rst $00                                       ; $7215: $c7
    pop hl                                        ; $7216: $e1
    dec a                                         ; $7217: $3d
    scf                                           ; $7218: $37
    sbc $96                                       ; $7219: $de $96
    xor h                                         ; $721b: $ac
    ld a, [hl-]                                   ; $721c: $3a
    ld l, b                                       ; $721d: $68
    cp c                                          ; $721e: $b9
    ld a, e                                       ; $721f: $7b
    or l                                          ; $7220: $b5
    ld [hl], a                                    ; $7221: $77
    ld c, b                                       ; $7222: $48
    ld c, $a3                                     ; $7223: $0e $a3
    ccf                                           ; $7225: $3f
    or $f8                                        ; $7226: $f6 $f8
    db $fc                                        ; $7228: $fc
    ld a, c                                       ; $7229: $79
    ld a, e                                       ; $722a: $7b
    rrca                                          ; $722b: $0f
    jp hl                                         ; $722c: $e9


    xor c                                         ; $722d: $a9
    ld b, $32                                     ; $722e: $06 $32
    call z, $0398                                 ; $7230: $cc $98 $03
    ret                                           ; $7233: $c9


    ccf                                           ; $7234: $3f
    sub e                                         ; $7235: $93
    ret nc                                        ; $7236: $d0

    push bc                                       ; $7237: $c5
    sbc a                                         ; $7238: $9f
    add c                                         ; $7239: $81
    rst $08                                       ; $723a: $cf
    push de                                       ; $723b: $d5
    rra                                           ; $723c: $1f
    or c                                          ; $723d: $b1
    add e                                         ; $723e: $83
    ld d, $e4                                     ; $723f: $16 $e4
    cpl                                           ; $7241: $2f
    xor h                                         ; $7242: $ac
    cp l                                          ; $7243: $bd
    xor $28                                       ; $7244: $ee $28
    cp c                                          ; $7246: $b9

jr_036_7247:
    ld [$5e23], sp                                ; $7247: $08 $23 $5e
    ld [c], a                                     ; $724a: $e2
    dec l                                         ; $724b: $2d
    ld b, c                                       ; $724c: $41
    sub d                                         ; $724d: $92
    ld l, d                                       ; $724e: $6a
    ld l, a                                       ; $724f: $6f
    sbc c                                         ; $7250: $99

Jump_036_7251:
    db $fc                                        ; $7251: $fc
    add hl, hl                                    ; $7252: $29
    jr nz, jr_036_72ac                            ; $7253: $20 $57

    dec de                                        ; $7255: $1b
    rlc h                                         ; $7256: $cb $04
    rst $00                                       ; $7258: $c7
    ld h, d                                       ; $7259: $62
    inc sp                                        ; $725a: $33
    db $e3                                        ; $725b: $e3
    dec h                                         ; $725c: $25
    add hl, de                                    ; $725d: $19
    db $f4                                        ; $725e: $f4
    ld a, l                                       ; $725f: $7d
    sub $9b                                       ; $7260: $d6 $9b
    sub [hl]                                      ; $7262: $96
    add hl, sp                                    ; $7263: $39
    jr nz, jr_036_71fd                            ; $7264: $20 $97

    add d                                         ; $7266: $82
    sbc $bf                                       ; $7267: $de $bf
    inc d                                         ; $7269: $14
    add e                                         ; $726a: $83
    ccf                                           ; $726b: $3f
    ld c, e                                       ; $726c: $4b
    add hl, bc                                    ; $726d: $09
    sub d                                         ; $726e: $92
    ld d, h                                       ; $726f: $54
    ld a, a                                       ; $7270: $7f
    db $ec                                        ; $7271: $ec
    call c, $8456                                 ; $7272: $dc $56 $84
    add hl, hl                                    ; $7275: $29
    sbc $e4                                       ; $7276: $de $e4
    dec hl                                        ; $7278: $2b
    jr z, jr_036_72d4                             ; $7279: $28 $59

    ld hl, $ae24                                  ; $727b: $21 $24 $ae
    adc [hl]                                      ; $727e: $8e
    db $ec                                        ; $727f: $ec
    call c, $6859                                 ; $7280: $dc $59 $68
    ret nz                                        ; $7283: $c0

    dec a                                         ; $7284: $3d
    ld hl, sp-$53                                 ; $7285: $f8 $ad
    rst $28                                       ; $7287: $ef
    ld b, e                                       ; $7288: $43
    ld [hl], l                                    ; $7289: $75
    cp b                                          ; $728a: $b8
    ld c, h                                       ; $728b: $4c
    cp $28                                        ; $728c: $fe $28
    add hl, bc                                    ; $728e: $09
    pop de                                        ; $728f: $d1
    or h                                          ; $7290: $b4
    add e                                         ; $7291: $83
    ld d, $f2                                     ; $7292: $16 $f2
    ld d, a                                       ; $7294: $57
    xor h                                         ; $7295: $ac
    dec b                                         ; $7296: $05
    xor d                                         ; $7297: $aa
    ld d, [hl]                                    ; $7298: $56
    ld [hl], a                                    ; $7299: $77
    inc h                                         ; $729a: $24
    ld h, a                                       ; $729b: $67
    cp h                                          ; $729c: $bc
    or $67                                        ; $729d: $f6 $67
    sbc a                                         ; $729f: $9f
    jp nc, Jump_000_0fbe                          ; $72a0: $d2 $be $0f

    push de                                       ; $72a3: $d5
    pop hl                                        ; $72a4: $e1
    ld [hl-], a                                   ; $72a5: $32
    ld sp, hl                                     ; $72a6: $f9
    ei                                            ; $72a7: $fb
    db $fc                                        ; $72a8: $fc
    ld de, $2991                                  ; $72a9: $11 $91 $29

jr_036_72ac:
    pop af                                        ; $72ac: $f1
    halt                                          ; $72ad: $76
    ret nc                                        ; $72ae: $d0

    ld [hl], d                                    ; $72af: $72
    rst $38                                       ; $72b0: $ff
    xor e                                         ; $72b1: $ab
    ld c, l                                       ; $72b2: $4d
    ld hl, $50ed                                  ; $72b3: $21 $ed $50
    adc d                                         ; $72b6: $8a
    db $dd                                        ; $72b7: $dd
    ld b, h                                       ; $72b8: $44
    cp $10                                        ; $72b9: $fe $10
    adc h                                         ; $72bb: $8c
    dec b                                         ; $72bc: $05
    ld sp, $7841                                  ; $72bd: $31 $41 $78
    ld a, e                                       ; $72c0: $7b
    rrca                                          ; $72c1: $0f
    jp hl                                         ; $72c2: $e9


    db $fd                                        ; $72c3: $fd
    ccf                                           ; $72c4: $3f
    ld b, c                                       ; $72c5: $41
    cp $1c                                        ; $72c6: $fe $1c
    ld c, e                                       ; $72c8: $4b
    add e                                         ; $72c9: $83
    cp a                                          ; $72ca: $bf
    ld a, [hl]                                    ; $72cb: $7e
    ld b, l                                       ; $72cc: $45
    sub h                                         ; $72cd: $94
    cp c                                          ; $72ce: $b9
    ld a, a                                       ; $72cf: $7f
    ret nz                                        ; $72d0: $c0

    ret c                                         ; $72d1: $d8

    pop de                                        ; $72d2: $d1
    sub [hl]                                      ; $72d3: $96

jr_036_72d4:
    ld e, e                                       ; $72d4: $5b
    jp c, $fe04                                   ; $72d5: $da $04 $fe

    ld a, d                                       ; $72d8: $7a
    scf                                           ; $72d9: $37
    add b                                         ; $72da: $80
    rst $08                                       ; $72db: $cf
    cp l                                          ; $72dc: $bd
    add a                                         ; $72dd: $87
    db $f4                                        ; $72de: $f4
    jr nz, jr_036_7302                            ; $72df: $20 $21

    ld a, d                                       ; $72e1: $7a
    db $eb                                        ; $72e2: $eb
    ld e, b                                       ; $72e3: $58
    ld l, a                                       ; $72e4: $6f
    ld c, a                                       ; $72e5: $4f
    ld hl, sp-$76                                 ; $72e6: $f8 $8a
    or l                                          ; $72e8: $b5
    add b                                         ; $72e9: $80
    db $fc                                        ; $72ea: $fc
    cp l                                          ; $72eb: $bd
    sub l                                         ; $72ec: $95
    xor h                                         ; $72ed: $ac
    ld e, b                                       ; $72ee: $58
    adc e                                         ; $72ef: $8b
    inc bc                                        ; $72f0: $03
    cp h                                          ; $72f1: $bc
    ld c, l                                       ; $72f2: $4d
    db $d3                                        ; $72f3: $d3
    inc [hl]                                      ; $72f4: $34
    rlca                                          ; $72f5: $07
    and e                                         ; $72f6: $a3
    cpl                                           ; $72f7: $2f
    add d                                         ; $72f8: $82
    inc h                                         ; $72f9: $24
    push bc                                       ; $72fa: $c5
    adc e                                         ; $72fb: $8b
    jp nc, $8fea                                  ; $72fc: $d2 $ea $8f

    call Call_000_1414                            ; $72ff: $cd $14 $14

jr_036_7302:
    dec e                                         ; $7302: $1d
    dec sp                                        ; $7303: $3b
    ld h, e                                       ; $7304: $63
    ld c, $23                                     ; $7305: $0e $23
    inc e                                         ; $7307: $1c
    db $eb                                        ; $7308: $eb
    ld c, $7d                                     ; $7309: $0e $7d
    xor e                                         ; $730b: $ab
    ld [hl], $4b                                  ; $730c: $36 $4b
    dec sp                                        ; $730e: $3b
    ld l, a                                       ; $730f: $6f
    sbc b                                         ; $7310: $98
    ld d, d                                       ; $7311: $52
    rlca                                          ; $7312: $07
    ld a, a                                       ; $7313: $7f
    ld d, b                                       ; $7314: $50
    db $e4                                        ; $7315: $e4
    adc a                                         ; $7316: $8f
    inc b                                         ; $7317: $04
    ld h, h                                       ; $7318: $64
    xor b                                         ; $7319: $a8
    or [hl]                                       ; $731a: $b6
    db $f4                                        ; $731b: $f4
    add h                                         ; $731c: $84
    xor a                                         ; $731d: $af
    ld e, b                                       ; $731e: $58
    dec bc                                        ; $731f: $0b
    ret z                                         ; $7320: $c8

    rst $18                                       ; $7321: $df
    ld e, e                                       ; $7322: $5b
    rlca                                          ; $7323: $07
    cpl                                           ; $7324: $2f
    jp hl                                         ; $7325: $e9


    inc l                                         ; $7326: $2c
    ld d, [hl]                                    ; $7327: $56
    sub [hl]                                      ; $7328: $96
    or h                                          ; $7329: $b4
    and e                                         ; $732a: $a3
    ld b, e                                       ; $732b: $43
    ld a, d                                       ; $732c: $7a
    sub b                                         ; $732d: $90
    db $10                                        ; $732e: $10
    cp l                                          ; $732f: $bd
    dec [hl]                                      ; $7330: $35
    or $59                                        ; $7331: $f6 $59
    cp [hl]                                       ; $7333: $be
    ld b, d                                       ; $7334: $42
    ld [hl+], a                                   ; $7335: $22
    ld d, [hl]                                    ; $7336: $56
    ld a, e                                       ; $7337: $7b
    db $d3                                        ; $7338: $d3
    inc e                                         ; $7339: $1c
    ld c, c                                       ; $733a: $49
    sub [hl]                                      ; $733b: $96
    sbc [hl]                                      ; $733c: $9e
    ldh a, [$15]                                  ; $733d: $f0 $15
    ld l, e                                       ; $733f: $6b
    ld bc, $7bf9                                  ; $7340: $01 $f9 $7b
    xor e                                         ; $7343: $ab
    jr c, @-$06                                   ; $7344: $38 $f8

    add e                                         ; $7346: $83
    xor [hl]                                      ; $7347: $ae
    sub d                                         ; $7348: $92
    ld [de], a                                    ; $7349: $12
    inc h                                         ; $734a: $24
    xor c                                         ; $734b: $a9
    ld c, $fe                                     ; $734c: $0e $fe
    jp nc, $fa32                                  ; $734e: $d2 $32 $fa

    ld d, l                                       ; $7351: $55

jr_036_7352:
    xor e                                         ; $7352: $ab
    sbc $1d                                       ; $7353: $de $1d
    ld h, b                                       ; $7355: $60
    add hl, sp                                    ; $7356: $39
    ld d, a                                       ; $7357: $57
    rst $38                                       ; $7358: $ff
    db $dd                                        ; $7359: $dd
    sbc $48                                       ; $735a: $de $48
    rst $00                                       ; $735c: $c7
    ld h, c                                       ; $735d: $61
    ld [hl], c                                    ; $735e: $71
    add e                                         ; $735f: $83
    cp a                                          ; $7360: $bf
    ld e, $c1                                     ; $7361: $1e $c1
    ld e, a                                       ; $7363: $5f
    push de                                       ; $7364: $d5
    pop de                                        ; $7365: $d1
    cp c                                          ; $7366: $b9
    xor [hl]                                      ; $7367: $ae
    xor l                                         ; $7368: $ad
    ld e, d                                       ; $7369: $5a
    db $dd                                        ; $736a: $dd
    ld [hl], a                                    ; $736b: $77
    ld d, c                                       ; $736c: $51
    scf                                           ; $736d: $37
    add hl, sp                                    ; $736e: $39
    jr z, jr_036_7352                             ; $736f: $28 $e1

    or h                                          ; $7371: $b4
    sbc l                                         ; $7372: $9d
    scf                                           ; $7373: $37
    ld c, h                                       ; $7374: $4c
    bit 1, b                                      ; $7375: $cb $48
    ld c, c                                       ; $7377: $49
    db $fc                                        ; $7378: $fc
    halt                                          ; $7379: $76
    ld l, [hl]                                    ; $737a: $6e
    ld a, [c]                                     ; $737b: $f2
    rla                                           ; $737c: $17
    add hl, de                                    ; $737d: $19
    ld [hl], e                                    ; $737e: $73
    xor [hl]                                      ; $737f: $ae
    ld d, [hl]                                    ; $7380: $56
    ld h, l                                       ; $7381: $65
    inc bc                                        ; $7382: $03
    and c                                         ; $7383: $a1
    adc [hl]                                      ; $7384: $8e
    dec l                                         ; $7385: $2d
    ld a, [$3349]                                 ; $7386: $fa $49 $33

Call_036_7389:
    dec b                                         ; $7389: $05
    sub [hl]                                      ; $738a: $96
    sbc [hl]                                      ; $738b: $9e
    ldh a, [$15]                                  ; $738c: $f0 $15
    ld l, e                                       ; $738e: $6b
    or c                                          ; $738f: $b1
    and h                                         ; $7390: $a4
    add hl, sp                                    ; $7391: $39
    jp $84b1                                      ; $7392: $c3 $b1 $84


    jp c, $c41b                                   ; $7395: $da $1b $c4

    or l                                          ; $7398: $b5
    ld h, c                                       ; $7399: $61
    add c                                         ; $739a: $81
    ld l, [hl]                                    ; $739b: $6e
    ldh a, [rTAC]                                 ; $739c: $f0 $07
    ld l, c                                       ; $739e: $69
    dec sp                                        ; $739f: $3b
    rst $00                                       ; $73a0: $c7
    db $eb                                        ; $73a1: $eb
    ld a, [hl-]                                   ; $73a2: $3a
    or $dc                                        ; $73a3: $f6 $dc
    ldh [$af], a                                  ; $73a5: $e0 $af
    add a                                         ; $73a7: $87
    ld b, d                                       ; $73a8: $42
    db $ec                                        ; $73a9: $ec
    ld e, [hl]                                    ; $73aa: $5e
    db $fc                                        ; $73ab: $fc
    push de                                       ; $73ac: $d5
    or c                                          ; $73ad: $b1
    rst $00                                       ; $73ae: $c7
    and a                                         ; $73af: $a7
    dec e                                         ; $73b0: $1d
    cp h                                          ; $73b1: $bc
    or [hl]                                       ; $73b2: $b6
    add e                                         ; $73b3: $83
    sub a                                         ; $73b4: $97
    xor h                                         ; $73b5: $ac
    ei                                            ; $73b6: $fb
    sub a                                         ; $73b7: $97
    ld hl, sp-$65                                 ; $73b8: $f8 $9b
    ld a, c                                       ; $73ba: $79
    add a                                         ; $73bb: $87
    db $e4                                        ; $73bc: $e4
    add hl, bc                                    ; $73bd: $09
    db $fc                                        ; $73be: $fc
    push af                                       ; $73bf: $f5
    ld a, l                                       ; $73c0: $7d
    nop                                           ; $73c1: $00
    scf                                           ; $73c2: $37
    di                                            ; $73c3: $f3
    cp e                                          ; $73c4: $bb
    ld [$ce02], sp                                ; $73c5: $08 $02 $ce
    push de                                       ; $73c8: $d5
    pop bc                                        ; $73c9: $c1
    ld e, a                                       ; $73ca: $5f
    ld e, a                                       ; $73cb: $5f
    ld e, b                                       ; $73cc: $58
    ld c, d                                       ; $73cd: $4a
    ld d, [hl]                                    ; $73ce: $56
    dec b                                         ; $73cf: $05
    ld sp, $7841                                  ; $73d0: $31 $41 $78
    rst $08                                       ; $73d3: $cf
    dec e                                         ; $73d4: $1d
    ld [hl], l                                    ; $73d5: $75
    ld bc, $d258                                  ; $73d6: $01 $58 $d2
    inc e                                         ; $73d9: $1c
    add hl, bc                                    ; $73da: $09
    db $fc                                        ; $73db: $fc
    ld d, l                                       ; $73dc: $55
    ld a, a                                       ; $73dd: $7f
    cp $c0                                        ; $73de: $fe $c0
    rst $20                                       ; $73e0: $e7
    ld b, $7f                                     ; $73e1: $06 $7f
    cp l                                          ; $73e3: $bd
    sub e                                         ; $73e4: $93
    ld b, h                                       ; $73e5: $44
    cp e                                          ; $73e6: $bb
    cpl                                           ; $73e7: $2f
    inc l                                         ; $73e8: $2c
    db $fd                                        ; $73e9: $fd
    adc d                                         ; $73ea: $8a
    jr z, jr_036_7460                             ; $73eb: $28 $73

    rst $38                                       ; $73ed: $ff
    add b                                         ; $73ee: $80
    adc e                                         ; $73ef: $8b
    ld [hl], b                                    ; $73f0: $70
    adc l                                         ; $73f1: $8d
    db $e3                                        ; $73f2: $e3
    ld c, l                                       ; $73f3: $4d
    dec sp                                        ; $73f4: $3b
    inc e                                         ; $73f5: $1c
    ld a, e                                       ; $73f6: $7b
    ei                                            ; $73f7: $fb
    ld b, a                                       ; $73f8: $47

jr_036_73f9:
    adc a                                         ; $73f9: $8f
    sub b                                         ; $73fa: $90
    add $71                                       ; $73fb: $c6 $71
    ld e, b                                       ; $73fd: $58
    adc d                                         ; $73fe: $8a
    ld d, a                                       ; $73ff: $57
    rlca                                          ; $7400: $07
    cpl                                           ; $7401: $2f
    add hl, sp                                    ; $7402: $39
    rst $30                                       ; $7403: $f7
    ld d, e                                       ; $7404: $53
    db $ec                                        ; $7405: $ec
    sbc l                                         ; $7406: $9d
    inc h                                         ; $7407: $24
    jp c, $f4b5                                   ; $7408: $da $b5 $f4

    ld [$fafe], sp                                ; $740b: $08 $fe $fa
    ld a, $a2                                     ; $740e: $3e $a2
    scf                                           ; $7410: $37
    call $4901                                    ; $7411: $cd $01 $49
    rra                                           ; $7414: $1f
    dec bc                                        ; $7415: $0b
    ld a, [bc]                                    ; $7416: $0a
    ld l, d                                       ; $7417: $6a
    jp hl                                         ; $7418: $e9


    ld d, a                                       ; $7419: $57
    db $fc                                        ; $741a: $fc
    and l                                         ; $741b: $a5
    dec e                                         ; $741c: $1d
    ld l, $7d                                     ; $741d: $2e $7d
    rra                                           ; $741f: $1f
    ld a, [$7f15]                                 ; $7420: $fa $15 $7f
    push de                                       ; $7423: $d5
    adc [hl]                                      ; $7424: $8e
    push af                                       ; $7425: $f5
    halt                                          ; $7426: $76
    sbc $0f                                       ; $7427: $de $0f
    sub [hl]                                      ; $7429: $96
    ld h, [hl]                                    ; $742a: $66
    ld a, [hl]                                    ; $742b: $7e
    rra                                           ; $742c: $1f
    ld de, $d5ce                                  ; $742d: $11 $ce $d5
    pop hl                                        ; $7430: $e1
    or d                                          ; $7431: $b2
    ld c, $ed                                     ; $7432: $0e $ed
    db $ed                                        ; $7434: $ed
    db $fd                                        ; $7435: $fd
    adc e                                         ; $7436: $8b
    or a                                          ; $7437: $b7
    ld h, h                                       ; $7438: $64
    add l                                         ; $7439: $85
    rst $38                                       ; $743a: $ff
    jr c, jr_036_73f9                             ; $743b: $38 $bc

    adc l                                         ; $743d: $8d
    ld l, l                                       ; $743e: $6d
    ld a, [c]                                     ; $743f: $f2
    sub l                                         ; $7440: $95
    db $dd                                        ; $7441: $dd
    cp a                                          ; $7442: $bf
    nop                                           ; $7443: $00
    and [hl]                                      ; $7444: $a6
    add hl, sp                                    ; $7445: $39
    add hl, bc                                    ; $7446: $09
    db $fc                                        ; $7447: $fc
    push af                                       ; $7448: $f5
    ld a, l                                       ; $7449: $7d
    sub $65                                       ; $744a: $d6 $65
    add [hl]                                      ; $744c: $86
    ei                                            ; $744d: $fb
    ld e, c                                       ; $744e: $59
    ld c, e                                       ; $744f: $4b
    ret                                           ; $7450: $c9


    ld a, [bc]                                    ; $7451: $0a
    rst $38                                       ; $7452: $ff
    ld [hl], c                                    ; $7453: $71
    ld a, b                                       ; $7454: $78
    ld a, e                                       ; $7455: $7b
    inc b                                         ; $7456: $04
    sub h                                         ; $7457: $94
    cp c                                          ; $7458: $b9
    ld a, a                                       ; $7459: $7f
    ret nz                                        ; $745a: $c0

    call Call_036_7e8c                            ; $745b: $cd $8c $7e
    sbc $b4                                       ; $745e: $de $b4

jr_036_7460:
    and e                                         ; $7460: $a3
    cp l                                          ; $7461: $bd
    ld e, e                                       ; $7462: $5b
    ld c, e                                       ; $7463: $4b
    ccf                                           ; $7464: $3f

Jump_036_7465:
    push bc                                       ; $7465: $c5
    xor e                                         ; $7466: $ab
    dec de                                        ; $7467: $1b
    db $fc                                        ; $7468: $fc
    ld b, c                                       ; $7469: $41
    ld e, a                                       ; $746a: $5f

jr_036_746b:
    inc l                                         ; $746b: $2c
    ld e, b                                       ; $746c: $58
    ld a, d                                       ; $746d: $7a
    add h                                         ; $746e: $84
    db $f4                                        ; $746f: $f4
    ld e, c                                       ; $7470: $59
    ld a, d                                       ; $7471: $7a
    rst $38                                       ; $7472: $ff
    ld [hl], d                                    ; $7473: $72
    xor [hl]                                      ; $7474: $ae
    cp $bb                                        ; $7475: $fe $bb
    dec a                                         ; $7477: $3d
    inc d                                         ; $7478: $14
    ld h, d                                       ; $7479: $62
    dec l                                         ; $747a: $2d
    ld a, l                                       ; $747b: $7d
    or c                                          ; $747c: $b1
    ld h, b                                       ; $747d: $60
    ld l, c                                       ; $747e: $69
    jp nz, Jump_036_6f5b                          ; $747f: $c2 $5b $6f

    sbc a                                         ; $7482: $9f
    and l                                         ; $7483: $a5
    sbc c                                         ; $7484: $99
    rst $28                                       ; $7485: $ef
    ld b, [hl]                                    ; $7486: $46
    ld l, a                                       ; $7487: $6f
    pop de                                        ; $7488: $d1
    or c                                          ; $7489: $b1
    ld b, e                                       ; $748a: $43
    ld [hl], d                                    ; $748b: $72
    or e                                          ; $748c: $b3
    cp $73                                        ; $748d: $fe $73
    push af                                       ; $748f: $f5
    rst $00                                       ; $7490: $c7
    sbc $bf                                       ; $7491: $de $bf
    call nc, $afd2                                ; $7493: $d4 $d2 $af
    ld hl, sp+$4b                                 ; $7496: $f8 $4b
    set 4, h                                      ; $7498: $cb $e4
    rst $28                                       ; $749a: $ef
    ld l, e                                       ; $749b: $6b
    sbc a                                         ; $749c: $9f
    xor e                                         ; $749d: $ab
    ccf                                           ; $749e: $3f
    ld h, d                                       ; $749f: $62
    ld h, a                                       ; $74a0: $67
    and c                                         ; $74a1: $a1
    adc d                                         ; $74a2: $8a
    jr nz, jr_036_746b                            ; $74a3: $20 $c6

    inc [hl]                                      ; $74a5: $34
    sbc $d1                                       ; $74a6: $de $d1
    dec c                                         ; $74a8: $0d
    cp $a0                                        ; $74a9: $fe $a0
    adc [hl]                                      ; $74ab: $8e
    db $ed                                        ; $74ac: $ed
    jr nc, @-$37                                  ; $74ad: $30 $c7

    or $b3                                        ; $74af: $f6 $b3
    sbc c                                         ; $74b1: $99
    reti                                          ; $74b2: $d9


    ld b, b                                       ; $74b3: $40
    db $f4                                        ; $74b4: $f4
    or $7d                                        ; $74b5: $f6 $7d
    jr c, @-$07                                   ; $74b7: $38 $f7

    ld d, e                                       ; $74b9: $53
    xor h                                         ; $74ba: $ac
    and l                                         ; $74bb: $a5
    ld b, a                                       ; $74bc: $47
    ldh a, [$57]                                  ; $74bd: $f0 $57
    db $fd                                        ; $74bf: $fd
    or c                                          ; $74c0: $b1
    ld d, $04                                     ; $74c1: $16 $04
    ld [hl], a                                    ; $74c3: $77
    db $e4                                        ; $74c4: $e4
    and a                                         ; $74c5: $a7
    or l                                          ; $74c6: $b5
    call c, $f903                                 ; $74c7: $dc $03 $f9
    add e                                         ; $74ca: $83
    cp [hl]                                       ; $74cb: $be
    rrca                                          ; $74cc: $0f
    ld l, c                                       ; $74cd: $69
    ld c, $43                                     ; $74ce: $0e $43
    ld e, c                                       ; $74d0: $59
    ld c, e                                       ; $74d1: $4b
    rst $28                                       ; $74d2: $ef
    sbc $ad                                       ; $74d3: $de $ad
    and l                                         ; $74d5: $a5
    add $6e                                       ; $74d6: $c6 $6e
    ldh a, [rTAC]                                 ; $74d8: $f0 $07
    cp l                                          ; $74da: $bd
    ld a, a                                       ; $74db: $7f
    add hl, sp                                    ; $74dc: $39
    ld d, a                                       ; $74dd: $57
    ld e, e                                       ; $74de: $5b
    jp z, $970c                                   ; $74df: $ca $0c $97

    or l                                          ; $74e2: $b5
    sub [hl]                                      ; $74e3: $96
    db $eb                                        ; $74e4: $eb
    ld b, c                                       ; $74e5: $41
    rst $18                                       ; $74e6: $df
    add a                                         ; $74e7: $87
    ld [hl], e                                    ; $74e8: $73
    rst $28                                       ; $74e9: $ef
    sub [hl]                                      ; $74ea: $96
    ld [$3bbf], a                                 ; $74eb: $ea $bf $3b
    ld h, e                                       ; $74ee: $63
    ld c, $23                                     ; $74ef: $0e $23
    dec e                                         ; $74f1: $1d
    db $db                                        ; $74f2: $db
    sub c                                         ; $74f3: $91
    ld c, $04                                     ; $74f4: $0e $04
    ld c, e                                       ; $74f6: $4b
    jp c, $d2e1                                   ; $74f7: $da $e1 $d2

    ld b, e                                       ; $74fa: $43
    ld hl, $08f6                                  ; $74fb: $21 $f6 $08
    jp hl                                         ; $74fe: $e9


    pop af                                        ; $74ff: $f1
    sub a                                         ; $7500: $97
    cp a                                          ; $7501: $bf
    db $e3                                        ; $7502: $e3
    db $d3                                        ; $7503: $d3
    ld l, d                                       ; $7504: $6a
    cp c                                          ; $7505: $b9
    sbc [hl]                                      ; $7506: $9e
    scf                                           ; $7507: $37
    db $ed                                        ; $7508: $ed
    ld [hl], b                                    ; $7509: $70
    ld l, c                                       ; $750a: $69
    jr nz, @+$16                                  ; $750b: $20 $14

    xor a                                         ; $750d: $af
    ld [hl+], a                                   ; $750e: $22
    ld a, h                                       ; $750f: $7c
    cp c                                          ; $7510: $b9
    ld d, l                                       ; $7511: $55
    xor l                                         ; $7512: $ad
    ld l, [hl]                                    ; $7513: $6e
    ldh a, [$57]                                  ; $7514: $f0 $57
    ld [hl], $b6                                  ; $7516: $36 $b6
    ret z                                         ; $7518: $c8

    rst $18                                       ; $7519: $df
    db $fd                                        ; $751a: $fd
    di                                            ; $751b: $f3
    rst $10                                       ; $751c: $d7
    inc [hl]                                      ; $751d: $34
    ld c, l                                       ; $751e: $4d
    ld [hl], e                                    ; $751f: $73
    jp $f7a5                                      ; $7520: $c3 $a5 $f7


    cpl                                           ; $7523: $2f
    ld a, l                                       ; $7524: $7d
    ld h, c                                       ; $7525: $61
    ld l, c                                       ; $7526: $69
    ld l, h                                       ; $7527: $6c
    sub e                                         ; $7528: $93
    xor a                                         ; $7529: $af
    db $ec                                        ; $752a: $ec
    cp $05                                        ; $752b: $fe $05
    or b                                          ; $752d: $b0
    ld b, a                                       ; $752e: $47
    ld b, b                                       ; $752f: $40
    inc de                                        ; $7530: $13
    sbc $7a                                       ; $7531: $de $7a
    ld h, a                                       ; $7533: $67
    inc e                                         ; $7534: $1c
    sub d                                         ; $7535: $92
    inc bc                                        ; $7536: $03
    jp $81a5                                      ; $7537: $c3 $a5 $81


    ret nc                                        ; $753a: $d0

    jr c, @+$10                                   ; $753b: $38 $0e

    ld c, e                                       ; $753d: $4b
    ld e, c                                       ; $753e: $59
    ld b, a                                       ; $753f: $47
    adc a                                         ; $7540: $8f
    sub b                                         ; $7541: $90
    or h                                          ; $7542: $b4
    ret                                           ; $7543: $c9


    ld h, c                                       ; $7544: $61
    jp hl                                         ; $7545: $e9


    xor b                                         ; $7546: $a8
    dec bc                                        ; $7547: $0b
    ret nz                                        ; $7548: $c0

    ld [hl], d                                    ; $7549: $72
    ld l, $41                                     ; $754a: $2e $41
    sub d                                         ; $754c: $92
    ld [$2fe0], a                                 ; $754d: $ea $e0 $2f
    call $4901                                    ; $7550: $cd $01 $49
    xor d                                         ; $7553: $aa
    ld l, h                                       ; $7554: $6c
    jr nz, jr_036_75cb                            ; $7555: $20 $74

    jr nc, @+$4e                                  ; $7557: $30 $4c

    ld c, e                                       ; $7559: $4b
    ld d, [hl]                                    ; $755a: $56
    and l                                         ; $755b: $a5
    ld e, a                                       ; $755c: $5f
    pop bc                                        ; $755d: $c1
    cp c                                          ; $755e: $b9
    and e                                         ; $755f: $a3
    ld l, $00                                     ; $7560: $2e $00
    ld c, e                                       ; $7562: $4b
    jp c, $fe04                                   ; $7563: $da $04 $fe

    ld a, d                                       ; $7566: $7a
    or a                                          ; $7567: $b7
    ld l, b                                       ; $7568: $68
    rst $30                                       ; $7569: $f7
    ld [$aafe], sp                                ; $756a: $08 $fe $aa
    adc [hl]                                      ; $756d: $8e
    ld [$afe0], a                                 ; $756e: $ea $e0 $af
    scf                                           ; $7571: $37
    jp nc, Jump_036_5871                          ; $7572: $d2 $71 $58

    or $dc                                        ; $7575: $f6 $dc
    db $fd                                        ; $7577: $fd

jr_036_7578:
    db $fc                                        ; $7578: $fc
    ld l, c                                       ; $7579: $69
    rra                                           ; $757a: $1f
    dec c                                         ; $757b: $0d
    cp $7a                                        ; $757c: $fe $7a
    add h                                         ; $757e: $84
    ld d, h                                       ; $757f: $54
    add a                                         ; $7580: $87
    pop de                                        ; $7581: $d1
    db $db                                        ; $7582: $db
    ld e, b                                       ; $7583: $58
    or b                                          ; $7584: $b0
    jr jr_036_7578                                ; $7585: $18 $f1

    cpl                                           ; $7587: $2f
    ld a, b                                       ; $7588: $78
    rr h                                          ; $7589: $cb $1c
    ld [$a667], sp                                ; $758b: $08 $67 $a6
    db $fd                                        ; $758e: $fd
    sbc e                                         ; $758f: $9b
    add hl, de                                    ; $7590: $19
    db $fd                                        ; $7591: $fd
    cp h                                          ; $7592: $bc
    ld a, l                                       ; $7593: $7d
    sbc a                                         ; $7594: $9f
    ld [hl], l                                    ; $7595: $75
    jp c, $fe04                                   ; $7596: $da $04 $fe

    sbc d                                         ; $7599: $9a
    pop de                                        ; $759a: $d1
    xor a                                         ; $759b: $af
    ld e, b                                       ; $759c: $58
    sbc a                                         ; $759d: $9f
    ld l, e                                       ; $759e: $6b
    jp hl                                         ; $759f: $e9


    dec a                                         ; $75a0: $3d
    ld b, h                                       ; $75a1: $44
    rst $30                                       ; $75a2: $f7
    ld [$4afe], sp                                ; $75a3: $08 $fe $4a
    ld d, [hl]                                    ; $75a6: $56
    ld b, a                                       ; $75a7: $47
    sbc c                                         ; $75a8: $99
    ldh [$d8], a                                  ; $75a9: $e0 $d8
    ld [de], a                                    ; $75ab: $12
    and h                                         ; $75ac: $a4
    daa                                           ; $75ad: $27
    sbc $34                                       ; $75ae: $de $34
    rlca                                          ; $75b0: $07
    add hl, bc                                    ; $75b1: $09
    db $fc                                        ; $75b2: $fc
    dec d                                         ; $75b3: $15
    db $fd                                        ; $75b4: $fd
    ld e, h                                       ; $75b5: $5c
    db $ed                                        ; $75b6: $ed
    dec l                                         ; $75b7: $2d
    inc de                                        ; $75b8: $13
    inc e                                         ; $75b9: $1c
    ld a, e                                       ; $75ba: $7b
    xor $67                                       ; $75bb: $ee $67
    dec l                                         ; $75bd: $2d
    dec c                                         ; $75be: $0d
    cp $3a                                        ; $75bf: $fe $3a
    ld l, b                                       ; $75c1: $68
    ld b, c                                       ; $75c2: $41
    ldh a, [$73]                                  ; $75c3: $f0 $73
    scf                                           ; $75c5: $37
    ld hl, sp-$7d                                 ; $75c6: $f8 $83
    ld h, [hl]                                    ; $75c8: $66
    ld a, a                                       ; $75c9: $7f
    ret                                           ; $75ca: $c9


jr_036_75cb:
    ld c, l                                       ; $75cb: $4d
    db $d3                                        ; $75cc: $d3
    or h                                          ; $75cd: $b4
    jp $c44c                                      ; $75ce: $c3 $4c $c4


    ld l, d                                       ; $75d1: $6a
    ld b, e                                       ; $75d2: $43
    dec l                                         ; $75d3: $2d
    push bc                                       ; $75d4: $c5
    ldh [$af], a                                  ; $75d5: $e0 $af
    ld [hl], c                                    ; $75d7: $71
    sub h                                         ; $75d8: $94
    add hl, sp                                    ; $75d9: $39
    db $10                                        ; $75da: $10
    adc $4c                                       ; $75db: $ce $4c
    ld h, a                                       ; $75dd: $67
    db $ec                                        ; $75de: $ec
    add sp, -$71                                  ; $75df: $e8 $8f
    dec b                                         ; $75e1: $05
    dec b                                         ; $75e2: $05
    push de                                       ; $75e3: $d5
    ld h, c                                       ; $75e4: $61
    or h                                          ; $75e5: $b4
    sub h                                         ; $75e6: $94
    add hl, sp                                    ; $75e7: $39
    db $10                                        ; $75e8: $10
    adc $4c                                       ; $75e9: $ce $4c
    ld h, a                                       ; $75eb: $67
    ld l, h                                       ; $75ec: $6c
    ld [hl], d                                    ; $75ed: $72
    ld d, b                                       ; $75ee: $50
    and d                                         ; $75ef: $a2
    ld b, a                                       ; $75f0: $47
    ret z                                         ; $75f1: $c8

    cp c                                          ; $75f2: $b9
    inc hl                                        ; $75f3: $23
    dec e                                         ; $75f4: $1d
    ld [$2196], sp                                ; $75f5: $08 $96 $21
    add hl, sp                                    ; $75f8: $39
    or e                                          ; $75f9: $b3
    rst $08                                       ; $75fa: $cf
    inc sp                                        ; $75fb: $33
    rst $30                                       ; $75fc: $f7
    add hl, bc                                    ; $75fd: $09
    jp Jump_000_349b                              ; $75fe: $c3 $9b $34


    ld a, h                                       ; $7601: $7c
    or $ce                                        ; $7602: $f6 $ce
    ld a, [hl-]                                   ; $7604: $3a
    rst $08                                       ; $7605: $cf
    db $ec                                        ; $7606: $ec
    adc h                                         ; $7607: $8c
    jp Jump_036_4f67                              ; $7608: $c3 $67 $4f


    ld [hl], e                                    ; $760b: $73
    or e                                          ; $760c: $b3
    cp $73                                        ; $760d: $fe $73
    ld b, a                                       ; $760f: $47
    ld e, l                                       ; $7610: $5d
    nop                                           ; $7611: $00
    sub [hl]                                      ; $7612: $96
    ld [hl], e                                    ; $7613: $73
    ld l, a                                       ; $7614: $6f
    rst $10                                       ; $7615: $d7
    ld [hl], c                                    ; $7616: $71
    db $f4                                        ; $7617: $f4
    ld e, c                                       ; $7618: $59
    jp nc, Jump_036_7f32                          ; $7619: $d2 $32 $7f

    sub $23                                       ; $761c: $d6 $23
    db $e4                                        ; $761e: $e4
    call c, $c7fb                                 ; $761f: $dc $fb $c7
    ld l, d                                       ; $7622: $6a
    ld d, l                                       ; $7623: $55
    inc c                                         ; $7624: $0c
    ccf                                           ; $7625: $3f
    add h                                         ; $7626: $84
    inc [hl]                                      ; $7627: $34
    rlca                                          ; $7628: $07
    add hl, bc                                    ; $7629: $09
    db $fc                                        ; $762a: $fc
    push af                                       ; $762b: $f5
    ld a, l                                       ; $762c: $7d
    sub $8d                                       ; $762d: $d6 $8d
    or a                                          ; $762f: $b7
    ld c, l                                       ; $7630: $4d
    db $d3                                        ; $7631: $d3
    or h                                          ; $7632: $b4
    pop bc                                        ; $7633: $c1
    ld e, a                                       ; $7634: $5f
    rst $18                                       ; $7635: $df
    ld h, a                                       ; $7636: $67
    db $dd                                        ; $7637: $dd
    ld a, b                                       ; $7638: $78
    db $db                                        ; $7639: $db
    call z, Call_036_6bf7                         ; $763a: $cc $f7 $6b
    rst $10                                       ; $763d: $d7
    db $db                                        ; $763e: $db
    inc [hl]                                      ; $763f: $34
    ld c, l                                       ; $7640: $4d
    dec de                                        ; $7641: $1b
    db $fc                                        ; $7642: $fc
    push af                                       ; $7643: $f5
    ld a, l                                       ; $7644: $7d
    sub $35                                       ; $7645: $d6 $35
    ld [hl], $33                                  ; $7647: $36 $33
    ld a, [c]                                     ; $7649: $f2
    rst $30                                       ; $764a: $f7
    add hl, bc                                    ; $764b: $09
    ld [bc], a                                    ; $764c: $02
    sbc d                                         ; $764d: $9a
    and [hl]                                      ; $764e: $a6
    ld l, c                                       ; $764f: $69
    ld c, $a3                                     ; $7650: $0e $a3
    ccf                                           ; $7652: $3f
    adc $98                                       ; $7653: $ce $98
    inc bc                                        ; $7655: $03
    add hl, bc                                    ; $7656: $09
    db $fc                                        ; $7657: $fc
    dec d                                         ; $7658: $15
    db $fd                                        ; $7659: $fd
    call c, $f823                                 ; $765a: $dc $23 $f8
    dec hl                                        ; $765d: $2b
    sbc d                                         ; $765e: $9a
    or d                                          ; $765f: $b2
    ld [$023d], sp                                ; $7660: $08 $3d $02
    xor d                                         ; $7663: $aa
    ld a, l                                       ; $7664: $7d
    ld [hl], h                                    ; $7665: $74
    ld c, [hl]                                    ; $7666: $4e
    dec d                                         ; $7667: $15
    ld e, d                                       ; $7668: $5a
    rlca                                          ; $7669: $07
    ldh a, [$37]                                  ; $766a: $f0 $37
    pop af                                        ; $766c: $f1
    xor b                                         ; $766d: $a8
    db $eb                                        ; $766e: $eb

jr_036_766f:
    or $69                                        ; $766f: $f6 $69
    sbc d                                         ; $7671: $9a
    inc bc                                        ; $7672: $03
    jp $eae7                                      ; $7673: $c3 $e7 $ea


    ld l, h                                       ; $7676: $6c
    daa                                           ; $7677: $27
    ld sp, $9dce                                  ; $7678: $31 $ce $9d
    ld [hl], $69                                  ; $767b: $36 $69
    ld hl, sp+$5c                                 ; $767d: $f8 $5c
    ld h, l                                       ; $767f: $65
    adc $3d                                       ; $7680: $ce $3d
    inc a                                         ; $7682: $3c
    ld h, c                                       ; $7683: $61
    or $26                                        ; $7684: $f6 $26
    jr nc, jr_036_766f                            ; $7686: $30 $e7

    ld l, [hl]                                    ; $7688: $6e
    jp nz, Jump_036_65ec                          ; $7689: $c2 $ec $65

    ld c, $4f                                     ; $768c: $0e $4f
    sbc b                                         ; $768e: $98
    ld a, l                                       ; $768f: $7d
    ld hl, sp+$5c                                 ; $7690: $f8 $5c
    sbc l                                         ; $7692: $9d
    ld a, e                                       ; $7693: $7b
    jr z, jr_036_7709                             ; $7694: $28 $73

    and $e4                                       ; $7696: $e6 $e4
    pop hl                                        ; $7698: $e1
    ld l, c                                       ; $7699: $69
    ld c, $cc                                     ; $769a: $0e $cc
    add h                                         ; $769c: $84
    pop hl                                        ; $769d: $e1
    ret                                           ; $769e: $c9


    call z, $9bb9                                 ; $769f: $cc $b9 $9b
    inc [hl]                                      ; $76a2: $34
    rst $08                                       ; $76a3: $cf
    cp c                                          ; $76a4: $b9
    and e                                         ; $76a5: $a3
    add a                                         ; $76a6: $87
    ld [hl-], a                                   ; $76a7: $32
    dec sp                                        ; $76a8: $3b
    ld [hl], h                                    ; $76a9: $74
    ld e, $66                                     ; $76aa: $1e $66
    ld b, a                                       ; $76ac: $47
    ld h, $cc                                     ; $76ad: $26 $cc
    ld d, l                                       ; $76af: $55
    add $e1                                       ; $76b0: $c6 $e1
    and e                                         ; $76b2: $a3
    rst $20                                       ; $76b3: $e7
    sbc b                                         ; $76b4: $98
    dec hl                                        ; $76b5: $2b
    ld l, c                                       ; $76b6: $69
    ld hl, sp-$14                                 ; $76b7: $f8 $ec
    ld c, l                                       ; $76b9: $4d
    ld h, b                                       ; $76ba: $60
    adc $3d                                       ; $76bb: $ce $3d
    ld h, e                                       ; $76bd: $63
    inc de                                        ; $76be: $13
    ld h, [hl]                                    ; $76bf: $66
    ld c, [hl]                                    ; $76c0: $4e
    ld l, [hl]                                    ; $76c1: $6e
    ld a, [c]                                     ; $76c2: $f2
    ret nc                                        ; $76c3: $d0

    ld h, c                                       ; $76c4: $61
    jp $fb3b                                      ; $76c5: $c3 $3b $fb


    inc a                                         ; $76c8: $3c
    ld [hl], e                                    ; $76c9: $73
    sub l                                         ; $76ca: $95
    ld [hl], c                                    ; $76cb: $71
    jr c, @+$75                                   ; $76cc: $38 $73

    xor $a1                                       ; $76ce: $ee $a1
    or e                                          ; $76d0: $b3
    call $ee7d                                    ; $76d1: $cd $7d $ee
    add sp, -$1f                                  ; $76d4: $e8 $e1
    or e                                          ; $76d6: $b3
    rst $08                                       ; $76d7: $cf
    sbc $84                                       ; $76d8: $de $84
    sbc c                                         ; $76da: $99
    sub e                                         ; $76db: $93
    dec sp                                        ; $76dc: $3b
    db $eb                                        ; $76dd: $eb
    ldh a, [$91]                                  ; $76de: $f0 $91
    ld b, e                                       ; $76e0: $43
    ld h, a                                       ; $76e1: $67
    ld c, a                                       ; $76e2: $4f
    ld a, [de]                                    ; $76e3: $1a
    adc $ec                                       ; $76e4: $ce $ec
    adc b                                         ; $76e6: $88
    inc de                                        ; $76e7: $13
    rst $20                                       ; $76e8: $e7
    ld a, [de]                                    ; $76e9: $1a
    dec [hl]                                      ; $76ea: $35
    ld a, h                                       ; $76eb: $7c
    xor [hl]                                      ; $76ec: $ae
    adc $3d                                       ; $76ed: $ce $3d
    inc a                                         ; $76ef: $3c
    ld h, c                                       ; $76f0: $61
    or [hl]                                       ; $76f1: $b6
    pop hl                                        ; $76f2: $e1
    ld l, c                                       ; $76f3: $69
    inc de                                        ; $76f4: $13
    ld h, [hl]                                    ; $76f5: $66
    ld c, [hl]                                    ; $76f6: $4e
    xor $b0                                       ; $76f7: $ee $b0
    add h                                         ; $76f9: $84
    reti                                          ; $76fa: $d9


    dec sp                                        ; $76fb: $3b
    ei                                            ; $76fc: $fb
    inc a                                         ; $76fd: $3c
    ld [hl], e                                    ; $76fe: $73
    ld [hl], l                                    ; $76ff: $75
    or $39                                        ; $7700: $f6 $39
    ld h, [hl]                                    ; $7702: $66
    ld c, [hl]                                    ; $7703: $4e
    ld l, $73                                     ; $7704: $2e $73
    and $e4                                       ; $7706: $e6 $e4
    and c                                         ; $7708: $a1

jr_036_7709:
    ld [hl], e                                    ; $7709: $73
    rst $08                                       ; $770a: $cf
    dec a                                         ; $770b: $3d
    ld a, h                                       ; $770c: $7c
    or $ce                                        ; $770d: $f6 $ce
    inc sp                                        ; $770f: $33
    ld a, e                                       ; $7710: $7b
    ld d, d                                       ; $7711: $52
    sub e                                         ; $7712: $93
    and $99                                       ; $7713: $e6 $99
    sbc l                                         ; $7715: $9d
    add hl, sp                                    ; $7716: $39
    ld [hl], a                                    ; $7717: $77
    ld e, d                                       ; $7718: $5a
    and $1c                                       ; $7719: $e6 $1c
    jp $ce86                                      ; $771b: $c3 $86 $ce


    sub [hl]                                      ; $771e: $96
    call nc, $9984                                ; $771f: $d4 $84 $99
    sub e                                         ; $7722: $93
    sbc e                                         ; $7723: $9b
    inc [hl]                                      ; $7724: $34
    sub h                                         ; $7725: $94
    reti                                          ; $7726: $d9


    pop hl                                        ; $7727: $e1
    or e                                          ; $7728: $b3
    dec h                                         ; $7729: $25
    call z, Call_000_3097                         ; $772a: $cc $97 $30
    ld a, h                                       ; $772d: $7c
    xor [hl]                                      ; $772e: $ae
    ld h, $0d                                     ; $772f: $26 $0d
    ld h, a                                       ; $7731: $67
    halt                                          ; $7732: $76
    or [hl]                                       ; $7733: $b6
    pop hl                                        ; $7734: $e1
    jp $cf86                                      ; $7735: $c3 $86 $cf


    adc $ec                                       ; $7738: $ce $ec
    or b                                          ; $773a: $b0
    pop hl                                        ; $773b: $e1
    call z, $b984                                 ; $773c: $cc $84 $b9
    ld c, a                                       ; $773f: $4f
    jr jr_036_77c0                                ; $7740: $18 $7e

    xor $e8                                       ; $7742: $ee $e8
    pop hl                                        ; $7744: $e1
    ld [hl], e                                    ; $7745: $73
    dec h                                         ; $7746: $25
    dec c                                         ; $7747: $0d
    ld l, a                                       ; $7748: $6f
    jp nz, $c9cc                                  ; $7749: $c2 $cc $c9

    dec e                                         ; $774c: $1d
    sbc c                                         ; $774d: $99
    jr nc, jr_036_77a7                            ; $774e: $30 $57

    ld b, a                                       ; $7750: $47
    ld c, $4f                                     ; $7751: $0e $4f
    sbc b                                         ; $7753: $98
    ld a, l                                       ; $7754: $7d
    ld hl, sp-$14                                 ; $7755: $f8 $ec
    dec e                                         ; $7757: $1d
    sbc [hl]                                      ; $7758: $9e
    ret nz                                        ; $7759: $c0

    jr c, jr_036_77d8                             ; $775a: $38 $7c

    or $e1                                        ; $775c: $f6 $e1
    or e                                          ; $775e: $b3
    ld [hl], a                                    ; $775f: $77
    call nz, Call_036_7389                        ; $7760: $c4 $89 $73
    adc l                                         ; $7763: $8d
    sbc d                                         ; $7764: $9a
    ld h, l                                       ; $7765: $65
    ld hl, sp+$5c                                 ; $7766: $f8 $5c
    dec e                                         ; $7768: $1d
    ld a, $17                                     ; $7769: $3e $17
    ld [hl], e                                    ; $776b: $73
    and $e4                                       ; $776c: $e6 $e4
    and c                                         ; $776e: $a1

Call_036_776f:
    or e                                          ; $776f: $b3
    call z, $7c32                                 ; $7770: $cc $32 $7c
    or $b4                                        ; $7773: $f6 $b4
    ld b, e                                       ; $7775: $43
    ld h, a                                       ; $7776: $67
    ld h, e                                       ; $7777: $63
    adc $71                                       ; $7778: $ce $71
    ld l, $63                                     ; $777a: $2e $63

Jump_036_777c:
    jp nz, $8eb0                                  ; $777c: $c2 $b0 $8e

    ld c, h                                       ; $777f: $4c
    sbc b                                         ; $7780: $98
    xor e                                         ; $7781: $ab
    ld c, c                                       ; $7782: $49
    jp $2f67                                      ; $7783: $c3 $67 $2f


    ld [hl], e                                    ; $7786: $73
    xor $e1                                       ; $7787: $ee $e1
    add hl, bc                                    ; $7789: $09
    or e                                          ; $778a: $b3
    sbc a                                         ; $778b: $9f
    dec sp                                        ; $778c: $3b
    ld b, a                                       ; $778d: $47
    jp nc, $b9f0                                  ; $778e: $d2 $f0 $b9

    sbc d                                         ; $7791: $9a
    inc [hl]                                      ; $7792: $34
    ld c, a                                       ; $7793: $4f
    ld b, a                                       ; $7794: $47
    daa                                           ; $7795: $27
    call z, $9cc5                                 ; $7796: $cc $c5 $9c
    cp e                                          ; $7799: $bb
    ld c, c                                       ; $779a: $49
    ld b, e                                       ; $779b: $43
    sbc c                                         ; $779c: $99
    ld h, l                                       ; $779d: $65
    ld c, $9f                                     ; $779e: $0e $9f
    ld l, l                                       ; $77a0: $6d
    ret c                                         ; $77a1: $d8

    ldh a, [$32]                                  ; $77a2: $f0 $32
    ld h, a                                       ; $77a4: $67
    ld c, [hl]                                    ; $77a5: $4e
    ld c, [hl]                                    ; $77a6: $4e

jr_036_77a7:
    sbc b                                         ; $77a7: $98
    ld a, c                                       ; $77a8: $79
    inc b                                         ; $77a9: $04
    ld [hl], e                                    ; $77aa: $73
    add sp, $6c                                   ; $77ab: $e8 $6c
    dec e                                         ; $77ad: $1d
    sbc l                                         ; $77ae: $9d
    jr nc, @-$42                                  ; $77af: $30 $bc

    ld c, c                                       ; $77b1: $49
    jp Jump_036_6613                              ; $77b2: $c3 $13 $66


    rra                                           ; $77b5: $1f
    sbc $e1                                       ; $77b6: $de $e1
    or e                                          ; $77b8: $b3

Jump_036_77b9:
    call Call_036_7c3d                            ; $77b9: $cd $3d $7c
    xor [hl]                                      ; $77bc: $ae
    reti                                          ; $77bd: $d9


    dec sp                                        ; $77be: $3b
    ld a, h                                       ; $77bf: $7c

jr_036_77c0:
    xor [hl]                                      ; $77c0: $ae
    reti                                          ; $77c1: $d9


    add [hl]                                      ; $77c2: $86
    daa                                           ; $77c3: $27

Jump_036_77c4:
    inc h                                         ; $77c4: $24
    dec c                                         ; $77c5: $0d
    sbc a                                         ; $77c6: $9f
    dec a                                         ; $77c7: $3d
    call $b301                                    ; $77c8: $cd $01 $b3
    sub c                                         ; $77cb: $91
    or d                                          ; $77cc: $b2
    or l                                          ; $77cd: $b5
    inc c                                         ; $77ce: $0c
    ret                                           ; $77cf: $c9


    ld bc, $0a8c                                  ; $77d0: $01 $8c $0a
    cp h                                          ; $77d3: $bc
    dec e                                         ; $77d4: $1d
    jp z, $f57a                                   ; $77d5: $ca $7a $f5

jr_036_77d8:
    cp c                                          ; $77d8: $b9
    ret                                           ; $77d9: $c9


    ld e, a                                       ; $77da: $5f
    ld h, h                                       ; $77db: $64
    ld c, h                                       ; $77dc: $4c
    sbc d                                         ; $77dd: $9a
    inc bc                                        ; $77de: $03
    ld c, c                                       ; $77df: $49
    sub [hl]                                      ; $77e0: $96
    ld [hl-], a                                   ; $77e1: $32
    pop bc                                        ; $77e2: $c1
    or c                                          ; $77e3: $b1
    ld b, e                                       ; $77e4: $43
    ld a, [hl-]                                   ; $77e5: $3a
    and a                                         ; $77e6: $a7
    ld a, [bc]                                    ; $77e7: $0a
    ld de, $da53                                  ; $77e8: $11 $53 $da
    rst $30                                       ; $77eb: $f7
    and c                                         ; $77ec: $a1
    pop af                                        ; $77ed: $f1
    halt                                          ; $77ee: $76
    ld c, b                                       ; $77ef: $48
    ld c, $b3                                     ; $77f0: $0e $b3
    dec sp                                        ; $77f2: $3b
    or $dc                                        ; $77f3: $f6 $dc
    ldh [$af], a                                  ; $77f5: $e0 $af
    ld l, h                                       ; $77f7: $6c
    ld l, h                                       ; $77f8: $6c
    inc sp                                        ; $77f9: $33
    set 2, a                                      ; $77fa: $cb $d7
    xor $5e                                       ; $77fc: $ee $5e
    db $fc                                        ; $77fe: $fc
    ld d, l                                       ; $77ff: $55
    call z, $901f                                 ; $7800: $cc $1f $90
    dec e                                         ; $7803: $1d
    db $10                                        ; $7804: $10
    ld e, c                                       ; $7805: $59
    inc sp                                        ; $7806: $33
    rst $18                                       ; $7807: $df
    xor [hl]                                      ; $7808: $ae
    db $e3                                        ; $7809: $e3
    ldh a, [$9e]                                  ; $780a: $f0 $9e
    xor e                                         ; $780c: $ab
    adc [hl]                                      ; $780d: $8e
    ld [$9630], a                                 ; $780e: $ea $30 $96
    xor h                                         ; $7811: $ac
    ld a, [hl-]                                   ; $7812: $3a
    ld l, b                                       ; $7813: $68
    ld a, c                                       ; $7814: $79
    or c                                          ; $7815: $b1
    jp c, $e7b2                                   ; $7816: $da $b2 $e7

    ld e, [hl]                                    ; $7819: $5e
    db $ec                                        ; $781a: $ec
    db $fd                                        ; $781b: $fd
    ld a, d                                       ; $781c: $7a
    or h                                          ; $781d: $b4
    ld e, d                                       ; $781e: $5a
    ld d, l                                       ; $781f: $55
    rlca                                          ; $7820: $07
    ld a, a                                       ; $7821: $7f
    db $fd                                        ; $7822: $fd
    adc d                                         ; $7823: $8a
    cp a                                          ; $7824: $bf
    ld a, [hl]                                    ; $7825: $7e
    ld c, d                                       ; $7826: $4a
    dec e                                         ; $7827: $1d
    db $eb                                        ; $7828: $eb
    and d                                         ; $7829: $a2
    sbc a                                         ; $782a: $9f
    inc [hl]                                      ; $782b: $34
    ld d, e                                       ; $782c: $53
    ret nc                                        ; $782d: $d0

    call z, Call_000_1fc8                         ; $782e: $cc $c8 $1f
    db $fd                                        ; $7831: $fd
    sbc c                                         ; $7832: $99
    or a                                          ; $7833: $b7
    rst $28                                       ; $7834: $ef
    inc hl                                        ; $7835: $23
    and h                                         ; $7836: $a4
    add hl, sp                                    ; $7837: $39
    add hl, bc                                    ; $7838: $09
    db $fc                                        ; $7839: $fc

Call_036_783a:
    push af                                       ; $783a: $f5
    ld d, b                                       ; $783b: $50

Jump_036_783c:
    adc b                                         ; $783c: $88
    ld c, l                                       ; $783d: $4d
    ld a, b                                       ; $783e: $78
    db $eb                                        ; $783f: $eb
    xor l                                         ; $7840: $ad
    ld h, e                                       ; $7841: $63
    dec sp                                        ; $7842: $3b
    ldh a, [$bf]                                  ; $7843: $f0 $bf
    ld [hl], h                                    ; $7845: $74
    ld d, $f9                                     ; $7846: $16 $f9
    sbc c                                         ; $7848: $99
    or a                                          ; $7849: $b7
    ld [$d4a6], sp                                ; $784a: $08 $a6 $d4
    sbc e                                         ; $784d: $9b
    ld [hl], $01                                  ; $784e: $36 $01
    and c                                         ; $7850: $a1
    di                                            ; $7851: $f3
    ld e, [hl]                                    ; $7852: $5e
    ld d, h                                       ; $7853: $54
    ei                                            ; $7854: $fb
    cp b                                          ; $7855: $b8
    inc b                                         ; $7856: $04
    ld a, [bc]                                    ; $7857: $0a
    rla                                           ; $7858: $17
    call z, $0398                                 ; $7859: $cc $98 $03
    or e                                          ; $785c: $b3
    dec sp                                        ; $785d: $3b
    ld [hl], $6d                                  ; $785e: $36 $6d
    add a                                         ; $7860: $87
    ld c, e                                       ; $7861: $4b
    xor c                                         ; $7862: $a9
    ld e, c                                       ; $7863: $59
    add sp, -$57                                  ; $7864: $e8 $a9
    cp a                                          ; $7866: $bf
    reti                                          ; $7867: $d9


    sub a                                         ; $7868: $97
    ld l, [hl]                                    ; $7869: $6e
    ldh a, [rTAC]                                 ; $786a: $f0 $07
    sub l                                         ; $786c: $95
    ldh [rIF], a                                  ; $786d: $e0 $0f
    ld [hl+], a                                   ; $786f: $22
    dec sp                                        ; $7870: $3b
    ld d, a                                       ; $7871: $57
    dec de                                        ; $7872: $1b
    rst $18                                       ; $7873: $df
    and a                                         ; $7874: $a7
    ld l, h                                       ; $7875: $6c
    ld l, a                                       ; $7876: $6f
    ld a, a                                       ; $7877: $7f
    or a                                          ; $7878: $b7
    sub [hl]                                      ; $7879: $96
    ld a, [hl]                                    ; $787a: $7e
    push bc                                       ; $787b: $c5
    ld e, a                                       ; $787c: $5f
    scf                                           ; $787d: $37
    ld hl, sp-$7d                                 ; $787e: $f8 $83
    ld [hl+], a                                   ; $7880: $22
    ld e, b                                       ; $7881: $58
    ld e, b                                       ; $7882: $58
    ld l, a                                       ; $7883: $6f
    jp c, $d2e1                                   ; $7884: $da $e1 $d2

    ld b, b                                       ; $7887: $40
    ld l, b                                       ; $7888: $68
    inc e                                         ; $7889: $1c
    add a                                         ; $788a: $87
    and l                                         ; $788b: $a5
    ld a, e                                       ; $788c: $7b
    pop af                                        ; $788d: $f1
    rst $10                                       ; $788e: $d7
    sub b                                         ; $788f: $90
    call z, $efab                                 ; $7890: $cc $ab $ef
    ld d, a                                       ; $7893: $57
    push af                                       ; $7894: $f5
    dec h                                         ; $7895: $25
    ld d, b                                       ; $7896: $50
    dec l                                         ; $7897: $2d
    ld e, a                                       ; $7898: $5f
    adc l                                         ; $7899: $8d
    db $e3                                        ; $789a: $e3
    ld l, l                                       ; $789b: $6d
    sbc d                                         ; $789c: $9a
    and [hl]                                      ; $789d: $a6
    add hl, sp                                    ; $789e: $39
    di                                            ; $789f: $f3
    xor h                                         ; $78a0: $ac
    xor [hl]                                      ; $78a1: $ae
    or [hl]                                       ; $78a2: $b6
    ld [hl], h                                    ; $78a3: $74
    xor $2f                                       ; $78a4: $ee $2f
    xor e                                         ; $78a6: $ab
    adc [hl]                                      ; $78a7: $8e
    rst $30                                       ; $78a8: $f7
    scf                                           ; $78a9: $37
    db $eb                                        ; $78aa: $eb

Call_036_78ab:
    call nz, $07bd                                ; $78ab: $c4 $bd $07
    and d                                         ; $78ae: $a2
    or a                                          ; $78af: $b7

Call_036_78b0:
    call z, $b9f0                                 ; $78b0: $cc $f0 $b9
    ld [hl], a                                    ; $78b3: $77
    ld c, e                                       ; $78b4: $4b
    adc a                                         ; $78b5: $8f
    sub b                                         ; $78b6: $90
    ld l, d                                       ; $78b7: $6a
    ld l, a                                       ; $78b8: $6f
    inc sp                                        ; $78b9: $33
    inc hl                                        ; $78ba: $23
    ld a, a                                       ; $78bb: $7f
    pop bc                                        ; $78bc: $c1
    ld l, a                                       ; $78bd: $6f
    ret nc                                        ; $78be: $d0

    rst $30                                       ; $78bf: $f7
    ld h, c                                       ; $78c0: $61
    add $1c                                       ; $78c1: $c6 $1c
    ld c, c                                       ; $78c3: $49
    adc [hl]                                      ; $78c4: $8e
    db $ed                                        ; $78c5: $ed
    cp h                                          ; $78c6: $bc
    rra                                           ; $78c7: $1f
    inc l                                         ; $78c8: $2c
    ld a, l                                       ; $78c9: $7d
    rra                                           ; $78ca: $1f
    ld a, [de]                                    ; $78cb: $1a
    ld l, a                                       ; $78cc: $6f
    ld a, e                                       ; $78cd: $7b
    add h                                         ; $78ce: $84
    db $f4                                        ; $78cf: $f4
    rst $28                                       ; $78d0: $ef
    and b                                         ; $78d1: $a0
    dec b                                         ; $78d2: $05
    db $e4                                        ; $78d3: $e4
    dec hl                                        ; $78d4: $2b
    ld c, b                                       ; $78d5: $48
    sbc e                                         ; $78d6: $9b
    ret nz                                        ; $78d7: $c0

    ld e, a                                       ; $78d8: $5f
    push af                                       ; $78d9: $f5
    rst $20                                       ; $78da: $e7
    rrca                                          ; $78db: $0f
    ld a, h                                       ; $78dc: $7c
    xor [hl]                                      ; $78dd: $ae
    ld c, $69                                     ; $78de: $0e $69
    ld h, [hl]                                    ; $78e0: $66
    ld [hl+], a                                   ; $78e1: $22
    ld c, h                                       ; $78e2: $4c
    ld e, l                                       ; $78e3: $5d
    ld c, e                                       ; $78e4: $4b
    rlca                                          ; $78e5: $07
    jp Jump_000_3a94                              ; $78e6: $c3 $94 $3a


    ld hl, sp-$7d                                 ; $78e9: $f8 $83
    inc [hl]                                      ; $78eb: $34
    rlca                                          ; $78ec: $07
    di                                            ; $78ed: $f3
    xor h                                         ; $78ee: $ac
    xor [hl]                                      ; $78ef: $ae
    cp $0d                                        ; $78f0: $fe $0d
    add h                                         ; $78f2: $84
    xor $c5                                       ; $78f3: $ee $c5
    ld e, a                                       ; $78f5: $5f
    dec c                                         ; $78f6: $0d
    rst $30                                       ; $78f7: $f7
    adc a                                         ; $78f8: $8f
    db $fd                                        ; $78f9: $fd
    xor e                                         ; $78fa: $ab
    dec l                                         ; $78fb: $2d
    add $a6                                       ; $78fc: $c6 $a6
    ld l, c                                       ; $78fe: $69
    sbc d                                         ; $78ff: $9a
    inc bc                                        ; $7900: $03
    ld c, c                                       ; $7901: $49
    ld a, a                                       ; $7902: $7f
    or a                                          ; $7903: $b7
    ret z                                         ; $7904: $c8

    ld e, a                                       ; $7905: $5f
    ld a, b                                       ; $7906: $78
    sbc h                                         ; $7907: $9c
    jp nc, $d30b                                  ; $7908: $d2 $0b $d3

    inc e                                         ; $790b: $1c
    and e                                         ; $790c: $a3
    cp a                                          ; $790d: $bf
    xor b                                         ; $790e: $a8
    and e                                         ; $790f: $a3
    rst $28                                       ; $7910: $ef
    inc hl                                        ; $7911: $23
    ld b, d                                       ; $7912: $42
    ld b, a                                       ; $7913: $47
    ret                                           ; $7914: $c9


    ld b, l                                       ; $7915: $45
    jr @-$0d                                      ; $7916: $18 $f1

    sub d                                         ; $7918: $92
    ld [hl-], a                                   ; $7919: $32
    rst $30                                       ; $791a: $f7
    rrca                                          ; $791b: $0f
    cp b                                          ; $791c: $b8
    ld b, a                                       ; $791d: $47
    ldh a, [$37]                                  ; $791e: $f0 $37
    ld h, e                                       ; $7920: $63
    ld c, $49                                     ; $7921: $0e $49
    adc [hl]                                      ; $7923: $8e
    db $ed                                        ; $7924: $ed
    cp h                                          ; $7925: $bc
    rra                                           ; $7926: $1f
    inc l                                         ; $7927: $2c
    ld a, l                                       ; $7928: $7d
    rra                                           ; $7929: $1f
    ld a, [de]                                    ; $792a: $1a
    rst $28                                       ; $792b: $ef
    xor b                                         ; $792c: $a8
    cp $d8                                        ; $792d: $fe $d8
    reti                                          ; $792f: $d9


    call z, $9b7a                                 ; $7930: $cc $7a $9b
    ld e, c                                       ; $7933: $59
    inc c                                         ; $7934: $0c
    ld h, b                                       ; $7935: $60
    ld c, b                                       ; $7936: $48
    dec sp                                        ; $7937: $3b
    ld c, d                                       ; $7938: $4a
    ld l, $c2                                     ; $7939: $2e $c2
    adc b                                         ; $793b: $88
    sub a                                         ; $793c: $97
    sub h                                         ; $793d: $94
    cp c                                          ; $793e: $b9
    ld a, a                                       ; $793f: $7f
    ret nz                                        ; $7940: $c0

    cp l                                          ; $7941: $bd
    ld e, l                                       ; $7942: $5d
    cp e                                          ; $7943: $bb
    ldh [rNR30], a                                ; $7944: $e0 $1a
    cp e                                          ; $7946: $bb
    pop bc                                        ; $7947: $c1
    rra                                           ; $7948: $1f
    call nc, $f202                                ; $7949: $d4 $02 $f2
    inc sp                                        ; $794c: $33
    rst $28                                       ; $794d: $ef
    cp c                                          ; $794e: $b9
    or c                                          ; $794f: $b1
    push de                                       ; $7950: $d5
    sub [hl]                                      ; $7951: $96
    ld [hl-], a                                   ; $7952: $32
    ld sp, hl                                     ; $7953: $f9
    ld d, e                                       ; $7954: $53
    ld d, h                                       ; $7955: $54
    ld d, a                                       ; $7956: $57
    dec sp                                        ; $7957: $3b
    sub $d8                                       ; $7958: $d6 $d8
    ld a, c                                       ; $795a: $79
    ccf                                           ; $795b: $3f
    ld e, b                                       ; $795c: $58
    or b                                          ; $795d: $b0
    ld h, h                                       ; $795e: $64
    ld d, l                                       ; $795f: $55
    inc b                                         ; $7960: $04
    ccf                                           ; $7961: $3f
    ld l, a                                       ; $7962: $6f
    jp c, $fe04                                   ; $7963: $da $04 $fe

    jp z, $f6c6                                   ; $7966: $ca $c6 $f6

    ld [$0629], sp                                ; $7969: $08 $29 $06
    ld a, a                                       ; $796c: $7f
    sub [hl]                                      ; $796d: $96
    ld [hl], e                                    ; $796e: $73
    push af                                       ; $796f: $f5
    ld b, a                                       ; $7970: $47

jr_036_7971:
    xor h                                         ; $7971: $ac
    and l                                         ; $7972: $a5
    jr jr_036_7971                                ; $7973: $18 $fc

    ld d, l                                       ; $7975: $55
    add a                                         ; $7976: $87
    pop de                                        ; $7977: $d1
    ret c                                         ; $7978: $d8

    ld e, c                                       ; $7979: $59
    rst $38                                       ; $797a: $ff
    sub e                                         ; $797b: $93
    ld l, d                                       ; $797c: $6a
    db $e3                                        ; $797d: $e3
    ei                                            ; $797e: $fb
    sub h                                         ; $797f: $94
    dec l                                         ; $7980: $2d
    ld e, [hl]                                    ; $7981: $5e
    ld h, l                                       ; $7982: $65
    ld a, l                                       ; $7983: $7d
    sub b                                         ; $7984: $90
    ld e, $f4                                     ; $7985: $1e $f4
    ld a, l                                       ; $7987: $7d
    jr c, jr_036_79e1                             ; $7988: $38 $57

    rlca                                          ; $798a: $07
    ld a, a                                       ; $798b: $7f
    dec h                                         ; $798c: $25
    xor e                                         ; $798d: $ab
    ld [hl+], a                                   ; $798e: $22
    ld a, a                                       ; $798f: $7f
    inc h                                         ; $7990: $24
    jr nz, jr_036_7a0e                            ; $7991: $20 $7b

    db $d3                                        ; $7993: $d3
    ld [hl-], a                                   ; $7994: $32
    xor a                                         ; $7995: $af
    cp [hl]                                       ; $7996: $be
    rrca                                          ; $7997: $0f
    ldh [$5a], a                                  ; $7998: $e0 $5a
    xor d                                         ; $799a: $aa
    ccf                                           ; $799b: $3f

Call_036_799c:
    sub [hl]                                      ; $799c: $96
    pop de                                        ; $799d: $d1
    inc b                                         ; $799e: $04
    jp hl                                         ; $799f: $e9


    pop de                                        ; $79a0: $d1
    ld [hl], e                                    ; $79a1: $73
    push af                                       ; $79a2: $f5
    ld b, a                                       ; $79a3: $47
    xor h                                         ; $79a4: $ac
    and l                                         ; $79a5: $a5
    ld l, d                                       ; $79a6: $6a
    ld [hl], l                                    ; $79a7: $75
    or l                                          ; $79a8: $b5
    ld h, e                                       ; $79a9: $63
    dec sp                                        ; $79aa: $3b
    rst $28                                       ; $79ab: $ef
    rlca                                          ; $79ac: $07
    ld c, e                                       ; $79ad: $4b
    ld c, a                                       ; $79ae: $4f
    ld d, e                                       ; $79af: $53
    ld bc, $7bd0                                  ; $79b0: $01 $d0 $7b
    and d                                         ; $79b3: $a2
    ld a, b                                       ; $79b4: $78
    db $d3                                        ; $79b5: $d3
    inc e                                         ; $79b6: $1c
    and e                                         ; $79b7: $a3
    jp $9f7d                                      ; $79b8: $c3 $7d $9f


    ld [hl], l                                    ; $79bb: $75
    add e                                         ; $79bc: $83
    cp a                                          ; $79bd: $bf
    ld l, d                                       ; $79be: $6a
    ld l, a                                       ; $79bf: $6f
    sbc c                                         ; $79c0: $99
    ldh [$d8], a                                  ; $79c1: $e0 $d8
    ld a, [hl]                                    ; $79c3: $7e
    add l                                         ; $79c4: $85
    push de                                       ; $79c5: $d5
    ld a, $ca                                     ; $79c6: $3e $ca
    inc e                                         ; $79c8: $1c
    ld [$a667], sp                                ; $79c9: $08 $67 $a6
    ld h, l                                       ; $79cc: $65
    ld a, l                                       ; $79cd: $7d
    cp e                                          ; $79ce: $bb
    adc [hl]                                      ; $79cf: $8e
    jp Jump_036_633b                              ; $79d0: $c3 $3b $63


    ld c, $09                                     ; $79d3: $0e $09
    db $fc                                        ; $79d5: $fc
    push af                                       ; $79d6: $f5
    ld a, l                                       ; $79d7: $7d
    sub $d5                                       ; $79d8: $d6 $d5
    sbc $32                                       ; $79da: $de $32
    rlca                                          ; $79dc: $07
    jp nz, Jump_036_6999                          ; $79dd: $c2 $99 $69

    rlca                                          ; $79e0: $07

jr_036_79e1:
    dec l                                         ; $79e1: $2d
    db $e4                                        ; $79e2: $e4
    xor a                                         ; $79e3: $af
    ld e, b                                       ; $79e4: $58
    dec bc                                        ; $79e5: $0b
    sbc h                                         ; $79e6: $9c
    adc e                                         ; $79e7: $8b
    ld d, a                                       ; $79e8: $57
    push af                                       ; $79e9: $f5
    ld b, a                                       ; $79ea: $47
    db $ec                                        ; $79eb: $ec
    ld a, [hl+]                                   ; $79ec: $2a
    xor c                                         ; $79ed: $a9
    or [hl]                                       ; $79ee: $b6
    sbc h                                         ; $79ef: $9c
    ld [$cc8d], a                                 ; $79f0: $ea $8d $cc
    rst $20                                       ; $79f3: $e7
    ld l, d                                       ; $79f4: $6a
    ld c, e                                       ; $79f5: $4b
    or l                                          ; $79f6: $b5
    or a                                          ; $79f7: $b7
    ld c, h                                       ; $79f8: $4c
    ld [hl], b                                    ; $79f9: $70
    ld l, h                                       ; $79fa: $6c
    adc c                                         ; $79fb: $89

Call_036_79fc:
    ld e, b                                       ; $79fc: $58
    db $ed                                        ; $79fd: $ed
    db $ed                                        ; $79fe: $ed
    db $fd                                        ; $79ff: $fd
    and d                                         ; $7a00: $a2
    inc d                                         ; $7a01: $14
    call c, Call_036_4b89                         ; $7a02: $dc $89 $4b
    call nz, $ef6a                                ; $7a05: $c4 $6a $ef
    cp c                                          ; $7a08: $b9
    dec de                                        ; $7a09: $1b
    db $fc                                        ; $7a0a: $fc
    ld b, c                                       ; $7a0b: $41
    ld e, c                                       ; $7a0c: $59
    xor a                                         ; $7a0d: $af

jr_036_7a0e:
    ld [bc], a                                    ; $7a0e: $02
    or d                                          ; $7a0f: $b2
    or a                                          ; $7a10: $b7
    inc de                                        ; $7a11: $13
    rst $30                                       ; $7a12: $f7
    call c, $db78                                 ; $7a13: $dc $78 $db
    xor a                                         ; $7a16: $af
    ld hl, sp+$2b                                 ; $7a17: $f8 $2b
    db $eb                                        ; $7a19: $eb
    db $db                                        ; $7a1a: $db
    ld [hl], l                                    ; $7a1b: $75
    inc e                                         ; $7a1c: $1c
    sbc $de                                       ; $7a1d: $de $de
    xor [hl]                                      ; $7a1f: $ae
    ld e, l                                       ; $7a20: $5d
    ld [hl], b                                    ; $7a21: $70
    jp c, $d5d9                                   ; $7a22: $da $d9 $d5

    ld [hl], $10                                  ; $7a25: $36 $10
    ld a, [$4b59]                                 ; $7a27: $fa $59 $4b
    sbc c                                         ; $7a2a: $99
    db $fc                                        ; $7a2b: $fc
    ld d, c                                       ; $7a2c: $51
    add l                                         ; $7a2d: $85
    ret c                                         ; $7a2e: $d8

    inc hl                                        ; $7a2f: $23
    and b                                         ; $7a30: $a0
    jp c, Jump_036_59d2                           ; $7a31: $da $d2 $59

    db $e4                                        ; $7a34: $e4
    ld h, a                                       ; $7a35: $67
    ld d, $47                                     ; $7a36: $16 $47
    jp c, $8fa4                                   ; $7a38: $da $a4 $8f

    sbc l                                         ; $7a3b: $9d
    push af                                       ; $7a3c: $f5
    ccf                                           ; $7a3d: $3f
    ld sp, $167e                                  ; $7a3e: $31 $7e $16
    ld sp, hl                                     ; $7a41: $f9
    and e                                         ; $7a42: $a3
    ld a, [bc]                                    ; $7a43: $0a
    sub c                                         ; $7a44: $91
    jr nc, @+$44                                  ; $7a45: $30 $42

    ld e, c                                       ; $7a47: $59
    ld h, a                                       ; $7a48: $67
    or c                                          ; $7a49: $b1
    dec bc                                        ; $7a4a: $0b
    ld h, l                                       ; $7a4b: $65
    ccf                                           ; $7a4c: $3f
    push de                                       ; $7a4d: $d5
    ld l, c                                       ; $7a4e: $69
    ld c, $c3                                     ; $7a4f: $0e $c3
    inc a                                         ; $7a51: $3c
    ld a, b                                       ; $7a52: $78
    ld c, c                                       ; $7a53: $49
    push af                                       ; $7a54: $f5
    rst $00                                       ; $7a55: $c7
    ld c, $fb                                     ; $7a56: $0e $fb
    ld a, e                                       ; $7a58: $7b
    inc sp                                        ; $7a59: $33
    ld b, b                                       ; $7a5a: $40
    ld e, c                                       ; $7a5b: $59
    ld h, a                                       ; $7a5c: $67
    or c                                          ; $7a5d: $b1
    dec bc                                        ; $7a5e: $0b
    rst $20                                       ; $7a5f: $e7
    ld e, $0a                                     ; $7a60: $1e $0a
    or c                                          ; $7a62: $b1
    ld a, e                                       ; $7a63: $7b
    pop af                                        ; $7a64: $f1
    ld d, a                                       ; $7a65: $57
    ld l, l                                       ; $7a66: $6d
    ld l, c                                       ; $7a67: $69
    ld a, [c]                                     ; $7a68: $f2
    ld d, a                                       ; $7a69: $57
    jr c, jr_036_7adc                             ; $7a6a: $38 $70

    db $dd                                        ; $7a6c: $dd
    ld a, $2d                                     ; $7a6d: $3e $2d
    adc c                                         ; $7a6f: $89
    or l                                          ; $7a70: $b5
    adc b                                         ; $7a71: $88
    add e                                         ; $7a72: $83
    ccf                                           ; $7a73: $3f
    add sp, -$23                                  ; $7a74: $e8 $dd
    and d                                         ; $7a76: $a2
    cp l                                          ; $7a77: $bd
    ld l, c                                       ; $7a78: $69
    ld b, a                                       ; $7a79: $47
    add a                                         ; $7a7a: $87
    db $f4                                        ; $7a7b: $f4
    jr nz, jr_036_7a9f                            ; $7a7c: $20 $21

    ld a, d                                       ; $7a7e: $7a
    ld a, e                                       ; $7a7f: $7b
    xor d                                         ; $7a80: $aa
    push af                                       ; $7a81: $f5
    push bc                                       ; $7a82: $c5
    ld e, a                                       ; $7a83: $5f
    rst $30                                       ; $7a84: $f7
    ld [c], a                                     ; $7a85: $e2

jr_036_7a86:
    xor a                                         ; $7a86: $af
    ld a, [hl-]                                   ; $7a87: $3a
    call c, Call_036_4953                         ; $7a88: $dc $53 $49
    sbc e                                         ; $7a8b: $9b
    ld hl, $3b78                                  ; $7a8c: $21 $78 $3b
    ld e, h                                       ; $7a8f: $5c
    inc e                                         ; $7a90: $1c
    reti                                          ; $7a91: $d9


    ld b, $a2                                     ; $7a92: $06 $a2
    bit 3, d                                      ; $7a94: $cb $5a
    ld c, b                                       ; $7a96: $48
    db $fc                                        ; $7a97: $fc
    add [hl]                                      ; $7a98: $86
    pop bc                                        ; $7a99: $c1
    rra                                           ; $7a9a: $1f
    ld b, h                                       ; $7a9b: $44
    and $ad                                       ; $7a9c: $e6 $ad
    ld e, d                                       ; $7a9e: $5a

jr_036_7a9f:
    ld e, l                                       ; $7a9f: $5d
    dec e                                         ; $7aa0: $1d
    xor [hl]                                      ; $7aa1: $ae
    rla                                           ; $7aa2: $17
    ld [hl], b                                    ; $7aa3: $70
    ld b, b                                       ; $7aa4: $40
    call z, Call_036_579f                         ; $7aa5: $cc $9f $57
    ld a, e                                       ; $7aa8: $7b
    sbc e                                         ; $7aa9: $9b
    db $fc                                        ; $7aaa: $fc
    dec d                                         ; $7aab: $15
    ld c, $a8                                     ; $7aac: $0e $a8
    cp l                                          ; $7aae: $bd
    add c                                         ; $7aaf: $81
    dec sp                                        ; $7ab0: $3b
    ld l, b                                       ; $7ab1: $68
    ret                                           ; $7ab2: $c9


    call z, $d37a                                 ; $7ab3: $cc $7a $d3
    inc e                                         ; $7ab6: $1c
    jp Jump_036_783c                              ; $7ab7: $c3 $3c $78


    ld c, c                                       ; $7aba: $49
    push af                                       ; $7abb: $f5

Call_036_7abc:
    rst $00                                       ; $7abc: $c7
    ld c, $fb                                     ; $7abd: $0e $fb
    ld a, e                                       ; $7abf: $7b
    inc sp                                        ; $7ac0: $33
    ld b, b                                       ; $7ac1: $40
    ld e, c                                       ; $7ac2: $59
    ld h, a                                       ; $7ac3: $67
    or c                                          ; $7ac4: $b1
    dec bc                                        ; $7ac5: $0b
    rst $20                                       ; $7ac6: $e7
    ld e, $24                                     ; $7ac7: $1e $24
    ld b, h                                       ; $7ac9: $44
    ld l, a                                       ; $7aca: $6f
    rst $28                                       ; $7acb: $ef

Call_036_7acc:
    ld hl, $8bdd                                  ; $7acc: $21 $dd $8b
    cp a                                          ; $7acf: $bf
    ld l, d                                       ; $7ad0: $6a
    ld l, a                                       ; $7ad1: $6f
    sub e                                         ; $7ad2: $93
    cp a                                          ; $7ad3: $bf
    jp nz, $eb81                                  ; $7ad4: $c2 $81 $eb

    or $69                                        ; $7ad7: $f6 $69
    ld c, c                                       ; $7ad9: $49
    xor h                                         ; $7ada: $ac
    ld b, l                                       ; $7adb: $45

jr_036_7adc:
    inc e                                         ; $7adc: $1c
    db $fc                                        ; $7add: $fc
    ld a, c                                       ; $7ade: $79
    db $d3                                        ; $7adf: $d3
    sbc [hl]                                      ; $7ae0: $9e
    and b                                         ; $7ae1: $a0
    and h                                         ; $7ae2: $a4
    daa                                           ; $7ae3: $27
    jr c, jr_036_7a86                             ; $7ae4: $38 $a0

    inc [hl]                                      ; $7ae6: $34
    sbc h                                         ; $7ae7: $9c
    ld b, c                                       ; $7ae8: $41
    sbc c                                         ; $7ae9: $99
    ld [hl], h                                    ; $7aea: $74
    inc c                                         ; $7aeb: $0c
    inc a                                         ; $7aec: $3c
    ld c, e                                       ; $7aed: $4b
    ld l, h                                       ; $7aee: $6c
    ld h, e                                       ; $7aef: $63
    dec sp                                        ; $7af0: $3b
    dec bc                                        ; $7af1: $0b
    jp hl                                         ; $7af2: $e9


    adc c                                         ; $7af3: $89
    jp c, $ed2c                                   ; $7af4: $da $2c $ed

    add sp, -$70                                  ; $7af7: $e8 $90
    ld e, $24                                     ; $7af9: $1e $24
    ld b, h                                       ; $7afb: $44
    ld l, a                                       ; $7afc: $6f
    ld c, a                                       ; $7afd: $4f
    or l                                          ; $7afe: $b5
    cp [hl]                                       ; $7aff: $be
    ld hl, sp-$55                                 ; $7b00: $f8 $ab
    ld c, $f7                                     ; $7b02: $0e $f7
    ld d, h                                       ; $7b04: $54
    jp nc, Jump_000_0866                          ; $7b05: $d2 $66 $08

    sbc $0e                                       ; $7b08: $de $0e
    rla                                           ; $7b0a: $17
    ld b, a                                       ; $7b0b: $47
    or [hl]                                       ; $7b0c: $b6
    add c                                         ; $7b0d: $81
    add sp, -$4e                                  ; $7b0e: $e8 $b2
    ld d, $12                                     ; $7b10: $16 $12
    cp a                                          ; $7b12: $bf
    ld h, c                                       ; $7b13: $61
    ldh a, [rTAC]                                 ; $7b14: $f0 $07
    sub c                                         ; $7b16: $91
    ld a, c                                       ; $7b17: $79
    xor e                                         ; $7b18: $ab
    ld d, [hl]                                    ; $7b19: $56
    ld d, a                                       ; $7b1a: $57
    add a                                         ; $7b1b: $87
    db $eb                                        ; $7b1c: $eb
    dec b                                         ; $7b1d: $05
    inc e                                         ; $7b1e: $1c
    db $10                                        ; $7b1f: $10
    di                                            ; $7b20: $f3
    rst $20                                       ; $7b21: $e7
    push de                                       ; $7b22: $d5
    sbc $26                                       ; $7b23: $de $26
    ld a, a                                       ; $7b25: $7f
    add l                                         ; $7b26: $85
    inc bc                                        ; $7b27: $03
    ld l, d                                       ; $7b28: $6a
    ld l, a                                       ; $7b29: $6f
    ldh [$0e], a                                  ; $7b2a: $e0 $0e
    ld e, d                                       ; $7b2c: $5a
    ld [hl-], a                                   ; $7b2d: $32
    or e                                          ; $7b2e: $b3
    sbc $34                                       ; $7b2f: $de $34
    rlca                                          ; $7b31: $07
    jp Jump_036_783c                              ; $7b32: $c3 $3c $78


    ld c, c                                       ; $7b35: $49
    rst $28                                       ; $7b36: $ef
    ld hl, $023d                                  ; $7b37: $21 $3d $02
    xor d                                         ; $7b3a: $aa
    ld a, l                                       ; $7b3b: $7d
    ld [hl], h                                    ; $7b3c: $74
    ret c                                         ; $7b3d: $d8

    rst $18                                       ; $7b3e: $df
    sbc e                                         ; $7b3f: $9b
    ld bc, $3aca                                  ; $7b40: $01 $ca $3a
    adc e                                         ; $7b43: $8b
    ld e, l                                       ; $7b44: $5d
    rst $28                                       ; $7b45: $ef
    cp c                                          ; $7b46: $b9
    ld [hl], a                                    ; $7b47: $77
    adc e                                         ; $7b48: $8b
    halt                                          ; $7b49: $76
    add e                                         ; $7b4a: $83
    cp a                                          ; $7b4b: $bf
    xor $c5                                       ; $7b4c: $ee $c5
    ld e, a                                       ; $7b4e: $5f
    or l                                          ; $7b4f: $b5
    or a                                          ; $7b50: $b7
    ret                                           ; $7b51: $c9


    ld e, a                                       ; $7b52: $5f
    pop hl                                        ; $7b53: $e1
    ret nz                                        ; $7b54: $c0

    ld [hl], l                                    ; $7b55: $75
    ei                                            ; $7b56: $fb
    or h                                          ; $7b57: $b4
    inc h                                         ; $7b58: $24
    sub $22                                       ; $7b59: $d6 $22
    ld c, $fe                                     ; $7b5b: $0e $fe
    cp h                                          ; $7b5d: $bc
    ld l, c                                       ; $7b5e: $69
    ld c, a                                       ; $7b5f: $4f
    ld d, b                                       ; $7b60: $50
    jp nc, Jump_000_1c13                          ; $7b61: $d2 $13 $1c

    ld d, b                                       ; $7b64: $50
    ld a, [de]                                    ; $7b65: $1a
    adc $a0                                       ; $7b66: $ce $a0
    ld [hl], e                                    ; $7b68: $73
    db $fd                                        ; $7b69: $fd
    ld b, c                                       ; $7b6a: $41
    cpl                                           ; $7b6b: $2f
    and a                                         ; $7b6c: $a7
    rst $38                                       ; $7b6d: $ff
    sbc $d8                                       ; $7b6e: $de $d8
    adc $42                                       ; $7b70: $ce $42
    ld a, d                                       ; $7b72: $7a
    and d                                         ; $7b73: $a2
    ld [hl], $4b                                  ; $7b74: $36 $4b
    dec sp                                        ; $7b76: $3b
    ld a, [hl-]                                   ; $7b77: $3a
    and h                                         ; $7b78: $a4
    rlca                                          ; $7b79: $07
    add hl, bc                                    ; $7b7a: $09
    pop de                                        ; $7b7b: $d1
    db $db                                        ; $7b7c: $db
    ld d, e                                       ; $7b7d: $53
    xor l                                         ; $7b7e: $ad
    cpl                                           ; $7b7f: $2f
    cp $ba                                        ; $7b80: $fe $ba
    rla                                           ; $7b82: $17
    ld a, a                                       ; $7b83: $7f
    push de                                       ; $7b84: $d5
    pop hl                                        ; $7b85: $e1
    sbc [hl]                                      ; $7b86: $9e
    ld c, d                                       ; $7b87: $4a
    jp c, $c10c                                   ; $7b88: $da $0c $c1

    db $db                                        ; $7b8b: $db
    pop hl                                        ; $7b8c: $e1
    ld [c], a                                     ; $7b8d: $e2
    ret z                                         ; $7b8e: $c8

    ld [hl], $10                                  ; $7b8f: $36 $10
    ld e, l                                       ; $7b91: $5d
    sub $42                                       ; $7b92: $d6 $42
    ld [c], a                                     ; $7b94: $e2
    scf                                           ; $7b95: $37
    inc c                                         ; $7b96: $0c
    cp $20                                        ; $7b97: $fe $20
    ld [hl-], a                                   ; $7b99: $32
    ld l, a                                       ; $7b9a: $6f
    sbc d                                         ; $7b9b: $9a
    inc bc                                        ; $7b9c: $03
    jp Jump_036_783c                              ; $7b9d: $c3 $3c $78


    ld c, c                                       ; $7ba0: $49
    push af                                       ; $7ba1: $f5
    rst $00                                       ; $7ba2: $c7
    ld c, $fb                                     ; $7ba3: $0e $fb
    ld a, e                                       ; $7ba5: $7b
    inc sp                                        ; $7ba6: $33
    ld b, b                                       ; $7ba7: $40
    ld e, c                                       ; $7ba8: $59
    ld h, a                                       ; $7ba9: $67
    or c                                          ; $7baa: $b1
    dec bc                                        ; $7bab: $0b
    rst $20                                       ; $7bac: $e7
    sbc $43                                       ; $7bad: $de $43
    ld [hl], h                                    ; $7baf: $74
    rst $30                                       ; $7bb0: $f7
    ld [c], a                                     ; $7bb1: $e2
    xor a                                         ; $7bb2: $af
    jp c, $e4d2                                   ; $7bb3: $da $d2 $e4

    xor a                                         ; $7bb6: $af
    ld [hl], b                                    ; $7bb7: $70
    ldh [$ba], a                                  ; $7bb8: $e0 $ba
    ld a, l                                       ; $7bba: $7d
    ld e, d                                       ; $7bbb: $5a
    ld [de], a                                    ; $7bbc: $12
    ld l, e                                       ; $7bbd: $6b
    ld de, $7f07                                  ; $7bbe: $11 $07 $7f
    sub b                                         ; $7bc1: $90
    or $04                                        ; $7bc2: $f6 $04
    dec h                                         ; $7bc4: $25
    dec a                                         ; $7bc5: $3d
    pop bc                                        ; $7bc6: $c1
    ld bc, $e1a5                                  ; $7bc7: $01 $a5 $e1
    inc c                                         ; $7bca: $0c
    sbc d                                         ; $7bcb: $9a
    xor h                                         ; $7bcc: $ac
    ld [$7a82], sp                                ; $7bcd: $08 $82 $7a
    ld b, b                                       ; $7bd0: $40
    ld de, $6344                                  ; $7bd1: $11 $44 $63
    dec sp                                        ; $7bd4: $3b
    dec bc                                        ; $7bd5: $0b
    jp hl                                         ; $7bd6: $e9


    adc c                                         ; $7bd7: $89
    jp c, $ed2c                                   ; $7bd8: $da $2c $ed

Jump_036_7bdb:
    add sp, -$70                                  ; $7bdb: $e8 $90
    ld e, $24                                     ; $7bdd: $1e $24
    ld b, h                                       ; $7bdf: $44
    ld l, a                                       ; $7be0: $6f
    ld c, a                                       ; $7be1: $4f
    or l                                          ; $7be2: $b5
    cp [hl]                                       ; $7be3: $be
    ld hl, sp-$15                                 ; $7be4: $f8 $eb
    ld e, [hl]                                    ; $7be6: $5e
    db $fc                                        ; $7be7: $fc
    ld d, l                                       ; $7be8: $55
    add a                                         ; $7be9: $87
    ld a, e                                       ; $7bea: $7b
    ld a, [hl+]                                   ; $7beb: $2a
    ld l, c                                       ; $7bec: $69
    inc sp                                        ; $7bed: $33
    inc b                                         ; $7bee: $04
    ld l, a                                       ; $7bef: $6f
    add a                                         ; $7bf0: $87
    adc e                                         ; $7bf1: $8b
    inc hl                                        ; $7bf2: $23
    db $db                                        ; $7bf3: $db

jr_036_7bf4:
    ld b, b                                       ; $7bf4: $40
    ld [hl], h                                    ; $7bf5: $74
    ld e, c                                       ; $7bf6: $59
    dec bc                                        ; $7bf7: $0b
    adc c                                         ; $7bf8: $89
    rst $18                                       ; $7bf9: $df
    jr nc, jr_036_7bf4                            ; $7bfa: $30 $f8

    add e                                         ; $7bfc: $83
    ret z                                         ; $7bfd: $c8

    cp h                                          ; $7bfe: $bc
    ld l, c                                       ; $7bff: $69
    ld c, $09                                     ; $7c00: $0e $09
    db $fc                                        ; $7c02: $fc
    ld [hl], l                                    ; $7c03: $75
    ret nc                                        ; $7c04: $d0

    ld b, d                                       ; $7c05: $42
    dec e                                         ; $7c06: $1d
    rst $08                                       ; $7c07: $cf
    ld h, l                                       ; $7c08: $65
    sub h                                         ; $7c09: $94
    ld sp, $1104                                  ; $7c0a: $31 $04 $11
    xor e                                         ; $7c0d: $ab
    cpl                                           ; $7c0e: $2f
    add hl, hl                                    ; $7c0f: $29
    ld b, c                                       ; $7c10: $41
    ld e, d                                       ; $7c11: $5a
    add d                                         ; $7c12: $82
    inc e                                         ; $7c13: $1c
    ld e, c                                       ; $7c14: $59
    ld b, a                                       ; $7c15: $47
    xor c                                         ; $7c16: $a9
    cp l                                          ; $7c17: $bd
    add c                                         ; $7c18: $81
    ld c, e                                       ; $7c19: $4b
    sub b                                         ; $7c1a: $90
    and h                                         ; $7c1b: $a4
    ld [hl], e                                    ; $7c1c: $73
    ld e, l                                       ; $7c1d: $5d
    db $db                                        ; $7c1e: $db
    pop de                                        ; $7c1f: $d1
    cp $48                                        ; $7c20: $fe $48
    dec a                                         ; $7c22: $3d
    ld b, $fb                                     ; $7c23: $06 $fb
    inc l                                         ; $7c25: $2c
    add e                                         ; $7c26: $83
    sub a                                         ; $7c27: $97
    ret z                                         ; $7c28: $c8

    rst $08                                       ; $7c29: $cf
    cp h                                          ; $7c2a: $bc
    jp c, $f265                                   ; $7c2b: $da $65 $f2

    rst $30                                       ; $7c2e: $f7
    ld sp, hl                                     ; $7c2f: $f9
    dec de                                        ; $7c30: $1b
    ld hl, sp+$02                                 ; $7c31: $f8 $02
    pop hl                                        ; $7c33: $e1
    inc [hl]                                      ; $7c34: $34
    rlca                                          ; $7c35: $07
    or e                                          ; $7c36: $b3
    sub b                                         ; $7c37: $90
    sub [hl]                                      ; $7c38: $96
    jr nz, jr_036_7c82                            ; $7c39: $20 $47

    sub $51                                       ; $7c3b: $d6 $51

Call_036_7c3d:
    ld l, d                                       ; $7c3d: $6a
    ld l, a                                       ; $7c3e: $6f
    ldh [rNR12], a                                ; $7c3f: $e0 $12
    inc h                                         ; $7c41: $24
    add hl, hl                                    ; $7c42: $29
    and e                                         ; $7c43: $a3
    adc h                                         ; $7c44: $8c
    ld hl, $5888                                  ; $7c45: $21 $88 $58
    ld a, l                                       ; $7c48: $7d
    ld c, c                                       ; $7c49: $49
    cp a                                          ; $7c4a: $bf
    ld [hl+], a                                   ; $7c4b: $22
    ld [hl-], a                                   ; $7c4c: $32
    ld d, c                                       ; $7c4d: $51
    xor e                                         ; $7c4e: $ab
    dec sp                                        ; $7c4f: $3b
    ld a, b                                       ; $7c50: $78
    ld l, l                                       ; $7c51: $6d
    sub e                                         ; $7c52: $93
    dec l                                         ; $7c53: $2d
    ld b, a                                       ; $7c54: $47
    xor h                                         ; $7c55: $ac
    sra b                                         ; $7c56: $cb $28

jr_036_7c58:
    ld a, a                                       ; $7c58: $7f
    inc sp                                        ; $7c59: $33
    dec bc                                        ; $7c5a: $0b
    halt                                          ; $7c5b: $76
    ld a, b                                       ; $7c5c: $78
    inc l                                         ; $7c5d: $2c
    ld a, [hl]                                    ; $7c5e: $7e
    jr nz, jr_036_7c58                            ; $7c5f: $20 $f7

    ld b, [hl]                                    ; $7c61: $46
    ld a, d                                       ; $7c62: $7a
    call nc, $d9d2                                ; $7c63: $d4 $d2 $d9
    xor [hl]                                      ; $7c66: $ae
    inc l                                         ; $7c67: $2c
    ld l, [hl]                                    ; $7c68: $6e
    adc l                                         ; $7c69: $8d
    and e                                         ; $7c6a: $a3
    ld b, e                                       ; $7c6b: $43
    scf                                           ; $7c6c: $37
    inc sp                                        ; $7c6d: $33
    ld b, $7f                                     ; $7c6e: $06 $7f
    add b                                         ; $7c70: $80
    push de                                       ; $7c71: $d5
    add $ce                                       ; $7c72: $c6 $ce
    ld h, d                                       ; $7c74: $62
    ld h, l                                       ; $7c75: $65
    pop bc                                        ; $7c76: $c1
    inc [hl]                                      ; $7c77: $34
    rlca                                          ; $7c78: $07
    ld c, h                                       ; $7c79: $4c
    di                                            ; $7c7a: $f3
    ld b, a                                       ; $7c7b: $47
    adc [hl]                                      ; $7c7c: $8e
    xor h                                         ; $7c7d: $ac
    and e                                         ; $7c7e: $a3
    call nc, $c0de                                ; $7c7f: $d4 $de $c0

jr_036_7c82:
    dec h                                         ; $7c82: $25
    ld c, b                                       ; $7c83: $48
    ld d, d                                       ; $7c84: $52
    ld b, [hl]                                    ; $7c85: $46
    add hl, de                                    ; $7c86: $19
    ld b, e                                       ; $7c87: $43
    db $10                                        ; $7c88: $10
    or c                                          ; $7c89: $b1
    ld a, [$7e92]                                 ; $7c8a: $fa $92 $7e
    ld b, l                                       ; $7c8d: $45
    ld h, h                                       ; $7c8e: $64
    and d                                         ; $7c8f: $a2
    ld d, [hl]                                    ; $7c90: $56
    ld [hl], a                                    ; $7c91: $77
    ldh a, [$da]                                  ; $7c92: $f0 $da
    ld h, $7f                                     ; $7c94: $26 $7f
    sub c                                         ; $7c96: $91
    ld sp, $751d                                  ; $7c97: $31 $1d $75
    ld bc, $b058                                  ; $7c9a: $01 $58 $b0
    di                                            ; $7c9d: $f3
    xor h                                         ; $7c9e: $ac
    dec b                                         ; $7c9f: $05
    ld sp, hl                                     ; $7ca0: $f9
    sub e                                         ; $7ca1: $93
    adc e                                         ; $7ca2: $8b
    rst $18                                       ; $7ca3: $df
    cp h                                          ; $7ca4: $bc
    rst $08                                       ; $7ca5: $cf
    ld bc, $ab55                                  ; $7ca6: $01 $55 $ab
    adc e                                         ; $7ca9: $8b
    adc [hl]                                      ; $7caa: $8e
    push af                                       ; $7cab: $f5
    ld d, c                                       ; $7cac: $51
    ld [de], a                                    ; $7cad: $12
    ld l, e                                       ; $7cae: $6b
    sub c                                         ; $7caf: $91
    sbc a                                         ; $7cb0: $9f
    ld a, c                                       ; $7cb1: $79
    or l                                          ; $7cb2: $b5
    adc a                                         ; $7cb3: $8f
    adc [hl]                                      ; $7cb4: $8e
    ld d, h                                       ; $7cb5: $54
    sub b                                         ; $7cb6: $90
    and $f3                                       ; $7cb7: $e6 $f3
    xor h                                         ; $7cb9: $ac
    xor [hl]                                      ; $7cba: $ae
    cp $35                                        ; $7cbb: $fe $35
    sub $b1                                       ; $7cbd: $d6 $b1
    sub c                                         ; $7cbf: $91
    add hl, de                                    ; $7cc0: $19
    ei                                            ; $7cc1: $fb
    or a                                          ; $7cc2: $b7
    inc hl                                        ; $7cc3: $23
    dec d                                         ; $7cc4: $15
    ld [hl], h                                    ; $7cc5: $74
    ret nc                                        ; $7cc6: $d0

    ld b, d                                       ; $7cc7: $42
    rst $38                                       ; $7cc8: $ff
    ld h, [hl]                                    ; $7cc9: $66
    ld [hl], b                                    ; $7cca: $70
    ld l, $06                                     ; $7ccb: $2e $06
    ld a, a                                       ; $7ccd: $7f
    ld b, l                                       ; $7cce: $45
    rst $00                                       ; $7ccf: $c7
    ld a, d                                       ; $7cd0: $7a
    dec sp                                        ; $7cd1: $3b
    adc e                                         ; $7cd2: $8b
    ld h, e                                       ; $7cd3: $63
    or l                                          ; $7cd4: $b5
    or a                                          ; $7cd5: $b7
    ld e, [hl]                                    ; $7cd6: $5e
    ret z                                         ; $7cd7: $c8

    sbc h                                         ; $7cd8: $9c
    ld a, c                                       ; $7cd9: $79
    ret                                           ; $7cda: $c9


    ld a, [bc]                                    ; $7cdb: $0a
    pop bc                                        ; $7cdc: $c1
    sub h                                         ; $7cdd: $94
    ld a, d                                       ; $7cde: $7a
    rst $08                                       ; $7cdf: $cf
    push de                                       ; $7ce0: $d5
    rla                                           ; $7ce1: $17
    ld a, a                                       ; $7ce2: $7f
    call Call_036_5fbc                            ; $7ce3: $cd $bc $5f
    pop hl                                        ; $7ce6: $e1
    push de                                       ; $7ce7: $d5
    pop bc                                        ; $7ce8: $c1
    jr nc, jr_036_7d28                            ; $7ce9: $30 $3d

    ld d, a                                       ; $7ceb: $57
    ld a, e                                       ; $7cec: $7b
    db $eb                                        ; $7ced: $eb
    ret z                                         ; $7cee: $c8

    cp h                                          ; $7cef: $bc
    sbc $ce                                       ; $7cf0: $de $ce
    ld [hl+], a                                   ; $7cf2: $22
    ld d, [hl]                                    ; $7cf3: $56
    xor e                                         ; $7cf4: $ab
    cp l                                          ; $7cf5: $bd
    adc l                                         ; $7cf6: $8d
    xor l                                         ; $7cf7: $ad
    or $76                                        ; $7cf8: $f6 $76
    or h                                          ; $7cfa: $b4
    or e                                          ; $7cfb: $b3
    sub d                                         ; $7cfc: $92
    ld d, l                                       ; $7cfd: $55
    ld b, c                                       ; $7cfe: $41
    inc c                                         ; $7cff: $0c
    sbc $73                                       ; $7d00: $de $73
    rlca                                          ; $7d02: $07
    dec l                                         ; $7d03: $2d
    sbc c                                         ; $7d04: $99
    ld e, c                                       ; $7d05: $59
    scf                                           ; $7d06: $37
    ld hl, sp-$15                                 ; $7d07: $f8 $eb
    ld h, h                                       ; $7d09: $64
    sub e                                         ; $7d0a: $93
    halt                                          ; $7d0b: $76
    sub h                                         ; $7d0c: $94
    jp c, $b81b                                   ; $7d0d: $da $1b $b8

    ld a, a                                       ; $7d10: $7f
    dec sp                                        ; $7d11: $3b
    cp e                                          ; $7d12: $bb
    rlca                                          ; $7d13: $07
    add e                                         ; $7d14: $83
    ld d, d                                       ; $7d15: $52
    ld [hl], a                                    ; $7d16: $77
    or [hl]                                       ; $7d17: $b6
    ld l, e                                       ; $7d18: $6b
    inc sp                                        ; $7d19: $33
    or $02                                        ; $7d1a: $f6 $02
    cp b                                          ; $7d1c: $b8
    adc [hl]                                      ; $7d1d: $8e
    inc [hl]                                      ; $7d1e: $34
    rlca                                          ; $7d1f: $07
    adc h                                         ; $7d20: $8c
    ld [hl-], a                                   ; $7d21: $32
    add [hl]                                      ; $7d22: $86
    jr nz, jr_036_7d87                            ; $7d23: $20 $62

    push af                                       ; $7d25: $f5
    dec h                                         ; $7d26: $25
    ld a, l                                       ; $7d27: $7d

jr_036_7d28:
    rra                                           ; $7d28: $1f
    sbc d                                         ; $7d29: $9a
    ld sp, hl                                     ; $7d2a: $f9
    ld a, [hl]                                    ; $7d2b: $7e
    db $ed                                        ; $7d2c: $ed
    ld a, d                                       ; $7d2d: $7a
    add a                                         ; $7d2e: $87
    db $e4                                        ; $7d2f: $e4
    and e                                         ; $7d30: $a3
    ccf                                           ; $7d31: $3f
    adc $38                                       ; $7d32: $ce $38
    inc h                                         ; $7d34: $24
    rlca                                          ; $7d35: $07
    or e                                          ; $7d36: $b3
    rst $00                                       ; $7d37: $c7
    ld [hl], c                                    ; $7d38: $71
    ld d, h                                       ; $7d39: $54
    ld a, a                                       ; $7d3a: $7f
    db $ec                                        ; $7d3b: $ec
    dec bc                                        ; $7d3c: $0b
    res 7, c                                      ; $7d3d: $cb $b9
    inc hl                                        ; $7d3f: $23
    ccf                                           ; $7d40: $3f
    dec h                                         ; $7d41: $25
    xor [hl]                                      ; $7d42: $ae
    ld sp, $7243                                  ; $7d43: $31 $43 $72
    ret                                           ; $7d46: $c9


    rla                                           ; $7d47: $17
    ld b, c                                       ; $7d48: $41
    ld a, b                                       ; $7d49: $78
    add c                                         ; $7d4a: $81
    ld b, $7f                                     ; $7d4b: $06 $7f
    ld a, l                                       ; $7d4d: $7d
    rra                                           ; $7d4e: $1f
    and c                                         ; $7d4f: $a1
    ld e, d                                       ; $7d50: $5a
    push af                                       ; $7d51: $f5
    ldh a, [$93]                                  ; $7d52: $f0 $93
    ld [hl-], a                                   ; $7d54: $32
    ld d, d                                       ; $7d55: $52
    ld [de], a                                    ; $7d56: $12
    cp a                                          ; $7d57: $bf
    sbc l                                         ; $7d58: $9d
    ld a, e                                       ; $7d59: $7b
    rst $30                                       ; $7d5a: $f7
    ld l, [hl]                                    ; $7d5b: $6e
    or l                                          ; $7d5c: $b5
    xor d                                         ; $7d5d: $aa
    cp $d8                                        ; $7d5e: $fe $d8
    ld c, l                                       ; $7d60: $4d
    db $e4                                        ; $7d61: $e4
    rrca                                          ; $7d62: $0f
    pop bc                                        ; $7d63: $c1
    dec e                                         ; $7d64: $1d
    ld sp, hl                                     ; $7d65: $f9
    ld l, c                                       ; $7d66: $69
    rst $28                                       ; $7d67: $ef
    and [hl]                                      ; $7d68: $a6
    db $fc                                        ; $7d69: $fc
    add hl, de                                    ; $7d6a: $19
    set 1, d                                      ; $7d6b: $cb $ca
    ld d, a                                       ; $7d6d: $57
    db $fc                                        ; $7d6e: $fc

Call_036_7d6f:
    ld hl, $3b9c                                  ; $7d6f: $21 $9c $3b
    ld a, [c]                                     ; $7d72: $f2
    ld d, e                                       ; $7d73: $53
    ld [c], a                                     ; $7d74: $e2
    ld a, [de]                                    ; $7d75: $1a
    inc sp                                        ; $7d76: $33
    inc h                                         ; $7d77: $24
    rlca                                          ; $7d78: $07
    adc h                                         ; $7d79: $8c
    sub h                                         ; $7d7a: $94
    call nz, Call_036_776f                        ; $7d7b: $c4 $6f $77
    or l                                          ; $7d7e: $b5
    ret z                                         ; $7d7f: $c8

    rst $18                                       ; $7d80: $df
    cp c                                          ; $7d81: $b9
    adc h                                         ; $7d82: $8c
    ld [hl-], a                                   ; $7d83: $32
    add [hl]                                      ; $7d84: $86
    jr nz, jr_036_7de9                            ; $7d85: $20 $62

jr_036_7d87:
    push af                                       ; $7d87: $f5
    dec h                                         ; $7d88: $25
    ld b, e                                       ; $7d89: $43
    ld [hl], d                                    ; $7d8a: $72
    daa                                           ; $7d8b: $27
    xor b                                         ; $7d8c: $a8
    and e                                         ; $7d8d: $a3
    adc h                                         ; $7d8e: $8c
    sub h                                         ; $7d8f: $94
    call nz, Call_036_7d6f                        ; $7d90: $c4 $6f $7d
    rra                                           ; $7d93: $1f
    jp z, $63a4                                   ; $7d94: $ca $a4 $63

    ldh [$59], a                                  ; $7d97: $e0 $59
    ld h, d                                       ; $7d99: $62
    cp e                                          ; $7d9a: $bb
    pop bc                                        ; $7d9b: $c1
    rra                                           ; $7d9c: $1f
    inc [hl]                                      ; $7d9d: $34
    di                                            ; $7d9e: $f3

Jump_036_7d9f:
    db $fd                                        ; $7d9f: $fd
    jp c, $a6f5                                   ; $7da0: $da $f5 $a6

    add hl, sp                                    ; $7da3: $39
    ret                                           ; $7da4: $c9


    ld e, a                                       ; $7da5: $5f
    ld h, h                                       ; $7da6: $64
    call z, Call_036_5ab9                         ; $7da7: $cc $b9 $5a
    push af                                       ; $7daa: $f5
    ld a, l                                       ; $7dab: $7d
    add h                                         ; $7dac: $84
    ld a, [de]                                    ; $7dad: $1a
    sbc e                                         ; $7dae: $9b
    add hl, de                                    ; $7daf: $19
    ld sp, hl                                     ; $7db0: $f9
    ei                                            ; $7db1: $fb
    inc b                                         ; $7db2: $04
    ld bc, $7243                                  ; $7db3: $01 $43 $72
    ld [hl], e                                    ; $7db6: $73
    cp h                                          ; $7db7: $bc
    ld [hl], l                                    ; $7db8: $75
    ld [hl], l                                    ; $7db9: $75
    ldh a, [$d7]                                  ; $7dba: $f0 $d7
    sub a                                         ; $7dbc: $97
    ld [$ede0], sp                                ; $7dbd: $08 $e0 $ed
    dec a                                         ; $7dc0: $3d
    and h                                         ; $7dc1: $a4
    dec de                                        ; $7dc2: $1b
    db $fc                                        ; $7dc3: $fc
    ld b, c                                       ; $7dc4: $41
    inc sp                                        ; $7dc5: $33
    rst $18                                       ; $7dc6: $df
    xor a                                         ; $7dc7: $af
    ld e, l                                       ; $7dc8: $5d
    rst $28                                       ; $7dc9: $ef
    cp c                                          ; $7dca: $b9
    or e                                          ; $7dcb: $b3
    ld a, e                                       ; $7dcc: $7b
    jr nc, @+$2a                                  ; $7dcd: $30 $28

    ld [hl], l                                    ; $7dcf: $75
    sbc d                                         ; $7dd0: $9a
    inc bc                                        ; $7dd1: $03
    ld c, c                                       ; $7dd2: $49
    rra                                           ; $7dd3: $1f
    dec sp                                        ; $7dd4: $3b
    db $ec                                        ; $7dd5: $ec
    rst $28                                       ; $7dd6: $ef
    call $bd00                                    ; $7dd7: $cd $00 $bd
    db $fd                                        ; $7dda: $fd
    db $dd                                        ; $7ddb: $dd
    or d                                          ; $7ddc: $b2
    adc $62                                       ; $7ddd: $ce $62
    rst $10                                       ; $7ddf: $d7
    dec sp                                        ; $7de0: $3b
    inc h                                         ; $7de1: $24
    rlca                                          ; $7de2: $07
    jp $c002                                      ; $7de3: $c3 $02 $c0


    db $dd                                        ; $7de6: $dd
    ldh [rIF], a                                  ; $7de7: $e0 $0f

jr_036_7de9:
    adc d                                         ; $7de9: $8a
    jr nc, @-$48                                  ; $7dea: $30 $b6

    ld a, b                                       ; $7dec: $78
    db $d3                                        ; $7ded: $d3
    sub [hl]                                      ; $7dee: $96
    add hl, bc                                    ; $7def: $09
    sub [hl]                                      ; $7df0: $96
    call $bf14                                    ; $7df1: $cd $14 $bf
    ld e, c                                       ; $7df4: $59
    jp nc, $b31c                                  ; $7df5: $d2 $1c $b3

    xor e                                         ; $7df8: $ab
    dec a                                         ; $7df9: $3d
    ld d, a                                       ; $7dfa: $57
    add a                                         ; $7dfb: $87
    dec sp                                        ; $7dfc: $3b
    ld c, d                                       ; $7dfd: $4a
    db $ed                                        ; $7dfe: $ed
    dec c                                         ; $7dff: $0d
    ret z                                         ; $7e00: $c8

    rst $38                                       ; $7e01: $ff
    pop de                                        ; $7e02: $d1
    ld c, $5e                                     ; $7e03: $0e $5e
    db $db                                        ; $7e05: $db
    ld h, h                                       ; $7e06: $64
    ld b, l                                       ; $7e07: $45
    db $10                                        ; $7e08: $10
    call nc, $8a03                                ; $7e09: $d4 $03 $8a
    jr nz, jr_036_7e88                            ; $7e0c: $20 $7a

    cp e                                          ; $7e0e: $bb
    halt                                          ; $7e0f: $76
    pop bc                                        ; $7e10: $c1
    push de                                       ; $7e11: $d5
    rst $38                                       ; $7e12: $ff
    ld [$06e8], sp                                ; $7e13: $08 $e8 $06
    ld a, a                                       ; $7e16: $7f
    ld d, b                                       ; $7e17: $50
    ld [de], a                                    ; $7e18: $12
    ld l, e                                       ; $7e19: $6b
    ld h, c                                       ; $7e1a: $61
    cpl                                           ; $7e1b: $2f
    ldh a, [$f6]                                  ; $7e1c: $f0 $f6
    ld l, [hl]                                    ; $7e1e: $6e
    pop de                                        ; $7e1f: $d1
    sbc $21                                       ; $7e20: $de $21
    add hl, sp                                    ; $7e22: $39
    and e                                         ; $7e23: $a3
    ccf                                           ; $7e24: $3f
    adc $d8                                       ; $7e25: $ce $d8
    pop de                                        ; $7e27: $d1
    pop hl                                        ; $7e28: $e1
    sbc $ae                                       ; $7e29: $de $ae
    ld e, l                                       ; $7e2b: $5d
    ld [hl], b                                    ; $7e2c: $70
    push af                                       ; $7e2d: $f5
    rst $00                                       ; $7e2e: $c7
    ld c, $7c                                     ; $7e2f: $0e $7c
    call nz, Call_036_78b0                        ; $7e31: $c4 $b0 $78
    add a                                         ; $7e34: $87
    db $e4                                        ; $7e35: $e4
    or e                                          ; $7e36: $b3
    xor e                                         ; $7e37: $ab
    dec a                                         ; $7e38: $3d
    rst $30                                       ; $7e39: $f7
    xor $8d                                       ; $7e3a: $ee $8d
    inc c                                         ; $7e3c: $0c
    pop bc                                        ; $7e3d: $c1
    adc e                                         ; $7e3e: $8b
    ld a, l                                       ; $7e3f: $7d
    rra                                           ; $7e40: $1f
    cp d                                          ; $7e41: $ba
    pop bc                                        ; $7e42: $c1
    rra                                           ; $7e43: $1f
    sub h                                         ; $7e44: $94
    ld c, c                                       ; $7e45: $49
    rst $00                                       ; $7e46: $c7
    ret nz                                        ; $7e47: $c0

    or e                                          ; $7e48: $b3
    call nz, $f336                                ; $7e49: $c4 $36 $f3
    db $fd                                        ; $7e4c: $fd
    jp c, $a6f5                                   ; $7e4d: $da $f5 $a6

    add hl, sp                                    ; $7e50: $39
    adc h                                         ; $7e51: $8c
    sub h                                         ; $7e52: $94
    call nz, Call_036_776f                        ; $7e53: $c4 $6f $77
    or l                                          ; $7e56: $b5
    ret z                                         ; $7e57: $c8

    ld e, a                                       ; $7e58: $5f
    sbc d                                         ; $7e59: $9a
    inc bc                                        ; $7e5a: $03
    ld c, c                                       ; $7e5b: $49
    ld a, a                                       ; $7e5c: $7f
    ld l, a                                       ; $7e5d: $6f
    ld a, $37                                     ; $7e5e: $3e $37
    ld sp, hl                                     ; $7e60: $f9
    adc e                                         ; $7e61: $8b
    adc h                                         ; $7e62: $8c
    ld c, c                                       ; $7e63: $49
    dec sp                                        ; $7e64: $3b

Jump_036_7e65:
    ld l, a                                       ; $7e65: $6f
    sbc b                                         ; $7e66: $98
    sub [hl]                                      ; $7e67: $96
    sub c                                         ; $7e68: $91
    sub d                                         ; $7e69: $92
    ld hl, sp-$53                                 ; $7e6a: $f8 $ad
    ld [hl], c                                    ; $7e6c: $71
    ld [hl], h                                    ; $7e6d: $74
    inc de                                        ; $7e6e: $13
    ld sp, hl                                     ; $7e6f: $f9
    ld b, e                                       ; $7e70: $43
    ldh a, [rPCM12]                               ; $7e71: $f0 $76
    sub $ff                                       ; $7e73: $d6 $ff
    inc h                                         ; $7e75: $24
    call $b301                                    ; $7e76: $cd $01 $b3
    xor e                                         ; $7e79: $ab
    dec a                                         ; $7e7a: $3d
    ld d, a                                       ; $7e7b: $57
    add a                                         ; $7e7c: $87
    dec sp                                        ; $7e7d: $3b
    ld c, d                                       ; $7e7e: $4a
    db $ed                                        ; $7e7f: $ed
    dec c                                         ; $7e80: $0d
    ret z                                         ; $7e81: $c8

    rst $38                                       ; $7e82: $ff
    pop de                                        ; $7e83: $d1
    ld c, $5e                                     ; $7e84: $0e $5e
    db $db                                        ; $7e86: $db
    cp c                                          ; $7e87: $b9

jr_036_7e88:
    cp $a0                                        ; $7e88: $fe $a0
    sub a                                         ; $7e8a: $97
    db $d3                                        ; $7e8b: $d3

Call_036_7e8c:
    ld a, a                                       ; $7e8c: $7f
    rst $28                                       ; $7e8d: $ef
    db $ed                                        ; $7e8e: $ed
    jp c, Jump_036_5705                           ; $7e8f: $da $05 $57

    rst $38                                       ; $7e92: $ff
    inc hl                                        ; $7e93: $23
    and b                                         ; $7e94: $a0
    dec de                                        ; $7e95: $1b
    db $fc                                        ; $7e96: $fc
    ld b, c                                       ; $7e97: $41
    ld c, c                                       ; $7e98: $49
    xor h                                         ; $7e99: $ac
    add l                                         ; $7e9a: $85
    cp l                                          ; $7e9b: $bd
    ret nz                                        ; $7e9c: $c0

    db $db                                        ; $7e9d: $db
    cp e                                          ; $7e9e: $bb
    ld b, l                                       ; $7e9f: $45
    ld a, e                                       ; $7ea0: $7b
    add a                                         ; $7ea1: $87
    db $e4                                        ; $7ea2: $e4
    ld [hl], e                                    ; $7ea3: $73
    db $fd                                        ; $7ea4: $fd
    ld b, c                                       ; $7ea5: $41
    cpl                                           ; $7ea6: $2f
    and a                                         ; $7ea7: $a7
    rst $38                                       ; $7ea8: $ff
    ld a, $63                                     ; $7ea9: $3e $63
    sub e                                         ; $7eab: $93
    ld a, $36                                     ; $7eac: $3e $36
    db $10                                        ; $7eae: $10
    ld a, d                                       ; $7eaf: $7a
    ld [$5eef], a                                 ; $7eb0: $ea $ef $5e
    db $fc                                        ; $7eb3: $fc
    dec d                                         ; $7eb4: $15
    ld sp, hl                                     ; $7eb5: $f9
    and e                                         ; $7eb6: $a3
    ld [hl], c                                    ; $7eb7: $71
    inc e                                         ; $7eb8: $1c
    sub [hl]                                      ; $7eb9: $96
    ld a, [hl]                                    ; $7eba: $7e
    adc d                                         ; $7ebb: $8a
    ld h, l                                       ; $7ebc: $65
    sub h                                         ; $7ebd: $94
    ld sp, $1104                                  ; $7ebe: $31 $04 $11
    xor e                                         ; $7ec1: $ab
    cpl                                           ; $7ec2: $2f
    ld c, c                                       ; $7ec3: $49
    ld [hl], e                                    ; $7ec4: $73
    jp $81b1                                      ; $7ec5: $c3 $b1 $81


    ret nc                                        ; $7ec8: $d0

    ld c, a                                       ; $7ec9: $4f
    xor c                                         ; $7eca: $a9
    or c                                          ; $7ecb: $b1
    add a                                         ; $7ecc: $87
    ld h, e                                       ; $7ecd: $63
    ld e, l                                       ; $7ece: $5d
    ld h, $7f                                     ; $7ecf: $26 $7f
    adc d                                         ; $7ed1: $8a
    ld [$09b4], a                                 ; $7ed2: $ea $b4 $09
    db $fc                                        ; $7ed5: $fc
    push af                                       ; $7ed6: $f5
    dec h                                         ; $7ed7: $25
    ld [bc], a                                    ; $7ed8: $02
    cp b                                          ; $7ed9: $b8
    ld a, e                                       ; $7eda: $7b
    pop af                                        ; $7edb: $f1
    rst $10                                       ; $7edc: $d7
    jp $aa4f                                      ; $7edd: $c3 $4f $aa


jr_036_7ee0:
    cp a                                          ; $7ee0: $bf
    db $fc                                        ; $7ee1: $fc
    dec l                                         ; $7ee2: $2d
    ld a, [de]                                    ; $7ee3: $1a
    ret z                                         ; $7ee4: $c8

    sbc $e2                                       ; $7ee5: $de $e2
    ld b, l                                       ; $7ee7: $45
    xor c                                         ; $7ee8: $a9
    rst $30                                       ; $7ee9: $f7
    ld e, h                                       ; $7eea: $5c
    dec hl                                        ; $7eeb: $2b
    cp $1a                                        ; $7eec: $fe $1a
    ld e, e                                       ; $7eee: $5b
    dec e                                         ; $7eef: $1d
    ld b, [hl]                                    ; $7ef0: $46
    ld c, e                                       ; $7ef1: $4b
    ld h, a                                       ; $7ef2: $67
    rst $38                                       ; $7ef3: $ff
    db $fc                                        ; $7ef4: $fc
    ld b, c                                       ; $7ef5: $41
    rlca                                          ; $7ef6: $07
    xor a                                         ; $7ef7: $af
    xor l                                         ; $7ef8: $ad
    sub l                                         ; $7ef9: $95
    ld hl, sp-$18                                 ; $7efa: $f8 $e8
    call c, $fb6a                                 ; $7efc: $dc $6a $fb
    ld e, c                                       ; $7eff: $59
    or d                                          ; $7f00: $b2
    ld a, d                                       ; $7f01: $7a
    sbc a                                         ; $7f02: $9f
    add d                                         ; $7f03: $82
    scf                                           ; $7f04: $37
    call $a301                                    ; $7f05: $cd $01 $a3
    cp l                                          ; $7f08: $bd
    ld e, e                                       ; $7f09: $5b
    xor l                                         ; $7f0a: $ad
    xor d                                         ; $7f0b: $aa
    ccf                                           ; $7f0c: $3f
    or $1e                                        ; $7f0d: $f6 $1e
    ld [hl], d                                    ; $7f0f: $72
    and e                                         ; $7f10: $a3
    pop bc                                        ; $7f11: $c1
    ld e, a                                       ; $7f12: $5f
    inc sp                                        ; $7f13: $33
    jp $bedf                                      ; $7f14: $c3 $df $be


    ld b, h                                       ; $7f17: $44
    nop                                           ; $7f18: $00
    inc hl                                        ; $7f19: $23
    sbc h                                         ; $7f1a: $9c
    ei                                            ; $7f1b: $fb
    ld [de], a                                    ; $7f1c: $12
    ld bc, $bdbc                                  ; $7f1d: $01 $bc $bd
    add a                                         ; $7f20: $87
    ld [hl], h                                    ; $7f21: $74
    cpl                                           ; $7f22: $2f
    cp $7a                                        ; $7f23: $fe $7a
    rst $30                                       ; $7f25: $f7
    ld b, [hl]                                    ; $7f26: $46
    ld h, [hl]                                    ; $7f27: $66
    jp hl                                         ; $7f28: $e9


    jr z, jr_036_7ee0                             ; $7f29: $28 $b5

    scf                                           ; $7f2b: $37
    ld [hl], b                                    ; $7f2c: $70
    sbc d                                         ; $7f2d: $9a
    inc bc                                        ; $7f2e: $03
    or e                                          ; $7f2f: $b3
    xor e                                         ; $7f30: $ab
    dec a                                         ; $7f31: $3d

Jump_036_7f32:
    ld d, a                                       ; $7f32: $57
    add a                                         ; $7f33: $87
    dec sp                                        ; $7f34: $3b
    ld c, d                                       ; $7f35: $4a
    db $ed                                        ; $7f36: $ed
    dec c                                         ; $7f37: $0d
    ret z                                         ; $7f38: $c8

    rst $38                                       ; $7f39: $ff
    pop de                                        ; $7f3a: $d1
    ld c, $5e                                     ; $7f3b: $0e $5e
    ld e, e                                       ; $7f3d: $5b
    and $18                                       ; $7f3e: $e6 $18
    ld a, b                                       ; $7f40: $78
    sub [hl]                                      ; $7f41: $96
    ret c                                         ; $7f42: $d8

    sbc $ae                                       ; $7f43: $de $ae
    ld e, l                                       ; $7f45: $5d
    ld [hl], b                                    ; $7f46: $70
    push af                                       ; $7f47: $f5
    ccf                                           ; $7f48: $3f
    ld [bc], a                                    ; $7f49: $02
    cp d                                          ; $7f4a: $ba
    pop bc                                        ; $7f4b: $c1
    rra                                           ; $7f4c: $1f
    sub h                                         ; $7f4d: $94
    call nz, $d85a                                ; $7f4e: $c4 $5a $d8
    dec bc                                        ; $7f51: $0b
    cp h                                          ; $7f52: $bc

Call_036_7f53:
    cp l                                          ; $7f53: $bd
    ld e, e                                       ; $7f54: $5b
    or h                                          ; $7f55: $b4
    scf                                           ; $7f56: $37
    ld l, l                                       ; $7f57: $6d
    jp nc, $023f                                  ; $7f58: $d2 $3f $02

    sbc d                                         ; $7f5b: $9a
    ld sp, hl                                     ; $7f5c: $f9
    ld e, $bb                                     ; $7f5d: $1e $bb
    ld d, b                                       ; $7f5f: $50
    ld h, $1d                                     ; $7f60: $26 $1d
    inc bc                                        ; $7f62: $03
    rst $08                                       ; $7f63: $cf
    ld [de], a                                    ; $7f64: $12
    ld e, e                                       ; $7f65: $5b
    db $fd                                        ; $7f66: $fd
    or c                                          ; $7f67: $b1
    jr jr_036_7fd0                                ; $7f68: $18 $66

    pop bc                                        ; $7f6a: $c1
    sbc l                                         ; $7f6b: $9d
    push af                                       ; $7f6c: $f5
    ccf                                           ; $7f6d: $3f
    ld l, c                                       ; $7f6e: $69
    ld l, h                                       ; $7f6f: $6c
    ld h, a                                       ; $7f70: $67
    cp c                                          ; $7f71: $b9
    ld l, b                                       ; $7f72: $68
    and $6a                                       ; $7f73: $e6 $6a
    ld l, a                                       ; $7f75: $6f
    sub e                                         ; $7f76: $93
    cp a                                          ; $7f77: $bf
    jp nz, $eb81                                  ; $7f78: $c2 $81 $eb

    or $69                                        ; $7f7b: $f6 $69
    sbc d                                         ; $7f7d: $9a
    inc bc                                        ; $7f7e: $03
    and e                                         ; $7f7f: $a3
    ld b, e                                       ; $7f80: $43
    ld a, [$eb3e]                                 ; $7f81: $fa $3e $eb
    db $ed                                        ; $7f84: $ed
    ld d, a                                       ; $7f85: $57
    ld b, h                                       ; $7f86: $44
    ld [hl], l                                    ; $7f87: $75
    ldh a, [$d7]                                  ; $7f88: $f0 $d7
    call z, $c4e4                                 ; $7f8a: $cc $e4 $c4
    ld b, a                                       ; $7f8d: $47
    pop hl                                        ; $7f8e: $e1
    call c, Call_000_2fe4                         ; $7f8f: $dc $e4 $2f
    ld [hl-], a                                   ; $7f92: $32
    and $5c                                       ; $7f93: $e6 $5c
    or l                                          ; $7f95: $b5
    cp d                                          ; $7f96: $ba
    ld e, d                                       ; $7f97: $5a
    push af                                       ; $7f98: $f5
    ld a, l                                       ; $7f99: $7d
    add h                                         ; $7f9a: $84
    xor d                                         ; $7f9b: $aa
    push bc                                       ; $7f9c: $c5
    ld a, [hl-]                                   ; $7f9d: $3a
    sub [hl]                                      ; $7f9e: $96
    ld hl, sp-$04                                 ; $7f9f: $f8 $fc
    dec [hl]                                      ; $7fa1: $35
    adc [hl]                                      ; $7fa2: $8e
    ld [hl-], a                                   ; $7fa3: $32
    ld hl, $6bf8                                  ; $7fa4: $21 $f8 $6b
    ld h, [hl]                                    ; $7fa7: $66
    ld a, [$bd11]                                 ; $7fa8: $fa $11 $bd
    ld b, e                                       ; $7fab: $43
    ld [hl], d                                    ; $7fac: $72
    di                                            ; $7fad: $f3
    add [hl]                                      ; $7fae: $86
    xor c                                         ; $7faf: $a9
    or a                                          ; $7fb0: $b7
    ld c, c                                       ; $7fb1: $49
    ld a, a                                       ; $7fb2: $7f
    ld l, a                                       ; $7fb3: $6f
    rst $20                                       ; $7fb4: $e7
    ld h, $7f                                     ; $7fb5: $26 $7f
    sub c                                         ; $7fb7: $91
    ld sp, $6769                                  ; $7fb8: $31 $69 $67
    ld c, a                                       ; $7fbb: $4f
    db $e4                                        ; $7fbc: $e4
    rrca                                          ; $7fbd: $0f
    pop bc                                        ; $7fbe: $c1
    ret c                                         ; $7fbf: $d8

    ld e, c                                       ; $7fc0: $59
    rst $38                                       ; $7fc1: $ff
    sub e                                         ; $7fc2: $93
    sbc $2d                                       ; $7fc3: $de $2d
    jp c, $0c5b                                   ; $7fc5: $da $5b $0c

    rst $30                                       ; $7fc8: $f7
    ld d, e                                       ; $7fc9: $53
    cp h                                          ; $7fca: $bc
    cp d                                          ; $7fcb: $ba
    rla                                           ; $7fcc: $17
    ld a, a                                       ; $7fcd: $7f
    dec e                                         ; $7fce: $1d
    inc c                                         ; $7fcf: $0c

jr_036_7fd0:
    db $d3                                        ; $7fd0: $d3
    ld h, [hl]                                    ; $7fd1: $66
    ld a, $1c                                     ; $7fd2: $3e $1c
    ld l, e                                       ; $7fd4: $6b
    add hl, hl                                    ; $7fd5: $29
    ld a, [hl-]                                   ; $7fd6: $3a
    ld [hl], $cd                                  ; $7fd7: $36 $cd
    ld bc, $1bb3                                  ; $7fd9: $01 $b3 $1b
    ret nz                                        ; $7fdc: $c0

    jp nc, Jump_000_2d79                          ; $7fdd: $d2 $79 $2d

    xor b                                         ; $7fe0: $a8
    ld hl, sp+$3b                                 ; $7fe1: $f8 $3b
    ld [hl], a                                    ; $7fe3: $77
    call nc, Call_036_6005                        ; $7fe4: $d4 $05 $60
    ld c, c                                       ; $7fe7: $49
    sbc e                                         ; $7fe8: $9b
    ret nz                                        ; $7fe9: $c0

    ld e, a                                       ; $7fea: $5f
    rst $28                                       ; $7feb: $ef
    ld a, [bc]                                    ; $7fec: $0a
    ld de, $ae7c                                  ; $7fed: $11 $7c $ae
    cp $88                                        ; $7ff0: $fe $88
    dec [hl]                                      ; $7ff2: $35
    ld d, $af                                     ; $7ff3: $16 $af
    sbc $ae                                       ; $7ff5: $de $ae
    db $e3                                        ; $7ff7: $e3
    ldh a, [$f6]                                  ; $7ff8: $f0 $f6
    ld c, [hl]                                    ; $7ffa: $4e
    ld [de], a                                    ; $7ffb: $12
    db $ed                                        ; $7ffc: $ed
    inc [hl]                                      ; $7ffd: $34
    rlca                                          ; $7ffe: $07
    rst $38                                       ; $7fff: $ff
