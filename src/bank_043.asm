; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $043", ROMX[$4000], BANK[$43]

    ld b, e                                       ; $4000: $43
    dec e                                         ; $4001: $1d
    ld e, a                                       ; $4002: $5f
    ret c                                         ; $4003: $d8

    add [hl]                                      ; $4004: $86
    add h                                         ; $4005: $84
    push de                                       ; $4006: $d5
    ld e, a                                       ; $4007: $5f
    ld [hl], e                                    ; $4008: $73
    dec b                                         ; $4009: $05
    cp [hl]                                       ; $400a: $be
    ld l, a                                       ; $400b: $6f
    push af                                       ; $400c: $f5
    and h                                         ; $400d: $a4
    add d                                         ; $400e: $82
    or [hl]                                       ; $400f: $b6
    ld l, a                                       ; $4010: $6f
    or d                                          ; $4011: $b2
    ret nz                                        ; $4012: $c0

    jp nz, Jump_043_4148                          ; $4013: $c2 $48 $41

    ld hl, sp-$1e                                 ; $4016: $f8 $e2
    db $fd                                        ; $4018: $fd
    dec bc                                        ; $4019: $0b
    add hl, bc                                    ; $401a: $09
    dec b                                         ; $401b: $05
    add e                                         ; $401c: $83
    ld l, $ce                                     ; $401d: $2e $ce
    ld a, a                                       ; $401f: $7f
    ld d, h                                       ; $4020: $54
    ld a, h                                       ; $4021: $7c
    db $28, $c2                                   ; $4022: $28 $c2
    inc [hl]                                      ; $4024: $34
    push hl                                       ; $4025: $e5
    cp [hl]                                       ; $4026: $be
    ld e, a                                       ; $4027: $5f
    ld bc, $4675                                  ; $4028: $01 $75 $46
    ld [c], a                                     ; $402b: $e2
    sbc a                                         ; $402c: $9f
    sub b                                         ; $402d: $90
    ld d, a                                       ; $402e: $57
    ld a, b                                       ; $402f: $78
    ld [hl+], a                                   ; $4030: $22
    db $28, $85                                   ; $4031: $28 $85
    jp z, $b2e8                                   ; $4033: $ca $e8 $b2

    ret c                                         ; $4036: $d8

    ld a, b                                       ; $4037: $78
    ld d, c                                       ; $4038: $51
    jp z, $fa18                                   ; $4039: $ca $18 $fa

    dec d                                         ; $403c: $15
    ld [hl], l                                    ; $403d: $75
    ld d, b                                       ; $403e: $50
    ld d, l                                       ; $403f: $55
    sub b                                         ; $4040: $90
    ret                                           ; $4041: $c9


    ld c, l                                       ; $4042: $4d
    sbc a                                         ; $4043: $9f
    or $3f                                        ; $4044: $f6 $3f
    ld a, $f4                                     ; $4046: $3e $f4
    or a                                          ; $4048: $b7
    and e                                         ; $4049: $a3
    ld [hl-], a                                   ; $404a: $32
    add hl, hl                                    ; $404b: $29
    sub a                                         ; $404c: $97
    jp nz, $f91f                                  ; $404d: $c2 $1f $f9

    ld [c], a                                     ; $4050: $e2
    ld b, [hl]                                    ; $4051: $46
    inc d                                         ; $4052: $14
    ld b, h                                       ; $4053: $44
    ld c, l                                       ; $4054: $4d
    sub b                                         ; $4055: $90
    sbc e                                         ; $4056: $9b
    sub b                                         ; $4057: $90
    and e                                         ; $4058: $a3
    db $ed                                        ; $4059: $ed
    sbc e                                         ; $405a: $9b
    sub h                                         ; $405b: $94
    ld e, a                                       ; $405c: $5f
    ld h, b                                       ; $405d: $60
    adc b                                         ; $405e: $88
    di                                            ; $405f: $f3
    ld e, a                                       ; $4060: $5f
    ld l, d                                       ; $4061: $6a
    db $f4                                        ; $4062: $f4
    dec hl                                        ; $4063: $2b
    cp [hl]                                       ; $4064: $be
    db $fc                                        ; $4065: $fc
    ld [hl+], a                                   ; $4066: $22
    inc de                                        ; $4067: $13
    db $fd                                        ; $4068: $fd
    ld e, $e7                                     ; $4069: $1e $e7
    ld e, [hl]                                    ; $406b: $5e
    call nc, $87c4                                ; $406c: $d4 $c4 $87
    and d                                         ; $406f: $a2
    ldh a, [$c4]                                  ; $4070: $f0 $c4
    adc l                                         ; $4072: $8d
    reti                                          ; $4073: $d9


    xor c                                         ; $4074: $a9
    cp c                                          ; $4075: $b9
    jp hl                                         ; $4076: $e9


    ei                                            ; $4077: $fb
    ld a, $75                                     ; $4078: $3e $75
    ld b, [hl]                                    ; $407a: $46
    ld [c], a                                     ; $407b: $e2
    inc c                                         ; $407c: $0c
    ld l, d                                       ; $407d: $6a
    and d                                         ; $407e: $a2
    ld l, $cb                                     ; $407f: $2e $cb
    jr nc, jr_043_40ef                            ; $4081: $30 $6c

    ld e, a                                       ; $4083: $5f
    ld a, [bc]                                    ; $4084: $0a
    ld e, l                                       ; $4085: $5d
    ld h, b                                       ; $4086: $60
    ld l, a                                       ; $4087: $6f
    add sp, $57                                   ; $4088: $e8 $57
    ld l, l                                       ; $408a: $6d
    ld hl, sp+$6b                                 ; $408b: $f8 $6b
    and l                                         ; $408d: $a5
    ld b, e                                       ; $408e: $43
    ld a, [$4ddb]                                 ; $408f: $fa $db $4d
    ld sp, hl                                     ; $4092: $f9
    ld d, h                                       ; $4093: $54
    rla                                           ; $4094: $17
    rst $38                                       ; $4095: $ff
    add a                                         ; $4096: $87
    ld a, [de]                                    ; $4097: $1a
    ccf                                           ; $4098: $3f
    ld c, a                                       ; $4099: $4f

jr_043_409a:
    cp a                                          ; $409a: $bf
    ld [bc], a                                    ; $409b: $02
    xor l                                         ; $409c: $ad
    ld b, c                                       ; $409d: $41
    and b                                         ; $409e: $a0
    ld c, e                                       ; $409f: $4b
    db $ed                                        ; $40a0: $ed
    scf                                           ; $40a1: $37
    inc hl                                        ; $40a2: $23
    sub b                                         ; $40a3: $90
    cp d                                          ; $40a4: $ba
    jp $eb0c                                      ; $40a5: $c3 $0c $eb


    ld d, e                                       ; $40a8: $53
    ei                                            ; $40a9: $fb
    cpl                                           ; $40aa: $2f
    halt                                          ; $40ab: $76
    ld c, $24                                     ; $40ac: $0e $24
    push hl                                       ; $40ae: $e5
    ret                                           ; $40af: $c9


    db $ed                                        ; $40b0: $ed
    ld d, h                                       ; $40b1: $54
    cpl                                           ; $40b2: $2f
    adc h                                         ; $40b3: $8c
    cp l                                          ; $40b4: $bd
    daa                                           ; $40b5: $27
    ld [$74c2], a                                 ; $40b6: $ea $c2 $74
    or d                                          ; $40b9: $b2
    cp h                                          ; $40ba: $bc
    ld [hl-], a                                   ; $40bb: $32
    add sp, -$7e                                  ; $40bc: $e8 $82
    db $ec                                        ; $40be: $ec
    ld c, c                                       ; $40bf: $49
    pop hl                                        ; $40c0: $e1
    cp a                                          ; $40c1: $bf
    ret nc                                        ; $40c2: $d0

    ld a, [c]                                     ; $40c3: $f2
    and d                                         ; $40c4: $a2
    ld h, $28                                     ; $40c5: $26 $28
    rst $08                                       ; $40c7: $cf
    db $fc                                        ; $40c8: $fc
    dec d                                         ; $40c9: $15
    add h                                         ; $40ca: $84
    ld de, $1537                                  ; $40cb: $11 $37 $15
    or d                                          ; $40ce: $b2
    daa                                           ; $40cf: $27
    or h                                          ; $40d0: $b4
    inc a                                         ; $40d1: $3c
    ld sp, hl                                     ; $40d2: $f9
    reti                                          ; $40d3: $d9


    db $f4                                        ; $40d4: $f4
    ld a, [$9334]                                 ; $40d5: $fa $34 $93
    add l                                         ; $40d8: $85
    ld a, [bc]                                    ; $40d9: $0a
    ld e, a                                       ; $40da: $5f
    ld c, [hl]                                    ; $40db: $4e
    ld d, d                                       ; $40dc: $52
    ld b, c                                       ; $40dd: $41
    ld h, $9f                                     ; $40de: $26 $9f
    or [hl]                                       ; $40e0: $b6
    db $ec                                        ; $40e1: $ec
    cp h                                          ; $40e2: $bc
    inc hl                                        ; $40e3: $23
    ld l, d                                       ; $40e4: $6a

jr_043_40e5:
    ld l, h                                       ; $40e5: $6c
    or d                                          ; $40e6: $b2
    ret nz                                        ; $40e7: $c0

    add d                                         ; $40e8: $82
    ld d, d                                       ; $40e9: $52
    ld h, b                                       ; $40ea: $60
    ld c, b                                       ; $40eb: $48
    pop hl                                        ; $40ec: $e1
    rst $20                                       ; $40ed: $e7
    ret                                           ; $40ee: $c9


jr_043_40ef:
    ld c, c                                       ; $40ef: $49
    or h                                          ; $40f0: $b4
    or e                                          ; $40f1: $b3
    adc c                                         ; $40f2: $89
    cp d                                          ; $40f3: $ba
    ret z                                         ; $40f4: $c8

    jr nc, jr_043_409a                            ; $40f5: $30 $a3

    ld e, a                                       ; $40f7: $5f
    ld bc, $489d                                  ; $40f8: $01 $9d $48
    ld c, b                                       ; $40fb: $48
    jr c, jr_043_40e5                             ; $40fc: $38 $e7

    cp a                                          ; $40fe: $bf
    ld c, c                                       ; $40ff: $49
    ld e, c                                       ; $4100: $59
    ldh [$9c], a                                  ; $4101: $e0 $9c
    rst $38                                       ; $4103: $ff
    and [hl]                                      ; $4104: $a6
    adc a                                         ; $4105: $8f
    rst $20                                       ; $4106: $e7
    sub h                                         ; $4107: $94
    adc a                                         ; $4108: $8f
    cp e                                          ; $4109: $bb
    ld a, b                                       ; $410a: $78
    ccf                                           ; $410b: $3f
    daa                                           ; $410c: $27
    pop af                                        ; $410d: $f1
    and c                                         ; $410e: $a1
    jr z, @-$12                                   ; $410f: $28 $ec

    pop af                                        ; $4111: $f1
    ld [hl], h                                    ; $4112: $74
    ld a, a                                       ; $4113: $7f
    ld c, b                                       ; $4114: $48
    ld a, [hl-]                                   ; $4115: $3a
    db $fc                                        ; $4116: $fc
    or l                                          ; $4117: $b5
    ld d, [hl]                                    ; $4118: $56
    ld l, l                                       ; $4119: $6d
    db $ed                                        ; $411a: $ed

Call_043_411b:
    srl b                                         ; $411b: $cb $38
    rst $20                                       ; $411d: $e7
    cp a                                          ; $411e: $bf
    xor b                                         ; $411f: $a8
    adc e                                         ; $4120: $8b
    rrca                                          ; $4121: $0f
    push bc                                       ; $4122: $c5
    sbc $1f                                       ; $4123: $de $1f
    dec [hl]                                      ; $4125: $35
    ld [hl+], a                                   ; $4126: $22
    sbc a                                         ; $4127: $9f
    ld [hl-], a                                   ; $4128: $32
    ld [hl-], a                                   ; $4129: $32
    ld e, c                                       ; $412a: $59
    ld l, h                                       ; $412b: $6c
    ld d, $bb                                     ; $412c: $16 $bb
    adc c                                         ; $412e: $89
    sbc e                                         ; $412f: $9b
    ld a, [bc]                                    ; $4130: $0a
    cp c                                          ; $4131: $b9
    ld d, h                                       ; $4132: $54
    add a                                         ; $4133: $87
    db $eb                                        ; $4134: $eb
    ei                                            ; $4135: $fb
    ld a, $88                                     ; $4136: $3e $88
    rrca                                          ; $4138: $0f
    push bc                                       ; $4139: $c5
    sbc $1e                                       ; $413a: $de $1e
    ld [hl], h                                    ; $413c: $74
    xor d                                         ; $413d: $aa
    adc c                                         ; $413e: $89
    rst $38                                       ; $413f: $ff
    ld [hl], e                                    ; $4140: $73
    xor c                                         ; $4141: $a9
    ld c, $97                                     ; $4142: $0e $97
    jp nz, $e528                                  ; $4144: $c2 $28 $e5

    ld [c], a                                     ; $4147: $e2

Jump_043_4148:
    ld a, [hl]                                    ; $4148: $7e
    pop bc                                        ; $4149: $c1
    sbc $d7                                       ; $414a: $de $d7
    and a                                         ; $414c: $a7
    db $fd                                        ; $414d: $fd
    xor a                                         ; $414e: $af
    xor d                                         ; $414f: $aa
    xor a                                         ; $4150: $af
    sbc c                                         ; $4151: $99
    cp d                                          ; $4152: $ba
    cp a                                          ; $4153: $bf
    call nc, Call_043_7353                        ; $4154: $d4 $53 $73
    dec b                                         ; $4157: $05
    ld l, l                                       ; $4158: $6d
    call nz, $a94d                                ; $4159: $c4 $4d $a9
    cpl                                           ; $415c: $2f
    cp $bf                                        ; $415d: $fe $bf
    inc d                                         ; $415f: $14
    scf                                           ; $4160: $37
    dec bc                                        ; $4161: $0b
    adc h                                         ; $4162: $8c
    daa                                           ; $4163: $27
    sub a                                         ; $4164: $97
    ld h, l                                       ; $4165: $65
    jr jr_043_41de                                ; $4166: $18 $76

    ld d, c                                       ; $4168: $51
    ret c                                         ; $4169: $d8

    ld a, e                                       ; $416a: $7b
    ld [c], a                                     ; $416b: $e2
    cp e                                          ; $416c: $bb
    ret nz                                        ; $416d: $c0

    add hl, sp                                    ; $416e: $39
    rst $38                                       ; $416f: $ff
    ld c, l                                       ; $4170: $4d
    inc d                                         ; $4171: $14
    or $46                                        ; $4172: $f6 $46
    ld e, d                                       ; $4174: $5a
    or e                                          ; $4175: $b3
    xor a                                         ; $4176: $af
    ret nc                                        ; $4177: $d0

    xor a                                         ; $4178: $af
    ld [hl], l                                    ; $4179: $75
    ld l, l                                       ; $417a: $6d
    cp h                                          ; $417b: $bc
    jr z, jr_043_41e3                             ; $417c: $28 $65

    inc l                                         ; $417e: $2c
    cp [hl]                                       ; $417f: $be
    or a                                          ; $4180: $b7
    ld hl, $9a8c                                  ; $4181: $21 $8c $9a
    xor c                                         ; $4184: $a9
    inc sp                                        ; $4185: $33
    sub d                                         ; $4186: $92
    db $ed                                        ; $4187: $ed
    pop af                                        ; $4188: $f1
    inc h                                         ; $4189: $24
    ret z                                         ; $418a: $c8

    add hl, bc                                    ; $418b: $09
    add hl, bc                                    ; $418c: $09
    ld b, l                                       ; $418d: $45
    ld sp, hl                                     ; $418e: $f9

jr_043_418f:
    ld [hl], l                                    ; $418f: $75
    add hl, hl                                    ; $4190: $29
    and a                                         ; $4191: $a7
    ret                                           ; $4192: $c9


    jr jr_043_418f                                ; $4193: $18 $fa

    dec d                                         ; $4195: $15
    ld l, l                                       ; $4196: $6d
    ld c, a                                       ; $4197: $4f
    ld h, h                                       ; $4198: $64
    inc h                                         ; $4199: $24
    cp $89                                        ; $419a: $fe $89
    cp $ca                                        ; $419c: $fe $ca
    ld l, b                                       ; $419e: $68
    ld [hl-], a                                   ; $419f: $32
    ld d, c                                       ; $41a0: $51
    rla                                           ; $41a1: $17
    ld a, [hl+]                                   ; $41a2: $2a
    xor c                                         ; $41a3: $a9
    ld e, [hl]                                    ; $41a4: $5e
    jr jr_043_4222                                ; $41a5: $18 $7b

    ld c, a                                       ; $41a7: $4f
    ld d, $58                                     ; $41a8: $16 $58
    call nc, Call_000_1091                        ; $41aa: $d4 $91 $10
    ld a, [hl]                                    ; $41ad: $7e
    ld b, e                                       ; $41ae: $43
    ld c, [hl]                                    ; $41af: $4e
    ret z                                         ; $41b0: $c8

    dec hl                                        ; $41b1: $2b
    and a                                         ; $41b2: $a7
    cp a                                          ; $41b3: $bf
    adc l                                         ; $41b4: $8d
    ld a, $1d                                     ; $41b5: $3e $1d
    dec e                                         ; $41b7: $1d
    adc d                                         ; $41b8: $8a
    cp e                                          ; $41b9: $bb
    ld a, h                                       ; $41ba: $7c
    call c, $8b54                                 ; $41bb: $dc $54 $8b
    ld b, c                                       ; $41be: $41
    inc d                                         ; $41bf: $14
    inc c                                         ; $41c0: $0c
    ld [hl], c                                    ; $41c1: $71
    ld d, a                                       ; $41c2: $57
    ld a, a                                       ; $41c3: $7f
    sbc h                                         ; $41c4: $9c
    rra                                           ; $41c5: $1f
    pop af                                        ; $41c6: $f1
    rst $38                                       ; $41c7: $ff
    add l                                         ; $41c8: $85
    cp h                                          ; $41c9: $bc
    jp nz, $c113                                  ; $41ca: $c2 $13 $c1

    sbc $13                                       ; $41cd: $de $13
    rst $18                                       ; $41cf: $df
    dec b                                         ; $41d0: $05
    adc $f9                                       ; $41d1: $ce $f9
    ld l, a                                       ; $41d3: $6f
    and d                                         ; $41d4: $a2
    or b                                          ; $41d5: $b0
    scf                                           ; $41d6: $37
    jp nc, Jump_043_7d9a                          ; $41d7: $d2 $9a $7d

    add l                                         ; $41da: $85
    ld e, d                                       ; $41db: $5a
    dec hl                                        ; $41dc: $2b
    ld l, l                                       ; $41dd: $6d

jr_043_41de:
    and a                                         ; $41de: $a7
    ld a, [hl-]                                   ; $41df: $3a
    ld e, h                                       ; $41e0: $5c
    inc [hl]                                      ; $41e1: $34
    ret z                                         ; $41e2: $c8

jr_043_41e3:
    pop af                                        ; $41e3: $f1
    ret c                                         ; $41e4: $d8

    push de                                       ; $41e5: $d5
    ld e, d                                       ; $41e6: $5a
    ld bc, $979e                                  ; $41e7: $01 $9e $97
    ld l, d                                       ; $41ea: $6a
    ld a, [bc]                                    ; $41eb: $0a
    db $db                                        ; $41ec: $db
    rst $00                                       ; $41ed: $c7
    add a                                         ; $41ee: $87
    ld h, d                                       ; $41ef: $62
    rst $28                                       ; $41f0: $ef
    adc c                                         ; $41f1: $89
    di                                            ; $41f2: $f3
    inc hl                                        ; $41f3: $23
    ld a, [bc]                                    ; $41f4: $0a
    push hl                                       ; $41f5: $e5
    inc d                                         ; $41f6: $14
    db $ec                                        ; $41f7: $ec
    cp [hl]                                       ; $41f8: $be
    sbc d                                         ; $41f9: $9a
    inc l                                         ; $41fa: $2c
    rst $10                                       ; $41fb: $d7
    ld b, b                                       ; $41fc: $40
    ld d, $1b                                     ; $41fd: $16 $1b
    rst $28                                       ; $41ff: $ef
    adc b                                         ; $4200: $88
    ld a, [$c20a]                                 ; $4201: $fa $0a $c2
    ld [$5cb2], sp                                ; $4204: $08 $b2 $5c
    inc bc                                        ; $4207: $03
    add hl, sp                                    ; $4208: $39
    inc sp                                        ; $4209: $33
    sub h                                         ; $420a: $94
    dec hl                                        ; $420b: $2b
    ld a, h                                       ; $420c: $7c
    ld a, [$15db]                                 ; $420d: $fa $db $15
    add h                                         ; $4210: $84
    sub c                                         ; $4211: $91
    sub e                                         ; $4212: $93
    jr c, jr_043_424f                             ; $4213: $38 $3a

    ld d, $99                                     ; $4215: $16 $99
    jp nz, $ba36                                  ; $4217: $c2 $36 $ba

    ld d, h                                       ; $421a: $54
    rra                                           ; $421b: $1f
    add hl, de                                    ; $421c: $19
    ret                                           ; $421d: $c9


    cp $90                                        ; $421e: $fe $90
    or b                                          ; $4220: $b0
    db $e3                                        ; $4221: $e3

jr_043_4222:
    ld a, d                                       ; $4222: $7a
    ld a, [$3eb4]                                 ; $4223: $fa $b4 $3e
    push de                                       ; $4226: $d5
    res 0, l                                      ; $4227: $cb $85
    add h                                         ; $4229: $84
    ld e, c                                       ; $422a: $59
    dec a                                         ; $422b: $3d
    ld e, c                                       ; $422c: $59
    add $f8                                       ; $422d: $c6 $f8
    ld a, c                                       ; $422f: $79
    ld b, d                                       ; $4230: $42
    sbc $eb                                       ; $4231: $de $eb
    or d                                          ; $4233: $b2
    ret nz                                        ; $4234: $c0

    ld h, d                                       ; $4235: $62
    xor a                                         ; $4236: $af
    db $dd                                        ; $4237: $dd
    ret z                                         ; $4238: $c8

    push bc                                       ; $4239: $c5
    ld sp, hl                                     ; $423a: $f9
    ld de, $c919                                  ; $423b: $11 $19 $c9
    ld [hl-], a                                   ; $423e: $32
    and l                                         ; $423f: $a5
    ld c, h                                       ; $4240: $4c
    jp z, $d072                                   ; $4241: $ca $72 $d0

    sbc $f8                                       ; $4244: $de $f8
    ld a, [$6074]                                 ; $4246: $fa $74 $60
    rra                                           ; $4249: $1f
    dec [hl]                                      ; $424a: $35
    and h                                         ; $424b: $a4
    and c                                         ; $424c: $a1
    ldh a, [$85]                                  ; $424d: $f0 $85

jr_043_424f:
    rst $00                                       ; $424f: $c7
    db $e4                                        ; $4250: $e4
    dec c                                         ; $4251: $0d
    ld sp, hl                                     ; $4252: $f9
    ld l, h                                       ; $4253: $6c
    jr nc, jr_043_42a5                            ; $4254: $30 $4f

    sbc a                                         ; $4256: $9f
    or [hl]                                       ; $4257: $b6
    ld b, l                                       ; $4258: $45
    ld c, l                                       ; $4259: $4d
    add hl, hl                                    ; $425a: $29
    sbc a                                         ; $425b: $9f
    db $db                                        ; $425c: $db
    xor c                                         ; $425d: $a9
    ld e, [hl]                                    ; $425e: $5e
    jr jr_043_42dc                                ; $425f: $18 $7b

    ld c, a                                       ; $4261: $4f
    sbc a                                         ; $4262: $9f
    cp d                                          ; $4263: $ba
    jp $c286                                      ; $4264: $c3 $86 $c2


    sub a                                         ; $4267: $97
    push hl                                       ; $4268: $e5
    ld c, e                                       ; $4269: $4b
    ld a, c                                       ; $426a: $79
    ld b, e                                       ; $426b: $43
    inc d                                         ; $426c: $14
    ld l, $1a                                     ; $426d: $2e $1a
    db $fd                                        ; $426f: $fd
    db $d3                                        ; $4270: $d3
    and l                                         ; $4271: $a5
    jr nz, jr_043_4298                            ; $4272: $20 $24

    db $e4                                        ; $4274: $e4
    ld c, d                                       ; $4275: $4a
    cp c                                          ; $4276: $b9
    sub h                                         ; $4277: $94
    or c                                          ; $4278: $b1
    push bc                                       ; $4279: $c5
    ld d, b                                       ; $427a: $50
    ld h, $27                                     ; $427b: $26 $27
    pop de                                        ; $427d: $d1
    adc $26                                       ; $427e: $ce $26
    ld [$c322], a                                 ; $4280: $ea $22 $c3
    adc h                                         ; $4283: $8c
    ld a, [hl]                                    ; $4284: $7e
    dec b                                         ; $4285: $05
    db $ed                                        ; $4286: $ed
    ld a, a                                       ; $4287: $7f
    ld [$8f1e], a                                 ; $4288: $ea $1e $8f
    db $f4                                        ; $428b: $f4
    ld a, l                                       ; $428c: $7d
    cp a                                          ; $428d: $bf
    ld [bc], a                                    ; $428e: $02
    or l                                          ; $428f: $b5
    daa                                           ; $4290: $27
    push de                                       ; $4291: $d5
    adc e                                         ; $4292: $8b

Jump_043_4293:
    ld a, d                                       ; $4293: $7a
    sbc [hl]                                      ; $4294: $9e
    ld a, h                                       ; $4295: $7c
    ld [hl], $98                                  ; $4296: $36 $98

jr_043_4298:
    daa                                           ; $4298: $27
    cpl                                           ; $4299: $2f
    adc $8f                                       ; $429a: $ce $8f
    ld l, h                                       ; $429c: $6c
    ld a, d                                       ; $429d: $7a
    db $fd                                        ; $429e: $fd
    ld a, [bc]                                    ; $429f: $0a
    sbc [hl]                                      ; $42a0: $9e

Jump_043_42a1:
    cp $2b                                        ; $42a1: $fe $2b
    and l                                         ; $42a3: $a5
    sbc [hl]                                      ; $42a4: $9e

jr_043_42a5:
    xor b                                         ; $42a5: $a8
    adc e                                         ; $42a6: $8b
    sbc e                                         ; $42a7: $9b
    ld a, [c]                                     ; $42a8: $f2
    ld e, c                                       ; $42a9: $59
    sbc $f6                                       ; $42aa: $de $f6
    rst $00                                       ; $42ac: $c7
    add a                                         ; $42ad: $87
    and d                                         ; $42ae: $a2
    ldh a, [$64]                                  ; $42af: $f0 $64
    sbc a                                         ; $42b1: $9f
    sbc $a6                                       ; $42b2: $de $a6
    rst $28                                       ; $42b4: $ef
    ei                                            ; $42b5: $fb
    dec d                                         ; $42b6: $15
    dec e                                         ; $42b7: $1d
    jr nc, jr_043_4319                            ; $42b8: $30 $5f

    dec [hl]                                      ; $42ba: $35
    reti                                          ; $42bb: $d9


    ld c, a                                       ; $42bc: $4f
    adc [hl]                                      ; $42bd: $8e
    adc l                                         ; $42be: $8d
    ld l, $ed                                     ; $42bf: $2e $ed
    ld e, e                                       ; $42c1: $5b
    jp hl                                         ; $42c2: $e9


    ld d, e                                       ; $42c3: $53
    sub a                                         ; $42c4: $97
    sbc d                                         ; $42c5: $9a
    push af                                       ; $42c6: $f5
    dec hl                                        ; $42c7: $2b
    db $ed                                        ; $42c8: $ed
    ld hl, $bbe4                                  ; $42c9: $21 $e4 $bb
    rla                                           ; $42cc: $17
    ld [hl+], a                                   ; $42cd: $22
    and d                                         ; $42ce: $a2
    ld l, $75                                     ; $42cf: $2e $75
    cp a                                          ; $42d1: $bf
    ld hl, sp-$30                                 ; $42d2: $f8 $d0
    adc a                                         ; $42d4: $8f
    adc h                                         ; $42d5: $8c
    and h                                         ; $42d6: $a4
    adc h                                         ; $42d7: $8c
    ld c, h                                       ; $42d8: $4c
    call nc, Call_000_3091                        ; $42d9: $d4 $91 $30

jr_043_42dc:
    add [hl]                                      ; $42dc: $86
    ldh a, [$c5]                                  ; $42dd: $f0 $c5
    ld c, l                                       ; $42df: $4d
    add l                                         ; $42e0: $85
    ld hl, sp+$50                                 ; $42e1: $f8 $50
    db $ec                                        ; $42e3: $ec
    adc l                                         ; $42e4: $8d
    xor b                                         ; $42e5: $a8
    ld c, e                                       ; $42e6: $4b
    sbc l                                         ; $42e7: $9d
    rst $20                                       ; $42e8: $e7
    rst $18                                       ; $42e9: $df
    add sp, $53                                   ; $42ea: $e8 $53
    ld h, a                                       ; $42ec: $67
    inc h                                         ; $42ed: $24
    sbc $77                                       ; $42ee: $de $77
    xor $be                                       ; $42f0: $ee $be
    sbc d                                         ; $42f2: $9a
    db $fc                                        ; $42f3: $fc
    ld h, [hl]                                    ; $42f4: $66
    sbc e                                         ; $42f5: $9b
    jr c, jr_043_4337                             ; $42f6: $38 $3f

    ld d, d                                       ; $42f8: $52
    sbc b                                         ; $42f9: $98
    xor d                                         ; $42fa: $aa
    ld a, e                                       ; $42fb: $7b
    ld b, e                                       ; $42fc: $43
    call Call_043_6d15                            ; $42fd: $cd $15 $6d
    jp c, Jump_000_1967                           ; $4300: $da $67 $19

    scf                                           ; $4303: $37
    ld [hl], c                                    ; $4304: $71
    sub a                                         ; $4305: $97
    ld a, [c]                                     ; $4306: $f2
    or $22                                        ; $4307: $f6 $22
    inc de                                        ; $4309: $13
    ld l, l                                       ; $430a: $6d
    ld e, a                                       ; $430b: $5f
    ld d, b                                       ; $430c: $50
    cp [hl]                                       ; $430d: $be
    ld a, [hl-]                                   ; $430e: $3a
    ld e, l                                       ; $430f: $5d
    call nc, $f5e8                                ; $4310: $d4 $e8 $f5
    rst $30                                       ; $4313: $f7
    push de                                       ; $4314: $d5
    and h                                         ; $4315: $a4
    jr nc, jr_043_436d                            ; $4316: $30 $55

    rst $30                                       ; $4318: $f7

jr_043_4319:
    add [hl]                                      ; $4319: $86
    sbc d                                         ; $431a: $9a
    ld l, c                                       ; $431b: $69
    ld a, l                                       ; $431c: $7d
    db $f4                                        ; $431d: $f4
    ld a, [$6afb]                                 ; $431e: $fa $fb $6a
    or d                                          ; $4321: $b2
    ld a, h                                       ; $4322: $7c
    add hl, hl                                    ; $4323: $29
    ld l, a                                       ; $4324: $6f
    ei                                            ; $4325: $fb
    ld [hl], h                                    ; $4326: $74
    add hl, hl                                    ; $4327: $29
    ld [$da39], sp                                ; $4328: $08 $39 $da
    cp [hl]                                       ; $432b: $be
    xor a                                         ; $432c: $af
    ld h, $28                                     ; $432d: $26 $28
    dec b                                         ; $432f: $05
    add [hl]                                      ; $4330: $86
    ld a, h                                       ; $4331: $7c
    ld d, l                                       ; $4332: $55
    and c                                         ; $4333: $a1
    sub h                                         ; $4334: $94
    set 5, a                                      ; $4335: $cb $ef

jr_043_4337:
    inc d                                         ; $4337: $14
    cp b                                          ; $4338: $b8
    ld de, $7935                                  ; $4339: $11 $35 $79
    sub c                                         ; $433c: $91
    jp hl                                         ; $433d: $e9


    ld d, a                                       ; $433e: $57
    or l                                          ; $433f: $b5
    ld e, a                                       ; $4340: $5f
    or e                                          ; $4341: $b3
    ld d, e                                       ; $4342: $53
    dec [hl]                                      ; $4343: $35
    db $e3                                        ; $4344: $e3
    add hl, sp                                    ; $4345: $39
    push hl                                       ; $4346: $e5
    db $e3                                        ; $4347: $e3
    ld l, $de                                     ; $4348: $2e $de
    cp a                                          ; $434a: $bf
    ld hl, sp-$30                                 ; $434b: $f8 $d0
    xor e                                         ; $434d: $ab
    or l                                          ; $434e: $b5
    ld [bc], a                                    ; $434f: $02
    ld l, l                                       ; $4350: $6d
    ld hl, sp-$55                                 ; $4351: $f8 $ab
    cp [hl]                                       ; $4353: $be
    rst $28                                       ; $4354: $ef
    ld b, e                                       ; $4355: $43
    db $fd                                        ; $4356: $fd
    ld d, l                                       ; $4357: $55
    rst $18                                       ; $4358: $df
    rst $30                                       ; $4359: $f7
    add hl, hl                                    ; $435a: $29
    inc a                                         ; $435b: $3c
    ld d, c                                       ; $435c: $51
    cpl                                           ; $435d: $2f
    ld l, d                                       ; $435e: $6a
    ld b, d                                       ; $435f: $42
    push bc                                       ; $4360: $c5
    ld h, e                                       ; $4361: $63
    sbc h                                         ; $4362: $9c
    di                                            ; $4363: $f3
    rst $18                                       ; $4364: $df
    di                                            ; $4365: $f3
    rst $20                                       ; $4366: $e7
    inc h                                         ; $4367: $24
    jp c, $f4d9                                   ; $4368: $da $d9 $f4

    jp hl                                         ; $436b: $e9


    sub b                                         ; $436c: $90

jr_043_436d:
    cp [hl]                                       ; $436d: $be
    ldh a, [$e4]                                  ; $436e: $f0 $e4
    ld b, e                                       ; $4370: $43
    adc $e9                                       ; $4371: $ce $e9
    ld [hl+], a                                   ; $4373: $22
    inc hl                                        ; $4374: $23
    add hl, hl                                    ; $4375: $29
    db $fc                                        ; $4376: $fc
    ld b, $46                                     ; $4377: $06 $46
    xor d                                         ; $4379: $aa
    ld [hl], e                                    ; $437a: $73
    sbc a                                         ; $437b: $9f
    rla                                           ; $437c: $17
    scf                                           ; $437d: $37
    or $51                                        ; $437e: $f6 $51
    rlca                                          ; $4380: $07
    or [hl]                                       ; $4381: $b6
    ret                                           ; $4382: $c9


    and a                                         ; $4383: $a7
    adc $b9                                       ; $4384: $ce $b9
    reti                                          ; $4386: $d9


    ld e, a                                       ; $4387: $5f
    jp nc, $fee6                                  ; $4388: $d2 $e6 $fe

    ld a, [bc]                                    ; $438b: $0a
    ld e, e                                       ; $438c: $5b
    rla                                           ; $438d: $17
    ld [de], a                                    ; $438e: $12
    ld [hl], $b5                                  ; $438f: $36 $b5
    ld d, [hl]                                    ; $4391: $56
    xor l                                         ; $4392: $ad
    ld [$f7f5], a                                 ; $4393: $ea $f5 $f7
    push de                                       ; $4396: $d5
    ld b, h                                       ; $4397: $44
    cp e                                          ; $4398: $bb
    ld a, d                                       ; $4399: $7a
    ld d, d                                       ; $439a: $52
    call c, $302c                                 ; $439b: $dc $2c $30
    sbc [hl]                                      ; $439e: $9e
    jr nc, jr_043_4406                            ; $439f: $30 $65

    sbc [hl]                                      ; $43a1: $9e
    inc d                                         ; $43a2: $14
    ld a, [de]                                    ; $43a3: $1a
    ld [hl], l                                    ; $43a4: $75
    reti                                          ; $43a5: $d9


    db $f4                                        ; $43a6: $f4
    ld [hl], h                                    ; $43a7: $74
    ld b, c                                       ; $43a8: $41
    jp z, $cb2f                                   ; $43a9: $ca $2f $cb

    ld a, l                                       ; $43ac: $7d
    dec [hl]                                      ; $43ad: $35
    ld a, c                                       ; $43ae: $79
    ld [hl], c                                    ; $43af: $71
    ld a, [hl]                                    ; $43b0: $7e
    call nz, $91f9                                ; $43b1: $c4 $f9 $91
    db $db                                        ; $43b4: $db
    ld [hl], c                                    ; $43b5: $71
    cpl                                           ; $43b6: $2f
    adc b                                         ; $43b7: $88
    rst $30                                       ; $43b8: $f7
    or e                                          ; $43b9: $b3
    ccf                                           ; $43ba: $3f
    ld a, [de]                                    ; $43bb: $1a
    ld a, l                                       ; $43bc: $7d
    ld d, e                                       ; $43bd: $53
    rst $30                                       ; $43be: $f7
    ld sp, hl                                     ; $43bf: $f9
    cp l                                          ; $43c0: $bd
    ccf                                           ; $43c1: $3f
    ld [hl], l                                    ; $43c2: $75
    rrca                                          ; $43c3: $0f
    ld l, h                                       ; $43c4: $6c
    sbc a                                         ; $43c5: $9f
    ld [hl], $6f                                  ; $43c6: $36 $6f
    ld c, a                                       ; $43c8: $4f
    jp hl                                         ; $43c9: $e9


    ei                                            ; $43ca: $fb
    ld a, [hl]                                    ; $43cb: $7e
    dec b                                         ; $43cc: $05
    cp [hl]                                       ; $43cd: $be
    ld a, [hl]                                    ; $43ce: $7e
    cp a                                          ; $43cf: $bf
    ld l, $af                                     ; $43d0: $2e $af
    rst $10                                       ; $43d2: $d7
    ld a, a                                       ; $43d3: $7f
    add hl, hl                                    ; $43d4: $29
    sbc a                                         ; $43d5: $9f
    db $fd                                        ; $43d6: $fd
    ld hl, $a1c7                                  ; $43d7: $21 $c7 $a1
    and $0a                                       ; $43da: $e6 $0a
    sbc [hl]                                      ; $43dc: $9e
    cp $4b                                        ; $43dd: $fe $4b
    add hl, de                                    ; $43df: $19
    inc hl                                        ; $43e0: $23
    and c                                         ; $43e1: $a1
    db $ed                                        ; $43e2: $ed
    ei                                            ; $43e3: $fb
    db $ec                                        ; $43e4: $ec
    ld c, a                                       ; $43e5: $4f
    db $dd                                        ; $43e6: $dd
    inc bc                                        ; $43e7: $03
    db $db                                        ; $43e8: $db
    db $eb                                        ; $43e9: $eb
    ld [hl-], a                                   ; $43ea: $32
    sbc e                                         ; $43eb: $9b
    dec c                                         ; $43ec: $0d
    ld sp, hl                                     ; $43ed: $f9
    or h                                          ; $43ee: $b4
    ld c, c                                       ; $43ef: $49
    cp l                                          ; $43f0: $bd
    sbc $ab                                       ; $43f1: $de $ab
    or l                                          ; $43f3: $b5
    ld [bc], a                                    ; $43f4: $02

jr_043_43f5:
    cp [hl]                                       ; $43f5: $be
    ld a, [hl]                                    ; $43f6: $7e
    ld a, a                                       ; $43f7: $7f
    call Call_000_19d4                            ; $43f8: $cd $d4 $19
    ld c, c                                       ; $43fb: $49
    cp c                                          ; $43fc: $b9
    inc l                                         ; $43fd: $2c
    or h                                          ; $43fe: $b4
    cp $54                                        ; $43ff: $fe $54
    ld a, a                                       ; $4401: $7f
    add hl, hl                                    ; $4402: $29
    cp a                                          ; $4403: $bf
    ret nz                                        ; $4404: $c0

    db $10                                        ; $4405: $10

jr_043_4406:
    rst $20                                       ; $4406: $e7
    cp a                                          ; $4407: $bf
    inc l                                         ; $4408: $2c
    jp $bd06                                      ; $4409: $c3 $06 $bd


    ld e, $41                                     ; $440c: $1e $41
    add hl, hl                                    ; $440e: $29
    jr nc, jr_043_43f5                            ; $440f: $30 $e4

    inc h                                         ; $4411: $24
    ld e, a                                       ; $4412: $5f
    call c, $1e6c                                 ; $4413: $dc $6c $1e
    ld e, l                                       ; $4416: $5d
    ld a, h                                       ; $4417: $7c
    add sp, -$0b                                  ; $4418: $e8 $f5
    jp hl                                         ; $441a: $e9


    inc d                                         ; $441b: $14
    ld [hl], d                                    ; $441c: $72
    adc h                                         ; $441d: $8c
    ld a, h                                       ; $441e: $7c
    ret c                                         ; $441f: $d8

    add [hl]                                      ; $4420: $86
    ld a, h                                       ; $4421: $7c
    xor e                                         ; $4422: $ab
    ld l, $cb                                     ; $4423: $2e $cb
    dec [hl]                                      ; $4425: $35
    db $10                                        ; $4426: $10
    ld a, [hl]                                    ; $4427: $7e
    ld d, e                                       ; $4428: $53
    rst $10                                       ; $4429: $d7
    xor a                                         ; $442a: $af
    cp [hl]                                       ; $442b: $be
    ld [hl], b                                    ; $442c: $70
    inc hl                                        ; $442d: $23
    ld l, d                                       ; $442e: $6a
    jp nz, $c5d0                                  ; $442f: $c2 $d0 $c5

    ld c, l                                       ; $4432: $4d
    ld sp, hl                                     ; $4433: $f9
    cp b                                          ; $4434: $b8
    adc e                                         ; $4435: $8b
    rst $30                                       ; $4436: $f7
    dec e                                         ; $4437: $1d
    ret z                                         ; $4438: $c8

    ld c, a                                       ; $4439: $4f
    db $ed                                        ; $443a: $ed
    rst $10                                       ; $443b: $d7
    db $ec                                        ; $443c: $ec
    ld d, h                                       ; $443d: $54
    inc b                                         ; $443e: $04
    dec sp                                        ; $443f: $3b
    add [hl]                                      ; $4440: $86
    push hl                                       ; $4441: $e5
    adc l                                         ; $4442: $8d
    daa                                           ; $4443: $27
    ld a, [bc]                                    ; $4444: $0a
    ld a, e                                       ; $4445: $7b
    ld a, a                                       ; $4446: $7f
    ld [hl], $98                                  ; $4447: $36 $98
    ld h, c                                       ; $4449: $61
    rst $08                                       ; $444a: $cf
    call nc, $853e                                ; $444b: $d4 $3e $85
    ld e, [hl]                                    ; $444e: $5e
    sub h                                         ; $444f: $94
    cp l                                          ; $4450: $bd
    and $bf                                       ; $4451: $e6 $bf
    ld e, d                                       ; $4453: $5a
    dec hl                                        ; $4454: $2b
    dec e                                         ; $4455: $1d
    sbc l                                         ; $4456: $9d
    dec de                                        ; $4457: $1b
    ld d, e                                       ; $4458: $53
    inc de                                        ; $4459: $13
    rst $20                                       ; $445a: $e7
    ld b, a                                       ; $445b: $47
    xor d                                         ; $445c: $aa
    adc e                                         ; $445d: $8b
    cp d                                          ; $445e: $ba
    ld d, d                                       ; $445f: $52
    db $10                                        ; $4460: $10
    ld [hl], l                                    ; $4461: $75
    ld a, c                                       ; $4462: $79
    ld [de], a                                    ; $4463: $12
    sub [hl]                                      ; $4464: $96
    add d                                         ; $4465: $82
    ld l, d                                       ; $4466: $6a
    ld sp, $a144                                  ; $4467: $31 $44 $a1
    sbc h                                         ; $446a: $9c
    add d                                         ; $446b: $82
    dec a                                         ; $446c: $3d
    ld c, a                                       ; $446d: $4f
    xor b                                         ; $446e: $a8
    ld b, h                                       ; $446f: $44
    reti                                          ; $4470: $d9


    ld l, e                                       ; $4471: $6b
    db $d3                                        ; $4472: $d3
    xor a                                         ; $4473: $af
    cp [hl]                                       ; $4474: $be
    ld a, [hl]                                    ; $4475: $7e
    ld a, a                                       ; $4476: $7f
    call $ffb4                                    ; $4477: $cd $b4 $ff
    db $db                                        ; $447a: $db
    dec sp                                        ; $447b: $3b
    inc b                                         ; $447c: $04
    ld [c], a                                     ; $447d: $e2
    ld l, $85                                     ; $447e: $2e $85
    ccf                                           ; $4480: $3f
    ld e, a                                       ; $4481: $5f
    call c, Call_043_7e6c                         ; $4482: $dc $6c $7e
    ld d, c                                       ; $4485: $51
    ld d, e                                       ; $4486: $53
    inc sp                                        ; $4487: $33
    xor l                                         ; $4488: $ad
    adc d                                         ; $4489: $8a
    cp d                                          ; $448a: $ba
    xor a                                         ; $448b: $af
    ld h, $ea                                     ; $448c: $26 $ea
    ld d, e                                       ; $448e: $53
    ei                                            ; $448f: $fb
    dec [hl]                                      ; $4490: $35
    dec sp                                        ; $4491: $3b
    push de                                       ; $4492: $d5
    xor a                                         ; $4493: $af
    or l                                          ; $4494: $b5
    xor e                                         ; $4495: $ab
    xor d                                         ; $4496: $aa
    rst $28                                       ; $4497: $ef
    ei                                            ; $4498: $fb
    dec d                                         ; $4499: $15
    xor l                                         ; $449a: $ad
    pop bc                                        ; $449b: $c1
    xor a                                         ; $449c: $af
    rlc d                                         ; $449d: $cb $02
    adc e                                         ; $449f: $8b
    ld e, l                                       ; $44a0: $5d
    ld e, c                                       ; $44a1: $59
    ld b, [hl]                                    ; $44a2: $46
    inc d                                         ; $44a3: $14
    inc c                                         ; $44a4: $0c
    ld sp, hl                                     ; $44a5: $f9
    cp l                                          ; $44a6: $bd
    ccf                                           ; $44a7: $3f
    ld c, h                                       ; $44a8: $4c
    ccf                                           ; $44a9: $3f
    ld l, d                                       ; $44aa: $6a
    xor d                                         ; $44ab: $aa
    rla                                           ; $44ac: $17
    push af                                       ; $44ad: $f5
    cp d                                          ; $44ae: $ba
    db $fc                                        ; $44af: $fc
    halt                                          ; $44b0: $76
    ld d, h                                       ; $44b1: $54
    ld l, $0a                                     ; $44b2: $2e $0a
    jp c, $9cbe                                   ; $44b4: $da $be $9c

    inc d                                         ; $44b7: $14
    ld l, b                                       ; $44b8: $68
    ld a, [c]                                     ; $44b9: $f2
    jp nz, $ff17                                  ; $44ba: $c2 $17 $ff

    adc e                                         ; $44bd: $8b
    ld c, h                                       ; $44be: $4c
    or $8b                                        ; $44bf: $f6 $8b

jr_043_44c1:
    cp e                                          ; $44c1: $bb
    rst $20                                       ; $44c2: $e7
    adc c                                         ; $44c3: $89
    add d                                         ; $44c4: $82
    or [hl]                                       ; $44c5: $b6
    cpl                                           ; $44c6: $2f
    daa                                           ; $44c7: $27
    xor $85                                       ; $44c8: $ee $85
    ld d, c                                       ; $44ca: $51
    xor [hl]                                      ; $44cb: $ae
    cp d                                          ; $44cc: $ba
    inc l                                         ; $44cd: $2c
    or b                                          ; $44ce: $b0
    inc l                                         ; $44cf: $2c
    ld [hl], $0c                                  ; $44d0: $36 $0c
    ld c, l                                       ; $44d2: $4d
    add e                                         ; $44d3: $83
    ld hl, $53fb                                  ; $44d4: $21 $fb $53
    rst $30                                       ; $44d7: $f7
    ret nz                                        ; $44d8: $c0

    or $2d                                        ; $44d9: $f6 $2d
    ld h, [hl]                                    ; $44db: $66
    ld a, a                                       ; $44dc: $7f
    ld d, $1b                                     ; $44dd: $16 $1b
    cpl                                           ; $44df: $2f
    ld c, d                                       ; $44e0: $4a
    add hl, de                                    ; $44e1: $19
    ld b, e                                       ; $44e2: $43
    add hl, hl                                    ; $44e3: $29
    sbc a                                         ; $44e4: $9f
    or $5d                                        ; $44e5: $f6 $5d
    ld e, e                                       ; $44e7: $5b
    or $72                                        ; $44e8: $f6 $72
    call z, $dcba                                 ; $44ea: $cc $ba $dc
    adc $62                                       ; $44ed: $ce $62
    db $e3                                        ; $44ef: $e3
    ld b, l                                       ; $44f0: $45

Jump_043_44f1:
    add hl, hl                                    ; $44f1: $29
    ld h, e                                       ; $44f2: $63
    jp hl                                         ; $44f3: $e9


    db $f4                                        ; $44f4: $f4
    ld hl, sp-$7a                                 ; $44f5: $f8 $86
    ld d, $5d                                     ; $44f7: $16 $5d
    or $67                                        ; $44f9: $f6 $67
    or c                                          ; $44fb: $b1
    pop af                                        ; $44fc: $f1
    and d                                         ; $44fd: $a2
    sub h                                         ; $44fe: $94
    ld sp, $f294                                  ; $44ff: $31 $94 $f2
    pop af                                        ; $4502: $f1
    ld e, l                                       ; $4503: $5d
    db $ec                                        ; $4504: $ec
    jr jr_043_44c1                                ; $4505: $18 $ba

    call c, Call_043_62ce                         ; $4507: $dc $ce $62
    db $e3                                        ; $450a: $e3
    ld b, l                                       ; $450b: $45
    add hl, hl                                    ; $450c: $29
    ld h, e                                       ; $450d: $63
    jp hl                                         ; $450e: $e9


    add sp, $17                                   ; $450f: $e8 $17
    ld e, $0b                                     ; $4511: $1e $0b
    ld [hl], d                                    ; $4513: $72
    dec sp                                        ; $4514: $3b
    adc e                                         ; $4515: $8b
    adc l                                         ; $4516: $8d
    rla                                           ; $4517: $17
    and l                                         ; $4518: $a5
    adc h                                         ; $4519: $8c
    and l                                         ; $451a: $a5
    xor $f1                                       ; $451b: $ee $f1
    ld c, b                                       ; $451d: $48
    cp a                                          ; $451e: $bf
    ld [bc], a                                    ; $451f: $02
    ld [hl], l                                    ; $4520: $75
    adc a                                         ; $4521: $8f
    ld b, a                                       ; $4522: $47
    ld l, d                                       ; $4523: $6a
    xor l                                         ; $4524: $ad
    ld [hl], l                                    ; $4525: $75
    adc a                                         ; $4526: $8f
    ld b, a                                       ; $4527: $47
    ld [c], a                                     ; $4528: $e2
    rst $38                                       ; $4529: $ff
    xor b                                         ; $452a: $a8
    rst $20                                       ; $452b: $e7
    add hl, bc                                    ; $452c: $09
    sub l                                         ; $452d: $95
    ld c, a                                       ; $452e: $4f
    push af                                       ; $452f: $f5
    ld [hl-], a                                   ; $4530: $32
    ld sp, hl                                     ; $4531: $f9
    inc l                                         ; $4532: $2c
    ld [hl], $0c                                  ; $4533: $36 $0c
    ld c, l                                       ; $4535: $4d
    add e                                         ; $4536: $83
    ld hl, $53fb                                  ; $4537: $21 $fb $53
    rst $30                                       ; $453a: $f7
    ret nz                                        ; $453b: $c0

    or $ba                                        ; $453c: $f6 $ba
    cp h                                          ; $453e: $bc
    jr c, jr_043_4580                             ; $453f: $38 $3f

    ld d, d                                       ; $4541: $52
    db $10                                        ; $4542: $10
    ld [hl], d                                    ; $4543: $72
    ld l, $e5                                     ; $4544: $2e $e5
    ret nz                                        ; $4546: $c0

    adc b                                         ; $4547: $88
    dec de                                        ; $4548: $1b
    ld hl, $f84f                                  ; $4549: $21 $4f $f8
    ld [c], a                                     ; $454c: $e2
    db $fc                                        ; $454d: $fc
    ld c, b                                       ; $454e: $48
    pop hl                                        ; $454f: $e1
    ei                                            ; $4550: $fb
    jr c, @-$66                                   ; $4551: $38 $98

    ld a, e                                       ; $4553: $7b
    ld d, c                                       ; $4554: $51
    inc de                                        ; $4555: $13
    ld [hl], l                                    ; $4556: $75
    ld sp, $7faa                                  ; $4557: $31 $aa $7f
    db $db                                        ; $455a: $db
    rst $18                                       ; $455b: $df
    xor a                                         ; $455c: $af
    ld [hl], l                                    ; $455d: $75
    adc a                                         ; $455e: $8f
    ld b, a                                       ; $455f: $47
    ld [hl+], a                                   ; $4560: $22
    inc hl                                        ; $4561: $23
    ld e, c                                       ; $4562: $59
    add [hl]                                      ; $4563: $86
    xor l                                         ; $4564: $ad
    sbc [hl]                                      ; $4565: $9e
    cp h                                          ; $4566: $bc
    halt                                          ; $4567: $76
    add [hl]                                      ; $4568: $86
    ld a, b                                       ; $4569: $78
    ld c, a                                       ; $456a: $4f
    sbc h                                         ; $456b: $9c
    cp a                                          ; $456c: $bf
    sbc $c8                                       ; $456d: $de $c8
    ld c, b                                       ; $456f: $48
    sbc [hl]                                      ; $4570: $9e
    or h                                          ; $4571: $b4
    ld a, d                                       ; $4572: $7a
    ld [hl], d                                    ; $4573: $72
    push de                                       ; $4574: $d5
    ld a, [c]                                     ; $4575: $f2
    or $3c                                        ; $4576: $f6 $3c
    ld [hl], c                                    ; $4578: $71
    ld d, e                                       ; $4579: $53
    ld hl, $2e85                                  ; $457a: $21 $85 $2e
    or b                                          ; $457d: $b0
    scf                                           ; $457e: $37
    and h                                         ; $457f: $a4

jr_043_4580:
    ld c, l                                       ; $4580: $4d
    ld [$5ef5], a                                 ; $4581: $ea $f5 $5e
    cp a                                          ; $4584: $bf
    ld [bc], a                                    ; $4585: $02
    sbc [hl]                                      ; $4586: $9e
    ld d, e                                       ; $4587: $53
    ld hl, $5fd5                                  ; $4588: $21 $d5 $5f
    cp h                                          ; $458b: $bc
    rra                                           ; $458c: $1f
    scf                                           ; $458d: $37
    and l                                         ; $458e: $a5
    cp [hl]                                       ; $458f: $be
    cp b                                          ; $4590: $b8
    rst $18                                       ; $4591: $df
    ld l, d                                       ; $4592: $6a
    ld [hl], h                                    ; $4593: $74
    pop af                                        ; $4594: $f1
    and c                                         ; $4595: $a1
    rla                                           ; $4596: $17
    dec b                                         ; $4597: $05
    ld h, c                                       ; $4598: $61
    sbc e                                         ; $4599: $9b
    ld e, d                                       ; $459a: $5a
    dec hl                                        ; $459b: $2b
    or l                                          ; $459c: $b5
    ld e, a                                       ; $459d: $5f
    or e                                          ; $459e: $b3
    ld d, e                                       ; $459f: $53
    ld a, l                                       ; $45a0: $7d
    rst $18                                       ; $45a1: $df
    rlca                                          ; $45a2: $07
    pop af                                        ; $45a3: $f1
    and c                                         ; $45a4: $a1
    ret c                                         ; $45a5: $d8

    ld a, e                                       ; $45a6: $7b
    ld [c], a                                     ; $45a7: $e2
    and [hl]                                      ; $45a8: $a6
    ld a, b                                       ; $45a9: $78
    call nc, $b5a8                                ; $45aa: $d4 $a8 $b5
    ld [bc], a                                    ; $45ad: $02
    dec e                                         ; $45ae: $1d
    ld d, d                                       ; $45af: $52
    db $ec                                        ; $45b0: $ec
    dec a                                         ; $45b1: $3d
    ld a, l                                       ; $45b2: $7d
    rst $18                                       ; $45b3: $df
    rlca                                          ; $45b4: $07
    cp $aa                                        ; $45b5: $fe $aa
    rst $28                                       ; $45b7: $ef
    ei                                            ; $45b8: $fb
    dec d                                         ; $45b9: $15
    dec l                                         ; $45ba: $2d
    add a                                         ; $45bb: $87
    ld c, d                                       ; $45bc: $4a
    add sp, -$70                                  ; $45bd: $e8 $90
    inc de                                        ; $45bf: $13
    ld [hl], l                                    ; $45c0: $75
    ld d, c                                       ; $45c1: $51
    or $da                                        ; $45c2: $f6 $da
    call nc, $eb4c                                ; $45c4: $d4 $4c $eb
    ld b, e                                       ; $45c7: $43
    ld [hl+], a                                   ; $45c8: $22
    db $db                                        ; $45c9: $db
    jp $97ff                                      ; $45ca: $c3 $ff $97


    push bc                                       ; $45cd: $c5
    ld d, b                                       ; $45ce: $50
    and [hl]                                      ; $45cf: $a6
    sub $0a                                       ; $45d0: $d6 $0a
    db $ed                                        ; $45d2: $ed
    ld a, c                                       ; $45d3: $79
    ld hl, sp+$27                                 ; $45d4: $f8 $27
    db $e4                                        ; $45d6: $e4
    add hl, bc                                    ; $45d7: $09
    ld c, a                                       ; $45d8: $4f
    ld a, $54                                     ; $45d9: $3e $54
    ld h, $85                                     ; $45db: $26 $85
    db $ed                                        ; $45dd: $ed
    push hl                                       ; $45de: $e5

jr_043_45df:
    ld h, b                                       ; $45df: $60
    and e                                         ; $45e0: $a3
    adc e                                         ; $45e1: $8b
    di                                            ; $45e2: $f3
    inc hl                                        ; $45e3: $23
    rr e                                          ; $45e4: $cb $1b
    ret z                                         ; $45e6: $c8

    ld c, a                                       ; $45e7: $4f
    dec [hl]                                      ; $45e8: $35
    sbc e                                         ; $45e9: $9b
    daa                                           ; $45ea: $27
    ld l, [hl]                                    ; $45eb: $6e
    add h                                         ; $45ec: $84
    ld hl, $513c                                  ; $45ed: $21 $3c $51
    rla                                           ; $45f0: $17
    ld [hl], l                                    ; $45f1: $75
    push bc                                       ; $45f2: $c5
    ei                                            ; $45f3: $fb
    ld d, [hl]                                    ; $45f4: $56
    jr nz, jr_043_45df                            ; $45f5: $20 $e8

    ld d, e                                       ; $45f7: $53
    ld a, e                                       ; $45f8: $7b
    or d                                          ; $45f9: $b2
    pop bc                                        ; $45fa: $c1
    inc a                                         ; $45fb: $3c
    xor c                                         ; $45fc: $a9
    ld h, [hl]                                    ; $45fd: $66
    di                                            ; $45fe: $f3
    ld h, h                                       ; $45ff: $64
    add c                                         ; $4600: $81
    push hl                                       ; $4601: $e5
    xor d                                         ; $4602: $aa
    push hl                                       ; $4603: $e5
    db $ed                                        ; $4604: $ed
    dec c                                         ; $4605: $0d
    ld [hl], c                                    ; $4606: $71
    ld d, e                                       ; $4607: $53
    ld hl, $37bf                                  ; $4608: $21 $bf $37
    ret z                                         ; $460b: $c8

    or a                                          ; $460c: $b7
    dec a                                         ; $460d: $3d
    ld a, l                                       ; $460e: $7d
    ld e, d                                       ; $460f: $5a
    ld c, $95                                     ; $4610: $0e $95
    or h                                          ; $4612: $b4
    ld a, $56                                     ; $4613: $3e $56
    add $a8                                       ; $4615: $c6 $a8
    ld [hl], $65                                  ; $4617: $36 $65
    and d                                         ; $4619: $a2
    ld l, $75                                     ; $461a: $2e $75
    add $48                                       ; $461c: $c6 $48
    ld l, b                                       ; $461e: $68
    rst $30                                       ; $461f: $f7
    cp d                                          ; $4620: $ba
    ld d, b                                       ; $4621: $50
    ld sp, hl                                     ; $4622: $f9
    sub h                                         ; $4623: $94
    dec b                                         ; $4624: $05
    xor $90                                       ; $4625: $ee $90
    ld l, d                                       ; $4627: $6a
    ld [hl], $4f                                  ; $4628: $36 $4f
    db $ec                                        ; $462a: $ec
    db $ed                                        ; $462b: $ed
    ei                                            ; $462c: $fb
    dec d                                         ; $462d: $15
    db $ed                                        ; $462e: $ed
    ld a, c                                       ; $462f: $79
    ret nc                                        ; $4630: $d0

    ld hl, $e527                                  ; $4631: $21 $27 $e5
    ld d, d                                       ; $4634: $52
    ld hl, sp+$53                                 ; $4635: $f8 $53
    sbc h                                         ; $4637: $9c
    rst $38                                       ; $4638: $ff
    xor b                                         ; $4639: $a8
    add d                                         ; $463a: $82
    xor b                                         ; $463b: $a8
    xor c                                         ; $463c: $a9
    cp c                                          ; $463d: $b9
    ld [bc], a                                    ; $463e: $02
    or l                                          ; $463f: $b5
    daa                                           ; $4640: $27
    ld a, [bc]                                    ; $4641: $0a
    xor $ca                                       ; $4642: $ee $ca
    ld b, h                                       ; $4644: $44

Jump_043_4645:
    ld e, l                                       ; $4645: $5d
    sbc h                                         ; $4646: $9c
    rst $38                                       ; $4647: $ff
    cp [hl]                                       ; $4648: $be
    ld a, d                                       ; $4649: $7a
    db $db                                        ; $464a: $db
    sub e                                         ; $464b: $93
    ld a, [hl-]                                   ; $464c: $3a
    ld h, e                                       ; $464d: $63
    ld a, d                                       ; $464e: $7a
    jr jr_043_46a0                                ; $464f: $18 $4f

    cp a                                          ; $4651: $bf
    ld [bc], a                                    ; $4652: $02
    ld [hl], l                                    ; $4653: $75
    add $f4                                       ; $4654: $c6 $f4
    jr nc, @-$60                                  ; $4656: $30 $9e

    ld e, d                                       ; $4658: $5a
    dec hl                                        ; $4659: $2b
    xor l                                         ; $465a: $ad
    adc a                                         ; $465b: $8f
    ld e, [hl]                                    ; $465c: $5e
    ld a, a                                       ; $465d: $7f
    ld e, a                                       ; $465e: $5f
    ld c, l                                       ; $465f: $4d
    ld d, b                                       ; $4660: $50
    ld a, [bc]                                    ; $4661: $0a
    inc c                                         ; $4662: $0c
    ld e, c                                       ; $4663: $59
    adc h                                         ; $4664: $8c
    ld a, [hl+]                                   ; $4665: $2a
    ld [$2e9f], sp                                ; $4666: $08 $9f $2e
    or l                                          ; $4669: $b5
    ld e, a                                       ; $466a: $5f
    or e                                          ; $466b: $b3
    ld d, e                                       ; $466c: $53
    ld a, l                                       ; $466d: $7d
    ld a, [hl-]                                   ; $466e: $3a

Jump_043_466f:
    ld b, [hl]                                    ; $466f: $46
    dec [hl]                                      ; $4670: $35
    ld [hl], c                                    ; $4671: $71
    ld a, [hl]                                    ; $4672: $7e
    and h                                         ; $4673: $a4
    db $fd                                        ; $4674: $fd
    rst $18                                       ; $4675: $df
    sbc $21                                       ; $4676: $de $21
    sub b                                         ; $4678: $90
    ld a, [c]                                     ; $4679: $f2
    bit 6, d                                      ; $467a: $cb $72
    rra                                           ; $467c: $1f
    rra                                           ; $467d: $1f
    adc d                                         ; $467e: $8a
    cp l                                          ; $467f: $bd
    daa                                           ; $4680: $27
    adc $8f                                       ; $4681: $ce $8f
    inc d                                         ; $4683: $14
    cp $8b                                        ; $4684: $fe $8b
    rst $30                                       ; $4686: $f7
    dec e                                         ; $4687: $1d

Jump_043_4688:
    ld b, h                                       ; $4688: $44
    ld c, l                                       ; $4689: $4d
    cp a                                          ; $468a: $bf

Jump_043_468b:
    ld [bc], a                                    ; $468b: $02
    or l                                          ; $468c: $b5
    ccf                                           ; $468d: $3f
    cp a                                          ; $468e: $bf
    inc l                                         ; $468f: $2c
    sub b                                         ; $4690: $90
    adc a                                         ; $4691: $8f
    add e                                         ; $4692: $83
    cp c                                          ; $4693: $b9
    rst $20                                       ; $4694: $e7

jr_043_4695:
    adc c                                         ; $4695: $89
    cp d                                          ; $4696: $ba
    ld d, h                                       ; $4697: $54
    ld h, e                                       ; $4698: $63
    ld a, [bc]                                    ; $4699: $0a
    ld d, [hl]                                    ; $469a: $56
    ld e, l                                       ; $469b: $5d
    xor b                                         ; $469c: $a8
    ld c, h                                       ; $469d: $4c
    ld a, [bc]                                    ; $469e: $0a
    rra                                           ; $469f: $1f

jr_043_46a0:
    ld sp, hl                                     ; $46a0: $f9
    dec de                                        ; $46a1: $1b
    ld a, l                                       ; $46a2: $7d
    jp c, Jump_043_59de                           ; $46a3: $da $de $59

    adc $b9                                       ; $46a6: $ce $b9
    reti                                          ; $46a8: $d9


    daa                                           ; $46a9: $27
    inc de                                        ; $46aa: $13
    dec b                                         ; $46ab: $05
    ld [de], a                                    ; $46ac: $12
    ld b, c                                       ; $46ad: $41
    add hl, hl                                    ; $46ae: $29
    jr nc, jr_043_4695                            ; $46af: $30 $e4

    cp l                                          ; $46b1: $bd
    sbc $af                                       ; $46b2: $de $af
    sbc [hl]                                      ; $46b4: $9e
    and a                                         ; $46b5: $a7
    ld e, a                                       ; $46b6: $5f
    ld bc, $fe9e                                  ; $46b7: $01 $9e $fe
    dec hl                                        ; $46ba: $2b
    and l                                         ; $46bb: $a5
    sbc [hl]                                      ; $46bc: $9e
    cp b                                          ; $46bd: $b8
    add hl, hl                                    ; $46be: $29
    rra                                           ; $46bf: $1f
    ld [hl], d                                    ; $46c0: $72
    call z, $d7a0                                 ; $46c1: $cc $a0 $d7
    inc hl                                        ; $46c4: $23
    push de                                       ; $46c5: $d5
    adc e                                         ; $46c6: $8b
    halt                                          ; $46c7: $76
    ld l, a                                       ; $46c8: $6f
    xor b                                         ; $46c9: $a8
    sub l                                         ; $46ca: $95
    ld c, $e9                                     ; $46cb: $0e $e9
    ld l, a                                       ; $46cd: $6f
    rst $20                                       ; $46ce: $e7
    ld b, a                                       ; $46cf: $47
    ld a, h                                       ; $46d0: $7c
    ld h, c                                       ; $46d1: $61
    dec bc                                        ; $46d2: $0b
    ld c, b                                       ; $46d3: $48
    sbc b                                         ; $46d4: $98
    add d                                         ; $46d5: $82
    ld l, $d5                                     ; $46d6: $2e $d5
    push hl                                       ; $46d8: $e5
    xor c                                         ; $46d9: $a9
    ld b, [hl]                                    ; $46da: $46
    ld l, l                                       ; $46db: $6d
    ld a, [$7515]                                 ; $46dc: $fa $15 $75
    ld b, [hl]                                    ; $46df: $46
    rla                                           ; $46e0: $17

jr_043_46e1:
    ld l, l                                       ; $46e1: $6d
    ld e, a                                       ; $46e2: $5f
    cp h                                          ; $46e3: $bc
    cpl                                           ; $46e4: $2f
    ld [hl-], a                                   ; $46e5: $32
    ld hl, $6721                                  ; $46e6: $21 $21 $67
    ret z                                         ; $46e9: $c8

    db $ed                                        ; $46ea: $ed
    ld d, h                                       ; $46eb: $54
    cp a                                          ; $46ec: $bf
    and e                                         ; $46ed: $a3
    ld l, $85                                     ; $46ee: $2e $85
    and a                                         ; $46f0: $a7
    ld a, d                                       ; $46f1: $7a

jr_043_46f2:
    scf                                           ; $46f2: $37
    ld a, l                                       ; $46f3: $7d
    ld a, h                                       ; $46f4: $7c
    pop hl                                        ; $46f5: $e1
    ld b, [hl]                                    ; $46f6: $46
    call nc, $b2e4                                ; $46f7: $d4 $e4 $b2
    ld c, a                                       ; $46fa: $4f
    ld l, a                                       ; $46fb: $6f
    rla                                           ; $46fc: $17
    rst $20                                       ; $46fd: $e7
    ld b, a                                       ; $46fe: $47
    db $fc                                        ; $46ff: $fc
    sub e                                         ; $4700: $93
    dec c                                         ; $4701: $0d
    and $d1                                       ; $4702: $e6 $d1
    ld b, l                                       ; $4704: $45
    db $db                                        ; $4705: $db
    sub a                                         ; $4706: $97
    push hl                                       ; $4707: $e5
    sbc $b9                                       ; $4708: $de $b9
    dec de                                        ; $470a: $1b
    sbc c                                         ; $470b: $99
    ld l, h                                       ; $470c: $6c
    ld b, h                                       ; $470d: $44
    ei                                            ; $470e: $fb
    cp l                                          ; $470f: $bd
    ld c, a                                       ; $4710: $4f
    ret nc                                        ; $4711: $d0

    and a                                         ; $4712: $a7
    ld l, $a4                                     ; $4713: $2e $a4
    ld e, h                                       ; $4715: $5c
    call nc, $8ec5                                ; $4716: $d4 $c5 $8e
    ld d, $77                                     ; $4719: $16 $77
    add [hl]                                      ; $471b: $86
    ld a, h                                       ; $471c: $7c
    ld d, $1b                                     ; $471d: $16 $1b
    ld b, a                                       ; $471f: $47
    db $ed                                        ; $4720: $ed
    xor l                                         ; $4721: $ad
    add d                                         ; $4722: $82
    jr nz, jr_043_46f2                            ; $4723: $20 $cd

    call nc, $ab4a                                ; $4725: $d4 $4a $ab
    ld hl, $3367                                  ; $4728: $21 $67 $33
    ld [c], a                                     ; $472b: $e2
    ld a, [hl]                                    ; $472c: $7e
    add hl, sp                                    ; $472d: $39
    cp $38                                        ; $472e: $fe $38
    ccf                                           ; $4730: $3f
    ld d, d                                       ; $4731: $52
    ld l, $af                                     ; $4732: $2e $af
    ld l, c                                       ; $4734: $69
    ld h, a                                       ; $4735: $67
    daa                                           ; $4736: $27
    sub e                                         ; $4737: $93
    dec b                                         ; $4738: $05
    sub [hl]                                      ; $4739: $96
    db $db                                        ; $473a: $db
    ld e, c                                       ; $473b: $59
    sbc $dc                                       ; $473c: $de $dc
    db $f4                                        ; $473e: $f4
    dec hl                                        ; $473f: $2b
    sbc [hl]                                      ; $4740: $9e
    jr nc, jr_043_46e1                            ; $4741: $30 $9e

    ld a, $9e                                     ; $4743: $3e $9e
    ld d, e                                       ; $4745: $53
    ld a, $ee                                     ; $4746: $3e $ee
    ld b, d                                       ; $4748: $42
    jp nc, $c8d9                                  ; $4749: $d2 $d9 $c8

Call_043_474c:
    rst $00                                       ; $474c: $c7
    dec a                                         ; $474d: $3d
    inc sp                                        ; $474e: $33
    or l                                          ; $474f: $b5
    scf                                           ; $4750: $37
    call nz, $fe87                                ; $4751: $c4 $87 $fe
    halt                                          ; $4754: $76
    ld a, [hl]                                    ; $4755: $7e
    ld b, h                                       ; $4756: $44
    ei                                            ; $4757: $fb
    cp l                                          ; $4758: $bd
    ld c, a                                       ; $4759: $4f
    cp [hl]                                       ; $475a: $be
    sub $0a                                       ; $475b: $d6 $0a
    ld l, l                                       ; $475d: $6d
    jr c, jr_043_4797                             ; $475e: $38 $37

    reti                                          ; $4760: $d9


    adc b                                         ; $4761: $88
    or $7b                                        ; $4762: $f6 $7b
    sbc a                                         ; $4764: $9f
    ld b, b                                       ; $4765: $40
    sub a                                         ; $4766: $97
    jp c, $d9af                                   ; $4767: $da $af $d9

    xor c                                         ; $476a: $a9
    ld a, [hl]                                    ; $476b: $7e
    dec b                                         ; $476c: $05
    ld l, l                                       ; $476d: $6d
    reti                                          ; $476e: $d9


    inc de                                        ; $476f: $13
    rrca                                          ; $4770: $0f
    cp d                                          ; $4771: $ba
    call nc, $337e                                ; $4772: $d4 $7e $33
    ld [bc], a                                    ; $4775: $02
    ld a, l                                       ; $4776: $7d
    jp c, Jump_043_59de                           ; $4777: $da $de $59

    adc $b9                                       ; $477a: $ce $b9
    reti                                          ; $477c: $d9


    sub e                                         ; $477d: $93
    ld a, [hl-]                                   ; $477e: $3a
    ld h, e                                       ; $477f: $63
    ld a, d                                       ; $4780: $7a
    jr jr_043_47d2                                ; $4781: $18 $4f

    ld a, [bc]                                    ; $4783: $0a
    ccf                                           ; $4784: $3f
    ld sp, hl                                     ; $4785: $f9
    ld e, c                                       ; $4786: $59
    ld h, b                                       ; $4787: $60
    xor c                                         ; $4788: $a9
    add $ce                                       ; $4789: $c6 $ce
    db $10                                        ; $478b: $10
    ld [hl], l                                    ; $478c: $75
    pop af                                        ; $478d: $f1
    ld a, [hl]                                    ; $478e: $7e
    add l                                         ; $478f: $85
    ld a, [hl]                                    ; $4790: $7e
    dec b                                         ; $4791: $05
    or l                                          ; $4792: $b5
    ld e, a                                       ; $4793: $5f
    or e                                          ; $4794: $b3
    ld d, e                                       ; $4795: $53
    cp d                                          ; $4796: $ba

jr_043_4797:
    inc d                                         ; $4797: $14
    cp $38                                        ; $4798: $fe $38
    ld b, e                                       ; $479a: $43
    ld [hl], c                                    ; $479b: $71
    db $10                                        ; $479c: $10
    dec [hl]                                      ; $479d: $35
    ld sp, hl                                     ; $479e: $f9
    sub b                                         ; $479f: $90
    ld d, a                                       ; $47a0: $57
    ld hl, sp-$5d                                 ; $47a1: $f8 $a3
    inc a                                         ; $47a3: $3c
    add $39                                       ; $47a4: $c6 $39
    rst $38                                       ; $47a6: $ff
    ld c, l                                       ; $47a7: $4d
    call $feb4                                    ; $47a8: $cd $b4 $fe
    pop af                                        ; $47ab: $f1
    and c                                         ; $47ac: $a1
    sub a                                         ; $47ad: $97
    rrca                                          ; $47ae: $0f
    sub l                                         ; $47af: $95
    ld c, a                                       ; $47b0: $4f
    ld bc, $55f3                                  ; $47b1: $01 $f3 $55
    cpl                                           ; $47b4: $2f
    sbc a                                         ; $47b5: $9f
    ld a, [c]                                     ; $47b6: $f2
    ld d, [hl]                                    ; $47b7: $56
    ld c, a                                       ; $47b8: $4f
    ld [hl], $15                                  ; $47b9: $36 $15
    ld l, l                                       ; $47bb: $6d
    ld [c], a                                     ; $47bc: $e2
    ld b, e                                       ; $47bd: $43
    ld e, a                                       ; $47be: $5f
    ld a, b                                       ; $47bf: $78
    or d                                          ; $47c0: $b2
    ccf                                           ; $47c1: $3f
    ld c, h                                       ; $47c2: $4c
    ccf                                           ; $47c3: $3f
    xor $cb                                       ; $47c4: $ee $cb
    rst $30                                       ; $47c6: $f7
    ld l, c                                       ; $47c7: $69
    rst $38                                       ; $47c8: $ff
    or a                                          ; $47c9: $b7
    ld [hl], a                                    ; $47ca: $77
    ld [$1964], sp                                ; $47cb: $08 $64 $19
    ld [hl], $e8                                  ; $47ce: $36 $e8
    push af                                       ; $47d0: $f5
    ld c, b                                       ; $47d1: $48

jr_043_47d2:
    ld e, c                                       ; $47d2: $59
    adc $eb                                       ; $47d3: $ce $eb
    add l                                         ; $47d5: $85
    cp l                                          ; $47d6: $bd
    ld hl, $994c                                  ; $47d7: $21 $4c $99
    daa                                           ; $47da: $27
    daa                                           ; $47db: $27
    pop af                                        ; $47dc: $f1
    and c                                         ; $47dd: $a1
    cp a                                          ; $47de: $bf
    bit 7, l                                      ; $47df: $cb $7d
    cp c                                          ; $47e1: $b9
    ld d, h                                       ; $47e2: $54
    ld d, e                                       ; $47e3: $53
    ld b, c                                       ; $47e4: $41
    ld a, b                                       ; $47e5: $78
    ld a, [$ed15]                                 ; $47e6: $fa $15 $ed
    ld c, l                                       ; $47e9: $4d
    jp z, $f9c4                                   ; $47ea: $ca $c4 $f9

    ld de, $c919                                  ; $47ed: $11 $19 $c9
    ld [hl-], a                                   ; $47f0: $32
    ld l, h                                       ; $47f1: $6c
    push af                                       ; $47f2: $f5
    add a                                         ; $47f3: $87
    ld hl, $3db0                                  ; $47f4: $21 $b0 $3d
    ld e, c                                       ; $47f7: $59
    ld h, b                                       ; $47f8: $60
    add hl, hl                                    ; $47f9: $29
    xor b                                         ; $47fa: $a8
    ld d, $83                                     ; $47fb: $16 $83
    ld l, $d5                                     ; $47fd: $2e $d5
    ld b, a                                       ; $47ff: $47
    ld b, [hl]                                    ; $4800: $46
    or d                                          ; $4801: $b2
    ld c, h                                       ; $4802: $4c
    add hl, hl                                    ; $4803: $29
    sub e                                         ; $4804: $93
    ld [$47dc], a                                 ; $4805: $ea $dc $47
    ld c, a                                       ; $4808: $4f
    sbc c                                         ; $4809: $99
    rst $18                                       ; $480a: $df
    or $84                                        ; $480b: $f6 $84
    cp h                                          ; $480d: $bc
    rst $10                                       ; $480e: $d7
    ld b, l                                       ; $480f: $45
    and [hl]                                      ; $4810: $a6
    sub $0a                                       ; $4811: $d6 $0a
    db $ed                                        ; $4813: $ed
    rst $18                                       ; $4814: $df
    call nz, $cf6b                                ; $4815: $c4 $6b $cf
    ret c                                         ; $4818: $d8

    ld a, e                                       ; $4819: $7b
    ld [c], a                                     ; $481a: $e2
    jp hl                                         ; $481b: $e9


    ld a, a                                       ; $481c: $7f
    db $db                                        ; $481d: $db
    add a                                         ; $481e: $87
    cp b                                          ; $481f: $b8
    ld de, $1d45                                  ; $4820: $11 $45 $1d
    and d                                         ; $4823: $a2
    or b                                          ; $4824: $b0
    scf                                           ; $4825: $37
    ld h, d                                       ; $4826: $62
    rst $20                                       ; $4827: $e7
    ld h, b                                       ; $4828: $60
    adc $8f                                       ; $4829: $ce $8f
    inc d                                         ; $482b: $14
    ld a, d                                       ; $482c: $7a
    ld d, c                                       ; $482d: $51
    or $9a                                        ; $482e: $f6 $9a
    rst $38                                       ; $4830: $ff
    ld [hl], d                                    ; $4831: $72
    sub d                                         ; $4832: $92
    adc [hl]                                      ; $4833: $8e
    and [hl]                                      ; $4834: $a6
    ld a, d                                       ; $4835: $7a
    cp c                                          ; $4836: $b9
    rst $28                                       ; $4837: $ef
    db $d3                                        ; $4838: $d3
    and $58                                       ; $4839: $e6 $58
    ld b, c                                       ; $483b: $41
    sub [hl]                                      ; $483c: $96
    ld h, c                                       ; $483d: $61
    add e                                         ; $483e: $83
    ld e, [hl]                                    ; $483f: $5e
    adc a                                         ; $4840: $8f
    or b                                          ; $4841: $b0
    dec c                                         ; $4842: $0d
    ld sp, hl                                     ; $4843: $f9
    add [hl]                                      ; $4844: $86
    ld d, b                                       ; $4845: $50
    ret                                           ; $4846: $c9


    ld [hl-], a                                   ; $4847: $32
    add l                                         ; $4848: $85
    daa                                           ; $4849: $27
    xor a                                         ; $484a: $af
    sbc [hl]                                      ; $484b: $9e
    ld a, c                                       ; $484c: $79
    ld a, [c]                                     ; $484d: $f2
    reti                                          ; $484e: $d9


    db $f4                                        ; $484f: $f4
    ld a, [$ed15]                                 ; $4850: $fa $15 $ed
    cp a                                          ; $4853: $bf
    xor b                                         ; $4854: $a8
    ei                                            ; $4855: $fb
    ld l, d                                       ; $4856: $6a
    or h                                          ; $4857: $b4
    ld a, l                                       ; $4858: $7d
    ld l, c                                       ; $4859: $69
    ld b, e                                       ; $485a: $43
    sub c                                         ; $485b: $91
    and a                                         ; $485c: $a7
    ld hl, $246e                                  ; $485d: $21 $6e $24
    ld d, h                                       ; $4860: $54
    ld d, d                                       ; $4861: $52
    and c                                         ; $4862: $a1
    sub h                                         ; $4863: $94
    rst $10                                       ; $4864: $d7
    or h                                          ; $4865: $b4
    sbc e                                         ; $4866: $9b
    ld a, $9e                                     ; $4867: $3e $9e
    ld d, e                                       ; $4869: $53
    ld a, $82                                     ; $486a: $3e $82
    xor b                                         ; $486c: $a8
    ld [hl], e                                    ; $486d: $73
    and a                                         ; $486e: $a7
    ld c, e                                       ; $486f: $4b
    db $ed                                        ; $4870: $ed
    rst $10                                       ; $4871: $d7
    db $ec                                        ; $4872: $ec
    ld d, h                                       ; $4873: $54
    xor l                                         ; $4874: $ad
    dec d                                         ; $4875: $15
    xor l                                         ; $4876: $ad
    pop bc                                        ; $4877: $c1
    xor a                                         ; $4878: $af
    ld c, e                                       ; $4879: $4b
    and c                                         ; $487a: $a1
    swap d                                        ; $487b: $cb $32
    and d                                         ; $487d: $a2
    ld c, l                                       ; $487e: $4d
    sbc h                                         ; $487f: $9c
    rra                                           ; $4880: $1f
    add hl, hl                                    ; $4881: $29
    rst $30                                       ; $4882: $f7
    reti                                          ; $4883: $d9


    sbc a                                         ; $4884: $9f
    ld [c], a                                     ; $4885: $e2
    or b                                          ; $4886: $b0
    ld sp, hl                                     ; $4887: $f9
    ld d, e                                       ; $4888: $53
    sbc l                                         ; $4889: $9d
    or [hl]                                       ; $488a: $b6
    ld l, a                                       ; $488b: $6f
    inc c                                         ; $488c: $0c
    db $fd                                        ; $488d: $fd
    ld a, [bc]                                    ; $488e: $0a
    or l                                          ; $488f: $b5
    rst $38                                       ; $4890: $ff
    jp nz, $e436                                  ; $4891: $c2 $36 $e4

    di                                            ; $4894: $f3
    ld h, h                                       ; $4895: $64
    inc hl                                        ; $4896: $23
    call $fb44                                    ; $4897: $cd $44 $fb
    cp l                                          ; $489a: $bd
    ld c, a                                       ; $489b: $4f
    and b                                         ; $489c: $a0
    ld c, e                                       ; $489d: $4b
    db $ed                                        ; $489e: $ed
    scf                                           ; $489f: $37
    inc hl                                        ; $48a0: $23
    ld d, b                                       ; $48a1: $50
    ld l, e                                       ; $48a2: $6b
    dec b                                         ; $48a3: $05
    ld [hl], l                                    ; $48a4: $75
    ld b, [hl]                                    ; $48a5: $46
    ld a, [c]                                     ; $48a6: $f2
    ld [c], a                                     ; $48a7: $e2
    add $be                                       ; $48a8: $c6 $be
    ld e, a                                       ; $48aa: $5f
    ld bc, $c1ad                                  ; $48ab: $01 $ad $c1
    xor a                                         ; $48ae: $af
    ld c, e                                       ; $48af: $4b
    pop de                                        ; $48b0: $d1
    db $db                                        ; $48b1: $db
    ld l, c                                       ; $48b2: $69
    rst $08                                       ; $48b3: $cf
    ld d, a                                       ; $48b4: $57
    inc sp                                        ; $48b5: $33
    cp [hl]                                       ; $48b6: $be
    adc b                                         ; $48b7: $88
    adc h                                         ; $48b8: $8c
    call nz, $81ce                                ; $48b9: $c4 $ce $81
    add h                                         ; $48bc: $84
    push de                                       ; $48bd: $d5
    inc de                                        ; $48be: $13
    add l                                         ; $48bf: $85
    dec e                                         ; $48c0: $1d
    ld [hl], a                                    ; $48c1: $77
    ld a, [$49c9]                                 ; $48c2: $fa $c9 $49
    cp h                                          ; $48c5: $bc
    ld b, $e6                                     ; $48c6: $06 $e6
    rst $10                                       ; $48c8: $d7
    push bc                                       ; $48c9: $c5
    pop bc                                        ; $48ca: $c1
    sbc h                                         ; $48cb: $9c
    rra                                           ; $48cc: $1f
    ld d, [hl]                                    ; $48cd: $56
    ld c, a                                       ; $48ce: $4f
    call nc, Call_043_7aa5                        ; $48cf: $d4 $a5 $7a
    pop de                                        ; $48d2: $d1
    xor $ad                                       ; $48d3: $ee $ad
    ld e, h                                       ; $48d5: $5c
    ld a, [hl-]                                   ; $48d6: $3a
    ld a, [de]                                    ; $48d7: $1a
    xor c                                         ; $48d8: $a9
    cp c                                          ; $48d9: $b9
    ld [bc], a                                    ; $48da: $02
    ld l, l                                       ; $48db: $6d
    jr c, jr_043_4915                             ; $48dc: $38 $37

    ld a, h                                       ; $48de: $7c
    pop af                                        ; $48df: $f1
    and c                                         ; $48e0: $a1
    and a                                         ; $48e1: $a7
    ld c, e                                       ; $48e2: $4b
    db $ed                                        ; $48e3: $ed
    scf                                           ; $48e4: $37
    inc hl                                        ; $48e5: $23
    ret nc                                        ; $48e6: $d0

    and a                                         ; $48e7: $a7
    db $e3                                        ; $48e8: $e3
    ld c, e                                       ; $48e9: $4b
    pop hl                                        ; $48ea: $e1
    daa                                           ; $48eb: $27
    cp a                                          ; $48ec: $bf
    sbc d                                         ; $48ed: $9a
    ld a, h                                       ; $48ee: $7c
    ld e, c                                       ; $48ef: $59
    ret nz                                        ; $48f0: $c0

    db $fc                                        ; $48f1: $fc
    and d                                         ; $48f2: $a2
    and [hl]                                      ; $48f3: $a6
    ld e, a                                       ; $48f4: $5f
    ld bc, $6ebe                                  ; $48f5: $01 $be $6e
    xor d                                         ; $48f8: $aa
    ld a, [bc]                                    ; $48f9: $0a
    call z, $e713                                 ; $48fa: $cc $13 $e7
    ld b, a                                       ; $48fd: $47
    ld l, d                                       ; $48fe: $6a
    cp a                                          ; $48ff: $bf
    ld h, [hl]                                    ; $4900: $66
    and a                                         ; $4901: $a7
    ld d, d                                       ; $4902: $52
    ld a, [hl]                                    ; $4903: $7e
    or c                                          ; $4904: $b1
    ld a, d                                       ; $4905: $7a
    and d                                         ; $4906: $a2
    adc $dc                                       ; $4907: $ce $dc
    push bc                                       ; $4909: $c5
    add a                                         ; $490a: $87
    cp $76                                        ; $490b: $fe $76
    ld d, e                                       ; $490d: $53
    ld a, $ea                                     ; $490e: $3e $ea
    ld d, d                                       ; $4910: $52
    call $c9e6                                    ; $4911: $cd $e6 $c9
    add hl, bc                                    ; $4914: $09

jr_043_4915:
    jp $ca50                                      ; $4915: $c3 $50 $ca


    dec bc                                        ; $4918: $0b
    inc hl                                        ; $4919: $23
    add l                                         ; $491a: $85
    xor $fd                                       ; $491b: $ee $fd
    xor c                                         ; $491d: $a9
    ld a, e                                       ; $491e: $7b
    ld h, b                                       ; $491f: $60
    ei                                            ; $4920: $fb
    ld a, [hl]                                    ; $4921: $7e
    dec b                                         ; $4922: $05
    sbc [hl]                                      ; $4923: $9e
    ld d, e                                       ; $4924: $53
    ld a, $ee                                     ; $4925: $3e $ee
    ld [c], a                                     ; $4927: $e2
    db $fd                                        ; $4928: $fd
    adc e                                         ; $4929: $8b
    rrca                                          ; $492a: $0f
    dec a                                         ; $492b: $3d
    ld e, l                                       ; $492c: $5d
    jp c, $edff                                   ; $492d: $da $ff $ed

    dec e                                         ; $4930: $1d
    ld [bc], a                                    ; $4931: $02
    or l                                          ; $4932: $b5
    ld d, [hl]                                    ; $4933: $56
    cp [hl]                                       ; $4934: $be
    inc a                                         ; $4935: $3c
    or c                                          ; $4936: $b1
    ld [hl], a                                    ; $4937: $77
    ld l, [hl]                                    ; $4938: $6e
    or h                                          ; $4939: $b4
    ld a, l                                       ; $493a: $7d
    db $10                                        ; $493b: $10
    dec [hl]                                      ; $493c: $35
    ld d, c                                       ; $493d: $51
    cp b                                          ; $493e: $b8
    ld a, b                                       ; $493f: $78
    ld l, a                                       ; $4940: $6f
    db $ec                                        ; $4941: $ec
    or d                                          ; $4942: $b2
    ret nz                                        ; $4943: $c0

    ld d, d                                       ; $4944: $52
    ld a, [hl]                                    ; $4945: $7e
    ld d, e                                       ; $4946: $53
    ld a, [hl]                                    ; $4947: $7e
    ld b, e                                       ; $4948: $43
    xor b                                         ; $4949: $a8
    ld c, h                                       ; $494a: $4c
    ld a, [bc]                                    ; $494b: $0a
    ld d, e                                       ; $494c: $53
    dec b                                         ; $494d: $05
    ld h, c                                       ; $494e: $61
    call nz, $91f9                                ; $494f: $c4 $f9 $91
    push bc                                       ; $4952: $c5
    ld d, b                                       ; $4953: $50
    ld a, b                                       ; $4954: $78
    ld [c], a                                     ; $4955: $e2
    ld l, $af                                     ; $4956: $2e $af
    rst $10                                       ; $4958: $d7
    cp a                                          ; $4959: $bf
    xor b                                         ; $495a: $a8
    ld de, $3d58                                  ; $495b: $11 $58 $3d
    cp d                                          ; $495e: $ba
    sbc h                                         ; $495f: $9c
    sub h                                         ; $4960: $94
    ld b, e                                       ; $4961: $43
    add l                                         ; $4962: $85
    db $fc                                        ; $4963: $fc
    and l                                         ; $4964: $a5
    ret nc                                        ; $4965: $d0

    cp c                                          ; $4966: $b9
    ld a, h                                       ; $4967: $7c
    ld [hl], l                                    ; $4968: $75
    adc $0f                                       ; $4969: $ce $0f
    and $eb                                       ; $496b: $e6 $eb
    ld d, a                                       ; $496d: $57
    ld l, l                                       ; $496e: $6d
    pop de                                        ; $496f: $d1
    scf                                           ; $4970: $37
    push af                                       ; $4971: $f5
    inc c                                         ; $4972: $0c
    ld e, l                                       ; $4973: $5d
    jp c, $e450                                   ; $4974: $da $50 $e4

    ld l, c                                       ; $4977: $69
    ld c, b                                       ; $4978: $48
    adc l                                         ; $4979: $8d
    ldh a, [$98]                                  ; $497a: $f0 $98
    inc a                                         ; $497c: $3c
    ld a, a                                       ; $497d: $7f
    call $b515                                    ; $497e: $cd $15 $b5
    ccf                                           ; $4981: $3f
    ld d, h                                       ; $4982: $54
    ld d, d                                       ; $4983: $52
    and c                                         ; $4984: $a1
    sub h                                         ; $4985: $94
    rst $10                                       ; $4986: $d7
    or h                                          ; $4987: $b4
    sbc e                                         ; $4988: $9b
    xor b                                         ; $4989: $a8
    rst $08                                       ; $498a: $cf
    ld a, [c]                                     ; $498b: $f2
    add $88                                       ; $498c: $c6 $88
    cp d                                          ; $498e: $ba
    ld a, b                                       ; $498f: $78
    ld a, [$f6df]                                 ; $4990: $fa $df $f6
    and c                                         ; $4993: $a1
    ld c, a                                       ; $4994: $4f
    ld a, e                                       ; $4995: $7b
    ret nc                                        ; $4996: $d0

    or h                                          ; $4997: $b4
    db $db                                        ; $4998: $db
    and e                                         ; $4999: $a3
    ld c, e                                       ; $499a: $4b
    ld b, a                                       ; $499b: $47
    inc hl                                        ; $499c: $23
    db $fd                                        ; $499d: $fd
    ld a, [bc]                                    ; $499e: $0a
    ld e, $9e                                     ; $499f: $1e $9e
    ld l, a                                       ; $49a1: $6f
    sub e                                         ; $49a2: $93
    adc [hl]                                      ; $49a3: $8e
    ld b, [hl]                                    ; $49a4: $46
    ld [hl], h                                    ; $49a5: $74
    ld e, $2b                                     ; $49a6: $1e $2b
    ld e, $be                                     ; $49a8: $1e $be
    ld l, a                                       ; $49aa: $6f
    cp b                                          ; $49ab: $b8
    db $ec                                        ; $49ac: $ec
    inc bc                                        ; $49ad: $03
    ld c, a                                       ; $49ae: $4f
    call nc, Call_000_3165                        ; $49af: $d4 $65 $31
    adc b                                         ; $49b2: $88
    add d                                         ; $49b3: $82
    ld hl, $246e                                  ; $49b4: $21 $6e $24
    dec d                                         ; $49b7: $15
    ld [hl], d                                    ; $49b8: $72
    dec sp                                        ; $49b9: $3b
    jp z, Jump_000_1b5e                           ; $49ba: $ca $5e $1b

    ld e, l                                       ; $49bd: $5d
    xor d                                         ; $49be: $aa
    adc a                                         ; $49bf: $8f
    adc h                                         ; $49c0: $8c
    and h                                         ; $49c1: $a4
    cp h                                          ; $49c2: $bc
    push de                                       ; $49c3: $d5
    inc de                                        ; $49c4: $13
    rst $28                                       ; $49c5: $ef
    cp e                                          ; $49c6: $bb
    db $db                                        ; $49c7: $db

Call_043_49c8:
Jump_043_49c8:
    add sp, -$1d                                  ; $49c8: $e8 $e3
    ld l, c                                       ; $49ca: $69
    ld d, b                                       ; $49cb: $50
    inc de                                        ; $49cc: $13
    rst $20                                       ; $49cd: $e7
    ld b, a                                       ; $49ce: $47
    or $c7                                        ; $49cf: $f6 $c7
    ld c, l                                       ; $49d1: $4d
    ld sp, hl                                     ; $49d2: $f9
    ld d, h                                       ; $49d3: $54
    and a                                         ; $49d4: $a7
    db $ed                                        ; $49d5: $ed
    dec de                                        ; $49d6: $1b
    ld b, e                                       ; $49d7: $43
    jp z, $de7d                                   ; $49d8: $ca $7d $de

    db $eb                                        ; $49db: $eb
    dec a                                         ; $49dc: $3d
    push af                                       ; $49dd: $f5
    or [hl]                                       ; $49de: $b6
    daa                                           ; $49df: $27
    rra                                           ; $49e0: $1f
    rlca                                          ; $49e1: $07
    db $e3                                        ; $49e2: $e3
    bit 2, a                                      ; $49e3: $cb $57
    rst $20                                       ; $49e5: $e7
    ld l, $d5                                     ; $49e6: $2e $d5
    pop hl                                        ; $49e8: $e1
    ld [c], a                                     ; $49e9: $e2
    db $fc                                        ; $49ea: $fc
    ld [$b309], sp                                ; $49eb: $08 $09 $b3
    rla                                           ; $49ee: $17
    sbc c                                         ; $49ef: $99
    db $ec                                        ; $49f0: $ec
    ld c, a                                       ; $49f1: $4f
    ld bc, $55f3                                  ; $49f2: $01 $f3 $55
    cpl                                           ; $49f5: $2f
    sbc a                                         ; $49f6: $9f
    push bc                                       ; $49f7: $c5
    and [hl]                                      ; $49f8: $a6
    sub h                                         ; $49f9: $94
    xor e                                         ; $49fa: $ab
    cp [hl]                                       ; $49fb: $be
    ld c, a                                       ; $49fc: $4f
    db $dd                                        ; $49fd: $dd
    ld h, c                                       ; $49fe: $61
    ld b, e                                       ; $49ff: $43
    pop hl                                        ; $4a00: $e1
    adc e                                         ; $4a01: $8b
    rst $30                                       ; $4a02: $f7
    dec l                                         ; $4a03: $2d
    push hl                                       ; $4a04: $e5
    rst $30                                       ; $4a05: $f7
    add hl, de                                    ; $4a06: $19
    ld [hl], d                                    ; $4a07: $72
    dec sp                                        ; $4a08: $3b
    xor l                                         ; $4a09: $ad
    adc a                                         ; $4a0a: $8f
    sub l                                         ; $4a0b: $95
    ld sp, $4daa                                  ; $4a0c: $31 $aa $4d
    sbc c                                         ; $4a0f: $99
    inc d                                         ; $4a10: $14
    cp d                                          ; $4a11: $ba
    rst $30                                       ; $4a12: $f7
    add a                                         ; $4a13: $87
    rst $00                                       ; $4a14: $c7
    inc c                                         ; $4a15: $0c
    ld e, c                                       ; $4a16: $59
    xor [hl]                                      ; $4a17: $ae
    add c                                         ; $4a18: $81
    db $fc                                        ; $4a19: $fc
    and $d7                                       ; $4a1a: $e6 $d7
    push hl                                       ; $4a1c: $e5
    ld d, e                                       ; $4a1d: $53
    add c                                         ; $4a1e: $81
    ld c, b                                       ; $4a1f: $48
    ld a, h                                       ; $4a20: $7c
    add hl, de                                    ; $4a21: $19
    ld h, [hl]                                    ; $4a22: $66
    ld b, h                                       ; $4a23: $44
    ld e, l                                       ; $4a24: $5d
    jp z, $9feb                                   ; $4a25: $ca $eb $9f

    and a                                         ; $4a28: $a7
    ld d, [hl]                                    ; $4a29: $56
    jp c, $9b1b                                   ; $4a2a: $da $1b $9b

    inc l                                         ; $4a2d: $2c
    ld d, e                                       ; $4a2e: $53
    jp z, $84c8                                   ; $4a2f: $ca $c8 $84

    add h                                         ; $4a32: $84
    sbc h                                         ; $4a33: $9c
    pop af                                        ; $4a34: $f1
    push hl                                       ; $4a35: $e5
    call nz, $b08d                                ; $4a36: $c4 $8d $b0
    ld c, l                                       ; $4a39: $4d
    halt                                          ; $4a3a: $76
    ld a, l                                       ; $4a3b: $7d
    ld b, c                                       ; $4a3c: $41
    sub [hl]                                      ; $4a3d: $96
    ld sp, $2b7e                                  ; $4a3e: $31 $7e $2b
    ret c                                         ; $4a41: $d8

    inc de                                        ; $4a42: $13
    ld a, [c]                                     ; $4a43: $f2
    ld a, $de                                     ; $4a44: $3e $de
    inc de                                        ; $4a46: $13
    rst $20                                       ; $4a47: $e7
    xor a                                         ; $4a48: $af
    scf                                           ; $4a49: $37
    sbc $8f                                       ; $4a4a: $de $8f
    sbc [hl]                                      ; $4a4c: $9e
    sbc $f4                                       ; $4a4d: $de $f4
    ld l, c                                       ; $4a4f: $69
    rst $38                                       ; $4a50: $ff
    ld b, l                                       ; $4a51: $45
    ld a, l                                       ; $4a52: $7d
    ld [hl], l                                    ; $4a53: $75
    and c                                         ; $4a54: $a1
    ld a, [c]                                     ; $4a55: $f2
    or c                                          ; $4a56: $b1
    dec hl                                        ; $4a57: $2b
    rl h                                          ; $4a58: $cb $14
    cp $fc                                        ; $4a5a: $fe $fc
    adc $72                                       ; $4a5c: $ce $72
    dec c                                         ; $4a5e: $0d
    ld h, h                                       ; $4a5f: $64
    ld sp, $9e14                                  ; $4a60: $31 $14 $9e
    sbc $63                                       ; $4a63: $de $63
    dec b                                         ; $4a65: $05
    ld e, $1d                                     ; $4a66: $1e $1d
    cp a                                          ; $4a68: $bf
    ldh a, [rLYC]                                 ; $4a69: $f0 $45
    rst $38                                       ; $4a6b: $ff
    xor $74                                       ; $4a6c: $ee $74
    pop af                                        ; $4a6e: $f1
    db $f4                                        ; $4a6f: $f4
    cp a                                          ; $4a70: $bf
    db $ed                                        ; $4a71: $ed
    add e                                         ; $4a72: $83
    ld b, a                                       ; $4a73: $47
    cp a                                          ; $4a74: $bf
    ld [bc], a                                    ; $4a75: $02
    ld [hl], l                                    ; $4a76: $75
    and a                                         ; $4a77: $a7
    sub h                                         ; $4a78: $94
    ei                                            ; $4a79: $fb
    ld l, d                                       ; $4a7a: $6a
    ld b, d                                       ; $4a7b: $42
    rr e                                          ; $4a7c: $cb $1b
    ld [hl], d                                    ; $4a7e: $72
    dec sp                                        ; $4a7f: $3b
    push de                                       ; $4a80: $d5
    dec bc                                        ; $4a81: $0b
    ld h, e                                       ; $4a82: $63
    rst $28                                       ; $4a83: $ef
    adc c                                         ; $4a84: $89
    di                                            ; $4a85: $f3
    inc hl                                        ; $4a86: $23
    ld b, $51                                     ; $4a87: $06 $51
    ret z                                         ; $4a89: $c8

    add hl, bc                                    ; $4a8a: $09
    ld a, c                                       ; $4a8b: $79
    push hl                                       ; $4a8c: $e5
    db $f4                                        ; $4a8d: $f4
    or a                                          ; $4a8e: $b7
    cpl                                           ; $4a8f: $2f
    dec bc                                        ; $4a90: $0b
    inc l                                         ; $4a91: $2c

jr_043_4a92:
    rr b                                          ; $4a92: $cb $18
    cp a                                          ; $4a94: $bf
    db $ed                                        ; $4a95: $ed
    ld c, c                                       ; $4a96: $49
    and c                                         ; $4a97: $a1
    ld a, e                                       ; $4a98: $7b
    ld a, a                                       ; $4a99: $7f
    ld a, b                                       ; $4a9a: $78
    call z, $c7d0                                 ; $4a9b: $cc $d0 $c7
    db $d3                                        ; $4a9e: $d3
    and b                                         ; $4a9f: $a0
    ld h, $ce                                     ; $4aa0: $26 $ce
    adc a                                         ; $4aa2: $8f
    sub h                                         ; $4aa3: $94
    ei                                            ; $4aa4: $fb
    cp h                                          ; $4aa5: $bc
    ld e, [hl]                                    ; $4aa6: $5e
    rst $38                                       ; $4aa7: $ff
    add l                                         ; $4aa8: $85
    ld e, a                                       ; $4aa9: $5f
    adc b                                         ; $4aaa: $88
    rra                                           ; $4aab: $1f
    call $145e                                    ; $4aac: $cd $5e $14
    and d                                         ; $4aaf: $a2
    ld a, $6e                                     ; $4ab0: $3e $6e
    ld d, $3b                                     ; $4ab2: $16 $3b
    ld b, e                                       ; $4ab4: $43
    inc d                                         ; $4ab5: $14
    ld b, l                                       ; $4ab6: $45
    call nc, $e645                                ; $4ab7: $d4 $45 $e6
    add d                                         ; $4aba: $82
    call nc, $d319                                ; $4abb: $d4 $19 $d3
    jp $fa78                                      ; $4abe: $c3 $78 $fa


    or h                                          ; $4ac1: $b4
    rst $38                                       ; $4ac2: $ff
    and d                                         ; $4ac3: $a2
    ld h, b                                       ; $4ac4: $60
    push af                                       ; $4ac5: $f5
    and a                                         ; $4ac6: $a7
    dec c                                         ; $4ac7: $0d
    ld b, l                                       ; $4ac8: $45
    sbc [hl]                                      ; $4ac9: $9e
    add [hl]                                      ; $4aca: $86
    cp b                                          ; $4acb: $b8
    sub c                                         ; $4acc: $91
    ld d, b                                       ; $4acd: $50
    adc c                                         ; $4ace: $89
    cp $b4                                        ; $4acf: $fe $b4
    ld a, l                                       ; $4ad1: $7d
    ld h, b                                       ; $4ad2: $60
    sbc [hl]                                      ; $4ad3: $9e
    xor b                                         ; $4ad4: $a8
    adc e                                         ; $4ad5: $8b
    ld e, l                                       ; $4ad6: $5d
    ld e, c                                       ; $4ad7: $59
    and [hl]                                      ; $4ad8: $a6
    ldh a, [$f7]                                  ; $4ad9: $f0 $f7
    ld l, c                                       ; $4adb: $69
    ld d, l                                       ; $4adc: $55
    and c                                         ; $4add: $a1
    sub h                                         ; $4ade: $94
    ret                                           ; $4adf: $c9


    adc e                                         ; $4ae0: $8b
    cp d                                          ; $4ae1: $ba
    xor a                                         ; $4ae2: $af
    ld h, $1f                                     ; $4ae3: $26 $1f
    ld [hl], l                                    ; $4ae5: $75
    or [hl]                                       ; $4ae6: $b6
    daa                                           ; $4ae7: $27
    sbc a                                         ; $4ae8: $9f
    jp c, $d9af                                   ; $4ae9: $da $af $d9

    xor c                                         ; $4aec: $a9
    ld a, [hl]                                    ; $4aed: $7e
    dec b                                         ; $4aee: $05
    ld [hl], l                                    ; $4aef: $75
    add $f4                                       ; $4af0: $c6 $f4
    jr nc, jr_043_4a92                            ; $4af2: $30 $9e

    sbc d                                         ; $4af4: $9a
    ld l, c                                       ; $4af5: $69
    add hl, sp                                    ; $4af6: $39
    push bc                                       ; $4af7: $c5
    db $fd                                        ; $4af8: $fd
    or d                                          ; $4af9: $b2
    inc a                                         ; $4afa: $3c
    ld c, a                                       ; $4afb: $4f
    call $35d4                                    ; $4afc: $cd $d4 $35
    inc d                                         ; $4aff: $14
    ld e, $5d                                     ; $4b00: $1e $5d
    ld l, d                                       ; $4b02: $6a
    cp a                                          ; $4b03: $bf
    add hl, de                                    ; $4b04: $19
    ld bc, $ec5d                                  ; $4b05: $01 $5d $ec
    ret c                                         ; $4b08: $d8

    add [hl]                                      ; $4b09: $86
    db $fc                                        ; $4b0a: $fc
    dec a                                         ; $4b0b: $3d
    dec [hl]                                      ; $4b0c: $35
    ld d, a                                       ; $4b0d: $57
    ld l, l                                       ; $4b0e: $6d
    jr c, jr_043_4b48                             ; $4b0f: $38 $37

    ld a, e                                       ; $4b11: $7b
    ld a, [$fef8]                                 ; $4b12: $fa $f8 $fe
    push bc                                       ; $4b15: $c5
    ld sp, hl                                     ; $4b16: $f9
    ld de, $8a1f                                  ; $4b17: $11 $1f $8a
    jp nz, Jump_043_4293                          ; $4b1a: $c2 $93 $42

    sbc l                                         ; $4b1d: $9d
    add e                                         ; $4b1e: $83
    add d                                         ; $4b1f: $82
    push de                                       ; $4b20: $d5
    inc de                                        ; $4b21: $13
    ld [hl], l                                    ; $4b22: $75
    ld de, $e43a                                  ; $4b23: $11 $3a $e4
    add sp, $42                                   ; $4b26: $e8 $42
    jp nz, $d6a6                                  ; $4b28: $c2 $a6 $d6

    ld a, [bc]                                    ; $4b2b: $0a
    db $ed                                        ; $4b2c: $ed
    ld c, l                                       ; $4b2d: $4d
    jp z, Jump_043_69f4                           ; $4b2e: $ca $f4 $69

    ld a, l                                       ; $4b31: $7d
    ld c, b                                       ; $4b32: $48
    xor e                                         ; $4b33: $ab
    cp a                                          ; $4b34: $bf
    rst $28                                       ; $4b35: $ef
    ei                                            ; $4b36: $fb
    sub h                                         ; $4b37: $94
    db $d3                                        ; $4b38: $d3
    db $fc                                        ; $4b39: $fc
    ld a, l                                       ; $4b3a: $7d
    rst $18                                       ; $4b3b: $df
    and a                                         ; $4b3c: $a7
    ld a, d                                       ; $4b3d: $7a
    ld d, c                                       ; $4b3e: $51
    ld l, a                                       ; $4b3f: $6f
    ld [$9f79], sp                                ; $4b40: $08 $79 $9f
    ld a, [hl-]                                   ; $4b43: $3a
    ld h, e                                       ; $4b44: $63
    ld a, d                                       ; $4b45: $7a
    jr jr_043_4b97                                ; $4b46: $18 $4f

jr_043_4b48:
    cp a                                          ; $4b48: $bf
    ld [bc], a                                    ; $4b49: $02
    xor l                                         ; $4b4a: $ad
    ld [$f7f5], a                                 ; $4b4b: $ea $f5 $f7
    push de                                       ; $4b4e: $d5
    call nz, $81ce                                ; $4b4f: $c4 $ce $81
    and h                                         ; $4b52: $a4
    inc a                                         ; $4b53: $3c
    and c                                         ; $4b54: $a1
    ld a, [c]                                     ; $4b55: $f2
    reti                                          ; $4b56: $d9


    ld h, b                                       ; $4b57: $60
    add [hl]                                      ; $4b58: $86
    ld a, l                                       ; $4b59: $7d
    call nc, $d3c7                                ; $4b5a: $d4 $c7 $d3
    rst $38                                       ; $4b5d: $ff
    or [hl]                                       ; $4b5e: $b6
    rrca                                          ; $4b5f: $0f
    jp hl                                         ; $4b60: $e9


    inc c                                         ; $4b61: $0c
    ld e, a                                       ; $4b62: $5f
    ld [hl], $08                                  ; $4b63: $36 $08
    db $f4                                        ; $4b65: $f4
    ld l, c                                       ; $4b66: $69
    ld [hl], l                                    ; $4b67: $75
    dec sp                                        ; $4b68: $3b
    ld a, [hl+]                                   ; $4b69: $2a
    sub a                                         ; $4b6a: $97
    ld b, d                                       ; $4b6b: $42
    rst $20                                       ; $4b6c: $e7
    ld a, [c]                                     ; $4b6d: $f2
    push de                                       ; $4b6e: $d5
    cp c                                          ; $4b6f: $b9
    swap d                                        ; $4b70: $cb $32
    ld l, h                                       ; $4b72: $6c
    ret nc                                        ; $4b73: $d0

    db $eb                                        ; $4b74: $eb
    ld h, c                                       ; $4b75: $61
    sub e                                         ; $4b76: $93
    push bc                                       ; $4b77: $c5
    jr nz, jr_043_4b84                            ; $4b78: $20 $0a

    add [hl]                                      ; $4b7a: $86
    call nc, $d319                                ; $4b7b: $d4 $19 $d3
    jp $f278                                      ; $4b7e: $c3 $78 $f2


    ld a, e                                       ; $4b81: $7b
    ld a, a                                       ; $4b82: $7f
    ld a, [hl+]                                   ; $4b83: $2a

jr_043_4b84:
    db $10                                        ; $4b84: $10
    adc c                                         ; $4b85: $89
    cpl                                           ; $4b86: $2f
    jp $a88c                                      ; $4b87: $c3 $8c $a8


    ld c, e                                       ; $4b8a: $4b
    ld a, c                                       ; $4b8b: $79
    db $fd                                        ; $4b8c: $fd
    di                                            ; $4b8d: $f3
    ld h, h                                       ; $4b8e: $64
    or c                                          ; $4b8f: $b1
    add hl, hl                                    ; $4b90: $29
    push hl                                       ; $4b91: $e5
    xor d                                         ; $4b92: $aa
    jp hl                                         ; $4b93: $e9


    ld d, a                                       ; $4b94: $57
    xor l                                         ; $4b95: $ad
    ld b, c                                       ; $4b96: $41

jr_043_4b97:
    ret nc                                        ; $4b97: $d0

    xor a                                         ; $4b98: $af
    db $ed                                        ; $4b99: $ed
    ld a, c                                       ; $4b9a: $79
    ld hl, sp-$01                                 ; $4b9b: $f8 $ff
    ld [c], a                                     ; $4b9d: $e2
    sbc [hl]                                      ; $4b9e: $9e
    sbc c                                         ; $4b9f: $99
    jp c, $d4f3                                   ; $4ba0: $da $f3 $d4

Jump_043_4ba3:
    ld e, d                                       ; $4ba3: $5a
    ld bc, $4675                                  ; $4ba4: $01 $75 $46
    ld a, [c]                                     ; $4ba7: $f2
    ld [c], a                                     ; $4ba8: $e2
    add $be                                       ; $4ba9: $c6 $be
    ld e, a                                       ; $4bab: $5f
    ld bc, $6d75                                  ; $4bac: $01 $75 $6d
    ret z                                         ; $4baf: $c8

    ld [hl], a                                    ; $4bb0: $77
    sub a                                         ; $4bb1: $97
    rla                                           ; $4bb2: $17
    scf                                           ; $4bb3: $37
    or $ba                                        ; $4bb4: $f6 $ba
    call nc, $337e                                ; $4bb6: $d4 $7e $33
    ld [bc], a                                    ; $4bb9: $02
    dec [hl]                                      ; $4bba: $35
    db $d3                                        ; $4bbb: $d3
    ld a, [$f5e8]                                 ; $4bbc: $fa $e8 $f5
    rst $30                                       ; $4bbf: $f7
    push de                                       ; $4bc0: $d5
    call nz, $196e                                ; $4bc1: $c4 $6e $19
    db $e3                                        ; $4bc4: $e3
    or a                                          ; $4bc5: $b7
    dec a                                         ; $4bc6: $3d
    add hl, sp                                    ; $4bc7: $39
    ld d, c                                       ; $4bc8: $51
    rlca                                          ; $4bc9: $07
    or [hl]                                       ; $4bca: $b6
    xor c                                         ; $4bcb: $a9
    cp c                                          ; $4bcc: $b9
    ld [bc], a                                    ; $4bcd: $02
    db $ed                                        ; $4bce: $ed
    ld b, e                                       ; $4bcf: $43
    db $db                                        ; $4bd0: $db
    scf                                           ; $4bd1: $37
    ld a, c                                       ; $4bd2: $79
    ld d, c                                       ; $4bd3: $51
    ld l, a                                       ; $4bd4: $6f
    add sp, $57                                   ; $4bd5: $e8 $57
    sbc [hl]                                      ; $4bd7: $9e
    inc hl                                        ; $4bd8: $23
    ld a, h                                       ; $4bd9: $7c
    ld b, d                                       ; $4bda: $42
    daa                                           ; $4bdb: $27
    sbc a                                         ; $4bdc: $9f
    dec b                                         ; $4bdd: $05
    ld d, d                                       ; $4bde: $52
    sbc $10                                       ; $4bdf: $de $10
    rst $20                                       ; $4be1: $e7
    ld b, a                                       ; $4be2: $47
    call nc, $8690                                ; $4be3: $d4 $90 $86
    res 1, e                                      ; $4be6: $cb $8b
    ld a, d                                       ; $4be8: $7a
    ld [hl], e                                    ; $4be9: $73
    sub a                                         ; $4bea: $97
    sbc e                                         ; $4beb: $9b
    db $fc                                        ; $4bec: $fc
    ld c, $d3                                     ; $4bed: $0e $d3
    ret                                           ; $4bef: $c9


    ld [hl-], a                                   ; $4bf0: $32
    add l                                         ; $4bf1: $85
    ld b, a                                       ; $4bf2: $47
    sub a                                         ; $4bf3: $97
    jp c, $eab0                                   ; $4bf4: $da $b0 $ea

    ld b, [hl]                                    ; $4bf7: $46
    ret nc                                        ; $4bf8: $d0

    xor a                                         ; $4bf9: $af
    cp [hl]                                       ; $4bfa: $be
    cp b                                          ; $4bfb: $b8
    inc d                                         ; $4bfc: $14
    ld a, [hl]                                    ; $4bfd: $7e
    sbc [hl]                                      ; $4bfe: $9e
    ld d, h                                       ; $4bff: $54
    cp a                                          ; $4c00: $bf
    sbc a                                         ; $4c01: $9f
    and a                                         ; $4c02: $a7
    ld c, a                                       ; $4c03: $4f
    db $db                                        ; $4c04: $db
    ld [hl-], a                                   ; $4c05: $32
    sbc e                                         ; $4c06: $9b
    dec c                                         ; $4c07: $0d
    cp d                                          ; $4c08: $ba
    ret z                                         ; $4c09: $c8

    ld c, b                                       ; $4c0a: $48
    sbc h                                         ; $4c0b: $9c
    ld b, a                                       ; $4c0c: $47
    adc l                                         ; $4c0d: $8d
    ret z                                         ; $4c0e: $c8

    ld b, c                                       ; $4c0f: $41
    jr jr_043_4c83                                ; $4c10: $18 $71

    ld a, [hl]                                    ; $4c12: $7e
    add h                                         ; $4c13: $84
    ld l, c                                       ; $4c14: $69
    jp z, Jump_043_4e7d                           ; $4c15: $ca $7d $4e

    and d                                         ; $4c18: $a2
    reti                                          ; $4c19: $d9


    xor e                                         ; $4c1a: $ab
    adc c                                         ; $4c1b: $89
    cp d                                          ; $4c1c: $ba
    ld a, b                                       ; $4c1d: $78
    rst $18                                       ; $4c1e: $df
    db $10                                        ; $4c1f: $10
    db $e4                                        ; $4c20: $e4
    ld h, $32                                     ; $4c21: $26 $32
    db $fd                                        ; $4c23: $fd
    ld a, [bc]                                    ; $4c24: $0a
    ld l, l                                       ; $4c25: $6d
    sbc [hl]                                      ; $4c26: $9e
    inc e                                         ; $4c27: $1c
    ld h, e                                       ; $4c28: $63
    ld a, a                                       ; $4c29: $7f
    call Call_000_2ab4                            ; $4c2a: $cd $b4 $2a
    ld [$1abe], a                                 ; $4c2d: $ea $be $1a
    ld e, l                                       ; $4c30: $5d
    ld l, d                                       ; $4c31: $6a
    jp $1baa                                      ; $4c32: $c3 $aa $1b


    ld b, c                                       ; $4c35: $41
    cp a                                          ; $4c36: $bf
    ld [bc], a                                    ; $4c37: $02
    dec l                                         ; $4c38: $2d
    ld h, a                                       ; $4c39: $67
    db $ec                                        ; $4c3a: $ec
    ld [hl], l                                    ; $4c3b: $75
    xor c                                         ; $4c3c: $a9
    db $fd                                        ; $4c3d: $fd
    sbc d                                         ; $4c3e: $9a
    sbc l                                         ; $4c3f: $9d
    ld [$6d57], a                                 ; $4c40: $ea $57 $6d
    db $ed                                        ; $4c43: $ed
    adc e                                         ; $4c44: $8b
    ld a, a                                       ; $4c45: $7f
    ld d, d                                       ; $4c46: $52
    and c                                         ; $4c47: $a1
    sub h                                         ; $4c48: $94
    add hl, bc                                    ; $4c49: $09
    sub l                                         ; $4c4a: $95
    add sp, -$4f                                  ; $4c4b: $e8 $b1
    or e                                          ; $4c4d: $b3
    adc h                                         ; $4c4e: $8c
    ld b, a                                       ; $4c4f: $47
    call nc, $9dc5                                ; $4c50: $d4 $c5 $9d
    ld a, [hl]                                    ; $4c53: $7e
    or d                                          ; $4c54: $b2
    ret nz                                        ; $4c55: $c0

    ld [hl], d                                    ; $4c56: $72
    dec sp                                        ; $4c57: $3b
    db $e4                                        ; $4c58: $e4
    cp l                                          ; $4c59: $bd
    and [hl]                                      ; $4c5a: $a6
    db $dd                                        ; $4c5b: $dd
    db $f4                                        ; $4c5c: $f4
    ld l, c                                       ; $4c5d: $69
    inc hl                                        ; $4c5e: $23
    ld a, [bc]                                    ; $4c5f: $0a
    jp nz, $f136                                  ; $4c60: $c2 $36 $f1

    ld c, a                                       ; $4c63: $4f

jr_043_4c64:
    ld a, [hl+]                                   ; $4c64: $2a
    sub h                                         ; $4c65: $94
    ld [hl-], a                                   ; $4c66: $32
    ld a, c                                       ; $4c67: $79
    ld [hl], c                                    ; $4c68: $71
    ld a, [hl]                                    ; $4c69: $7e
    db $e4                                        ; $4c6a: $e4
    halt                                          ; $4c6b: $76
    ld a, [bc]                                    ; $4c6c: $0a
    sbc l                                         ; $4c6d: $9d
    adc h                                         ; $4c6e: $8c
    sub l                                         ; $4c6f: $95
    ld [hl], a                                    ; $4c70: $77
    adc $7f                                       ; $4c71: $ce $7f
    jp $ba3c                                      ; $4c73: $c3 $3c $ba


    inc d                                         ; $4c76: $14
    and h                                         ; $4c77: $a4
    ld a, [$b94b]                                 ; $4c78: $fa $4b $b9
    inc d                                         ; $4c7b: $14
    ld [$6523], sp                                ; $4c7c: $08 $23 $65
    or $f4                                        ; $4c7f: $f6 $f4
    dec hl                                        ; $4c81: $2b
    ld [hl], l                                    ; $4c82: $75

jr_043_4c83:
    ld l, l                                       ; $4c83: $6d
    db $f4                                        ; $4c84: $f4
    xor a                                         ; $4c85: $af
    cp a                                          ; $4c86: $bf
    ld e, l                                       ; $4c87: $5d
    ld b, c                                       ; $4c88: $41
    jr jr_043_4c64                                ; $4c89: $18 $d9

    sbc a                                         ; $4c8b: $9f
    push bc                                       ; $4c8c: $c5
    xor [hl]                                      ; $4c8d: $ae
    ld a, [$29b8]                                 ; $4c8e: $fa $b8 $29
    rra                                           ; $4c91: $1f
    rst $20                                       ; $4c92: $e7
    ld b, a                                       ; $4c93: $47
    xor d                                         ; $4c94: $aa
    rla                                           ; $4c95: $17
    dec c                                         ; $4c96: $0d
    ld d, [hl]                                    ; $4c97: $56
    ld c, a                                       ; $4c98: $4f
    jp z, Jump_000_3d5b                           ; $4c99: $ca $5b $3d

    ld e, c                                       ; $4c9c: $59
    ld l, h                                       ; $4c9d: $6c
    ld d, $bb                                     ; $4c9e: $16 $bb
    ret                                           ; $4ca0: $c9


    or $18                                        ; $4ca1: $f6 $18
    dec hl                                        ; $4ca3: $2b
    rst $28                                       ; $4ca4: $ef
    sbc h                                         ; $4ca5: $9c
    rst $38                                       ; $4ca6: $ff
    add [hl]                                      ; $4ca7: $86
    ld a, c                                       ; $4ca8: $79
    ld a, [$2d15]                                 ; $4ca9: $fa $15 $2d
    and a                                         ; $4cac: $a7
    add d                                         ; $4cad: $82
    or [hl]                                       ; $4cae: $b6
    ld l, a                                       ; $4caf: $6f
    ld d, d                                       ; $4cb0: $52
    pop de                                        ; $4cb1: $d1
    ld hl, $e561                                  ; $4cb2: $21 $61 $e5
    ld [hl], h                                    ; $4cb5: $74
    add hl, hl                                    ; $4cb6: $29
    ld [$da39], sp                                ; $4cb7: $08 $39 $da
    cp [hl]                                       ; $4cba: $be
    xor a                                         ; $4cbb: $af
    ld h, $6f                                     ; $4cbc: $26 $6f
    halt                                          ; $4cbe: $76
    db $e4                                        ; $4cbf: $e4
    dec de                                        ; $4cc0: $1b
    ld [hl], d                                    ; $4cc1: $72
    ld [de], a                                    ; $4cc2: $12
    ld b, [hl]                                    ; $4cc3: $46
    or l                                          ; $4cc4: $b5
    ld c, h                                       ; $4cc5: $4c
    ld a, [bc]                                    ; $4cc6: $0a
    db $dd                                        ; $4cc7: $dd
    ei                                            ; $4cc8: $fb
    ld b, e                                       ; $4cc9: $43
    add d                                         ; $4cca: $82
    ld sp, hl                                     ; $4ccb: $f9
    and e                                         ; $4ccc: $a3
    or b                                          ; $4ccd: $b0
    rst $30                                       ; $4cce: $f7
    add a                                         ; $4ccf: $87
    rst $00                                       ; $4cd0: $c7
    inc c                                         ; $4cd1: $0c
    db $fd                                        ; $4cd2: $fd
    ld a, [bc]                                    ; $4cd3: $0a
    xor l                                         ; $4cd4: $ad
    ld a, [hl+]                                   ; $4cd5: $2a
    ld [hl], l                                    ; $4cd6: $75
    and e                                         ; $4cd7: $a3
    ld c, e                                       ; $4cd8: $4b
    sbc l                                         ; $4cd9: $9d
    ld sp, $8c3d                                  ; $4cda: $31 $3d $8c
    and a                                         ; $4cdd: $a7
    ld h, [hl]                                    ; $4cde: $66
    ld [$848c], a                                 ; $4cdf: $ea $8c $84
    cpl                                           ; $4ce2: $2f
    ld [$082a], a                                 ; $4ce3: $ea $2a $08
    sbc a                                         ; $4ce6: $9f
    di                                            ; $4ce7: $f3
    jp Jump_043_4fea                              ; $4ce8: $c3 $ea $4f


    push af                                       ; $4ceb: $f5
    ld d, a                                       ; $4cec: $57
    ld [hl], e                                    ; $4ced: $73
    dec b                                         ; $4cee: $05
    ld l, l                                       ; $4cef: $6d
    ld c, e                                       ; $4cf0: $4b
    call c, Call_000_3e17                         ; $4cf1: $dc $17 $3e
    ld l, l                                       ; $4cf4: $6d
    ld l, d                                       ; $4cf5: $6a
    and [hl]                                      ; $4cf6: $a6
    adc l                                         ; $4cf7: $8d
    inc [hl]                                      ; $4cf8: $34
    reti                                          ; $4cf9: $d9


    ld a, b                                       ; $4cfa: $78
    ld d, $2a                                     ; $4cfb: $16 $2a
    ld a, h                                       ; $4cfd: $7c
    add hl, sp                                    ; $4cfe: $39
    ld c, c                                       ; $4cff: $49
    dec b                                         ; $4d00: $05
    sbc c                                         ; $4d01: $99
    ld a, h                                       ; $4d02: $7c
    ld a, h                                       ; $4d03: $7c
    ld h, c                                       ; $4d04: $61
    dec bc                                        ; $4d05: $0b
    ld c, b                                       ; $4d06: $48
    sbc b                                         ; $4d07: $98
    ld b, d                                       ; $4d08: $42
    call Call_043_4e78                            ; $4d09: $cd $78 $4e
    add l                                         ; $4d0c: $85
    ldh a, [$65]                                  ; $4d0d: $f0 $65
    add c                                         ; $4d0f: $81
    ld d, l                                       ; $4d10: $55
    ld h, b                                       ; $4d11: $60
    cp [hl]                                       ; $4d12: $be
    xor b                                         ; $4d13: $a8
    res 1, e                                      ; $4d14: $cb $8b
    ld a, d                                       ; $4d16: $7a
    ld b, e                                       ; $4d17: $43
    ld c, [hl]                                    ; $4d18: $4e
    and d                                         ; $4d19: $a2
    sbc l                                         ; $4d1a: $9d
    ld c, l                                       ; $4d1b: $4d
    inc b                                         ; $4d1c: $04
    dec sp                                        ; $4d1d: $3b
    adc [hl]                                      ; $4d1e: $8e
    adc [hl]                                      ; $4d1f: $8e
    ld hl, $7b0a                                  ; $4d20: $21 $0a $7b
    ld a, a                                       ; $4d23: $7f
    ld h, h                                       ; $4d24: $64
    sbc b                                         ; $4d25: $98
    ld d, c                                       ; $4d26: $51
    ld [hl], e                                    ; $4d27: $73
    dec b                                         ; $4d28: $05
    ld [hl], l                                    ; $4d29: $75
    ld l, l                                       ; $4d2a: $6d
    cp h                                          ; $4d2b: $bc
    jr z, jr_043_4d93                             ; $4d2c: $28 $65

    inc c                                         ; $4d2e: $0c
    and l                                         ; $4d2f: $a5
    cp h                                          ; $4d30: $bc
    ld l, $1b                                     ; $4d31: $2e $1b
    rla                                           ; $4d33: $17
    add hl, de                                    ; $4d34: $19
    adc c                                         ; $4d35: $89
    ei                                            ; $4d36: $fb
    push hl                                       ; $4d37: $e5
    adc d                                         ; $4d38: $8a
    ld b, e                                       ; $4d39: $43
    rst $18                                       ; $4d3a: $df
    rst $30                                       ; $4d3b: $f7
    add hl, hl                                    ; $4d3c: $29
    db $fc                                        ; $4d3d: $fc
    ld a, c                                       ; $4d3e: $79
    or e                                          ; $4d3f: $b3
    inc hl                                        ; $4d40: $23
    ld e, a                                       ; $4d41: $5f
    call nc, $f6a4                                ; $4d42: $d4 $a4 $f6
    sbc e                                         ; $4d45: $9b
    ld de, $dd48                                  ; $4d46: $11 $48 $dd
    ld h, c                                       ; $4d49: $61
    add [hl]                                      ; $4d4a: $86
    push af                                       ; $4d4b: $f5
    ld a, l                                       ; $4d4c: $7d
    rra                                           ; $4d4d: $1f
    rst $38                                       ; $4d4e: $ff
    add a                                         ; $4d4f: $87
    ld c, d                                       ; $4d50: $4a
    sub h                                         ; $4d51: $94
    cp l                                          ; $4d52: $bd
    ld [hl], $35                                  ; $4d53: $36 $35
    ld d, a                                       ; $4d55: $57
    db $ed                                        ; $4d56: $ed
    ld a, a                                       ; $4d57: $7f
    sbc h                                         ; $4d58: $9c
    rra                                           ; $4d59: $1f
    add hl, hl                                    ; $4d5a: $29
    xor $c6                                       ; $4d5b: $ee $c6
    add hl, sp                                    ; $4d5d: $39
    ccf                                           ; $4d5e: $3f
    adc b                                         ; $4d5f: $88
    ld b, h                                       ; $4d60: $44
    call nc, Call_043_474c                        ; $4d61: $d4 $4c $47
    rst $20                                       ; $4d64: $e7
    add l                                         ; $4d65: $85
    sbc l                                         ; $4d66: $9d
    push de                                       ; $4d67: $d5
    rra                                           ; $4d68: $1f
    and [hl]                                      ; $4d69: $a6
    call z, $df93                                 ; $4d6a: $cc $93 $df
    ld e, c                                       ; $4d6d: $59
    ld l, h                                       ; $4d6e: $6c
    cp h                                          ; $4d6f: $bc
    jr z, @+$67                                   ; $4d70: $28 $65

    inc l                                         ; $4d72: $2c
    ld [hl], l                                    ; $4d73: $75
    adc a                                         ; $4d74: $8f
    ld b, a                                       ; $4d75: $47
    ld l, d                                       ; $4d76: $6a
    xor [hl]                                      ; $4d77: $ae
    ld l, l                                       ; $4d78: $6d
    pop de                                        ; $4d79: $d1
    scf                                           ; $4d7a: $37
    push af                                       ; $4d7b: $f5
    cp d                                          ; $4d7c: $ba
    ret nz                                        ; $4d7d: $c0

    cp c                                          ; $4d7e: $b9
    reti                                          ; $4d7f: $d9


    sub a                                         ; $4d80: $97
    ld e, l                                       ; $4d81: $5d

jr_043_4d82:
    ld c, a                                       ; $4d82: $4f
    call $be15                                    ; $4d83: $cd $15 $be
    rst $30                                       ; $4d86: $f7
    push de                                       ; $4d87: $d5
    call nz, $be87                                ; $4d88: $c4 $87 $be
    and [hl]                                      ; $4d8b: $a6
    ld e, l                                       ; $4d8c: $5d
    inc bc                                        ; $4d8d: $03
    dec [hl]                                      ; $4d8e: $35
    ld d, a                                       ; $4d8f: $57
    ld l, l                                       ; $4d90: $6d
    reti                                          ; $4d91: $d9


    inc de                                        ; $4d92: $13

jr_043_4d93:
    rrca                                          ; $4d93: $0f
    ld sp, hl                                     ; $4d94: $f9
    dec e                                         ; $4d95: $1d
    ld [hl], a                                    ; $4d96: $77
    ret c                                         ; $4d97: $d8

    and e                                         ; $4d98: $a3
    ld c, e                                       ; $4d99: $4b
    adc l                                         ; $4d9a: $8d
    jr nc, jr_043_4e02                            ; $4d9b: $30 $65

    sbc [hl]                                      ; $4d9d: $9e
    ld a, b                                       ; $4d9e: $78
    ld c, a                                       ; $4d9f: $4f
    adc [hl]                                      ; $4da0: $8e
    and a                                         ; $4da1: $a7
    ld e, a                                       ; $4da2: $5f
    ld bc, $4675                                  ; $4da3: $01 $75 $46
    ld a, [c]                                     ; $4da6: $f2
    ld [c], a                                     ; $4da7: $e2
    add $be                                       ; $4da8: $c6 $be
    ld c, a                                       ; $4daa: $4f
    db $eb                                        ; $4dab: $eb
    and e                                         ; $4dac: $a3
    rst $10                                       ; $4dad: $d7
    rst $18                                       ; $4dae: $df
    ld d, a                                       ; $4daf: $57
    sub e                                         ; $4db0: $93
    rla                                           ; $4db1: $17
    scf                                           ; $4db2: $37
    or $b1                                        ; $4db3: $f6 $b1
    add e                                         ; $4db5: $83
    or b                                          ; $4db6: $b0
    cp l                                          ; $4db7: $bd
    ld hl, $b69f                                  ; $4db8: $21 $9f $b6
    db $ec                                        ; $4dbb: $ec
    cp h                                          ; $4dbc: $bc
    inc hl                                        ; $4dbd: $23
    ld l, d                                       ; $4dbe: $6a
    ld l, h                                       ; $4dbf: $6c
    ld a, [$b515]                                 ; $4dc0: $fa $15 $b5
    ld h, c                                       ; $4dc3: $61
    push de                                       ; $4dc4: $d5
    adc l                                         ; $4dc5: $8d
    and b                                         ; $4dc6: $a0
    rst $28                                       ; $4dc7: $ef
    ei                                            ; $4dc8: $fb
    ld hl, sp+$27                                 ; $4dc9: $f8 $27
    ei                                            ; $4dcb: $fb
    adc e                                         ; $4dcc: $8b
    cp e                                          ; $4dcd: $bb
    rst $20                                       ; $4dce: $e7
    ret                                           ; $4dcf: $c9


    db $ed                                        ; $4dd0: $ed
    ld d, h                                       ; $4dd1: $54
    cpl                                           ; $4dd2: $2f
    adc h                                         ; $4dd3: $8c
    cp l                                          ; $4dd4: $bd
    daa                                           ; $4dd5: $27
    adc $8f                                       ; $4dd6: $ce $8f
    jr jr_043_4e1e                                ; $4dd8: $18 $44

    ld hl, $e427                                  ; $4dda: $21 $27 $e4
    sub l                                         ; $4ddd: $95
    db $d3                                        ; $4dde: $d3
    rst $18                                       ; $4ddf: $df
    cp [hl]                                       ; $4de0: $be
    inc d                                         ; $4de1: $14
    cp d                                          ; $4de2: $ba
    rst $30                                       ; $4de3: $f7
    add a                                         ; $4de4: $87
    rst $00                                       ; $4de5: $c7
    inc c                                         ; $4de6: $0c
    dec [hl]                                      ; $4de7: $35
    ld d, a                                       ; $4de8: $57
    xor l                                         ; $4de9: $ad
    pop bc                                        ; $4dea: $c1
    cp c                                          ; $4deb: $b9
    rst $20                                       ; $4dec: $e7
    xor e                                         ; $4ded: $ab
    cp c                                          ; $4dee: $b9
    ld [bc], a                                    ; $4def: $02
    ld l, l                                       ; $4df0: $6d
    sbc [hl]                                      ; $4df1: $9e
    db $fc                                        ; $4df2: $fc
    xor [hl]                                      ; $4df3: $ae
    jr nz, jr_043_4d82                            ; $4df4: $20 $8c

    ld l, b                                       ; $4df6: $68
    ei                                            ; $4df7: $fb
    add d                                         ; $4df8: $82
    ld a, [c]                                     ; $4df9: $f2
    push de                                       ; $4dfa: $d5
    and l                                         ; $4dfb: $a5
    adc h                                         ; $4dfc: $8c
    ld c, h                                       ; $4dfd: $4c
    cp h                                          ; $4dfe: $bc
    daa                                           ; $4dff: $27
    rst $00                                       ; $4e00: $c7
    ld d, a                                       ; $4e01: $57

jr_043_4e02:
    inc sp                                        ; $4e02: $33
    ld [hl], l                                    ; $4e03: $75
    dec c                                         ; $4e04: $0d
    add l                                         ; $4e05: $85
    daa                                           ; $4e06: $27
    daa                                           ; $4e07: $27
    ld b, a                                       ; $4e08: $47
    inc a                                         ; $4e09: $3c
    ret c                                         ; $4e0a: $d8

    adc e                                         ; $4e0b: $8b
    ld c, h                                       ; $4e0c: $4c
    ld [hl], $42                                  ; $4e0d: $36 $42
    cp [hl]                                       ; $4e0f: $be
    ld a, e                                       ; $4e10: $7b
    ld hl, $2822                                  ; $4e11: $21 $22 $28
    ld a, h                                       ; $4e14: $7c
    inc h                                         ; $4e15: $24
    ld l, d                                       ; $4e16: $6a
    xor [hl]                                      ; $4e17: $ae
    cp [hl]                                       ; $4e18: $be
    push af                                       ; $4e19: $f5
    jp hl                                         ; $4e1a: $e9


    ld [c], a                                     ; $4e1b: $e2
    ld b, e                                       ; $4e1c: $43
    cpl                                           ; $4e1d: $2f

jr_043_4e1e:
    ld [hl-], a                                   ; $4e1e: $32
    ld [de], a                                    ; $4e1f: $12
    cp e                                          ; $4e20: $bb
    ld [$eacd], a                                 ; $4e21: $ea $cd $ea
    ret                                           ; $4e24: $c9


    ld [hl], d                                    ; $4e25: $72
    dec c                                         ; $4e26: $0d
    call nz, Call_043_7e87                        ; $4e27: $c4 $87 $7e
    cp c                                          ; $4e2a: $b9
    ld [$a14a], sp                                ; $4e2b: $08 $4a $a1
    ld [hl-], a                                   ; $4e2e: $32
    ld a, l                                       ; $4e2f: $7d
    ld [$8f1e], a                                 ; $4e30: $ea $1e $8f
    ld b, h                                       ; $4e33: $44
    ld b, [hl]                                    ; $4e34: $46
    ld a, [c]                                     ; $4e35: $f2
    ld h, l                                       ; $4e36: $65
    ld bc, $e7f3                                  ; $4e37: $01 $f3 $e7
    scf                                           ; $4e3a: $37
    db $db                                        ; $4e3b: $db
    db $f4                                        ; $4e3c: $f4
    dec hl                                        ; $4e3d: $2b
    or l                                          ; $4e3e: $b5
    rst $18                                       ; $4e3f: $df
    adc h                                         ; $4e40: $8c
    add b                                         ; $4e41: $80
    ld l, $32                                     ; $4e42: $2e $32
    sub d                                         ; $4e44: $92
    ld [hl], d                                    ; $4e45: $72
    ld e, a                                       ; $4e46: $5f
    ld c, l                                       ; $4e47: $4d
    inc b                                         ; $4e48: $04
    bit 0, d                                      ; $4e49: $cb $42
    dec c                                         ; $4e4b: $0d
    add hl, hl                                    ; $4e4c: $29
    rst $20                                       ; $4e4d: $e7
    xor b                                         ; $4e4e: $a8
    ld e, l                                       ; $4e4f: $5d
    sbc h                                         ; $4e50: $9c
    rra                                           ; $4e51: $1f
    add hl, hl                                    ; $4e52: $29
    cp a                                          ; $4e53: $bf
    inc l                                         ; $4e54: $2c
    rst $30                                       ; $4e55: $f7
    ld [hl], c                                    ; $4e56: $71
    ld d, e                                       ; $4e57: $53
    ld hl, $54d8                                  ; $4e58: $21 $d8 $54
    pop bc                                        ; $4e5b: $c1
    sub b                                         ; $4e5c: $90
    db $fd                                        ; $4e5d: $fd
    add hl, hl                                    ; $4e5e: $29
    ld h, e                                       ; $4e5f: $63
    inc h                                         ; $4e60: $24
    or h                                          ; $4e61: $b4
    ld a, l                                       ; $4e62: $7d
    cpl                                           ; $4e63: $2f
    call nz, $ba8f                                ; $4e64: $c4 $8f $ba
    or h                                          ; $4e67: $b4
    ld c, c                                       ; $4e68: $49
    cp l                                          ; $4e69: $bd
    sbc $eb                                       ; $4e6a: $de $eb
    ld d, a                                       ; $4e6c: $57
    db $ed                                        ; $4e6d: $ed
    ld a, a                                       ; $4e6e: $7f
    or $a7                                        ; $4e6f: $f6 $a7
    cp d                                          ; $4e71: $ba
    adc a                                         ; $4e72: $8f
    dec sp                                        ; $4e73: $3b
    rst $30                                       ; $4e74: $f7
    ld l, h                                       ; $4e75: $6c
    rst $20                                       ; $4e76: $e7
    sub b                                         ; $4e77: $90

Call_043_4e78:
    ld [$fde2], a                                 ; $4e78: $ea $e2 $fd
    ld d, h                                       ; $4e7b: $54
    cp a                                          ; $4e7c: $bf

Jump_043_4e7d:
    ld de, $1537                                  ; $4e7d: $11 $37 $15
    ld d, d                                       ; $4e80: $52
    db $fd                                        ; $4e81: $fd
    dec b                                         ; $4e82: $05
    or $79                                        ; $4e83: $f6 $79
    rst $20                                       ; $4e85: $e7
    ld e, [hl]                                    ; $4e86: $5e
    ld d, c                                       ; $4e87: $51
    sbc [hl]                                      ; $4e88: $9e
    sbc h                                         ; $4e89: $9c
    ld h, h                                       ; $4e8a: $64
    ld sp, $2838                                  ; $4e8b: $31 $38 $28
    ld [$fbf1], sp                                ; $4e8e: $08 $f1 $fb
    ld a, b                                       ; $4e91: $78
    ld a, [de]                                    ; $4e92: $1a
    call nc, $f9c4                                ; $4e93: $d4 $c4 $f9
    sub c                                         ; $4e96: $91
    ld [hl], d                                    ; $4e97: $72
    sbc a                                         ; $4e98: $9f
    db $db                                        ; $4e99: $db
    add hl, hl                                    ; $4e9a: $29
    ret nc                                        ; $4e9b: $d0

    db $e4                                        ; $4e9c: $e4
    scf                                           ; $4e9d: $37
    and d                                         ; $4e9e: $a2
    ld l, $54                                     ; $4e9f: $2e $54
    or d                                          ; $4ea1: $b2
    ret nz                                        ; $4ea2: $c0

    adc $cd                                       ; $4ea3: $ce $cd
    sbc [hl]                                      ; $4ea5: $9e
    ld e, h                                       ; $4ea6: $5c
    ld d, l                                       ; $4ea7: $55
    sbc l                                         ; $4ea8: $9d

jr_043_4ea9:
    ld b, b                                       ; $4ea9: $40
    jr jr_043_4ea9                                ; $4eaa: $18 $fd

    ld a, [bc]                                    ; $4eac: $0a
    sbc [hl]                                      ; $4ead: $9e
    rst $30                                       ; $4eae: $f7
    ld d, e                                       ; $4eaf: $53
    inc sp                                        ; $4eb0: $33
    dec e                                         ; $4eb1: $1d
    ld e, a                                       ; $4eb2: $5f
    ld a, [bc]                                    ; $4eb3: $0a
    rst $38                                       ; $4eb4: $ff
    ld b, l                                       ; $4eb5: $45
    dec de                                        ; $4eb6: $1b
    dec b                                         ; $4eb7: $05
    ld d, c                                       ; $4eb8: $51
    sub e                                         ; $4eb9: $93
    db $ed                                        ; $4eba: $ed
    ld b, c                                       ; $4ebb: $41
    scf                                           ; $4ebc: $37
    ld e, a                                       ; $4ebd: $5f
    dec [hl]                                      ; $4ebe: $35
    add hl, hl                                    ; $4ebf: $29
    or e                                          ; $4ec0: $b3
    sub c                                         ; $4ec1: $91
    push bc                                       ; $4ec2: $c5
    xor [hl]                                      ; $4ec3: $ae
    ld a, [$0ba8]                                 ; $4ec4: $fa $a8 $0b
    adc a                                         ; $4ec7: $8f
    ret                                           ; $4ec8: $c9


    dec de                                        ; $4ec9: $1b
    ld a, [c]                                     ; $4eca: $f2
    ld [hl], c                                    ; $4ecb: $71
    ld e, a                                       ; $4ecc: $5f
    cp [hl]                                       ; $4ecd: $be
    sub $0a                                       ; $4ece: $d6 $0a
    or l                                          ; $4ed0: $b5
    ld e, a                                       ; $4ed1: $5f
    or e                                          ; $4ed2: $b3
    ld d, e                                       ; $4ed3: $53
    cp d                                          ; $4ed4: $ba
    inc d                                         ; $4ed5: $14
    call nz, $fe87                                ; $4ed6: $c4 $87 $fe
    halt                                          ; $4ed9: $76
    ld d, h                                       ; $4eda: $54
    ld h, $e4                                     ; $4edb: $26 $e4
    ld l, h                                       ; $4edd: $6c
    sub h                                         ; $4ede: $94
    add d                                         ; $4edf: $82
    ld h, b                                       ; $4ee0: $60
    ld d, e                                       ; $4ee1: $53
    dec b                                         ; $4ee2: $05
    ld b, e                                       ; $4ee3: $43
    or $a7                                        ; $4ee4: $f6 $a7
    adc h                                         ; $4ee6: $8c
    sub c                                         ; $4ee7: $91
    ret nc                                        ; $4ee8: $d0

    or $bd                                        ; $4ee9: $f6 $bd
    db $10                                        ; $4eeb: $10
    ccf                                           ; $4eec: $3f
    ld [$26d2], a                                 ; $4eed: $ea $d2 $26
    push af                                       ; $4ef0: $f5
    ld a, d                                       ; $4ef1: $7a
    ld c, a                                       ; $4ef2: $4f
    rla                                           ; $4ef3: $17
    scf                                           ; $4ef4: $37
    push hl                                       ; $4ef5: $e5
    and e                                         ; $4ef6: $a3
    add [hl]                                      ; $4ef7: $86
    inc [hl]                                      ; $4ef8: $34
    add sp, -$0b                                  ; $4ef9: $e8 $f5
    adc b                                         ; $4efb: $88
    rst $30                                       ; $4efc: $f7
    dec c                                         ; $4efd: $0d
    or l                                          ; $4efe: $b5
    ld d, [hl]                                    ; $4eff: $56
    sbc [hl]                                      ; $4f00: $9e
    ld d, e                                       ; $4f01: $53
    ld hl, $89fe                                  ; $4f02: $21 $fe $89
    ld [bc], a                                    ; $4f05: $02
    di                                            ; $4f06: $f3
    db $e4                                        ; $4f07: $e4
    db $e3                                        ; $4f08: $e3
    ld b, e                                       ; $4f09: $43
    or c                                          ; $4f0a: $b1
    rst $30                                       ; $4f0b: $f7
    and h                                         ; $4f0c: $a4
    or b                                          ; $4f0d: $b0
    cp l                                          ; $4f0e: $bd
    inc e                                         ; $4f0f: $1c
    ld l, h                                       ; $4f10: $6c
    ld [hl], h                                    ; $4f11: $74
    pop de                                        ; $4f12: $d1
    ld a, a                                       ; $4f13: $7f
    pop hl                                        ; $4f14: $e1
    ld c, a                                       ; $4f15: $4f
    and c                                         ; $4f16: $a1
    inc hl                                        ; $4f17: $23
    ld l, a                                       ; $4f18: $6f
    ret z                                         ; $4f19: $c8

    cp $54                                        ; $4f1a: $fe $54
    or h                                          ; $4f1c: $b4
    sbc h                                         ; $4f1d: $9c
    ei                                            ; $4f1e: $fb
    ld l, b                                       ; $4f1f: $68
    ld b, a                                       ; $4f20: $47
    dec bc                                        ; $4f21: $0b
    ld a, a                                       ; $4f22: $7f
    sub b                                         ; $4f23: $90
    ld [hl], $a9                                  ; $4f24: $36 $a9
    rst $10                                       ; $4f26: $d7
    ld a, e                                       ; $4f27: $7b
    add hl, hl                                    ; $4f28: $29
    sub a                                         ; $4f29: $97
    ld d, a                                       ; $4f2a: $57
    ld l, d                                       ; $4f2b: $6a
    xor h                                         ; $4f2c: $ac
    add d                                         ; $4f2d: $82
    ldh a, [$f7]                                  ; $4f2e: $f0 $f7
    ld l, c                                       ; $4f30: $69
    add hl, sp                                    ; $4f31: $39
    ld a, d                                       ; $4f32: $7a
    ld [$4ef5], a                                 ; $4f33: $ea $f5 $4e
    sbc h                                         ; $4f36: $9c
    rra                                           ; $4f37: $1f
    add hl, hl                                    ; $4f38: $29
    rst $30                                       ; $4f39: $f7
    ld [hl], c                                    ; $4f3a: $71
    ld d, e                                       ; $4f3b: $53
    dec l                                         ; $4f3c: $2d
    ld l, a                                       ; $4f3d: $6f
    ld h, l                                       ; $4f3e: $65
    ld [c], a                                     ; $4f3f: $e2
    ld b, [hl]                                    ; $4f40: $46
    ld [c], a                                     ; $4f41: $e2
    ld b, e                                       ; $4f42: $43
    or c                                          ; $4f43: $b1
    or a                                          ; $4f44: $b7
    rlca                                          ; $4f45: $07
    dec e                                         ; $4f46: $1d
    ld [hl], d                                    ; $4f47: $72
    ld [hl], h                                    ; $4f48: $74
    ld [hl], c                                    ; $4f49: $71
    ld a, [hl]                                    ; $4f4a: $7e
    db $e4                                        ; $4f4b: $e4
    ld h, $0a                                     ; $4f4c: $26 $0a
    push hl                                       ; $4f4e: $e5
    inc d                                         ; $4f4f: $14
    db $ec                                        ; $4f50: $ec
    ret                                           ; $4f51: $c9


    ret                                           ; $4f52: $c9


    ld [hl], d                                    ; $4f53: $72
    dec c                                         ; $4f54: $0d
    ld b, h                                       ; $4f55: $44
    ld e, l                                       ; $4f56: $5d
    ld b, [hl]                                    ; $4f57: $46
    sub e                                         ; $4f58: $93
    bit 5, a                                      ; $4f59: $cb $6f
    or [hl]                                       ; $4f5b: $b6
    adc a                                         ; $4f5c: $8f
    sbc e                                         ; $4f5d: $9b
    ld a, [c]                                     ; $4f5e: $f2

jr_043_4f5f:
    db $fd                                        ; $4f5f: $fd
    ld a, [bc]                                    ; $4f60: $0a
    xor l                                         ; $4f61: $ad
    adc a                                         ; $4f62: $8f
    ld e, [hl]                                    ; $4f63: $5e
    ld a, a                                       ; $4f64: $7f
    ld e, a                                       ; $4f65: $5f
    ld c, l                                       ; $4f66: $4d
    db $ec                                        ; $4f67: $ec
    sbc l                                         ; $4f68: $9d
    dec de                                        ; $4f69: $1b
    pop hl                                        ; $4f6a: $e1
    scf                                           ; $4f6b: $37
    add h                                         ; $4f6c: $84
    add hl, hl                                    ; $4f6d: $29
    di                                            ; $4f6e: $f3
    db $e4                                        ; $4f6f: $e4
    db $e3                                        ; $4f70: $e3
    ld a, e                                       ; $4f71: $7b
    dec de                                        ; $4f72: $1b
    jp nz, $d3e8                                  ; $4f73: $c2 $e8 $d3

    ld [hl], d                                    ; $4f76: $72
    ld a, [bc]                                    ; $4f77: $0a
    ccf                                           ; $4f78: $3f
    ld c, a                                       ; $4f79: $4f
    ld [$8f1e], a                                 ; $4f7a: $ea $1e $8f
    db $e4                                        ; $4f7d: $e4
    and e                                         ; $4f7e: $a3
    sbc $90                                       ; $4f7f: $de $90
    ld a, [hl-]                                   ; $4f81: $3a
    ld h, e                                       ; $4f82: $63
    ld a, d                                       ; $4f83: $7a
    jr jr_043_4fd5                                ; $4f84: $18 $4f

    ld a, $b5                                     ; $4f86: $3e $b5
    ld e, a                                       ; $4f88: $5f
    or e                                          ; $4f89: $b3
    ld d, e                                       ; $4f8a: $53
    db $fd                                        ; $4f8b: $fd
    ld a, [bc]                                    ; $4f8c: $0a
    db $ed                                        ; $4f8d: $ed
    ld a, a                                       ; $4f8e: $7f
    ld h, h                                       ; $4f8f: $64
    inc h                                         ; $4f90: $24
    push hl                                       ; $4f91: $e5
    sub a                                         ; $4f92: $97
    push hl                                       ; $4f93: $e5
    cp [hl]                                       ; $4f94: $be
    sbc d                                         ; $4f95: $9a
    xor b                                         ; $4f96: $a8
    ld hl, $7291                                  ; $4f97: $21 $91 $72
    ld h, c                                       ; $4f9a: $61
    dec de                                        ; $4f9b: $1b
    ld a, [c]                                     ; $4f9c: $f2
    or d                                          ; $4f9d: $b2
    daa                                           ; $4f9e: $27
    add l                                         ; $4f9f: $85
    xor c                                         ; $4fa0: $a9
    cp d                                          ; $4fa1: $ba
    adc c                                         ; $4fa2: $89

jr_043_4fa3:
    cp d                                          ; $4fa3: $ba
    ld hl, sp-$22                                 ; $4fa4: $f8 $de
    add [hl]                                      ; $4fa6: $86
    jr nc, jr_043_4fa3                            ; $4fa7: $30 $fa

    dec d                                         ; $4fa9: $15
    xor l                                         ; $4faa: $ad
    xor $3d                                       ; $4fab: $ee $3d
    or $d9                                        ; $4fad: $f6 $d9
    inc de                                        ; $4faf: $13
    rlca                                          ; $4fb0: $07
    ld [hl], e                                    ; $4fb1: $73
    ld a, [hl]                                    ; $4fb2: $7e
    jr jr_043_4f5f                                ; $4fb3: $18 $aa

    jp hl                                         ; $4fb5: $e9


    db $d3                                        ; $4fb6: $d3
    ld a, [$a791]                                 ; $4fb7: $fa $91 $a7
    xor $ab                                       ; $4fba: $ee $ab
    ld [hl], c                                    ; $4fbc: $71
    rst $10                                       ; $4fbd: $d7
    rst $00                                       ; $4fbe: $c7
    di                                            ; $4fbf: $f3
    ld h, d                                       ; $4fc0: $62
    rst $00                                       ; $4fc1: $c7
    ld [hl], $24                                  ; $4fc2: $36 $24
    inc c                                         ; $4fc4: $0c
    push de                                       ; $4fc5: $d5
    db $e4                                        ; $4fc6: $e4
    db $d3                                        ; $4fc7: $d3
    sub [hl]                                      ; $4fc8: $96
    sbc l                                         ; $4fc9: $9d
    ld [hl], a                                    ; $4fca: $77
    ld b, h                                       ; $4fcb: $44
    adc l                                         ; $4fcc: $8d
    ld c, l                                       ; $4fcd: $4d
    cp a                                          ; $4fce: $bf
    ld [bc], a                                    ; $4fcf: $02
    cp [hl]                                       ; $4fd0: $be
    ld a, a                                       ; $4fd1: $7f
    ld d, c                                       ; $4fd2: $51
    ld b, e                                       ; $4fd3: $43
    ld [hl+], a                                   ; $4fd4: $22

jr_043_4fd5:
    push hl                                       ; $4fd5: $e5
    ld a, $be                                     ; $4fd6: $3e $be
    or a                                          ; $4fd8: $b7
    ld hl, $5a8c                                  ; $4fd9: $21 $8c $5a
    dec hl                                        ; $4fdc: $2b
    ld [hl], l                                    ; $4fdd: $75
    ld b, [hl]                                    ; $4fde: $46
    sub a                                         ; $4fdf: $97
    pop de                                        ; $4fe0: $d1
    or h                                          ; $4fe1: $b4
    adc e                                         ; $4fe2: $8b
    adc h                                         ; $4fe3: $8c
    ld h, h                                       ; $4fe4: $64
    ld a, e                                       ; $4fe5: $7b
    ld hl, sp+$27                                 ; $4fe6: $f8 $27
    db $e4                                        ; $4fe8: $e4
    dec d                                         ; $4fe9: $15

Jump_043_4fea:
    sbc [hl]                                      ; $4fea: $9e
    ld a, [hl]                                    ; $4feb: $7e
    dec b                                         ; $4fec: $05
    or l                                          ; $4fed: $b5
    daa                                           ; $4fee: $27
    dec b                                         ; $4fef: $05
    jp nz, $13c7                                  ; $4ff0: $c2 $c7 $13

    ld [hl], l                                    ; $4ff3: $75
    add [hl]                                      ; $4ff4: $86
    jr c, jr_043_5036                             ; $4ff5: $38 $3f

    ld d, d                                       ; $4ff7: $52
    inc hl                                        ; $4ff8: $23
    ld l, d                                       ; $4ff9: $6a
    ld c, b                                       ; $4ffa: $48
    jp z, $e593                                   ; $4ffb: $ca $93 $e5

    adc l                                         ; $4ffe: $8d
    rst $08                                       ; $4fff: $cf
    sub b                                         ; $5000: $90
    dec b                                         ; $5001: $05
    ld d, $2a                                     ; $5002: $16 $2a
    rra                                           ; $5004: $1f
    rra                                           ; $5005: $1f
    adc d                                         ; $5006: $8a
    jp nz, $8237                                  ; $5007: $c2 $37 $82

    ld d, h                                       ; $500a: $54
    or e                                          ; $500b: $b3

jr_043_500c:
    ld a, c                                       ; $500c: $79
    ld b, d                                       ; $500d: $42
    ld c, l                                       ; $500e: $4d
    add e                                         ; $500f: $83
    jr nc, jr_043_500c                            ; $5010: $30 $fa

    dec d                                         ; $5012: $15
    cp [hl]                                       ; $5013: $be
    rra                                           ; $5014: $1f
    dec [hl]                                      ; $5015: $35
    inc h                                         ; $5016: $24
    or d                                          ; $5017: $b2
    ld c, h                                       ; $5018: $4c
    add hl, hl                                    ; $5019: $29
    inc de                                        ; $501a: $13
    or [hl]                                       ; $501b: $b6
    ld hl, $10df                                  ; $501c: $21 $df $10
    rst $18                                       ; $501f: $df
    db $db                                        ; $5020: $db
    db $10                                        ; $5021: $10
    ld b, [hl]                                    ; $5022: $46
    xor l                                         ; $5023: $ad
    dec d                                         ; $5024: $15
    xor l                                         ; $5025: $ad
    adc d                                         ; $5026: $8a
    di                                            ; $5027: $f3
    inc hl                                        ; $5028: $23
    dec b                                         ; $5029: $05
    reti                                          ; $502a: $d9


    sub e                                         ; $502b: $93
    ld a, [c]                                     ; $502c: $f2
    dec bc                                        ; $502d: $0b
    ld c, d                                       ; $502e: $4a
    add hl, sp                                    ; $502f: $39
    ld e, l                                       ; $5030: $5d
    ld h, h                                       ; $5031: $64
    inc h                                         ; $5032: $24
    adc h                                         ; $5033: $8c
    db $ec                                        ; $5034: $ec
    adc c                                         ; $5035: $89

jr_043_5036:
    ld a, [hl-]                                   ; $5036: $3a
    jp $a9f5                                      ; $5037: $c3 $f5 $a9


    inc sp                                        ; $503a: $33
    ld [de], a                                    ; $503b: $12
    rst $38                                       ; $503c: $ff
    add a                                         ; $503d: $87
    ld d, c                                       ; $503e: $51
    dec l                                         ; $503f: $2d
    inc de                                        ; $5040: $13
    push af                                       ; $5041: $f5
    ld e, c                                       ; $5042: $59
    ld h, b                                       ; $5043: $60
    ld a, [bc]                                    ; $5044: $0a
    add [hl]                                      ; $5045: $86
    ld a, [hl]                                    ; $5046: $7e
    dec b                                         ; $5047: $05
    cp [hl]                                       ; $5048: $be
    rra                                           ; $5049: $1f
    dec [hl]                                      ; $504a: $35
    inc h                                         ; $504b: $24
    or d                                          ; $504c: $b2
    ld c, h                                       ; $504d: $4c
    add hl, hl                                    ; $504e: $29
    rst $30                                       ; $504f: $f7
    push de                                       ; $5050: $d5
    add h                                         ; $5051: $84
    ld l, l                                       ; $5052: $6d
    ret z                                         ; $5053: $c8

    scf                                           ; $5054: $37
    call nz, Call_000_36f7                        ; $5055: $c4 $f7 $36
    add h                                         ; $5058: $84
    and c                                         ; $5059: $a1
    bit 4, d                                      ; $505a: $cb $62
    db $e3                                        ; $505c: $e3
    ld b, l                                       ; $505d: $45
    add hl, hl                                    ; $505e: $29
    ld h, e                                       ; $505f: $63
    xor b                                         ; $5060: $a8
    or l                                          ; $5061: $b5
    ld [bc], a                                    ; $5062: $02
    or l                                          ; $5063: $b5
    daa                                           ; $5064: $27
    dec b                                         ; $5065: $05
    jp nz, $13c7                                  ; $5066: $c2 $c7 $13

    ld [hl], l                                    ; $5069: $75
    add [hl]                                      ; $506a: $86
    jr c, jr_043_50ac                             ; $506b: $38 $3f

    ld d, d                                       ; $506d: $52
    inc hl                                        ; $506e: $23
    add l                                         ; $506f: $85
    sbc a                                         ; $5070: $9f
    daa                                           ; $5071: $27
    adc $7f                                       ; $5072: $ce $7f
    ld e, a                                       ; $5074: $5f
    dec a                                         ; $5075: $3d
    ld c, a                                       ; $5076: $4f
    call nc, $87c7                                ; $5077: $d4 $c7 $87
    cp $76                                        ; $507a: $fe $76
    ld a, [hl]                                    ; $507c: $7e
    ld h, h                                       ; $507d: $64
    ld a, c                                       ; $507e: $79
    ld h, e                                       ; $507f: $63
    db $f4                                        ; $5080: $f4
    xor c                                         ; $5081: $a9
    inc sp                                        ; $5082: $33
    sub d                                         ; $5083: $92
    ld [hl-], a                                   ; $5084: $32
    add hl, hl                                    ; $5085: $29
    ld c, b                                       ; $5086: $48
    cp c                                          ; $5087: $b9
    adc a                                         ; $5088: $8f
    halt                                          ; $5089: $76
    push af                                       ; $508a: $f5
    ld h, h                                       ; $508b: $64
    ld a, c                                       ; $508c: $79
    db $e3                                        ; $508d: $e3
    db $e3                                        ; $508e: $e3
    jp hl                                         ; $508f: $e9


    ld d, a                                       ; $5090: $57
    xor l                                         ; $5091: $ad
    add e                                         ; $5092: $83
    sbc h                                         ; $5093: $9c
    inc l                                         ; $5094: $2c
    ld l, a                                       ; $5095: $6f
    ei                                            ; $5096: $fb
    dec c                                         ; $5097: $0d
    ld [hl], c                                    ; $5098: $71
    inc hl                                        ; $5099: $23
    pop af                                        ; $509a: $f1
    cp l                                          ; $509b: $bd
    dec c                                         ; $509c: $0d
    ld h, c                                       ; $509d: $61
    db $f4                                        ; $509e: $f4
    ld l, c                                       ; $509f: $69
    add hl, sp                                    ; $50a0: $39
    ld d, h                                       ; $50a1: $54
    inc a                                         ; $50a2: $3c
    ld d, b                                       ; $50a3: $50
    pop bc                                        ; $50a4: $c1
    inc [hl]                                      ; $50a5: $34
    ld [$6bf1], sp                                ; $50a6: $08 $f1 $6b
    xor [hl]                                      ; $50a9: $ae
    ld l, l                                       ; $50aa: $6d
    rst $28                                       ; $50ab: $ef

jr_043_50ac:
    inc l                                         ; $50ac: $2c
    ld [hl], $5e                                  ; $50ad: $36 $5e
    sub h                                         ; $50af: $94
    ld [hl-], a                                   ; $50b0: $32
    ld d, $df                                     ; $50b1: $16 $df
    db $db                                        ; $50b3: $db
    db $10                                        ; $50b4: $10
    ld b, [hl]                                    ; $50b5: $46
    ld l, d                                       ; $50b6: $6a
    db $e4                                        ; $50b7: $e4
    db $d3                                        ; $50b8: $d3
    sbc $88                                       ; $50b9: $de $88
    or d                                          ; $50bb: $b2
    rst $28                                       ; $50bc: $ef
    ld d, e                                       ; $50bd: $53

Jump_043_50be:
    ei                                            ; $50be: $fb
    ld h, e                                       ; $50bf: $63
    rst $20                                       ; $50c0: $e7
    ld b, b                                       ; $50c1: $40
    ld d, d                                       ; $50c2: $52
    sbc [hl]                                      ; $50c3: $9e
    ld d, b                                       ; $50c4: $50
    adc c                                         ; $50c5: $89
    ld b, [hl]                                    ; $50c6: $46
    cp l                                          ; $50c7: $bd
    inc de                                        ; $50c8: $13
    ld l, d                                       ; $50c9: $6a
    ld a, [de]                                    ; $50ca: $1a
    add h                                         ; $50cb: $84
    ld de, $3bf5                                  ; $50cc: $11 $f5 $3b
    db $ed                                        ; $50cf: $ed
    sbc a                                         ; $50d0: $9f
    ld e, h                                       ; $50d1: $5c
    ld h, c                                       ; $50d2: $61
    ret c                                         ; $50d3: $d8

    ld b, h                                       ; $50d4: $44
    ld h, c                                       ; $50d5: $61
    rst $28                                       ; $50d6: $ef
    ld c, a                                       ; $50d7: $4f
    ei                                            ; $50d8: $fb
    xor a                                         ; $50d9: $af
    db $dd                                        ; $50da: $dd
    rst $30                                       ; $50db: $f7
    xor c                                         ; $50dc: $a9
    dec bc                                        ; $50dd: $0b
    ld [hl], e                                    ; $50de: $73
    cp $7a                                        ; $50df: $fe $7a
    ld b, e                                       ; $50e1: $43
    adc $06                                       ; $50e2: $ce $06
    ld sp, hl                                     ; $50e4: $f9
    adc h                                         ; $50e5: $8c
    sub b                                         ; $50e6: $90
    ld d, b                                       ; $50e7: $50
    or b                                          ; $50e8: $b0
    dec a                                         ; $50e9: $3d
    or l                                          ; $50ea: $b5
    ld d, [hl]                                    ; $50eb: $56
    cp [hl]                                       ; $50ec: $be
    rla                                           ; $50ed: $17
    or [hl]                                       ; $50ee: $b6
    ld h, a                                       ; $50ef: $67
    cp $be                                        ; $50f0: $fe $be
    rst $28                                       ; $50f2: $ef
    and e                                         ; $50f3: $a3
    or b                                          ; $50f4: $b0
    rst $30                                       ; $50f5: $f7
    and a                                         ; $50f6: $a7
    xor $81                                       ; $50f7: $ee $81
    db $ed                                        ; $50f9: $ed
    db $d3                                        ; $50fa: $d3
    and $ed                                       ; $50fb: $e6 $ed
    add hl, hl                                    ; $50fd: $29
    db $e3                                        ; $50fe: $e3
    db $fd                                        ; $50ff: $fd
    adc l                                         ; $5100: $8d
    ld a, [hl]                                    ; $5101: $7e
    dec b                                         ; $5102: $05
    ld l, l                                       ; $5103: $6d
    add h                                         ; $5104: $84
    sbc h                                         ; $5105: $9c
    db $d3                                        ; $5106: $d3
    push bc                                       ; $5107: $c5
    ld c, l                                       ; $5108: $4d
    add l                                         ; $5109: $85
    db $ec                                        ; $510a: $ec
    ld c, c                                       ; $510b: $49
    ld sp, hl                                     ; $510c: $f9
    dec b                                         ; $510d: $05
    adc h                                         ; $510e: $8c
    ld e, d                                       ; $510f: $5a
    dec hl                                        ; $5110: $2b
    ld [hl], l                                    ; $5111: $75
    ld b, [hl]                                    ; $5112: $46
    ld [c], a                                     ; $5113: $e2
    rst $38                                       ; $5114: $ff
    ld e, h                                       ; $5115: $5c
    or l                                          ; $5116: $b5
    adc h                                         ; $5117: $8c
    pop af                                        ; $5118: $f1
    dec bc                                        ; $5119: $0b
    pop af                                        ; $511a: $f1
    ei                                            ; $511b: $fb
    call nc, $ee3d                                ; $511c: $d4 $3d $ee
    ei                                            ; $511f: $fb
    ld a, $f0                                     ; $5120: $3e $f0
    ld d, a                                       ; $5122: $57
    cp d                                          ; $5123: $ba
    ld hl, sp-$30                                 ; $5124: $f8 $d0
    rst $18                                       ; $5126: $df
    adc [hl]                                      ; $5127: $8e
    jp z, $c1c4                                   ; $5128: $ca $c4 $c1

    sbc h                                         ; $512b: $9c
    rra                                           ; $512c: $1f
    ld d, [hl]                                    ; $512d: $56
    ld c, a                                       ; $512e: $4f
    call nc, $a8c5                                ; $512f: $d4 $c5 $a8
    cp $6d                                        ; $5132: $fe $6d
    ld a, a                                       ; $5134: $7f
    cp a                                          ; $5135: $bf
    ld [bc], a                                    ; $5136: $02
    ld [hl], l                                    ; $5137: $75
    ld d, b                                       ; $5138: $50
    ld a, [bc]                                    ; $5139: $0a
    sub l                                         ; $513a: $95
    ret                                           ; $513b: $c9


    ld b, d                                       ; $513c: $42
    db $eb                                        ; $513d: $eb
    adc a                                         ; $513e: $8f
    ld d, c                                       ; $513f: $51
    db $fd                                        ; $5140: $fd
    dec de                                        ; $5141: $1b
    or d                                          ; $5142: $b2
    ccf                                           ; $5143: $3f
    ld [hl], l                                    ; $5144: $75
    rrca                                          ; $5145: $0f
    ld l, h                                       ; $5146: $6c
    rst $18                                       ; $5147: $df
    rst $00                                       ; $5148: $c7
    rst $30                                       ; $5149: $f7
    ld [hl], $84                                  ; $514a: $36 $84
    sub c                                         ; $514c: $91
    ld a, [c]                                     ; $514d: $f2
    ld d, [hl]                                    ; $514e: $56
    ld c, a                                       ; $514f: $4f
    call nc, $8ec5                                ; $5150: $d4 $c5 $8e
    rst $00                                       ; $5153: $c7
    ld h, h                                       ; $5154: $64
    and d                                         ; $5155: $a2
    and [hl]                                      ; $5156: $a6
    ld a, d                                       ; $5157: $7a
    cp c                                          ; $5158: $b9
    ld a, $be                                     ; $5159: $3e $be
    inc hl                                        ; $515b: $23
    inc de                                        ; $515c: $13
    rlca                                          ; $515d: $07
    db $e3                                        ; $515e: $e3
    adc a                                         ; $515f: $8f
    di                                            ; $5160: $f3
    inc hl                                        ; $5161: $23
    db $e4                                        ; $5162: $e4
    sbc b                                         ; $5163: $98
    push de                                       ; $5164: $d5
    inc de                                        ; $5165: $13
    rst $28                                       ; $5166: $ef
    dec de                                        ; $5167: $1b
    ld b, d                                       ; $5168: $42
    push hl                                       ; $5169: $e5
    and e                                         ; $516a: $a3
    rst $00                                       ; $516b: $c7
    sbc $1f                                       ; $516c: $de $1f
    rst $20                                       ; $516e: $e7
    cp a                                          ; $516f: $bf
    ld [hl], a                                    ; $5170: $77
    adc $7f                                       ; $5171: $ce $7f
    or b                                          ; $5173: $b0
    rst $20                                       ; $5174: $e7
    adc a                                         ; $5175: $8f

Call_043_5176:
    dec de                                        ; $5176: $1b
    add hl, bc                                    ; $5177: $09
    add hl, sp                                    ; $5178: $39
    rst $10                                       ; $5179: $d7
    xor a                                         ; $517a: $af
    cp [hl]                                       ; $517b: $be
    ret z                                         ; $517c: $c8

    add $a5                                       ; $517d: $c6 $a5
    ld a, h                                       ; $517f: $7c
    sbc h                                         ; $5180: $9c
    rra                                           ; $5181: $1f
    pop af                                        ; $5182: $f1
    cp l                                          ; $5183: $bd
    dec c                                         ; $5184: $0d
    ld h, c                                       ; $5185: $61
    and h                                         ; $5186: $a4
    ld b, [hl]                                    ; $5187: $46
    sub [hl]                                      ; $5188: $96
    scf                                           ; $5189: $37
    ld a, $1e                                     ; $518a: $3e $1e
    ld e, l                                       ; $518c: $5d
    ld a, [hl]                                    ; $518d: $7e
    rst $28                                       ; $518e: $ef
    or c                                          ; $518f: $b1
    rst $08                                       ; $5190: $cf
    sbc [hl]                                      ; $5191: $9e
    sub h                                         ; $5192: $94

jr_043_5193:
    rst $08                                       ; $5193: $cf
    adc e                                         ; $5194: $8b
    di                                            ; $5195: $f3
    inc hl                                        ; $5196: $23
    ld [hl], l                                    ; $5197: $75
    adc a                                         ; $5198: $8f
    ld b, a                                       ; $5199: $47

jr_043_519a:
    ld a, [$c278]                                 ; $519a: $fa $78 $c2
    sbc h                                         ; $519d: $9c
    rra                                           ; $519e: $1f
    ld d, [hl]                                    ; $519f: $56
    ld c, a                                       ; $51a0: $4f
    call nc, Call_000_3165                        ; $51a1: $d4 $65 $31
    adc b                                         ; $51a4: $88
    add d                                         ; $51a5: $82
    ld hl, $53fb                                  ; $51a6: $21 $fb $53
    rst $30                                       ; $51a9: $f7
    ret nz                                        ; $51aa: $c0

    or $29                                        ; $51ab: $f6 $29
    db $fc                                        ; $51ad: $fc
    ld [hl-], a                                   ; $51ae: $32
    call z, $b9a8                                 ; $51af: $cc $a8 $b9
    ld [bc], a                                    ; $51b2: $02
    xor l                                         ; $51b3: $ad
    add e                                         ; $51b4: $83
    sbc h                                         ; $51b5: $9c
    cp h                                          ; $51b6: $bc
    reti                                          ; $51b7: $d9


    sub c                                         ; $51b8: $91
    ld l, a                                       ; $51b9: $6f
    ret z                                         ; $51ba: $c8

    rst $28                                       ; $51bb: $ef
    db $fd                                        ; $51bc: $fd
    xor c                                         ; $51bd: $a9
    ld a, e                                       ; $51be: $7b
    ld h, b                                       ; $51bf: $60
    ei                                            ; $51c0: $fb
    inc l                                         ; $51c1: $2c
    halt                                          ; $51c2: $76
    push de                                       ; $51c3: $d5
    ld b, a                                       ; $51c4: $47
    ld e, l                                       ; $51c5: $5d
    ld [hl], $bd                                  ; $51c6: $36 $bd
    ld a, [hl]                                    ; $51c8: $7e
    dec b                                         ; $51c9: $05
    ld [hl], l                                    ; $51ca: $75
    ld b, [hl]                                    ; $51cb: $46
    ld d, d                                       ; $51cc: $52
    jr nz, jr_043_5193                            ; $51cd: $20 $c4

    adc a                                         ; $51cf: $8f
    cp d                                          ; $51d0: $ba
    ld d, h                                       ; $51d1: $54
    add sp, $57                                   ; $51d2: $e8 $57
    sbc l                                         ; $51d4: $9d
    jp nz, $feac                                  ; $51d5: $c2 $ac $fe

    cp h                                          ; $51d8: $bc
    jr c, jr_043_519a                             ; $51d9: $38 $bf

    rst $00                                       ; $51db: $c7
    ld c, l                                       ; $51dc: $4d
    call $2d15                                    ; $51dd: $cd $15 $2d
    ld h, a                                       ; $51e0: $67
    db $ec                                        ; $51e1: $ec
    ei                                            ; $51e2: $fb
    or h                                          ; $51e3: $b4
    dec l                                         ; $51e4: $2d

jr_043_51e5:
    ld l, d                                       ; $51e5: $6a
    ld c, d                                       ; $51e6: $4a
    cp c                                          ; $51e7: $b9
    xor a                                         ; $51e8: $af
    ld h, $b7                                     ; $51e9: $26 $b7
    ld d, e                                       ; $51eb: $53
    cp l                                          ; $51ec: $bd
    jr nc, jr_043_51e5                            ; $51ed: $30 $f6

    sbc [hl]                                      ; $51ef: $9e
    and b                                         ; $51f0: $a0
    rst $28                                       ; $51f1: $ef
    ei                                            ; $51f2: $fb
    dec d                                         ; $51f3: $15
    dec e                                         ; $51f4: $1d
    inc d                                         ; $51f5: $14
    rst $30                                       ; $51f6: $f7
    ld d, [hl]                                    ; $51f7: $56
    dec hl                                        ; $51f8: $2b
    cp [hl]                                       ; $51f9: $be
    cp b                                          ; $51fa: $b8
    ld hl, sp-$30                                 ; $51fb: $f8 $d0
    rst $10                                       ; $51fd: $d7
    or h                                          ; $51fe: $b4
    ld l, e                                       ; $51ff: $6b
    and b                                         ; $5200: $a0
    ld d, [hl]                                    ; $5201: $56
    rst $18                                       ; $5202: $df
    rst $30                                       ; $5203: $f7
    ld l, c                                       ; $5204: $69
    jp $ba7f                                      ; $5205: $c3 $7f $ba


    jr c, jr_043_5249                             ; $5208: $38 $3f

    ld [c], a                                     ; $520a: $e2
    and [hl]                                      ; $520b: $a6
    ld a, h                                       ; $520c: $7c
    ld a, [bc]                                    ; $520d: $0a
    ccf                                           ; $520e: $3f
    inc hl                                        ; $520f: $23
    sbc $77                                       ; $5210: $de $77
    db $10                                        ; $5212: $10
    dec [hl]                                      ; $5213: $35
    or l                                          ; $5214: $b5
    ld d, [hl]                                    ; $5215: $56
    ld [hl], l                                    ; $5216: $75
    ld c, $c2                                     ; $5217: $0e $c2
    ret nc                                        ; $5219: $d0

    and l                                         ; $521a: $a5
    ld c, $c8                                     ; $521b: $0e $c8
    db $db                                        ; $521d: $db
    dec de                                        ; $521e: $1b
    cp d                                          ; $521f: $ba
    ret z                                         ; $5220: $c8

jr_043_5221:
    ld b, c                                       ; $5221: $41
    jr jr_043_5221                                ; $5222: $18 $fd

    ld a, [bc]                                    ; $5224: $0a
    ld [hl], l                                    ; $5225: $75
    ld b, [hl]                                    ; $5226: $46
    ld a, [c]                                     ; $5227: $f2
    and h                                         ; $5228: $a4
    add c                                         ; $5229: $81
    sub c                                         ; $522a: $91
    inc de                                        ; $522b: $13
    add [hl]                                      ; $522c: $86
    db $10                                        ; $522d: $10
    ld l, a                                       ; $522e: $6f
    inc b                                         ; $522f: $04
    ld d, c                                       ; $5230: $51
    rla                                           ; $5231: $17
    ld e, d                                       ; $5232: $5a
    call c, $4219                                 ; $5233: $dc $19 $42
    push bc                                       ; $5236: $c5
    db $e3                                        ; $5237: $e3
    scf                                           ; $5238: $37
    db $db                                        ; $5239: $db
    add a                                         ; $523a: $87
    sbc h                                         ; $523b: $9c
    call $0baf                                    ; $523c: $cd $af $0b
    add hl, bc                                    ; $523f: $09
    sbc e                                         ; $5240: $9b
    ld e, d                                       ; $5241: $5a
    dec hl                                        ; $5242: $2b

jr_043_5243:
    ld [hl], l                                    ; $5243: $75
    ld b, [hl]                                    ; $5244: $46
    rla                                           ; $5245: $17
    sbc c                                         ; $5246: $99
    ld a, $9d                                     ; $5247: $3e $9d

jr_043_5249:
    cp $e5                                        ; $5249: $fe $e5
    or e                                          ; $524b: $b3
    pop bc                                        ; $524c: $c1
    inc a                                         ; $524d: $3c
    cp d                                          ; $524e: $ba
    call nc, Call_043_7901                        ; $524f: $d4 $01 $79
    ld a, e                                       ; $5252: $7b
    and e                                         ; $5253: $a3
    and $0a                                       ; $5254: $e6 $0a
    ld [hl], l                                    ; $5256: $75
    ld b, [hl]                                    ; $5257: $46
    or d                                          ; $5258: $b2
    inc c                                         ; $5259: $0c
    add e                                         ; $525a: $83
    ld de, $dc5a                                  ; $525b: $11 $5a $dc
    add hl, de                                    ; $525e: $19
    ld a, [$7a74]                                 ; $525f: $fa $74 $7a
    ld e, c                                       ; $5262: $59
    ld d, b                                       ; $5263: $50
    sbc h                                         ; $5264: $9c
    rra                                           ; $5265: $1f
    or $22                                        ; $5266: $f6 $22
    sub e                                         ; $5268: $93
    rla                                           ; $5269: $17
    rst $20                                       ; $526a: $e7
    ld b, a                                       ; $526b: $47
    ld a, h                                       ; $526c: $7c
    jr z, jr_043_5279                             ; $526d: $28 $0a

    ld a, a                                       ; $526f: $7f
    ret z                                         ; $5270: $c8

    reti                                          ; $5271: $d9


    db $fc                                        ; $5272: $fc
    ld b, c                                       ; $5273: $41
    jp c, $f3b2                                   ; $5274: $da $b2 $f3

    adc [hl]                                      ; $5277: $8e
    xor b                                         ; $5278: $a8

jr_043_5279:
    or c                                          ; $5279: $b1
    ret                                           ; $527a: $c9


    ld [bc], a                                    ; $527b: $02
    ld d, e                                       ; $527c: $53
    or b                                          ; $527d: $b0
    ld a, d                                       ; $527e: $7a
    ld a, [c]                                     ; $527f: $f2
    sbc e                                         ; $5280: $9b
    db $ed                                        ; $5281: $ed

Jump_043_5282:
    or d                                          ; $5282: $b2
    ld d, b                                       ; $5283: $50
    pop hl                                        ; $5284: $e1
    db $eb                                        ; $5285: $eb
    ld d, a                                       ; $5286: $57
    ld [hl], l                                    ; $5287: $75
    ld b, [hl]                                    ; $5288: $46
    ld [c], a                                     ; $5289: $e2
    ld a, [hl]                                    ; $528a: $7e
    cp c                                          ; $528b: $b9
    ld [c], a                                     ; $528c: $e2
    ld c, [hl]                                    ; $528d: $4e
    sub a                                         ; $528e: $97
    ld a, [de]                                    ; $528f: $1a
    and c                                         ; $5290: $a1
    ld a, [c]                                     ; $5291: $f2
    pop af                                        ; $5292: $f1
    cp [hl]                                       ; $5293: $be
    ld [hl], e                                    ; $5294: $73
    db $10                                        ; $5295: $10
    push af                                       ; $5296: $f5
    cp c                                          ; $5297: $b9
    ld l, d                                       ; $5298: $6a
    add hl, de                                    ; $5299: $19
    db $e3                                        ; $529a: $e3
    rla                                           ; $529b: $17
    ld b, [hl]                                    ; $529c: $46
    cp a                                          ; $529d: $bf
    ld [bc], a                                    ; $529e: $02
    ld [hl], l                                    ; $529f: $75
    ld b, [hl]                                    ; $52a0: $46
    ld b, d                                       ; $52a1: $42
    ld e, [hl]                                    ; $52a2: $5e
    ld d, $58                                     ; $52a3: $16 $58
    dec b                                         ; $52a5: $05
    ld h, [hl]                                    ; $52a6: $66
    ld e, b                                       ; $52a7: $58
    db $fd                                        ; $52a8: $fd
    ld d, c                                       ; $52a9: $51
    rla                                           ; $52aa: $17
    rst $28                                       ; $52ab: $ef
    db $db                                        ; $52ac: $db
    sbc [hl]                                      ; $52ad: $9e
    ld a, $b5                                     ; $52ae: $3e $b5
    daa                                           ; $52b0: $27
    ld d, a                                       ; $52b1: $57
    dec l                                         ; $52b2: $2d
    ld l, a                                       ; $52b3: $6f
    rst $08                                       ; $52b4: $cf
    inc de                                        ; $52b5: $13
    push af                                       ; $52b6: $f5
    ld h, c                                       ; $52b7: $61
    db $e4                                        ; $52b8: $e4
    jp Jump_043_5810                              ; $52b9: $c3 $10 $58


    jr jr_043_5243                                ; $52bc: $18 $85

    ccf                                           ; $52be: $3f
    xor a                                         ; $52bf: $af
    db $ed                                        ; $52c0: $ed
    bit 5, a                                      ; $52c1: $cb $6f
    or [hl]                                       ; $52c3: $b6
    db $eb                                        ; $52c4: $eb
    db $d3                                        ; $52c5: $d3
    or $f4                                        ; $52c6: $f6 $f4
    ld a, l                                       ; $52c8: $7d
    sbc a                                         ; $52c9: $9f
    ld [hl-], a                                   ; $52ca: $32
    ld [hl-], a                                   ; $52cb: $32
    ld e, c                                       ; $52cc: $59
    ld l, h                                       ; $52cd: $6c
    add h                                         ; $52ce: $84
    daa                                           ; $52cf: $27
    rra                                           ; $52d0: $1f
    rst $28                                       ; $52d1: $ef
    dec de                                        ; $52d2: $1b
    ld a, [c]                                     ; $52d3: $f2
    ld e, c                                       ; $52d4: $59
    xor b                                         ; $52d5: $a8
    ld h, $57                                     ; $52d6: $26 $57
    ld [hl], e                                    ; $52d8: $73
    dec b                                         ; $52d9: $05
    db $ed                                        ; $52da: $ed
    ld e, a                                       ; $52db: $5f
    jp z, $ef72                                   ; $52dc: $ca $72 $ef

    and b                                         ; $52df: $a0
    ld c, e                                       ; $52e0: $4b
    dec e                                         ; $52e1: $1d
    sub b                                         ; $52e2: $90
    or a                                          ; $52e3: $b7
    scf                                           ; $52e4: $37
    ld [hl], h                                    ; $52e5: $74
    xor c                                         ; $52e6: $a9
    ld a, $32                                     ; $52e7: $3e $32
    ld [de], a                                    ; $52e9: $12
    rst $38                                       ; $52ea: $ff
    db $e4                                        ; $52eb: $e4
    scf                                           ; $52ec: $37
    db $db                                        ; $52ed: $db
    and a                                         ; $52ee: $a7
    jr c, @+$6e                                   ; $52ef: $38 $6c

    cp $3e                                        ; $52f1: $fe $3e
    ld [hl], l                                    ; $52f3: $75
    pop bc                                        ; $52f4: $c1
    halt                                          ; $52f5: $76
    sbc $73                                       ; $52f6: $de $73
    or h                                          ; $52f8: $b4
    and h                                         ; $52f9: $a4
    db $e3                                        ; $52fa: $e3
    pop hl                                        ; $52fb: $e1
    rst $18                                       ; $52fc: $df
    or h                                          ; $52fd: $b4
    call nc, $015c                                ; $52fe: $d4 $5c $01
    ld [hl], l                                    ; $5301: $75
    xor a                                         ; $5302: $af
    add c                                         ; $5303: $81
    ldh a, [$9b]                                  ; $5304: $f0 $9b
    cp d                                          ; $5306: $ba
    cp b                                          ; $5307: $b8
    ld e, a                                       ; $5308: $5f
    adc $fe                                       ; $5309: $ce $fe
    ld [hl], h                                    ; $530b: $74
    xor c                                         ; $530c: $a9
    inc bc                                        ; $530d: $03
    ld a, [c]                                     ; $530e: $f2
    or $46                                        ; $530f: $f6 $46
    cp a                                          ; $5311: $bf
    ld [bc], a                                    ; $5312: $02
    dec l                                         ; $5313: $2d
    and a                                         ; $5314: $a7
    adc h                                         ; $5315: $8c
    ld [hl], e                                    ; $5316: $73
    cp $a3                                        ; $5317: $fe $a3
    push hl                                       ; $5319: $e5
    ld l, e                                       ; $531a: $6b
    and [hl]                                      ; $531b: $a6
    xor $f1                                       ; $531c: $ee $f1
    ld c, b                                       ; $531e: $48
    inc d                                         ; $531f: $14
    ld c, b                                       ; $5320: $48
    rrca                                          ; $5321: $0f
    sub h                                         ; $5322: $94
    ld [bc], a                                    ; $5323: $02
    ld b, e                                       ; $5324: $43
    or h                                          ; $5325: $b4
    xor e                                         ; $5326: $ab
    daa                                           ; $5327: $27
    db $10                                        ; $5328: $10
    or [hl]                                       ; $5329: $b6
    rst $20                                       ; $532a: $e7
    jp hl                                         ; $532b: $e9


    ld d, a                                       ; $532c: $57
    ld [hl], l                                    ; $532d: $75
    ld b, [hl]                                    ; $532e: $46
    ld [c], a                                     ; $532f: $e2
    inc c                                         ; $5330: $0c
    ld l, d                                       ; $5331: $6a
    ld [c], a                                     ; $5332: $e2
    db $fc                                        ; $5333: $fc
    ld c, b                                       ; $5334: $48
    cp c                                          ; $5335: $b9
    rst $08                                       ; $5336: $cf
    ld c, c                                       ; $5337: $49
    inc [hl]                                      ; $5338: $34
    ld a, e                                       ; $5339: $7b
    dec [hl]                                      ; $533a: $35
    ld d, c                                       ; $533b: $51
    rla                                           ; $533c: $17
    ld [de], a                                    ; $533d: $12
    ld a, [bc]                                    ; $533e: $0a
    and $ae                                       ; $533f: $e6 $ae
    ld e, a                                       ; $5341: $5f
    ld bc, $0d75                                  ; $5342: $01 $75 $0d
    add l                                         ; $5345: $85
    ld b, a                                       ; $5346: $47
    sub a                                         ; $5347: $97
    jp c, Jump_043_466f                           ; $5348: $da $6f $46

    ld b, b                                       ; $534b: $40
    sub a                                         ; $534c: $97

jr_043_534d:
    sub e                                         ; $534d: $93
    inc hl                                        ; $534e: $23
    sbc $e7                                       ; $534f: $de $e7
    ld d, e                                       ; $5351: $53
    add sp, -$38                                  ; $5352: $e8 $c8
    dec de                                        ; $5354: $1b
    ld [hl], d                                    ; $5355: $72
    dec sp                                        ; $5356: $3b
    sbc $fd                                       ; $5357: $de $fd
    sub h                                         ; $5359: $94
    and a                                         ; $535a: $a7
    ld e, a                                       ; $535b: $5f
    ld bc, $4675                                  ; $535c: $01 $75 $46
    or d                                          ; $535f: $b2
    dec a                                         ; $5360: $3d
    db $fc                                        ; $5361: $fc
    sub e                                         ; $5362: $93
    ld h, l                                       ; $5363: $65
    adc h                                         ; $5364: $8c
    sbc a                                         ; $5365: $9f
    and a                                         ; $5366: $a7
    ld h, [hl]                                    ; $5367: $66
    ld e, d                                       ; $5368: $5a
    rra                                           ; $5369: $1f
    cp l                                          ; $536a: $bd
    cp $be                                        ; $536b: $fe $be
    sbc d                                         ; $536d: $9a
    ldh a, [$98]                                  ; $536e: $f0 $98
    cp h                                          ; $5370: $bc
    ld hl, $ea27                                  ; $5371: $21 $27 $ea
    ret nz                                        ; $5374: $c0

    ld [hl], $35                                  ; $5375: $36 $35
    ld d, a                                       ; $5377: $57
    cp [hl]                                       ; $5378: $be
    ld e, $35                                     ; $5379: $1e $35
    ld a, [c]                                     ; $537b: $f2
    ld c, d                                       ; $537c: $4a
    adc l                                         ; $537d: $8d
    ld d, l                                       ; $537e: $55
    db $10                                        ; $537f: $10
    ld a, [hl]                                    ; $5380: $7e
    sbc [hl]                                      ; $5381: $9e
    ld a, $ad                                     ; $5382: $3e $ad
    adc d                                         ; $5384: $8a
    cp d                                          ; $5385: $ba
    xor a                                         ; $5386: $af
    and [hl]                                      ; $5387: $a6
    and $0a                                       ; $5388: $e6 $0a
    db $ed                                        ; $538a: $ed
    ld a, l                                       ; $538b: $7d
    ld d, $1b                                     ; $538c: $16 $1b
    cpl                                           ; $538e: $2f
    ld c, d                                       ; $538f: $4a
    add hl, de                                    ; $5390: $19
    ld b, e                                       ; $5391: $43
    add hl, hl                                    ; $5392: $29
    sbc a                                         ; $5393: $9f
    or $5d                                        ; $5394: $f6 $5d
    ld e, e                                       ; $5396: $5b
    or $72                                        ; $5397: $f6 $72
    call z, $e751                                 ; $5399: $cc $51 $e7
    db $10                                        ; $539c: $10
    rst $20                                       ; $539d: $e7
    ld b, a                                       ; $539e: $47
    ld a, h                                       ; $539f: $7c
    ld l, a                                       ; $53a0: $6f
    ld b, e                                       ; $53a1: $43
    jr jr_043_534d                                ; $53a2: $18 $a9

    sub c                                         ; $53a4: $91
    ld c, a                                       ; $53a5: $4f
    ld a, e                                       ; $53a6: $7b
    inc hl                                        ; $53a7: $23
    jp z, $5fbe                                   ; $53a8: $ca $be $5f

    ld bc, $7fbe                                  ; $53ab: $01 $be $7f
    ld d, c                                       ; $53ae: $51
    ld b, e                                       ; $53af: $43
    ld [hl+], a                                   ; $53b0: $22
    push hl                                       ; $53b1: $e5
    ld a, $be                                     ; $53b2: $3e $be
    or a                                          ; $53b4: $b7
    ld hl, $5a8c                                  ; $53b5: $21 $8c $5a
    dec hl                                        ; $53b8: $2b
    or l                                          ; $53b9: $b5
    daa                                           ; $53ba: $27
    dec b                                         ; $53bb: $05
    jp nz, $13c7                                  ; $53bc: $c2 $c7 $13

    rst $20                                       ; $53bf: $e7
    ld b, a                                       ; $53c0: $47
    ld a, [bc]                                    ; $53c1: $0a
    ccf                                           ; $53c2: $3f
    ld sp, hl                                     ; $53c3: $f9
    ld e, c                                       ; $53c4: $59
    ld h, b                                       ; $53c5: $60
    xor c                                         ; $53c6: $a9
    ret nz                                        ; $53c7: $c0

    inc c                                         ; $53c8: $0c
    dec hl                                        ; $53c9: $2b
    sub a                                         ; $53ca: $97
    sub e                                         ; $53cb: $93
    sub b                                         ; $53cc: $90
    rst $30                                       ; $53cd: $f7
    sbc d                                         ; $53ce: $9a
    halt                                          ; $53cf: $76
    db $d3                                        ; $53d0: $d3
    xor a                                         ; $53d1: $af
    ld [hl], l                                    ; $53d2: $75
    add a                                         ; $53d3: $87
    dec c                                         ; $53d4: $0d
    ld a, d                                       ; $53d5: $7a
    dec a                                         ; $53d6: $3d
    add d                                         ; $53d7: $82
    ld d, d                                       ; $53d8: $52
    ld h, b                                       ; $53d9: $60

jr_043_53da:
    ret z                                         ; $53da: $c8

    sub b                                         ; $53db: $90
    ld d, h                                       ; $53dc: $54
    ld a, h                                       ; $53dd: $7c
    jr z, jr_043_53da                             ; $53de: $28 $fa

    dec d                                         ; $53e0: $15
    ld [hl], l                                    ; $53e1: $75
    and [hl]                                      ; $53e2: $a6
    ld c, a                                       ; $53e3: $4f
    ei                                            ; $53e4: $fb
    sbc a                                         ; $53e5: $9f
    ld [$7ee2], a                                 ; $53e6: $ea $e2 $7e
    add hl, sp                                    ; $53e9: $39
    cp $94                                        ; $53ea: $fe $94
    dec b                                         ; $53ec: $05
    and l                                         ; $53ed: $a5
    ld c, h                                       ; $53ee: $4c
    call nc, $8485                                ; $53ef: $d4 $85 $84
    add d                                         ; $53f2: $82
    db $ed                                        ; $53f3: $ed
    ret                                           ; $53f4: $c9


    rst $28                                       ; $53f5: $ef
    ld hl, sp-$30                                 ; $53f6: $f8 $d0
    inc de                                        ; $53f8: $13
    sbc [hl]                                      ; $53f9: $9e
    inc l                                         ; $53fa: $2c
    rst $30                                       ; $53fb: $f7
    ld [hl-], a                                   ; $53fc: $32
    db $fd                                        ; $53fd: $fd
    ld a, [bc]                                    ; $53fe: $0a
    dec e                                         ; $53ff: $1d
    ld l, b                                       ; $5400: $68
    jp c, Jump_043_4645                           ; $5401: $da $45 $46

    or d                                          ; $5404: $b2
    dec a                                         ; $5405: $3d
    db $fc                                        ; $5406: $fc
    sub e                                         ; $5407: $93
    push bc                                       ; $5408: $c5
    ld h, [hl]                                    ; $5409: $66
    or c                                          ; $540a: $b1
    sbc e                                         ; $540b: $9b
    sub b                                         ; $540c: $90
    ld d, a                                       ; $540d: $57
    ld a, b                                       ; $540e: $78
    ld a, [$b515]                                 ; $540f: $fa $15 $b5
    daa                                           ; $5412: $27
    db $e4                                        ; $5413: $e4
    dec d                                         ; $5414: $15
    sbc [hl]                                      ; $5415: $9e
    ld hl, sp-$30                                 ; $5416: $f8 $d0
    rst $18                                       ; $5418: $df
    adc [hl]                                      ; $5419: $8e
    jp z, $9c84                                   ; $541a: $ca $84 $9c

    db $fd                                        ; $541d: $fd
    add [hl]                                      ; $541e: $86
    sub b                                         ; $541f: $90
    rst $30                                       ; $5420: $f7
    ld a, l                                       ; $5421: $7d
    jp c, $2b1c                                   ; $5422: $da $1c $2b

    ld [$b3ec], sp                                ; $5425: $08 $ec $b3
    jp hl                                         ; $5428: $e9


    push af                                       ; $5429: $f5
    dec hl                                        ; $542a: $2b
    sbc [hl]                                      ; $542b: $9e
    cp $83                                        ; $542c: $fe $83
    cp d                                          ; $542e: $ba
    db $fc                                        ; $542f: $fc
    sbc $9f                                       ; $5430: $de $9f
    push bc                                       ; $5432: $c5
    add $8b                                       ; $5433: $c6 $8b
    ld d, d                                       ; $5435: $52
    add $50                                       ; $5436: $c6 $50
    jp z, Jump_043_7da7                           ; $5438: $ca $a7 $7d

    rst $10                                       ; $543b: $d7
    sub [hl]                                      ; $543c: $96
    cp l                                          ; $543d: $bd
    inc e                                         ; $543e: $1c
    ld [hl], e                                    ; $543f: $73
    sbc a                                         ; $5440: $9f
    or $2e                                        ; $5441: $f6 $2e
    cp $09                                        ; $5443: $fe $09
    ld a, c                                       ; $5445: $79
    add l                                         ; $5446: $85
    cpl                                           ; $5447: $2f
    set 3, e                                      ; $5448: $cb $db
    ld a, [hl]                                    ; $544a: $7e
    ld b, e                                       ; $544b: $43
    ld c, [hl]                                    ; $544c: $4e
    jp z, Jump_043_42a1                           ; $544d: $ca $a1 $42

    cp a                                          ; $5450: $bf
    ld [bc], a                                    ; $5451: $02
    ld [hl], l                                    ; $5452: $75
    ld b, [hl]                                    ; $5453: $46
    or d                                          ; $5454: $b2
    daa                                           ; $5455: $27
    ld h, l                                       ; $5456: $65
    add d                                         ; $5457: $82
    ret z                                         ; $5458: $c8

    ld c, b                                       ; $5459: $48
    ld a, [hl+]                                   ; $545a: $2a
    adc a                                         ; $545b: $8f
    inc de                                        ; $545c: $13
    add [hl]                                      ; $545d: $86
    and c                                         ; $545e: $a1
    sub h                                         ; $545f: $94
    ld c, a                                       ; $5460: $4f
    ld sp, hl                                     ; $5461: $f9
    dec b                                         ; $5462: $05
    or [hl]                                       ; $5463: $b6
    and a                                         ; $5464: $a7

jr_043_5465:
    ld e, a                                       ; $5465: $5f
    ld bc, $bfed                                  ; $5466: $01 $ed $bf
    or $76                                        ; $5469: $f6 $76
    xor c                                         ; $546b: $a9
    sub c                                         ; $546c: $91
    rla                                           ; $546d: $17
    push af                                       ; $546e: $f5
    inc a                                         ; $546f: $3c
    ld sp, hl                                     ; $5470: $f9
    or b                                          ; $5471: $b0
    dec c                                         ; $5472: $0d
    ld sp, hl                                     ; $5473: $f9
    add [hl]                                      ; $5474: $86
    call nc, $cd7e                                ; $5475: $d4 $7e $cd
    ld c, [hl]                                    ; $5478: $4e
    push af                                       ; $5479: $f5
    xor c                                         ; $547a: $a9
    ei                                            ; $547b: $fb
    or [hl]                                       ; $547c: $b6
    ld e, a                                       ; $547d: $5f
    ld h, $65                                     ; $547e: $26 $65
    ld b, c                                       ; $5480: $41
    add hl, hl                                    ; $5481: $29
    inc de                                        ; $5482: $13
    xor a                                         ; $5483: $af
    ld a, l                                       ; $5484: $7d
    call nc, $8f65                                ; $5485: $d4 $65 $8f
    ld c, l                                       ; $5488: $4d
    cp a                                          ; $5489: $bf
    ld [bc], a                                    ; $548a: $02
    or l                                          ; $548b: $b5
    daa                                           ; $548c: $27
    dec b                                         ; $548d: $05
    jp nz, $13c7                                  ; $548e: $c2 $c7 $13

    ld [hl], l                                    ; $5491: $75
    add [hl]                                      ; $5492: $86
    jr c, jr_043_54d4                             ; $5493: $38 $3f

    ld d, d                                       ; $5495: $52
    ld l, $35                                     ; $5496: $2e $35
    or d                                          ; $5498: $b2
    jr jr_043_5465                                ; $5499: $18 $ca

    add h                                         ; $549b: $84
    jp z, Jump_043_6f47                           ; $549c: $ca $47 $6f

    jr nz, jr_043_54b2                            ; $549f: $20 $11

    ld a, [c]                                     ; $54a1: $f2
    db $dd                                        ; $54a2: $dd
    dec bc                                        ; $54a3: $0b
    pop af                                        ; $54a4: $f1
    ei                                            ; $54a5: $fb
    dec d                                         ; $54a6: $15
    db $ed                                        ; $54a7: $ed
    ld a, c                                       ; $54a8: $79
    ld hl, sp+$27                                 ; $54a9: $f8 $27
    dec b                                         ; $54ab: $05

jr_043_54ac:
    jp nz, $13c7                                  ; $54ac: $c2 $c7 $13

    db $fd                                        ; $54af: $fd
    sbc b                                         ; $54b0: $98
    ld a, [hl]                                    ; $54b1: $7e

jr_043_54b2:
    sbc b                                         ; $54b2: $98
    rst $18                                       ; $54b3: $df
    db $10                                        ; $54b4: $10
    rra                                           ; $54b5: $1f
    ld a, [$4ddb]                                 ; $54b6: $fa $db $4d
    ld sp, hl                                     ; $54b9: $f9
    ld a, h                                       ; $54ba: $7c
    ld d, $9b                                     ; $54bb: $16 $9b
    ld h, l                                       ; $54bd: $65
    jp z, Jump_043_44f1                           ; $54be: $ca $f1 $44

    ld e, l                                       ; $54c1: $5d
    xor b                                         ; $54c2: $a8
    db $e4                                        ; $54c3: $e4
    call nz, $b08d                                ; $54c4: $c4 $8d $b0
    ld c, l                                       ; $54c7: $4d
    xor d                                         ; $54c8: $aa
    reti                                          ; $54c9: $d9


    inc a                                         ; $54ca: $3c
    cp c                                          ; $54cb: $b9
    ld l, d                                       ; $54cc: $6a
    add hl, de                                    ; $54cd: $19
    db $e3                                        ; $54ce: $e3
    rla                                           ; $54cf: $17
    ld b, [hl]                                    ; $54d0: $46
    cp a                                          ; $54d1: $bf
    ld [bc], a                                    ; $54d2: $02
    ld [hl], l                                    ; $54d3: $75

jr_043_54d4:
    ld b, [hl]                                    ; $54d4: $46
    or d                                          ; $54d5: $b2
    dec a                                         ; $54d6: $3d
    db $fc                                        ; $54d7: $fc
    sub e                                         ; $54d8: $93
    push hl                                       ; $54d9: $e5
    ld a, [de]                                    ; $54da: $1a
    ld [$8579], sp                                ; $54db: $08 $79 $85
    daa                                           ; $54de: $27
    ld [$fef7], a                                 ; $54df: $ea $f7 $fe
    jr c, jr_043_54ac                             ; $54e2: $38 $c8

    ld b, a                                       ; $54e4: $47
    ld e, l                                       ; $54e5: $5d
    ld c, $76                                     ; $54e6: $0e $76
    add hl, hl                                    ; $54e8: $29
    or b                                          ; $54e9: $b0
    rst $28                                       ; $54ea: $ef
    ld d, a                                       ; $54eb: $57
    ld [hl], l                                    ; $54ec: $75
    ld h, c                                       ; $54ed: $61
    pop af                                        ; $54ee: $f1
    and c                                         ; $54ef: $a1
    cpl                                           ; $54f0: $2f
    inc a                                         ; $54f1: $3c
    ld de, $4ca4                                  ; $54f2: $11 $a4 $4c
    ld l, [hl]                                    ; $54f5: $6e

jr_043_54f6:
    ld [hl], h                                    ; $54f6: $74
    pop af                                        ; $54f7: $f1
    cp l                                          ; $54f8: $bd
    dec c                                         ; $54f9: $0d
    ld h, c                                       ; $54fa: $61
    ld h, h                                       ; $54fb: $64
    add hl, de                                    ; $54fc: $19
    ld [hl], $14                                  ; $54fd: $36 $14
    cp [hl]                                       ; $54ff: $be
    and b                                         ; $5500: $a0
    inc d                                         ; $5501: $14
    jr jr_043_54f6                                ; $5502: $18 $f2

    ld [c], a                                     ; $5504: $e2
    db $fc                                        ; $5505: $fc
    ld c, b                                       ; $5506: $48
    rst $00                                       ; $5507: $c7
    sbc l                                         ; $5508: $9d
    db $f4                                        ; $5509: $f4
    dec hl                                        ; $550a: $2b
    ld [hl], l                                    ; $550b: $75
    and [hl]                                      ; $550c: $a6
    ld c, a                                       ; $550d: $4f
    sbc l                                         ; $550e: $9d
    sub c                                         ; $550f: $91
    ret c                                         ; $5510: $d8

    cp c                                          ; $5511: $b9
    ld sp, $5135                                  ; $5512: $31 $35 $51
    sub a                                         ; $5515: $97
    daa                                           ; $5516: $27
    ld h, c                                       ; $5517: $61
    ld a, e                                       ; $5518: $7b
    ld b, d                                       ; $5519: $42
    ld e, [hl]                                    ; $551a: $5e
    pop hl                                        ; $551b: $e1
    ret                                           ; $551c: $c9


    rst $00                                       ; $551d: $c7
    call $e27e                                    ; $551e: $cd $7e $e2
    adc l                                         ; $5521: $8d
    and b                                         ; $5522: $a0
    ld e, a                                       ; $5523: $5f
    ld bc, $79ed                                  ; $5524: $01 $ed $79
    ld hl, sp+$27                                 ; $5527: $f8 $27
    db $e4                                        ; $5529: $e4
    dec d                                         ; $552a: $15
    sbc [hl]                                      ; $552b: $9e
    cp b                                          ; $552c: $b8
    reti                                          ; $552d: $d9


    add hl, hl                                    ; $552e: $29
    ld [hl], h                                    ; $552f: $74
    ld d, d                                       ; $5530: $52
    cp l                                          ; $5531: $bd
    sbc h                                         ; $5532: $9c
    sbc e                                         ; $5533: $9b
    xor b                                         ; $5534: $a8
    ld c, e                                       ; $5535: $4b
    ld [hl], c                                    ; $5536: $71
    or e                                          ; $5537: $b3
    ld a, h                                       ; $5538: $7c
    sbc a                                         ; $5539: $9f
    ld [hl], $c7                                  ; $553a: $36 $c7
    ld a, [bc]                                    ; $553c: $0a
    ld d, d                                       ; $553d: $52
    ld hl, sp-$1d                                 ; $553e: $f8 $e3
    ld a, l                                       ; $5540: $7d
    rlca                                          ; $5541: $07
    ld d, c                                       ; $5542: $51
    inc de                                        ; $5543: $13
    ld a, [hl+]                                   ; $5544: $2a
    ld e, c                                       ; $5545: $59
    add $23                                       ; $5546: $c6 $23
    ld [$d0b2], a                                 ; $5548: $ea $b2 $d0
    ld a, l                                       ; $554b: $7d
    call nz, $bf43                                ; $554c: $c4 $43 $bf
    ld [bc], a                                    ; $554f: $02
    ld [hl], l                                    ; $5550: $75
    ld b, [hl]                                    ; $5551: $46
    ld d, d                                       ; $5552: $52
    ld h, $82                                     ; $5553: $26 $82
    ld h, l                                       ; $5555: $65
    and c                                         ; $5556: $a1
    add [hl]                                      ; $5557: $86
    xor b                                         ; $5558: $a8
    ld hl, $7291                                  ; $5559: $21 $91 $72
    sbc a                                         ; $555c: $9f
    db $db                                        ; $555d: $db
    add hl, hl                                    ; $555e: $29
    ld [hl], h                                    ; $555f: $74
    ld d, d                                       ; $5560: $52
    sbc b                                         ; $5561: $98
    xor d                                         ; $5562: $aa
    sbc e                                         ; $5563: $9b
    ld a, [hl]                                    ; $5564: $7e
    dec b                                         ; $5565: $05
    ld [hl], l                                    ; $5566: $75
    ld b, [hl]                                    ; $5567: $46
    sub a                                         ; $5568: $97
    ld [$dc53], a                                 ; $5569: $ea $53 $dc
    ld d, h                                       ; $556c: $54
    dec d                                         ; $556d: $15
    sbc b                                         ; $556e: $98
    daa                                           ; $556f: $27
    adc $8f                                       ; $5570: $ce $8f
    ld hl, sp-$30                                 ; $5572: $f8 $d0
    rst $18                                       ; $5574: $df
    adc [hl]                                      ; $5575: $8e
    jp z, $e144                                   ; $5576: $ca $44 $e1

    or d                                          ; $5579: $b2
    ret c                                         ; $557a: $d8

    ld a, b                                       ; $557b: $78
    ld d, c                                       ; $557c: $51
    jp z, Jump_043_65d8                           ; $557d: $ca $d8 $65

    ld c, a                                       ; $5580: $4f
    jp z, $2bf7                                   ; $5581: $ca $f7 $2b

    db $ed                                        ; $5584: $ed
    ld a, c                                       ; $5585: $79
    ld hl, sp+$27                                 ; $5586: $f8 $27
    db $e4                                        ; $5588: $e4
    dec d                                         ; $5589: $15
    sbc [hl]                                      ; $558a: $9e
    ld e, h                                       ; $558b: $5c
    or l                                          ; $558c: $b5
    ld b, b                                       ; $558d: $40
    sub e                                         ; $558e: $93
    rst $20                                       ; $558f: $e7
    ret                                           ; $5590: $c9


    ld c, c                                       ; $5591: $49
    xor b                                         ; $5592: $a8
    ld a, h                                       ; $5593: $7c
    call c, Call_000_0908                         ; $5594: $dc $08 $09
    dec hl                                        ; $5597: $2b
    ld c, a                                       ; $5598: $4f
    cp h                                          ; $5599: $bc
    ld de, $9aa4                                  ; $559a: $11 $a4 $9a
    call Call_000_0293                            ; $559d: $cd $93 $02
    cp e                                          ; $55a0: $bb
    adc a                                         ; $55a1: $8f
    dec de                                        ; $55a2: $1b
    ret                                           ; $55a3: $c9


    cp $2c                                        ; $55a4: $fe $2c
    ld [hl], $5e                                  ; $55a6: $36 $5e
    sub h                                         ; $55a8: $94
    ld [hl-], a                                   ; $55a9: $32
    add [hl]                                      ; $55aa: $86
    ld d, d                                       ; $55ab: $52
    ld a, $ed                                     ; $55ac: $3e $ed
    cp e                                          ; $55ae: $bb
    or [hl]                                       ; $55af: $b6
    db $ec                                        ; $55b0: $ec
    push hl                                       ; $55b1: $e5
    sbc b                                         ; $55b2: $98
    ei                                            ; $55b3: $fb
    call nc, $361d                                ; $55b4: $d4 $1d $36
    inc d                                         ; $55b7: $14
    cp [hl]                                       ; $55b8: $be
    jr c, @+$01                                   ; $55b9: $38 $ff

    ld b, c                                       ; $55bb: $41
    pop bc                                        ; $55bc: $c1
    sub b                                         ; $55bd: $90
    rst $08                                       ; $55be: $cf
    add $f5                                       ; $55bf: $c6 $f5
    dec hl                                        ; $55c1: $2b
    dec l                                         ; $55c2: $2d
    ld b, a                                       ; $55c3: $47
    cp e                                          ; $55c4: $bb
    ld a, d                                       ; $55c5: $7a
    ld b, d                                       ; $55c6: $42
    dec h                                         ; $55c7: $25
    push de                                       ; $55c8: $d5
    reti                                          ; $55c9: $d9


    cp e                                          ; $55ca: $bb
    reti                                          ; $55cb: $d9


    sub e                                         ; $55cc: $93
    add d                                         ; $55cd: $82
    sub h                                         ; $55ce: $94
    adc c                                         ; $55cf: $89
    ld a, [de]                                    ; $55d0: $1a
    ld [de], a                                    ; $55d1: $12
    add hl, hl                                    ; $55d2: $29
    inc hl                                        ; $55d3: $23
    sub e                                         ; $55d4: $93
    sbc e                                         ; $55d5: $9b
    ld a, [hl]                                    ; $55d6: $7e
    dec b                                         ; $55d7: $05
    ld l, l                                       ; $55d8: $6d
    adc [hl]                                      ; $55d9: $8e
    dec d                                         ; $55da: $15
    and h                                         ; $55db: $a4
    ld b, [hl]                                    ; $55dc: $46
    inc b                                         ; $55dd: $04
    ld a, e                                       ; $55de: $7b
    ld a, a                                       ; $55df: $7f
    ld a, h                                       ; $55e0: $7c
    ld a, a                                       ; $55e1: $7f
    ld a, a                                       ; $55e2: $7f
    jp c, $17b2                                   ; $55e3: $da $b2 $17

    add l                                         ; $55e6: $85
    ld a, h                                       ; $55e7: $7c
    ld d, $c3                                     ; $55e8: $16 $c3
    ld a, [c]                                     ; $55ea: $f2
    or $86                                        ; $55eb: $f6 $86
    call c, $a14e                                 ; $55ed: $dc $4e $a1
    inc de                                        ; $55f0: $13
    ld [hl], l                                    ; $55f1: $75
    push bc                                       ; $55f2: $c5
    adc l                                         ; $55f3: $8d
    sub l                                         ; $55f4: $95
    adc c                                         ; $55f5: $89
    cp d                                          ; $55f6: $ba
    ld a, b                                       ; $55f7: $78
    ld c, a                                       ; $55f8: $4f
    sub b                                         ; $55f9: $90
    rla                                           ; $55fa: $17
    sbc c                                         ; $55fb: $99
    ld a, [hl]                                    ; $55fc: $7e
    dec b                                         ; $55fd: $05
    xor l                                         ; $55fe: $ad
    rrca                                          ; $55ff: $0f
    ld c, c                                       ; $5600: $49
    push bc                                       ; $5601: $c5
    add a                                         ; $5602: $87
    ld [hl+], a                                   ; $5603: $22
    xor a                                         ; $5604: $af
    rst $10                                       ; $5605: $d7
    rst $18                                       ; $5606: $df
    add a                                         ; $5607: $87
    inc e                                         ; $5608: $1c
    ld l, l                                       ; $5609: $6d
    rst $18                                       ; $560a: $df
    ld b, a                                       ; $560b: $47
    ld e, l                                       ; $560c: $5d
    ld d, b                                       ; $560d: $50
    ld a, [bc]                                    ; $560e: $0a
    inc c                                         ; $560f: $0c
    cp d                                          ; $5610: $ba
    ld e, h                                       ; $5611: $5c
    ld d, l                                       ; $5612: $55
    cp l                                          ; $5613: $bd
    halt                                          ; $5614: $76
    ld [hl-], a                                   ; $5615: $32
    db $fd                                        ; $5616: $fd
    ld a, [bc]                                    ; $5617: $0a
    ld [hl], l                                    ; $5618: $75
    ld b, [hl]                                    ; $5619: $46
    or d                                          ; $561a: $b2
    daa                                           ; $561b: $27
    inc h                                         ; $561c: $24
    call nc, Call_043_7d44                        ; $561d: $d4 $44 $7d
    or h                                          ; $5620: $b4
    dec de                                        ; $5621: $1b
    sub e                                         ; $5622: $93
    db $eb                                        ; $5623: $eb
    ld d, a                                       ; $5624: $57
    sbc [hl]                                      ; $5625: $9e
    cp $83                                        ; $5626: $fe $83
    cp d                                          ; $5628: $ba
    ld a, h                                       ; $5629: $7c
    ld a, h                                       ; $562a: $7c
    add sp, $6f                                   ; $562b: $e8 $6f
    rst $20                                       ; $562d: $e7
    ld b, a                                       ; $562e: $47
    ld c, [hl]                                    ; $562f: $4e
    ld a, [bc]                                    ; $5630: $0a
    inc [hl]                                      ; $5631: $34
    ld a, c                                       ; $5632: $79
    ld h, c                                       ; $5633: $61
    db $f4                                        ; $5634: $f4

jr_043_5635:
    ld l, c                                       ; $5635: $69
    ld l, a                                       ; $5636: $6f
    ld l, h                                       ; $5637: $6c
    ld d, d                                       ; $5638: $52
    ld l, $0c                                     ; $5639: $2e $0c
    pop de                                        ; $563b: $d1
    ld b, [hl]                                    ; $563c: $46
    ld h, $05                                     ; $563d: $26 $05
    push de                                       ; $563f: $d5
    ld h, d                                       ; $5640: $62
    adc b                                         ; $5641: $88
    ld a, [c]                                     ; $5642: $f2
    jr @-$17                                      ; $5643: $18 $e7

    db $fc                                        ; $5645: $fc
    scf                                           ; $5646: $37
    reti                                          ; $5647: $d9


    ld e, $54                                     ; $5648: $1e $54
    or d                                          ; $564a: $b2
    dec a                                         ; $564b: $3d
    ld a, [hl]                                    ; $564c: $7e
    or e                                          ; $564d: $b3
    ld c, l                                       ; $564e: $4d
    cp a                                          ; $564f: $bf
    ld [bc], a                                    ; $5650: $02
    dec e                                         ; $5651: $1d
    jp nc, $b20f                                  ; $5652: $d2 $0f $b2

    db $eb                                        ; $5655: $eb
    pop de                                        ; $5656: $d1
    and l                                         ; $5657: $a5
    ret nc                                        ; $5658: $d0

    jr nz, jr_043_5635                            ; $5659: $20 $da

    dec [hl]                                      ; $565b: $35
    and b                                         ; $565c: $a0
    bit 0, a                                      ; $565d: $cb $47
    reti                                          ; $565f: $d9


    ld sp, $907f                                  ; $5660: $31 $7f $90
    ld c, a                                       ; $5663: $4f
    push af                                       ; $5664: $f5
    ld [c], a                                     ; $5665: $e2
    ld e, [hl]                                    ; $5666: $5e
    sub a                                         ; $5667: $97
    sub e                                         ; $5668: $93
    db $fc                                        ; $5669: $fc
    and $09                                       ; $566a: $e6 $09
    ld [hl], d                                    ; $566c: $72
    ld [de], a                                    ; $566d: $12
    db $fd                                        ; $566e: $fd
    sub a                                         ; $566f: $97
    ld [hl-], a                                   ; $5670: $32
    ld a, l                                       ; $5671: $7d
    ld a, h                                       ; $5672: $7c
    dec e                                         ; $5673: $1d
    or h                                          ; $5674: $b4
    ld a, l                                       ; $5675: $7d
    ld h, c                                       ; $5676: $61
    jp c, $b5af                                   ; $5677: $da $af $b5

    daa                                           ; $567a: $27
    dec b                                         ; $567b: $05
    jp nz, $13c7                                  ; $567c: $c2 $c7 $13

    ld [hl], l                                    ; $567f: $75
    add [hl]                                      ; $5680: $86
    jr c, jr_043_56c2                             ; $5681: $38 $3f

    ld d, d                                       ; $5683: $52
    ld l, $e5                                     ; $5684: $2e $e5
    dec c                                         ; $5686: $0d
    ld a, d                                       ; $5687: $7a
    dec a                                         ; $5688: $3d
    ld a, [c]                                     ; $5689: $f2
    ld a, e                                       ; $568a: $7b
    adc a                                         ; $568b: $8f
    ldh a, [$cb]                                  ; $568c: $f0 $cb
    di                                            ; $568e: $f3
    ld h, h                                       ; $568f: $64
    add c                                         ; $5690: $81
    add l                                         ; $5691: $85
    ld c, d                                       ; $5692: $4a
    sub [hl]                                      ; $5693: $96
    pop af                                        ; $5694: $f1
    add sp, $57                                   ; $5695: $e8 $57
    ld [hl], l                                    ; $5697: $75
    add a                                         ; $5698: $87
    dec c                                         ; $5699: $0d
    ld a, d                                       ; $569a: $7a
    dec a                                         ; $569b: $3d
    add d                                         ; $569c: $82
    ld d, d                                       ; $569d: $52
    ld h, b                                       ; $569e: $60
    adc b                                         ; $569f: $88
    ld a, [$8165]                                 ; $56a0: $fa $65 $81
    ld sp, $9e65                                  ; $56a3: $31 $65 $9e
    ld a, $6d                                     ; $56a6: $3e $6d
    adc [hl]                                      ; $56a8: $8e
    dec d                                         ; $56a9: $15
    ld h, h                                       ; $56aa: $64
    add hl, de                                    ; $56ab: $19
    ld [hl], $e8                                  ; $56ac: $36 $e8
    push af                                       ; $56ae: $f5
    adc b                                         ; $56af: $88
    ld a, d                                       ; $56b0: $7a
    sub d                                         ; $56b1: $92
    add h                                         ; $56b2: $84
    ld c, l                                       ; $56b3: $4d
    ld d, b                                       ; $56b4: $50
    ld a, [bc]                                    ; $56b5: $0a
    inc c                                         ; $56b6: $0c
    add hl, de                                    ; $56b7: $19
    sub d                                         ; $56b8: $92
    adc d                                         ; $56b9: $8a
    rrca                                          ; $56ba: $0f
    ld b, l                                       ; $56bb: $45
    inc b                                         ; $56bc: $04
    ld a, e                                       ; $56bd: $7b
    ld c, a                                       ; $56be: $4f
    ld a, [bc]                                    ; $56bf: $0a
    and e                                         ; $56c0: $a3
    sub h                                         ; $56c1: $94

jr_043_56c2:
    ld c, c                                       ; $56c2: $49
    dec [hl]                                      ; $56c3: $35
    dec d                                         ; $56c4: $15
    add h                                         ; $56c5: $84
    ld b, a                                       ; $56c6: $47
    sub a                                         ; $56c7: $97
    add d                                         ; $56c8: $82
    db $ec                                        ; $56c9: $ec
    add hl, bc                                    ; $56ca: $09
    add hl, sp                                    ; $56cb: $39
    dec de                                        ; $56cc: $1b
    and l                                         ; $56cd: $a5
    and b                                         ; $56ce: $a0
    ld e, a                                       ; $56cf: $5f
    ld bc, $8e6d                                  ; $56d0: $01 $6d $8e
    dec d                                         ; $56d3: $15
    and h                                         ; $56d4: $a4
    ldh a, [$e7]                                  ; $56d5: $f0 $e7
    adc a                                         ; $56d7: $8f
    ld a, [c]                                     ; $56d8: $f2
    adc e                                         ; $56d9: $8b
    sbc d                                         ; $56da: $9a
    call nc, Call_043_7901                        ; $56db: $d4 $01 $79
    ld a, e                                       ; $56de: $7b
    inc hl                                        ; $56df: $23
    rra                                           ; $56e0: $1f
    rlca                                          ; $56e1: $07
    ld [hl], e                                    ; $56e2: $73
    ld l, a                                       ; $56e3: $6f
    ret z                                         ; $56e4: $c8

    db $ed                                        ; $56e5: $ed
    inc d                                         ; $56e6: $14
    ld a, [hl-]                                   ; $56e7: $3a
    or c                                          ; $56e8: $b1
    add hl, hl                                    ; $56e9: $29
    set 6, h                                      ; $56ea: $cb $f4
    dec hl                                        ; $56ec: $2b
    db $ed                                        ; $56ed: $ed
    ld a, c                                       ; $56ee: $79
    ld hl, sp+$27                                 ; $56ef: $f8 $27
    db $e4                                        ; $56f1: $e4
    dec d                                         ; $56f2: $15
    sbc [hl]                                      ; $56f3: $9e
    add sp, -$39                                  ; $56f4: $e8 $c7
    db $f4                                        ; $56f6: $f4
    jp $86fc                                      ; $56f7: $c3 $fc $86


    ld hl, sp-$30                                 ; $56fa: $f8 $d0
    rst $18                                       ; $56fc: $df
    ld l, [hl]                                    ; $56fd: $6e
    jp z, $8dc7                                   ; $56fe: $ca $c7 $8d

    ld h, h                                       ; $5701: $64
    ld a, a                                       ; $5702: $7f
    ld d, $1b                                     ; $5703: $16 $1b
    cpl                                           ; $5705: $2f
    ld c, d                                       ; $5706: $4a
    add hl, de                                    ; $5707: $19
    ld b, e                                       ; $5708: $43
    add hl, hl                                    ; $5709: $29
    sbc a                                         ; $570a: $9f
    or $5d                                        ; $570b: $f6 $5d
    ld e, e                                       ; $570d: $5b
    or $72                                        ; $570e: $f6 $72
    call z, Call_000_3c7d                         ; $5710: $cc $7d $3c
    db $fd                                        ; $5713: $fd
    rlca                                          ; $5714: $07
    ld [hl], l                                    ; $5715: $75
    ld sp, hl                                     ; $5716: $f9
    ld l, h                                       ; $5717: $6c
    ld e, h                                       ; $5718: $5c
    cp a                                          ; $5719: $bf
    ld [bc], a                                    ; $571a: $02
    or l                                          ; $571b: $b5
    daa                                           ; $571c: $27
    dec b                                         ; $571d: $05
    jp nz, $13c7                                  ; $571e: $c2 $c7 $13

    rst $20                                       ; $5721: $e7
    ld b, a                                       ; $5722: $47
    ld e, [hl]                                    ; $5723: $5e
    adc l                                         ; $5724: $8d
    ld a, l                                       ; $5725: $7d
    cp h                                          ; $5726: $bc
    ld l, a                                       ; $5727: $6f
    ld c, b                                       ; $5728: $48
    and c                                         ; $5729: $a1
    and $8d                                       ; $572a: $e6 $8d
    ld h, b                                       ; $572c: $60
    ld h, a                                       ; $572d: $67
    cp a                                          ; $572e: $bf
    ld [hl], $7d                                  ; $572f: $36 $7d
    jp c, Jump_043_78ff                           ; $5731: $da $ff $78

    rst $00                                       ; $5734: $c7
    ld a, [bc]                                    ; $5735: $0a
    ld d, d                                       ; $5736: $52
    ld e, l                                       ; $5737: $5d
    call c, Call_043_7788                         ; $5738: $dc $88 $77
    ld b, h                                       ; $573b: $44
    ld c, l                                       ; $573c: $4d
    call c, $da48                                 ; $573d: $dc $48 $da
    ld a, d                                       ; $5740: $7a
    ld [hl+], a                                   ; $5741: $22
    pop af                                        ; $5742: $f1
    ei                                            ; $5743: $fb
    cp [hl]                                       ; $5744: $be
    ld e, a                                       ; $5745: $5f
    ld bc, $c1ad                                  ; $5746: $01 $ad $c1
    xor a                                         ; $5749: $af
    adc e                                         ; $574a: $8b
    cp d                                          ; $574b: $ba
    sub h                                         ; $574c: $94
    ld [hl], e                                    ; $574d: $73
    call nc, Call_000_3226                        ; $574e: $d4 $26 $32
    sub d                                         ; $5751: $92
    ld a, [de]                                    ; $5752: $1a
    pop af                                        ; $5753: $f1
    and c                                         ; $5754: $a1
    ld e, a                                       ; $5755: $5f
    ld c, d                                       ; $5756: $4a
    inc bc                                        ; $5757: $03
    db $fd                                        ; $5758: $fd
    ld a, [bc]                                    ; $5759: $0a
    db $ed                                        ; $575a: $ed
    ld a, l                                       ; $575b: $7d
    ld d, $1b                                     ; $575c: $16 $1b
    cpl                                           ; $575e: $2f
    ld c, d                                       ; $575f: $4a
    add hl, de                                    ; $5760: $19
    ld b, e                                       ; $5761: $43
    add hl, hl                                    ; $5762: $29

Jump_043_5763:
    sbc a                                         ; $5763: $9f
    or $5d                                        ; $5764: $f6 $5d
    ld e, e                                       ; $5766: $5b
    or $72                                        ; $5767: $f6 $72
    call z, $91a9                                 ; $5769: $cc $a9 $91
    db $fd                                        ; $576c: $fd
    ld hl, $41cf                                  ; $576d: $21 $cf $41
    sbc l                                         ; $5770: $9d
    add c                                         ; $5771: $81
    reti                                          ; $5772: $d9


    adc $a1                                       ; $5773: $ce $a1
    ld c, a                                       ; $5775: $4f
    ld a, e                                       ; $5776: $7b
    cp b                                          ; $5777: $b8
    db $ec                                        ; $5778: $ec
    ld c, c                                       ; $5779: $49
    ld sp, hl                                     ; $577a: $f9
    xor b                                         ; $577b: $a8
    ld c, e                                       ; $577c: $4b
    add hl, sp                                    ; $577d: $39
    ld b, a                                       ; $577e: $47
    ld l, l                                       ; $577f: $6d
    ld a, [$1d15]                                 ; $5780: $fa $15 $1d
    ld l, b                                       ; $5783: $68
    jp c, Jump_043_4645                           ; $5784: $da $45 $46

    or d                                          ; $5787: $b2
    dec a                                         ; $5788: $3d
    db $fc                                        ; $5789: $fc
    inc de                                        ; $578a: $13
    ld a, [c]                                     ; $578b: $f2
    ld a, [bc]                                    ; $578c: $0a
    ld c, a                                       ; $578d: $4f
    cp a                                          ; $578e: $bf
    ld [bc], a                                    ; $578f: $02
    xor l                                         ; $5790: $ad
    ld b, [hl]                                    ; $5791: $46
    sbc l                                         ; $5792: $9d
    ld hl, $43b7                                  ; $5793: $21 $b7 $43
    jp nz, Jump_000_1746                          ; $5796: $c2 $46 $17

    add hl, de                                    ; $5799: $19
    ld c, c                                       ; $579a: $49
    ld [hl], l                                    ; $579b: $75
    ld [hl], c                                    ; $579c: $71
    cp a                                          ; $579d: $bf
    inc e                                         ; $579e: $1c
    ld a, a                                       ; $579f: $7f
    jp z, Jump_043_5282                           ; $57a0: $ca $82 $52

    ld h, $ea                                     ; $57a3: $26 $ea
    ld b, d                                       ; $57a5: $42
    ld b, d                                       ; $57a6: $42
    pop bc                                        ; $57a7: $c1
    or $f4                                        ; $57a8: $f6 $f4
    dec hl                                        ; $57aa: $2b
    dec e                                         ; $57ab: $1d
    adc h                                         ; $57ac: $8c
    or a                                          ; $57ad: $b7
    and $0a                                       ; $57ae: $e6 $0a
    ld [hl], l                                    ; $57b0: $75
    ld d, b                                       ; $57b1: $50
    ld a, [bc]                                    ; $57b2: $0a
    sub l                                         ; $57b3: $95
    rrca                                          ; $57b4: $0f
    db $db                                        ; $57b5: $db
    dec sp                                        ; $57b6: $3b
    ld [hl], a                                    ; $57b7: $77
    rra                                           ; $57b8: $1f
    ld [hl], l                                    ; $57b9: $75
    xor c                                         ; $57ba: $a9
    ld a, e                                       ; $57bb: $7b
    inc a                                         ; $57bc: $3c
    jp nc, $75af                                  ; $57bd: $d2 $af $75

    ld b, [hl]                                    ; $57c0: $46
    ld h, d                                       ; $57c1: $62
    add a                                         ; $57c2: $87
    ld [c], a                                     ; $57c3: $e2
    ld h, $9f                                     ; $57c4: $26 $9f
    adc d                                         ; $57c6: $8a
    ld c, $09                                     ; $57c7: $0e $09
    xor e                                         ; $57c9: $ab
    xor [hl]                                      ; $57ca: $ae
    and $0a                                       ; $57cb: $e6 $0a
    ld [hl], l                                    ; $57cd: $75
    ldh a, [$e2]                                  ; $57ce: $f0 $e2
    db $fc                                        ; $57d0: $fc
    ld e, $37                                     ; $57d1: $1e $37
    dec [hl]                                      ; $57d3: $35
    db $d3                                        ; $57d4: $d3
    ld hl, $6145                                  ; $57d5: $21 $45 $61
    ld h, h                                       ; $57d8: $64
    cp c                                          ; $57d9: $b9
    rla                                           ; $57da: $17
    ld b, [hl]                                    ; $57db: $46
    jp z, $8ca5                                   ; $57dc: $ca $a5 $8c

    ld c, h                                       ; $57df: $4c
    sbc [hl]                                      ; $57e0: $9e
    inc h                                         ; $57e1: $24
    ld c, a                                       ; $57e2: $4f
    inc [hl]                                      ; $57e3: $34
    rst $38                                       ; $57e4: $ff
    dec a                                         ; $57e5: $3d
    inc hl                                        ; $57e6: $23
    daa                                           ; $57e7: $27
    inc a                                         ; $57e8: $3c
    ld h, $93                                     ; $57e9: $26 $93
    adc a                                         ; $57eb: $8f
    call z, Call_043_69f5                         ; $57ec: $cc $f5 $69
    dec e                                         ; $57ef: $1d
    inc h                                         ; $57f0: $24
    add d                                         ; $57f1: $82
    ld d, d                                       ; $57f2: $52
    ld h, b                                       ; $57f3: $60
    add sp, -$05                                  ; $57f4: $e8 $fb
    ld a, $b7                                     ; $57f6: $3e $b7
    db $d3                                        ; $57f8: $d3
    or c                                          ; $57f9: $b1
    cp l                                          ; $57fa: $bd
    ld h, b                                       ; $57fb: $60
    rst $28                                       ; $57fc: $ef
    adc c                                         ; $57fd: $89
    jp nz, $eb4e                                  ; $57fe: $c2 $4e $eb

    rst $30                                       ; $5801: $f7
    db $e4                                        ; $5802: $e4
    db $ec                                        ; $5803: $ec
    xor c                                         ; $5804: $a9
    sbc c                                         ; $5805: $99
    jp c, $0d93                                   ; $5806: $da $93 $0d

    and $89                                       ; $5809: $e6 $89
    rrca                                          ; $580b: $0f
    db $fd                                        ; $580c: $fd

jr_043_580d:
    db $ed                                        ; $580d: $ed
    and [hl]                                      ; $580e: $a6
    ld a, h                                       ; $580f: $7c

Jump_043_5810:
    ld c, [hl]                                    ; $5810: $4e

Call_043_5811:
    or d                                          ; $5811: $b2
    ret c                                         ; $5812: $d8

    inc l                                         ; $5813: $2c
    ld d, e                                       ; $5814: $53
    adc [hl]                                      ; $5815: $8e
    and a                                         ; $5816: $a7
    ld h, [hl]                                    ; $5817: $66
    ld a, [hl-]                                   ; $5818: $3a
    add hl, hl                                    ; $5819: $29
    sbc a                                         ; $581a: $9f
    db $fd                                        ; $581b: $fd
    reti                                          ; $581c: $d9


    call nc, $9321                                ; $581d: $d4 $21 $93
    db $db                                        ; $5820: $db
    pop af                                        ; $5821: $f1
    jp nc, $a371                                  ; $5822: $d2 $71 $a3

    ld c, e                                       ; $5825: $4b
    db $ed                                        ; $5826: $ed
    scf                                           ; $5827: $37
    inc hl                                        ; $5828: $23
    ld d, b                                       ; $5829: $50
    ld [hl], e                                    ; $582a: $73
    dec b                                         ; $582b: $05
    ld l, l                                       ; $582c: $6d
    reti                                          ; $582d: $d9


    inc de                                        ; $582e: $13
    rrca                                          ; $582f: $0f
    cp d                                          ; $5830: $ba
    call nc, $337e                                ; $5831: $d4 $7e $33
    ld [bc], a                                    ; $5834: $02
    cp d                                          ; $5835: $ba
    inc d                                         ; $5836: $14
    ld a, [hl]                                    ; $5837: $7e
    ld a, [c]                                     ; $5838: $f2
    ld h, l                                       ; $5839: $65
    or d                                          ; $583a: $b2
    ret nz                                        ; $583b: $c0

    ld d, d                                       ; $583c: $52
    add $eb                                       ; $583d: $c6 $eb
    dec e                                         ; $583f: $1d
    rst $30                                       ; $5840: $f7

jr_043_5841:
    ld d, [hl]                                    ; $5841: $56
    ld e, l                                       ; $5842: $5d
    cp a                                          ; $5843: $bf
    ld [bc], a                                    ; $5844: $02
    db $ed                                        ; $5845: $ed
    db $d3                                        ; $5846: $d3
    ld hl, $abef                                  ; $5847: $21 $ef $ab
    ld [hl], c                                    ; $584a: $71
    rst $10                                       ; $584b: $d7
    and a                                         ; $584c: $a7
    ld h, e                                       ; $584d: $63
    ld d, h                                       ; $584e: $54
    inc de                                        ; $584f: $13
    rst $20                                       ; $5850: $e7
    ld b, a                                       ; $5851: $47
    ld [$8f1e], a                                 ; $5852: $ea $1e $8f
    and h                                         ; $5855: $a4
    call c, $bb47                                 ; $5856: $dc $47 $bb
    ld a, d                                       ; $5859: $7a
    ld d, d                                       ; $585a: $52
    call $c9e6                                    ; $585b: $cd $e6 $c9
    sub e                                         ; $585e: $93
    cpl                                           ; $585f: $2f
    ld a, h                                       ; $5860: $7c
    db $fd                                        ; $5861: $fd
    ld a, [bc]                                    ; $5862: $0a
    cp [hl]                                       ; $5863: $be
    rst $30                                       ; $5864: $f7
    push de                                       ; $5865: $d5
    db $e4                                        ; $5866: $e4
    push bc                                       ; $5867: $c5
    adc l                                         ; $5868: $8d
    ld a, l                                       ; $5869: $7d
    db $f4                                        ; $586a: $f4
    ld a, e                                       ; $586b: $7b
    sbc h                                         ; $586c: $9c
    ld a, e                                       ; $586d: $7b
    ld a, $5d                                     ; $586e: $3e $5d
    ld l, d                                       ; $5870: $6a
    cp a                                          ; $5871: $bf
    add hl, de                                    ; $5872: $19
    add c                                         ; $5873: $81
    sbc d                                         ; $5874: $9a
    ld l, c                                       ; $5875: $69
    di                                            ; $5876: $f3
    cpl                                           ; $5877: $2f
    ld d, h                                       ; $5878: $54
    ld a, [c]                                     ; $5879: $f2
    sbc e                                         ; $587a: $9b
    ld l, l                                       ; $587b: $6d
    jp nz, Jump_043_7e10                          ; $587c: $c2 $10 $7e

    ld a, $72                                     ; $587f: $3e $72
    ld l, d                                       ; $5881: $6a
    xor [hl]                                      ; $5882: $ae

jr_043_5883:
    sbc l                                         ; $5883: $9d
    jr c, jr_043_580d                             ; $5884: $38 $87

    cp l                                          ; $5886: $bd
    ld c, a                                       ; $5887: $4f
    xor [hl]                                      ; $5888: $ae
    ld h, [hl]                                    ; $5889: $66
    jp c, Jump_043_6d3f                           ; $588a: $da $3f $6d

    rst $18                                       ; $588d: $df
    rst $18                                       ; $588e: $df
    ld b, a                                       ; $588f: $47
    ld e, l                                       ; $5890: $5d
    xor b                                         ; $5891: $a8
    ld [hl], e                                    ; $5892: $73
    ret c                                         ; $5893: $d8

    ei                                            ; $5894: $fb
    db $e4                                        ; $5895: $e4
    ld l, d                                       ; $5896: $6a
    add $17                                       ; $5897: $c6 $17
    ld [hl], c                                    ; $5899: $71
    jr nc, jr_043_5883                            ; $589a: $30 $e7

    add a                                         ; $589c: $87
    and c                                         ; $589d: $a1
    sbc d                                         ; $589e: $9a
    xor b                                         ; $589f: $a8
    swap e                                        ; $58a0: $cb $33
    db $db                                        ; $58a2: $db
    sub e                                         ; $58a3: $93
    or b                                          ; $58a4: $b0
    ld a, [c]                                     ; $58a5: $f2
    add [hl]                                      ; $58a6: $86
    db $ec                                        ; $58a7: $ec
    adc a                                         ; $58a8: $8f
    ei                                            ; $58a9: $fb
    ld a, [bc]                                    ; $58aa: $0a
    or $ba                                        ; $58ab: $f6 $ba
    inc l                                         ; $58ad: $2c
    ld [hl], $fa                                  ; $58ae: $36 $fa
    rst $10                                       ; $58b0: $d7
    rst $18                                       ; $58b1: $df
    xor [hl]                                      ; $58b2: $ae
    jr nz, jr_043_5841                            ; $58b3: $20 $8c

    cp b                                          ; $58b5: $b8
    swap e                                        ; $58b6: $cb $33
    cp a                                          ; $58b8: $bf
    ld [hl], e                                    ; $58b9: $73
    ld a, [hl]                                    ; $58ba: $7e
    ret c                                         ; $58bb: $d8

    adc e                                         ; $58bc: $8b
    ld c, h                                       ; $58bd: $4c
    cp a                                          ; $58be: $bf
    ld [bc], a                                    ; $58bf: $02
    ld [hl], l                                    ; $58c0: $75
    ld b, [hl]                                    ; $58c1: $46
    ld d, d                                       ; $58c2: $52
    ld b, [hl]                                    ; $58c3: $46
    ld h, $d4                                     ; $58c4: $26 $d4
    add hl, sp                                    ; $58c6: $39
    db $ec                                        ; $58c7: $ec
    ld a, l                                       ; $58c8: $7d
    ld a, l                                       ; $58c9: $7d
    rst $18                                       ; $58ca: $df
    and a                                         ; $58cb: $a7
    adc h                                         ; $58cc: $8c
    ld c, h                                       ; $58cd: $4c
    sbc h                                         ; $58ce: $9c
    rst $38                                       ; $58cf: $ff
    sbc [hl]                                      ; $58d0: $9e
    cp h                                          ; $58d1: $bc
    db $fc                                        ; $58d2: $fc
    ld a, [hl]                                    ; $58d3: $7e
    ld b, [hl]                                    ; $58d4: $46
    call Call_043_6d15                            ; $58d5: $cd $15 $6d
    rst $28                                       ; $58d8: $ef
    inc l                                         ; $58d9: $2c
    ld h, e                                       ; $58da: $63
    inc a                                         ; $58db: $3c
    add d                                         ; $58dc: $82
    call nc, $f388                                ; $58dd: $d4 $88 $f3
    rra                                           ; $58e0: $1f
    dec l                                         ; $58e1: $2d
    db $d3                                        ; $58e2: $d3
    and a                                         ; $58e3: $a7
    inc de                                        ; $58e4: $13
    ld sp, hl                                     ; $58e5: $f9
    xor b                                         ; $58e6: $a8
    adc e                                         ; $58e7: $8b
    rrca                                          ; $58e8: $0f
    push bc                                       ; $58e9: $c5
    sbc $88                                       ; $58ea: $de $88
    di                                            ; $58ec: $f3
    rst $18                                       ; $58ed: $df
    sub e                                         ; $58ee: $93
    rla                                           ; $58ef: $17
    dec [hl]                                      ; $58f0: $35
    and h                                         ; $58f1: $a4
    ld b, c                                       ; $58f2: $41
    xor a                                         ; $58f3: $af
    ld b, a                                       ; $58f4: $47
    ld a, [hl]                                    ; $58f5: $7e
    or c                                          ; $58f6: $b1
    or e                                          ; $58f7: $b3
    dec a                                         ; $58f8: $3d
    db $fd                                        ; $58f9: $fd
    ld a, [bc]                                    ; $58fa: $0a
    cp [hl]                                       ; $58fb: $be
    push af                                       ; $58fc: $f5
    jp hl                                         ; $58fd: $e9


    ld d, d                                       ; $58fe: $52
    ld a, l                                       ; $58ff: $7d
    ld a, h                                       ; $5900: $7c
    add sp, $6f                                   ; $5901: $e8 $6f
    call nc, $015a                                ; $5903: $d4 $5a $01
    dec e                                         ; $5906: $1d
    ld d, d                                       ; $5907: $52
    db $ec                                        ; $5908: $ec
    db $fd                                        ; $5909: $fd
    ld [hl], c                                    ; $590a: $71
    cp $7b                                        ; $590b: $fe $7b
    ld [de], a                                    ; $590d: $12
    reti                                          ; $590e: $d9


    push af                                       ; $590f: $f5
    db $e4                                        ; $5910: $e4
    inc h                                         ; $5911: $24
    cp a                                          ; $5912: $bf
    ld a, c                                       ; $5913: $79
    ld d, d                                       ; $5914: $52
    inc hl                                        ; $5915: $23
    ld [$5848], a                                 ; $5916: $ea $48 $58
    ld sp, hl                                     ; $5919: $f9
    xor b                                         ; $591a: $a8
    rrca                                          ; $591b: $0f
    ld d, e                                       ; $591c: $53
    ld h, [hl]                                    ; $591d: $66
    ld h, h                                       ; $591e: $64
    inc hl                                        ; $591f: $23
    cp a                                          ; $5920: $bf
    reti                                          ; $5921: $d9


    ret nc                                        ; $5922: $d0

    xor a                                         ; $5923: $af
    ld l, l                                       ; $5924: $6d
    dec bc                                        ; $5925: $0b
    ld b, e                                       ; $5926: $43
    call nc, $87c5                                ; $5927: $d4 $c5 $87
    ld h, d                                       ; $592a: $62
    rst $28                                       ; $592b: $ef
    adc a                                         ; $592c: $8f
    sbc e                                         ; $592d: $9b
    dec a                                         ; $592e: $3d
    sub [hl]                                      ; $592f: $96
    or c                                          ; $5930: $b1
    adc c                                         ; $5931: $89
    dec sp                                        ; $5932: $3b
    ld [hl], e                                    ; $5933: $73
    inc hl                                        ; $5934: $23
    ld [$a3f9], a                                 ; $5935: $ea $f9 $a3
    ld a, $4c                                     ; $5938: $3e $4c
    sbc c                                         ; $593a: $99
    sub c                                         ; $593b: $91
    adc l                                         ; $593c: $8d
    jr c, @+$01                                   ; $593d: $38 $ff

jr_043_593f:
    dec a                                         ; $593f: $3d
    ld a, c                                       ; $5940: $79
    ld d, c                                       ; $5941: $51
    ld e, $6f                                     ; $5942: $1e $6f
    ld a, [de]                                    ; $5944: $1a
    add h                                         ; $5945: $84
    and a                                         ; $5946: $a7
    sub $0a                                       ; $5947: $d6 $0a
    ld [hl], l                                    ; $5949: $75
    ld l, l                                       ; $594a: $6d
    ld d, $bb                                     ; $594b: $16 $bb

Call_043_594d:
    adc c                                         ; $594d: $89
    rrca                                          ; $594e: $0f
    push bc                                       ; $594f: $c5
    sbc $df                                       ; $5950: $de $df
    and a                                         ; $5952: $a7
    call $82b1                                    ; $5953: $cd $b1 $82
    cp b                                          ; $5956: $b8
    rlc d                                         ; $5957: $cb $02
    xor e                                         ; $5959: $ab
    ret nz                                        ; $595a: $c0

    inc c                                         ; $595b: $0c
    xor e                                         ; $595c: $ab
    daa                                           ; $595d: $27
    ld [$8bf2], a                                 ; $595e: $ea $f2 $8b
    sbc l                                         ; $5961: $9d
    ld hl, $b3b7                                  ; $5962: $21 $b7 $b3
    adc h                                         ; $5965: $8c
    pop af                                        ; $5966: $f1
    ld [$15fa], sp                                ; $5967: $08 $fa $15
    xor l                                         ; $596a: $ad
    rrca                                          ; $596b: $0f
    ld l, c                                       ; $596c: $69
    ld a, a                                       ; $596d: $7f
    ld hl, $bf67                                  ; $596e: $21 $67 $bf
    ld hl, $4bfb                                  ; $5971: $21 $fb $4b
    ld l, c                                       ; $5974: $69
    jr nz, jr_043_593f                            ; $5975: $20 $c8

    dec sp                                        ; $5977: $3b
    ld [hl], a                                    ; $5978: $77
    call nc, Call_043_7deb                        ; $5979: $d4 $eb $7d
    db $db                                        ; $597c: $db
    xor a                                         ; $597d: $af
    bit 5, a                                      ; $597e: $cb $6f
    or [hl]                                       ; $5980: $b6
    xor e                                         ; $5981: $ab
    jr nz, jr_043_5a00                            ; $5982: $20 $7c

    sub c                                         ; $5984: $91
    sub c                                         ; $5985: $91
    ret c                                         ; $5986: $d8

    pop de                                        ; $5987: $d1
    ld [c], a                                     ; $5988: $e2
    adc $50                                       ; $5989: $ce $50
    ld c, l                                       ; $598b: $4d
    xor d                                         ; $598c: $aa
    cp a                                          ; $598d: $bf
    ld a, h                                       ; $598e: $7c
    ld a, [bc]                                    ; $598f: $0a
    ld e, l                                       ; $5990: $5d
    ld h, b                                       ; $5991: $60
    ld l, a                                       ; $5992: $6f
    adc b                                         ; $5993: $88
    rrca                                          ; $5994: $0f
    ld b, l                                       ; $5995: $45
    pop hl                                        ; $5996: $e1
    ret                                           ; $5997: $c9


    ld [hl-], a                                   ; $5998: $32
    add $23                                       ; $5999: $c6 $23
    add sp, $57                                   ; $599b: $e8 $57
    db $ed                                        ; $599d: $ed
    ld a, a                                       ; $599e: $7f
    ld h, h                                       ; $599f: $64
    inc h                                         ; $59a0: $24
    cp $c9                                        ; $59a1: $fe $c9
    db $ed                                        ; $59a3: $ed
    ld d, h                                       ; $59a4: $54
    scf                                           ; $59a5: $37
    xor c                                         ; $59a6: $a9
    ld e, [hl]                                    ; $59a7: $5e
    adc $4d                                       ; $59a8: $ce $4d
    call nc, $b8a5                                ; $59aa: $d4 $a5 $b8
    ld e, c                                       ; $59ad: $59
    cp [hl]                                       ; $59ae: $be
    ld e, a                                       ; $59af: $5f
    ld bc, $0d75                                  ; $59b0: $01 $75 $0d
    and d                                         ; $59b3: $a2
    ld l, $b7                                     ; $59b4: $2e $b7
    ld d, e                                       ; $59b6: $53
    db $dd                                        ; $59b7: $dd
    db $f4                                        ; $59b8: $f4
    ld l, c                                       ; $59b9: $69
    add hl, sp                                    ; $59ba: $39
    ld d, h                                       ; $59bb: $54
    ld d, d                                       ; $59bc: $52
    cp l                                          ; $59bd: $bd
    sbc h                                         ; $59be: $9c
    sbc e                                         ; $59bf: $9b
    xor b                                         ; $59c0: $a8
    ld c, e                                       ; $59c1: $4b
    ld [hl], c                                    ; $59c2: $71
    or e                                          ; $59c3: $b3
    ld a, h                                       ; $59c4: $7c
    ld d, $58                                     ; $59c5: $16 $58
    ld d, $3b                                     ; $59c7: $16 $3b
    ld [hl], c                                    ; $59c9: $71
    or a                                          ; $59ca: $b7
    call c, $9f0b                                 ; $59cb: $dc $0b $9f
    ld l, $d5                                     ; $59ce: $2e $d5
    ld b, a                                       ; $59d0: $47
    ld b, [hl]                                    ; $59d1: $46
    ld a, [c]                                     ; $59d2: $f2
    ld a, d                                       ; $59d3: $7a
    db $fd                                        ; $59d4: $fd
    ld a, l                                       ; $59d5: $7d
    dec [hl]                                      ; $59d6: $35
    ld sp, hl                                     ; $59d7: $f9
    call Call_000_29f6                            ; $59d8: $cd $f6 $29
    ld c, $9b                                     ; $59db: $0e $9b
    cp a                                          ; $59dd: $bf

Jump_043_59de:
    ld e, a                                       ; $59de: $5f
    ld bc, $27b5                                  ; $59df: $01 $b5 $27
    adc e                                         ; $59e2: $8b
    and c                                         ; $59e3: $a1
    ld c, h                                       ; $59e4: $4c
    or $c7                                        ; $59e5: $f6 $c7
    ld sp, hl                                     ; $59e7: $f9
    rst $28                                       ; $59e8: $ef
    ld c, c                                       ; $59e9: $49
    db $f4                                        ; $59ea: $f4
    ld l, c                                       ; $59eb: $69
    ld d, l                                       ; $59ec: $55
    call nc, Call_000_357d                        ; $59ed: $d4 $7d $35
    db $fd                                        ; $59f0: $fd
    ld a, [bc]                                    ; $59f1: $0a
    xor l                                         ; $59f2: $ad
    cp a                                          ; $59f3: $bf
    ret z                                         ; $59f4: $c8

    inc de                                        ; $59f5: $13
    ld l, a                                       ; $59f6: $6f
    inc b                                         ; $59f7: $04
    cp d                                          ; $59f8: $ba
    ld l, h                                       ; $59f9: $6c
    rrca                                          ; $59fa: $0f
    rst $38                                       ; $59fb: $ff
    and h                                         ; $59fc: $a4
    ld a, d                                       ; $59fd: $7a
    ld [hl], c                                    ; $59fe: $71
    rst $08                                       ; $59ff: $cf

jr_043_5a00:
    ld e, a                                       ; $5a00: $5f
    inc sp                                        ; $5a01: $33
    ld l, l                                       ; $5a02: $6d
    cp [hl]                                       ; $5a03: $be
    push de                                       ; $5a04: $d5
    rra                                           ; $5a05: $1f
    ld a, [hl+]                                   ; $5a06: $2a
    ld sp, hl                                     ; $5a07: $f9
    call $6136                                    ; $5a08: $cd $36 $61
    ld [$1f3f], sp                                ; $5a0b: $08 $3f $1f
    add hl, sp                                    ; $5a0e: $39
    dec [hl]                                      ; $5a0f: $35
    ld d, a                                       ; $5a10: $57
    cp [hl]                                       ; $5a11: $be
    xor $9d                                       ; $5a12: $ee $9d
    di                                            ; $5a14: $f3
    ld e, a                                       ; $5a15: $5f
    call $ffb4                                    ; $5a16: $cd $b4 $ff
    ld a, l                                       ; $5a19: $7d
    rst $18                                       ; $5a1a: $df
    and a                                         ; $5a1b: $a7
    adc h                                         ; $5a1c: $8c
    ld c, h                                       ; $5a1d: $4c
    call c, $fa94                                 ; $5a1e: $dc $94 $fa
    and d                                         ; $5a21: $a2
    reti                                          ; $5a22: $d9


    adc e                                         ; $5a23: $8b
    cp d                                          ; $5a24: $ba
    sbc d                                         ; $5a25: $9a
    dec hl                                        ; $5a26: $2b
    dec e                                         ; $5a27: $1d
    ld d, d                                       ; $5a28: $52
    inc d                                         ; $5a29: $14
    cp [hl]                                       ; $5a2a: $be
    inc l                                         ; $5a2b: $2c
    jr nz, jr_043_5a40                            ; $5a2c: $20 $12

    cpl                                           ; $5a2e: $2f
    ld h, l                                       ; $5a2f: $65
    ld h, h                                       ; $5a30: $64
    ld a, [c]                                     ; $5a31: $f2
    ld a, d                                       ; $5a32: $7a
    db $fd                                        ; $5a33: $fd
    rla                                           ; $5a34: $17
    ld a, [hl]                                    ; $5a35: $7e
    ld hl, $347e                                  ; $5a36: $21 $7e $34
    ld a, e                                       ; $5a39: $7b
    ld d, c                                       ; $5a3a: $51
    rla                                           ; $5a3b: $17
    push af                                       ; $5a3c: $f5
    pop af                                        ; $5a3d: $f1
    cp [hl]                                       ; $5a3e: $be
    pop af                                        ; $5a3f: $f1

jr_043_5a40:
    and l                                         ; $5a40: $a5
    ld a, [$5d0d]                                 ; $5a41: $fa $0d $5d
    ld e, [hl]                                    ; $5a44: $5e
    adc b                                         ; $5a45: $88
    rst $20                                       ; $5a46: $e7
    db $fc                                        ; $5a47: $fc
    push af                                       ; $5a48: $f5
    ld h, [hl]                                    ; $5a49: $66
    ld e, a                                       ; $5a4a: $5f
    ld [hl], l                                    ; $5a4b: $75
    db $fc                                        ; $5a4c: $fc
    ld d, [hl]                                    ; $5a4d: $56
    ld l, $1f                                     ; $5a4e: $2e $1f
    ld [hl], l                                    ; $5a50: $75
    add $17                                       ; $5a51: $c6 $17
    scf                                           ; $5a53: $37
    dec d                                         ; $5a54: $15
    ld d, d                                       ; $5a55: $52
    pop de                                        ; $5a56: $d1
    ld hl, $7c61                                  ; $5a57: $21 $61 $7c
    db $fd                                        ; $5a5a: $fd
    ld a, [bc]                                    ; $5a5b: $0a
    ld l, l                                       ; $5a5c: $6d
    ld h, h                                       ; $5a5d: $64
    ld a, a                                       ; $5a5e: $7f
    xor d                                         ; $5a5f: $aa
    rst $10                                       ; $5a60: $d7
    or h                                          ; $5a61: $b4
    dec de                                        ; $5a62: $1b
    set 6, d                                      ; $5a63: $cb $f2
    add $88                                       ; $5a65: $c6 $88
    cp d                                          ; $5a67: $ba

Jump_043_5a68:
    db $ec                                        ; $5a68: $ec
    or c                                          ; $5a69: $b1
    ld c, c                                       ; $5a6a: $49
    adc l                                         ; $5a6b: $8d
    ld a, b                                       ; $5a6c: $78
    jp hl                                         ; $5a6d: $e9


    ret c                                         ; $5a6e: $d8

    ld b, l                                       ; $5a6f: $45
    db $fd                                        ; $5a70: $fd
    sbc $9f                                       ; $5a71: $de $9f
    ld [c], a                                     ; $5a73: $e2
    sbc $39                                       ; $5a74: $de $39
    rst $38                                       ; $5a76: $ff
    pop bc                                        ; $5a77: $c1
    cp [hl]                                       ; $5a78: $be
    adc a                                         ; $5a79: $8f
    cpl                                           ; $5a7a: $2f
    ld a, [hl+]                                   ; $5a7b: $2a
    cp l                                          ; $5a7c: $bd
    ld a, l                                       ; $5a7d: $7d
    xor b                                         ; $5a7e: $a8
    ld a, h                                       ; $5a7f: $7c
    ret c                                         ; $5a80: $d8

    ld a, [hl]                                    ; $5a81: $7e
    ld e, c                                       ; $5a82: $59
    ld h, [hl]                                    ; $5a83: $66
    cp a                                          ; $5a84: $bf
    ld l, $cb                                     ; $5a85: $2e $cb
    dec [hl]                                      ; $5a87: $35
    db $10                                        ; $5a88: $10
    rst $20                                       ; $5a89: $e7
    ld b, a                                       ; $5a8a: $47
    xor b                                         ; $5a8b: $a8
    ld b, h                                       ; $5a8c: $44
    cp e                                          ; $5a8d: $bb
    ld [hl], c                                    ; $5a8e: $71
    db $d3                                        ; $5a8f: $d3
    xor a                                         ; $5a90: $af
    dec e                                         ; $5a91: $1d
    adc l                                         ; $5a92: $8d
    add sp, $22                                   ; $5a93: $e8 $22
    ld d, e                                       ; $5a95: $53
    ld [hl], e                                    ; $5a96: $73
    dec b                                         ; $5a97: $05
    cp [hl]                                       ; $5a98: $be
    ld [hl], a                                    ; $5a99: $77
    ld e, c                                       ; $5a9a: $59
    adc h                                         ; $5a9b: $8c
    ld a, [hl+]                                   ; $5a9c: $2a
    ld [$efa3], sp                                ; $5a9d: $08 $a3 $ef
    ei                                            ; $5aa0: $fb
    dec d                                         ; $5aa1: $15
    ld l, l                                       ; $5aa2: $6d
    and h                                         ; $5aa3: $a4
    ldh a, [$5f]                                  ; $5aa4: $f0 $5f
    sbc [hl]                                      ; $5aa6: $9e
    add hl, de                                    ; $5aa7: $19
    jp nz, $df93                                  ; $5aa8: $c2 $93 $df

    ei                                            ; $5aab: $fb

jr_043_5aac:
    ld h, e                                       ; $5aac: $63
    ret nc                                        ; $5aad: $d0

    ld c, [hl]                                    ; $5aae: $4e
    ld e, [hl]                                    ; $5aaf: $5e
    sub a                                         ; $5ab0: $97
    ld a, [de]                                    ; $5ab1: $1a
    cp c                                          ; $5ab2: $b9
    sbc l                                         ; $5ab3: $9d
    dec b                                         ; $5ab4: $05
    ld b, h                                       ; $5ab5: $44
    ld [c], a                                     ; $5ab6: $e2
    ld h, h                                       ; $5ab7: $64
    cp c                                          ; $5ab8: $b9
    ld b, $b2                                     ; $5ab9: $06 $b2
    inc c                                         ; $5abb: $0c

jr_043_5abc:
    ld b, e                                       ; $5abc: $43
    jr jr_043_5abc                                ; $5abd: $18 $fd

    ld a, [bc]                                    ; $5abf: $0a
    cp [hl]                                       ; $5ac0: $be
    db $fc                                        ; $5ac1: $fc
    sub a                                         ; $5ac2: $97
    ld h, a                                       ; $5ac3: $67
    add [hl]                                      ; $5ac4: $86
    ldh a, [$e8]                                  ; $5ac5: $f0 $e8
    ld d, d                                       ; $5ac7: $52
    ei                                            ; $5ac8: $fb
    call $d408                                    ; $5ac9: $cd $08 $d4
    ld e, h                                       ; $5acc: $5c
    ld bc, $539e                                  ; $5acd: $01 $9e $53
    ld hl, $3f85                                  ; $5ad0: $21 $85 $3f
    dec e                                         ; $5ad3: $1d
    adc l                                         ; $5ad4: $8d

Call_043_5ad5:
    call nc, $015a                                ; $5ad5: $d4 $5a $01
    ld l, l                                       ; $5ad8: $6d
    ld c, a                                       ; $5ad9: $4f
    rst $18                                       ; $5ada: $df
    rst $30                                       ; $5adb: $f7
    ld [hl], c                                    ; $5adc: $71
    ld b, $35                                     ; $5add: $06 $35
    ld [hl], c                                    ; $5adf: $71
    ld a, [hl]                                    ; $5ae0: $7e
    and h                                         ; $5ae1: $a4
    ld e, h                                       ; $5ae2: $5c
    db $ec                                        ; $5ae3: $ec
    ld d, $83                                     ; $5ae4: $16 $83
    jr z, jr_043_5b40                             ; $5ae6: $28 $58

    dec a                                         ; $5ae8: $3d
    ld a, l                                       ; $5ae9: $7d
    jp c, $5d7f                                   ; $5aea: $da $7f $5d

    ld d, $58                                     ; $5aed: $16 $58
    ld e, [hl]                                    ; $5aef: $5e
    and c                                         ; $5af0: $a1
    sub h                                         ; $5af1: $94
    pop de                                        ; $5af2: $d1
    and l                                         ; $5af3: $a5
    ld b, [hl]                                    ; $5af4: $46
    cp h                                          ; $5af5: $bc
    ld [hl], h                                    ; $5af6: $74
    db $ec                                        ; $5af7: $ec
    ld [c], a                                     ; $5af8: $e2
    and [hl]                                      ; $5af9: $a6
    jp nc, $f33f                                  ; $5afa: $d2 $3f $f3

    ld d, l                                       ; $5afd: $55
    db $10                                        ; $5afe: $10
    sbc [hl]                                      ; $5aff: $9e
    ld a, [hl]                                    ; $5b00: $7e
    dec b                                         ; $5b01: $05
    ld [hl], l                                    ; $5b02: $75
    ld b, [hl]                                    ; $5b03: $46
    or d                                          ; $5b04: $b2
    ld c, h                                       ; $5b05: $4c
    add hl, hl                                    ; $5b06: $29
    rst $30                                       ; $5b07: $f7
    push de                                       ; $5b08: $d5
    call nz, $ab0b                                ; $5b09: $c4 $0b $ab
    sbc $dc                                       ; $5b0c: $de $dc
    push hl                                       ; $5b0e: $e5
    dec d                                         ; $5b0f: $15
    ld c, d                                       ; $5b10: $4a
    sbc c                                         ; $5b11: $99
    jr nz, jr_043_5b52                            ; $5b12: $20 $3e

    db $f4                                        ; $5b14: $f4
    ld [hl+], a                                   ; $5b15: $22
    inc hl                                        ; $5b16: $23
    xor c                                         ; $5b17: $a9
    ld de, $eabb                                  ; $5b18: $11 $bb $ea
    dec bc                                        ; $5b1b: $0b
    ld c, a                                       ; $5b1c: $4f
    db $e4                                        ; $5b1d: $e4
    jr nz, jr_043_5aac                            ; $5b1e: $20 $8c

    jr c, @+$41                                   ; $5b20: $38 $3f

    or d                                          ; $5b22: $b2
    ld c, h                                       ; $5b23: $4c
    add hl, hl                                    ; $5b24: $29
    rra                                           ; $5b25: $1f
    rst $28                                       ; $5b26: $ef
    sbc e                                         ; $5b27: $9b
    or [hl]                                       ; $5b28: $b6
    cpl                                           ; $5b29: $2f
    ld a, [bc]                                    ; $5b2a: $0a
    dec sp                                        ; $5b2b: $3b
    push de                                       ; $5b2c: $d5
    ld l, a                                       ; $5b2d: $6f
    db $f4                                        ; $5b2e: $f4
    xor c                                         ; $5b2f: $a9
    ei                                            ; $5b30: $fb
    and l                                         ; $5b31: $a5
    call c, $9357                                 ; $5b32: $dc $57 $93
    rst $18                                       ; $5b35: $df
    ei                                            ; $5b36: $fb
    ld d, e                                       ; $5b37: $53
    ld hl, sp-$7b                                 ; $5b38: $f8 $85
    ld hl, sp+$29                                 ; $5b3a: $f8 $29
    call nc, $9439                                ; $5b3c: $d4 $39 $94
    ld [hl], d                                    ; $5b3f: $72

jr_043_5b40:
    db $e4                                        ; $5b40: $e4
    rst $30                                       ; $5b41: $f7
    dec hl                                        ; $5b42: $2b
    sbc l                                         ; $5b43: $9d
    ld c, b                                       ; $5b44: $48
    xor d                                         ; $5b45: $aa
    add hl, hl                                    ; $5b46: $29
    ld l, h                                       ; $5b47: $6c
    ld d, e                                       ; $5b48: $53
    inc sp                                        ; $5b49: $33
    ld [hl], l                                    ; $5b4a: $75
    and [hl]                                      ; $5b4b: $a6
    and $0a                                       ; $5b4c: $e6 $0a
    ld [hl], l                                    ; $5b4e: $75
    ld b, [hl]                                    ; $5b4f: $46
    ld [c], a                                     ; $5b50: $e2
    ld a, l                                       ; $5b51: $7d

jr_043_5b52:
    db $e3                                        ; $5b52: $e3
    bit 4, d                                      ; $5b53: $cb $62
    db $10                                        ; $5b55: $10
    dec b                                         ; $5b56: $05
    ld b, e                                       ; $5b57: $43
    call nc, $2cef                                ; $5b58: $d4 $ef $2c
    cpl                                           ; $5b5b: $2f
    rst $20                                       ; $5b5c: $e7
    and [hl]                                      ; $5b5d: $a6
    rst $28                                       ; $5b5e: $ef
    ei                                            ; $5b5f: $fb
    ld hl, sp-$5e                                 ; $5b60: $f8 $a2
    jp nc, $c7db                                  ; $5b62: $d2 $db $c7

    ld sp, hl                                     ; $5b65: $f9
    sub c                                         ; $5b66: $91
    ld [hl], d                                    ; $5b67: $72
    rra                                           ; $5b68: $1f
    db $ed                                        ; $5b69: $ed
    ld [$e149], a                                 ; $5b6a: $ea $49 $e1
    rst $20                                       ; $5b6d: $e7
    ld c, c                                       ; $5b6e: $49
    add l                                         ; $5b6f: $85
    ld d, d                                       ; $5b70: $52
    ld h, $5e                                     ; $5b71: $26 $5e
    ld a, [hl-]                                   ; $5b73: $3a
    halt                                          ; $5b74: $76
    ld [hl], c                                    ; $5b75: $71
    ld d, e                                       ; $5b76: $53
    jp hl                                         ; $5b77: $e9


    sbc a                                         ; $5b78: $9f
    ld sp, hl                                     ; $5b79: $f9
    ld a, [hl+]                                   ; $5b7a: $2a
    ld [$9f4f], sp                                ; $5b7b: $08 $4f $9f
    jp c, $2a1f                                   ; $5b7e: $da $1f $2a

    pop de                                        ; $5b81: $d1
    dec de                                        ; $5b82: $1b
    ld h, l                                       ; $5b83: $65
    sbc [hl]                                      ; $5b84: $9e
    add sp, $61                                   ; $5b85: $e8 $61
    ld [hl-], a                                   ; $5b87: $32
    adc $cd                                       ; $5b88: $ce $cd
    sbc [hl]                                      ; $5b8a: $9e
    inc d                                         ; $5b8b: $14
    cp d                                          ; $5b8c: $ba
    rst $30                                       ; $5b8d: $f7
    add a                                         ; $5b8e: $87
    ld d, c                                       ; $5b8f: $51
    ld hl, sp-$05                                 ; $5b90: $f8 $fb
    dec d                                         ; $5b92: $15
    or l                                          ; $5b93: $b5
    ccf                                           ; $5b94: $3f
    push de                                       ; $5b95: $d5
    ld l, h                                       ; $5b96: $6c
    ld b, [hl]                                    ; $5b97: $46
    call c, $4414                                 ; $5b98: $dc $14 $44
    ld l, a                                       ; $5b9b: $6f
    sub h                                         ; $5b9c: $94
    add hl, de                                    ; $5b9d: $19
    add hl, hl                                    ; $5b9e: $29
    ld [hl], h                                    ; $5b9f: $74
    rst $28                                       ; $5ba0: $ef
    rrca                                          ; $5ba1: $0f
    and e                                         ; $5ba2: $a3
    ldh a, [$f7]                                  ; $5ba3: $f0 $f7
    ld a, l                                       ; $5ba5: $7d
    cp a                                          ; $5ba6: $bf
    ld [bc], a                                    ; $5ba7: $02
    sbc l                                         ; $5ba8: $9d
    ret z                                         ; $5ba9: $c8

    ld h, a                                       ; $5baa: $67
    add hl, de                                    ; $5bab: $19
    ld [c], a                                     ; $5bac: $e2
    adc l                                         ; $5bad: $8d
    jr nz, jr_043_5c26                            ; $5bae: $20 $76

    ld a, [de]                                    ; $5bb0: $1a
    inc b                                         ; $5bb1: $04
    or $6c                                        ; $5bb2: $f6 $6c
    rst $20                                       ; $5bb4: $e7
    ld d, b                                       ; $5bb5: $50
    inc sp                                        ; $5bb6: $33
    ld [hl], l                                    ; $5bb7: $75
    ld h, c                                       ; $5bb8: $61
    pop af                                        ; $5bb9: $f1
    adc [hl]                                      ; $5bba: $8e
    ld sp, $8f95                                  ; $5bbb: $31 $95 $8f
    adc h                                         ; $5bbe: $8c
    call nz, $79ff                                ; $5bbf: $c4 $ff $79
    sub d                                         ; $5bc2: $92
    ld a, [c]                                     ; $5bc3: $f2
    and h                                         ; $5bc4: $a4
    ld a, [de]                                    ; $5bc5: $1a
    dec [hl]                                      ; $5bc6: $35
    ld d, c                                       ; $5bc7: $51
    rla                                           ; $5bc8: $17
    jp z, $8fb7                                   ; $5bc9: $ca $b7 $8f

    ld c, b                                       ; $5bcc: $48
    ld a, h                                       ; $5bcd: $7c
    db $db                                        ; $5bce: $db
    ld e, a                                       ; $5bcf: $5f
    ld [hl], e                                    ; $5bd0: $73
    dec b                                         ; $5bd1: $05
    ld l, l                                       ; $5bd2: $6d
    db $e4                                        ; $5bd3: $e4
    dec d                                         ; $5bd4: $15
    ld c, d                                       ; $5bd5: $4a
    sbc c                                         ; $5bd6: $99
    cp b                                          ; $5bd7: $b8
    add hl, hl                                    ; $5bd8: $29
    rra                                           ; $5bd9: $1f
    rst $28                                       ; $5bda: $ef
    dec sp                                        ; $5bdb: $3b
    ld [hl], a                                    ; $5bdc: $77
    ld e, a                                       ; $5bdd: $5f
    ld c, l                                       ; $5bde: $4d
    xor l                                         ; $5bdf: $ad
    dec d                                         ; $5be0: $15
    or l                                          ; $5be1: $b5
    ld e, a                                       ; $5be2: $5f
    or e                                          ; $5be3: $b3
    ld d, e                                       ; $5be4: $53
    pop af                                        ; $5be5: $f1
    ld a, a                                       ; $5be6: $7f
    inc d                                         ; $5be7: $14
    sbc b                                         ; $5be8: $98
    daa                                           ; $5be9: $27
    adc $8f                                       ; $5bea: $ce $8f
    ld d, h                                       ; $5bec: $54
    or e                                          ; $5bed: $b3
    ld sp, hl                                     ; $5bee: $f9
    and d                                         ; $5bef: $a2
    ld [hl], b                                    ; $5bf0: $70
    ld e, c                                       ; $5bf1: $59
    ld l, h                                       ; $5bf2: $6c
    cp h                                          ; $5bf3: $bc
    jr z, jr_043_5c5b                             ; $5bf4: $28 $65

    db $ec                                        ; $5bf6: $ec
    ld [c], a                                     ; $5bf7: $e2
    ld a, a                                       ; $5bf8: $7f
    sub c                                         ; $5bf9: $91
    adc c                                         ; $5bfa: $89
    ld a, d                                       ; $5bfb: $7a
    sbc [hl]                                      ; $5bfc: $9e
    call c, Call_000_1ece                         ; $5bfd: $dc $ce $1e
    sbc e                                         ; $5c00: $9b
    cp b                                          ; $5c01: $b8
    ld de, $d3b6                                  ; $5c02: $11 $b6 $d3
    ld d, e                                       ; $5c05: $53
    sbc [hl]                                      ; $5c06: $9e
    inc l                                         ; $5c07: $2c
    or b                                          ; $5c08: $b0
    inc l                                         ; $5c09: $2c
    ld [hl], $0c                                  ; $5c0a: $36 $0c
    ld c, l                                       ; $5c0c: $4d
    add e                                         ; $5c0d: $83
    ld hl, $b3fb                                  ; $5c0e: $21 $fb $b3
    inc e                                         ; $5c11: $1c
    ret c                                         ; $5c12: $d8

    cp [hl]                                       ; $5c13: $be
    ld c, a                                       ; $5c14: $4f
    ld a, e                                       ; $5c15: $7b
    rra                                           ; $5c16: $1f
    rst $18                                       ; $5c17: $df
    push bc                                       ; $5c18: $c5
    adc [hl]                                      ; $5c19: $8e
    ld de, $67ff                                  ; $5c1a: $11 $ff $67
    cp c                                          ; $5c1d: $b9
    daa                                           ; $5c1e: $27
    ld [de], a                                    ; $5c1f: $12
    sbc a                                         ; $5c20: $9f
    daa                                           ; $5c21: $27
    or a                                          ; $5c22: $b7
    db $d3                                        ; $5c23: $d3
    or c                                          ; $5c24: $b1
    cp l                                          ; $5c25: $bd

jr_043_5c26:
    ld h, b                                       ; $5c26: $60
    rst $28                                       ; $5c27: $ef
    adc c                                         ; $5c28: $89
    jp nz, $eb4e                                  ; $5c29: $c2 $4e $eb

    rst $30                                       ; $5c2c: $f7
    db $e4                                        ; $5c2d: $e4
    db $ec                                        ; $5c2e: $ec
    pop de                                        ; $5c2f: $d1
    and l                                         ; $5c30: $a5
    db $d3                                        ; $5c31: $d3
    db $e3                                        ; $5c32: $e3
    dec de                                        ; $5c33: $1b
    ld e, d                                       ; $5c34: $5a
    ld [c], a                                     ; $5c35: $e2
    rst $38                                       ; $5c36: $ff
    inc d                                         ; $5c37: $14
    ld [hl], $68                                  ; $5c38: $36 $68
    rst $08                                       ; $5c3a: $cf
    sub e                                         ; $5c3b: $93
    adc l                                         ; $5c3c: $8d
    jr c, @+$01                                   ; $5c3d: $38 $ff

    dec a                                         ; $5c3f: $3d
    ld a, c                                       ; $5c40: $79
    ld b, c                                       ; $5c41: $41
    or $a7                                        ; $5c42: $f6 $a7
    ld a, l                                       ; $5c44: $7d
    rst $10                                       ; $5c45: $d7
    sub [hl]                                      ; $5c46: $96
    cp l                                          ; $5c47: $bd
    inc e                                         ; $5c48: $1c
    ld [hl], e                                    ; $5c49: $73
    db $fc                                        ; $5c4a: $fc
    rra                                           ; $5c4b: $1f
    rst $28                                       ; $5c4c: $ef
    inc sp                                        ; $5c4d: $33
    ld c, a                                       ; $5c4e: $4f
    xor b                                         ; $5c4f: $a8
    ld a, h                                       ; $5c50: $7c
    ld a, [hl-]                                   ; $5c51: $3a
    or [hl]                                       ; $5c52: $b6
    cpl                                           ; $5c53: $2f
    sbc $d3                                       ; $5c54: $de $d3
    xor b                                         ; $5c56: $a8
    dec a                                         ; $5c57: $3d
    pop af                                        ; $5c58: $f1
    ld b, [hl]                                    ; $5c59: $46
    sub b                                         ; $5c5a: $90

jr_043_5c5b:
    rst $10                                       ; $5c5b: $d7
    or $a5                                        ; $5c5c: $f6 $a5
    cp b                                          ; $5c5e: $b8
    ld [hl], a                                    ; $5c5f: $77
    adc $7f                                       ; $5c60: $ce $7f
    ld a, l                                       ; $5c62: $7d
    ld a, [hl-]                                   ; $5c63: $3a
    and h                                         ; $5c64: $a4
    jr z, jr_043_5ca3                             ; $5c65: $28 $3c

    ld d, c                                       ; $5c67: $51
    jr nz, jr_043_5ca7                            ; $5c68: $20 $3d

    ld d, b                                       ; $5c6a: $50
    ld a, [bc]                                    ; $5c6b: $0a
    inc c                                         ; $5c6c: $0c
    reti                                          ; $5c6d: $d9


    ld e, $27                                     ; $5c6e: $1e $27
    xor $85                                       ; $5c70: $ee $85
    ld d, c                                       ; $5c72: $51
    xor [hl]                                      ; $5c73: $ae
    sbc d                                         ; $5c74: $9a
    xor b                                         ; $5c75: $a8
    ld c, e                                       ; $5c76: $4b
    db $dd                                        ; $5c77: $dd
    db $e3                                        ; $5c78: $e3
    sub c                                         ; $5c79: $91
    ld a, $be                                     ; $5c7a: $3e $be
    ld l, [hl]                                    ; $5c7c: $6e
    xor d                                         ; $5c7d: $aa
    ld a, [bc]                                    ; $5c7e: $0a
    call z, $e713                                 ; $5c7f: $cc $13 $e7
    ld b, a                                       ; $5c82: $47
    call nc, $f5e8                                ; $5c83: $d4 $e8 $f5
    rst $30                                       ; $5c86: $f7
    push de                                       ; $5c87: $d5
    ld h, h                                       ; $5c88: $64
    ld sp, $6f2c                                  ; $5c89: $31 $2c $6f
    ld l, a                                       ; $5c8c: $6f
    ld [$cf95], sp                                ; $5c8d: $08 $95 $cf
    ld [hl-], a                                   ; $5c90: $32
    call nz, Call_043_411b                        ; $5c91: $c4 $1b $41
    rst $18                                       ; $5c94: $df
    rst $30                                       ; $5c95: $f7
    dec hl                                        ; $5c96: $2b
    xor l                                         ; $5c97: $ad
    add $4d                                       ; $5c98: $c6 $4d
    ld sp, hl                                     ; $5c9a: $f9
    cp b                                          ; $5c9b: $b8
    swap d                                        ; $5c9c: $cb $32
    ld l, h                                       ; $5c9e: $6c
    push af                                       ; $5c9f: $f5
    and h                                         ; $5ca0: $a4
    ret nz                                        ; $5ca1: $c0

    ret z                                         ; $5ca2: $c8

jr_043_5ca3:
    inc sp                                        ; $5ca3: $33
    call nc, $015a                                ; $5ca4: $d4 $5a $01

jr_043_5ca7:
    ld [hl], l                                    ; $5ca7: $75
    ld b, [hl]                                    ; $5ca8: $46
    or d                                          ; $5ca9: $b2
    daa                                           ; $5caa: $27
    ld h, l                                       ; $5cab: $65
    ld a, [$ffb4]                                 ; $5cac: $fa $b4 $ff
    jp c, Jump_043_65db                           ; $5caf: $da $db $65

    ld a, a                                       ; $5cb2: $7f
    sub [hl]                                      ; $5cb3: $96
    ld hl, $08de                                  ; $5cb4: $21 $de $08
    ld [c], a                                     ; $5cb7: $e2
    ld l, $8b                                     ; $5cb8: $2e $8b
    dec c                                         ; $5cba: $0d
    ld b, e                                       ; $5cbb: $43
    db $d3                                        ; $5cbc: $d3
    ld h, b                                       ; $5cbd: $60
    push af                                       ; $5cbe: $f5
    ld b, h                                       ; $5cbf: $44
    db $fd                                        ; $5cc0: $fd
    adc [hl]                                      ; $5cc1: $8e
    sub a                                         ; $5cc2: $97
    adc [hl]                                      ; $5cc3: $8e
    sbc e                                         ; $5cc4: $9b
    ld a, $75                                     ; $5cc5: $3e $75
    ld b, [hl]                                    ; $5cc7: $46
    ld [c], a                                     ; $5cc8: $e2
    ld l, $86                                     ; $5cc9: $2e $86
    jp nz, $e71f                                  ; $5ccb: $c2 $1f $e7

    ld b, a                                       ; $5cce: $47
    adc d                                         ; $5ccf: $8a
    sbc e                                         ; $5cd0: $9b
    push bc                                       ; $5cd1: $c5
    adc $f6                                       ; $5cd2: $ce $f6

Jump_043_5cd4:
    db $f4                                        ; $5cd4: $f4
    dec hl                                        ; $5cd5: $2b
    db $ed                                        ; $5cd6: $ed
    ld a, l                                       ; $5cd7: $7d
    sub [hl]                                      ; $5cd8: $96
    ld hl, $08de                                  ; $5cd9: $21 $de $08
    ld d, d                                       ; $5cdc: $52
    inc hl                                        ; $5cdd: $23
    add l                                         ; $5cde: $85
    ld a, d                                       ; $5cdf: $7a
    cp l                                          ; $5ce0: $bd
    rst $20                                       ; $5ce1: $e7
    ld c, $c2                                     ; $5ce2: $0e $c2
    ret z                                         ; $5ce4: $c8

    ld [bc], a                                    ; $5ce5: $02
    dec bc                                        ; $5ce6: $0b
    sub l                                         ; $5ce7: $95
    ld c, a                                       ; $5ce8: $4f
    sbc c                                         ; $5ce9: $99
    db $fd                                        ; $5cea: $fd
    ld e, c                                       ; $5ceb: $59
    ld h, b                                       ; $5cec: $60
    ld h, l                                       ; $5ced: $65
    db $e4                                        ; $5cee: $e4
    ei                                            ; $5cef: $fb
    or h                                          ; $5cf0: $b4
    ld b, $f2                                     ; $5cf1: $06 $f2
    or $87                                        ; $5cf3: $f6 $87
    ld l, c                                       ; $5cf5: $69
    db $10                                        ; $5cf6: $10
    ld a, [c]                                     ; $5cf7: $f2
    cpl                                           ; $5cf8: $2f
    ld c, a                                       ; $5cf9: $4f
    cp [hl]                                       ; $5cfa: $be
    ldh a, [$b5]                                  ; $5cfb: $f0 $b5
    sub h                                         ; $5cfd: $94
    sbc e                                         ; $5cfe: $9b
    ld d, h                                       ; $5cff: $54
    sub a                                         ; $5d00: $97
    ld [hl], c                                    ; $5d01: $71
    adc [hl]                                      ; $5d02: $8e
    ld l, $b0                                     ; $5d03: $2e $b0
    ld a, [$2ea3]                                 ; $5d05: $fa $a3 $2e
    dec e                                         ; $5d08: $1d
    adc l                                         ; $5d09: $8d
    inc b                                         ; $5d0a: $04
    ld a, c                                       ; $5d0b: $79
    ld d, c                                       ; $5d0c: $51
    ld d, [hl]                                    ; $5d0d: $56
    ld a, a                                       ; $5d0e: $7f
    ld a, $0e                                     ; $5d0f: $3e $0e
    and $de                                       ; $5d11: $e6 $de
    sub b                                         ; $5d13: $90
    ccf                                           ; $5d14: $3f
    jp z, $a7d3                                   ; $5d15: $ca $d3 $a7

    dec [hl]                                      ; $5d18: $35
    ld a, [hl-]                                   ; $5d19: $3a
    ld a, [c]                                     ; $5d1a: $f2
    pop af                                        ; $5d1b: $f1
    adc [hl]                                      ; $5d1c: $8e
    ld sp, $d795                                  ; $5d1d: $31 $95 $d7
    and l                                         ; $5d20: $a5
    or $9b                                        ; $5d21: $f6 $9b
    ld de, $fbe8                                  ; $5d23: $11 $e8 $fb
    ld a, $05                                     ; $5d26: $3e $05
    rla                                           ; $5d28: $17
    ld a, [hl+]                                   ; $5d29: $2a
    xor c                                         ; $5d2a: $a9
    ld e, [hl]                                    ; $5d2b: $5e
    sbc e                                         ; $5d2c: $9b
    add sp, -$13                                  ; $5d2d: $e8 $ed
    ret                                           ; $5d2f: $c9


    dec hl                                        ; $5d30: $2b
    push hl                                       ; $5d31: $e5
    xor d                                         ; $5d32: $aa
    jp hl                                         ; $5d33: $e9


    ld d, a                                       ; $5d34: $57
    ld [hl], l                                    ; $5d35: $75
    ld b, [hl]                                    ; $5d36: $46
    ld [c], a                                     ; $5d37: $e2
    rst $38                                       ; $5d38: $ff
    ld a, b                                       ; $5d39: $78
    xor c                                         ; $5d3a: $a9
    db $10                                        ; $5d3b: $10
    ld l, a                                       ; $5d3c: $6f
    db $e4                                        ; $5d3d: $e4
    ld a, c                                       ; $5d3e: $79
    ld a, [$e074]                                 ; $5d3f: $fa $74 $e0
    adc a                                         ; $5d42: $8f
    adc h                                         ; $5d43: $8c

Jump_043_5d44:
    ld l, $6a                                     ; $5d44: $2e $6a
    ld c, b                                       ; $5d46: $48
    xor e                                         ; $5d47: $ab
    ccf                                           ; $5d48: $3f
    halt                                          ; $5d49: $76
    ld l, [hl]                                    ; $5d4a: $6e
    xor d                                         ; $5d4b: $aa
    inc de                                        ; $5d4c: $13
    ld [hl], a                                    ; $5d4d: $77
    ld l, a                                       ; $5d4e: $6f
    ld [$e653], sp                                ; $5d4f: $08 $53 $e6
    adc c                                         ; $5d52: $89
    ld a, [$5fb8]                                 ; $5d53: $fa $b8 $5f
    and [hl]                                      ; $5d56: $a6
    and $0a                                       ; $5d57: $e6 $0a
    cp [hl]                                       ; $5d59: $be
    cp a                                          ; $5d5a: $bf
    add b                                         ; $5d5b: $80
    sbc h                                         ; $5d5c: $9c
    jr c, @+$41                                   ; $5d5d: $38 $3f

    ld [c], a                                     ; $5d5f: $e2
    ld l, $e5                                     ; $5d60: $2e $e5
    dec c                                         ; $5d62: $0d
    ld d, l                                       ; $5d63: $55
    dec [hl]                                      ; $5d64: $35
    add hl, sp                                    ; $5d65: $39
    ld [hl], c                                    ; $5d66: $71
    inc hl                                        ; $5d67: $23
    ld l, h                                       ; $5d68: $6c
    rst $08                                       ; $5d69: $cf
    rla                                           ; $5d6a: $17
    rra                                           ; $5d6b: $1f
    ld a, d                                       ; $5d6c: $7a
    cp d                                          ; $5d6d: $ba
    call nc, Call_043_661d                        ; $5d6e: $d4 $1d $66
    ld e, b                                       ; $5d71: $58
    cp a                                          ; $5d72: $bf
    ld [bc], a                                    ; $5d73: $02
    ld l, l                                       ; $5d74: $6d
    ret c                                         ; $5d75: $d8

    call nz, $908d                                ; $5d76: $c4 $8d $90
    daa                                           ; $5d79: $27
    inc a                                         ; $5d7a: $3c
    ld [hl], c                                    ; $5d7b: $71
    ld a, [hl]                                    ; $5d7c: $7e
    call nz, $a53b                                ; $5d7d: $c4 $3b $a5
    jr nz, @+$77                                  ; $5d80: $20 $75

    adc a                                         ; $5d82: $8f
    ld b, a                                       ; $5d83: $47
    ld a, [$7fb4]                                 ; $5d84: $fa $b4 $7f
    xor c                                         ; $5d87: $a9
    sub c                                         ; $5d88: $91
    add d                                         ; $5d89: $82
    ld l, d                                       ; $5d8a: $6a
    ld sp, $a0a4                                  ; $5d8b: $31 $a4 $a0
    jp nc, $f3db                                  ; $5d8e: $d2 $db $f3

    call nz, $91f9                                ; $5d91: $c4 $f9 $91
    ld [$ea32], a                                 ; $5d94: $ea $32 $ea
    cp [hl]                                       ; $5d97: $be
    inc d                                         ; $5d98: $14
    add h                                         ; $5d99: $84
    ld e, a                                       ; $5d9a: $5f
    ld a, b                                       ; $5d9b: $78
    ld a, [$1d15]                                 ; $5d9c: $fa $15 $1d
    ld hl, sp+$75                                 ; $5d9f: $f8 $75
    ld e, c                                       ; $5da1: $59
    ld h, b                                       ; $5da2: $60
    add hl, de                                    ; $5da3: $19
    ld [hl], l                                    ; $5da4: $75
    ld l, a                                       ; $5da5: $6f
    ld a, h                                       ; $5da6: $7c
    cp d                                          ; $5da7: $ba
    ldh a, [$65]                                  ; $5da8: $f0 $65
    call nc, $9f7d                                ; $5daa: $d4 $7d $9f
    ld [hl], $32                                  ; $5dad: $36 $32
    ld [$fc9e], a                                 ; $5daf: $ea $9e $fc
    cp h                                          ; $5db2: $bc
    jr c, jr_043_5df4                             ; $5db3: $38 $3f

    jp nz, $b274                                  ; $5db5: $c2 $74 $b2

    cp h                                          ; $5db8: $bc
    ld [hl-], a                                   ; $5db9: $32
    add sp, -$1e                                  ; $5dba: $e8 $e2
    ld b, e                                       ; $5dbc: $43
    ld e, a                                       ; $5dbd: $5f
    call nc, Call_043_6bc4                        ; $5dbe: $d4 $c4 $6b
    ldh a, [$a1]                                  ; $5dc1: $f0 $a1
    db $10                                        ; $5dc3: $10
    ld a, [hl]                                    ; $5dc4: $7e
    ld a, [c]                                     ; $5dc5: $f2
    ld h, l                                       ; $5dc6: $65
    ld d, d                                       ; $5dc7: $52
    ld a, e                                       ; $5dc8: $7b
    or h                                          ; $5dc9: $b4
    xor $de                                       ; $5dca: $ee $de
    cp b                                          ; $5dcc: $b8
    db $e4                                        ; $5dcd: $e4
    and h                                         ; $5dce: $a4
    inc e                                         ; $5dcf: $1c
    ld a, [hl+]                                   ; $5dd0: $2a
    db $f4                                        ; $5dd1: $f4
    dec hl                                        ; $5dd2: $2b
    or l                                          ; $5dd3: $b5
    daa                                           ; $5dd4: $27
    db $e4                                        ; $5dd5: $e4
    dec d                                         ; $5dd6: $15
    sbc [hl]                                      ; $5dd7: $9e
    ld l, h                                       ; $5dd8: $6c
    ld e, h                                       ; $5dd9: $5c
    sub b                                         ; $5dda: $90
    cp d                                          ; $5ddb: $ba
    rst $00                                       ; $5ddc: $c7
    inc hl                                        ; $5ddd: $23
    add hl, sp                                    ; $5dde: $39
    add hl, hl                                    ; $5ddf: $29
    add a                                         ; $5de0: $87
    ld a, [bc]                                    ; $5de1: $0a
    ld a, l                                       ; $5de2: $7d
    ld a, h                                       ; $5de3: $7c
    ld de, $4919                                  ; $5de4: $11 $19 $49
    pop hl                                        ; $5de7: $e1
    daa                                           ; $5de8: $27
    ccf                                           ; $5de9: $3f
    dec b                                         ; $5dea: $05
    ld a, [de]                                    ; $5deb: $1a
    add l                                         ; $5dec: $85
    xor b                                         ; $5ded: $a8
    ld c, c                                       ; $5dee: $49
    add l                                         ; $5def: $85
    cp [hl]                                       ; $5df0: $be
    rst $28                                       ; $5df1: $ef
    di                                            ; $5df2: $f3
    ld a, e                                       ; $5df3: $7b

jr_043_5df4:
    adc a                                         ; $5df4: $8f
    ld a, l                                       ; $5df5: $7d
    jp z, $7269                                   ; $5df6: $ca $69 $72

    sbc $73                                       ; $5df9: $de $73
    rra                                           ; $5dfb: $1f
    rst $20                                       ; $5dfc: $e7
    ld b, a                                       ; $5dfd: $47
    ld a, [bc]                                    ; $5dfe: $0a
    ccf                                           ; $5dff: $3f
    ld sp, hl                                     ; $5e00: $f9
    add hl, hl                                    ; $5e01: $29
    ret nc                                        ; $5e02: $d0

    jr z, jr_043_5e49                             ; $5e03: $28 $44

    ld c, l                                       ; $5e05: $4d
    ld [hl], $ae                                  ; $5e06: $36 $ae
    and $0a                                       ; $5e08: $e6 $0a
    ld [hl], l                                    ; $5e0a: $75
    ld l, l                                       ; $5e0b: $6d
    ld d, $bb                                     ; $5e0c: $16 $bb
    adc c                                         ; $5e0e: $89
    sbc e                                         ; $5e0f: $9b
    ld d, d                                       ; $5e10: $52
    ld e, a                                       ; $5e11: $5f
    sbc a                                         ; $5e12: $9f
    cp d                                          ; $5e13: $ba
    ld [hl], b                                    ; $5e14: $70
    xor $79                                       ; $5e15: $ee $79
    ld [c], a                                     ; $5e17: $e2
    db $fc                                        ; $5e18: $fc
    ld c, b                                       ; $5e19: $48
    sbc e                                         ; $5e1a: $9b
    call nc, $bdeb                                ; $5e1b: $d4 $eb $bd
    ret z                                         ; $5e1e: $c8

    ld c, b                                       ; $5e1f: $48
    or h                                          ; $5e20: $b4
    ld a, l                                       ; $5e21: $7d
    ld a, c                                       ; $5e22: $79
    cp l                                          ; $5e23: $bd
    cp $3e                                        ; $5e24: $fe $3e
    add l                                         ; $5e26: $85
    rst $18                                       ; $5e27: $df
    cp c                                          ; $5e28: $b9
    rst $20                                       ; $5e29: $e7
    ret                                           ; $5e2a: $c9


    cp $68                                        ; $5e2b: $fe $68
    ld e, a                                       ; $5e2d: $5f
    jp hl                                         ; $5e2e: $e9


    ld e, a                                       ; $5e2f: $5f
    sub a                                         ; $5e30: $97
    db $fd                                        ; $5e31: $fd
    ld e, c                                       ; $5e32: $59
    db $ec                                        ; $5e33: $ec
    xor d                                         ; $5e34: $aa
    rrca                                          ; $5e35: $0f
    add hl, sp                                    ; $5e36: $39
    sbc e                                         ; $5e37: $9b
    ccf                                           ; $5e38: $3f
    adc $8f                                       ; $5e39: $ce $8f
    ld d, h                                       ; $5e3b: $54
    rla                                           ; $5e3c: $17
    rst $38                                       ; $5e3d: $ff
    rst $00                                       ; $5e3e: $c7
    dec bc                                        ; $5e3f: $0b
    xor e                                         ; $5e40: $ab
    sbc [hl]                                      ; $5e41: $9e
    and a                                         ; $5e42: $a7
    ld e, a                                       ; $5e43: $5f
    ld bc, $7fed                                  ; $5e44: $01 $ed $7f
    ld a, [bc]                                    ; $5e47: $0a
    ld [hl+], a                                   ; $5e48: $22

jr_043_5e49:
    inc hl                                        ; $5e49: $23
    add c                                         ; $5e4a: $81
    ld a, l                                       ; $5e4b: $7d
    ld [hl], $bd                                  ; $5e4c: $36 $bd
    ld a, h                                       ; $5e4e: $7c
    xor d                                         ; $5e4f: $aa
    sub e                                         ; $5e50: $93
    ld [hl], a                                    ; $5e51: $77
    xor $de                                       ; $5e52: $ee $de
    or $eb                                        ; $5e54: $f6 $eb
    ld [c], a                                     ; $5e56: $e2
    db $fc                                        ; $5e57: $fc
    rla                                           ; $5e58: $17
    ret c                                         ; $5e59: $d8

    rst $10                                       ; $5e5a: $d7
    ld e, d                                       ; $5e5b: $5a
    ld bc, $d86d                                  ; $5e5c: $01 $6d $d8
    rst $20                                       ; $5e5f: $e7
    halt                                          ; $5e60: $76
    xor d                                         ; $5e61: $aa
    sbc e                                         ; $5e62: $9b
    inc l                                         ; $5e63: $2c
    xor a                                         ; $5e64: $af
    ld l, h                                       ; $5e65: $6c
    inc b                                         ; $5e66: $04
    ld a, l                                       ; $5e67: $7d
    ld e, d                                       ; $5e68: $5a
    dec c                                         ; $5e69: $0d
    add hl, sp                                    ; $5e6a: $39
    sbc e                                         ; $5e6b: $9b
    ld de, $1205                                  ; $5e6c: $11 $05 $12
    ld b, c                                       ; $5e6f: $41
    add hl, hl                                    ; $5e70: $29
    jr nc, jr_043_5eb7                            ; $5e71: $30 $44

    ld d, c                                       ; $5e73: $51
    sbc e                                         ; $5e74: $9b
    cp b                                          ; $5e75: $b8
    sub c                                         ; $5e76: $91
    ld d, h                                       ; $5e77: $54
    add sp, -$2d                                  ; $5e78: $e8 $d3
    ld e, $bd                                     ; $5e7a: $1e $bd
    call nc, $9b88                                ; $5e7c: $d4 $88 $9b
    ld d, d                                       ; $5e7f: $52
    ld e, a                                       ; $5e80: $5f
    cp h                                          ; $5e81: $bc
    ld h, e                                       ; $5e82: $63
    inc c                                         ; $5e83: $0c
    ld e, l                                       ; $5e84: $5d
    sub b                                         ; $5e85: $90
    sbc e                                         ; $5e86: $9b
    cp b                                          ; $5e87: $b8
    add hl, hl                                    ; $5e88: $29
    push af                                       ; $5e89: $f5
    ld b, l                                       ; $5e8a: $45
    ld b, c                                       ; $5e8b: $41
    ccf                                           ; $5e8c: $3f
    dec de                                        ; $5e8d: $1b
    ld a, l                                       ; $5e8e: $7d
    rst $18                                       ; $5e8f: $df
    xor a                                         ; $5e90: $af
    ld l, l                                       ; $5e91: $6d
    ret c                                         ; $5e92: $d8

    rst $00                                       ; $5e93: $c7
    add a                                         ; $5e94: $87
    sbc [hl]                                      ; $5e95: $9e
    ld l, $9f                                     ; $5e96: $2e $9f
    jp c, Jump_043_75a3                           ; $5e98: $da $a3 $75

    rst $30                                       ; $5e9b: $f7
    add $45                                       ; $5e9c: $c6 $45
    rla                                           ; $5e9e: $17
    scf                                           ; $5e9f: $37
    sub d                                         ; $5ea0: $92
    adc l                                         ; $5ea1: $8d
    xor e                                         ; $5ea2: $ab
    ld d, l                                       ; $5ea3: $55
    ld [hl], e                                    ; $5ea4: $73
    dec b                                         ; $5ea5: $05
    db $ed                                        ; $5ea6: $ed
    pop de                                        ; $5ea7: $d1
    ld c, e                                       ; $5ea8: $4b
    adc l                                         ; $5ea9: $8d
    inc d                                         ; $5eaa: $14
    ld d, h                                       ; $5eab: $54
    adc e                                         ; $5eac: $8b
    ld hl, $246e                                  ; $5ead: $21 $6e $24
    dec d                                         ; $5eb0: $15
    ld a, [$e1b4]                                 ; $5eb1: $fa $b4 $e1
    call c, $e2e8                                 ; $5eb4: $dc $e8 $e2

jr_043_5eb7:
    ld b, e                                       ; $5eb7: $43
    ld d, c                                       ; $5eb8: $51
    jr jr_043_5ee4                                ; $5eb9: $18 $29

    inc hl                                        ; $5ebb: $23
    sub e                                         ; $5ebc: $93
    dec b                                         ; $5ebd: $05
    ld d, $46                                     ; $5ebe: $16 $46
    cp a                                          ; $5ec0: $bf
    ld [bc], a                                    ; $5ec1: $02
    xor l                                         ; $5ec2: $ad
    ld a, [hl+]                                   ; $5ec3: $2a
    sub h                                         ; $5ec4: $94
    ld [hl-], a                                   ; $5ec5: $32
    or c                                          ; $5ec6: $b1
    xor e                                         ; $5ec7: $ab
    ld e, [hl]                                    ; $5ec8: $5e
    ld l, $27                                     ; $5ec9: $2e $27
    add hl, hl                                    ; $5ecb: $29
    or a                                          ; $5ecc: $b7
    ld hl, $1bc4                                  ; $5ecd: $21 $c4 $1b
    ld e, l                                       ; $5ed0: $5d
    ld [$330e], a                                 ; $5ed1: $ea $0e $33
    xor h                                         ; $5ed4: $ac
    ld c, a                                       ; $5ed5: $4f
    ei                                            ; $5ed6: $fb
    sub a                                         ; $5ed7: $97
    ld [hl], c                                    ; $5ed8: $71
    adc [hl]                                      ; $5ed9: $8e
    ld l, $b0                                     ; $5eda: $2e $b0
    ld a, [$2ea3]                                 ; $5edc: $fa $a3 $2e
    adc h                                         ; $5edf: $8c
    xor b                                         ; $5ee0: $a8
    ld e, c                                       ; $5ee1: $59
    ld h, $ce                                     ; $5ee2: $26 $ce

jr_043_5ee4:
    adc a                                         ; $5ee4: $8f
    inc a                                         ; $5ee5: $3c
    ld l, c                                       ; $5ee6: $69
    push af                                       ; $5ee7: $f5
    rlca                                          ; $5ee8: $07
    push hl                                       ; $5ee9: $e5
    xor e                                         ; $5eea: $ab
    sub e                                         ; $5eeb: $93
    rst $20                                       ; $5eec: $e7
    adc c                                         ; $5eed: $89
    rrca                                          ; $5eee: $0f
    ld b, l                                       ; $5eef: $45
    pop hl                                        ; $5ef0: $e1
    ld c, c                                       ; $5ef1: $49
    ld e, c                                       ; $5ef2: $59
    ldh [$9c], a                                  ; $5ef3: $e0 $9c
    rst $38                                       ; $5ef5: $ff
    ld h, $6e                                     ; $5ef6: $26 $6e
    ld c, d                                       ; $5ef8: $4a
    ld a, l                                       ; $5ef9: $7d
    add hl, sp                                    ; $5efa: $39
    ld h, c                                       ; $5efb: $61
    jr jr_043_5f48                                ; $5efc: $18 $4a

    ld a, c                                       ; $5efe: $79
    ld h, c                                       ; $5eff: $61
    db $f4                                        ; $5f00: $f4
    pop af                                        ; $5f01: $f1
    inc [hl]                                      ; $5f02: $34
    xor b                                         ; $5f03: $a8
    adc c                                         ; $5f04: $89
    di                                            ; $5f05: $f3
    inc hl                                        ; $5f06: $23
    push hl                                       ; $5f07: $e5
    ld a, $fb                                     ; $5f08: $3e $fb
    db $e3                                        ; $5f0a: $e3
    db $fc                                        ; $5f0b: $fc
    rst $30                                       ; $5f0c: $f7
    inc h                                         ; $5f0d: $24
    or d                                          ; $5f0e: $b2
    ret nz                                        ; $5f0f: $c0

    jp nz, $e436                                  ; $5f10: $c2 $36 $e4

    dec de                                        ; $5f13: $1b
    or d                                          ; $5f14: $b2
    ccf                                           ; $5f15: $3f
    ld [hl], l                                    ; $5f16: $75
    rrca                                          ; $5f17: $0f
    ld l, h                                       ; $5f18: $6c
    rst $18                                       ; $5f19: $df
    xor a                                         ; $5f1a: $af
    sbc l                                         ; $5f1b: $9d
    ld b, d                                       ; $5f1c: $42
    ld c, l                                       ; $5f1d: $4d
    or $a7                                        ; $5f1e: $f6 $a7
    xor $81                                       ; $5f20: $ee $81
    db $ed                                        ; $5f22: $ed
    ld [hl], l                                    ; $5f23: $75
    xor c                                         ; $5f24: $a9
    ld a, $32                                     ; $5f25: $3e $32
    ld [de], a                                    ; $5f27: $12
    rst $30                                       ; $5f28: $f7
    rl l                                          ; $5f29: $cb $15
    scf                                           ; $5f2b: $37
    ld a, l                                       ; $5f2c: $7d
    ld e, d                                       ; $5f2d: $5a
    adc $44                                       ; $5f2e: $ce $44
    ld b, [hl]                                    ; $5f30: $46
    ld d, d                                       ; $5f31: $52
    inc hl                                        ; $5f32: $23
    ld a, [bc]                                    ; $5f33: $0a
    jp nz, $d936                                  ; $5f34: $c2 $36 $d9

    sub e                                         ; $5f37: $93
    or d                                          ; $5f38: $b2
    ret nz                                        ; $5f39: $c0

    add hl, sp                                    ; $5f3a: $39
    rst $38                                       ; $5f3b: $ff
    ld c, l                                       ; $5f3c: $4d
    xor l                                         ; $5f3d: $ad
    or h                                          ; $5f3e: $b4
    ld a, d                                       ; $5f3f: $7a
    sub h                                         ; $5f40: $94
    cp a                                          ; $5f41: $bf
    ld a, [hl-]                                   ; $5f42: $3a
    ld e, l                                       ; $5f43: $5d
    sub [hl]                                      ; $5f44: $96
    ld d, a                                       ; $5f45: $57
    ld [hl], $82                                  ; $5f46: $36 $82

jr_043_5f48:
    sbc d                                         ; $5f48: $9a
    dec hl                                        ; $5f49: $2b
    sbc l                                         ; $5f4a: $9d
    ld hl, sp-$4a                                 ; $5f4b: $f8 $b6
    sbc d                                         ; $5f4d: $9a
    or [hl]                                       ; $5f4e: $b6
    db $db                                        ; $5f4f: $db
    ld c, e                                       ; $5f50: $4b
    ld b, a                                       ; $5f51: $47
    xor l                                         ; $5f52: $ad
    or [hl]                                       ; $5f53: $b6
    push de                                       ; $5f54: $d5
    ld l, d                                       ; $5f55: $6a
    sub a                                         ; $5f56: $97
    ld e, l                                       ; $5f57: $5d
    halt                                          ; $5f58: $76
    ret nc                                        ; $5f59: $d0

    xor a                                         ; $5f5a: $af
    cp [hl]                                       ; $5f5b: $be
    push af                                       ; $5f5c: $f5
    push af                                       ; $5f5d: $f5
    ld a, l                                       ; $5f5e: $7d
    rra                                           ; $5f5f: $1f
    ld a, [c]                                     ; $5f60: $f2
    jr nz, jr_043_5f7a                            ; $5f61: $20 $17

    rra                                           ; $5f63: $1f
    ld a, d                                       ; $5f64: $7a
    cp d                                          ; $5f65: $ba
    ret c                                         ; $5f66: $d8

    ld l, e                                       ; $5f67: $6b
    ld c, a                                       ; $5f68: $4f
    inc h                                         ; $5f69: $24
    adc [hl]                                      ; $5f6a: $8e
    ld l, $88                                     ; $5f6b: $2e $88
    cp d                                          ; $5f6d: $ba
    xor d                                         ; $5f6e: $aa
    cp d                                          ; $5f6f: $ba
    jr c, jr_043_5fb1                             ; $5f70: $38 $3f

    ld [c], a                                     ; $5f72: $e2
    and [hl]                                      ; $5f73: $a6
    ld a, h                                       ; $5f74: $7c
    ld c, b                                       ; $5f75: $48
    xor b                                         ; $5f76: $a8
    db $eb                                        ; $5f77: $eb
    ld d, a                                       ; $5f78: $57
    dec l                                         ; $5f79: $2d

jr_043_5f7a:
    rst $20                                       ; $5f7a: $e7
    call nz, $d419                                ; $5f7b: $c4 $19 $d4
    jp hl                                         ; $5f7e: $e9


    ld l, a                                       ; $5f7f: $6f
    and e                                         ; $5f80: $a3
    rst $28                                       ; $5f81: $ef
    ei                                            ; $5f82: $fb
    ld [$fef6], sp                                ; $5f83: $08 $f6 $fe
    ld d, h                                       ; $5f86: $54
    rst $30                                       ; $5f87: $f7
    pop hl                                        ; $5f88: $e1
    cpl                                           ; $5f89: $2f
    xor $fb                                       ; $5f8a: $ee $fb
    cp [hl]                                       ; $5f8c: $be
    rst $08                                       ; $5f8d: $cf
    cp $d4                                        ; $5f8e: $fe $d4
    dec a                                         ; $5f90: $3d
    or b                                          ; $5f91: $b0
    ld a, l                                       ; $5f92: $7d
    ld l, d                                       ; $5f93: $6a
    and h                                         ; $5f94: $a4
    cp d                                          ; $5f95: $ba
    rst $28                                       ; $5f96: $ef
    ei                                            ; $5f97: $fb
    ld a, [hl]                                    ; $5f98: $7e
    dec b                                         ; $5f99: $05
    sbc [hl]                                      ; $5f9a: $9e
    ld d, e                                       ; $5f9b: $53
    cp [hl]                                       ; $5f9c: $be
    sub $0a                                       ; $5f9d: $d6 $0a
    sbc l                                         ; $5f9f: $9d
    ld b, d                                       ; $5fa0: $42
    ld c, l                                       ; $5fa1: $4d
    ld a, [hl+]                                   ; $5fa2: $2a
    and h                                         ; $5fa3: $a4
    jr nc, jr_043_5ff0                            ; $5fa4: $30 $4a

    sbc c                                         ; $5fa6: $99
    cp b                                          ; $5fa7: $b8
    sub c                                         ; $5fa8: $91
    db $ec                                        ; $5fa9: $ec
    adc a                                         ; $5faa: $8f
    rst $20                                       ; $5fab: $e7
    inc l                                         ; $5fac: $2c
    bit 0, a                                      ; $5fad: $cb $47
    ld h, c                                       ; $5faf: $61
    and a                                         ; $5fb0: $a7

jr_043_5fb1:
    ld b, e                                       ; $5fb1: $43
    ld a, d                                       ; $5fb2: $7a
    ld c, d                                       ; $5fb3: $4a
    dec e                                         ; $5fb4: $1d
    dec sp                                        ; $5fb5: $3b
    ld a, a                                       ; $5fb6: $7f
    cp a                                          ; $5fb7: $bf
    ld [bc], a                                    ; $5fb8: $02
    cp [hl]                                       ; $5fb9: $be
    dec e                                         ; $5fba: $1d
    or a                                          ; $5fbb: $b7
    sbc d                                         ; $5fbc: $9a
    or $db                                        ; $5fbd: $f6 $db
    xor b                                         ; $5fbf: $a8
    db $d3                                        ; $5fc0: $d3
    ld [hl], c                                    ; $5fc1: $71
    dec de                                        ; $5fc2: $1b
    ld [hl], l                                    ; $5fc3: $75
    ld e, d                                       ; $5fc4: $5a
    rst $28                                       ; $5fc5: $ef
    and b                                         ; $5fc6: $a0
    ld c, a                                       ; $5fc7: $4f
    ld a, e                                       ; $5fc8: $7b
    xor l                                         ; $5fc9: $ad
    and [hl]                                      ; $5fca: $a6
    ld l, [hl]                                    ; $5fcb: $6e
    db $db                                        ; $5fcc: $db
    ld l, l                                       ; $5fcd: $6d
    ld [hl], h                                    ; $5fce: $74
    call c, $ab51                                 ; $5fcf: $dc $51 $ab
    pop af                                        ; $5fd2: $f1
    ld l, l                                       ; $5fd3: $6d
    dec sp                                        ; $5fd4: $3b
    dec e                                         ; $5fd5: $1d
    ld [hl], a                                    ; $5fd6: $77
    call nc, $a741                                ; $5fd7: $d4 $41 $a7
    xor l                                         ; $5fda: $ad
    and [hl]                                      ; $5fdb: $a6
    ld c, [hl]                                    ; $5fdc: $4e
    dec de                                        ; $5fdd: $1b
    db $ed                                        ; $5fde: $ed
    or l                                          ; $5fdf: $b5
    rst $10                                       ; $5fe0: $d7
    ld l, d                                       ; $5fe1: $6a
    ld a, h                                       ; $5fe2: $7c
    dec sp                                        ; $5fe3: $3b
    ld l, c                                       ; $5fe4: $69
    dec [hl]                                      ; $5fe5: $35
    dec e                                         ; $5fe6: $1d
    or a                                          ; $5fe7: $b7
    ld [$d9eb], a                                 ; $5fe8: $ea $eb $d9
    ld l, d                                       ; $5feb: $6a
    cp a                                          ; $5fec: $bf
    ld [bc], a                                    ; $5fed: $02
    db $ed                                        ; $5fee: $ed
    ld [hl], l                                    ; $5fef: $75

jr_043_5ff0:
    sub b                                         ; $5ff0: $90
    ld c, [hl]                                    ; $5ff1: $4e
    db $db                                        ; $5ff2: $db
    ld l, b                                       ; $5ff3: $68
    cp l                                          ; $5ff4: $bd
    db $ed                                        ; $5ff5: $ed
    ld a, b                                       ; $5ff6: $78
    halt                                          ; $5ff7: $76
    ldh [$db], a                                  ; $5ff8: $e0 $db
    ld l, d                                       ; $5ffa: $6a
    ld a, h                                       ; $5ffb: $7c
    dec sp                                        ; $5ffc: $3b
    xor b                                         ; $5ffd: $a8
    db $d3                                        ; $5ffe: $d3
    ld b, c                                       ; $5fff: $41
    ld e, d                                       ; $6000: $5a
    ld l, a                                       ; $6001: $6f
    cp e                                          ; $6002: $bb
    db $d3                                        ; $6003: $d3
    ld [hl], $ea                                  ; $6004: $36 $ea
    ld [hl], h                                    ; $6006: $74
    call c, $c76a                                 ; $6007: $dc $6a $c7
    dec e                                         ; $600a: $1d
    call nc, $dd4a                                ; $600b: $d4 $4a $dd
    ld c, [hl]                                    ; $600e: $4e
    ld a, [hl-]                                   ; $600f: $3a
    ld l, d                                       ; $6010: $6a
    dec [hl]                                      ; $6011: $35
    dec e                                         ; $6012: $1d
    or h                                          ; $6013: $b4
    rst $18                                       ; $6014: $df
    ld e, d                                       ; $6015: $5a
    ld b, a                                       ; $6016: $47
    xor l                                         ; $6017: $ad
    and [hl]                                      ; $6018: $a6
    adc l                                         ; $6019: $8d
    ld [hl], h                                    ; $601a: $74
    jp c, $dd6a                                   ; $601b: $da $6a $dd

    ld c, $3a                                     ; $601e: $0e $3a
    ld l, d                                       ; $6020: $6a
    and e                                         ; $6021: $a3
    rst $28                                       ; $6022: $ef
    ei                                            ; $6023: $fb
    or h                                          ; $6024: $b4
    db $dd                                        ; $6025: $dd
    ld b, c                                       ; $6026: $41
    ld [$d476], a                                 ; $6027: $ea $76 $d4
    ld b, [hl]                                    ; $602a: $46
    sbc l                                         ; $602b: $9d
    sub $3b                                       ; $602c: $d6 $3b
    ld c, b                                       ; $602e: $48
    sbc e                                         ; $602f: $9b
    dec e                                         ; $6030: $1d
    ld [hl], h                                    ; $6031: $74
    call nc, $ab7e                                ; $6032: $d4 $7e $ab
    pop af                                        ; $6035: $f1
    db $ed                                        ; $6036: $ed
    and b                                         ; $6037: $a0
    cp l                                          ; $6038: $bd
    adc [hl]                                      ; $6039: $8e
    ld e, e                                       ; $603a: $5b
    xor l                                         ; $603b: $ad
    db $d3                                        ; $603c: $d3
    ld [hl], c                                    ; $603d: $71
    rlca                                          ; $603e: $07
    jp hl                                         ; $603f: $e9


    or b                                          ; $6040: $b0
    sub e                                         ; $6041: $93
    ld d, [hl]                                    ; $6042: $56
    db $eb                                        ; $6043: $eb
    or h                                          ; $6044: $b4
    sbc $41                                       ; $6045: $de $41
    ld [$e076], a                                 ; $6047: $ea $76 $e0
    db $eb                                        ; $604a: $eb
    db $db                                        ; $604b: $db
    ld b, c                                       ; $604c: $41
    ld e, d                                       ; $604d: $5a
    ld l, l                                       ; $604e: $6d
    xor l                                         ; $604f: $ad
    db $ed                                        ; $6050: $ed
    adc [hl]                                      ; $6051: $8e
    ld e, e                                       ; $6052: $5b
    db $ed                                        ; $6053: $ed
    xor b                                         ; $6054: $a8
    adc l                                         ; $6055: $8d
    or h                                          ; $6056: $b4
    db $dd                                        ; $6057: $dd

jr_043_6058:
    ld e, [hl]                                    ; $6058: $5e
    inc a                                         ; $6059: $3c
    dec sp                                        ; $605a: $3b
    add sp, -$58                                  ; $605b: $e8 $a8
    ld l, [hl]                                    ; $605d: $6e
    rlca                                          ; $605e: $07
    ld l, c                                       ; $605f: $69
    cp l                                          ; $6060: $bd
    db $ed                                        ; $6061: $ed
    ld [hl], h                                    ; $6062: $74
    ret c                                         ; $6063: $d8

    ld c, c                                       ; $6064: $49
    xor e                                         ; $6065: $ab
    db $ed                                        ; $6066: $ed
    ld a, c                                       ; $6067: $79
    halt                                          ; $6068: $76
    ld d, d                                       ; $6069: $52
    and a                                         ; $606a: $a7
    add e                                         ; $606b: $83
    ld a, $9d                                     ; $606c: $3e $9d
    call nc, Call_000_3569                        ; $606e: $d4 $69 $35
    sbc l                                         ; $6071: $9d
    halt                                          ; $6072: $76
    ret nc                                        ; $6073: $d0

    ld e, [hl]                                    ; $6074: $5e
    rst $00                                       ; $6075: $c7
    xor l                                         ; $6076: $ad
    add $b3                                       ; $6077: $c6 $b3
    halt                                          ; $6079: $76
    dec de                                        ; $607a: $1b
    pop af                                        ; $607b: $f1
    ld l, l                                       ; $607c: $6d
    or l                                          ; $607d: $b5
    inc hl                                        ; $607e: $23
    add d                                         ; $607f: $82
    ld l, c                                       ; $6080: $69
    and e                                         ; $6081: $a3
    ld c, [hl]                                    ; $6082: $4e
    rst $00                                       ; $6083: $c7
    dec e                                         ; $6084: $1d
    or l                                          ; $6085: $b5
    jp c, $0771                                   ; $6086: $da $71 $07

    ld l, c                                       ; $6089: $69
    cp e                                          ; $608a: $bb
    ld c, [hl]                                    ; $608b: $4e
    ld [$e076], a                                 ; $608c: $ea $76 $e0
    db $eb                                        ; $608f: $eb
    db $db                                        ; $6090: $db

Call_043_6091:
    add [hl]                                      ; $6091: $86
    xor a                                         ; $6092: $af
    ld l, a                                       ; $6093: $6f
    rlca                                          ; $6094: $07
    ld l, c                                       ; $6095: $69
    cp l                                          ; $6096: $bd
    adc l                                         ; $6097: $8d
    or $da                                        ; $6098: $f6 $da
    di                                            ; $609a: $f3
    ld l, b                                       ; $609b: $68
    and e                                         ; $609c: $a3
    cp l                                          ; $609d: $bd
    or [hl]                                       ; $609e: $b6
    ld a, l                                       ; $609f: $7d
    db $db                                        ; $60a0: $db
    xor $28                                       ; $60a1: $ee $28
    xor l                                         ; $60a3: $ad
    or a                                          ; $60a4: $b7
    sbc l                                         ; $60a5: $9d
    or $3a                                        ; $60a6: $f6 $3a
    xor c                                         ; $60a8: $a9
    db $d3                                        ; $60a9: $d3
    ld d, [hl]                                    ; $60aa: $56
    xor e                                         ; $60ab: $ab
    jp hl                                         ; $60ac: $e9


    or h                                          ; $60ad: $b4
    db $ed                                        ; $60ae: $ed
    adc [hl]                                      ; $60af: $8e
    ld e, e                                       ; $60b0: $5b
    push de                                       ; $60b1: $d5
    and l                                         ; $60b2: $a5
    ld l, [hl]                                    ; $60b3: $6e
    rlca                                          ; $60b4: $07
    dec e                                         ; $60b5: $1d
    ld [hl], a                                    ; $60b6: $77
    ld b, h                                       ; $60b7: $44
    jr nc, jr_043_6058                            ; $60b8: $30 $9e

    dec e                                         ; $60ba: $1d
    or l                                          ; $60bb: $b5
    pop de                                        ; $60bc: $d1
    ld l, d                                       ; $60bd: $6a
    ld b, a                                       ; $60be: $47
    db $ed                                        ; $60bf: $ed
    or a                                          ; $60c0: $b7
    sbc l                                         ; $60c1: $9d
    ld c, [hl]                                    ; $60c2: $4e
    ld [$b3c4], a                                 ; $60c3: $ea $c4 $b3
    add e                                         ; $60c6: $83
    adc [hl]                                      ; $60c7: $8e
    ld [$9076], a                                 ; $60c8: $ea $76 $90
    adc [hl]                                      ; $60cb: $8e
    dec sp                                        ; $60cc: $3b
    jp hl                                         ; $60cd: $e9


    cp b                                          ; $60ce: $b8
    db $e3                                        ; $60cf: $e3
    ld c, $d2                                     ; $60d0: $0e $d2
    ld a, [hl]                                    ; $60d2: $7e
    db $db                                        ; $60d3: $db
    dec e                                         ; $60d4: $1d
    db $f4                                        ; $60d5: $f4
    ld l, c                                       ; $60d6: $69
    or l                                          ; $60d7: $b5
    push af                                       ; $60d8: $f5
    ld [hl], $7c                                  ; $60d9: $36 $7c
    ld a, l                                       ; $60db: $7d
    dec sp                                        ; $60dc: $3b
    ld c, b                                       ; $60dd: $48
    db $eb                                        ; $60de: $eb
    xor l                                         ; $60df: $ad
    or [hl]                                       ; $60e0: $b6
    rst $18                                       ; $60e1: $df
    ld a, [hl]                                    ; $60e2: $7e
    db $db                                        ; $60e3: $db
    ld l, c                                       ; $60e4: $69
    xor a                                         ; $60e5: $af
    push de                                       ; $60e6: $d5
    call nc, $bb6d                                ; $60e7: $d4 $6d $bb
    adc l                                         ; $60ea: $8d
    adc [hl]                                      ; $60eb: $8e
    dec sp                                        ; $60ec: $3b
    ld l, d                                       ; $60ed: $6a
    ld d, l                                       ; $60ee: $55
    sub a                                         ; $60ef: $97
    ld c, $d2                                     ; $60f0: $0e $d2
    ld a, [hl]                                    ; $60f2: $7e
    rlca                                          ; $60f3: $07
    dec e                                         ; $60f4: $1d
    or l                                          ; $60f5: $b5
    db $dd                                        ; $60f6: $dd
    ld d, c                                       ; $60f7: $51
    xor e                                         ; $60f8: $ab
    ld l, l                                       ; $60f9: $6d
    rst $00                                       ; $60fa: $c7
    or e                                          ; $60fb: $b3
    add e                                         ; $60fc: $83
    or $db                                        ; $60fd: $f6 $db
    ld c, b                                       ; $60ff: $48
    db $db                                        ; $6100: $db
    jp hl                                         ; $6101: $e9


    cp b                                          ; $6102: $b8
    sub e                                         ; $6103: $93
    ld c, $da                                     ; $6104: $0e $da
    ld c, [hl]                                    ; $6106: $4e
    ld e, e                                       ; $6107: $5b
    ld l, l                                       ; $6108: $6d
    call nc, $bb69                                ; $6109: $d4 $69 $bb
    db $e3                                        ; $610c: $e3
    ld c, $3a                                     ; $610d: $0e $3a
    ld l, d                                       ; $610f: $6a
    cp e                                          ; $6110: $bb
    rst $28                                       ; $6111: $ef
    ei                                            ; $6112: $fb
    or h                                          ; $6113: $b4
    db $dd                                        ; $6114: $dd
    ld a, [hl]                                    ; $6115: $7e
    db $dd                                        ; $6116: $dd
    or $3a                                        ; $6117: $f6 $3a
    add sp, -$58                                  ; $6119: $e8 $a8
    push de                                       ; $611b: $d5
    ld a, [hl-]                                   ; $611c: $3a
    xor l                                         ; $611d: $ad
    ld [hl], a                                    ; $611e: $77
    sub b                                         ; $611f: $90
    or $5a                                        ; $6120: $f6 $5a
    ld c, l                                       ; $6122: $4d
    ei                                            ; $6123: $fb
    ld l, l                                       ; $6124: $6d
    or a                                          ; $6125: $b7
    ld a, [de]                                    ; $6126: $1a
    rst $08                                       ; $6127: $cf
    or $da                                        ; $6128: $f6 $da
    ld l, b                                       ; $612a: $68
    cp a                                          ; $612b: $bf
    adc l                                         ; $612c: $8d
    ld a, [hl-]                                   ; $612d: $3a
    ld e, l                                       ; $612e: $5d
    or [hl]                                       ; $612f: $b6
    jp c, $adaf                                   ; $6130: $da $af $ad

    ld d, c                                       ; $6133: $51
    db $ed                                        ; $6134: $ed
    sbc $d4                                       ; $6135: $de $d4
    call nc, $015c                                ; $6137: $d4 $5c $01
    xor l                                         ; $613a: $ad
    pop de                                        ; $613b: $d1
    sub c                                         ; $613c: $91
    inc l                                         ; $613d: $2c
    ld d, e                                       ; $613e: $53
    pop bc                                        ; $613f: $c1
    ld c, [hl]                                    ; $6140: $4e
    db $d3                                        ; $6141: $d3
    ld l, [hl]                                    ; $6142: $6e
    ld [hl], h                                    ; $6143: $74
    xor c                                         ; $6144: $a9
    db $fd                                        ; $6145: $fd
    ld h, [hl]                                    ; $6146: $66
    inc b                                         ; $6147: $04
    ld a, [$ed15]                                 ; $6148: $fa $15 $ed
    ld a, l                                       ; $614b: $7d
    ld [$d81e], a                                 ; $614c: $ea $1e $d8
    cp [hl]                                       ; $614f: $be
    ld h, [hl]                                    ; $6150: $66
    inc a                                         ; $6151: $3c
    sub c                                         ; $6152: $91
    db $ed                                        ; $6153: $ed
    pop hl                                        ; $6154: $e1
    rst $38                                       ; $6155: $ff
    ld [hl], h                                    ; $6156: $74
    db $f4                                        ; $6157: $f4
    dec bc                                        ; $6158: $0b
    adc a                                         ; $6159: $8f
    push de                                       ; $615a: $d5
    ld e, h                                       ; $615b: $5c
    ld bc, $4675                                  ; $615c: $01 $75 $46
    sub a                                         ; $615f: $97
    ld [hl-], a                                   ; $6160: $32
    ld [hl-], a                                   ; $6161: $32
    ld a, c                                       ; $6162: $79
    or e                                          ; $6163: $b3
    inc hl                                        ; $6164: $23
    sbc a                                         ; $6165: $9f
    daa                                           ; $6166: $27
    daa                                           ; $6167: $27
    ld h, c                                       ; $6168: $61
    ld d, h                                       ; $6169: $54
    bit 4, h                                      ; $616a: $cb $64
    add c                                         ; $616c: $81
    push hl                                       ; $616d: $e5
    xor d                                         ; $616e: $aa
    dec b                                         ; $616f: $05
    ld [$8f6c], a                                 ; $6170: $ea $6c $8f
    ld l, $2f                                     ; $6173: $2e $2f
    adc $8f                                       ; $6175: $ce $8f
    inc d                                         ; $6177: $14
    ld b, h                                       ; $6178: $44
    add c                                         ; $6179: $81
    sbc h                                         ; $617a: $9c
    ld a, h                                       ; $617b: $7c
    ld d, l                                       ; $617c: $55

Call_043_617d:
    add c                                         ; $617d: $81
    add hl, de                                    ; $617e: $19
    add [hl]                                      ; $617f: $86
    jr c, jr_043_61c1                             ; $6180: $38 $3f

    jp nz, $fec8                                  ; $6182: $c2 $c8 $fe

    inc d                                         ; $6185: $14
    ld a, [hl]                                    ; $6186: $7e
    ld a, [c]                                     ; $6187: $f2
    ld [c], a                                     ; $6188: $e2
    sbc [hl]                                      ; $6189: $9e
    ld a, h                                       ; $618a: $7c
    ld d, c                                       ; $618b: $51
    sub e                                         ; $618c: $93
    ld l, d                                       ; $618d: $6a
    ld [hl], $4f                                  ; $618e: $36 $4f
    db $f4                                        ; $6190: $f4
    db $10                                        ; $6191: $10
    ld b, h                                       ; $6192: $44
    ld a, l                                       ; $6193: $7d
    jp z, $e9ec                                   ; $6194: $ca $ec $e9

    ld d, a                                       ; $6197: $57
    sbc l                                         ; $6198: $9d
    adc [hl]                                      ; $6199: $8e
    add hl, de                                    ; $619a: $19
    ld l, $de                                     ; $619b: $2e $de
    or a                                          ; $619d: $b7
    adc l                                         ; $619e: $8d
    ld hl, sp-$30                                 ; $619f: $f8 $d0
    rst $18                                       ; $61a1: $df
    adc $8f                                       ; $61a2: $ce $8f
    xor b                                         ; $61a4: $a8
    xor c                                         ; $61a5: $a9
    ld e, [hl]                                    ; $61a6: $5e
    call nc, $e9f7                                ; $61a7: $d4 $f7 $e9
    ld [hl], h                                    ; $61aa: $74
    or [hl]                                       ; $61ab: $b6
    ld b, d                                       ; $61ac: $42
    dec [hl]                                      ; $61ad: $35
    add $a9                                       ; $61ae: $c6 $a9
    sub c                                         ; $61b0: $91
    ld l, d                                       ; $61b1: $6a
    adc h                                         ; $61b2: $8c
    and a                                         ; $61b3: $a7
    sub $0a                                       ; $61b4: $d6 $0a
    ld [hl], l                                    ; $61b6: $75
    and [hl]                                      ; $61b7: $a6
    ld c, a                                       ; $61b8: $4f
    and a                                         ; $61b9: $a7
    ld d, a                                       ; $61ba: $57
    ld a, b                                       ; $61bb: $78
    ld [c], a                                     ; $61bc: $e2
    db $fc                                        ; $61bd: $fc
    adc b                                         ; $61be: $88
    adc h                                         ; $61bf: $8c
    and h                                         ; $61c0: $a4

jr_043_61c1:
    ld b, [hl]                                    ; $61c1: $46
    ld c, b                                       ; $61c2: $48
    ret c                                         ; $61c3: $d8

    ld d, a                                       ; $61c4: $57
    db $10                                        ; $61c5: $10
    ld b, [hl]                                    ; $61c6: $46
    ret z                                         ; $61c7: $c8

    inc hl                                        ; $61c8: $23
    ld b, a                                       ; $61c9: $47
    sub a                                         ; $61ca: $97
    ld a, [de]                                    ; $61cb: $1a
    cp c                                          ; $61cc: $b9
    ld l, d                                       ; $61cd: $6a
    sbc c                                         ; $61ce: $99
    ld d, d                                       ; $61cf: $52
    ld c, [hl]                                    ; $61d0: $4e
    ld a, a                                       ; $61d1: $7f
    dec de                                        ; $61d2: $1b
    and c                                         ; $61d3: $a1
    adc $9d                                       ; $61d4: $ce $9d
    add d                                         ; $61d6: $82
    db $ed                                        ; $61d7: $ed
    jp hl                                         ; $61d8: $e9


    db $d3                                        ; $61d9: $d3
    ld [hl], d                                    ; $61da: $72
    ld e, [hl]                                    ; $61db: $5e
    call c, Call_043_67d8                         ; $61dc: $dc $d8 $67
    rst $10                                       ; $61df: $d7
    inc de                                        ; $61e0: $13
    cpl                                           ; $61e1: $2f
    dec e                                         ; $61e2: $1d
    dec sp                                        ; $61e3: $3b
    ld e, l                                       ; $61e4: $5d
    call nc, $87c7                                ; $61e5: $d4 $c7 $87
    cp $76                                        ; $61e8: $fe $76
    ld a, [hl]                                    ; $61ea: $7e
    ld h, h                                       ; $61eb: $64
    ld a, c                                       ; $61ec: $79
    ld h, e                                       ; $61ed: $63
    db $f4                                        ; $61ee: $f4
    ld a, l                                       ; $61ef: $7d
    cp a                                          ; $61f0: $bf
    ld [bc], a                                    ; $61f1: $02
    ld l, l                                       ; $61f2: $6d
    db $e4                                        ; $61f3: $e4
    halt                                          ; $61f4: $76
    xor d                                         ; $61f5: $aa
    rla                                           ; $61f6: $17
    add $de                                       ; $61f7: $c6 $de
    inc de                                        ; $61f9: $13
    rst $20                                       ; $61fa: $e7
    ld b, a                                       ; $61fb: $47
    inc c                                         ; $61fc: $0c
    and d                                         ; $61fd: $a2
    sub b                                         ; $61fe: $90
    inc de                                        ; $61ff: $13
    ld a, [c]                                     ; $6200: $f2
    jp z, Jump_043_6fe9                           ; $6201: $ca $e9 $6f

    ld e, a                                       ; $6204: $5f
    rst $18                                       ; $6205: $df
    rst $30                                       ; $6206: $f7
    reti                                          ; $6207: $d9


    cp b                                          ; $6208: $b8
    sub h                                         ; $6209: $94
    adc a                                         ; $620a: $8f
    di                                            ; $620b: $f3
    ld e, a                                       ; $620c: $5f
    ld a, [hl+]                                   ; $620d: $2a
    ld h, h                                       ; $620e: $64
    ld a, e                                       ; $620f: $7b
    ld hl, sp+$3f                                 ; $6210: $f8 $3f
    push de                                       ; $6212: $d5
    adc e                                         ; $6213: $8b
    ld a, d                                       ; $6214: $7a
    sbc [hl]                                      ; $6215: $9e
    ld e, d                                       ; $6216: $5a
    dec hl                                        ; $6217: $2b
    dec e                                         ; $6218: $1d
    db $d3                                        ; $6219: $d3
    ret                                           ; $621a: $c9


    ld a, [c]                                     ; $621b: $f2
    jp z, $ed90                                   ; $621c: $ca $90 $ed

    pop af                                        ; $621f: $f1
    inc h                                         ; $6220: $24
    ret z                                         ; $6221: $c8

    rst $08                                       ; $6222: $cf
    cp $e2                                        ; $6223: $fe $e2
    xor $79                                       ; $6225: $ee $79
    ld a, [c]                                     ; $6227: $f2
    xor c                                         ; $6228: $a9
    ret nc                                        ; $6229: $d0

    and a                                         ; $622a: $a7
    db $ed                                        ; $622b: $ed
    adc c                                         ; $622c: $89
    ld a, a                                       ; $622d: $7f
    or d                                          ; $622e: $b2
    ld b, b                                       ; $622f: $40
    jp z, $c4f3                                   ; $6230: $ca $f3 $c4

    ld sp, hl                                     ; $6233: $f9
    sub c                                         ; $6234: $91
    daa                                           ; $6235: $27
    dec c                                         ; $6236: $0d
    ld a, d                                       ; $6237: $7a
    dec a                                         ; $6238: $3d
    or d                                          ; $6239: $b2
    inc c                                         ; $623a: $0c
    ld d, e                                       ; $623b: $53
    sbc [hl]                                      ; $623c: $9e
    ld a, b                                       ; $623d: $78
    rst $18                                       ; $623e: $df
    ld hl, sp-$4e                                 ; $623f: $f8 $b2
    call c, $183b                                 ; $6241: $dc $3b $18
    ld a, [c]                                     ; $6244: $f2
    inc h                                         ; $6245: $24
    ld l, h                                       ; $6246: $6c
    ld c, a                                       ; $6247: $4f
    cp a                                          ; $6248: $bf
    ld [bc], a                                    ; $6249: $02
    ld l, l                                       ; $624a: $6d
    db $f4                                        ; $624b: $f4
    ld a, l                                       ; $624c: $7d
    rra                                           ; $624d: $1f
    ld [hl], a                                    ; $624e: $77
    add hl, hl                                    ; $624f: $29
    ld l, a                                       ; $6250: $6f
    ret nc                                        ; $6251: $d0

    db $eb                                        ; $6252: $eb
    sub c                                         ; $6253: $91
    rla                                           ; $6254: $17
    scf                                           ; $6255: $37
    or $a1                                        ; $6256: $f6 $a1
    ld [c], a                                     ; $6258: $e2
    pop af                                        ; $6259: $f1
    sbc e                                         ; $625a: $9b
    db $ed                                        ; $625b: $ed
    db $e3                                        ; $625c: $e3
    and [hl]                                      ; $625d: $a6
    ld a, h                                       ; $625e: $7c
    rst $18                                       ; $625f: $df
    rst $30                                       ; $6260: $f7
    dec hl                                        ; $6261: $2b
    xor l                                         ; $6262: $ad
    sub d                                         ; $6263: $92
    cpl                                           ; $6264: $2f
    ld a, h                                       ; $6265: $7c
    cp d                                          ; $6266: $ba
    sub h                                         ; $6267: $94
    push hl                                       ; $6268: $e5
    db $ed                                        ; $6269: $ed
    ei                                            ; $626a: $fb
    dec d                                         ; $626b: $15
    ld [hl], l                                    ; $626c: $75
    ld h, c                                       ; $626d: $61
    adc $5f                                       ; $626e: $ce $5f
    ld l, a                                       ; $6270: $6f
    ld a, [bc]                                    ; $6271: $0a
    ld a, [hl+]                                   ; $6272: $2a
    cp l                                          ; $6273: $bd
    ld a, l                                       ; $6274: $7d
    sbc h                                         ; $6275: $9c
    rra                                           ; $6276: $1f
    cp c                                          ; $6277: $b9
    sbc l                                         ; $6278: $9d
    push bc                                       ; $6279: $c5
    add $8b                                       ; $627a: $c6 $8b
    ld d, d                                       ; $627c: $52
    add $52                                       ; $627d: $c6 $52
    rst $30                                       ; $627f: $f7
    ld a, b                                       ; $6280: $78
    inc h                                         ; $6281: $24
    push de                                       ; $6282: $d5
    ld h, l                                       ; $6283: $65
    call nc, Call_043_5ad5                        ; $6284: $d4 $d5 $5a
    ld bc, $d31d                                  ; $6287: $01 $1d $d3
    ret                                           ; $628a: $c9


    ld a, [c]                                     ; $628b: $f2
    jp z, Jump_043_6d10                           ; $628c: $ca $10 $6d

    ld e, a                                       ; $628f: $5f
    db $fc                                        ; $6290: $fc
    sbc a                                         ; $6291: $9f
    ld a, [c]                                     ; $6292: $f2
    sbc e                                         ; $6293: $9b

jr_043_6294:
    ld a, h                                       ; $6294: $7c
    sbc [hl]                                      ; $6295: $9e
    db $ec                                        ; $6296: $ec
    rrca                                          ; $6297: $0f
    ld a, c                                       ; $6298: $79
    db $fc                                        ; $6299: $fc
    ld b, c                                       ; $629a: $41
    ld [hl], $bd                                  ; $629b: $36 $bd
    ret z                                         ; $629d: $c8

    ld c, b                                       ; $629e: $48
    jp z, $cb2c                                   ; $629f: $ca $2c $cb

    jr jr_043_6323                                ; $62a2: $18 $7f

    call nc, $a505                                ; $62a4: $d4 $05 $a5
    ret nz                                        ; $62a7: $c0

    sub b                                         ; $62a8: $90
    sub e                                         ; $62a9: $93
    jr z, jr_043_6294                             ; $62aa: $28 $e8

    adc a                                         ; $62ac: $8f
    and a                                         ; $62ad: $a7
    adc a                                         ; $62ae: $8f
    and a                                         ; $62af: $a7
    ld b, c                                       ; $62b0: $41
    ld c, l                                       ; $62b1: $4d
    sbc h                                         ; $62b2: $9c
    rra                                           ; $62b3: $1f
    add hl, hl                                    ; $62b4: $29
    rst $30                                       ; $62b5: $f7
    ld e, c                                       ; $62b6: $59
    ld h, b                                       ; $62b7: $60
    pop af                                        ; $62b8: $f1
    and c                                         ; $62b9: $a1
    jr z, jr_043_62f8                             ; $62ba: $28 $3c

    xor c                                         ; $62bc: $a9
    add [hl]                                      ; $62bd: $86
    adc a                                         ; $62be: $8f
    sbc h                                         ; $62bf: $9c
    jr c, @+$41                                   ; $62c0: $38 $3f

    jp nz, $ff17                                  ; $62c2: $c2 $17 $ff

    ld h, a                                       ; $62c5: $67
    or c                                          ; $62c6: $b1
    ld h, c                                       ; $62c7: $61
    jr nc, jr_043_6319                            ; $62c8: $30 $4f

    sbc b                                         ; $62ca: $98
    ld [hl-], a                                   ; $62cb: $32
    ld c, a                                       ; $62cc: $4f
    or [hl]                                       ; $62cd: $b6

Call_043_62ce:
    rst $00                                       ; $62ce: $c7
    adc e                                         ; $62cf: $8b
    ld c, h                                       ; $62d0: $4c
    rra                                           ; $62d1: $1f
    rst $08                                       ; $62d2: $cf
    add hl, hl                                    ; $62d3: $29
    push af                                       ; $62d4: $f5
    push bc                                       ; $62d5: $c5
    ei                                            ; $62d6: $fb
    ld c, $a2                                     ; $62d7: $0e $a2
    ld b, [hl]                                    ; $62d9: $46
    rla                                           ; $62da: $17
    ld h, a                                       ; $62db: $67
    ld d, b                                       ; $62dc: $50
    jr nz, jr_043_631e                            ; $62dd: $20 $3f

    ld [$8152], a                                 ; $62df: $ea $52 $81
    add hl, de                                    ; $62e2: $19
    ld d, [hl]                                    ; $62e3: $56
    ld l, $27                                     ; $62e4: $2e $27
    ld e, c                                       ; $62e6: $59
    sbc $2e                                       ; $62e7: $de $2e
    ld l, [hl]                                    ; $62e9: $6e
    inc h                                         ; $62ea: $24
    ld c, h                                       ; $62eb: $4c
    daa                                           ; $62ec: $27
    sra e                                         ; $62ed: $cb $2b
    ld b, e                                       ; $62ef: $43
    cp a                                          ; $62f0: $bf
    ld [bc], a                                    ; $62f1: $02
    sbc [hl]                                      ; $62f2: $9e
    ld d, e                                       ; $62f3: $53
    ld hl, $89fe                                  ; $62f4: $21 $fe $89
    rst $30                                       ; $62f7: $f7

jr_043_62f8:
    sbc c                                         ; $62f8: $99
    daa                                           ; $62f9: $27
    rra                                           ; $62fa: $1f
    ld a, $7b                                     ; $62fb: $3e $7b
    ld b, e                                       ; $62fd: $43
    or $a7                                        ; $62fe: $f6 $a7
    xor $81                                       ; $6300: $ee $81
    db $ed                                        ; $6302: $ed
    db $e3                                        ; $6303: $e3
    and l                                         ; $6304: $a5
    ld h, e                                       ; $6305: $63
    rla                                           ; $6306: $17
    push af                                       ; $6307: $f5
    ld a, e                                       ; $6308: $7b
    ld c, a                                       ; $6309: $4f
    jp z, $e702                                   ; $630a: $ca $02 $e7

    db $fc                                        ; $630d: $fc
    scf                                           ; $630e: $37
    or l                                          ; $630f: $b5
    ld d, [hl]                                    ; $6310: $56
    or l                                          ; $6311: $b5
    daa                                           ; $6312: $27
    add l                                         ; $6313: $85
    dec c                                         ; $6314: $0d
    jp c, Jump_043_64f3                           ; $6315: $da $f3 $64

    ld c, a                                       ; $6318: $4f

jr_043_6319:
    jp z, $e702                                   ; $6319: $ca $02 $e7

    db $fc                                        ; $631c: $fc
    scf                                           ; $631d: $37

jr_043_631e:
    add hl, sp                                    ; $631e: $39
    ld c, c                                       ; $631f: $49
    dec [hl]                                      ; $6320: $35
    ld l, d                                       ; $6321: $6a
    ld [c], a                                     ; $6322: $e2

jr_043_6323:
    db $fc                                        ; $6323: $fc
    ld c, b                                       ; $6324: $48
    sbc c                                         ; $6325: $99
    dec a                                         ; $6326: $3d
    ld [hl], c                                    ; $6327: $71
    cp $0b                                        ; $6328: $fe $0b
    add hl, sp                                    ; $632a: $39
    dec de                                        ; $632b: $1b
    and l                                         ; $632c: $a5
    jr nz, jr_043_639b                            ; $632d: $20 $6c

    ld b, e                                       ; $632f: $43
    cp [hl]                                       ; $6330: $be
    ld hl, $53fb                                  ; $6331: $21 $fb $53
    rst $30                                       ; $6334: $f7
    ret nz                                        ; $6335: $c0

    or $7d                                        ; $6336: $f6 $7d
    rst $18                                       ; $6338: $df
    ld b, a                                       ; $6339: $47
    rst $38                                       ; $633a: $ff
    ld [$87a3], a                                 ; $633b: $ea $a3 $87
    and b                                         ; $633e: $a0
    push bc                                       ; $633f: $c5
    or b                                          ; $6340: $b0
    dec c                                         ; $6341: $0d
    ld sp, hl                                     ; $6342: $f9
    or [hl]                                       ; $6343: $b6
    ld e, a                                       ; $6344: $5f
    rla                                           ; $6345: $17
    add hl, de                                    ; $6346: $19
    add hl, bc                                    ; $6347: $09
    dec l                                         ; $6348: $2d
    ld l, a                                       ; $6349: $6f
    ei                                            ; $634a: $fb
    ei                                            ; $634b: $fb
    cp [hl]                                       ; $634c: $be
    ld c, a                                       ; $634d: $4f
    ld a, c                                       ; $634e: $79
    add e                                         ; $634f: $83
    ld e, [hl]                                    ; $6350: $5e
    adc a                                         ; $6351: $8f
    inc d                                         ; $6352: $14
    ld a, [hl]                                    ; $6353: $7e
    sbc [hl]                                      ; $6354: $9e
    cp b                                          ; $6355: $b8
    ld e, a                                       ; $6356: $5f
    sbc $21                                       ; $6357: $de $21
    ld [$18b2], a                                 ; $6359: $ea $b2 $18
    ld b, h                                       ; $635c: $44
    pop bc                                        ; $635d: $c1
    or $f7                                        ; $635e: $f6 $f7
    ld l, c                                       ; $6360: $69
    ld d, l                                       ; $6361: $55
    and c                                         ; $6362: $a1
    sub h                                         ; $6363: $94
    adc c                                         ; $6364: $89
    db $dd                                        ; $6365: $dd
    ld [hl-], a                                   ; $6366: $32
    push hl                                       ; $6367: $e5
    ld sp, hl                                     ; $6368: $f9
    ld b, d                                       ; $6369: $42
    dec h                                         ; $636a: $25
    bit 7, b                                      ; $636b: $cb $78
    add sp, $52                                   ; $636d: $e8 $52
    ei                                            ; $636f: $fb
    call $f408                                    ; $6370: $cd $08 $f4
    xor c                                         ; $6373: $a9
    ld l, e                                       ; $6374: $6b
    jr z, jr_043_63b3                             ; $6375: $28 $3c

    ld [hl], c                                    ; $6377: $71
    sub a                                         ; $6378: $97
    ld a, [c]                                     ; $6379: $f2
    ld d, [hl]                                    ; $637a: $56
    ld c, a                                       ; $637b: $4f
    or $c7                                        ; $637c: $f6 $c7
    adc e                                         ; $637e: $8b
    jp nz, Jump_043_751f                          ; $637f: $c2 $1f $75

    pop af                                        ; $6382: $f1
    sbc [hl]                                      ; $6383: $9e
    jr nz, jr_043_63b5                            ; $6384: $20 $2f

    ld [hl-], a                                   ; $6386: $32
    db $fd                                        ; $6387: $fd
    ld a, [bc]                                    ; $6388: $0a
    ld [hl], l                                    ; $6389: $75
    db $ed                                        ; $638a: $ed
    xor d                                         ; $638b: $aa
    adc a                                         ; $638c: $8f
    di                                            ; $638d: $f3
    inc hl                                        ; $638e: $23
    or a                                          ; $638f: $b7
    and e                                         ; $6390: $a3
    ld a, a                                       ; $6391: $7f
    ld [hl], c                                    ; $6392: $71
    ld a, [hl]                                    ; $6393: $7e
    jr nc, jr_043_63e5                            ; $6394: $30 $4f

    ld e, [hl]                                    ; $6396: $5e
    xor a                                         ; $6397: $af
    cp a                                          ; $6398: $bf
    rst $08                                       ; $6399: $cf
    ret                                           ; $639a: $c9


jr_043_639b:
    ld de, $746f                                  ; $639b: $11 $6f $74
    ld d, c                                       ; $639e: $51
    jr nz, jr_043_63b2                            ; $639f: $20 $11

    sub h                                         ; $63a1: $94
    ld [bc], a                                    ; $63a2: $02
    ld b, e                                       ; $63a3: $43
    cp [hl]                                       ; $63a4: $be
    inc d                                         ; $63a5: $14
    ld l, b                                       ; $63a6: $68

Jump_043_63a7:
    ld a, [c]                                     ; $63a7: $f2
    db $fc                                        ; $63a8: $fc
    reti                                          ; $63a9: $d9


    rra                                           ; $63aa: $1f
    rst $08                                       ; $63ab: $cf
    ld e, c                                       ; $63ac: $59
    sub [hl]                                      ; $63ad: $96
    adc a                                         ; $63ae: $8f
    jp nz, $88de                                  ; $63af: $c2 $de $88

jr_043_63b2:
    rst $20                                       ; $63b2: $e7

jr_043_63b3:
    rla                                           ; $63b3: $17
    db $f4                                        ; $63b4: $f4

jr_043_63b5:
    pop af                                        ; $63b5: $f1
    cp h                                          ; $63b6: $bc
    sub h                                         ; $63b7: $94
    sub c                                         ; $63b8: $91
    ret                                           ; $63b9: $c9


    ld l, a                                       ; $63ba: $6f
    ld b, a                                       ; $63bb: $47
    push hl                                       ; $63bc: $e5
    ld [bc], a                                    ; $63bd: $02
    ld [de], a                                    ; $63be: $12
    jp nz, $cba7                                  ; $63bf: $c2 $a7 $cb

    dec sp                                        ; $63c2: $3b
    rst $30                                       ; $63c3: $f7
    adc d                                         ; $63c4: $8a
    ld a, [c]                                     ; $63c5: $f2
    ld b, l                                       ; $63c6: $45
    ld e, l                                       ; $63c7: $5d
    inc c                                         ; $63c8: $0c
    ld c, $c2                                     ; $63c9: $0e $c2
    ret nc                                        ; $63cb: $d0

    push bc                                       ; $63cc: $c5
    ld sp, hl                                     ; $63cd: $f9
    ld de, $7205                                  ; $63ce: $11 $05 $72
    ld h, h                                       ; $63d1: $64
    add d                                         ; $63d2: $82
    ld d, d                                       ; $63d3: $52
    ld h, b                                       ; $63d4: $60
    ld [$2843], sp                                ; $63d5: $08 $43 $28
    ld e, a                                       ; $63d8: $5f
    ld c, [hl]                                    ; $63d9: $4e
    ld [c], a                                     ; $63da: $e2
    ld b, [hl]                                    ; $63db: $46
    jp z, $d829                                   ; $63dc: $ca $29 $d8

    inc de                                        ; $63df: $13
    ld l, a                                       ; $63e0: $6f
    inc b                                         ; $63e1: $04
    ld e, c                                       ; $63e2: $59
    ld h, b                                       ; $63e3: $60
    reti                                          ; $63e4: $d9


jr_043_63e5:
    ld e, $5f                                     ; $63e5: $1e $5f
    ld a, [bc]                                    ; $63e7: $0a
    inc [hl]                                      ; $63e8: $34
    ld a, c                                       ; $63e9: $79
    ld [c], a                                     ; $63ea: $e2
    adc l                                         ; $63eb: $8d
    jr nz, jr_043_63f8                            ; $63ec: $20 $0a

    sub a                                         ; $63ee: $97
    add l                                         ; $63ef: $85
    ld a, [bc]                                    ; $63f0: $0a
    ld e, a                                       ; $63f1: $5f
    cp a                                          ; $63f2: $bf
    ld [bc], a                                    ; $63f3: $02
    ld [hl], l                                    ; $63f4: $75
    db $ed                                        ; $63f5: $ed
    xor d                                         ; $63f6: $aa
    adc a                                         ; $63f7: $8f

jr_043_63f8:
    di                                            ; $63f8: $f3
    inc hl                                        ; $63f9: $23
    or a                                          ; $63fa: $b7
    and e                                         ; $63fb: $a3
    ld a, a                                       ; $63fc: $7f
    ld [hl], c                                    ; $63fd: $71
    ld a, [hl]                                    ; $63fe: $7e
    jr nc, jr_043_6450                            ; $63ff: $30 $4f

    ld e, [hl]                                    ; $6401: $5e
    xor a                                         ; $6402: $af
    cp a                                          ; $6403: $bf
    rst $08                                       ; $6404: $cf
    ret                                           ; $6405: $c9


    ld de, $746f                                  ; $6406: $11 $6f $74
    ld d, c                                       ; $6409: $51
    jr nz, jr_043_641d                            ; $640a: $20 $11

    sub h                                         ; $640c: $94
    ld [bc], a                                    ; $640d: $02
    ld b, e                                       ; $640e: $43
    cp [hl]                                       ; $640f: $be
    inc d                                         ; $6410: $14
    ld l, b                                       ; $6411: $68
    ld a, [c]                                     ; $6412: $f2
    db $fc                                        ; $6413: $fc
    reti                                          ; $6414: $d9


    rra                                           ; $6415: $1f
    rst $08                                       ; $6416: $cf
    ld e, c                                       ; $6417: $59
    sub [hl]                                      ; $6418: $96
    adc a                                         ; $6419: $8f
    jp nz, $88de                                  ; $641a: $c2 $de $88

jr_043_641d:
    rst $20                                       ; $641d: $e7
    rla                                           ; $641e: $17
    db $f4                                        ; $641f: $f4
    ld l, c                                       ; $6420: $69
    ld [hl], l                                    ; $6421: $75
    and a                                         ; $6422: $a7
    sbc d                                         ; $6423: $9a
    ld a, [bc]                                    ; $6424: $0a
    jp nz, $8ba3                                  ; $6425: $c2 $a3 $8b

    cpl                                           ; $6428: $2f
    ld l, h                                       ; $6429: $6c
    ld bc, $5309                                  ; $642a: $01 $09 $53
    ld c, b                                       ; $642d: $48
    adc l                                         ; $642e: $8d
    sbc h                                         ; $642f: $9c
    add h                                         ; $6430: $84
    ld d, c                                       ; $6431: $51
    ld hl, sp-$05                                 ; $6432: $f8 $fb
    or h                                          ; $6434: $b4
    rst $38                                       ; $6435: $ff
    ld [hl], c                                    ; $6436: $71

jr_043_6437:
    sub a                                         ; $6437: $97
    ld [hl-], a                                   ; $6438: $32
    ld [hl-], a                                   ; $6439: $32
    ld sp, hl                                     ; $643a: $f9
    db $ed                                        ; $643b: $ed
    xor b                                         ; $643c: $a8
    ld e, h                                       ; $643d: $5c
    ld b, b                                       ; $643e: $40
    ld b, d                                       ; $643f: $42
    ld hl, sp+$74                                 ; $6440: $f8 $74
    ld a, c                                       ; $6442: $79
    rst $20                                       ; $6443: $e7
    ld e, [hl]                                    ; $6444: $5e
    ld d, c                                       ; $6445: $51
    cp [hl]                                       ; $6446: $be
    xor b                                         ; $6447: $a8
    adc e                                         ; $6448: $8b
    pop bc                                        ; $6449: $c1
    ld b, c                                       ; $644a: $41
    jr @-$44                                      ; $644b: $18 $ba

    jr c, jr_043_648e                             ; $644d: $38 $3f

    and d                                         ; $644f: $a2

jr_043_6450:
    ld b, b                                       ; $6450: $40
    adc [hl]                                      ; $6451: $8e
    ld c, h                                       ; $6452: $4c
    ld d, b                                       ; $6453: $50
    ld a, [bc]                                    ; $6454: $0a
    inc c                                         ; $6455: $0c
    ld h, c                                       ; $6456: $61
    ld [$cbe5], sp                                ; $6457: $08 $e5 $cb
    ld c, c                                       ; $645a: $49
    call c, Call_000_3948                         ; $645b: $dc $48 $39
    dec b                                         ; $645e: $05
    ld a, e                                       ; $645f: $7b
    ld [c], a                                     ; $6460: $e2
    adc l                                         ; $6461: $8d
    jr nz, jr_043_646f                            ; $6462: $20 $0b

    inc l                                         ; $6464: $2c
    db $db                                        ; $6465: $db
    db $e3                                        ; $6466: $e3
    ld c, e                                       ; $6467: $4b
    add c                                         ; $6468: $81
    ld h, $4f                                     ; $6469: $26 $4f
    cp h                                          ; $646b: $bc
    ld de, $e144                                  ; $646c: $11 $44 $e1

jr_043_646f:
    or d                                          ; $646f: $b2
    ld d, b                                       ; $6470: $50
    pop hl                                        ; $6471: $e1
    db $eb                                        ; $6472: $eb
    ld d, a                                       ; $6473: $57
    ld [hl], l                                    ; $6474: $75
    db $ed                                        ; $6475: $ed
    xor d                                         ; $6476: $aa
    adc a                                         ; $6477: $8f
    di                                            ; $6478: $f3
    inc hl                                        ; $6479: $23
    or a                                          ; $647a: $b7
    and e                                         ; $647b: $a3
    ld a, a                                       ; $647c: $7f
    ld [hl], c                                    ; $647d: $71
    ld a, [hl]                                    ; $647e: $7e
    jr nc, jr_043_64d0                            ; $647f: $30 $4f

    ld e, [hl]                                    ; $6481: $5e
    xor a                                         ; $6482: $af
    cp a                                          ; $6483: $bf
    rst $08                                       ; $6484: $cf
    ret                                           ; $6485: $c9


    ld de, $746f                                  ; $6486: $11 $6f $74
    ld d, c                                       ; $6489: $51
    jr nz, jr_043_649d                            ; $648a: $20 $11

    sub h                                         ; $648c: $94
    ld [bc], a                                    ; $648d: $02

jr_043_648e:
    ld b, e                                       ; $648e: $43
    cp [hl]                                       ; $648f: $be
    inc d                                         ; $6490: $14
    ld l, b                                       ; $6491: $68
    ld a, [c]                                     ; $6492: $f2
    db $fc                                        ; $6493: $fc
    reti                                          ; $6494: $d9


    rra                                           ; $6495: $1f
    rst $08                                       ; $6496: $cf
    ld e, c                                       ; $6497: $59
    sub [hl]                                      ; $6498: $96
    adc a                                         ; $6499: $8f
    jp nz, $88de                                  ; $649a: $c2 $de $88

jr_043_649d:
    rst $20                                       ; $649d: $e7
    rla                                           ; $649e: $17
    db $f4                                        ; $649f: $f4
    ld l, c                                       ; $64a0: $69
    ld [hl], l                                    ; $64a1: $75
    and a                                         ; $64a2: $a7
    sbc d                                         ; $64a3: $9a
    ld a, [bc]                                    ; $64a4: $0a
    jp nz, $8ba3                                  ; $64a5: $c2 $a3 $8b

    rst $20                                       ; $64a8: $e7
    jr @+$3b                                      ; $64a9: $18 $39

    ld [bc], a                                    ; $64ab: $02
    sbc e                                         ; $64ac: $9b
    call nc, Call_043_49c8                        ; $64ad: $d4 $c8 $49
    jr jr_043_6437                                ; $64b0: $18 $85

    cp a                                          ; $64b2: $bf
    ld c, a                                       ; $64b3: $4f
    ei                                            ; $64b4: $fb
    rra                                           ; $64b5: $1f
    ld [hl], a                                    ; $64b6: $77
    add hl, hl                                    ; $64b7: $29
    inc hl                                        ; $64b8: $23
    sub e                                         ; $64b9: $93
    rst $18                                       ; $64ba: $df
    adc [hl]                                      ; $64bb: $8e
    jp z, $2405                                   ; $64bc: $ca $05 $24

    add h                                         ; $64bf: $84
    ld c, a                                       ; $64c0: $4f
    sub a                                         ; $64c1: $97
    ld [hl], a                                    ; $64c2: $77
    xor $15                                       ; $64c3: $ee $15
    push hl                                       ; $64c5: $e5
    adc e                                         ; $64c6: $8b
    cp d                                          ; $64c7: $ba

Jump_043_64c8:
    jr jr_043_64e6                                ; $64c8: $18 $1c

    add h                                         ; $64ca: $84
    and c                                         ; $64cb: $a1
    adc e                                         ; $64cc: $8b
    di                                            ; $64cd: $f3
    inc hl                                        ; $64ce: $23
    ld a, [bc]                                    ; $64cf: $0a

jr_043_64d0:
    db $e4                                        ; $64d0: $e4
    ret z                                         ; $64d1: $c8

    inc b                                         ; $64d2: $04
    and l                                         ; $64d3: $a5
    ret nz                                        ; $64d4: $c0

    db $10                                        ; $64d5: $10
    add [hl]                                      ; $64d6: $86
    ld d, b                                       ; $64d7: $50
    cp [hl]                                       ; $64d8: $be
    sbc h                                         ; $64d9: $9c
    call nz, $948d                                ; $64da: $c4 $8d $94
    ld d, e                                       ; $64dd: $53
    or b                                          ; $64de: $b0
    daa                                           ; $64df: $27
    sbc $08                                       ; $64e0: $de $08
    ld a, [$7515]                                 ; $64e2: $fa $15 $75
    db $ed                                        ; $64e5: $ed

jr_043_64e6:
    xor d                                         ; $64e6: $aa
    adc a                                         ; $64e7: $8f
    di                                            ; $64e8: $f3
    inc hl                                        ; $64e9: $23
    or a                                          ; $64ea: $b7
    and e                                         ; $64eb: $a3
    ld a, a                                       ; $64ec: $7f
    ld [hl], c                                    ; $64ed: $71
    ld a, [hl]                                    ; $64ee: $7e
    jr nc, jr_043_6540                            ; $64ef: $30 $4f

    ld e, [hl]                                    ; $64f1: $5e
    xor a                                         ; $64f2: $af

Jump_043_64f3:
    cp a                                          ; $64f3: $bf
    rst $08                                       ; $64f4: $cf
    ret                                           ; $64f5: $c9


    ld de, $746f                                  ; $64f6: $11 $6f $74
    ld d, c                                       ; $64f9: $51
    jr nz, jr_043_650d                            ; $64fa: $20 $11

    sub h                                         ; $64fc: $94
    ld [bc], a                                    ; $64fd: $02
    ld b, e                                       ; $64fe: $43
    cp [hl]                                       ; $64ff: $be
    inc d                                         ; $6500: $14
    ld l, b                                       ; $6501: $68
    ld a, [c]                                     ; $6502: $f2

jr_043_6503:
    db $fc                                        ; $6503: $fc
    reti                                          ; $6504: $d9


    rra                                           ; $6505: $1f
    rst $08                                       ; $6506: $cf
    ld e, c                                       ; $6507: $59
    sub [hl]                                      ; $6508: $96
    adc a                                         ; $6509: $8f
    jp nz, $88de                                  ; $650a: $c2 $de $88

jr_043_650d:
    rst $20                                       ; $650d: $e7
    rla                                           ; $650e: $17
    db $f4                                        ; $650f: $f4
    ld l, c                                       ; $6510: $69
    ld [hl], l                                    ; $6511: $75
    and a                                         ; $6512: $a7
    sbc d                                         ; $6513: $9a
    ld a, [bc]                                    ; $6514: $0a
    jp nz, Jump_043_4ba3                          ; $6515: $c2 $a3 $4b

    rst $00                                       ; $6518: $c7
    ld e, a                                       ; $6519: $5f
    jp z, $94d8                                   ; $651a: $ca $d8 $94

    ld [hl-], a                                   ; $651d: $32
    xor c                                         ; $651e: $a9
    sub c                                         ; $651f: $91
    sub e                                         ; $6520: $93
    jr nc, jr_043_652d                            ; $6521: $30 $0a

    ld a, a                                       ; $6523: $7f
    sbc a                                         ; $6524: $9f
    or $3f                                        ; $6525: $f6 $3f
    xor $52                                       ; $6527: $ee $52
    ld b, [hl]                                    ; $6529: $46
    ld h, $bf                                     ; $652a: $26 $bf
    dec e                                         ; $652c: $1d

jr_043_652d:
    sub l                                         ; $652d: $95
    dec bc                                        ; $652e: $0b
    ld c, b                                       ; $652f: $48
    ld [$2e9f], sp                                ; $6530: $08 $9f $2e
    rst $28                                       ; $6533: $ef
    call c, $ca2b                                 ; $6534: $dc $2b $ca
    rla                                           ; $6537: $17
    ld [hl], l                                    ; $6538: $75
    ld sp, $0838                                  ; $6539: $31 $38 $08
    ld b, e                                       ; $653c: $43
    rla                                           ; $653d: $17
    rst $20                                       ; $653e: $e7

jr_043_653f:
    ld b, a                                       ; $653f: $47

jr_043_6540:
    inc d                                         ; $6540: $14
    ret z                                         ; $6541: $c8

    sub c                                         ; $6542: $91
    add hl, bc                                    ; $6543: $09
    ld c, d                                       ; $6544: $4a
    add c                                         ; $6545: $81
    ld hl, $a10c                                  ; $6546: $21 $0c $a1
    ld a, h                                       ; $6549: $7c
    add hl, sp                                    ; $654a: $39
    adc c                                         ; $654b: $89
    dec de                                        ; $654c: $1b
    add hl, hl                                    ; $654d: $29
    and a                                         ; $654e: $a7
    ld h, b                                       ; $654f: $60
    ld c, a                                       ; $6550: $4f
    cp h                                          ; $6551: $bc
    ld de, $2bf4                                  ; $6552: $11 $f4 $2b
    xor l                                         ; $6555: $ad
    xor $94                                       ; $6556: $ee $94
    db $d3                                        ; $6558: $d3
    ld h, h                                       ; $6559: $64
    inc l                                         ; $655a: $2c
    dec e                                         ; $655b: $1d
    adc l                                         ; $655c: $8d
    and h                                         ; $655d: $a4
    inc sp                                        ; $655e: $33
    ld a, h                                       ; $655f: $7c
    reti                                          ; $6560: $d9


    jr nz, jr_043_6503                            ; $6561: $20 $a0

    rlc d                                         ; $6563: $cb $02
    set 6, [hl]                                   ; $6565: $cb $f6
    cp b                                          ; $6567: $b8
    ld l, d                                       ; $6568: $6a
    add c                                         ; $6569: $81
    ld [hl], e                                    ; $656a: $73
    xor a                                         ; $656b: $af
    cp a                                          ; $656c: $bf
    adc l                                         ; $656d: $8d
    inc d                                         ; $656e: $14
    or [hl]                                       ; $656f: $b6
    ld h, a                                       ; $6570: $67
    ld l, b                                       ; $6571: $68
    rst $30                                       ; $6572: $f7
    ld de, $fb68                                  ; $6573: $11 $68 $fb
    ld d, d                                       ; $6576: $52
    call c, $e73b                                 ; $6577: $dc $3b $e7
    ccf                                           ; $657a: $3f
    ld e, l                                       ; $657b: $5d
    sbc [hl]                                      ; $657c: $9e
    reti                                          ; $657d: $d9


    ld c, [hl]                                    ; $657e: $4e
    ld c, a                                       ; $657f: $4f
    xor a                                         ; $6580: $af
    cp b                                          ; $6581: $b8
    ret                                           ; $6582: $c9


    and a                                         ; $6583: $a7
    dec l                                         ; $6584: $2d
    dec sp                                        ; $6585: $3b
    rst $28                                       ; $6586: $ef
    adc b                                         ; $6587: $88
    ld a, [de]                                    ; $6588: $1a
    sbc e                                         ; $6589: $9b
    inc [hl]                                      ; $658a: $34
    db $d3                                        ; $658b: $d3
    ld a, b                                       ; $658c: $78
    ld d, $2a                                     ; $658d: $16 $2a
    ld a, h                                       ; $658f: $7c
    db $fd                                        ; $6590: $fd
    ld a, [bc]                                    ; $6591: $0a
    xor l                                         ; $6592: $ad

Call_043_6593:
    xor $fd                                       ; $6593: $ee $fd
    add hl, hl                                    ; $6595: $29
    and a                                         ; $6596: $a7
    ret                                           ; $6597: $c9


    ret c                                         ; $6598: $d8

    ret                                           ; $6599: $c9


    and a                                         ; $659a: $a7
    ld [hl], $ac                                  ; $659b: $36 $ac
    cp d                                          ; $659d: $ba
    ld de, $2da4                                  ; $659e: $11 $a4 $2d
    ld a, e                                       ; $65a1: $7b
    pop de                                        ; $65a2: $d1
    ld h, b                                       ; $65a3: $60
    cp d                                          ; $65a4: $ba
    inc l                                         ; $65a5: $2c
    or b                                          ; $65a6: $b0
    inc a                                         ; $65a7: $3c
    add hl, bc                                    ; $65a8: $09
    dec bc                                        ; $65a9: $0b
    dec l                                         ; $65aa: $2d
    rst $08                                       ; $65ab: $cf
    inc de                                        ; $65ac: $13
    xor a                                         ; $65ad: $af
    ld b, c                                       ; $65ae: $41
    xor c                                         ; $65af: $a9
    xor a                                         ; $65b0: $af
    jr nz, jr_043_653f                            ; $65b1: $20 $8c

    db $ec                                        ; $65b3: $ec
    ld c, a                                       ; $65b4: $4f
    and c                                         ; $65b5: $a1
    sbc a                                         ; $65b6: $9f
    dec a                                         ; $65b7: $3d
    jp c, $8fb9                                   ; $65b8: $da $b9 $8f

    cp d                                          ; $65bb: $ba
    ld a, b                                       ; $65bc: $78
    ld l, l                                       ; $65bd: $6d
    add h                                         ; $65be: $84
    sub c                                         ; $65bf: $91
    rst $18                                       ; $65c0: $df
    pop af                                        ; $65c1: $f1
    jp nc, $a371                                  ; $65c2: $d2 $71 $a3

    swap e                                        ; $65c5: $cb $33
    db $db                                        ; $65c7: $db
    jp hl                                         ; $65c8: $e9


    jp hl                                         ; $65c9: $e9


    dec d                                         ; $65ca: $15
    scf                                           ; $65cb: $37
    ld sp, hl                                     ; $65cc: $f9
    or h                                          ; $65cd: $b4
    ld h, l                                       ; $65ce: $65
    rst $20                                       ; $65cf: $e7
    dec e                                         ; $65d0: $1d
    ld d, c                                       ; $65d1: $51
    ld h, e                                       ; $65d2: $63
    sub e                                         ; $65d3: $93
    ld h, [hl]                                    ; $65d4: $66
    ld a, [de]                                    ; $65d5: $1a
    rst $08                                       ; $65d6: $cf
    ld b, d                                       ; $65d7: $42

Jump_043_65d8:
    add l                                         ; $65d8: $85
    xor a                                         ; $65d9: $af
    ld e, a                                       ; $65da: $5f

Jump_043_65db:
    ld bc, $a6ad                                  ; $65db: $01 $ad $a6
    or $9b                                        ; $65de: $f6 $9b
    ld de, $dd48                                  ; $65e0: $11 $48 $dd
    ld h, c                                       ; $65e3: $61
    add [hl]                                      ; $65e4: $86
    jp hl                                         ; $65e5: $e9


    or d                                          ; $65e6: $b2
    ret nz                                        ; $65e7: $c0

    ld [hl], d                                    ; $65e8: $72
    dec sp                                        ; $65e9: $3b
    add l                                         ; $65ea: $85
    ld c, [hl]                                    ; $65eb: $4e
    jp z, Jump_043_468b                           ; $65ec: $ca $8b $46

    ld de, $41af                                  ; $65ef: $11 $af $41
    xor c                                         ; $65f2: $a9
    add hl, bc                                    ; $65f3: $09
    or d                                          ; $65f4: $b2
    dec a                                         ; $65f5: $3d
    ldh [rNR32], a                                ; $65f6: $e0 $1c
    adc b                                         ; $65f8: $88
    scf                                           ; $65f9: $37
    ld a, [c]                                     ; $65fa: $f2
    dec de                                        ; $65fb: $1b
    ld [hl], c                                    ; $65fc: $71
    ld h, e                                       ; $65fd: $63
    xor a                                         ; $65fe: $af
    ld l, c                                       ; $65ff: $69
    scf                                           ; $6600: $37
    cp d                                          ; $6601: $ba
    inc a                                         ; $6602: $3c
    or e                                          ; $6603: $b3
    sbc l                                         ; $6604: $9d
    sbc [hl]                                      ; $6605: $9e
    ld e, [hl]                                    ; $6606: $5e
    ld [hl], c                                    ; $6607: $71
    sub e                                         ; $6608: $93
    ld c, a                                       ; $6609: $4f
    ld e, e                                       ; $660a: $5b
    halt                                          ; $660b: $76
    sbc $11                                       ; $660c: $de $11
    dec [hl]                                      ; $660e: $35
    ld [hl], $f9                                  ; $660f: $36 $f9
    call Call_043_6976                            ; $6611: $cd $76 $69
    or [hl]                                       ; $6614: $b6
    pop af                                        ; $6615: $f1
    inc l                                         ; $6616: $2c
    ld d, h                                       ; $6617: $54
    ld hl, sp-$06                                 ; $6618: $f8 $fa
    dec d                                         ; $661a: $15
    ld l, l                                       ; $661b: $6d
    adc e                                         ; $661c: $8b

Call_043_661d:
    rst $30                                       ; $661d: $f7
    inc b                                         ; $661e: $04
    cp d                                          ; $661f: $ba
    inc l                                         ; $6620: $2c
    ld [hl], e                                    ; $6621: $73
    adc $5f                                       ; $6622: $ce $5f
    ld l, a                                       ; $6624: $6f
    sbc $eb                                       ; $6625: $de $eb
    or l                                          ; $6627: $b5
    ld de, $437e                                  ; $6628: $11 $7e $43
    ld l, $82                                     ; $662b: $2e $82
    ld [$c5dc], a                                 ; $662d: $ea $dc $c5
    adc $f9                                       ; $6630: $ce $f9
    rrca                                          ; $6632: $0f
    ld a, [bc]                                    ; $6633: $0a
    sub c                                         ; $6634: $91
    ld h, c                                       ; $6635: $61
    sub b                                         ; $6636: $90
    or e                                          ; $6637: $b3
    sub c                                         ; $6638: $91
    scf                                           ; $6639: $37
    ld [hl], l                                    ; $663a: $75
    dec d                                         ; $663b: $15
    add h                                         ; $663c: $84
    ld b, a                                       ; $663d: $47
    sub a                                         ; $663e: $97
    ld [$9bf3], a                                 ; $663f: $ea $f3 $9b
    dec c                                         ; $6642: $0d
    call z, Call_000_3c2f                         ; $6643: $cc $2f $3c
    ld de, $9c64                                  ; $6646: $11 $64 $9c
    dec de                                        ; $6649: $1b
    inc sp                                        ; $664a: $33
    ld h, h                                       ; $664b: $64
    add c                                         ; $664c: $81
    push hl                                       ; $664d: $e5
    cp l                                          ; $664e: $bd
    ld e, [hl]                                    ; $664f: $5e
    dec de                                        ; $6650: $1b
    pop hl                                        ; $6651: $e1
    scf                                           ; $6652: $37
    ld b, h                                       ; $6653: $44
    db $db                                        ; $6654: $db
    sub a                                         ; $6655: $97
    xor a                                         ; $6656: $af
    adc $9d                                       ; $6657: $ce $9d
    ld l, $cf                                     ; $6659: $2e $cf
    ld l, h                                       ; $665b: $6c
    and a                                         ; $665c: $a7
    and a                                         ; $665d: $a7
    ld d, a                                       ; $665e: $57
    call c, $89a4                                 ; $665f: $dc $a4 $89
    add $b3                                       ; $6662: $c6 $b3
    ld d, b                                       ; $6664: $50
    pop hl                                        ; $6665: $e1
    set 5, a                                      ; $6666: $cb $ef
    sub h                                         ; $6668: $94
    db $d3                                        ; $6669: $d3
    ld h, h                                       ; $666a: $64
    inc l                                         ; $666b: $2c
    ld [hl], l                                    ; $666c: $75
    ld b, b                                       ; $666d: $40
    sbc $de                                       ; $666e: $de $de
    ld c, b                                       ; $6670: $48
    db $dd                                        ; $6671: $dd
    ld [hl], a                                    ; $6672: $77
    scf                                           ; $6673: $37
    xor [hl]                                      ; $6674: $ae
    db $db                                        ; $6675: $db
    ld a, [hl]                                    ; $6676: $7e
    dec b                                         ; $6677: $05
    db $ed                                        ; $6678: $ed
    ld a, l                                       ; $6679: $7d
    inc a                                         ; $667a: $3c
    ld h, a                                       ; $667b: $67
    ld e, c                                       ; $667c: $59
    ld a, $0a                                     ; $667d: $3e $0a
    ld a, e                                       ; $667f: $7b
    inc hl                                        ; $6680: $23
    sbc [hl]                                      ; $6681: $9e
    ld e, a                                       ; $6682: $5f
    db $10                                        ; $6683: $10
    ld a, [c]                                     ; $6684: $f2
    di                                            ; $6685: $f3
    ld l, c                                       ; $6686: $69
    set 1, [hl]                                   ; $6687: $cb $ce
    dec sp                                        ; $6689: $3b
    and d                                         ; $668a: $a2
    add $a6                                       ; $668b: $c6 $a6
    and $0a                                       ; $668d: $e6 $0a
    sbc [hl]                                      ; $668f: $9e
    ld d, e                                       ; $6690: $53
    cp [hl]                                       ; $6691: $be
    ld d, [hl]                                    ; $6692: $56
    call $ad15                                    ; $6693: $cd $15 $ad
    pop bc                                        ; $6696: $c1
    cp c                                          ; $6697: $b9
    rst $20                                       ; $6698: $e7
    adc e                                         ; $6699: $8b
    rrca                                          ; $669a: $0f
    ld b, l                                       ; $669b: $45
    pop hl                                        ; $669c: $e1
    rst $10                                       ; $669d: $d7
    and l                                         ; $669e: $a5
    db $fd                                        ; $669f: $fd
    rst $18                                       ; $66a0: $df
    sbc $21                                       ; $66a1: $de $21
    ld d, b                                       ; $66a3: $50
    ld [hl], e                                    ; $66a4: $73
    dec b                                         ; $66a5: $05
    xor l                                         ; $66a6: $ad
    pop de                                        ; $66a7: $d1
    sub c                                         ; $66a8: $91
    adc a                                         ; $66a9: $8f
    ld [hl], a                                    ; $66aa: $77
    adc h                                         ; $66ab: $8c
    xor c                                         ; $66ac: $a9
    ld a, h                                       ; $66ad: $7c
    ld d, $58                                     ; $66ae: $16 $58
    ld a, h                                       ; $66b0: $7c
    add sp, -$75                                  ; $66b1: $e8 $8b
    sbc d                                         ; $66b3: $9a
    ld e, h                                       ; $66b4: $5c
    or l                                          ; $66b5: $b5
    cp h                                          ; $66b6: $bc
    pop bc                                        ; $66b7: $c1
    cp $f2                                        ; $66b8: $fe $f2
    xor c                                         ; $66ba: $a9
    ld h, b                                       ; $66bb: $60
    rst $00                                       ; $66bc: $c7
    ld l, a                                       ; $66bd: $6f
    adc h                                         ; $66be: $8c
    db $fd                                        ; $66bf: $fd
    cp d                                          ; $66c0: $ba
    or h                                          ; $66c1: $b4
    rst $38                                       ; $66c2: $ff
    db $db                                        ; $66c3: $db
    dec sp                                        ; $66c4: $3b
    inc b                                         ; $66c5: $04
    ld l, d                                       ; $66c6: $6a
    xor [hl]                                      ; $66c7: $ae
    sbc [hl]                                      ; $66c8: $9e
    inc hl                                        ; $66c9: $23
    sbc d                                         ; $66ca: $9a
    dec a                                         ; $66cb: $3d
    db $d3                                        ; $66cc: $d3

jr_043_66cd:
    db $fd                                        ; $66cd: $fd
    call nz, Call_000_391b                        ; $66ce: $c4 $1b $39
    ld e, l                                       ; $66d1: $5d
    jp c, $f3b2                                   ; $66d2: $da $b2 $f3

    adc [hl]                                      ; $66d5: $8e
    xor b                                         ; $66d6: $a8
    or c                                          ; $66d7: $b1
    xor c                                         ; $66d8: $a9
    cp c                                          ; $66d9: $b9
    ld [bc], a                                    ; $66da: $02
    xor l                                         ; $66db: $ad
    xor $0a                                       ; $66dc: $ee $0a
    ld [hl-], a                                   ; $66de: $32
    sub c                                         ; $66df: $91
    sub c                                         ; $66e0: $91
    ld hl, sp+$3f                                 ; $66e1: $f8 $3f
    db $e4                                        ; $66e3: $e4
    add hl, bc                                    ; $66e4: $09
    ld c, a                                       ; $66e5: $4f
    ld a, h                                       ; $66e6: $7c
    ld h, c                                       ; $66e7: $61
    dec bc                                        ; $66e8: $0b
    ld c, b                                       ; $66e9: $48
    sbc b                                         ; $66ea: $98
    ld b, d                                       ; $66eb: $42
    cp a                                          ; $66ec: $bf
    ld [bc], a                                    ; $66ed: $02
    or l                                          ; $66ee: $b5
    rst $18                                       ; $66ef: $df
    adc h                                         ; $66f0: $8c
    add b                                         ; $66f1: $80
    ld l, $0e                                     ; $66f2: $2e $0e
    reti                                          ; $66f4: $d9


    ld e, $fe                                     ; $66f5: $1e $fe
    cp a                                          ; $66f7: $bf
    ld a, b                                       ; $66f8: $78
    sbc a                                         ; $66f9: $9f
    ld sp, hl                                     ; $66fa: $f9
    ld l, e                                       ; $66fb: $6b
    xor [hl]                                      ; $66fc: $ae
    ld [hl], l                                    ; $66fd: $75
    ld b, [hl]                                    ; $66fe: $46
    ld [c], a                                     ; $66ff: $e2
    sub b                                         ; $6700: $90
    db $ed                                        ; $6701: $ed
    pop af                                        ; $6702: $f1
    and h                                         ; $6703: $a4
    and c                                         ; $6704: $a1
    xor d                                         ; $6705: $aa
    ld h, $d5                                     ; $6706: $26 $d5
    ld e, a                                       ; $6708: $5f
    cp h                                          ; $6709: $bc
    rst $08                                       ; $670a: $cf
    db $fc                                        ; $670b: $fc
    add hl, hl                                    ; $670c: $29
    db $10                                        ; $670d: $10
    ld [c], a                                     ; $670e: $e2
    ld b, a                                       ; $670f: $47
    ld e, l                                       ; $6710: $5d
    jr jr_043_66cd                                ; $6711: $18 $ba

    call nc, Call_043_7901                        ; $6713: $d4 $01 $79
    ld a, e                                       ; $6716: $7b
    and e                                         ; $6717: $a3
    ld e, a                                       ; $6718: $5f
    ld bc, $7e9e                                  ; $6719: $01 $9e $7e
    db $e4                                        ; $671c: $e4
    halt                                          ; $671d: $76
    db $f4                                        ; $671e: $f4
    cpl                                           ; $671f: $2f
    adc $0f                                       ; $6720: $ce $0f
    and $c9                                       ; $6722: $e6 $c9
    db $eb                                        ; $6724: $eb
    push af                                       ; $6725: $f5
    rst $30                                       ; $6726: $f7
    add hl, sp                                    ; $6727: $39
    add hl, sp                                    ; $6728: $39
    ld [c], a                                     ; $6729: $e2
    ld c, l                                       ; $672a: $4d
    call Call_043_7515                            ; $672b: $cd $15 $75
    ld b, [hl]                                    ; $672e: $46
    and d                                         ; $672f: $a2
    xor [hl]                                      ; $6730: $ae
    jr nc, @+$37                                  ; $6731: $30 $35

    db $fd                                        ; $6733: $fd
    dec de                                        ; $6734: $1b
    ld a, [$8e78]                                 ; $6735: $fa $78 $8e
    inc d                                         ; $6738: $14
    cp d                                          ; $6739: $ba
    ld sp, hl                                     ; $673a: $f9
    adc c                                         ; $673b: $89
    scf                                           ; $673c: $37
    add d                                         ; $673d: $82
    jr z, @-$12                                   ; $673e: $28 $ec

    db $fd                                        ; $6740: $fd
    add hl, hl                                    ; $6741: $29
    ld e, [hl]                                    ; $6742: $5e
    ret c                                         ; $6743: $d8

    rst $20                                       ; $6744: $e7
    inc h                                         ; $6745: $24
    ld l, [hl]                                    ; $6746: $6e
    xor h                                         ; $6747: $ac
    ld c, h                                       ; $6748: $4c
    cp a                                          ; $6749: $bf
    ld [bc], a                                    ; $674a: $02
    sbc [hl]                                      ; $674b: $9e
    ld d, e                                       ; $674c: $53
    ld d, c                                       ; $674d: $51
    pop af                                        ; $674e: $f1
    and c                                         ; $674f: $a1
    ret nc                                        ; $6750: $d0

    push bc                                       ; $6751: $c5
    add a                                         ; $6752: $87
    and d                                         ; $6753: $a2
    ldh a, [rLY]                                  ; $6754: $f0 $44
    ld b, [hl]                                    ; $6756: $46
    ld d, d                                       ; $6757: $52
    inc hl                                        ; $6758: $23
    add l                                         ; $6759: $85
    ld a, d                                       ; $675a: $7a
    cp l                                          ; $675b: $bd
    rst $20                                       ; $675c: $e7
    ld c, $c2                                     ; $675d: $0e $c2
    ret z                                         ; $675f: $c8

    rst $00                                       ; $6760: $c7
    call $deae                                    ; $6761: $cd $ae $de
    sub b                                         ; $6764: $90
    db $db                                        ; $6765: $db
    ld hl, $f85f                                  ; $6766: $21 $5f $f8
    dec [hl]                                      ; $6769: $35
    db $ed                                        ; $676a: $ed
    ld h, $ef                                     ; $676b: $26 $ef
    inc e                                         ; $676d: $1c
    xor l                                         ; $676e: $ad
    add sp, $7e                                   ; $676f: $e8 $7e
    sbc [hl]                                      ; $6771: $9e
    xor b                                         ; $6772: $a8
    ld c, a                                       ; $6773: $4f
    rst $00                                       ; $6774: $c7
    ld e, a                                       ; $6775: $5f
    jp z, $94d8                                   ; $6776: $ca $d8 $94

    ld [hl-], a                                   ; $6779: $32
    dec [hl]                                      ; $677a: $35
    ld d, a                                       ; $677b: $57
    sbc [hl]                                      ; $677c: $9e
    ld d, e                                       ; $677d: $53
    cp [hl]                                       ; $677e: $be
    ld d, [hl]                                    ; $677f: $56
    inc a                                         ; $6780: $3c
    and a                                         ; $6781: $a7
    ld b, d                                       ; $6782: $42
    ld l, d                                       ; $6783: $6a
    ld h, h                                       ; $6784: $64
    add hl, de                                    ; $6785: $19
    and [hl]                                      ; $6786: $a6
    inc a                                         ; $6787: $3c
    add hl, hl                                    ; $6788: $29
    call nc, $2839                                ; $6789: $d4 $39 $28
    jr jr_043_67f8                                ; $678c: $18 $6a

    xor l                                         ; $678e: $ad
    xor l                                         ; $678f: $ad
    pop bc                                        ; $6790: $c1
    xor a                                         ; $6791: $af
    set 5, a                                      ; $6792: $cb $ef
    ld a, [bc]                                    ; $6794: $0a
    ld [hl-], a                                   ; $6795: $32
    sub c                                         ; $6796: $91
    sub c                                         ; $6797: $91
    ld hl, sp+$3f                                 ; $6798: $f8 $3f
    db $e4                                        ; $679a: $e4
    add hl, bc                                    ; $679b: $09
    ld c, a                                       ; $679c: $4f
    ld a, h                                       ; $679d: $7c
    ld h, c                                       ; $679e: $61
    dec bc                                        ; $679f: $0b
    ld c, b                                       ; $67a0: $48
    sbc b                                         ; $67a1: $98
    ld b, d                                       ; $67a2: $42
    cp a                                          ; $67a3: $bf
    ld [bc], a                                    ; $67a4: $02
    sbc [hl]                                      ; $67a5: $9e
    inc hl                                        ; $67a6: $23
    sbc d                                         ; $67a7: $9a
    dec a                                         ; $67a8: $3d
    db $d3                                        ; $67a9: $d3
    db $fd                                        ; $67aa: $fd
    call nz, $b91b                                ; $67ab: $c4 $1b $b9
    ld a, [hl]                                    ; $67ae: $7e
    dec b                                         ; $67af: $05
    ld l, l                                       ; $67b0: $6d
    reti                                          ; $67b1: $d9


    inc de                                        ; $67b2: $13
    rrca                                          ; $67b3: $0f
    cp d                                          ; $67b4: $ba
    call nc, $337e                                ; $67b5: $d4 $7e $33
    ld [bc], a                                    ; $67b8: $02
    ld a, l                                       ; $67b9: $7d
    jp c, $9e88                                   ; $67ba: $da $88 $9e

    adc [hl]                                      ; $67bd: $8e
    ld a, h                                       ; $67be: $7c
    cp h                                          ; $67bf: $bc
    ld h, e                                       ; $67c0: $63
    ld c, h                                       ; $67c1: $4c
    push hl                                       ; $67c2: $e5
    or e                                          ; $67c3: $b3
    ret nz                                        ; $67c4: $c0

    or d                                          ; $67c5: $b2
    dec a                                         ; $67c6: $3d
    ld e, [hl]                                    ; $67c7: $5e
    ld h, h                                       ; $67c8: $64
    or d                                          ; $67c9: $b2
    ret c                                         ; $67ca: $d8

    sub h                                         ; $67cb: $94
    ld [hl], d                                    ; $67cc: $72
    push de                                       ; $67cd: $d5
    db $f4                                        ; $67ce: $f4
    dec hl                                        ; $67cf: $2b
    sbc [hl]                                      ; $67d0: $9e
    ld d, e                                       ; $67d1: $53
    ld d, c                                       ; $67d2: $51
    pop af                                        ; $67d3: $f1
    and c                                         ; $67d4: $a1
    ret nc                                        ; $67d5: $d0

    push bc                                       ; $67d6: $c5
    add a                                         ; $67d7: $87

Call_043_67d8:
    and d                                         ; $67d8: $a2
    ldh a, [rLY]                                  ; $67d9: $f0 $44
    ld b, [hl]                                    ; $67db: $46
    ld d, d                                       ; $67dc: $52
    inc hl                                        ; $67dd: $23
    add l                                         ; $67de: $85
    ld a, d                                       ; $67df: $7a
    cp l                                          ; $67e0: $bd
    rst $20                                       ; $67e1: $e7
    ld c, $c2                                     ; $67e2: $0e $c2
    ret z                                         ; $67e4: $c8

    rst $00                                       ; $67e5: $c7
    call $deae                                    ; $67e6: $cd $ae $de
    sub b                                         ; $67e9: $90
    db $db                                        ; $67ea: $db
    ld hl, $f85f                                  ; $67eb: $21 $5f $f8
    dec [hl]                                      ; $67ee: $35
    db $ed                                        ; $67ef: $ed
    ld h, $ef                                     ; $67f0: $26 $ef
    inc e                                         ; $67f2: $1c
    xor l                                         ; $67f3: $ad
    add sp, $7e                                   ; $67f4: $e8 $7e
    sbc [hl]                                      ; $67f6: $9e
    xor b                                         ; $67f7: $a8

jr_043_67f8:
    adc a                                         ; $67f8: $8f
    rst $20                                       ; $67f9: $e7
    jr jr_043_6835                                ; $67fa: $18 $39

    ld [bc], a                                    ; $67fc: $02
    sbc e                                         ; $67fd: $9b
    sbc d                                         ; $67fe: $9a
    dec hl                                        ; $67ff: $2b
    sbc [hl]                                      ; $6800: $9e
    ld h, e                                       ; $6801: $63
    db $e4                                        ; $6802: $e4
    ld [$6a6c], sp                                ; $6803: $08 $6c $6a
    and l                                         ; $6806: $a5
    push hl                                       ; $6807: $e5
    cp h                                          ; $6808: $bc
    ld d, d                                       ; $6809: $52
    ld h, a                                       ; $680a: $67
    rst $00                                       ; $680b: $c7
    ld c, h                                       ; $680c: $4c
    db $ed                                        ; $680d: $ed
    or e                                          ; $680e: $b3
    ld b, b                                       ; $680f: $40
    db $d3                                        ; $6810: $d3
    ld l, [hl]                                    ; $6811: $6e
    and d                                         ; $6812: $a2
    ld l, $6d                                     ; $6813: $2e $6d
    reti                                          ; $6815: $d9


    ld a, c                                       ; $6816: $79
    ld b, a                                       ; $6817: $47
    call nc, $f4d8                                ; $6818: $d4 $d8 $f4
    dec hl                                        ; $681b: $2b
    dec l                                         ; $681c: $2d
    add a                                         ; $681d: $87
    add hl, hl                                    ; $681e: $29
    di                                            ; $681f: $f3
    rst $00                                       ; $6820: $c7
    call Call_000_3e5e                            ; $6821: $cd $5e $3e
    push de                                       ; $6824: $d5
    ld a, l                                       ; $6825: $7d
    sbc a                                         ; $6826: $9f
    ld d, [hl]                                    ; $6827: $56
    ld c, c                                       ; $6828: $49
    jp $0d45                                      ; $6829: $c3 $45 $0d


    ld c, c                                       ; $682c: $49
    ld a, c                                       ; $682d: $79
    ld [c], a                                     ; $682e: $e2
    ld h, b                                       ; $682f: $60
    xor $0d                                       ; $6830: $ee $0d
    ld d, c                                       ; $6832: $51
    rla                                           ; $6833: $17
    cpl                                           ; $6834: $2f

jr_043_6835:
    xor h                                         ; $6835: $ac
    ld a, d                                       ; $6836: $7a
    db $e3                                        ; $6837: $e3
    adc e                                         ; $6838: $8b
    dec de                                        ; $6839: $1b
    ld c, c                                       ; $683a: $49
    push af                                       ; $683b: $f5
    sbc d                                         ; $683c: $9a
    halt                                          ; $683d: $76
    ld h, e                                       ; $683e: $63
    adc b                                         ; $683f: $88

jr_043_6840:
    dec de                                        ; $6840: $1b
    ld hl, $884f                                  ; $6841: $21 $4f $88
    scf                                           ; $6844: $37
    ld [bc], a                                    ; $6845: $02
    ld e, l                                       ; $6846: $5d
    ld a, h                                       ; $6847: $7c
    jr z, jr_043_6840                             ; $6848: $28 $f6

    cp $14                                        ; $684a: $fe $14
    ret c                                         ; $684c: $d8

    rst $30                                       ; $684d: $f7
    dec hl                                        ; $684e: $2b
    cp [hl]                                       ; $684f: $be
    ret z                                         ; $6850: $c8

    or $78                                        ; $6851: $f6 $78
    ld [de], a                                    ; $6853: $12
    and l                                         ; $6854: $a5
    ld e, h                                       ; $6855: $5c
    cp h                                          ; $6856: $bc
    rst $08                                       ; $6857: $cf
    inc a                                         ; $6858: $3c
    cp d                                          ; $6859: $ba
    db $ec                                        ; $685a: $ec
    ld c, a                                       ; $685b: $4f
    ld [hl], c                                    ; $685c: $71
    inc hl                                        ; $685d: $23
    sbc $63                                       ; $685e: $de $63
    cp $94                                        ; $6860: $fe $94
    scf                                           ; $6862: $37
    add sp, -$0b                                  ; $6863: $e8 $f5
    ld c, b                                       ; $6865: $48
    pop hl                                        ; $6866: $e1
    rst $20                                       ; $6867: $e7
    rst $08                                       ; $6868: $cf
    adc e                                         ; $6869: $8b
    dec de                                        ; $686a: $1b
    bit 6, d                                      ; $686b: $cb $72
    dec c                                         ; $686d: $0d
    ld h, h                                       ; $686e: $64
    ld b, c                                       ; $686f: $41
    ld a, c                                       ; $6870: $79
    ld h, c                                       ; $6871: $61
    db $f4                                        ; $6872: $f4
    dec hl                                        ; $6873: $2b
    sbc [hl]                                      ; $6874: $9e
    ld d, e                                       ; $6875: $53
    ld d, c                                       ; $6876: $51
    pop af                                        ; $6877: $f1
    and c                                         ; $6878: $a1
    ret nc                                        ; $6879: $d0

    push bc                                       ; $687a: $c5
    add a                                         ; $687b: $87
    and d                                         ; $687c: $a2
    ldh a, [rLY]                                  ; $687d: $f0 $44
    ld b, [hl]                                    ; $687f: $46
    ld d, d                                       ; $6880: $52
    inc hl                                        ; $6881: $23
    add l                                         ; $6882: $85
    ld a, d                                       ; $6883: $7a
    cp l                                          ; $6884: $bd
    rst $20                                       ; $6885: $e7
    ld c, $c2                                     ; $6886: $0e $c2
    ret z                                         ; $6888: $c8

    rst $00                                       ; $6889: $c7
    call $deae                                    ; $688a: $cd $ae $de
    sub b                                         ; $688d: $90
    db $db                                        ; $688e: $db
    ld hl, $f85f                                  ; $688f: $21 $5f $f8
    dec [hl]                                      ; $6892: $35
    db $ed                                        ; $6893: $ed
    ld h, $ef                                     ; $6894: $26 $ef
    inc e                                         ; $6896: $1c
    xor l                                         ; $6897: $ad
    add sp, $7e                                   ; $6898: $e8 $7e
    sbc [hl]                                      ; $689a: $9e
    xor b                                         ; $689b: $a8
    adc a                                         ; $689c: $8f
    cpl                                           ; $689d: $2f
    ld l, h                                       ; $689e: $6c
    ld bc, $5309                                  ; $689f: $01 $09 $53
    add sp, -$1d                                  ; $68a2: $e8 $e3
    add hl, sp                                    ; $68a4: $39
    and l                                         ; $68a5: $a5
    ld a, $5d                                     ; $68a6: $3e $5d
    ld d, $58                                     ; $68a8: $16 $58
    ld l, [hl]                                    ; $68aa: $6e
    and a                                         ; $68ab: $a7
    add b                                         ; $68ac: $80
    ld sp, hl                                     ; $68ad: $f9
    xor d                                         ; $68ae: $aa
    ret                                           ; $68af: $c9


    adc e                                         ; $68b0: $8b
    ld c, h                                       ; $68b1: $4c
    call c, $8148                                 ; $68b2: $dc $48 $81
    and e                                         ; $68b5: $a3
    ld a, h                                       ; $68b6: $7c
    db $e4                                        ; $68b7: $e4
    add sp, -$1e                                  ; $68b8: $e8 $e2
    dec bc                                        ; $68ba: $0b
    ld e, e                                       ; $68bb: $5b
    ld b, b                                       ; $68bc: $40
    jp nz, $4214                                  ; $68bd: $c2 $14 $42

    sbc [hl]                                      ; $68c0: $9e
    jr c, jr_043_6927                             ; $68c1: $38 $64

    ld a, a                                       ; $68c3: $7f
    inc a                                         ; $68c4: $3c
    ld h, a                                       ; $68c5: $67
    ld e, c                                       ; $68c6: $59
    ld a, $0a                                     ; $68c7: $3e $0a
    ld a, e                                       ; $68c9: $7b
    inc hl                                        ; $68ca: $23
    sbc [hl]                                      ; $68cb: $9e
    ld e, a                                       ; $68cc: $5f
    ret nc                                        ; $68cd: $d0

    xor a                                         ; $68ce: $af
    sbc [hl]                                      ; $68cf: $9e
    inc hl                                        ; $68d0: $23
    db $fc                                        ; $68d1: $fc
    db $e4                                        ; $68d2: $e4
    ld d, a                                       ; $68d3: $57
    sub e                                         ; $68d4: $93
    ld b, d                                       ; $68d5: $42
    and e                                         ; $68d6: $a3
    ld l, $0c                                     ; $68d7: $2e $0c
    ld e, l                                       ; $68d9: $5d
    ld l, d                                       ; $68da: $6a
    cp a                                          ; $68db: $bf
    add hl, de                                    ; $68dc: $19
    ld bc, $105d                                  ; $68dd: $01 $5d $10
    and [hl]                                      ; $68e0: $a6
    ld [hl], c                                    ; $68e1: $71
    rla                                           ; $68e2: $17
    rst $38                                       ; $68e3: $ff
    ld e, a                                       ; $68e4: $5f
    inc d                                         ; $68e5: $14
    ld [hl], $2d                                  ; $68e6: $36 $2d
    ld d, e                                       ; $68e8: $53
    ld [hl], e                                    ; $68e9: $73
    dec b                                         ; $68ea: $05
    ld l, l                                       ; $68eb: $6d
    reti                                          ; $68ec: $d9


    inc de                                        ; $68ed: $13
    rrca                                          ; $68ee: $0f
    xor c                                         ; $68ef: $a9
    ld l, [hl]                                    ; $68f0: $6e
    ld l, a                                       ; $68f1: $6f
    add sp, $52                                   ; $68f2: $e8 $52
    ei                                            ; $68f4: $fb
    call $f408                                    ; $68f5: $cd $08 $f4
    ld l, c                                       ; $68f8: $69
    rst $08                                       ; $68f9: $cf
    db $e3                                        ; $68fa: $e3
    ld b, l                                       ; $68fb: $45
    ld h, $8b                                     ; $68fc: $26 $8b
    ld c, l                                       ; $68fe: $4d
    add hl, hl                                    ; $68ff: $29
    ld d, a                                       ; $6900: $57
    ld c, l                                       ; $6901: $4d
    jp z, $8bdb                                   ; $6902: $ca $db $8b

    ld c, h                                       ; $6905: $4c
    ld e, [hl]                                    ; $6906: $5e
    call c, Call_043_67d8                         ; $6907: $dc $d8 $67
    cp c                                          ; $690a: $b9
    ld b, $f2                                     ; $690b: $06 $f2
    ld h, [hl]                                    ; $690d: $66
    and e                                         ; $690e: $a3
    cp l                                          ; $690f: $bd
    ldh a, [$f5]                                  ; $6910: $f0 $f5
    dec hl                                        ; $6912: $2b
    or l                                          ; $6913: $b5
    rst $38                                       ; $6914: $ff
    ld [c], a                                     ; $6915: $e2
    ld a, l                                       ; $6916: $7d
    and $89                                       ; $6917: $e6 $89
    rrca                                          ; $6919: $0f
    push bc                                       ; $691a: $c5
    sbc $13                                       ; $691b: $de $13
    rst $20                                       ; $691d: $e7
    ld b, a                                       ; $691e: $47
    sub [hl]                                      ; $691f: $96
    ld h, c                                       ; $6920: $61
    sub b                                         ; $6921: $90
    and a                                         ; $6922: $a7
    ld c, e                                       ; $6923: $4b
    db $dd                                        ; $6924: $dd
    ld h, c                                       ; $6925: $61
    add [hl]                                      ; $6926: $86

jr_043_6927:
    push af                                       ; $6927: $f5
    ld l, c                                       ; $6928: $69
    rst $38                                       ; $6929: $ff
    inc bc                                        ; $692a: $03
    ei                                            ; $692b: $fb
    sbc h                                         ; $692c: $9c
    add b                                         ; $692d: $80
    inc a                                         ; $692e: $3c
    ld a, [hl]                                    ; $692f: $7e
    db $fd                                        ; $6930: $fd
    ld l, l                                       ; $6931: $6d
    db $f4                                        ; $6932: $f4
    dec hl                                        ; $6933: $2b
    xor l                                         ; $6934: $ad
    pop de                                        ; $6935: $d1
    sub c                                         ; $6936: $91
    adc a                                         ; $6937: $8f
    ld [hl], a                                    ; $6938: $77
    adc h                                         ; $6939: $8c
    xor c                                         ; $693a: $a9
    ld a, h                                       ; $693b: $7c
    ld d, $58                                     ; $693c: $16 $58
    or [hl]                                       ; $693e: $b6
    rst $00                                       ; $693f: $c7
    adc e                                         ; $6940: $8b
    ld c, h                                       ; $6941: $4c
    ld d, $9b                                     ; $6942: $16 $9b
    ld d, d                                       ; $6944: $52
    xor [hl]                                      ; $6945: $ae
    ld a, [de]                                    ; $6946: $1a
    ld e, l                                       ; $6947: $5d
    ld l, d                                       ; $6948: $6a
    cp a                                          ; $6949: $bf
    add hl, de                                    ; $694a: $19
    add c                                         ; $694b: $81
    call nc, Call_043_661d                        ; $694c: $d4 $1d $66
    ld e, b                                       ; $694f: $58
    rra                                           ; $6950: $1f
    ld e, a                                       ; $6951: $5f
    call nz, $ca5d                                ; $6952: $c4 $5d $ca
    db $db                                        ; $6955: $db
    ld e, a                                       ; $6956: $5f
    ld e, [hl]                                    ; $6957: $5e
    call c, $f7d8                                 ; $6958: $dc $d8 $f7
    ld a, l                                       ; $695b: $7d
    cp a                                          ; $695c: $bf
    ld [bc], a                                    ; $695d: $02
    xor l                                         ; $695e: $ad
    pop bc                                        ; $695f: $c1
    rst $18                                       ; $6960: $df
    rst $30                                       ; $6961: $f7
    ld a, l                                       ; $6962: $7d
    ld a, [hl]                                    ; $6963: $7e
    ld d, a                                       ; $6964: $57
    sub b                                         ; $6965: $90
    ret                                           ; $6966: $c9


    ld [hl-], a                                   ; $6967: $32
    and l                                         ; $6968: $a5
    ld c, h                                       ; $6969: $4c
    call nc, $a219                                ; $696a: $d4 $19 $a2
    ld l, $4f                                     ; $696d: $2e $4f
    jp nz, $65dc                                  ; $696f: $c2 $dc $65

    or c                                          ; $6972: $b1
    ld hl, $a79f                                  ; $6973: $21 $9f $a7

Call_043_6976:
    ld e, a                                       ; $6976: $5f
    ld bc, $f79e                                  ; $6977: $01 $9e $f7
    and e                                         ; $697a: $a3
    ld c, e                                       ; $697b: $4b
    db $ed                                        ; $697c: $ed
    scf                                           ; $697d: $37
    inc hl                                        ; $697e: $23
    ret nc                                        ; $697f: $d0

    xor a                                         ; $6980: $af
    jp hl                                         ; $6981: $e9


    inc d                                         ; $6982: $14
    ld l, d                                       ; $6983: $6a
    ld [c], a                                     ; $6984: $e2
    db $fc                                        ; $6985: $fc
    ld [$0a5f], sp                                ; $6986: $08 $5f $0a
    ld l, $de                                     ; $6989: $2e $de
    ld h, a                                       ; $698b: $67
    sbc [hl]                                      ; $698c: $9e
    ld d, h                                       ; $698d: $54
    cp a                                          ; $698e: $bf
    pop de                                        ; $698f: $d1
    and a                                         ; $6990: $a7
    ld d, e                                       ; $6991: $53
    ld a, [hl-]                                   ; $6992: $3a
    rla                                           ; $6993: $17
    rst $20                                       ; $6994: $e7
    ld b, a                                       ; $6995: $47
    ld hl, sp-$5e                                 ; $6996: $f8 $a2
    pop de                                        ; $6998: $d1
    or a                                          ; $6999: $b7
    dec hl                                        ; $699a: $2b
    xor $6b                                       ; $699b: $ee $6b
    xor l                                         ; $699d: $ad
    cp [hl]                                       ; $699e: $be
    push af                                       ; $699f: $f5
    jp hl                                         ; $69a0: $e9


    or d                                          ; $69a1: $b2
    ccf                                           ; $69a2: $3f
    adc e                                         ; $69a3: $8b
    ld b, c                                       ; $69a4: $41
    sbc e                                         ; $69a5: $9b
    sbc d                                         ; $69a6: $9a
    dec hl                                        ; $69a7: $2b
    ld l, c                                       ; $69a8: $69
    jp $d1b9                                      ; $69a9: $c3 $b9 $d1


    push hl                                       ; $69ac: $e5
    dec d                                         ; $69ad: $15
    ld c, d                                       ; $69ae: $4a
    sbc c                                         ; $69af: $99
    xor b                                         ; $69b0: $a8
    ld hl, $850d                                  ; $69b1: $21 $0d $85
    cpl                                           ; $69b4: $2f
    dec b                                         ; $69b5: $05
    jp nz, $7c67                                  ; $69b6: $c2 $67 $7c

    xor c                                         ; $69b9: $a9
    and b                                         ; $69ba: $a0
    db $ed                                        ; $69bb: $ed
    sbc e                                         ; $69bc: $9b
    ld a, [hl]                                    ; $69bd: $7e
    dec b                                         ; $69be: $05
    ld l, l                                       ; $69bf: $6d
    reti                                          ; $69c0: $d9


    inc de                                        ; $69c1: $13
    rrca                                          ; $69c2: $0f
    cp d                                          ; $69c3: $ba
    or h                                          ; $69c4: $b4
    rst $38                                       ; $69c5: $ff
    ld [$8fab], a                                 ; $69c6: $ea $ab $8f
    and a                                         ; $69c9: $a7
    rst $38                                       ; $69ca: $ff
    sub [hl]                                      ; $69cb: $96
    jp nc, Jump_000_1daf                          ; $69cc: $d2 $af $1d

    adc a                                         ; $69cf: $8f
    ret                                           ; $69d0: $c9


    ld h, a                                       ; $69d1: $67
    and c                                         ; $69d2: $a1
    add [hl]                                      ; $69d3: $86
    ld a, h                                       ; $69d4: $7c
    ret c                                         ; $69d5: $d8

    add [hl]                                      ; $69d6: $86
    ld a, h                                       ; $69d7: $7c
    xor e                                         ; $69d8: $ab
    ld l, $3e                                     ; $69d9: $2e $3e
    db $f4                                        ; $69db: $f4
    ld b, l                                       ; $69dc: $45
    ld c, l                                       ; $69dd: $4d
    ld c, b                                       ; $69de: $48
    ld a, [hl-]                                   ; $69df: $3a
    rst $10                                       ; $69e0: $d7
    xor a                                         ; $69e1: $af
    dec l                                         ; $69e2: $2d
    and a                                         ; $69e3: $a7
    and b                                         ; $69e4: $a0
    ld e, d                                       ; $69e5: $5a
    inc c                                         ; $69e6: $0c
    and c                                         ; $69e7: $a1
    sub d                                         ; $69e8: $92
    push hl                                       ; $69e9: $e5
    sbc $c1                                       ; $69ea: $de $c1
    db $10                                        ; $69ec: $10
    ld [de], a                                    ; $69ed: $12
    ld a, [bc]                                    ; $69ee: $0a
    add $d7                                       ; $69ef: $c6 $d7
    xor a                                         ; $69f1: $af
    ld l, l                                       ; $69f2: $6d
    pop de                                        ; $69f3: $d1

Jump_043_69f4:
    ld d, a                                       ; $69f4: $57

Call_043_69f5:
    xor a                                         ; $69f5: $af
    ret                                           ; $69f6: $c9


    and l                                         ; $69f7: $a5
    sub l                                         ; $69f8: $95
    ld h, $e2                                     ; $69f9: $26 $e2
    db $fd                                        ; $69fb: $fd
    db $ed                                        ; $69fc: $ed
    xor [hl]                                      ; $69fd: $ae
    and $0a                                       ; $69fe: $e6 $0a
    dec e                                         ; $6a00: $1d
    sbc l                                         ; $6a01: $9d
    inc bc                                        ; $6a02: $03
    ld a, c                                       ; $6a03: $79
    dec l                                         ; $6a04: $2d
    xor [hl]                                      ; $6a05: $ae
    cp [hl]                                       ; $6a06: $be
    cp b                                          ; $6a07: $b8
    cp b                                          ; $6a08: $b8
    xor c                                         ; $6a09: $a9
    sub [hl]                                      ; $6a0a: $96
    dec c                                         ; $6a0b: $0d
    cp $0a                                        ; $6a0c: $fe $0a
    jp nz, Jump_043_4688                          ; $6a0e: $c2 $88 $46

    rst $18                                       ; $6a11: $df
    adc [hl]                                      ; $6a12: $8e
    and a                                         ; $6a13: $a7
    and $0a                                       ; $6a14: $e6 $0a
    cp [hl]                                       ; $6a16: $be
    db $fc                                        ; $6a17: $fc
    inc a                                         ; $6a18: $3c
    ld l, c                                       ; $6a19: $69
    inc l                                         ; $6a1a: $2c
    ld l, l                                       ; $6a1b: $6d
    ld hl, sp-$30                                 ; $6a1c: $f8 $d0
    ld e, e                                       ; $6a1e: $5b
    ld e, [hl]                                    ; $6a1f: $5e
    db $d3                                        ; $6a20: $d3
    xor $2b                                       ; $6a21: $ee $2b
    ld [$0acf], sp                                ; $6a23: $08 $cf $0a
    dec e                                         ; $6a26: $1d
    ld l, b                                       ; $6a27: $68
    ld a, [de]                                    ; $6a28: $1a
    sbc b                                         ; $6a29: $98
    ld h, a                                       ; $6a2a: $67
    dec b                                         ; $6a2b: $05
    ld l, l                                       ; $6a2c: $6d
    adc b                                         ; $6a2d: $88
    dec sp                                        ; $6a2e: $3b
    or a                                          ; $6a2f: $b7
    ld h, a                                       ; $6a30: $67
    add c                                         ; $6a31: $81
    cp d                                          ; $6a32: $ba
    adc a                                         ; $6a33: $8f
    add d                                         ; $6a34: $82
    or [hl]                                       ; $6a35: $b6
    cpl                                           ; $6a36: $2f
    daa                                           ; $6a37: $27
    sbc d                                         ; $6a38: $9a
    ld b, c                                       ; $6a39: $41
    dec e                                         ; $6a3a: $1d
    add h                                         ; $6a3b: $84
    ld l, a                                       ; $6a3c: $6f
    dec b                                         ; $6a3d: $05
    ld l, l                                       ; $6a3e: $6d
    adc $be                                       ; $6a3f: $ce $be
    ld c, c                                       ; $6a41: $49
    ei                                            ; $6a42: $fb
    xor a                                         ; $6a43: $af
    db $dd                                        ; $6a44: $dd
    ld a, [bc]                                    ; $6a45: $0a
    ld l, l                                       ; $6a46: $6d
    adc $be                                       ; $6a47: $ce $be
    ld c, c                                       ; $6a49: $49
    rst $00                                       ; $6a4a: $c7
    halt                                          ; $6a4b: $76
    srl [hl]                                      ; $6a4c: $cb $3e
    ld b, a                                       ; $6a4e: $47
    rrc d                                         ; $6a4f: $cb $0a
    cp [hl]                                       ; $6a51: $be
    cp a                                          ; $6a52: $bf
    ret                                           ; $6a53: $c9


    rst $08                                       ; $6a54: $cf
    ld a, [c]                                     ; $6a55: $f2
    add $c7                                       ; $6a56: $c6 $c7
    cp a                                          ; $6a58: $bf
    ld [bc], a                                    ; $6a59: $02
    db $ed                                        ; $6a5a: $ed
    dec e                                         ; $6a5b: $1d
    adc c                                         ; $6a5c: $89
    cp l                                          ; $6a5d: $bd
    ld h, a                                       ; $6a5e: $67
    dec b                                         ; $6a5f: $05
    ld l, l                                       ; $6a60: $6d
    sub h                                         ; $6a61: $94
    dec b                                         ; $6a62: $05
    halt                                          ; $6a63: $76
    db $10                                        ; $6a64: $10
    ld [c], a                                     ; $6a65: $e2
    xor a                                         ; $6a66: $af
    ld [hl], l                                    ; $6a67: $75
    ld l, l                                       ; $6a68: $6d
    ld c, d                                       ; $6a69: $4a
    jp hl                                         ; $6a6a: $e9


    or e                                          ; $6a6b: $b3
    adc a                                         ; $6a6c: $8f
    call nz, $b3de                                ; $6a6d: $c4 $de $b3
    ld [bc], a                                    ; $6a70: $02
    ld l, l                                       ; $6a71: $6d
    cp $76                                        ; $6a72: $fe $76
    or a                                          ; $6a74: $b7
    ld [bc], a                                    ; $6a75: $02
    dec e                                         ; $6a76: $1d
    and c                                         ; $6a77: $a1
    ld e, h                                       ; $6a78: $5c
    pop hl                                        ; $6a79: $e1
    ld a, [hl]                                    ; $6a7a: $7e
    dec b                                         ; $6a7b: $05
    db $ed                                        ; $6a7c: $ed
    cp a                                          ; $6a7d: $bf
    halt                                          ; $6a7e: $76
    cp a                                          ; $6a7f: $bf
    ld [bc], a                                    ; $6a80: $02
    ld l, l                                       ; $6a81: $6d
    adc [hl]                                      ; $6a82: $8e
    ld de, $057f                                  ; $6a83: $11 $7f $05
    xor l                                         ; $6a86: $ad
    sbc a                                         ; $6a87: $9f
    rla                                           ; $6a88: $17
    push hl                                       ; $6a89: $e5
    ld d, a                                       ; $6a8a: $57
    xor l                                         ; $6a8b: $ad
    ld l, d                                       ; $6a8c: $6a
    or a                                          ; $6a8d: $b7
    adc a                                         ; $6a8e: $8f
    db $eb                                        ; $6a8f: $eb
    ld e, c                                       ; $6a90: $59
    ld bc, $f66d                                  ; $6a91: $01 $6d $f6
    xor c                                         ; $6a94: $a9
    ld e, [hl]                                    ; $6a95: $5e
    dec sp                                        ; $6a96: $3b
    rst $30                                       ; $6a97: $f7
    dec hl                                        ; $6a98: $2b
    xor l                                         ; $6a99: $ad
    rst $30                                       ; $6a9a: $f7
    xor c                                         ; $6a9b: $a9
    ld e, [hl]                                    ; $6a9c: $5e
    dec sp                                        ; $6a9d: $3b
    rst $30                                       ; $6a9e: $f7
    dec hl                                        ; $6a9f: $2b
    xor l                                         ; $6aa0: $ad
    inc [hl]                                      ; $6aa1: $34
    pop de                                        ; $6aa2: $d1
    ld e, b                                       ; $6aa3: $58
    dec hl                                        ; $6aa4: $2b
    ld c, l                                       ; $6aa5: $4d
    ld h, [hl]                                    ; $6aa6: $66
    dec b                                         ; $6aa7: $05
    dec e                                         ; $6aa8: $1d
    adc a                                         ; $6aa9: $8f
    or [hl]                                       ; $6aaa: $b6
    adc a                                         ; $6aab: $8f
    cpl                                           ; $6aac: $2f
    rla                                           ; $6aad: $17
    adc l                                         ; $6aae: $8d
    cp [hl]                                       ; $6aaf: $be
    ldh a, [$ad]                                  ; $6ab0: $f0 $ad
    ld l, l                                       ; $6ab2: $6d
    pop de                                        ; $6ab3: $d1
    rla                                           ; $6ab4: $17
    cp [hl]                                       ; $6ab5: $be
    sbc h                                         ; $6ab6: $9c
    ld h, h                                       ; $6ab7: $64
    pop bc                                        ; $6ab8: $c1
    sbc $88                                       ; $6ab9: $de $88
    cp d                                          ; $6abb: $ba
    jr z, jr_043_6b39                             ; $6abc: $28 $7b

    ld l, l                                       ; $6abe: $6d
    ld d, [hl]                                    ; $6abf: $56
    ld l, l                                       ; $6ac0: $6d
    pop de                                        ; $6ac1: $d1
    rla                                           ; $6ac2: $17
    cp [hl]                                       ; $6ac3: $be
    inc d                                         ; $6ac4: $14
    cp d                                          ; $6ac5: $ba
    ret nz                                        ; $6ac6: $c0

    ld l, [hl]                                    ; $6ac7: $6e
    db $ec                                        ; $6ac8: $ec
    ld d, [hl]                                    ; $6ac9: $56
    ld l, l                                       ; $6aca: $6d
    pop de                                        ; $6acb: $d1
    rla                                           ; $6acc: $17
    cp [hl]                                       ; $6acd: $be
    cp h                                          ; $6ace: $bc
    pop af                                        ; $6acf: $f1
    ld l, c                                       ; $6ad0: $69
    ei                                            ; $6ad1: $fb
    ld h, $ea                                     ; $6ad2: $26 $ea
    and d                                         ; $6ad4: $a2
    db $ec                                        ; $6ad5: $ec
    or l                                          ; $6ad6: $b5
    ld e, c                                       ; $6ad7: $59
    ld bc, $d16d                                  ; $6ad8: $01 $6d $d1
    rla                                           ; $6adb: $17
    cp [hl]                                       ; $6adc: $be
    sub b                                         ; $6add: $90
    ret c                                         ; $6ade: $d8

    db $e3                                        ; $6adf: $e3
    ld l, [hl]                                    ; $6ae0: $6e
    dec b                                         ; $6ae1: $05
    ld l, l                                       ; $6ae2: $6d
    pop de                                        ; $6ae3: $d1
    rla                                           ; $6ae4: $17
    cp [hl]                                       ; $6ae5: $be
    inc d                                         ; $6ae6: $14
    ld [hl], $68                                  ; $6ae7: $36 $68
    rst $08                                       ; $6ae9: $cf
    or a                                          ; $6aea: $b7
    ld [bc], a                                    ; $6aeb: $02
    ld l, l                                       ; $6aec: $6d
    pop de                                        ; $6aed: $d1
    rla                                           ; $6aee: $17
    cp [hl]                                       ; $6aef: $be
    cp h                                          ; $6af0: $bc
    halt                                          ; $6af1: $76
    db $fc                                        ; $6af2: $fc
    adc l                                         ; $6af3: $8d
    ld [$39df], a                                 ; $6af4: $ea $df $39
    ccf                                           ; $6af7: $3f
    sbc b                                         ; $6af8: $98
    ld a, a                                       ; $6af9: $7f
    dec b                                         ; $6afa: $05
    dec e                                         ; $6afb: $1d
    adc a                                         ; $6afc: $8f
    or [hl]                                       ; $6afd: $b6
    adc a                                         ; $6afe: $8f
    cpl                                           ; $6aff: $2f
    or a                                          ; $6b00: $b7
    db $e3                                        ; $6b01: $e3
    ld a, [hl]                                    ; $6b02: $7e
    ld e, c                                       ; $6b03: $59
    or b                                          ; $6b04: $b0
    rst $30                                       ; $6b05: $f7
    xor h                                         ; $6b06: $ac
    sbc [hl]                                      ; $6b07: $9e
    cp a                                          ; $6b08: $bf
    inc l                                         ; $6b09: $2c
    ret c                                         ; $6b0a: $d8

    ld a, e                                       ; $6b0b: $7b
    ld a, [c]                                     ; $6b0c: $f2
    ld e, c                                       ; $6b0d: $59
    xor b                                         ; $6b0e: $a8
    ldh a, [$af]                                  ; $6b0f: $f0 $af
    sbc [hl]                                      ; $6b11: $9e
    cp a                                          ; $6b12: $bf
    inc l                                         ; $6b13: $2c
    ret c                                         ; $6b14: $d8

    ld a, e                                       ; $6b15: $7b
    ld a, [c]                                     ; $6b16: $f2
    ld e, c                                       ; $6b17: $59
    xor b                                         ; $6b18: $a8
    ldh a, [$a7]                                  ; $6b19: $f0 $a7
    ret nc                                        ; $6b1b: $d0

    dec b                                         ; $6b1c: $05
    halt                                          ; $6b1d: $76
    ld h, e                                       ; $6b1e: $63
    ld e, b                                       ; $6b1f: $58
    ld bc, $bf9e                                  ; $6b20: $01 $9e $bf
    inc l                                         ; $6b23: $2c
    ret c                                         ; $6b24: $d8

    ld a, e                                       ; $6b25: $7b
    ld a, [c]                                     ; $6b26: $f2
    or c                                          ; $6b27: $b1
    db $d3                                        ; $6b28: $d3
    db $fc                                        ; $6b29: $fc
    ld e, b                                       ; $6b2a: $58
    ld bc, $bf9e                                  ; $6b2b: $01 $9e $bf
    inc l                                         ; $6b2e: $2c
    ret c                                         ; $6b2f: $d8

    ld a, e                                       ; $6b30: $7b
    ld d, d                                       ; $6b31: $52
    add sp, $02                                   ; $6b32: $e8 $02
    db $db                                        ; $6b34: $db
    rst $08                                       ; $6b35: $cf
    ld b, a                                       ; $6b36: $47
    adc $0a                                       ; $6b37: $ce $0a

jr_043_6b39:
    ld l, l                                       ; $6b39: $6d
    db $ec                                        ; $6b3a: $ec
    ld a, [bc]                                    ; $6b3b: $0a
    call z, $df93                                 ; $6b3c: $cc $93 $df
    inc a                                         ; $6b3f: $3c
    dec hl                                        ; $6b40: $2b
    sbc [hl]                                      ; $6b41: $9e
    cp a                                          ; $6b42: $bf
    inc l                                         ; $6b43: $2c
    ret c                                         ; $6b44: $d8

    ld a, e                                       ; $6b45: $7b
    ld [hl-], a                                   ; $6b46: $32
    call z, $cd57                                 ; $6b47: $cc $57 $cd
    ld a, [bc]                                    ; $6b4a: $0a
    dec e                                         ; $6b4b: $1d
    adc a                                         ; $6b4c: $8f
    or [hl]                                       ; $6b4d: $b6
    adc a                                         ; $6b4e: $8f
    cpl                                           ; $6b4f: $2f
    ei                                            ; $6b50: $fb
    ld b, e                                       ; $6b51: $43
    and d                                         ; $6b52: $a2
    jr nc, jr_043_6bab                            ; $6b53: $30 $56

    sbc [hl]                                      ; $6b55: $9e
    ld d, e                                       ; $6b56: $53

jr_043_6b57:
    dec l                                         ; $6b57: $2d
    dec de                                        ; $6b58: $1b
    inc a                                         ; $6b59: $3c

jr_043_6b5a:
    ld d, c                                       ; $6b5a: $51
    sbc a                                         ; $6b5b: $9f
    db $fd                                        ; $6b5c: $fd
    db $e4                                        ; $6b5d: $e4
    ret c                                         ; $6b5e: $d8

    xor h                                         ; $6b5f: $ac
    db $ed                                        ; $6b60: $ed
    cp a                                          ; $6b61: $bf

jr_043_6b62:
    jr nc, jr_043_6b5a                            ; $6b62: $30 $f6

    sbc [hl]                                      ; $6b64: $9e
    sbc h                                         ; $6b65: $9c
    sub b                                         ; $6b66: $90
    jr nc, jr_043_6b62                            ; $6b67: $30 $f9

    adc l                                         ; $6b69: $8d
    dec d                                         ; $6b6a: $15
    sbc [hl]                                      ; $6b6b: $9e
    ld d, e                                       ; $6b6c: $53
    dec l                                         ; $6b6d: $2d
    dec de                                        ; $6b6e: $1b
    inc a                                         ; $6b6f: $3c
    ld d, c                                       ; $6b70: $51
    sbc a                                         ; $6b71: $9f
    db $fd                                        ; $6b72: $fd
    db $e4                                        ; $6b73: $e4
    ret c                                         ; $6b74: $d8

    and h                                         ; $6b75: $a4

jr_043_6b76:
    ret nc                                        ; $6b76: $d0

    dec b                                         ; $6b77: $05
    halt                                          ; $6b78: $76
    ld h, e                                       ; $6b79: $63
    ld e, b                                       ; $6b7a: $58
    ld bc, $bfed                                  ; $6b7b: $01 $ed $bf

jr_043_6b7e:
    jr nc, jr_043_6b76                            ; $6b7e: $30 $f6

    sbc [hl]                                      ; $6b80: $9e
    sbc h                                         ; $6b81: $9c
    sub b                                         ; $6b82: $90
    jr nc, jr_043_6b7e                            ; $6b83: $30 $f9

    adc l                                         ; $6b85: $8d
    inc d                                         ; $6b86: $14
    cp d                                          ; $6b87: $ba
    ret nz                                        ; $6b88: $c0

    ld l, [hl]                                    ; $6b89: $6e
    inc c                                         ; $6b8a: $0c
    dec hl                                        ; $6b8b: $2b
    sbc [hl]                                      ; $6b8c: $9e
    ld d, e                                       ; $6b8d: $53
    dec l                                         ; $6b8e: $2d
    dec de                                        ; $6b8f: $1b
    inc a                                         ; $6b90: $3c
    add hl, sp                                    ; $6b91: $39
    add hl, bc                                    ; $6b92: $09
    ld h, e                                       ; $6b93: $63

jr_043_6b94:
    ld a, a                                       ; $6b94: $7f
    db $ec                                        ; $6b95: $ec
    or h                                          ; $6b96: $b4
    ld d, e                                       ; $6b97: $53
    cp a                                          ; $6b98: $bf
    ld [bc], a                                    ; $6b99: $02
    db $ed                                        ; $6b9a: $ed
    cp a                                          ; $6b9b: $bf
    jr nc, jr_043_6b94                            ; $6b9c: $30 $f6

    sbc [hl]                                      ; $6b9e: $9e
    xor b                                         ; $6b9f: $a8
    rrca                                          ; $6ba0: $0f
    adc a                                         ; $6ba1: $8f
    ld d, l                                       ; $6ba2: $55
    db $10                                        ; $6ba3: $10
    cp $15                                        ; $6ba4: $fe $15
    dec e                                         ; $6ba6: $1d
    adc a                                         ; $6ba7: $8f
    or [hl]                                       ; $6ba8: $b6
    adc a                                         ; $6ba9: $8f
    cpl                                           ; $6baa: $2f

jr_043_6bab:
    ei                                            ; $6bab: $fb
    db $e3                                        ; $6bac: $e3
    ld c, [hl]                                    ; $6bad: $4e
    sbc b                                         ; $6bae: $98
    jp c, $9eaf                                   ; $6baf: $da $af $9e

    daa                                           ; $6bb2: $27
    ld c, h                                       ; $6bb3: $4c
    db $ed                                        ; $6bb4: $ed
    and e                                         ; $6bb5: $a3
    ld l, $0b                                     ; $6bb6: $2e $0b
    or $c6                                        ; $6bb8: $f6 $c6
    ld a, [bc]                                    ; $6bba: $0a
    sbc [hl]                                      ; $6bbb: $9e
    daa                                           ; $6bbc: $27
    ld c, h                                       ; $6bbd: $4c
    db $ed                                        ; $6bbe: $ed
    and e                                         ; $6bbf: $a3
    or b                                          ; $6bc0: $b0
    rst $30                                       ; $6bc1: $f7
    and a                                         ; $6bc2: $a7
    db $fc                                        ; $6bc3: $fc

Call_043_6bc4:
    and [hl]                                      ; $6bc4: $a6
    adc h                                         ; $6bc5: $8c
    dec d                                         ; $6bc6: $15
    sbc [hl]                                      ; $6bc7: $9e
    daa                                           ; $6bc8: $27
    ld c, h                                       ; $6bc9: $4c
    db $ed                                        ; $6bca: $ed
    and e                                         ; $6bcb: $a3
    or b                                          ; $6bcc: $b0
    rst $30                                       ; $6bcd: $f7
    rst $00                                       ; $6bce: $c7
    ld d, b                                       ; $6bcf: $50
    xor [hl]                                      ; $6bd0: $ae
    jr nc, jr_043_6b57                            ; $6bd1: $30 $84

    ld hl, sp+$2b                                 ; $6bd3: $f8 $2b
    sbc [hl]                                      ; $6bd5: $9e
    daa                                           ; $6bd6: $27
    ld c, h                                       ; $6bd7: $4c
    db $ed                                        ; $6bd8: $ed
    and e                                         ; $6bd9: $a3
    or b                                          ; $6bda: $b0
    ld b, e                                       ; $6bdb: $43
    sbc [hl]                                      ; $6bdc: $9e
    ld [hl], $86                                  ; $6bdd: $36 $86
    dec d                                         ; $6bdf: $15
    sbc [hl]                                      ; $6be0: $9e
    daa                                           ; $6be1: $27
    ld c, h                                       ; $6be2: $4c
    db $ed                                        ; $6be3: $ed
    and e                                         ; $6be4: $a3
    or b                                          ; $6be5: $b0
    rst $30                                       ; $6be6: $f7
    rst $00                                       ; $6be7: $c7
    ld b, [hl]                                    ; $6be8: $46
    ld c, a                                       ; $6be9: $4f
    dec bc                                        ; $6bea: $0b
    add e                                         ; $6beb: $83
    ld c, b                                       ; $6bec: $48
    db $fc                                        ; $6bed: $fc
    dec d                                         ; $6bee: $15
    sbc [hl]                                      ; $6bef: $9e
    daa                                           ; $6bf0: $27
    ld c, h                                       ; $6bf1: $4c
    db $ed                                        ; $6bf2: $ed
    and e                                         ; $6bf3: $a3
    or b                                          ; $6bf4: $b0
    and e                                         ; $6bf5: $a3
    rst $38                                       ; $6bf6: $ff
    ld c, l                                       ; $6bf7: $4d
    rst $18                                       ; $6bf8: $df
    call nc, $1dac                                ; $6bf9: $d4 $ac $1d
    adc a                                         ; $6bfc: $8f
    or [hl]                                       ; $6bfd: $b6
    adc a                                         ; $6bfe: $8f
    cpl                                           ; $6bff: $2f
    jp c, $14be                                   ; $6c00: $da $be $14

    ld a, $f2                                     ; $6c03: $3e $f2
    rst $30                                       ; $6c05: $f7
    xor l                                         ; $6c06: $ad
    cp [hl]                                       ; $6c07: $be
    ld a, h                                       ; $6c08: $7c
    db $e4                                        ; $6c09: $e4
    rst $28                                       ; $6c0a: $ef
    ld e, e                                       ; $6c0b: $5b
    ld bc, $7cbe                                  ; $6c0c: $01 $be $7c
    db $e4                                        ; $6c0f: $e4
    rst $28                                       ; $6c10: $ef
    ld c, e                                       ; $6c11: $4b
    and c                                         ; $6c12: $a1
    dec bc                                        ; $6c13: $0b
    db $ec                                        ; $6c14: $ec
    add $6e                                       ; $6c15: $c6 $6e
    dec b                                         ; $6c17: $05
    cp [hl]                                       ; $6c18: $be
    ld a, h                                       ; $6c19: $7c
    db $e4                                        ; $6c1a: $e4
    rst $28                                       ; $6c1b: $ef
    adc e                                         ; $6c1c: $8b
    sbc l                                         ; $6c1d: $9d
    ld a, b                                       ; $6c1e: $78
    rst $00                                       ; $6c1f: $c7
    adc b                                         ; $6c20: $88
    rst $08                                       ; $6c21: $cf
    or a                                          ; $6c22: $b7
    ld [bc], a                                    ; $6c23: $02
    cp [hl]                                       ; $6c24: $be
    ld a, h                                       ; $6c25: $7c
    db $e4                                        ; $6c26: $e4
    rst $28                                       ; $6c27: $ef
    ld c, e                                       ; $6c28: $4b
    and c                                         ; $6c29: $a1
    dec bc                                        ; $6c2a: $0b
    ld l, h                                       ; $6c2b: $6c
    ccf                                           ; $6c2c: $3f
    rra                                           ; $6c2d: $1f
    ld a, c                                       ; $6c2e: $79
    dec hl                                        ; $6c2f: $2b
    cp [hl]                                       ; $6c30: $be
    ld a, h                                       ; $6c31: $7c
    db $e4                                        ; $6c32: $e4
    rst $28                                       ; $6c33: $ef
    adc e                                         ; $6c34: $8b
    jp nz, $fe8e                                  ; $6c35: $c2 $8e $fe

    scf                                           ; $6c38: $37
    ld a, l                                       ; $6c39: $7d
    ld d, e                                       ; $6c3a: $53
    or e                                          ; $6c3b: $b3
    ld [bc], a                                    ; $6c3c: $02
    cp [hl]                                       ; $6c3d: $be
    ld a, h                                       ; $6c3e: $7c
    db $e4                                        ; $6c3f: $e4
    rst $28                                       ; $6c40: $ef
    swap b                                        ; $6c41: $cb $30
    ld e, a                                       ; $6c43: $5f
    ld [hl], l                                    ; $6c44: $75
    dec hl                                        ; $6c45: $2b
    ld l, l                                       ; $6c46: $6d
    ld l, h                                       ; $6c47: $6c
    adc b                                         ; $6c48: $88
    sbc e                                         ; $6c49: $9b
    ld d, h                                       ; $6c4a: $54
    rst $08                                       ; $6c4b: $cf
    or b                                          ; $6c4c: $b0
    ei                                            ; $6c4d: $fb
    adc l                                         ; $6c4e: $8d
    inc d                                         ; $6c4f: $14
    scf                                           ; $6c50: $37

jr_043_6c51:
    ei                                            ; $6c51: $fb
    dec bc                                        ; $6c52: $0b
    sbc a                                         ; $6c53: $9f
    sbc e                                         ; $6c54: $9b
    dec d                                         ; $6c55: $15
    ld l, l                                       ; $6c56: $6d
    ld l, h                                       ; $6c57: $6c
    adc b                                         ; $6c58: $88
    sbc e                                         ; $6c59: $9b
    ld l, h                                       ; $6c5a: $6c
    db $10                                        ; $6c5b: $10
    ld l, a                                       ; $6c5c: $6f
    db $e4                                        ; $6c5d: $e4
    ld d, [hl]                                    ; $6c5e: $56
    ld l, l                                       ; $6c5f: $6d
    ld l, h                                       ; $6c60: $6c
    adc b                                         ; $6c61: $88
    sbc e                                         ; $6c62: $9b
    jr z, jr_043_6c51                             ; $6c63: $28 $ec

    adc l                                         ; $6c65: $8d
    ret nz                                        ; $6c66: $c0

    db $f4                                        ; $6c67: $f4
    ld e, b                                       ; $6c68: $58
    ld bc, $1eed                                  ; $6c69: $01 $ed $1e
    ld b, a                                       ; $6c6c: $47
    ld e, l                                       ; $6c6d: $5d
    xor d                                         ; $6c6e: $aa
    rla                                           ; $6c6f: $17
    jp z, $e210                                   ; $6c70: $ca $10 $e2

    adc l                                         ; $6c73: $8d
    jr nz, jr_043_6c81                            ; $6c74: $20 $0b

    inc l                                         ; $6c76: $2c
    push de                                       ; $6c77: $d5
    res 7, c                                      ; $6c78: $cb $b9
    adc e                                         ; $6c7a: $8b
    cp d                                          ; $6c7b: $ba
    inc d                                         ; $6c7c: $14
    scf                                           ; $6c7d: $37
    res 5, a                                      ; $6c7e: $cb $af
    sbc [hl]                                      ; $6c80: $9e

jr_043_6c81:
    inc hl                                        ; $6c81: $23
    ld e, [hl]                                    ; $6c82: $5e
    db $10                                        ; $6c83: $10
    ld l, a                                       ; $6c84: $6f
    inc b                                         ; $6c85: $04
    ld d, c                                       ; $6c86: $51
    rla                                           ; $6c87: $17
    ld a, [hl]                                    ; $6c88: $7e
    db $d3                                        ; $6c89: $d3
    db $fc                                        ; $6c8a: $fc
    ld h, b                                       ; $6c8b: $60
    add $0a                                       ; $6c8c: $c6 $0a
    db $ed                                        ; $6c8e: $ed
    rst $38                                       ; $6c8f: $ff
    or d                                          ; $6c90: $b2
    ld a, h                                       ; $6c91: $7c
    ld a, [bc]                                    ; $6c92: $0a
    ld h, e                                       ; $6c93: $63
    rst $28                                       ; $6c94: $ef
    scf                                           ; $6c95: $37
    xor h                                         ; $6c96: $ac
    ld [hl], l                                    ; $6c97: $75
    ld h, c                                       ; $6c98: $61
    jp c, Jump_000_1057                           ; $6c99: $da $57 $10

    xor h                                         ; $6c9c: $ac
    xor l                                         ; $6c9d: $ad
    ld a, [bc]                                    ; $6c9e: $0a
    sbc a                                         ; $6c9f: $9f
    ld a, [de]                                    ; $6ca0: $1a
    sbc [hl]                                      ; $6ca1: $9e
    dec d                                         ; $6ca2: $15
    ld [hl], l                                    ; $6ca3: $75
    add a                                         ; $6ca4: $87
    ld a, b                                       ; $6ca5: $78
    inc hl                                        ; $6ca6: $23

jr_043_6ca7:
    adc b                                         ; $6ca7: $88
    sbc l                                         ; $6ca8: $9d
    ld b, $81                                     ; $6ca9: $06 $81
    dec a                                         ; $6cab: $3d
    db $db                                        ; $6cac: $db
    add hl, sp                                    ; $6cad: $39
    xor h                                         ; $6cae: $ac
    ld l, l                                       ; $6caf: $6d
    reti                                          ; $6cb0: $d9


    ld c, e                                       ; $6cb1: $4b
    sub [hl]                                      ; $6cb2: $96
    ld hl, $08de                                  ; $6cb3: $21 $de $08
    ld h, d                                       ; $6cb6: $62
    and a                                         ; $6cb7: $a7
    ld b, c                                       ; $6cb8: $41
    ld h, b                                       ; $6cb9: $60
    rst $08                                       ; $6cba: $cf
    halt                                          ; $6cbb: $76
    ld c, $2b                                     ; $6cbc: $0e $2b
    ld [hl], l                                    ; $6cbe: $75
    add a                                         ; $6cbf: $87
    ld a, b                                       ; $6cc0: $78
    inc hl                                        ; $6cc1: $23
    ld [$7f4c], sp                                ; $6cc2: $08 $4c $7f
    xor $d4                                       ; $6cc5: $ee $d4
    xor a                                         ; $6cc7: $af
    ld [hl], l                                    ; $6cc8: $75
    add a                                         ; $6cc9: $87
    ld a, b                                       ; $6cca: $78
    inc hl                                        ; $6ccb: $23
    ld [$fc79], sp                                ; $6ccc: $08 $79 $fc
    push de                                       ; $6ccf: $d5
    ld [hl], l                                    ; $6cd0: $75
    cp a                                          ; $6cd1: $bf
    ld [bc], a                                    ; $6cd2: $02
    ld [hl], l                                    ; $6cd3: $75
    add a                                         ; $6cd4: $87
    ld a, b                                       ; $6cd5: $78
    inc hl                                        ; $6cd6: $23
    ret z                                         ; $6cd7: $c8

    add d                                         ; $6cd8: $82
    push hl                                       ; $6cd9: $e5
    ld sp, hl                                     ; $6cda: $f9
    ld d, a                                       ; $6cdb: $57
    ld l, l                                       ; $6cdc: $6d
    reti                                          ; $6cdd: $d9


    ld c, e                                       ; $6cde: $4b
    sub [hl]                                      ; $6cdf: $96
    ld hl, $08de                                  ; $6ce0: $21 $de $08
    or d                                          ; $6ce3: $b2
    ld h, b                                       ; $6ce4: $60
    ld a, c                                       ; $6ce5: $79
    cp $15                                        ; $6ce6: $fe $15
    xor l                                         ; $6ce8: $ad
    adc l                                         ; $6ce9: $8d
    sub l                                         ; $6cea: $95
    rst $08                                       ; $6ceb: $cf
    ld [bc], a                                    ; $6cec: $02
    set 5, l                                      ; $6ced: $cb $ed
    ld [hl], h                                    ; $6cef: $74
    ld a, e                                       ; $6cf0: $7b
    inc e                                         ; $6cf1: $1c
    ld [hl], l                                    ; $6cf2: $75
    ld e, c                                       ; $6cf3: $59
    add [hl]                                      ; $6cf4: $86
    ld a, b                                       ; $6cf5: $78
    inc hl                                        ; $6cf6: $23
    or a                                          ; $6cf7: $b7
    ld [bc], a                                    ; $6cf8: $02
    sbc [hl]                                      ; $6cf9: $9e

Jump_043_6cfa:
    cp a                                          ; $6cfa: $bf
    dec d                                         ; $6cfb: $15
    ld l, h                                       ; $6cfc: $6c
    inc b                                         ; $6cfd: $04
    ld e, c                                       ; $6cfe: $59
    ld c, $9a                                     ; $6cff: $0e $9a
    rra                                           ; $6d01: $1f
    db $e4                                        ; $6d02: $e4
    ld l, h                                       ; $6d03: $6c
    xor h                                         ; $6d04: $ac
    sbc [hl]                                      ; $6d05: $9e
    cp a                                          ; $6d06: $bf
    dec d                                         ; $6d07: $15
    ld l, h                                       ; $6d08: $6c
    inc b                                         ; $6d09: $04

Call_043_6d0a:
    add hl, sp                                    ; $6d0a: $39
    adc c                                         ; $6d0b: $89
    ld a, l                                       ; $6d0c: $7d
    add l                                         ; $6d0d: $85
    dec d                                         ; $6d0e: $15
    sbc [hl]                                      ; $6d0f: $9e

Jump_043_6d10:
    cp a                                          ; $6d10: $bf
    dec d                                         ; $6d11: $15
    ld l, h                                       ; $6d12: $6c
    inc b                                         ; $6d13: $04
    add hl, sp                                    ; $6d14: $39

Call_043_6d15:
    ret                                           ; $6d15: $c9


    jr nc, jr_043_6ca7                            ; $6d16: $30 $8f

    ld h, b                                       ; $6d18: $60
    dec b                                         ; $6d19: $05
    sbc [hl]                                      ; $6d1a: $9e
    cp a                                          ; $6d1b: $bf
    dec d                                         ; $6d1c: $15
    ld l, h                                       ; $6d1d: $6c
    inc b                                         ; $6d1e: $04
    add hl, sp                                    ; $6d1f: $39
    ret                                           ; $6d20: $c9


    sbc e                                         ; $6d21: $9b
    ld b, $e1                                     ; $6d22: $06 $e1
    ld e, c                                       ; $6d24: $59
    ld bc, $bf9e                                  ; $6d25: $01 $9e $bf
    dec d                                         ; $6d28: $15
    ld l, h                                       ; $6d29: $6c
    inc b                                         ; $6d2a: $04
    ld a, c                                       ; $6d2b: $79
    jp z, Jump_043_5763                           ; $6d2c: $ca $63 $57

    and c                                         ; $6d2f: $a1
    ldh a, [$0b]                                  ; $6d30: $f0 $0b
    ld h, e                                       ; $6d32: $63
    dec b                                         ; $6d33: $05
    db $ed                                        ; $6d34: $ed
    sbc l                                         ; $6d35: $9d
    sbc $26                                       ; $6d36: $de $26
    ld [$e272], a                                 ; $6d38: $ea $72 $e2
    ld e, [hl]                                    ; $6d3b: $5e
    jr @-$19                                      ; $6d3c: $18 $e5

    xor d                                         ; $6d3e: $aa

Jump_043_6d3f:
    ld e, e                                       ; $6d3f: $5b
    ld bc, $9ded                                  ; $6d40: $01 $ed $9d
    sbc $2e                                       ; $6d43: $de $2e
    ld [$28c2], a                                 ; $6d45: $ea $c2 $28
    inc a                                         ; $6d48: $3c
    dec hl                                        ; $6d49: $2b
    ld l, l                                       ; $6d4a: $6d
    adc $be                                       ; $6d4b: $ce $be
    ld c, c                                       ; $6d4d: $49
    rst $00                                       ; $6d4e: $c7
    halt                                          ; $6d4f: $76
    srl [hl]                                      ; $6d50: $cb $3e
    ld b, a                                       ; $6d52: $47
    rrc d                                         ; $6d53: $cb $0a
    ld l, l                                       ; $6d55: $6d
    adc $be                                       ; $6d56: $ce $be
    ld c, c                                       ; $6d58: $49
    ei                                            ; $6d59: $fb
    xor a                                         ; $6d5a: $af

jr_043_6d5b:
    db $dd                                        ; $6d5b: $dd
    ld a, [bc]                                    ; $6d5c: $0a
    dec e                                         ; $6d5d: $1d
    jp nc, Jump_000_3057                          ; $6d5e: $d2 $57 $30

    sbc c                                         ; $6d61: $99
    dec d                                         ; $6d62: $15
    db $ed                                        ; $6d63: $ed
    sbc l                                         ; $6d64: $9d
    sbc $26                                       ; $6d65: $de $26
    ld [$fd52], a                                 ; $6d67: $ea $52 $fd
    add [hl]                                      ; $6d6a: $86
    ld a, [hl-]                                   ; $6d6b: $3a
    ld [c], a                                     ; $6d6c: $e2
    adc l                                         ; $6d6d: $8d
    call c, $ad0a                                 ; $6d6e: $dc $0a $ad
    cp l                                          ; $6d71: $bd
    ld [hl], e                                    ; $6d72: $73
    ld a, [hl]                                    ; $6d73: $7e
    jr nc, jr_043_6df5                            ; $6d74: $30 $7f

    call nc, $f6a5                                ; $6d76: $d4 $a5 $f6
    sbc e                                         ; $6d79: $9b
    ld de, $0158                                  ; $6d7a: $11 $58 $01
    db $ed                                        ; $6d7d: $ed
    cp a                                          ; $6d7e: $bf
    sbc h                                         ; $6d7f: $9c
    sbc e                                         ; $6d80: $9b
    xor b                                         ; $6d81: $a8
    ld c, e                                       ; $6d82: $4b
    ld [hl], c                                    ; $6d83: $71
    or e                                          ; $6d84: $b3
    ld a, h                                       ; $6d85: $7c
    ld h, h                                       ; $6d86: $64

Call_043_6d87:
    xor h                                         ; $6d87: $ac
    ld a, [$158d]                                 ; $6d88: $fa $8d $15
    sbc [hl]                                      ; $6d8b: $9e
    ld d, e                                       ; $6d8c: $53
    add c                                         ; $6d8d: $81
    db $d3                                        ; $6d8e: $d3
    ld h, h                                       ; $6d8f: $64
    or e                                          ; $6d90: $b3
    adc l                                         ; $6d91: $8d
    xor a                                         ; $6d92: $af
    cp [hl]                                       ; $6d93: $be
    adc h                                         ; $6d94: $8c
    cp l                                          ; $6d95: $bd
    ccf                                           ; $6d96: $3f
    xor $15                                       ; $6d97: $ee $15
    add h                                         ; $6d99: $84
    or c                                          ; $6d9a: $b1
    ld [bc], a                                    ; $6d9b: $02
    ld [hl], l                                    ; $6d9c: $75

jr_043_6d9d:
    xor [hl]                                      ; $6d9d: $ae
    jp nc, $92d3                                  ; $6d9e: $d2 $d3 $92

    ld h, $1b                                     ; $6da1: $26 $1b
    ld l, a                                       ; $6da3: $6f
    cp h                                          ; $6da4: $bc
    pop af                                        ; $6da5: $f1
    dec d                                         ; $6da6: $15
    dec e                                         ; $6da7: $1d
    cp l                                          ; $6da8: $bd
    ld a, [hl-]                                   ; $6da9: $3a
    add a                                         ; $6daa: $87
    xor b                                         ; $6dab: $a8
    rl a                                          ; $6dac: $cb $17
    rst $28                                       ; $6dae: $ef
    jr z, jr_043_6d9d                             ; $6daf: $28 $ec

    ld e, c                                       ; $6db1: $59
    ld bc, $7e75                                  ; $6db2: $01 $75 $7e
    pop bc                                        ; $6db5: $c1
    sbc $b4                                       ; $6db6: $de $b4
    xor h                                         ; $6db8: $ac
    dec e                                         ; $6db9: $1d
    jr jr_043_6d5b                                ; $6dba: $18 $9f

    di                                            ; $6dbc: $f3
    inc hl                                        ; $6dbd: $23
    dec b                                         ; $6dbe: $05
    adc $f9                                       ; $6dbf: $ce $f9
    or c                                          ; $6dc1: $b1
    ld [bc], a                                    ; $6dc2: $02
    xor l                                         ; $6dc3: $ad
    rra                                           ; $6dc4: $1f
    di                                            ; $6dc5: $f3
    ld d, a                                       ; $6dc6: $57
    or e                                          ; $6dc7: $b3
    ld [bc], a                                    ; $6dc8: $02
    xor l                                         ; $6dc9: $ad
    ld a, [de]                                    ; $6dca: $1a
    and e                                         ; $6dcb: $a3
    cp d                                          ; $6dcc: $ba
    ld [hl], d                                    ; $6dcd: $72
    cp a                                          ; $6dce: $bf
    ld [bc], a                                    ; $6dcf: $02
    dec e                                         ; $6dd0: $1d
    cp l                                          ; $6dd1: $bd
    ld a, [hl-]                                   ; $6dd2: $3a
    add a                                         ; $6dd3: $87
    xor b                                         ; $6dd4: $a8
    ld c, e                                       ; $6dd5: $4b
    push af                                       ; $6dd6: $f5
    and d                                         ; $6dd7: $a2
    db $ec                                        ; $6dd8: $ec
    or l                                          ; $6dd9: $b5
    reti                                          ; $6dda: $d9


    cp a                                          ; $6ddb: $bf
    ld [bc], a                                    ; $6ddc: $02
    ld [hl], l                                    ; $6ddd: $75
    or c                                          ; $6dde: $b1
    scf                                           ; $6ddf: $37
    and d                                         ; $6de0: $a2
    ld l, $6d                                     ; $6de1: $2e $6d
    sbc l                                         ; $6de3: $9d
    db $dd                                        ; $6de4: $dd
    ld a, [hl]                                    ; $6de5: $7e
    rst $20                                       ; $6de6: $e7
    ld h, [hl]                                    ; $6de7: $66
    dec b                                         ; $6de8: $05
    xor l                                         ; $6de9: $ad
    ld a, [hl-]                                   ; $6dea: $3a

jr_043_6deb:
    cp d                                          ; $6deb: $ba
    ld [hl], c                                    ; $6dec: $71
    ld d, c                                       ; $6ded: $51
    sub a                                         ; $6dee: $97
    ld h, l                                       ; $6def: $65
    call z, Call_043_594d                         ; $6df0: $cc $4d $59
    ld c, [hl]                                    ; $6df3: $4e
    ld h, [hl]                                    ; $6df4: $66

jr_043_6df5:
    dec b                                         ; $6df5: $05
    ld [hl], l                                    ; $6df6: $75
    ld h, a                                       ; $6df7: $67
    sub e                                         ; $6df8: $93
    jr nc, jr_043_6e3f                            ; $6df9: $30 $44

    ld e, l                                       ; $6dfb: $5d
    sub [hl]                                      ; $6dfc: $96
    dec de                                        ; $6dfd: $1b
    jp nc, $057e                                  ; $6dfe: $d2 $7e $05

    dec e                                         ; $6e01: $1d
    jr c, jr_043_6deb                             ; $6e02: $38 $e7

    cp a                                          ; $6e04: $bf
    xor b                                         ; $6e05: $a8
    adc e                                         ; $6e06: $8b
    sbc e                                         ; $6e07: $9b
    adc l                                         ; $6e08: $8d
    ld h, c                                       ; $6e09: $61
    add [hl]                                      ; $6e0a: $86
    call $9e0a                                    ; $6e0b: $cd $0a $9e
    ld h, e                                       ; $6e0e: $63
    ld [hl-], a                                   ; $6e0f: $32
    ld d, c                                       ; $6e10: $51
    rla                                           ; $6e11: $17
    db $fd                                        ; $6e12: $fd
    cp c                                          ; $6e13: $b9
    ld sp, $1599                                  ; $6e14: $31 $99 $15
    ld e, l                                       ; $6e17: $5d
    cp [hl]                                       ; $6e18: $be
    ld [$2ea2], sp                                ; $6e19: $08 $a2 $2e
    dec b                                         ; $6e1c: $05
    or [hl]                                       ; $6e1d: $b6
    ld b, b                                       ; $6e1e: $40
    jr jr_043_6e4c                                ; $6e1f: $18 $2b

    ld [hl], l                                    ; $6e21: $75
    rrca                                          ; $6e22: $0f
    ld l, h                                       ; $6e23: $6c
    rra                                           ; $6e24: $1f
    dec a                                         ; $6e25: $3d
    adc b                                         ; $6e26: $88
    di                                            ; $6e27: $f3
    or [hl]                                       ; $6e28: $b6
    ld [bc], a                                    ; $6e29: $02
    sbc [hl]                                      ; $6e2a: $9e
    ld h, e                                       ; $6e2b: $63
    ld [hl-], a                                   ; $6e2c: $32
    ld d, c                                       ; $6e2d: $51
    rla                                           ; $6e2e: $17
    ld a, [hl+]                                   ; $6e2f: $2a
    rst $20                                       ; $6e30: $e7
    add $64                                       ; $6e31: $c6 $64
    ld [hl], d                                    ; $6e33: $72
    sub d                                         ; $6e34: $92
    scf                                           ; $6e35: $37
    dec c                                         ; $6e36: $0d
    jp nz, $02b3                                  ; $6e37: $c2 $b3 $02

    db $ed                                        ; $6e3a: $ed
    ld de, $e370                                  ; $6e3b: $11 $70 $e3
    ld a, b                                       ; $6e3e: $78

jr_043_6e3f:
    add h                                         ; $6e3f: $84
    ld d, [hl]                                    ; $6e40: $56
    dec hl                                        ; $6e41: $2b
    xor l                                         ; $6e42: $ad
    cp d                                          ; $6e43: $ba
    sub c                                         ; $6e44: $91
    db $e3                                        ; $6e45: $e3
    ld e, c                                       ; $6e46: $59
    ld bc, $531d                                  ; $6e47: $01 $1d $53
    and $d3                                       ; $6e4a: $e6 $d3

jr_043_6e4c:
    ld l, b                                       ; $6e4c: $68
    pop hl                                        ; $6e4d: $e1
    ld c, e                                       ; $6e4e: $4b
    inc hl                                        ; $6e4f: $23
    ld l, c                                       ; $6e50: $69
    ld h, d                                       ; $6e51: $62
    dec b                                         ; $6e52: $05
    sbc [hl]                                      ; $6e53: $9e
    scf                                           ; $6e54: $37
    adc $8d                                       ; $6e55: $ce $8d
    cp l                                          ; $6e57: $bd
    ld h, b                                       ; $6e58: $60
    dec b                                         ; $6e59: $05
    ld l, l                                       ; $6e5a: $6d
    ld c, l                                       ; $6e5b: $4d
    ld d, l                                       ; $6e5c: $55
    ld hl, $cdad                                  ; $6e5d: $21 $ad $cd
    sbc $48                                       ; $6e60: $de $48
    ld l, e                                       ; $6e62: $6b
    or e                                          ; $6e63: $b3
    scf                                           ; $6e64: $37
    add h                                         ; $6e65: $84
    ld l, a                                       ; $6e66: $6f
    dec b                                         ; $6e67: $05
    ld e, l                                       ; $6e68: $5d
    ld d, d                                       ; $6e69: $52
    rst $20                                       ; $6e6a: $e7
    add [hl]                                      ; $6e6b: $86
    ld sp, hl                                     ; $6e6c: $f9
    and d                                         ; $6e6d: $a2
    ld l, $44                                     ; $6e6e: $2e $44
    ld [$afdc], a                                 ; $6e70: $ea $dc $af
    sbc [hl]                                      ; $6e73: $9e
    cp a                                          ; $6e74: $bf
    dec d                                         ; $6e75: $15
    ld l, h                                       ; $6e76: $6c
    sbc b                                         ; $6e77: $98
    ld l, a                                       ; $6e78: $6f
    dec b                                         ; $6e79: $05
    xor l                                         ; $6e7a: $ad
    cp l                                          ; $6e7b: $bd
    ld [hl], e                                    ; $6e7c: $73
    ld a, [hl]                                    ; $6e7d: $7e

jr_043_6e7e:
    jr nc, jr_043_6ea3                            ; $6e7e: $30 $23

    ld [$ded2], a                                 ; $6e80: $ea $d2 $de
    ld sp, hl                                     ; $6e83: $f9
    ret nc                                        ; $6e84: $d0

    or e                                          ; $6e85: $b3
    inc hl                                        ; $6e86: $23
    sbc $af                                       ; $6e87: $de $af
    ld l, l                                       ; $6e89: $6d
    jr z, jr_043_6e7e                             ; $6e8a: $28 $f2

    inc [hl]                                      ; $6e8c: $34
    ld h, h                                       ; $6e8d: $64
    ld a, a                                       ; $6e8e: $7f
    call c, Call_043_6091                         ; $6e8f: $dc $91 $60
    cp $15                                        ; $6e92: $fe $15
    ld [hl], l                                    ; $6e94: $75
    cp a                                          ; $6e95: $bf
    sub h                                         ; $6e96: $94
    inc l                                         ; $6e97: $2c
    or b                                          ; $6e98: $b0
    or h                                          ; $6e99: $b4
    ld a, [hl]                                    ; $6e9a: $7e
    xor a                                         ; $6e9b: $af
    adc l                                         ; $6e9c: $8d
    and h                                         ; $6e9d: $a4
    push de                                       ; $6e9e: $d5
    cp l                                          ; $6e9f: $bd
    ld b, c                                       ; $6ea0: $41
    ld h, b                                       ; $6ea1: $60
    dec b                                         ; $6ea2: $05

jr_043_6ea3:
    sbc [hl]                                      ; $6ea3: $9e
    inc hl                                        ; $6ea4: $23
    and a                                         ; $6ea5: $a7
    db $ed                                        ; $6ea6: $ed
    sbc e                                         ; $6ea7: $9b
    cp b                                          ; $6ea8: $b8
    reti                                          ; $6ea9: $d9


    ld h, e                                       ; $6eaa: $63
    ld e, c                                       ; $6eab: $59
    add $96                                       ; $6eac: $c6 $96
    or c                                          ; $6eae: $b1
    ld e, a                                       ; $6eaf: $5f
    ld bc, $7f75                                  ; $6eb0: $01 $75 $7f
    add e                                         ; $6eb3: $83
    ld sp, hl                                     ; $6eb4: $f9
    ld d, a                                       ; $6eb5: $57
    sbc [hl]                                      ; $6eb6: $9e
    ld l, a                                       ; $6eb7: $6f
    ld a, [$ac11]                                 ; $6eb8: $fa $11 $ac
    ld d, h                                       ; $6ebb: $54
    ld a, $da                                     ; $6ebc: $3e $da
    rst $28                                       ; $6ebe: $ef
    ld a, l                                       ; $6ebf: $7d
    ld a, [c]                                     ; $6ec0: $f2
    dec hl                                        ; $6ec1: $2b
    ld [hl], l                                    ; $6ec2: $75
    adc a                                         ; $6ec3: $8f
    ld d, [hl]                                    ; $6ec4: $56
    rra                                           ; $6ec5: $1f
    ld [hl], l                                    ; $6ec6: $75
    add hl, hl                                    ; $6ec7: $29
    ld l, h                                       ; $6ec8: $6c
    sub h                                         ; $6ec9: $94
    ld c, b                                       ; $6eca: $48
    sbc h                                         ; $6ecb: $9c
    dec d                                         ; $6ecc: $15
    cp [hl]                                       ; $6ecd: $be
    set 3, e                                      ; $6ece: $cb $db
    scf                                           ; $6ed0: $37
    ld e, d                                       ; $6ed1: $5a
    jr jr_043_6f4f                                ; $6ed2: $18 $7b

    inc hl                                        ; $6ed4: $23
    sbc $db                                       ; $6ed5: $de $db
    cpl                                           ; $6ed7: $2f
    ld a, h                                       ; $6ed8: $7c
    dec hl                                        ; $6ed9: $2b
    db $ed                                        ; $6eda: $ed
    ld a, l                                       ; $6edb: $7d
    jp c, $227a                                   ; $6edc: $da $7a $22

    ld de, $1fcc                                  ; $6edf: $11 $cc $1f
    add l                                         ; $6ee2: $85
    sbc l                                         ; $6ee3: $9d
    cp d                                          ; $6ee4: $ba
    ld [hl], $5e                                  ; $6ee5: $36 $5e
    ldh a, [$af]                                  ; $6ee7: $f0 $af
    sbc [hl]                                      ; $6ee9: $9e
    or $e4                                        ; $6eea: $f6 $e4
    inc sp                                        ; $6eec: $33
    ld a, a                                       ; $6eed: $7f
    inc d                                         ; $6eee: $14
    or $f6                                        ; $6eef: $f6 $f6
    and b                                         ; $6ef1: $a0
    ld [hl], d                                    ; $6ef2: $72
    sbc $b1                                       ; $6ef3: $de $b1
    ld a, [bc]                                    ; $6ef5: $0a
    dec hl                                        ; $6ef6: $2b
    db $ed                                        ; $6ef7: $ed
    ld e, $67                                     ; $6ef8: $1e $67
    add c                                         ; $6efa: $81
    ld h, l                                       ; $6efb: $65
    inc hl                                        ; $6efc: $23
    inc h                                         ; $6efd: $24
    call z, $f3a8                                 ; $6efe: $cc $a8 $f3
    ld h, e                                       ; $6f01: $63
    dec b                                         ; $6f02: $05
    db $ed                                        ; $6f03: $ed
    adc a                                         ; $6f04: $8f
    add b                                         ; $6f05: $80
    ccf                                           ; $6f06: $3f
    ld [$8153], a                                 ; $6f07: $ea $53 $81
    ld c, b                                       ; $6f0a: $48
    db $fc                                        ; $6f0b: $fc
    inc d                                         ; $6f0c: $14
    add [hl]                                      ; $6f0d: $86
    db $ed                                        ; $6f0e: $ed
    sub e                                         ; $6f0f: $93
    ld e, a                                       ; $6f10: $5f
    ld bc, $7f75                                  ; $6f11: $01 $75 $7f
    rst $28                                       ; $6f14: $ef
    ld de, $7277                                  ; $6f15: $11 $77 $72
    reti                                          ; $6f18: $d9


    or h                                          ; $6f19: $b4
    ld a, [hl-]                                   ; $6f1a: $3a
    sbc c                                         ; $6f1b: $99
    ld [hl], d                                    ; $6f1c: $72
    dec hl                                        ; $6f1d: $2b
    dec e                                         ; $6f1e: $1d
    ld b, c                                       ; $6f1f: $41
    ei                                            ; $6f20: $fb
    dec a                                         ; $6f21: $3d
    ld d, c                                       ; $6f22: $51
    rla                                           ; $6f23: $17
    ld a, c                                       ; $6f24: $79
    cp $8d                                        ; $6f25: $fe $8d
    dec d                                         ; $6f27: $15
    dec e                                         ; $6f28: $1d
    ld d, h                                       ; $6f29: $54
    ld a, d                                       ; $6f2a: $7a
    jp $13de                                      ; $6f2b: $c3 $de $13


    ld [hl], l                                    ; $6f2e: $75
    xor c                                         ; $6f2f: $a9
    db $fd                                        ; $6f30: $fd
    sbc d                                         ; $6f31: $9a
    sbc l                                         ; $6f32: $9d
    ld e, d                                       ; $6f33: $5a
    ld bc, $0f75                                  ; $6f34: $01 $75 $0f
    ld l, h                                       ; $6f37: $6c
    sbc a                                         ; $6f38: $9f
    ld [hl], $6f                                  ; $6f39: $36 $6f
    ld c, a                                       ; $6f3b: $4f
    add hl, de                                    ; $6f3c: $19
    rst $28                                       ; $6f3d: $ef
    ld l, a                                       ; $6f3e: $6f
    xor h                                         ; $6f3f: $ac
    dec e                                         ; $6f40: $1d
    sbc l                                         ; $6f41: $9d
    dec de                                        ; $6f42: $1b
    ld d, e                                       ; $6f43: $53
    ret c                                         ; $6f44: $d8

    ei                                            ; $6f45: $fb
    ld d, a                                       ; $6f46: $57

Jump_043_6f47:
    ld l, l                                       ; $6f47: $6d
    adc b                                         ; $6f48: $88
    dec sp                                        ; $6f49: $3b
    or a                                          ; $6f4a: $b7
    ld h, a                                       ; $6f4b: $67
    add c                                         ; $6f4c: $81
    cp d                                          ; $6f4d: $ba
    adc a                                         ; $6f4e: $8f

jr_043_6f4f:
    add d                                         ; $6f4f: $82
    or [hl]                                       ; $6f50: $b6
    cpl                                           ; $6f51: $2f
    daa                                           ; $6f52: $27
    sbc d                                         ; $6f53: $9a
    ld b, c                                       ; $6f54: $41
    dec e                                         ; $6f55: $1d
    add h                                         ; $6f56: $84
    ld l, a                                       ; $6f57: $6f
    dec b                                         ; $6f58: $05
    ld l, l                                       ; $6f59: $6d
    xor $a7                                       ; $6f5a: $ee $a7
    inc a                                         ; $6f5c: $3c
    dec hl                                        ; $6f5d: $2b
    sbc [hl]                                      ; $6f5e: $9e
    cp $7b                                        ; $6f5f: $fe $7b
    ld [de], a                                    ; $6f61: $12
    ld sp, hl                                     ; $6f62: $f9
    db $fd                                        ; $6f63: $fd
    db $fc                                        ; $6f64: $fc
    dec hl                                        ; $6f65: $2b
    ld l, l                                       ; $6f66: $6d
    cp $76                                        ; $6f67: $fe $76
    or a                                          ; $6f69: $b7
    ld [bc], a                                    ; $6f6a: $02
    cp [hl]                                       ; $6f6b: $be
    xor $84                                       ; $6f6c: $ee $84
    ld l, a                                       ; $6f6e: $6f
    rst $28                                       ; $6f6f: $ef
    adc a                                         ; $6f70: $8f

jr_043_6f71:
    ld b, [hl]                                    ; $6f71: $46
    rst $18                                       ; $6f72: $df
    adc [hl]                                      ; $6f73: $8e
    db $ed                                        ; $6f74: $ed
    inc e                                         ; $6f75: $1c
    ld d, [hl]                                    ; $6f76: $56
    db $ed                                        ; $6f77: $ed
    cp a                                          ; $6f78: $bf
    jr nc, jr_043_6f71                            ; $6f79: $30 $f6

    sbc [hl]                                      ; $6f7b: $9e
    jr c, jr_043_6fbd                             ; $6f7c: $38 $3f

    ld h, d                                       ; $6f7e: $62
    db $10                                        ; $6f7f: $10
    add l                                         ; $6f80: $85
    sbc h                                         ; $6f81: $9c
    sub b                                         ; $6f82: $90
    ld d, a                                       ; $6f83: $57
    ld c, [hl]                                    ; $6f84: $4e
    ld a, a                                       ; $6f85: $7f
    ei                                            ; $6f86: $fb
    ld d, [hl]                                    ; $6f87: $56
    sbc [hl]                                      ; $6f88: $9e
    ld d, e                                       ; $6f89: $53
    jp hl                                         ; $6f8a: $e9


    ld c, a                                       ; $6f8b: $4f
    sbc [hl]                                      ; $6f8c: $9e
    ld a, b                                       ; $6f8d: $78
    inc hl                                        ; $6f8e: $23
    adc b                                         ; $6f8f: $88
    cp d                                          ; $6f90: $ba
    ld a, b                                       ; $6f91: $78
    ld c, a                                       ; $6f92: $4f
    and e                                         ; $6f93: $a3
    halt                                          ; $6f94: $76
    add d                                         ; $6f95: $82
    dec d                                         ; $6f96: $15
    ld [hl], l                                    ; $6f97: $75
    ld b, [hl]                                    ; $6f98: $46
    ld [c], a                                     ; $6f99: $e2
    rst $38                                       ; $6f9a: $ff
    bit 5, b                                      ; $6f9b: $cb $68
    ld a, [de]                                    ; $6f9d: $1a
    sbc b                                         ; $6f9e: $98
    xor a                                         ; $6f9f: $af
    and $0a                                       ; $6fa0: $e6 $0a
    ld l, l                                       ; $6fa2: $6d
    sbc [hl]                                      ; $6fa3: $9e
    ld b, [hl]                                    ; $6fa4: $46
    db $ed                                        ; $6fa5: $ed
    db $e4                                        ; $6fa6: $e4
    and e                                         ; $6fa7: $a3
    ld l, $be                                     ; $6fa8: $2e $be
    ld l, h                                       ; $6faa: $6c
    ret nc                                        ; $6fab: $d0

    db $fc                                        ; $6fac: $fc
    ld [$bd52], sp                                ; $6fad: $08 $52 $bd
    and $bf                                       ; $6fb0: $e6 $bf
    ld a, b                                       ; $6fb2: $78
    cp a                                          ; $6fb3: $bf
    sbc d                                         ; $6fb4: $9a
    ld [hl], d                                    ; $6fb5: $72
    dec hl                                        ; $6fb6: $2b
    sbc l                                         ; $6fb7: $9d
    jp nc, $d0b9                                  ; $6fb8: $d2 $b9 $d0

    ld a, [c]                                     ; $6fbb: $f2
    add [hl]                                      ; $6fbc: $86

jr_043_6fbd:
    ld hl, sp+$50                                 ; $6fbd: $f8 $50
    inc d                                         ; $6fbf: $14
    sbc [hl]                                      ; $6fc0: $9e
    adc h                                         ; $6fc1: $8c
    and [hl]                                      ; $6fc2: $a6
    add c                                         ; $6fc3: $81
    ld a, c                                       ; $6fc4: $79
    ld l, d                                       ; $6fc5: $6a
    xor l                                         ; $6fc6: $ad
    db $dd                                        ; $6fc7: $dd
    or a                                          ; $6fc8: $b7
    jp nc, $5644                                  ; $6fc9: $d2 $44 $56

    ld [hl], l                                    ; $6fcc: $75
    ld b, [hl]                                    ; $6fcd: $46
    ld d, d                                       ; $6fce: $52
    xor b                                         ; $6fcf: $a8
    ld [hl], e                                    ; $6fd0: $73
    ld d, b                                       ; $6fd1: $50
    adc b                                         ; $6fd2: $88
    inc e                                         ; $6fd3: $1c
    add h                                         ; $6fd4: $84
    ld d, c                                       ; $6fd5: $51
    ld [hl], e                                    ; $6fd6: $73
    dec b                                         ; $6fd7: $05
    ld [hl], l                                    ; $6fd8: $75
    ld b, [hl]                                    ; $6fd9: $46
    or d                                          ; $6fda: $b2
    ret nc                                        ; $6fdb: $d0

    cp c                                          ; $6fdc: $b9
    ret nc                                        ; $6fdd: $d0

    ld a, [c]                                     ; $6fde: $f2
    or [hl]                                       ; $6fdf: $b6
    daa                                           ; $6fe0: $27
    xor a                                         ; $6fe1: $af
    ld d, b                                       ; $6fe2: $50
    jp z, Jump_043_5cd4                           ; $6fe3: $ca $d4 $5c

    ld bc, $0d75                                  ; $6fe6: $01 $75 $0d

Jump_043_6fe9:
    push de                                       ; $6fe9: $d5
    add l                                         ; $6fea: $85
    ld c, d                                       ; $6feb: $4a
    ld d, $ba                                     ; $6fec: $16 $ba
    rrc e                                         ; $6fee: $cb $0b
    inc hl                                        ; $6ff0: $23
    dec bc                                        ; $6ff1: $0b
    inc l                                         ; $6ff2: $2c
    ld l, [hl]                                    ; $6ff3: $6e
    add h                                         ; $6ff4: $84
    ld c, a                                       ; $6ff5: $4f
    add sp, $1b                                   ; $6ff6: $e8 $1b
    ld d, [hl]                                    ; $6ff8: $56
    or l                                          ; $6ff9: $b5
    rst $18                                       ; $6ffa: $df
    adc h                                         ; $6ffb: $8c
    ld b, b                                       ; $6ffc: $40
    inc c                                         ; $6ffd: $0c
    adc [hl]                                      ; $6ffe: $8e
    ld l, $b0                                     ; $6fff: $2e $b0
    ld c, a                                       ; $7001: $4f
    dec hl                                        ; $7002: $2b
    ld c, l                                       ; $7003: $4d
    and h                                         ; $7004: $a4
    ld l, $15                                     ; $7005: $2e $15
    sbc [hl]                                      ; $7007: $9e
    add $2e                                       ; $7008: $c6 $2e
    dec e                                         ; $700a: $1d
    and c                                         ; $700b: $a1
    ld e, h                                       ; $700c: $5c
    ld h, c                                       ; $700d: $61
    ld [$fbf1], sp                                ; $700e: $08 $f1 $fb
    dec d                                         ; $7011: $15
    or l                                          ; $7012: $b5
    rst $18                                       ; $7013: $df
    adc h                                         ; $7014: $8c
    ld b, b                                       ; $7015: $40
    inc c                                         ; $7016: $0c
    adc [hl]                                      ; $7017: $8e
    ld l, $b0                                     ; $7018: $2e $b0
    ld c, a                                       ; $701a: $4f
    dec hl                                        ; $701b: $2b
    ld c, l                                       ; $701c: $4d
    and h                                         ; $701d: $a4
    ld l, $15                                     ; $701e: $2e $15
    sbc [hl]                                      ; $7020: $9e
    add $2e                                       ; $7021: $c6 $2e
    db $ed                                        ; $7023: $ed
    cp a                                          ; $7024: $bf
    halt                                          ; $7025: $76
    xor $fa                                       ; $7026: $ee $fa
    dec d                                         ; $7028: $15
    cp [hl]                                       ; $7029: $be
    xor b                                         ; $702a: $a8
    db $f4                                        ; $702b: $f4
    or $71                                        ; $702c: $f6 $71
    ld a, [hl]                                    ; $702e: $7e
    ld b, h                                       ; $702f: $44
    ld b, [hl]                                    ; $7030: $46
    or d                                          ; $7031: $b2
    ret nz                                        ; $7032: $c0

    call nc, $faa7                                ; $7033: $d4 $a7 $fa
    set 5, l                                      ; $7036: $cb $ed
    ld l, b                                       ; $7038: $68
    or h                                          ; $7039: $b4
    ldh a, [$d4]                                  ; $703a: $f0 $d4
    ld c, h                                       ; $703c: $4c
    ld a, [de]                                    ; $703d: $1a
    ld l, d                                       ; $703e: $6a
    and h                                         ; $703f: $a4
    sub l                                         ; $7040: $95
    ld h, $52                                     ; $7041: $26 $52
    or a                                          ; $7043: $b7
    and e                                         ; $7044: $a3
    add [hl]                                      ; $7045: $86
    ld d, a                                       ; $7046: $57
    db $ed                                        ; $7047: $ed
    ld b, e                                       ; $7048: $43
    db $db                                        ; $7049: $db
    scf                                           ; $704a: $37
    ld d, c                                       ; $704b: $51
    rla                                           ; $704c: $17
    ld a, [hl+]                                   ; $704d: $2a
    rra                                           ; $704e: $1f
    ld e, $e3                                     ; $704f: $1e $e3
    adc a                                         ; $7051: $8f
    cp d                                          ; $7052: $ba
    db $10                                        ; $7053: $10
    xor c                                         ; $7054: $a9
    ld [hl], e                                    ; $7055: $73
    ld e, a                                       ; $7056: $5f
    inc sp                                        ; $7057: $33
    ld l, c                                       ; $7058: $69
    xor b                                         ; $7059: $a8
    sub c                                         ; $705a: $91
    ld d, [hl]                                    ; $705b: $56
    sbc d                                         ; $705c: $9a
    ld c, b                                       ; $705d: $48
    db $dd                                        ; $705e: $dd
    adc [hl]                                      ; $705f: $8e
    ld a, [de]                                    ; $7060: $1a
    ld e, [hl]                                    ; $7061: $5e
    ld bc, $7e9e                                  ; $7062: $01 $9e $7e
    ld b, h                                       ; $7065: $44
    ld c, a                                       ; $7066: $4f
    ld b, a                                       ; $7067: $47
    ld e, [hl]                                    ; $7068: $5e
    rla                                           ; $7069: $17
    ld [hl], d                                    ; $706a: $72
    or h                                          ; $706b: $b4
    ld a, l                                       ; $706c: $7d
    inc de                                        ; $706d: $13
    adc l                                         ; $706e: $8d
    ld d, $7e                                     ; $706f: $16 $7e
    xor e                                         ; $7071: $ab
    or b                                          ; $7072: $b0
    ccf                                           ; $7073: $3f
    sbc $93                                       ; $7074: $de $93
    ret                                           ; $7076: $c9


    rst $28                                       ; $7077: $ef
    db $fd                                        ; $7078: $fd
    pop af                                        ; $7079: $f1
    sbc [hl]                                      ; $707a: $9e
    and b                                         ; $707b: $a0
    ld h, [hl]                                    ; $707c: $66
    jp nc, $2350                                  ; $707d: $d2 $50 $23

    xor l                                         ; $7080: $ad
    inc [hl]                                      ; $7081: $34
    sub c                                         ; $7082: $91
    cp d                                          ; $7083: $ba
    dec e                                         ; $7084: $1d
    dec [hl]                                      ; $7085: $35
    cp h                                          ; $7086: $bc
    ld [bc], a                                    ; $7087: $02
    or l                                          ; $7088: $b5
    ccf                                           ; $7089: $3f
    ld d, h                                       ; $708a: $54
    ld d, d                                       ; $708b: $52
    ld a, [hl]                                    ; $708c: $7e
    add hl, de                                    ; $708d: $19
    ld b, e                                       ; $708e: $43
    ld c, [hl]                                    ; $708f: $4e
    call c, $830b                                 ; $7090: $dc $0b $83
    sbc h                                         ; $7093: $9c
    adc l                                         ; $7094: $8d
    sbc d                                         ; $7095: $9a
    ld c, c                                       ; $7096: $49
    ld b, e                                       ; $7097: $43
    adc l                                         ; $7098: $8d
    or h                                          ; $7099: $b4
    jp nc, $ea44                                  ; $709a: $d2 $44 $ea

    halt                                          ; $709d: $76
    call nc, $0af0                                ; $709e: $d4 $f0 $0a
    db $ed                                        ; $70a1: $ed
    rst $38                                       ; $70a2: $ff
    push hl                                       ; $70a3: $e5
    ld c, e                                       ; $70a4: $4b
    ld a, c                                       ; $70a5: $79
    ld c, l                                       ; $70a6: $4d
    cp e                                          ; $70a7: $bb
    rst $20                                       ; $70a8: $e7
    adc c                                         ; $70a9: $89
    inc e                                         ; $70aa: $1c
    add h                                         ; $70ab: $84
    ld de, $7175                                  ; $70ac: $11 $75 $71
    ld d, e                                       ; $70af: $53
    ld [$9e8b], a                                 ; $70b0: $ea $8b $9e
    adc [hl]                                      ; $70b3: $8e
    ld c, h                                       ; $70b4: $4c
    call $d434                                    ; $70b5: $cd $34 $d4
    ld c, b                                       ; $70b8: $48
    dec hl                                        ; $70b9: $2b
    ld c, l                                       ; $70ba: $4d
    and h                                         ; $70bb: $a4
    ld l, [hl]                                    ; $70bc: $6e
    ld b, a                                       ; $70bd: $47
    dec c                                         ; $70be: $0d
    xor a                                         ; $70bf: $af
    db $ed                                        ; $70c0: $ed
    rst $38                                       ; $70c1: $ff
    push hl                                       ; $70c2: $e5
    ld c, e                                       ; $70c3: $4b
    ld a, c                                       ; $70c4: $79
    ld c, l                                       ; $70c5: $4d
    cp e                                          ; $70c6: $bb
    rst $20                                       ; $70c7: $e7
    adc c                                         ; $70c8: $89
    inc e                                         ; $70c9: $1c
    add h                                         ; $70ca: $84
    ld de, $7175                                  ; $70cb: $11 $75 $71
    ld d, e                                       ; $70ce: $53
    ld [$9e8b], a                                 ; $70cf: $ea $8b $9e
    adc [hl]                                      ; $70d2: $8e
    ld c, h                                       ; $70d3: $4c
    call $d434                                    ; $70d4: $cd $34 $d4
    ld c, b                                       ; $70d7: $48
    dec hl                                        ; $70d8: $2b
    ld c, l                                       ; $70d9: $4d
    and h                                         ; $70da: $a4
    ld l, [hl]                                    ; $70db: $6e
    ld b, a                                       ; $70dc: $47
    dec c                                         ; $70dd: $0d
    xor a                                         ; $70de: $af
    cp [hl]                                       ; $70df: $be
    push af                                       ; $70e0: $f5
    xor l                                         ; $70e1: $ad
    ld [hl], l                                    ; $70e2: $75
    ld h, [hl]                                    ; $70e3: $66
    dec b                                         ; $70e4: $05
    ld c, c                                       ; $70e5: $49
    jp nc, Jump_000_134a                          ; $70e6: $d2 $4a $13

    ld l, c                                       ; $70e9: $69
    or e                                          ; $70ea: $b3
    ld e, a                                       ; $70eb: $5f
    ld bc, $f66d                                  ; $70ec: $01 $6d $f6
    dec hl                                        ; $70ef: $2b
    sbc [hl]                                      ; $70f0: $9e
    ld d, e                                       ; $70f1: $53
    dec l                                         ; $70f2: $2d
    or $2b                                        ; $70f3: $f6 $2b
    sbc l                                         ; $70f5: $9d
    ld b, d                                       ; $70f6: $42
    call nc, $6dad                                ; $70f7: $d4 $ad $6d
    inc d                                         ; $70fa: $14
    ld [hl], a                                    ; $70fb: $77
    dec hl                                        ; $70fc: $2b
    xor l                                         ; $70fd: $ad
    dec c                                         ; $70fe: $0d
    inc sp                                        ; $70ff: $33
    or h                                          ; $7100: $b4
    adc a                                         ; $7101: $8f
    jp nz, $e78e                                  ; $7102: $c2 $8e $e7

    ld l, a                                       ; $7105: $6f
    dec b                                         ; $7106: $05
    dec de                                        ; $7107: $1b
    pop bc                                        ; $7108: $c1
    ld a, [bc]                                    ; $7109: $0a
    xor l                                         ; $710a: $ad

jr_043_710b:
    ld b, c                                       ; $710b: $41
    ld c, b                                       ; $710c: $48
    ld [$c9e5], sp                                ; $710d: $08 $e5 $c9
    rst $28                                       ; $7110: $ef
    or h                                          ; $7111: $b4
    ld a, a                                       ; $7112: $7f
    add d                                         ; $7113: $82
    jp nz, $8236                                  ; $7114: $c2 $36 $82

    inc [hl]                                      ; $7117: $34
    jp c, $30da                                   ; $7118: $da $da $30

    ld b, e                                       ; $711b: $43
    ei                                            ; $711c: $fb
    jr z, jr_043_710b                             ; $711d: $28 $ec

    ld a, b                                       ; $711f: $78
    cp $56                                        ; $7120: $fe $56
    or b                                          ; $7122: $b0
    ld de, $2bf4                                  ; $7123: $11 $f4 $2b
    cp [hl]                                       ; $7126: $be
    rst $30                                       ; $7127: $f7
    push de                                       ; $7128: $d5
    and h                                         ; $7129: $a4
    and b                                         ; $712a: $a0
    ld e, d                                       ; $712b: $5a
    inc c                                         ; $712c: $0c
    reti                                          ; $712d: $d9


    rlca                                          ; $712e: $07
    cp [hl]                                       ; $712f: $be
    xor b                                         ; $7130: $a8
    srl e                                         ; $7131: $cb $3b
    rra                                           ; $7133: $1f
    ld a, d                                       ; $7134: $7a
    add l                                         ; $7135: $85
    rst $18                                       ; $7136: $df
    sub b                                         ; $7137: $90
    ld a, [bc]                                    ; $7138: $0a
    and $10                                       ; $7139: $e6 $10
    ld e, d                                       ; $713b: $5a
    sbc [hl]                                      ; $713c: $9e
    ccf                                           ; $713d: $3f
    daa                                           ; $713e: $27
    pop de                                        ; $713f: $d1
    db $d3                                        ; $7140: $d3
    sub c                                         ; $7141: $91
    ld c, c                                       ; $7142: $49
    pop hl                                        ; $7143: $e1
    rst $20                                       ; $7144: $e7
    jp hl                                         ; $7145: $e9


    ld d, a                                       ; $7146: $57
    sbc [hl]                                      ; $7147: $9e
    ld d, e                                       ; $7148: $53
    ld a, $e4                                     ; $7149: $3e $e4
    sbc b                                         ; $714b: $98
    and c                                         ; $714c: $a1
    ldh a, [$d5]                                  ; $714d: $f0 $d5
    ld e, d                                       ; $714f: $5a
    ld bc, $301d                                  ; $7150: $01 $1d $30
    ld e, a                                       ; $7153: $5f
    push af                                       ; $7154: $f5
    add hl, hl                                    ; $7155: $29
    ld c, $9b                                     ; $7156: $0e $9b
    cp a                                          ; $7158: $bf
    ld c, a                                       ; $7159: $4f
    sbc l                                         ; $715a: $9d
    add e                                         ; $715b: $83
    or b                                          ; $715c: $b0
    rst $00                                       ; $715d: $c7
    ld l, a                                       ; $715e: $6f
    or [hl]                                       ; $715f: $b6
    xor c                                         ; $7160: $a9
    or l                                          ; $7161: $b5
    ld [bc], a                                    ; $7162: $02
    sbc [hl]                                      ; $7163: $9e
    ld a, [hl]                                    ; $7164: $7e
    ld h, h                                       ; $7165: $64
    add c                                         ; $7166: $81
    ld [hl], e                                    ; $7167: $73
    rst $08                                       ; $7168: $cf
    db $d3                                        ; $7169: $d3
    and a                                         ; $716a: $a7
    adc $41                                       ; $716b: $ce $41
    ret c                                         ; $716d: $d8

    db $e3                                        ; $716e: $e3
    scf                                           ; $716f: $37
    db $db                                        ; $7170: $db
    call nc, $015a                                ; $7171: $d4 $5a $01
    dec e                                         ; $7174: $1d
    ld d, d                                       ; $7175: $52
    db $ec                                        ; $7176: $ec
    cp b                                          ; $7177: $b8
    rst $18                                       ; $7178: $df
    ld a, [bc]                                    ; $7179: $0a
    ld [hl], $82                                  ; $717a: $36 $82

Jump_043_717c:
    cp b                                          ; $717c: $b8
    add hl, hl                                    ; $717d: $29
    db $fc                                        ; $717e: $fc
    ld l, c                                       ; $717f: $69
    and l                                         ; $7180: $a5
    adc c                                         ; $7181: $89
    ld a, b                                       ; $7182: $78
    ld a, a                                       ; $7183: $7f
    cp e                                          ; $7184: $bb
    db $eb                                        ; $7185: $eb
    ld d, a                                       ; $7186: $57
    xor l                                         ; $7187: $ad
    rst $38                                       ; $7188: $ff
    ld c, [hl]                                    ; $7189: $4e
    dec [hl]                                      ; $718a: $35
    dec d                                         ; $718b: $15
    add h                                         ; $718c: $84
    daa                                           ; $718d: $27
    adc $8f                                       ; $718e: $ce $8f
    call nc, $ba88                                ; $7190: $d4 $88 $ba
    inc d                                         ; $7193: $14
    cp b                                          ; $7194: $b8
    ld de, $a9f5                                  ; $7195: $11 $f5 $a9
    ld e, [hl]                                    ; $7198: $5e
    ld b, [hl]                                    ; $7199: $46
    rla                                           ; $719a: $17
    cp [hl]                                       ; $719b: $be
    xor b                                         ; $719c: $a8
    or a                                          ; $719d: $b7
    ld a, [$4ad3]                                 ; $719e: $fa $d3 $4a
    inc de                                        ; $71a1: $13
    pop af                                        ; $71a2: $f1
    cp $76                                        ; $71a3: $fe $76
    rst $10                                       ; $71a5: $d7
    xor a                                         ; $71a6: $af
    xor l                                         ; $71a7: $ad
    ld a, d                                       ; $71a8: $7a
    cp l                                          ; $71a9: $bd
    ld l, a                                       ; $71aa: $6f
    adc b                                         ; $71ab: $88
    rst $30                                       ; $71ac: $f7
    sbc c                                         ; $71ad: $99
    and a                                         ; $71ae: $a7
    sub $0a                                       ; $71af: $d6 $0a
    ld [hl], l                                    ; $71b1: $75
    ld b, [hl]                                    ; $71b2: $46
    ld [c], a                                     ; $71b3: $e2
    rst $38                                       ; $71b4: $ff
    set 5, e                                      ; $71b5: $cb $eb
    push af                                       ; $71b7: $f5
    ld e, a                                       ; $71b8: $5f
    ld hl, sp-$7b                                 ; $71b9: $f8 $85
    ld hl, sp+$29                                 ; $71bb: $f8 $29
    or e                                          ; $71bd: $b3
    push de                                       ; $71be: $d5
    ld h, l                                       ; $71bf: $65
    add c                                         ; $71c0: $81
    push bc                                       ; $71c1: $c5
    add a                                         ; $71c2: $87
    ld h, d                                       ; $71c3: $62
    rst $28                                       ; $71c4: $ef
    jp hl                                         ; $71c5: $e9


    ld d, a                                       ; $71c6: $57
    ld l, l                                       ; $71c7: $6d
    cp [hl]                                       ; $71c8: $be
    ld d, l                                       ; $71c9: $55
    rst $28                                       ; $71ca: $ef
    xor $a3                                       ; $71cb: $ee $a3
    ld a, $ed                                     ; $71cd: $3e $ed
    ld e, a                                       ; $71cf: $5f
    and c                                         ; $71d0: $a1
    halt                                          ; $71d1: $76
    ld [hl-], a                                   ; $71d2: $32
    dec hl                                        ; $71d3: $2b
    cp [hl]                                       ; $71d4: $be
    rst $30                                       ; $71d5: $f7
    push de                                       ; $71d6: $d5
    add h                                         ; $71d7: $84
    ld c, d                                       ; $71d8: $4a
    sub [hl]                                      ; $71d9: $96
    pop af                                        ; $71da: $f1
    ret z                                         ; $71db: $c8

    rst $00                                       ; $71dc: $c7
    adc l                                         ; $71dd: $8d
    pop af                                        ; $71de: $f1
    ld b, h                                       ; $71df: $44
    ld e, l                                       ; $71e0: $5d
    ld a, [hl+]                                   ; $71e1: $2a
    sbc b                                         ; $71e2: $98
    dec sp                                        ; $71e3: $3b
    ld e, l                                       ; $71e4: $5d
    ld a, [hl]                                    ; $71e5: $7e
    and a                                         ; $71e6: $a7
    sbc d                                         ; $71e7: $9a
    ld a, [bc]                                    ; $71e8: $0a
    jp nz, $f7d3                                  ; $71e9: $c2 $d3 $f7

    db $fd                                        ; $71ec: $fd
    ld a, [bc]                                    ; $71ed: $0a
    sbc [hl]                                      ; $71ee: $9e
    ld a, [hl]                                    ; $71ef: $7e
    call nz, $f94d                                ; $71f0: $c4 $4d $f9
    ld hl, sp-$01                                 ; $71f3: $f8 $ff
    and d                                         ; $71f5: $a2
    ld a, $24                                     ; $71f6: $3e $24
    ld b, h                                       ; $71f8: $44
    pop bc                                        ; $71f9: $c1
    ld d, b                                       ; $71fa: $50
    ld l, e                                       ; $71fb: $6b
    dec b                                         ; $71fc: $05
    cp [hl]                                       ; $71fd: $be
    rst $30                                       ; $71fe: $f7
    push de                                       ; $71ff: $d5
    add h                                         ; $7200: $84
    ld c, d                                       ; $7201: $4a
    sub [hl]                                      ; $7202: $96
    pop af                                        ; $7203: $f1
    ret z                                         ; $7204: $c8

    rst $00                                       ; $7205: $c7
    adc l                                         ; $7206: $8d
    pop af                                        ; $7207: $f1
    ld b, h                                       ; $7208: $44
    ld e, l                                       ; $7209: $5d
    ld a, [hl+]                                   ; $720a: $2a
    sbc b                                         ; $720b: $98
    dec sp                                        ; $720c: $3b
    ld e, l                                       ; $720d: $5d
    ld a, [hl]                                    ; $720e: $7e
    and a                                         ; $720f: $a7
    sbc d                                         ; $7210: $9a
    ld a, [bc]                                    ; $7211: $0a
    jp nz, $f7d3                                  ; $7212: $c2 $d3 $f7

    db $fd                                        ; $7215: $fd
    ld a, [bc]                                    ; $7216: $0a
    db $ed                                        ; $7217: $ed
    ld e, a                                       ; $7218: $5f
    cp h                                          ; $7219: $bc
    ld l, a                                       ; $721a: $6f
    ret nc                                        ; $721b: $d0

    db $eb                                        ; $721c: $eb
    sub c                                         ; $721d: $91
    push hl                                       ; $721e: $e5
    sbc $c1                                       ; $721f: $de $c1
    sub b                                         ; $7221: $90
    daa                                           ; $7222: $27
    ld h, c                                       ; $7223: $61
    reti                                          ; $7224: $d9


    sbc a                                         ; $7225: $9f
    ld h, l                                       ; $7226: $65
    ld c, d                                       ; $7227: $4a
    add hl, sp                                    ; $7228: $39
    db $fd                                        ; $7229: $fd
    db $ed                                        ; $722a: $ed
    db $e3                                        ; $722b: $e3
    ld a, d                                       ; $722c: $7a
    and d                                         ; $722d: $a2
    ld l, $ef                                     ; $722e: $2e $ef
    ld a, h                                       ; $7230: $7c
    add sp, $15                                   ; $7231: $e8 $15
    ld a, [hl]                                    ; $7233: $7e
    ld b, e                                       ; $7234: $43
    ld a, h                                       ; $7235: $7c
    add sp, $6f                                   ; $7236: $e8 $6f
    scf                                           ; $7238: $37
    push hl                                       ; $7239: $e5
    ei                                            ; $723a: $fb
    dec d                                         ; $723b: $15
    dec l                                         ; $723c: $2d
    add a                                         ; $723d: $87
    ld c, d                                       ; $723e: $4a
    ld c, b                                       ; $723f: $48
    ret c                                         ; $7240: $d8

    ld h, h                                       ; $7241: $64
    add c                                         ; $7242: $81
    ld [hl], e                                    ; $7243: $73
    rst $08                                       ; $7244: $cf
    db $d3                                        ; $7245: $d3
    rst $00                                       ; $7246: $c7
    rla                                           ; $7247: $17
    sub a                                         ; $7248: $97
    ld [hl], d                                    ; $7249: $72
    adc [hl]                                      ; $724a: $8e
    jp c, Jump_043_5d44                           ; $724b: $da $44 $5d

    ld h, h                                       ; $724e: $64
    inc h                                         ; $724f: $24
    db $e4                                        ; $7250: $e4
    ld l, h                                       ; $7251: $6c
    ld e, b                                       ; $7252: $58
    call c, $fa57                                 ; $7253: $dc $57 $fa
    ld a, e                                       ; $7256: $7b
    ld b, e                                       ; $7257: $43
    ld c, [hl]                                    ; $7258: $4e
    pop hl                                        ; $7259: $e1
    ld l, e                                       ; $725a: $6b
    xor l                                         ; $725b: $ad
    ld l, l                                       ; $725c: $6d
    rst $28                                       ; $725d: $ef
    inc l                                         ; $725e: $2c
    ld b, $22                                     ; $725f: $06 $22
    ld [hl], c                                    ; $7261: $71
    ld [hl+], a                                   ; $7262: $22
    ld h, e                                       ; $7263: $63
    push de                                       ; $7264: $d5
    ld l, a                                       ; $7265: $6f
    and h                                         ; $7266: $a4
    ld b, [hl]                                    ; $7267: $46
    call nc, $95a5                                ; $7268: $d4 $a5 $95
    ld h, $e2                                     ; $726b: $26 $e2
    db $fd                                        ; $726d: $fd
    db $ed                                        ; $726e: $ed
    xor [hl]                                      ; $726f: $ae
    ld e, a                                       ; $7270: $5f
    ld bc, $472d                                  ; $7271: $01 $2d $47
    ld e, l                                       ; $7274: $5d
    ld a, [bc]                                    ; $7275: $0a
    call c, $fa88                                 ; $7276: $dc $88 $fa
    ld d, h                                       ; $7279: $54
    cpl                                           ; $727a: $2f
    db $d3                                        ; $727b: $d3
    rst $30                                       ; $727c: $f7
    ld a, l                                       ; $727d: $7d
    ld a, [hl-]                                   ; $727e: $3a
    cp [hl]                                       ; $727f: $be
    xor b                                         ; $7280: $a8
    or a                                          ; $7281: $b7
    ld a, [$4ad3]                                 ; $7282: $fa $d3 $4a
    inc de                                        ; $7285: $13
    pop af                                        ; $7286: $f1
    cp $76                                        ; $7287: $fe $76
    rst $10                                       ; $7289: $d7
    xor a                                         ; $728a: $af
    xor l                                         ; $728b: $ad
    ld a, d                                       ; $728c: $7a
    cp l                                          ; $728d: $bd
    ld l, a                                       ; $728e: $6f
    adc b                                         ; $728f: $88
    rst $30                                       ; $7290: $f7
    sbc c                                         ; $7291: $99
    and a                                         ; $7292: $a7
    sub $0a                                       ; $7293: $d6 $0a
    ld [hl], l                                    ; $7295: $75
    ld b, [hl]                                    ; $7296: $46
    or d                                          ; $7297: $b2
    ld c, h                                       ; $7298: $4c
    add hl, hl                                    ; $7299: $29
    rlca                                          ; $729a: $07
    ld [hl], l                                    ; $729b: $75
    ld a, c                                       ; $729c: $79
    cp l                                          ; $729d: $bd
    cp $0b                                        ; $729e: $fe $0b
    cp a                                          ; $72a0: $bf
    db $10                                        ; $72a1: $10
    ccf                                           ; $72a2: $3f
    sbc $df                                       ; $72a3: $de $df
    xor $fa                                       ; $72a5: $ee $fa
    dec d                                         ; $72a7: $15
    db $ed                                        ; $72a8: $ed
    ld c, l                                       ; $72a9: $4d
    adc b                                         ; $72aa: $88
    call nc, $3f39                                ; $72ab: $d4 $39 $3f
    db $ec                                        ; $72ae: $ec
    ld h, h                                       ; $72af: $64
    jp nc, Jump_043_5a68                          ; $72b0: $d2 $68 $5a

    sbc a                                         ; $72b3: $9f
    db $ed                                        ; $72b4: $ed
    ld l, $d5                                     ; $72b5: $2e $d5
    ld l, e                                       ; $72b7: $6b
    rst $20                                       ; $72b8: $e7
    ld l, [hl]                                    ; $72b9: $6e
    dec b                                         ; $72ba: $05
    xor l                                         ; $72bb: $ad
    ld b, c                                       ; $72bc: $41
    ld c, b                                       ; $72bd: $48
    ld [$c9e5], sp                                ; $72be: $08 $e5 $c9
    and a                                         ; $72c1: $a7
    cp l                                          ; $72c2: $bd
    add hl, bc                                    ; $72c3: $09
    sub c                                         ; $72c4: $91
    ld a, [hl-]                                   ; $72c5: $3a
    rst $20                                       ; $72c6: $e7
    add a                                         ; $72c7: $87
    sbc l                                         ; $72c8: $9d
    ld c, h                                       ; $72c9: $4c
    ld a, [de]                                    ; $72ca: $1a
    ld c, l                                       ; $72cb: $4d
    db $eb                                        ; $72cc: $eb
    or e                                          ; $72cd: $b3
    db $dd                                        ; $72ce: $dd
    and l                                         ; $72cf: $a5
    ld a, d                                       ; $72d0: $7a
    db $ed                                        ; $72d1: $ed
    call c, Call_000_2bf5                         ; $72d2: $dc $f5 $2b
    ld l, l                                       ; $72d5: $6d
    ld b, c                                       ; $72d6: $41
    ld h, b                                       ; $72d7: $60
    cp a                                          ; $72d8: $bf
    dec hl                                        ; $72d9: $2b
    ld [$3223], sp                                ; $72da: $08 $23 $32
    ld [de], a                                    ; $72dd: $12
    dec sp                                        ; $72de: $3b
    scf                                           ; $72df: $37
    push de                                       ; $72e0: $d5
    ld h, d                                       ; $72e1: $62
    sub e                                         ; $72e2: $93
    adc e                                         ; $72e3: $8b
    sbc d                                         ; $72e4: $9a
    db $ed                                        ; $72e5: $ed
    xor [hl]                                      ; $72e6: $ae
    rst $28                                       ; $72e7: $ef
    ei                                            ; $72e8: $fb
    ld d, h                                       ; $72e9: $54
    rra                                           ; $72ea: $1f
    rst $28                                       ; $72eb: $ef
    ld d, a                                       ; $72ec: $57
    push de                                       ; $72ed: $d5
    add l                                         ; $72ee: $85
    add h                                         ; $72ef: $84
    add d                                         ; $72f0: $82
    ld hl, $8a6e                                  ; $72f1: $21 $6e $8a
    add a                                         ; $72f4: $87
    rst $38                                       ; $72f5: $ff
    xor a                                         ; $72f6: $af
    sub $0a                                       ; $72f7: $d6 $0a
    sbc [hl]                                      ; $72f9: $9e
    ld d, e                                       ; $72fa: $53
    ld a, $cb                                     ; $72fb: $3e $cb
    sub h                                         ; $72fd: $94
    ld [hl-], a                                   ; $72fe: $32
    ld d, c                                       ; $72ff: $51
    ld l, a                                       ; $7300: $6f
    ld a, h                                       ; $7301: $7c
    or l                                          ; $7302: $b5
    ld d, [hl]                                    ; $7303: $56
    sbc l                                         ; $7304: $9d
    ret z                                         ; $7305: $c8

    ld b, h                                       ; $7306: $44
    pop hl                                        ; $7307: $e1
    ld d, d                                       ; $7308: $52
    dec e                                         ; $7309: $1d
    ld l, $8b                                     ; $730a: $2e $8b
    pop bc                                        ; $730c: $c1
    dec bc                                        ; $730d: $0b
    dec sp                                        ; $730e: $3b
    cp [hl]                                       ; $730f: $be
    sbc d                                         ; $7310: $9a
    xor c                                         ; $7311: $a9
    ld [hl], e                                    ; $7312: $73
    db $10                                        ; $7313: $10
    or $f8                                        ; $7314: $f6 $f8
    call $b536                                    ; $7316: $cd $36 $b5
    ld d, [hl]                                    ; $7319: $56
    xor l                                         ; $731a: $ad
    pop bc                                        ; $731b: $c1
    xor a                                         ; $731c: $af
    ld c, e                                       ; $731d: $4b
    adc l                                         ; $731e: $8d
    xor b                                         ; $731f: $a8
    daa                                           ; $7320: $27
    ld c, c                                       ; $7321: $49
    ret c                                         ; $7322: $d8

    add h                                         ; $7323: $84
    jp z, $8647                                   ; $7324: $ca $47 $86

    ccf                                           ; $7327: $3f
    ld e, a                                       ; $7328: $5f
    cp l                                          ; $7329: $bd
    ld a, l                                       ; $732a: $7d
    sbc a                                         ; $732b: $9f
    ld a, [hl-]                                   ; $732c: $3a
    rlca                                          ; $732d: $07
    ld h, c                                       ; $732e: $61
    adc a                                         ; $732f: $8f
    rst $18                                       ; $7330: $df
    ld l, h                                       ; $7331: $6c
    ld d, e                                       ; $7332: $53
    ld l, e                                       ; $7333: $6b
    dec b                                         ; $7334: $05
    cp [hl]                                       ; $7335: $be
    or e                                          ; $7336: $b3
    daa                                           ; $7337: $27
    xor l                                         ; $7338: $ad
    inc [hl]                                      ; $7339: $34
    ld de, $6fef                                  ; $733a: $11 $ef $6f
    ld [hl], a                                    ; $733d: $77
    db $fd                                        ; $733e: $fd
    ld a, [bc]                                    ; $733f: $0a
    ld [hl], l                                    ; $7340: $75
    and a                                         ; $7341: $a7
    sub h                                         ; $7342: $94
    adc c                                         ; $7343: $89
    ld a, d                                       ; $7344: $7a
    db $e3                                        ; $7345: $e3
    set 7, [hl]                                   ; $7346: $cb $fe
    add sp, -$4f                                  ; $7348: $e8 $b1
    scf                                           ; $734a: $37
    adc b                                         ; $734b: $88
    call nz, $ba8f                                ; $734c: $c4 $8f $ba
    or h                                          ; $734f: $b4
    jp nc, $bc44                                  ; $7350: $d2 $44 $bc

Call_043_7353:
    cp a                                          ; $7353: $bf
    db $dd                                        ; $7354: $dd
    push af                                       ; $7355: $f5
    dec hl                                        ; $7356: $2b
    dec e                                         ; $7357: $1d
    ld e, a                                       ; $7358: $5f
    ld a, [bc]                                    ; $7359: $0a
    ld a, [hl+]                                   ; $735a: $2a
    cp l                                          ; $735b: $bd
    ld a, l                                       ; $735c: $7d
    db $ec                                        ; $735d: $ec
    or l                                          ; $735e: $b5
    dec de                                        ; $735f: $1b
    ld bc, $1b39                                  ; $7360: $01 $39 $1b
    or l                                          ; $7363: $b5
    ld d, [hl]                                    ; $7364: $56
    sbc [hl]                                      ; $7365: $9e
    ld b, $35                                     ; $7366: $06 $35
    ld [hl], c                                    ; $7368: $71
    ld a, [hl]                                    ; $7369: $7e
    and h                                         ; $736a: $a4
    call c, Call_043_6d87                         ; $736b: $dc $87 $6d
    sub [hl]                                      ; $736e: $96
    ld h, l                                       ; $736f: $65
    ld [c], a                                     ; $7370: $e2
    and [hl]                                      ; $7371: $a6
    ldh a, [$94]                                  ; $7372: $f0 $94
    ret                                           ; $7374: $c9


    ld [bc], a                                    ; $7375: $02
    bit 0, [hl]                                   ; $7376: $cb $46
    sbc b                                         ; $7378: $98
    ld [hl+], a                                   ; $7379: $22
    db $fc                                        ; $737a: $fc
    push bc                                       ; $737b: $c5
    ld sp, hl                                     ; $737c: $f9
    pop de                                        ; $737d: $d1
    and a                                         ; $737e: $a7
    adc $41                                       ; $737f: $ce $41
    ret c                                         ; $7381: $d8

    db $e3                                        ; $7382: $e3
    scf                                           ; $7383: $37
    db $db                                        ; $7384: $db
    call nc, $015a                                ; $7385: $d4 $5a $01
    db $ed                                        ; $7388: $ed
    cp a                                          ; $7389: $bf
    ld a, [$d3ea]                                 ; $738a: $fa $ea $d3
    cp [hl]                                       ; $738d: $be
    di                                            ; $738e: $f3
    call c, Call_000_2b2f                         ; $738f: $dc $2f $2b
    xor l                                         ; $7392: $ad
    ld b, c                                       ; $7393: $41
    ld c, b                                       ; $7394: $48
    ld [$89e5], sp                                ; $7395: $08 $e5 $89
    ld a, [$ffb4]                                 ; $7398: $fa $b4 $ff
    ld [$4fab], a                                 ; $739b: $ea $ab $4f
    ei                                            ; $739e: $fb
    adc $73                                       ; $739f: $ce $73
    cp a                                          ; $73a1: $bf
    xor h                                         ; $73a2: $ac
    or l                                          ; $73a3: $b5

jr_043_73a4:
    rst $38                                       ; $73a4: $ff
    ld [c], a                                     ; $73a5: $e2
    ld b, e                                       ; $73a6: $43
    ld a, a                                       ; $73a7: $7f
    cp e                                          ; $73a8: $bb
    add hl, hl                                    ; $73a9: $29
    rra                                           ; $73aa: $1f
    push af                                       ; $73ab: $f5
    ld hl, $0a21                                  ; $73ac: $21 $21 $0a
    ld b, $5d                                     ; $73af: $06 $5d
    call c, $d4db                                 ; $73b1: $dc $db $d4
    ld c, d                                       ; $73b4: $4a
    db $eb                                        ; $73b5: $eb
    rst $30                                       ; $73b6: $f7
    push de                                       ; $73b7: $d5
    add h                                         ; $73b8: $84
    adc d                                         ; $73b9: $8a
    rst $00                                       ; $73ba: $c7
    jr c, jr_043_73a4                             ; $73bb: $38 $e7

    cp a                                          ; $73bd: $bf
    rst $20                                       ; $73be: $e7
    rst $28                                       ; $73bf: $ef
    ld d, a                                       ; $73c0: $57
    xor l                                         ; $73c1: $ad
    ld e, a                                       ; $73c2: $5f
    call c, $8f94                                 ; $73c3: $dc $94 $8f
    rst $38                                       ; $73c6: $ff
    cpl                                           ; $73c7: $2f
    ld a, [$a32b]                                 ; $73c8: $fa $2b $a3
    ret                                           ; $73cb: $c9


    call nc, $ef8a                                ; $73cc: $d4 $8a $ef
    ret z                                         ; $73cf: $c8

    and h                                         ; $73d0: $a4
    sbc h                                         ; $73d1: $9c
    and e                                         ; $73d2: $a3
    or $51                                        ; $73d3: $f6 $51
    sub a                                         ; $73d5: $97
    daa                                           ; $73d6: $27
    ld h, c                                       ; $73d7: $61
    ret z                                         ; $73d8: $c8

    cp $30                                        ; $73d9: $fe $30
    db $fd                                        ; $73db: $fd
    ldh a, [rOCPD]                                ; $73dc: $f0 $6b
    ei                                            ; $73de: $fb
    cp [hl]                                       ; $73df: $be
    ld e, a                                       ; $73e0: $5f
    ld bc, $5f1d                                  ; $73e1: $01 $1d $5f
    call c, $e26f                                 ; $73e4: $dc $6f $e2
    ld h, a                                       ; $73e7: $67
    or c                                          ; $73e8: $b1
    ld e, c                                       ; $73e9: $59
    db $ec                                        ; $73ea: $ec
    ld h, $9f                                     ; $73eb: $26 $9f
    dec b                                         ; $73ed: $05
    ld [hl+], a                                   ; $73ee: $22
    ret c                                         ; $73ef: $d8

    ld a, e                                       ; $73f0: $7b

jr_043_73f1:
    ld a, [$39d4]                                 ; $73f1: $fa $d4 $39
    ld [$fc7b], sp                                ; $73f4: $08 $7b $fc
    ld h, [hl]                                    ; $73f7: $66
    sbc e                                         ; $73f8: $9b
    ld e, d                                       ; $73f9: $5a
    dec hl                                        ; $73fa: $2b
    dec l                                         ; $73fb: $2d
    ld h, a                                       ; $73fc: $67
    or c                                          ; $73fd: $b1
    ld e, c                                       ; $73fe: $59
    db $ec                                        ; $73ff: $ec
    ld h, $54                                     ; $7400: $26 $54
    or d                                          ; $7402: $b2
    ret nz                                        ; $7403: $c0

    cp c                                          ; $7404: $b9
    rst $20                                       ; $7405: $e7
    pop de                                        ; $7406: $d1
    push bc                                       ; $7407: $c5
    cp l                                          ; $7408: $bd
    ld c, l                                       ; $7409: $4d
    sbc a                                         ; $740a: $9f
    ld a, [hl-]                                   ; $740b: $3a
    rlca                                          ; $740c: $07
    ld h, c                                       ; $740d: $61
    adc a                                         ; $740e: $8f
    rst $18                                       ; $740f: $df
    ld l, h                                       ; $7410: $6c
    ld d, e                                       ; $7411: $53
    ld l, e                                       ; $7412: $6b
    dec b                                         ; $7413: $05
    dec e                                         ; $7414: $1d
    ld e, a                                       ; $7415: $5f
    call c, $8614                                 ; $7416: $dc $14 $86
    push de                                       ; $7419: $d5
    sub e                                         ; $741a: $93
    ld d, [hl]                                    ; $741b: $56
    sbc d                                         ; $741c: $9a
    adc b                                         ; $741d: $88
    rst $30                                       ; $741e: $f7
    or a                                          ; $741f: $b7
    cp e                                          ; $7420: $bb
    ld a, [hl]                                    ; $7421: $7e
    dec b                                         ; $7422: $05
    sbc [hl]                                      ; $7423: $9e
    ld b, $35                                     ; $7424: $06 $35
    ld d, c                                       ; $7426: $51
    sub a                                         ; $7427: $97
    ld h, l                                       ; $7428: $65
    jr jr_043_73f1                                ; $7429: $18 $c6

    rla                                           ; $742b: $17
    push af                                       ; $742c: $f5
    add [hl]                                      ; $742d: $86
    or h                                          ; $742e: $b4
    jp nc, $bc44                                  ; $742f: $d2 $44 $bc

    cp a                                          ; $7432: $bf
    db $dd                                        ; $7433: $dd
    push af                                       ; $7434: $f5
    dec hl                                        ; $7435: $2b
    cp [hl]                                       ; $7436: $be
    cp b                                          ; $7437: $b8
    jr z, @-$6f                                   ; $7438: $28 $8f

    ld [hl], a                                    ; $743a: $77
    ld l, [hl]                                    ; $743b: $6e
    ld c, h                                       ; $743c: $4c
    ld c, l                                       ; $743d: $4d
    xor l                                         ; $743e: $ad
    dec d                                         ; $743f: $15
    dec e                                         ; $7440: $1d
    and e                                         ; $7441: $a3
    sbc d                                         ; $7442: $9a
    jr c, jr_043_7484                             ; $7443: $38 $3f

    jp nz, $3234                                  ; $7445: $c2 $34 $32

    sub d                                         ; $7448: $92
    rst $10                                       ; $7449: $d7
    db $eb                                        ; $744a: $eb
    rst $28                                       ; $744b: $ef
    di                                            ; $744c: $f3
    ld a, d                                       ; $744d: $7a
    db $fd                                        ; $744e: $fd
    rla                                           ; $744f: $17
    ld a, [hl]                                    ; $7450: $7e
    ld hl, $ca7e                                  ; $7451: $21 $7e $ca
    ld l, h                                       ; $7454: $6c
    ld [hl], l                                    ; $7455: $75
    db $fd                                        ; $7456: $fd
    ld a, [bc]                                    ; $7457: $0a
    sbc [hl]                                      ; $7458: $9e
    ld l, a                                       ; $7459: $6f
    add [hl]                                      ; $745a: $86
    cp l                                          ; $745b: $bd
    daa                                           ; $745c: $27
    ld a, [bc]                                    ; $745d: $0a
    rla                                           ; $745e: $17
    dec [hl]                                      ; $745f: $35
    db $db                                        ; $7460: $db
    db $dd                                        ; $7461: $dd
    ld a, [bc]                                    ; $7462: $0a
    sbc l                                         ; $7463: $9d
    jp nc, Jump_000_28b9                          ; $7464: $d2 $b9 $28

    ld e, h                                       ; $7467: $5c
    call nc, Call_043_776c                        ; $7468: $d4 $6c $77
    cp d                                          ; $746b: $ba
    ret nz                                        ; $746c: $c0

    ld e, a                                       ; $746d: $5f
    dec hl                                        ; $746e: $2b
    dec e                                         ; $746f: $1d
    jr nc, @+$61                                  ; $7470: $30 $5f

    push af                                       ; $7472: $f5
    add hl, sp                                    ; $7473: $39
    add l                                         ; $7474: $85
    rst $28                                       ; $7475: $ef
    ld d, a                                       ; $7476: $57
    xor l                                         ; $7477: $ad
    rst $18                                       ; $7478: $df
    ld d, a                                       ; $7479: $57
    inc de                                        ; $747a: $13
    ld a, [hl+]                                   ; $747b: $2a
    ld e, $e3                                     ; $747c: $1e $e3
    sbc h                                         ; $747e: $9c
    rst $38                                       ; $747f: $ff
    sbc [hl]                                      ; $7480: $9e
    ccf                                           ; $7481: $3f
    rra                                           ; $7482: $1f
    ld [hl], a                                    ; $7483: $77

jr_043_7484:
    push af                                       ; $7484: $f5
    rst $00                                       ; $7485: $c7
    ld sp, hl                                     ; $7486: $f9
    sub c                                         ; $7487: $91

jr_043_7488:
    add l                                         ; $7488: $85
    adc $65                                       ; $7489: $ce $65
    cp h                                          ; $748b: $bc
    ld e, [hl]                                    ; $748c: $5e
    dec sp                                        ; $748d: $3b
    xor e                                         ; $748e: $ab
    xor [hl]                                      ; $748f: $ae
    ld e, a                                       ; $7490: $5f
    ld bc, $7e9e                                  ; $7491: $01 $9e $7e
    call nz, $f14d                                ; $7494: $c4 $4d $f1
    ldh a, [rIE]                                  ; $7497: $f0 $ff
    jp hl                                         ; $7499: $e9


    ld [c], a                                     ; $749a: $e2
    sbc $a6                                       ; $749b: $de $a6
    sub $0a                                       ; $749d: $d6 $0a
    cp [hl]                                       ; $749f: $be
    ld l, a                                       ; $74a0: $6f
    push af                                       ; $74a1: $f5
    add h                                         ; $74a2: $84
    jp z, $bb47                                   ; $74a3: $ca $47 $bb

    cp c                                          ; $74a6: $b9
    rst $08                                       ; $74a7: $cf
    ld [bc], a                                    ; $74a8: $02
    res 0, l                                      ; $74a9: $cb $85
    jp hl                                         ; $74ab: $e9


    ld e, h                                       ; $74ac: $5c
    or h                                          ; $74ad: $b4
    dec de                                        ; $74ae: $1b
    ld a, [c]                                     ; $74af: $f2
    push hl                                       ; $74b0: $e5
    and d                                         ; $74b1: $a2
    jr nz, jr_043_7530                            ; $74b2: $20 $7c

    ld a, l                                       ; $74b4: $7d
    ld [$841c], a                                 ; $74b5: $ea $1c $84
    dec a                                         ; $74b8: $3d
    ld a, [hl]                                    ; $74b9: $7e
    or e                                          ; $74ba: $b3
    ld c, l                                       ; $74bb: $4d
    xor l                                         ; $74bc: $ad
    dec d                                         ; $74bd: $15
    xor l                                         ; $74be: $ad
    pop bc                                        ; $74bf: $c1
    xor a                                         ; $74c0: $af
    adc e                                         ; $74c1: $8b
    di                                            ; $74c2: $f3
    inc hl                                        ; $74c3: $23
    dec bc                                        ; $74c4: $0b
    sbc h                                         ; $74c5: $9c
    ld a, e                                       ; $74c6: $7b
    sbc [hl]                                      ; $74c7: $9e
    ld a, $75                                     ; $74c8: $3e $75
    ld c, $c2                                     ; $74ca: $0e $c2
    ld e, $bf                                     ; $74cc: $1e $bf
    reti                                          ; $74ce: $d9


    and [hl]                                      ; $74cf: $a6
    sub $0a                                       ; $74d0: $d6 $0a
    sbc [hl]                                      ; $74d2: $9e
    ld d, e                                       ; $74d3: $53
    ld hl, sp+$53                                 ; $74d4: $f8 $53
    ld h, [hl]                                    ; $74d6: $66
    ld c, a                                       ; $74d7: $4f
    ld e, d                                       ; $74d8: $5a
    ld l, c                                       ; $74d9: $69
    ld [hl+], a                                   ; $74da: $22
    sbc $df                                       ; $74db: $de $df
    xor $56                                       ; $74dd: $ee $56
    ld [hl], l                                    ; $74df: $75
    and a                                         ; $74e0: $a7
    sub h                                         ; $74e1: $94
    adc c                                         ; $74e2: $89
    ld a, d                                       ; $74e3: $7a
    db $e3                                        ; $74e4: $e3
    ld c, e                                       ; $74e5: $4b
    dec hl                                        ; $74e6: $2b
    ld c, l                                       ; $74e7: $4d
    call nz, $dbfb                                ; $74e8: $c4 $fb $db
    ld e, l                                       ; $74eb: $5d
    cp a                                          ; $74ec: $bf
    ld [bc], a                                    ; $74ed: $02
    xor l                                         ; $74ee: $ad
    xor $3d                                       ; $74ef: $ee $3d

Jump_043_74f1:
    or $ba                                        ; $74f1: $f6 $ba
    sub h                                         ; $74f3: $94
    ei                                            ; $74f4: $fb
    ld l, d                                       ; $74f5: $6a
    and d                                         ; $74f6: $a2
    inc a                                         ; $74f7: $3c
    sbc $b9                                       ; $74f8: $de $b9
    ld sp, $b535                                  ; $74fa: $31 $35 $b5
    ld d, [hl]                                    ; $74fd: $56
    dec e                                         ; $74fe: $1d
    ld hl, sp+$75                                 ; $74ff: $f8 $75
    sub c                                         ; $7501: $91
    sub c                                         ; $7502: $91
    jr c, jr_043_7488                             ; $7503: $38 $83

    sbc d                                         ; $7505: $9a
    jr c, jr_043_7547                             ; $7506: $38 $3f

    jp nz, $af34                                  ; $7508: $c2 $34 $af

    rst $10                                       ; $750b: $d7
    rst $18                                       ; $750c: $df
    rst $20                                       ; $750d: $e7
    push af                                       ; $750e: $f5
    ld a, [$fc2f]                                 ; $750f: $fa $2f $fc
    ld b, d                                       ; $7512: $42
    db $fc                                        ; $7513: $fc
    sub h                                         ; $7514: $94

Call_043_7515:
    reti                                          ; $7515: $d9


    ld [$15fa], a                                 ; $7516: $ea $fa $15
    ld l, l                                       ; $7519: $6d
    ld d, h                                       ; $751a: $54
    set 3, b                                      ; $751b: $cb $d8
    ld c, l                                       ; $751d: $4d
    inc d                                         ; $751e: $14

Jump_043_751f:
    ld l, $9d                                     ; $751f: $2e $9d
    pop hl                                        ; $7521: $e1
    rlc [hl]                                      ; $7522: $cb $06
    add c                                         ; $7524: $81
    dec d                                         ; $7525: $15
    xor l                                         ; $7526: $ad
    ld b, c                                       ; $7527: $41
    ld c, b                                       ; $7528: $48
    ld [$c9e5], sp                                ; $7529: $08 $e5 $c9
    rst $28                                       ; $752c: $ef
    db $ed                                        ; $752d: $ed
    pop de                                        ; $752e: $d1
    ld b, [hl]                                    ; $752f: $46

jr_043_7530:
    or l                                          ; $7530: $b5
    adc h                                         ; $7531: $8c
    db $dd                                        ; $7532: $dd
    ld b, h                                       ; $7533: $44
    pop hl                                        ; $7534: $e1
    jp nc, Jump_043_6cfa                          ; $7535: $d2 $fa $6c

    ld [hl], a                                    ; $7538: $77
    ld d, c                                       ; $7539: $51
    cp b                                          ; $753a: $b8
    ld [hl], h                                    ; $753b: $74
    add [hl]                                      ; $753c: $86
    cpl                                           ; $753d: $2f
    dec de                                        ; $753e: $1b
    inc b                                         ; $753f: $04
    ld a, [$9e15]                                 ; $7540: $fa $15 $9e
    ld d, e                                       ; $7543: $53
    inc a                                         ; $7544: $3c
    db $fc                                        ; $7545: $fc
    ld a, a                                       ; $7546: $7f

jr_043_7547:
    ld d, c                                       ; $7547: $51
    sbc a                                         ; $7548: $9f
    pop af                                        ; $7549: $f1
    ld a, d                                       ; $754a: $7a
    db $ed                                        ; $754b: $ed
    xor h                                         ; $754c: $ac
    cp d                                          ; $754d: $ba
    ld e, d                                       ; $754e: $5a
    dec hl                                        ; $754f: $2b
    sbc [hl]                                      ; $7550: $9e
    ld d, e                                       ; $7551: $53
    ld a, $e4                                     ; $7552: $3e $e4
    sbc b                                         ; $7554: $98
    and c                                         ; $7555: $a1
    ldh a, [$d5]                                  ; $7556: $f0 $d5
    ld e, d                                       ; $7558: $5a
    ld bc, $872d                                  ; $7559: $01 $2d $87
    ld c, d                                       ; $755c: $4a
    sbc $f8                                       ; $755d: $de $f8
    call c, $49ec                                 ; $755f: $dc $ec $49
    ld b, c                                       ; $7562: $41
    or l                                          ; $7563: $b5
    jr jr_043_75b8                                ; $7564: $18 $52

    call $89e6                                    ; $7566: $cd $e6 $89
    sbc l                                         ; $7569: $9d
    di                                            ; $756a: $f3
    rra                                           ; $756b: $1f
    ld a, [bc]                                    ; $756c: $0a
    ld c, a                                       ; $756d: $4f
    sbc a                                         ; $756e: $9f
    ld a, [hl-]                                   ; $756f: $3a
    rlca                                          ; $7570: $07
    ld h, c                                       ; $7571: $61
    adc a                                         ; $7572: $8f
    rst $18                                       ; $7573: $df
    ld l, h                                       ; $7574: $6c
    ld d, e                                       ; $7575: $53
    ld l, e                                       ; $7576: $6b
    dec b                                         ; $7577: $05
    ld l, l                                       ; $7578: $6d
    adc [hl]                                      ; $7579: $8e
    dec d                                         ; $757a: $15
    ld h, h                                       ; $757b: $64
    cp c                                          ; $757c: $b9
    ld b, $c2                                     ; $757d: $06 $c2
    ld l, a                                       ; $757f: $6f
    ld [$bee2], a                                 ; $7580: $ea $e2 $be
    jp nc, $ec1f                                  ; $7583: $d2 $1f $ec

    cpl                                           ; $7586: $2f
    and a                                         ; $7587: $a7
    ldh a, [$7d]                                  ; $7588: $f0 $7d
    ld [$841c], a                                 ; $758a: $ea $1c $84
    dec a                                         ; $758d: $3d
    ld a, [hl]                                    ; $758e: $7e
    or e                                          ; $758f: $b3
    ld c, l                                       ; $7590: $4d
    xor l                                         ; $7591: $ad
    dec d                                         ; $7592: $15
    dec e                                         ; $7593: $1d
    ld d, d                                       ; $7594: $52
    db $ec                                        ; $7595: $ec
    db $ed                                        ; $7596: $ed
    pop af                                        ; $7597: $f1
    add $e7                                       ; $7598: $c6 $e7
    ld h, [hl]                                    ; $759a: $66
    ld c, a                                       ; $759b: $4f
    call c, $fe14                                 ; $759c: $dc $14 $fe
    or h                                          ; $759f: $b4
    jp nc, $bc44                                  ; $75a0: $d2 $44 $bc

Jump_043_75a3:
    cp a                                          ; $75a3: $bf
    db $dd                                        ; $75a4: $dd
    push af                                       ; $75a5: $f5
    dec hl                                        ; $75a6: $2b
    ld [hl], l                                    ; $75a7: $75
    and a                                         ; $75a8: $a7
    sub h                                         ; $75a9: $94
    ret                                           ; $75aa: $c9


    ld a, b                                       ; $75ab: $78
    cp l                                          ; $75ac: $bd
    halt                                          ; $75ad: $76
    add $97                                       ; $75ae: $c6 $97
    ld [hl-], a                                   ; $75b0: $32
    ld a, e                                       ; $75b1: $7b
    jp nc, Jump_000_134a                          ; $75b2: $d2 $4a $13

    pop af                                        ; $75b5: $f1
    cp $76                                        ; $75b6: $fe $76

jr_043_75b8:
    or a                                          ; $75b8: $b7
    ld [bc], a                                    ; $75b9: $02
    cp [hl]                                       ; $75ba: $be
    rst $30                                       ; $75bb: $f7
    push de                                       ; $75bc: $d5
    ld b, h                                       ; $75bd: $44
    ld a, c                                       ; $75be: $79
    cp h                                          ; $75bf: $bc
    ld [hl], e                                    ; $75c0: $73
    ld h, e                                       ; $75c1: $63
    ld l, d                                       ; $75c2: $6a
    ld l, d                                       ; $75c3: $6a
    xor l                                         ; $75c4: $ad
    ld [hl], l                                    ; $75c5: $75
    ld b, [hl]                                    ; $75c6: $46
    ld [c], a                                     ; $75c7: $e2
    rst $38                                       ; $75c8: $ff
    set 5, e                                      ; $75c9: $cb $eb
    push af                                       ; $75cb: $f5
    ld e, a                                       ; $75cc: $5f
    ld hl, sp-$7b                                 ; $75cd: $f8 $85
    ld hl, sp+$29                                 ; $75cf: $f8 $29
    or e                                          ; $75d1: $b3
    push de                                       ; $75d2: $d5
    jp hl                                         ; $75d3: $e9


    ld d, d                                       ; $75d4: $52
    ei                                            ; $75d5: $fb
    call $f408                                    ; $75d6: $cd $08 $f4
    dec hl                                        ; $75d9: $2b
    db $ed                                        ; $75da: $ed
    jp $f3dc                                      ; $75db: $c3 $dc $f3


jr_043_75de:
    ret                                           ; $75de: $c9


    ld b, h                                       ; $75df: $44
    pop hl                                        ; $75e0: $e1
    and d                                         ; $75e1: $a2
    and c                                         ; $75e2: $a1
    jp nz, $97de                                  ; $75e3: $c2 $de $97

    adc $f0                                       ; $75e6: $ce $f0
    ld h, l                                       ; $75e8: $65
    add e                                         ; $75e9: $83
    ret nz                                        ; $75ea: $c0

    ld a, [bc]                                    ; $75eb: $0a
    xor l                                         ; $75ec: $ad
    ld b, c                                       ; $75ed: $41
    ld c, b                                       ; $75ee: $48
    ld [$c9e5], sp                                ; $75ef: $08 $e5 $c9
    rst $28                                       ; $75f2: $ef
    or h                                          ; $75f3: $b4
    rrca                                          ; $75f4: $0f
    ld [hl], e                                    ; $75f5: $73
    rst $08                                       ; $75f6: $cf
    daa                                           ; $75f7: $27
    inc de                                        ; $75f8: $13
    add l                                         ; $75f9: $85
    adc e                                         ; $75fa: $8b
    add [hl]                                      ; $75fb: $86
    ld a, [bc]                                    ; $75fc: $0a
    ld a, e                                       ; $75fd: $7b
    ld e, a                                       ; $75fe: $5f
    ld a, [hl-]                                   ; $75ff: $3a
    jp $0d97                                      ; $7600: $c3 $97 $0d


    ld [bc], a                                    ; $7603: $02
    db $fd                                        ; $7604: $fd
    ld a, [bc]                                    ; $7605: $0a
    sbc [hl]                                      ; $7606: $9e
    ld d, e                                       ; $7607: $53
    inc a                                         ; $7608: $3c
    db $fc                                        ; $7609: $fc
    ld a, a                                       ; $760a: $7f
    ld d, c                                       ; $760b: $51
    sbc a                                         ; $760c: $9f
    pop af                                        ; $760d: $f1
    ld a, d                                       ; $760e: $7a
    db $ed                                        ; $760f: $ed
    inc c                                         ; $7610: $0c
    or l                                          ; $7611: $b5
    ld d, [hl]                                    ; $7612: $56
    sbc [hl]                                      ; $7613: $9e
    ld d, e                                       ; $7614: $53
    ld a, $e4                                     ; $7615: $3e $e4
    sbc b                                         ; $7617: $98
    and c                                         ; $7618: $a1
    ldh a, [$d5]                                  ; $7619: $f0 $d5
    ld e, d                                       ; $761b: $5a
    ld bc, $521d                                  ; $761c: $01 $1d $52
    db $ec                                        ; $761f: $ec
    db $ed                                        ; $7620: $ed
    pop af                                        ; $7621: $f1
    add $e7                                       ; $7622: $c6 $e7
    ld h, [hl]                                    ; $7624: $66
    ld c, a                                       ; $7625: $4f
    ret z                                         ; $7626: $c8

    ld c, a                                       ; $7627: $4f
    ld b, c                                       ; $7628: $41
    or l                                          ; $7629: $b5
    jr jr_043_75de                                ; $762a: $18 $b2

    ret nz                                        ; $762c: $c0

    or d                                          ; $762d: $b2
    ccf                                           ; $762e: $3f
    push de                                       ; $762f: $d5
    ld l, e                                       ; $7630: $6b
    jp c, $a18d                                   ; $7631: $da $8d $a1

    ld c, a                                       ; $7634: $4f
    sbc l                                         ; $7635: $9d
    add e                                         ; $7636: $83
    or b                                          ; $7637: $b0
    rst $00                                       ; $7638: $c7
    ld l, a                                       ; $7639: $6f
    or [hl]                                       ; $763a: $b6
    xor c                                         ; $763b: $a9
    or l                                          ; $763c: $b5
    ld [bc], a                                    ; $763d: $02
    dec e                                         ; $763e: $1d
    jr nc, @+$61                                  ; $763f: $30 $5f

    push af                                       ; $7641: $f5
    add hl, hl                                    ; $7642: $29
    ld c, $9b                                     ; $7643: $0e $9b
    cp a                                          ; $7645: $bf
    ld c, a                                       ; $7646: $4f
    sbc l                                         ; $7647: $9d
    add e                                         ; $7648: $83
    or b                                          ; $7649: $b0
    rst $00                                       ; $764a: $c7
    ld l, a                                       ; $764b: $6f
    or [hl]                                       ; $764c: $b6
    xor c                                         ; $764d: $a9
    or l                                          ; $764e: $b5
    ld [bc], a                                    ; $764f: $02
    dec e                                         ; $7650: $1d
    ld d, d                                       ; $7651: $52
    db $ec                                        ; $7652: $ec
    db $ed                                        ; $7653: $ed
    pop af                                        ; $7654: $f1
    add $e7                                       ; $7655: $c6 $e7
    ld h, [hl]                                    ; $7657: $66
    ld c, a                                       ; $7658: $4f
    ld l, d                                       ; $7659: $6a
    db $e4                                        ; $765a: $e4
    inc h                                         ; $765b: $24
    inc h                                         ; $765c: $24
    ld b, h                                       ; $765d: $44
    dec e                                         ; $765e: $1d
    ld a, a                                       ; $765f: $7f
    ld a, $ad                                     ; $7660: $3e $ad
    inc [hl]                                      ; $7662: $34
    ld de, $6fef                                  ; $7663: $11 $ef $6f
    ld [hl], a                                    ; $7666: $77
    db $fd                                        ; $7667: $fd
    ld a, [bc]                                    ; $7668: $0a
    ld [hl], l                                    ; $7669: $75
    and a                                         ; $766a: $a7
    sub h                                         ; $766b: $94
    ret                                           ; $766c: $c9


    ld a, b                                       ; $766d: $78
    cp l                                          ; $766e: $bd
    halt                                          ; $766f: $76
    add $97                                       ; $7670: $c6 $97
    ld [hl-], a                                   ; $7672: $32
    ld a, e                                       ; $7673: $7b
    jp nc, Jump_000_134a                          ; $7674: $d2 $4a $13

    pop af                                        ; $7677: $f1
    cp $76                                        ; $7678: $fe $76
    or a                                          ; $767a: $b7
    ld [bc], a                                    ; $767b: $02
    xor l                                         ; $767c: $ad
    ld a, d                                       ; $767d: $7a
    cp l                                          ; $767e: $bd
    ld l, a                                       ; $767f: $6f
    adc b                                         ; $7680: $88
    rst $30                                       ; $7681: $f7
    sbc c                                         ; $7682: $99
    and a                                         ; $7683: $a7
    sub $0a                                       ; $7684: $d6 $0a
    ld [hl], l                                    ; $7686: $75
    ld b, [hl]                                    ; $7687: $46
    ld [c], a                                     ; $7688: $e2
    ld a, l                                       ; $7689: $7d
    rst $20                                       ; $768a: $e7
    xor $ab                                       ; $768b: $ee $ab
    adc c                                         ; $768d: $89
    inc sp                                        ; $768e: $33
    xor b                                         ; $768f: $a8
    db $e3                                        ; $7690: $e3
    ret                                           ; $7691: $c9


    ld b, a                                       ; $7692: $47
    ld d, b                                       ; $7693: $50
    ld a, [bc]                                    ; $7694: $0a
    sub l                                         ; $7695: $95
    jp hl                                         ; $7696: $e9


    ei                                            ; $7697: $fb
    ld a, $82                                     ; $7698: $3e $82
    xor d                                         ; $769a: $aa
    add d                                         ; $769b: $82
    ld c, h                                       ; $769c: $4c
    ld a, $54                                     ; $769d: $3e $54
    jp nc, $9d96                                  ; $769f: $d2 $96 $9d

    ld [hl], a                                    ; $76a2: $77
    ld b, h                                       ; $76a3: $44
    adc l                                         ; $76a4: $8d
    ld c, l                                       ; $76a5: $4d
    call $be15                                    ; $76a6: $cd $15 $be
    rla                                           ; $76a9: $17
    or [hl]                                       ; $76aa: $b6
    ld h, a                                       ; $76ab: $67
    cp $a8                                        ; $76ac: $fe $a8
    dec bc                                        ; $76ae: $0b
    sub l                                         ; $76af: $95
    rst $08                                       ; $76b0: $cf
    ld [hl], d                                    ; $76b1: $72
    cpl                                           ; $76b2: $2f
    db $fc                                        ; $76b3: $fc
    ld e, c                                       ; $76b4: $59
    inc c                                         ; $76b5: $0c
    dec b                                         ; $76b6: $05
    jp nz, Jump_043_49c8                          ; $76b7: $c2 $c8 $49

    sbc b                                         ; $76ba: $98
    ld [hl-], a                                   ; $76bb: $32
    ld c, a                                       ; $76bc: $4f
    ld l, [hl]                                    ; $76bd: $6e
    and a                                         ; $76be: $a7
    ld a, [de]                                    ; $76bf: $1a
    ld d, c                                       ; $76c0: $51
    and e                                         ; $76c1: $a3
    dec bc                                        ; $76c2: $0b
    push hl                                       ; $76c3: $e5
    db $db                                        ; $76c4: $db
    ld b, a                                       ; $76c5: $47
    inc h                                         ; $76c6: $24
    ld a, $7f                                     ; $76c7: $3e $7f
    ld e, [hl]                                    ; $76c9: $5e
    sbc h                                         ; $76ca: $9c
    rra                                           ; $76cb: $1f
    ld e, c                                       ; $76cc: $59
    ld h, b                                       ; $76cd: $60
    ld d, c                                       ; $76ce: $51
    ld b, a                                       ; $76cf: $47
    jp nz, $a5ca                                  ; $76d0: $c2 $ca $a5

    cp b                                          ; $76d3: $b8
    ld e, c                                       ; $76d4: $59
    ld l, $ea                                     ; $76d5: $2e $ea
    ld [hl+], a                                   ; $76d7: $22
    rst $08                                       ; $76d8: $cf
    call nc, Call_000_323e                        ; $76d9: $d4 $3e $32
    sub d                                         ; $76dc: $92
    ld [$73b5], a                                 ; $76dd: $ea $b5 $73
    rst $18                                       ; $76e0: $df
    xor a                                         ; $76e1: $af
    dec e                                         ; $76e2: $1d
    ld d, d                                       ; $76e3: $52
    inc d                                         ; $76e4: $14
    sbc [hl]                                      ; $76e5: $9e
    sbc h                                         ; $76e6: $9c
    ld l, b                                       ; $76e7: $68
    ld b, $75                                     ; $76e8: $06 $75
    db $10                                        ; $76ea: $10
    ld b, [hl]                                    ; $76eb: $46
    inc d                                         ; $76ec: $14
    ld c, b                                       ; $76ed: $48
    rrca                                          ; $76ee: $0f
    sub h                                         ; $76ef: $94
    ld [bc], a                                    ; $76f0: $02
    ld b, e                                       ; $76f1: $43
    ret c                                         ; $76f2: $d8

    sbc [hl]                                      ; $76f3: $9e
    ld sp, hl                                     ; $76f4: $f9
    ld a, c                                       ; $76f5: $79
    ld [c], a                                     ; $76f6: $e2
    ld b, [hl]                                    ; $76f7: $46
    or d                                          ; $76f8: $b2
    ccf                                           ; $76f9: $3f
    push de                                       ; $76fa: $d5
    sub a                                         ; $76fb: $97
    ld [hl], d                                    ; $76fc: $72
    push de                                       ; $76fd: $d5
    ld h, a                                       ; $76fe: $67
    ld sp, $20aa                                  ; $76ff: $31 $aa $20
    call nz, $e5d7                                ; $7702: $c4 $d7 $e5
    inc h                                         ; $7705: $24
    ld a, $f4                                     ; $7706: $3e $f4
    add l                                         ; $7708: $85
    daa                                           ; $7709: $27
    dec bc                                        ; $770a: $0b
    xor l                                         ; $770b: $ad
    ccf                                           ; $770c: $3f
    jr z, jr_043_7714                             ; $770d: $28 $05

    add [hl]                                      ; $770f: $86
    sub b                                         ; $7710: $90
    ret c                                         ; $7711: $d8

    sub b                                         ; $7712: $90
    add hl, hl                                    ; $7713: $29

jr_043_7714:
    db $d3                                        ; $7714: $d3
    xor a                                         ; $7715: $af
    ld [hl], l                                    ; $7716: $75
    rst $28                                       ; $7717: $ef
    add l                                         ; $7718: $85
    ccf                                           ; $7719: $3f
    ld e, a                                       ; $771a: $5f
    jp z, $d45f                                   ; $771b: $ca $5f $d4

    ld a, c                                       ; $771e: $79
    cp l                                          ; $771f: $bd
    or h                                          ; $7720: $b4
    cp h                                          ; $7721: $bc
    ld l, $de                                     ; $7722: $2e $de
    xor a                                         ; $7724: $af
    and [hl]                                      ; $7725: $a6
    ld a, h                                       ; $7726: $7c
    ld d, $58                                     ; $7727: $16 $58
    ld l, $0b                                     ; $7729: $2e $0b
    or $85                                        ; $772b: $f6 $85
    ld a, [de]                                    ; $772d: $1a
    sbc a                                         ; $772e: $9f
    ld a, e                                       ; $772f: $7b
    pop hl                                        ; $7730: $e1
    adc e                                         ; $7731: $8b
    di                                            ; $7732: $f3
    inc hl                                        ; $7733: $23
    adc $50                                       ; $7734: $ce $50
    call c, $a4c8                                 ; $7736: $dc $c8 $a4
    ret nc                                        ; $7739: $d0

    cp l                                          ; $773a: $bd
    sub c                                         ; $773b: $91
    ld b, d                                       ; $773c: $42
    ld de, $68ef                                  ; $773d: $11 $ef $68
    ei                                            ; $7740: $fb
    ret nc                                        ; $7741: $d0

    xor a                                         ; $7742: $af
    sbc [hl]                                      ; $7743: $9e
    inc hl                                        ; $7744: $23
    ld d, e                                       ; $7745: $53
    call c, $9e51                                 ; $7746: $dc $51 $9e
    cp h                                          ; $7749: $bc
    jr c, jr_043_778b                             ; $774a: $38 $3f

    ld [c], a                                     ; $774c: $e2
    and [hl]                                      ; $774d: $a6
    ld b, d                                       ; $774e: $42
    inc a                                         ; $774f: $3c
    sbc $f4                                       ; $7750: $de $f4
    or h                                          ; $7752: $b4
    ldh a, [$e4]                                  ; $7753: $f0 $e4
    ld c, l                                       ; $7755: $4d
    ld b, c                                       ; $7756: $41
    jr @+$20                                      ; $7757: $18 $1e

    cp d                                          ; $7759: $ba
    ldh a, [$6f]                                  ; $775a: $f0 $6f
    ld [hl], d                                    ; $775c: $72
    ld [hl], $7f                                  ; $775d: $36 $7f
    ld d, b                                       ; $775f: $50
    cp l                                          ; $7760: $bd
    ld a, h                                       ; $7761: $7c
    inc d                                         ; $7762: $14
    ld l, $e4                                     ; $7763: $2e $e4
    cpl                                           ; $7765: $2f
    ld h, e                                       ; $7766: $63
    sub a                                         ; $7767: $97
    inc de                                        ; $7768: $13
    rst $28                                       ; $7769: $ef
    ld a, l                                       ; $776a: $7d
    ld d, l                                       ; $776b: $55

Call_043_776c:
    cp l                                          ; $776c: $bd
    cp $f6                                        ; $776d: $fe $f6
    push af                                       ; $776f: $f5
    jp hl                                         ; $7770: $e9


    db $f4                                        ; $7771: $f4
    db $e3                                        ; $7772: $e3
    ld b, e                                       ; $7773: $43

jr_043_7774:
    ld c, a                                       ; $7774: $4f
    call nc, $ed85                                ; $7775: $d4 $85 $ed
    sbc c                                         ; $7778: $99
    sbc a                                         ; $7779: $9f
    daa                                           ; $777a: $27
    ld l, [hl]                                    ; $777b: $6e
    inc h                                         ; $777c: $24
    ei                                            ; $777d: $fb
    ld d, e                                       ; $777e: $53
    ld a, l                                       ; $777f: $7d
    add hl, hl                                    ; $7780: $29
    ld d, a                                       ; $7781: $57
    ld a, l                                       ; $7782: $7d
    ld d, $a3                                     ; $7783: $16 $a3
    ld a, [bc]                                    ; $7785: $0a
    ld b, d                                       ; $7786: $42

jr_043_7787:
    db $fc                                        ; $7787: $fc

Call_043_7788:
    ld a, [hl]                                    ; $7788: $7e
    dec b                                         ; $7789: $05
    ld l, l                                       ; $778a: $6d

jr_043_778b:
    sbc b                                         ; $778b: $98
    cp $53                                        ; $778c: $fe $53
    call $c9e6                                    ; $778e: $cd $e6 $c9
    ld d, a                                       ; $7791: $57
    ld l, a                                       ; $7792: $6f
    rra                                           ; $7793: $1f
    jp z, $8fb7                                   ; $7794: $ca $b7 $8f

    ld c, b                                       ; $7797: $48
    ld a, h                                       ; $7798: $7c
    cp $78                                        ; $7799: $fe $78
    ld c, a                                       ; $779b: $4f
    and d                                         ; $779c: $a2
    ld a, [hl]                                    ; $779d: $7e
    ld l, a                                       ; $779e: $6f
    adc a                                         ; $779f: $8f
    rla                                           ; $77a0: $17
    ld a, $e7                                     ; $77a1: $3e $e7
    ccf                                           ; $77a3: $3f
    xor [hl]                                      ; $77a4: $ae
    and a                                         ; $77a5: $a7
    ld e, a                                       ; $77a6: $5f
    ld bc, $8b6d                                  ; $77a7: $01 $6d $8b
    ld h, [hl]                                    ; $77aa: $66
    ld d, b                                       ; $77ab: $50
    rlca                                          ; $77ac: $07
    ld h, c                                       ; $77ad: $61
    and h                                         ; $77ae: $a4
    sbc d                                         ; $77af: $9a
    call Call_043_6593                            ; $77b0: $cd $93 $65
    jr @-$3c                                      ; $77b3: $18 $c2

    ret nc                                        ; $77b5: $d0

    and l                                         ; $77b6: $a5
    adc h                                         ; $77b7: $8c
    and [hl]                                      ; $77b8: $a6
    add c                                         ; $77b9: $81
    ld a, c                                       ; $77ba: $79
    and d                                         ; $77bb: $a2
    ld l, $d5                                     ; $77bc: $2e $d5
    ld l, h                                       ; $77be: $6c
    ld b, [hl]                                    ; $77bf: $46
    ld a, [bc]                                    ; $77c0: $0a
    ld e, l                                       ; $77c1: $5d
    ld h, b                                       ; $77c2: $60
    add l                                         ; $77c3: $85
    adc a                                         ; $77c4: $8f
    ld a, b                                       ; $77c5: $78
    inc hl                                        ; $77c6: $23
    rla                                           ; $77c7: $17
    add l                                         ; $77c8: $85
    ld c, e                                       ; $77c9: $4b
    ld l, e                                       ; $77ca: $6b
    xor a                                         ; $77cb: $af
    rst $10                                       ; $77cc: $d7
    cp a                                          ; $77cd: $bf
    ld e, h                                       ; $77ce: $5c
    cp a                                          ; $77cf: $bf
    ld [bc], a                                    ; $77d0: $02
    ld l, l                                       ; $77d1: $6d
    rst $28                                       ; $77d2: $ef
    or h                                          ; $77d3: $b4
    ld [hl], l                                    ; $77d4: $75
    halt                                          ; $77d5: $76
    ei                                            ; $77d6: $fb
    sbc l                                         ; $77d7: $9d
    sbc e                                         ; $77d8: $9b
    call nc, $9508                                ; $77d9: $d4 $08 $95
    sub b                                         ; $77dc: $90
    ret c                                         ; $77dd: $d8

    sub b                                         ; $77de: $90
    add hl, hl                                    ; $77df: $29
    ld d, a                                       ; $77e0: $57
    jp z, $9355                                   ; $77e1: $ca $55 $93

    ld [bc], a                                    ; $77e4: $02
    ld e, e                                       ; $77e5: $5b
    jr nz, jr_043_7774                            ; $77e6: $20 $8c

    cp h                                          ; $77e8: $bc
    rst $10                                       ; $77e9: $d7
    adc $bd                                       ; $77ea: $ce $bd
    ld c, h                                       ; $77ec: $4c
    sbc a                                         ; $77ed: $9f
    or $3e                                        ; $77ee: $f6 $3e
    add l                                         ; $77f0: $85
    ld a, [hl]                                    ; $77f1: $7e
    ld d, $ec                                     ; $77f2: $16 $ec
    adc l                                         ; $77f4: $8d
    jr z, jr_043_7787                             ; $77f5: $28 $90

    ld [$814a], sp                                ; $77f7: $08 $4a $81
    ld hl, $cef6                                  ; $77fa: $21 $f6 $ce
    call $cfe6                                    ; $77fd: $cd $e6 $cf
    ld d, l                                       ; $7800: $55
    dec d                                         ; $7801: $15
    call nc, Call_043_7f3d                        ; $7802: $d4 $3d $7f
    dec b                                         ; $7805: $05
    ld h, c                                       ; $7806: $61
    ld b, h                                       ; $7807: $44
    call $d932                                    ; $7808: $cd $32 $d9
    sbc a                                         ; $780b: $9f
    adc d                                         ; $780c: $8a
    ld a, [c]                                     ; $780d: $f2
    rst $30                                       ; $780e: $f7
    dec hl                                        ; $780f: $2b
    ld l, l                                       ; $7810: $6d
    db $ed                                        ; $7811: $ed
    srl e                                         ; $7812: $cb $3b
    cp d                                          ; $7814: $ba
    ld [hl], c                                    ; $7815: $71
    ld d, c                                       ; $7816: $51
    sub a                                         ; $7817: $97
    ld h, l                                       ; $7818: $65
    call z, Call_043_594d                         ; $7819: $cc $4d $59
    ld c, [hl]                                    ; $781c: $4e
    ld h, $65                                     ; $781d: $26 $65
    ld h, h                                       ; $781f: $64
    ld d, d                                       ; $7820: $52
    call $c9e6                                    ; $7821: $cd $e6 $c9
    db $eb                                        ; $7824: $eb
    push af                                       ; $7825: $f5
    inc hl                                        ; $7826: $23
    ld [$af85], a                                 ; $7827: $ea $85 $af
    adc a                                         ; $782a: $8f
    rst $28                                       ; $782b: $ef
    ret z                                         ; $782c: $c8

    call nz, $948d                                ; $782d: $c4 $8d $94
    ld d, e                                       ; $7830: $53
    or b                                          ; $7831: $b0
    rst $20                                       ; $7832: $e7
    ld c, e                                       ; $7833: $4b
    ld [hl], l                                    ; $7834: $75
    jp c, $b1be                                   ; $7835: $da $be $b1

    adc e                                         ; $7838: $8b
    rrca                                          ; $7839: $0f
    push bc                                       ; $783a: $c5
    sbc $17                                       ; $783b: $de $17
    rst $20                                       ; $783d: $e7
    ld b, a                                       ; $783e: $47
    ld h, h                                       ; $783f: $64
    inc h                                         ; $7840: $24
    cp $17                                        ; $7841: $fe $17
    sbc c                                         ; $7843: $99
    ld d, h                                       ; $7844: $54
    ld a, a                                       ; $7845: $7f
    ld sp, $e7b8                                  ; $7846: $31 $b8 $e7
    adc c                                         ; $7849: $89
    ld a, d                                       ; $784a: $7a
    sub c                                         ; $784b: $91
    bit 0, a                                      ; $784c: $cb $47
    ld d, b                                       ; $784e: $50
    ld a, [bc]                                    ; $784f: $0a
    sub l                                         ; $7850: $95
    jp hl                                         ; $7851: $e9


    ld d, a                                       ; $7852: $57
    dec e                                         ; $7853: $1d
    sbc l                                         ; $7854: $9d
    ld a, e                                       ; $7855: $7b
    ld a, [c]                                     ; $7856: $f2
    ld sp, hl                                     ; $7857: $f9
    and e                                         ; $7858: $a3
    ld a, [hl]                                    ; $7859: $7e
    ld l, a                                       ; $785a: $6f
    rrca                                          ; $785b: $0f
    sub h                                         ; $785c: $94
    ld [hl], d                                    ; $785d: $72
    adc $3d                                       ; $785e: $ce $3d
    pop af                                        ; $7860: $f1
    ld b, [hl]                                    ; $7861: $46
    db $10                                        ; $7862: $10
    add l                                         ; $7863: $85
    cp l                                          ; $7864: $bd
    ccf                                           ; $7865: $3f
    set 5, h                                      ; $7866: $cb $ec
    push hl                                       ; $7868: $e5
    and e                                         ; $7869: $a3
    ld l, $54                                     ; $786a: $2e $54
    ld a, $cb                                     ; $786c: $3e $cb
    dec c                                         ; $786e: $0d
    ld l, c                                       ; $786f: $69
    rst $18                                       ; $7870: $df
    rst $00                                       ; $7871: $c7
    rla                                           ; $7872: $17
    ld l, [hl]                                    ; $7873: $6e
    ld b, h                                       ; $7874: $44
    ld c, l                                       ; $7875: $4d
    ld a, h                                       ; $7876: $7c
    add sp, $0b                                   ; $7877: $e8 $0b
    ld c, a                                       ; $7879: $4f
    db $ec                                        ; $787a: $ec
    cp h                                          ; $787b: $bc
    or b                                          ; $787c: $b0
    db $e3                                        ; $787d: $e3
    pop de                                        ; $787e: $d1
    push hl                                       ; $787f: $e5
    ld l, c                                       ; $7880: $69
    dec b                                         ; $7881: $05
    pop hl                                        ; $7882: $e1
    rst $08                                       ; $7883: $cf
    cp $78                                        ; $7884: $fe $78
    rst $00                                       ; $7886: $c7
    adc b                                         ; $7887: $88
    rra                                           ; $7888: $1f
    add l                                         ; $7889: $85

jr_043_788a:
    cp l                                          ; $788a: $bd
    sub c                                         ; $788b: $91
    ld h, l                                       ; $788c: $65
    adc b                                         ; $788d: $88
    scf                                           ; $788e: $37
    ld [hl], d                                    ; $788f: $72
    db $fd                                        ; $7890: $fd
    ld a, [bc]                                    ; $7891: $0a
    ld l, l                                       ; $7892: $6d
    db $ed                                        ; $7893: $ed
    srl b                                         ; $7894: $cb $38
    rst $20                                       ; $7896: $e7
    cp a                                          ; $7897: $bf
    xor b                                         ; $7898: $a8
    adc e                                         ; $7899: $8b
    sbc e                                         ; $789a: $9b
    adc l                                         ; $789b: $8d
    ld h, c                                       ; $789c: $61
    add [hl]                                      ; $789d: $86
    ld c, l                                       ; $789e: $4d
    jp z, Jump_043_64c8                           ; $789f: $ca $c8 $64

    sbc b                                         ; $78a2: $98
    xor a                                         ; $78a3: $af
    cp d                                          ; $78a4: $ba
    cp b                                          ; $78a5: $b8
    xor c                                         ; $78a6: $a9
    sub b                                         ; $78a7: $90
    inc de                                        ; $78a8: $13
    call $0ea0                                    ; $78a9: $cd $a0 $0e
    jp nz, $0597                                  ; $78ac: $c2 $97 $05

    sub [hl]                                      ; $78af: $96
    adc l                                         ; $78b0: $8d
    inc l                                         ; $78b1: $2c
    ld b, e                                       ; $78b2: $43
    cp h                                          ; $78b3: $bc
    sub c                                         ; $78b4: $91
    db $eb                                        ; $78b5: $eb
    ld d, a                                       ; $78b6: $57
    ld l, l                                       ; $78b7: $6d
    ld b, a                                       ; $78b8: $47
    ld a, a                                       ; $78b9: $7f
    ld l, [hl]                                    ; $78ba: $6e
    ld c, h                                       ; $78bb: $4c
    ld l, $65                                     ; $78bc: $2e $65
    ld h, h                                       ; $78be: $64
    or d                                          ; $78bf: $b2
    ret nz                                        ; $78c0: $c0

    adc $cd                                       ; $78c1: $ce $cd
    sbc [hl]                                      ; $78c3: $9e
    add d                                         ; $78c4: $82
    jr c, jr_043_788a                             ; $78c5: $38 $c3

    inc sp                                        ; $78c7: $33
    dec [hl]                                      ; $78c8: $35
    and h                                         ; $78c9: $a4
    ld a, d                                       ; $78ca: $7a
    db $ed                                        ; $78cb: $ed
    sbc h                                         ; $78cc: $9c
    rra                                           ; $78cd: $1f
    ld a, l                                       ; $78ce: $7d
    inc a                                         ; $78cf: $3c
    cp a                                          ; $78d0: $bf
    jp nc, $cbdf                                  ; $78d1: $d2 $df $cb

    db $e4                                        ; $78d4: $e4
    ld [c], a                                     ; $78d5: $e2
    add $e4                                       ; $78d6: $c6 $e4
    ld [hl-], a                                   ; $78d8: $32
    sbc d                                         ; $78d9: $9a
    ld e, h                                       ; $78da: $5c
    ld e, [hl]                                    ; $78db: $5e
    ld h, h                                       ; $78dc: $64
    ld e, d                                       ; $78dd: $5a
    adc d                                         ; $78de: $8a
    rrca                                          ; $78df: $0f
    ld b, l                                       ; $78e0: $45
    pop hl                                        ; $78e1: $e1
    dec bc                                        ; $78e2: $0b
    ld sp, hl                                     ; $78e3: $f9
    ld [hl+], a                                   ; $78e4: $22
    inc de                                        ; $78e5: $13
    ld a, e                                       ; $78e6: $7b
    rst $20                                       ; $78e7: $e7
    ld h, [hl]                                    ; $78e8: $66
    di                                            ; $78e9: $f3
    push bc                                       ; $78ea: $c5
    add a                                         ; $78eb: $87
    cp [hl]                                       ; $78ec: $be
    xor b                                         ; $78ed: $a8
    ret                                           ; $78ee: $c9


    or $78                                        ; $78ef: $f6 $78
    cp c                                          ; $78f1: $b9
    ld [$2237], a                                 ; $78f2: $ea $37 $22
    inc hl                                        ; $78f5: $23
    pop de                                        ; $78f6: $d1
    add sp, -$65                                  ; $78f7: $e8 $9b
    ld a, [$057e]                                 ; $78f9: $fa $7e $05
    sbc l                                         ; $78fc: $9d
    ld c, b                                       ; $78fd: $48
    ld c, [hl]                                    ; $78fe: $4e

Jump_043_78ff:
    inc [hl]                                      ; $78ff: $34
    add e                                         ; $7900: $83

Call_043_7901:
    ld a, [hl-]                                   ; $7901: $3a
    ld [$5f23], sp                                ; $7902: $08 $23 $5f
    dec l                                         ; $7905: $2d
    rst $30                                       ; $7906: $f7
    dec d                                         ; $7907: $15
    add h                                         ; $7908: $84
    ld de, $b7ca                                  ; $7909: $11 $ca $b7
    adc a                                         ; $790c: $8f
    ld c, b                                       ; $790d: $48
    ld a, h                                       ; $790e: $7c
    sbc [hl]                                      ; $790f: $9e
    ld a, $2d                                     ; $7910: $3e $2d
    rst $20                                       ; $7912: $e7
    xor d                                         ; $7913: $aa
    ld h, l                                       ; $7914: $65
    adc h                                         ; $7915: $8c
    ld e, a                                       ; $7916: $5f
    jr @+$73                                      ; $7917: $18 $71

    ld a, [hl]                                    ; $7919: $7e
    ld b, h                                       ; $791a: $44
    ld b, [hl]                                    ; $791b: $46
    or d                                          ; $791c: $b2
    ret c                                         ; $791d: $d8

    sub b                                         ; $791e: $90
    db $10                                        ; $791f: $10
    db $ed                                        ; $7920: $ed
    and e                                         ; $7921: $a3
    ld a, $54                                     ; $7922: $3e $54
    ld d, d                                       ; $7924: $52
    ld h, b                                       ; $7925: $60
    dec bc                                        ; $7926: $0b
    add h                                         ; $7927: $84
    ld de, $1b12                                  ; $7928: $11 $12 $1b
    ld [hl-], a                                   ; $792b: $32
    ld h, l                                       ; $792c: $65
    ld a, [$ed15]                                 ; $792d: $fa $15 $ed
    ld hl, $81cb                                  ; $7930: $21 $cb $81
    dec c                                         ; $7933: $0d
    pop de                                        ; $7934: $d1
    add e                                         ; $7935: $83
    jr c, jr_043_79a7                             ; $7936: $38 $6f

    add hl, hl                                    ; $7938: $29
    rla                                           ; $7939: $17
    dec c                                         ; $793a: $0d
    ld [bc], a                                    ; $793b: $02
    ld a, e                                       ; $793c: $7b
    sbc c                                         ; $793d: $99
    db $fc                                        ; $793e: $fc
    sbc $1e                                       ; $793f: $de $1e
    daa                                           ; $7941: $27
    inc c                                         ; $7942: $0c
    sub e                                         ; $7943: $93
    adc c                                         ; $7944: $89
    jp nz, $1ede                                  ; $7945: $c2 $de $1e

    cp a                                          ; $7948: $bf
    inc l                                         ; $7949: $2c
    ld l, a                                       ; $794a: $6f
    rst $08                                       ; $794b: $cf
    inc de                                        ; $794c: $13
    ld [hl], l                                    ; $794d: $75
    ld a, [de]                                    ; $794e: $1a
    inc c                                         ; $794f: $0c
    jp nz, $c288                                  ; $7950: $c2 $88 $c2

    sbc $88                                       ; $7953: $de $88
    ei                                            ; $7955: $fb
    push bc                                       ; $7956: $c5
    ret nc                                        ; $7957: $d0

    and a                                         ; $7958: $a7
    or $8b                                        ; $7959: $f6 $8b
    ld c, h                                       ; $795b: $4c

jr_043_795c:
    or $c7                                        ; $795c: $f6 $c7
    cp l                                          ; $795e: $bd
    dec a                                         ; $795f: $3d
    inc sp                                        ; $7960: $33
    db $ec                                        ; $7961: $ec
    ld a, [bc]                                    ; $7962: $0a
    sbc a                                         ; $7963: $9f
    ei                                            ; $7964: $fb
    xor b                                         ; $7965: $a8
    adc e                                         ; $7966: $8b
    add b                                         ; $7967: $80
    or d                                          ; $7968: $b2
    db $fd                                        ; $7969: $fd
    ld a, $22                                     ; $796a: $3e $22
    pop af                                        ; $796c: $f1
    dec c                                         ; $796d: $0d
    reti                                          ; $796e: $d9


    ret z                                         ; $796f: $c8

    ld [hl-], a                                   ; $7970: $32
    call nz, $b91b                                ; $7971: $c4 $1b $b9
    ld a, [hl]                                    ; $7974: $7e
    dec b                                         ; $7975: $05
    db $ed                                        ; $7976: $ed
    rst $08                                       ; $7977: $cf
    and $89                                       ; $7978: $e6 $89
    cp l                                          ; $797a: $bd
    adc l                                         ; $797b: $8d
    ld l, $ea                                     ; $797c: $2e $ea
    ld [hl], a                                    ; $797e: $77
    xor d                                         ; $797f: $aa
    xor c                                         ; $7980: $a9
    jr nz, jr_043_79bf                            ; $7981: $20 $3c

    ld [hl], c                                    ; $7983: $71
    ld a, [hl]                                    ; $7984: $7e
    call nz, $8a19                                ; $7985: $c4 $19 $8a
    ld b, e                                       ; $7988: $43
    jp z, $49ec                                   ; $7989: $ca $ec $49

    and c                                         ; $798c: $a1
    jp c, Jump_043_50be                           ; $798d: $da $be $50

    add hl, sp                                    ; $7990: $39
    scf                                           ; $7991: $37
    ld h, $97                                     ; $7992: $26 $97
    push hl                                       ; $7994: $e5
    ld a, [de]                                    ; $7995: $1a
    ret z                                         ; $7996: $c8

    dec bc                                        ; $7997: $0b
    sbc a                                         ; $7998: $9f
    di                                            ; $7999: $f3
    ld e, a                                       ; $799a: $5f
    db $10                                        ; $799b: $10
    ld a, [c]                                     ; $799c: $f2
    jr nz, jr_043_79e7                            ; $799d: $20 $48

    ld b, l                                       ; $799f: $45
    ld sp, hl                                     ; $79a0: $f9
    ld a, c                                       ; $79a1: $79
    ld d, d                                       ; $79a2: $52
    call $89e6                                    ; $79a3: $cd $e6 $89
    cp l                                          ; $79a6: $bd

jr_043_79a7:
    ld a, l                                       ; $79a7: $7d
    dec b                                         ; $79a8: $05
    ld h, c                                       ; $79a9: $61
    db $f4                                        ; $79aa: $f4
    dec hl                                        ; $79ab: $2b
    ld l, l                                       ; $79ac: $6d
    sbc b                                         ; $79ad: $98
    cp $63                                        ; $79ae: $fe $63
    ld l, a                                       ; $79b0: $6f
    rra                                           ; $79b1: $1f
    rst $20                                       ; $79b2: $e7
    ld b, a                                       ; $79b3: $47
    sbc h                                         ; $79b4: $9c
    and c                                         ; $79b5: $a1
    jr c, jr_043_795c                             ; $79b6: $38 $a4

    call z, Call_000_089e                         ; $79b8: $cc $9e $08
    or $46                                        ; $79bb: $f6 $46
    sbc $80                                       ; $79bd: $de $80

jr_043_79bf:
    ret c                                         ; $79bf: $d8

    jr c, @+$79                                   ; $79c0: $38 $77

    ld d, e                                       ; $79c2: $53
    ret nc                                        ; $79c3: $d0

    rst $00                                       ; $79c4: $c7
    rla                                           ; $79c5: $17
    sub l                                         ; $79c6: $95
    sbc $3e                                       ; $79c7: $de $3e
    adc $8f                                       ; $79c9: $ce $8f
    sub h                                         ; $79cb: $94
    ei                                            ; $79cc: $fb
    sbc h                                         ; $79cd: $9c
    ld b, h                                       ; $79ce: $44
    or e                                          ; $79cf: $b3
    ld d, a                                       ; $79d0: $57
    inc de                                        ; $79d1: $13
    ld [hl], l                                    ; $79d2: $75
    and c                                         ; $79d3: $a1
    adc $9d                                       ; $79d4: $ce $9d
    add d                                         ; $79d6: $82
    ld hl, $4d97                                  ; $79d7: $21 $97 $4d
    sub a                                         ; $79da: $97
    ld c, e                                       ; $79db: $4b
    push af                                       ; $79dc: $f5
    ld [hl+], a                                   ; $79dd: $22
    ld l, a                                       ; $79de: $6f
    rst $10                                       ; $79df: $d7
    xor a                                         ; $79e0: $af
    dec e                                         ; $79e1: $1d
    ld l, b                                       ; $79e2: $68
    jp c, $5ca5                                   ; $79e3: $da $a5 $5c

    ret c                                         ; $79e6: $d8

jr_043_79e7:
    add [hl]                                      ; $79e7: $86
    db $fc                                        ; $79e8: $fc
    sub h                                         ; $79e9: $94
    reti                                          ; $79ea: $d9


    sub e                                         ; $79eb: $93
    sub e                                         ; $79ec: $93
    ld a, h                                       ; $79ed: $7c
    and l                                         ; $79ee: $a5
    ccf                                           ; $79ef: $3f
    ld [$0a5f], sp                                ; $79f0: $08 $5f $0a
    ld [hl], $f9                                  ; $79f3: $36 $f9
    ld a, h                                       ; $79f5: $7c
    xor $fa                                       ; $79f6: $ee $fa
    or h                                          ; $79f8: $b4
    dec e                                         ; $79f9: $1d
    rst $28                                       ; $79fa: $ef
    adc l                                         ; $79fb: $8d
    ld e, l                                       ; $79fc: $5d
    jp z, $84c8                                   ; $79fd: $ca $c8 $84

    sub [hl]                                      ; $7a00: $96
    rst $20                                       ; $7a01: $e7
    adc e                                         ; $7a02: $8b
    sbc e                                         ; $7a03: $9b
    ld a, [bc]                                    ; $7a04: $0a
    add hl, sp                                    ; $7a05: $39
    pop de                                        ; $7a06: $d1
    inc c                                         ; $7a07: $0c
    ld [$7c20], a                                 ; $7a08: $ea $20 $7c
    ld e, c                                       ; $7a0b: $59
    ld h, b                                       ; $7a0c: $60
    reti                                          ; $7a0d: $d9


    ret z                                         ; $7a0e: $c8

    ld [hl-], a                                   ; $7a0f: $32
    call nz, Call_000_391b                        ; $7a10: $c4 $1b $39
    ld e, l                                       ; $7a13: $5d
    ld a, [hl+]                                   ; $7a14: $2a
    ld [$b21b], sp                                ; $7a15: $08 $1b $b2
    ld de, $68ef                                  ; $7a18: $11 $ef $68
    ei                                            ; $7a1b: $fb
    sub b                                         ; $7a1c: $90
    ld [hl-], a                                   ; $7a1d: $32
    ld [hl-], a                                   ; $7a1e: $32
    pop hl                                        ; $7a1f: $e1
    add hl, hl                                    ; $7a20: $29
    push hl                                       ; $7a21: $e5
    sbc h                                         ; $7a22: $9c
    rra                                           ; $7a23: $1f
    db $fd                                        ; $7a24: $fd
    ld a, [bc]                                    ; $7a25: $0a
    or l                                          ; $7a26: $b5
    ld d, c                                       ; $7a27: $51
    ld d, $58                                     ; $7a28: $16 $58
    ld a, h                                       ; $7a2a: $7c
    ld sp, hl                                     ; $7a2b: $f9
    xor l                                         ; $7a2c: $ad
    ld e, e                                       ; $7a2d: $5b
    db $10                                        ; $7a2e: $10
    ld e, b                                       ; $7a2f: $58
    ld bc, $df75                                  ; $7a30: $01 $75 $df
    sbc $61                                       ; $7a33: $de $61
    sub a                                         ; $7a35: $97
    ld e, c                                       ; $7a36: $59
    ld bc, $9aad                                  ; $7a37: $01 $ad $9a
    di                                            ; $7a3a: $f3
    sbc a                                         ; $7a3b: $9f
    cp $b7                                        ; $7a3c: $fe $b7
    ld c, d                                       ; $7a3e: $4a
    xor e                                         ; $7a3f: $ab
    ld e, e                                       ; $7a40: $5b
    pop bc                                        ; $7a41: $c1
    ld a, b                                       ; $7a42: $78
    ld h, h                                       ; $7a43: $64
    dec b                                         ; $7a44: $05
    ld l, l                                       ; $7a45: $6d
    db $ec                                        ; $7a46: $ec
    db $fd                                        ; $7a47: $fd
    ld l, d                                       ; $7a48: $6a
    db $ec                                        ; $7a49: $ec
    db $d3                                        ; $7a4a: $d3
    ld l, $98                                     ; $7a4b: $2e $98
    ld h, c                                       ; $7a4d: $61
    and a                                         ; $7a4e: $a7
    inc [hl]                                      ; $7a4f: $34
    xor h                                         ; $7a50: $ac
    ld l, l                                       ; $7a51: $6d
    ld a, l                                       ; $7a52: $7d
    ld e, c                                       ; $7a53: $59
    sbc $54                                       ; $7a54: $de $54
    ld a, h                                       ; $7a56: $7c
    db $fd                                        ; $7a57: $fd
    daa                                           ; $7a58: $27
    jp c, $8f06                                   ; $7a59: $da $06 $8f

    xor h                                         ; $7a5c: $ac
    ld l, l                                       ; $7a5d: $6d
    db $ed                                        ; $7a5e: $ed
    ld hl, $a961                                  ; $7a5f: $21 $61 $a9
    ld a, l                                       ; $7a62: $7d
    ld c, e                                       ; $7a63: $4b
    ld [hl], a                                    ; $7a64: $77
    ld h, e                                       ; $7a65: $63
    db $ec                                        ; $7a66: $ec
    ld e, a                                       ; $7a67: $5f
    ld bc, $196d                                  ; $7a68: $01 $6d $19
    or h                                          ; $7a6b: $b4
    ld sp, $b902                                  ; $7a6c: $31 $02 $b9
    sbc l                                         ; $7a6f: $9d
    ld c, [hl]                                    ; $7a70: $4e
    xor a                                         ; $7a71: $af
    cp b                                          ; $7a72: $b8
    ld d, e                                       ; $7a73: $53
    or e                                          ; $7a74: $b3
    ld [bc], a                                    ; $7a75: $02
    db $ed                                        ; $7a76: $ed
    dec a                                         ; $7a77: $3d
    add hl, bc                                    ; $7a78: $09
    inc de                                        ; $7a79: $13
    and h                                         ; $7a7a: $a4
    ld [hl], l                                    ; $7a7b: $75
    or h                                          ; $7a7c: $b4
    ccf                                           ; $7a7d: $3f
    jp nz, Jump_000_18d5                          ; $7a7e: $c2 $d5 $18

    call nz, Call_043_5811                        ; $7a81: $c4 $11 $58
    ld bc, $6b6d                                  ; $7a84: $01 $6d $6b
    ld a, [c]                                     ; $7a87: $f2
    ld a, h                                       ; $7a88: $7c
    sbc a                                         ; $7a89: $9f
    adc $6e                                       ; $7a8a: $ce $6e
    xor e                                         ; $7a8c: $ab
    ld d, d                                       ; $7a8d: $52
    dec e                                         ; $7a8e: $1d
    ei                                            ; $7a8f: $fb
    ld d, a                                       ; $7a90: $57
    cp [hl]                                       ; $7a91: $be
    rst $28                                       ; $7a92: $ef
    db $fc                                        ; $7a93: $fc
    ld l, a                                       ; $7a94: $6f
    ld d, a                                       ; $7a95: $57
    jp z, Jump_043_63a7                           ; $7a96: $ca $a7 $63

    xor d                                         ; $7a99: $aa
    ld [hl], l                                    ; $7a9a: $75
    scf                                           ; $7a9b: $37
    and e                                         ; $7a9c: $a3
    ld d, [hl]                                    ; $7a9d: $56
    ld l, l                                       ; $7a9e: $6d
    db $ed                                        ; $7a9f: $ed
    sub a                                         ; $7aa0: $97
    ld l, d                                       ; $7aa1: $6a
    inc c                                         ; $7aa2: $0c
    xor c                                         ; $7aa3: $a9
    adc e                                         ; $7aa4: $8b

Call_043_7aa5:
    rst $28                                       ; $7aa5: $ef
    ld d, $65                                     ; $7aa6: $16 $65
    dec b                                         ; $7aa8: $05
    xor l                                         ; $7aa9: $ad
    db $fd                                        ; $7aaa: $fd
    or $0e                                        ; $7aab: $f6 $0e
    or l                                          ; $7aad: $b5
    or h                                          ; $7aae: $b4
    or [hl]                                       ; $7aaf: $b6
    ld e, a                                       ; $7ab0: $5f
    or b                                          ; $7ab1: $b0
    ld [bc], a                                    ; $7ab2: $02
    ld l, l                                       ; $7ab3: $6d
    ld h, d                                       ; $7ab4: $62
    ld e, a                                       ; $7ab5: $5f
    rst $30                                       ; $7ab6: $f7
    pop af                                        ; $7ab7: $f1
    and l                                         ; $7ab8: $a5
    ld d, l                                       ; $7ab9: $55
    dec b                                         ; $7aba: $05
    db $d3                                        ; $7abb: $d3
    inc bc                                        ; $7abc: $03

jr_043_7abd:
    dec hl                                        ; $7abd: $2b
    ld l, l                                       ; $7abe: $6d
    add hl, de                                    ; $7abf: $19
    ld hl, sp-$1d                                 ; $7ac0: $f8 $e3
    ld sp, hl                                     ; $7ac2: $f9
    db $ec                                        ; $7ac3: $ec
    db $fc                                        ; $7ac4: $fc
    ld a, e                                       ; $7ac5: $7b
    ld c, b                                       ; $7ac6: $48
    xor h                                         ; $7ac7: $ac
    or l                                          ; $7ac8: $b5
    ld b, a                                       ; $7ac9: $47
    add $ee                                       ; $7aca: $c6 $ee
    sub e                                         ; $7acc: $93
    ld a, [hl-]                                   ; $7acd: $3a
    sub h                                         ; $7ace: $94
    db $dd                                        ; $7acf: $dd
    ld d, h                                       ; $7ad0: $54
    ld a, d                                       ; $7ad1: $7a
    xor h                                         ; $7ad2: $ac
    ld l, l                                       ; $7ad3: $6d
    sbc l                                         ; $7ad4: $9d
    rst $10                                       ; $7ad5: $d7
    dec sp                                        ; $7ad6: $3b
    and [hl]                                      ; $7ad7: $a6
    jp nc, $dec1                                  ; $7ad8: $d2 $c1 $de

    jr nc, jr_043_7afb                            ; $7adb: $30 $1e

    ld e, c                                       ; $7add: $59
    ld bc, $8ced                                  ; $7ade: $01 $ed $8c
    and e                                         ; $7ae1: $a3
    and d                                         ; $7ae2: $a2
    ld a, $be                                     ; $7ae3: $3e $be
    inc b                                         ; $7ae5: $04
    cp d                                          ; $7ae6: $ba
    ld b, l                                       ; $7ae7: $45
    ld e, c                                       ; $7ae8: $59
    ld bc, $d21d                                  ; $7ae9: $01 $1d $d2
    ld de, $752d                                  ; $7aec: $11 $2d $75
    ld h, a                                       ; $7aef: $67
    dec b                                         ; $7af0: $05
    xor l                                         ; $7af1: $ad
    adc a                                         ; $7af2: $8f
    cp c                                          ; $7af3: $b9
    cpl                                           ; $7af4: $2f
    jp hl                                         ; $7af5: $e9


    inc c                                         ; $7af6: $0c
    ld a, e                                       ; $7af7: $7b
    db $eb                                        ; $7af8: $eb
    or c                                          ; $7af9: $b1
    add a                                         ; $7afa: $87

jr_043_7afb:
    add h                                         ; $7afb: $84
    ld e, d                                       ; $7afc: $5a
    ld bc, $c3ed                                  ; $7afd: $01 $ed $c3
    cp d                                          ; $7b00: $ba
    inc hl                                        ; $7b01: $23
    jr nz, jr_043_7abd                            ; $7b02: $20 $b9

    sbc l                                         ; $7b04: $9d
    or $7f                                        ; $7b05: $f6 $7f
    sub e                                         ; $7b07: $93
    xor a                                         ; $7b08: $af
    db $dd                                        ; $7b09: $dd
    xor h                                         ; $7b0a: $ac
    ld l, l                                       ; $7b0b: $6d
    ld a, $7f                                     ; $7b0c: $3e $7f
    jp c, $d31f                                   ; $7b0e: $da $1f $d3

    ld e, [hl]                                    ; $7b11: $5e
    ld a, [hl]                                    ; $7b12: $7e
    dec b                                         ; $7b13: $05
    sbc [hl]                                      ; $7b14: $9e
    halt                                          ; $7b15: $76
    ld h, l                                       ; $7b16: $65
    add hl, sp                                    ; $7b17: $39
    adc c                                         ; $7b18: $89
    and a                                         ; $7b19: $a7
    adc l                                         ; $7b1a: $8d
    ld [hl], h                                    ; $7b1b: $74
    cp e                                          ; $7b1c: $bb
    ld [bc], a                                    ; $7b1d: $02
    ld l, l                                       ; $7b1e: $6d
    or b                                          ; $7b1f: $b0
    rra                                           ; $7b20: $1f
    db $db                                        ; $7b21: $db
    and b                                         ; $7b22: $a0
    ld [hl], d                                    ; $7b23: $72
    dec sp                                        ; $7b24: $3b
    cp [hl]                                       ; $7b25: $be
    xor b                                         ; $7b26: $a8
    ld d, $c3                                     ; $7b27: $16 $c3
    ld h, d                                       ; $7b29: $62
    inc hl                                        ; $7b2a: $23
    inc a                                         ; $7b2b: $3c
    dec hl                                        ; $7b2c: $2b
    xor l                                         ; $7b2d: $ad
    pop hl                                        ; $7b2e: $e1
    reti                                          ; $7b2f: $d9


    xor [hl]                                      ; $7b30: $ae
    ei                                            ; $7b31: $fb
    or h                                          ; $7b32: $b4
    or [hl]                                       ; $7b33: $b6
    and a                                         ; $7b34: $a7
    ei                                            ; $7b35: $fb
    xor a                                         ; $7b36: $af
    ld d, [hl]                                    ; $7b37: $56
    xor l                                         ; $7b38: $ad
    ld l, [hl]                                    ; $7b39: $6e
    dec a                                         ; $7b3a: $3d
    adc h                                         ; $7b3b: $8c
    ccf                                           ; $7b3c: $3f
    dec e                                         ; $7b3d: $1d
    rst $08                                       ; $7b3e: $cf
    or b                                          ; $7b3f: $b0
    rst $38                                       ; $7b40: $ff
    or $5e                                        ; $7b41: $f6 $5e
    ld bc, $3f9d                                  ; $7b43: $01 $9d $3f
    ld a, c                                       ; $7b46: $79
    or b                                          ; $7b47: $b0
    ld [hl], h                                    ; $7b48: $74

jr_043_7b49:
    db $f4                                        ; $7b49: $f4
    add l                                         ; $7b4a: $85
    db $ed                                        ; $7b4b: $ed
    ld e, h                                       ; $7b4c: $5c
    or a                                          ; $7b4d: $b7
    dec hl                                        ; $7b4e: $2b
    ld e, l                                       ; $7b4f: $5d
    cp h                                          ; $7b50: $bc
    xor c                                         ; $7b51: $a9
    dec c                                         ; $7b52: $0d
    ld [bc], a                                    ; $7b53: $02
    xor c                                         ; $7b54: $a9
    cp e                                          ; $7b55: $bb
    sbc a                                         ; $7b56: $9f
    ld a, c                                       ; $7b57: $79
    dec b                                         ; $7b58: $05
    xor l                                         ; $7b59: $ad
    inc de                                        ; $7b5a: $13
    xor b                                         ; $7b5b: $a8
    ld d, $bf                                     ; $7b5c: $16 $bf
    ld a, h                                       ; $7b5e: $7c
    jp c, $56a4                                   ; $7b5f: $da $a4 $56

    cp l                                          ; $7b62: $bd
    add [hl]                                      ; $7b63: $86
    dec d                                         ; $7b64: $15
    ld l, l                                       ; $7b65: $6d
    jp nc, $87ad                                  ; $7b66: $d2 $ad $87

    ld [hl], c                                    ; $7b69: $71
    ld l, [hl]                                    ; $7b6a: $6e
    and a                                         ; $7b6b: $a7
    db $e3                                        ; $7b6c: $e3
    xor e                                         ; $7b6d: $ab
    add $a6                                       ; $7b6e: $c6 $a6
    call z, Call_043_6d0a                         ; $7b70: $cc $0a $6d
    ld d, c                                       ; $7b73: $51
    adc b                                         ; $7b74: $88
    ld a, [$f27d]                                 ; $7b75: $fa $7d $f2
    reti                                          ; $7b78: $d9


    sbc a                                         ; $7b79: $9f
    or [hl]                                       ; $7b7a: $b6
    jr z, jr_043_7b49                             ; $7b7b: $28 $cc

    db $dd                                        ; $7b7d: $dd
    xor a                                         ; $7b7e: $af
    dec e                                         ; $7b7f: $1d
    rst $18                                       ; $7b80: $df
    sbc $04                                       ; $7b81: $de $04
    jp nc, Jump_043_74f1                          ; $7b83: $d2 $f1 $74

    adc e                                         ; $7b86: $8b
    dec d                                         ; $7b87: $15
    sbc [hl]                                      ; $7b88: $9e
    ld l, a                                       ; $7b89: $6f
    ld a, e                                       ; $7b8a: $7b
    sbc b                                         ; $7b8b: $98
    ccf                                           ; $7b8c: $3f
    ld [hl], l                                    ; $7b8d: $75
    ld c, a                                       ; $7b8e: $4f
    cp d                                          ; $7b8f: $ba
    dec l                                         ; $7b90: $2d
    inc a                                         ; $7b91: $3c
    add d                                         ; $7b92: $82
    dec d                                         ; $7b93: $15
    ld l, l                                       ; $7b94: $6d
    jr z, @-$11                                   ; $7b95: $28 $ed

    dec l                                         ; $7b97: $2d
    cp [hl]                                       ; $7b98: $be
    ld l, h                                       ; $7b99: $6c
    ld b, e                                       ; $7b9a: $43
    or a                                          ; $7b9b: $b7
    ld b, $5b                                     ; $7b9c: $06 $5b
    ld bc, $9fb5                                  ; $7b9e: $01 $b5 $9f
    call nz, $d71e                                ; $7ba1: $c4 $1e $d7
    ld l, l                                       ; $7ba4: $6d
    ld a, h                                       ; $7ba5: $7c
    cp e                                          ; $7ba6: $bb
    inc bc                                        ; $7ba7: $03
    ld hl, sp+$44                                 ; $7ba8: $f8 $44
    ld e, e                                       ; $7baa: $5b
    ld bc, $ee6d                                  ; $7bab: $01 $6d $ee

jr_043_7bae:
    daa                                           ; $7bae: $27
    adc a                                         ; $7baf: $8f
    sub [hl]                                      ; $7bb0: $96
    or h                                          ; $7bb1: $b4
    add [hl]                                      ; $7bb2: $86
    xor l                                         ; $7bb3: $ad
    daa                                           ; $7bb4: $27
    or b                                          ; $7bb5: $b0
    ld [bc], a                                    ; $7bb6: $02
    db $ed                                        ; $7bb7: $ed
    ret nc                                        ; $7bb8: $d0

    jp nz, $a4b4                                  ; $7bb9: $c2 $b4 $a4

    xor $ed                                       ; $7bbc: $ee $ed
    ld a, l                                       ; $7bbe: $7d
    db $dd                                        ; $7bbf: $dd
    sbc l                                         ; $7bc0: $9d
    db $eb                                        ; $7bc1: $eb
    halt                                          ; $7bc2: $76
    ld h, e                                       ; $7bc3: $63
    dec b                                         ; $7bc4: $05
    ld [hl], l                                    ; $7bc5: $75
    add $48                                       ; $7bc6: $c6 $48
    db $ec                                        ; $7bc8: $ec
    ld [hl], h                                    ; $7bc9: $74
    call c, $48dd                                 ; $7bca: $dc $dd $48
    or a                                          ; $7bcd: $b7
    dec hl                                        ; $7bce: $2b
    dec e                                         ; $7bcf: $1d
    sub h                                         ; $7bd0: $94
    xor $7e                                       ; $7bd1: $ee $7e
    xor e                                         ; $7bd3: $ab
    or h                                          ; $7bd4: $b4
    add [hl]                                      ; $7bd5: $86
    xor a                                         ; $7bd6: $af
    xor [hl]                                      ; $7bd7: $ae
    ld hl, sp+$57                                 ; $7bd8: $f8 $57
    xor l                                         ; $7bda: $ad
    ld l, d                                       ; $7bdb: $6a
    halt                                          ; $7bdc: $76
    set 6, d                                      ; $7bdd: $cb $f2
    dec hl                                        ; $7bdf: $2b
    ld l, l                                       ; $7be0: $6d
    pop de                                        ; $7be1: $d1
    cp l                                          ; $7be2: $bd
    adc a                                         ; $7be3: $8f
    add h                                         ; $7be4: $84
    and l                                         ; $7be5: $a5
    xor $74                                       ; $7be6: $ee $74
    dec bc                                        ; $7be8: $0b
    dec a                                         ; $7be9: $3d
    add c                                         ; $7bea: $81
    dec d                                         ; $7beb: $15
    ld [hl], l                                    ; $7bec: $75
    ret nc                                        ; $7bed: $d0

    dec e                                         ; $7bee: $1d
    rst $00                                       ; $7bef: $c7
    rst $10                                       ; $7bf0: $d7
    ld a, l                                       ; $7bf1: $7d
    push af                                       ; $7bf2: $f5
    and d                                         ; $7bf3: $a2
    ld l, h                                       ; $7bf4: $6c
    ld d, [hl]                                    ; $7bf5: $56
    ld l, l                                       ; $7bf6: $6d
    ld l, l                                       ; $7bf7: $6d
    adc b                                         ; $7bf8: $88
    ld a, [$fa78]                                 ; $7bf9: $fa $78 $fa
    adc a                                         ; $7bfc: $8f
    ld a, c                                       ; $7bfd: $79
    ld e, h                                       ; $7bfe: $5c
    or a                                          ; $7bff: $b7
    dec hl                                        ; $7c00: $2b
    xor l                                         ; $7c01: $ad
    xor d                                         ; $7c02: $aa
    rst $18                                       ; $7c03: $df
    ld a, d                                       ; $7c04: $7a
    jr jr_043_7bae                                ; $7c05: $18 $a7

    ld l, l                                       ; $7c07: $6d
    ld [hl], c                                    ; $7c08: $71
    cpl                                           ; $7c09: $2f
    cp h                                          ; $7c0a: $bc
    ld [bc], a                                    ; $7c0b: $02
    ld [hl], l                                    ; $7c0c: $75
    ld h, c                                       ; $7c0d: $61
    dec bc                                        ; $7c0e: $0b
    sbc b                                         ; $7c0f: $98
    ld a, [hl]                                    ; $7c10: $7e
    jp c, Jump_043_717c                           ; $7c11: $da $7c $71

    ld b, e                                       ; $7c14: $43
    adc l                                         ; $7c15: $8d
    ld d, a                                       ; $7c16: $57
    sbc [hl]                                      ; $7c17: $9e
    ld e, a                                       ; $7c18: $5f
    jp z, $b28b                                   ; $7c19: $ca $8b $b2

    ld c, a                                       ; $7c1c: $4f
    and a                                         ; $7c1d: $a7
    xor a                                         ; $7c1e: $af
    rst $18                                       ; $7c1f: $df
    rst $08                                       ; $7c20: $cf
    and l                                         ; $7c21: $a5
    ld e, e                                       ; $7c22: $5b
    ld [bc], a                                    ; $7c23: $02
    dec hl                                        ; $7c24: $2b
    db $ed                                        ; $7c25: $ed
    rst $08                                       ; $7c26: $cf
    ld d, d                                       ; $7c27: $52
    ld l, b                                       ; $7c28: $68
    ld e, c                                       ; $7c29: $59
    ld bc, $6dad                                  ; $7c2a: $01 $ad $6d
    adc b                                         ; $7c2d: $88
    rra                                           ; $7c2e: $1f
    ld d, a                                       ; $7c2f: $57
    push bc                                       ; $7c30: $c5
    sub a                                         ; $7c31: $97
    ld a, a                                       ; $7c32: $7f
    ld [hl], a                                    ; $7c33: $77
    cp e                                          ; $7c34: $bb
    ld [bc], a                                    ; $7c35: $02
    xor l                                         ; $7c36: $ad
    ld l, [hl]                                    ; $7c37: $6e
    dec a                                         ; $7c38: $3d
    db $ec                                        ; $7c39: $ec
    call c, $2da4                                 ; $7c3a: $dc $a4 $2d
    and e                                         ; $7c3d: $a3
    ld [hl+], a                                   ; $7c3e: $22
    scf                                           ; $7c3f: $37
    or d                                          ; $7c40: $b2
    ld [bc], a                                    ; $7c41: $02
    db $ed                                        ; $7c42: $ed
    jp $c9f6                                      ; $7c43: $c3 $f6 $c9


    xor h                                         ; $7c46: $ac
    ld l, l                                       ; $7c47: $6d
    ld l, h                                       ; $7c48: $6c
    xor a                                         ; $7c49: $af
    sbc l                                         ; $7c4a: $9d
    ld a, [$ee78]                                 ; $7c4b: $fa $78 $ee
    rst $10                                       ; $7c4e: $d7
    or h                                          ; $7c4f: $b4
    dec d                                         ; $7c50: $15
    ld l, l                                       ; $7c51: $6d
    reti                                          ; $7c52: $d9


    ld l, b                                       ; $7c53: $68
    cpl                                           ; $7c54: $2f
    pop af                                        ; $7c55: $f1
    ld h, l                                       ; $7c56: $65
    ld e, d                                       ; $7c57: $5a
    dec l                                         ; $7c58: $2d
    dec hl                                        ; $7c59: $2b
    xor l                                         ; $7c5a: $ad
    ld d, c                                       ; $7c5b: $51
    ld d, e                                       ; $7c5c: $53
    db $e3                                        ; $7c5d: $e3
    cp d                                          ; $7c5e: $ba
    ld c, l                                       ; $7c5f: $4d
    ei                                            ; $7c60: $fb
    ld [hl], h                                    ; $7c61: $74
    xor e                                         ; $7c62: $ab
    add hl, de                                    ; $7c63: $19
    ld e, c                                       ; $7c64: $59
    ld bc, $eead                                  ; $7c65: $01 $ad $ee
    ld a, [bc]                                    ; $7c68: $0a
    halt                                          ; $7c69: $76
    xor [hl]                                      ; $7c6a: $ae
    db $db                                        ; $7c6b: $db
    ld hl, sp+$7e                                 ; $7c6c: $f8 $7e
    ld [hl], a                                    ; $7c6e: $77
    ld a, d                                       ; $7c6f: $7a
    dec sp                                        ; $7c70: $3b
    and l                                         ; $7c71: $a5
    ld h, c                                       ; $7c72: $61
    dec b                                         ; $7c73: $05
    xor l                                         ; $7c74: $ad
    ld a, [de]                                    ; $7c75: $1a
    and e                                         ; $7c76: $a3
    cp d                                          ; $7c77: $ba
    ld [hl], d                                    ; $7c78: $72
    sbc a                                         ; $7c79: $9f
    or $a8                                        ; $7c7a: $f6 $a8
    or a                                          ; $7c7c: $b7
    db $db                                        ; $7c7d: $db
    sub e                                         ; $7c7e: $93
    dec d                                         ; $7c7f: $15
    ld l, l                                       ; $7c80: $6d
    adc l                                         ; $7c81: $8d
    xor b                                         ; $7c82: $a8
    reti                                          ; $7c83: $d9


    daa                                           ; $7c84: $27
    ld c, b                                       ; $7c85: $48
    rlca                                          ; $7c86: $07
    ei                                            ; $7c87: $fb
    cp h                                          ; $7c88: $bc
    cpl                                           ; $7c89: $2f
    adc h                                         ; $7c8a: $8c
    dec d                                         ; $7c8b: $15
    db $ed                                        ; $7c8c: $ed
    adc a                                         ; $7c8d: $8f
    ldh a, [rOCPD]                                ; $7c8e: $f0 $6b
    inc d                                         ; $7c90: $14
    ld l, c                                       ; $7c91: $69
    ld d, a                                       ; $7c92: $57
    ld c, [hl]                                    ; $7c93: $4e
    di                                            ; $7c94: $f3
    di                                            ; $7c95: $f3
    ld b, $81                                     ; $7c96: $06 $81
    dec d                                         ; $7c98: $15
    or l                                          ; $7c99: $b5
    rst $18                                       ; $7c9a: $df
    adc h                                         ; $7c9b: $8c
    ld b, b                                       ; $7c9c: $40
    ld [$330e], a                                 ; $7c9d: $ea $0e $33
    ld l, h                                       ; $7ca0: $6c
    dec b                                         ; $7ca1: $05
    xor l                                         ; $7ca2: $ad
    jp $83ba                                      ; $7ca3: $c3 $ba $83


    ld [hl], b                                    ; $7ca6: $70
    ld a, h                                       ; $7ca7: $7c
    db $fd                                        ; $7ca8: $fd
    ld d, a                                       ; $7ca9: $57
    dec l                                         ; $7caa: $2d
    ei                                            ; $7cab: $fb
    ld b, h                                       ; $7cac: $44
    ld e, e                                       ; $7cad: $5b
    ld bc, $516d                                  ; $7cae: $01 $6d $51
    pop af                                        ; $7cb1: $f1
    rst $18                                       ; $7cb2: $df
    ld d, [hl]                                    ; $7cb3: $56
    rra                                           ; $7cb4: $1f
    ld [hl], l                                    ; $7cb5: $75
    ld l, c                                       ; $7cb6: $69
    ld l, e                                       ; $7cb7: $6b
    xor h                                         ; $7cb8: $ac
    and b                                         ; $7cb9: $a0
    sbc d                                         ; $7cba: $9a
    or c                                          ; $7cbb: $b1
    dec d                                         ; $7cbc: $15
    sbc [hl]                                      ; $7cbd: $9e
    ei                                            ; $7cbe: $fb
    ld b, [hl]                                    ; $7cbf: $46
    ret                                           ; $7cc0: $c9


    xor a                                         ; $7cc1: $af
    xor l                                         ; $7cc2: $ad
    pop hl                                        ; $7cc3: $e1
    ld l, c                                       ; $7cc4: $69
    dec [hl]                                      ; $7cc5: $35
    jp nz, $ff69                                  ; $7cc6: $c2 $69 $ff

    xor l                                         ; $7cc9: $ad
    sbc e                                         ; $7cca: $9b
    or c                                          ; $7ccb: $b1
    db $d3                                        ; $7ccc: $d3
    cp a                                          ; $7ccd: $bf
    ld [hl], h                                    ; $7cce: $74
    ld e, e                                       ; $7ccf: $5b
    ld d, [hl]                                    ; $7cd0: $56
    sbc [hl]                                      ; $7cd1: $9e
    cp $a7                                        ; $7cd2: $fe $a7
    ld [c], a                                     ; $7cd4: $e2
    ld b, b                                       ; $7cd5: $40
    jr nz, jr_043_7cf5                            ; $7cd6: $20 $1d

    ld l, h                                       ; $7cd8: $6c

jr_043_7cd9:
    ld h, l                                       ; $7cd9: $65
    and a                                         ; $7cda: $a7
    inc [hl]                                      ; $7cdb: $34
    xor h                                         ; $7cdc: $ac
    db $ed                                        ; $7cdd: $ed
    ld d, e                                       ; $7cde: $53
    pop de                                        ; $7cdf: $d1
    ld h, $ad                                     ; $7ce0: $26 $ad
    adc l                                         ; $7ce2: $8d
    ld hl, sp-$41                                 ; $7ce3: $f8 $bf
    ld e, d                                       ; $7ce5: $5a
    ld bc, $dd9d                                  ; $7ce6: $01 $9d $dd
    or $1a                                        ; $7ce9: $f6 $1a
    ld d, h                                       ; $7ceb: $54
    jp c, $8bd8                                   ; $7cec: $da $d8 $8b

    rst $38                                       ; $7cef: $ff
    ld e, h                                       ; $7cf0: $5c
    or a                                          ; $7cf1: $b7
    dec hl                                        ; $7cf2: $2b
    xor l                                         ; $7cf3: $ad
    reti                                          ; $7cf4: $d9


jr_043_7cf5:
    add hl, hl                                    ; $7cf5: $29
    dec c                                         ; $7cf6: $0d
    sbc h                                         ; $7cf7: $9c
    adc $20                                       ; $7cf8: $ce $20
    ld a, e                                       ; $7cfa: $7b
    ld e, h                                       ; $7cfb: $5c
    or a                                          ; $7cfc: $b7
    dec hl                                        ; $7cfd: $2b
    ld l, l                                       ; $7cfe: $6d
    adc l                                         ; $7cff: $8d
    or d                                          ; $7d00: $b2
    ld [hl], e                                    ; $7d01: $73
    ld l, c                                       ; $7d02: $69
    set 1, [hl]                                   ; $7d03: $cb $ce
    dec sp                                        ; $7d05: $3b
    and d                                         ; $7d06: $a2
    add $66                                       ; $7d07: $c6 $66
    dec b                                         ; $7d09: $05
    db $ed                                        ; $7d0a: $ed
    sbc a                                         ; $7d0b: $9f
    cp l                                          ; $7d0c: $bd
    xor b                                         ; $7d0d: $a8
    ld c, a                                       ; $7d0e: $4f
    ld e, e                                       ; $7d0f: $5b
    xor a                                         ; $7d10: $af
    add sp, -$02                                  ; $7d11: $e8 $fe
    dec d                                         ; $7d13: $15
    cp [hl]                                       ; $7d14: $be
    cp a                                          ; $7d15: $bf
    sbc a                                         ; $7d16: $9f
    ld hl, sp+$16                                 ; $7d17: $f8 $16
    ld e, a                                       ; $7d19: $5f
    ret c                                         ; $7d1a: $d8

    ld [bc], a                                    ; $7d1b: $02
    ld [de], a                                    ; $7d1c: $12
    and [hl]                                      ; $7d1d: $a6
    or b                                          ; $7d1e: $b0
    ld [bc], a                                    ; $7d1f: $02
    dec e                                         ; $7d20: $1d
    ld b, c                                       ; $7d21: $41
    dec sp                                        ; $7d22: $3b
    ld sp, hl                                     ; $7d23: $f9
    or h                                          ; $7d24: $b4
    rst $38                                       ; $7d25: $ff
    jr nz, jr_043_7cd9                            ; $7d26: $20 $b1

    ld [bc], a                                    ; $7d28: $02
    dec e                                         ; $7d29: $1d
    ld c, a                                       ; $7d2a: $4f
    ld [hl], c                                    ; $7d2b: $71
    sbc a                                         ; $7d2c: $9f
    adc [hl]                                      ; $7d2d: $8e
    cp a                                          ; $7d2e: $bf
    sub h                                         ; $7d2f: $94
    or c                                          ; $7d30: $b1
    add hl, hl                                    ; $7d31: $29
    ld h, l                                       ; $7d32: $65
    ld d, [hl]                                    ; $7d33: $56
    ld [hl], l                                    ; $7d34: $75
    db $ed                                        ; $7d35: $ed
    adc d                                         ; $7d36: $8a
    cp e                                          ; $7d37: $bb
    cp l                                          ; $7d38: $bd
    ccf                                           ; $7d39: $3f
    sbc [hl]                                      ; $7d3a: $9e
    ld h, e                                       ; $7d3b: $63
    db $e4                                        ; $7d3c: $e4
    ld [$566c], sp                                ; $7d3d: $08 $6c $56
    or l                                          ; $7d40: $b5
    ld hl, $15da                                  ; $7d41: $21 $da $15

Call_043_7d44:
    adc $ed                                       ; $7d44: $ce $ed
    ld a, b                                       ; $7d46: $78
    ld h, a                                       ; $7d47: $67
    ld l, a                                       ; $7d48: $6f
    jr nc, jr_043_7d9a                            ; $7d49: $30 $4f

    inc d                                         ; $7d4b: $14
    ld l, $ad                                     ; $7d4c: $2e $ad
    ld c, l                                       ; $7d4e: $4d
    ld [hl], c                                    ; $7d4f: $71
    cp $5b                                        ; $7d50: $fe $5b
    ld bc, $ffad                                  ; $7d52: $01 $ad $ff
    dec d                                         ; $7d55: $15
    ld [bc], a                                    ; $7d56: $02
    ld l, c                                       ; $7d57: $69
    ld a, l                                       ; $7d58: $7d
    sub h                                         ; $7d59: $94
    add d                                         ; $7d5a: $82
    sbc l                                         ; $7d5b: $9d
    jp nc, $02b0                                  ; $7d5c: $d2 $b0 $02

    xor l                                         ; $7d5f: $ad
    ld l, [hl]                                    ; $7d60: $6e
    dec a                                         ; $7d61: $3d
    dec l                                         ; $7d62: $2d
    pop af                                        ; $7d63: $f1
    cp l                                          ; $7d64: $bd
    dec c                                         ; $7d65: $0d
    ld h, c                                       ; $7d66: $61
    xor h                                         ; $7d67: $ac
    xor l                                         ; $7d68: $ad
    adc a                                         ; $7d69: $8f
    cp h                                          ; $7d6a: $bc
    and $7f                                       ; $7d6b: $e6 $7f
    ld c, c                                       ; $7d6d: $49
    rst $00                                       ; $7d6e: $c7
    add [hl]                                      ; $7d6f: $86
    ld l, d                                       ; $7d70: $6a
    add e                                         ; $7d71: $83
    ld a, c                                       ; $7d72: $79
    dec b                                         ; $7d73: $05
    db $ed                                        ; $7d74: $ed
    db $d3                                        ; $7d75: $d3
    ld [hl], d                                    ; $7d76: $72
    ld l, d                                       ; $7d77: $6a
    db $ec                                        ; $7d78: $ec
    db $d3                                        ; $7d79: $d3
    jp c, $b75b                                   ; $7d7a: $da $5b $b7

    db $dd                                        ; $7d7d: $dd
    dec e                                         ; $7d7e: $1d
    ei                                            ; $7d7f: $fb
    ld d, a                                       ; $7d80: $57
    ld l, l                                       ; $7d81: $6d
    sbc l                                         ; $7d82: $9d
    jp nz, Jump_000_3c48                          ; $7d83: $c2 $48 $3c

    adc l                                         ; $7d86: $8d
    ld d, [hl]                                    ; $7d87: $56
    ld a, [$b515]                                 ; $7d88: $fa $15 $b5
    ld h, c                                       ; $7d8b: $61
    push de                                       ; $7d8c: $d5
    ld c, e                                       ; $7d8d: $4b
    ld a, [hl-]                                   ; $7d8e: $3a
    dec sp                                        ; $7d8f: $3b
    ld h, c                                       ; $7d90: $61
    dec sp                                        ; $7d91: $3b
    pop de                                        ; $7d92: $d1
    db $fc                                        ; $7d93: $fc
    ld e, a                                       ; $7d94: $5f
    xor l                                         ; $7d95: $ad
    db $ed                                        ; $7d96: $ed
    sbc [hl]                                      ; $7d97: $9e
    ld l, l                                       ; $7d98: $6d
    db $10                                        ; $7d99: $10

Jump_043_7d9a:
jr_043_7d9a:
    ld c, b                                       ; $7d9a: $48
    db $eb                                        ; $7d9b: $eb
    or h                                          ; $7d9c: $b4
    ld e, e                                       ; $7d9d: $5b
    xor h                                         ; $7d9e: $ac
    db $ed                                        ; $7d9f: $ed
    inc de                                        ; $7da0: $13
    or b                                          ; $7da1: $b0
    sub c                                         ; $7da2: $91
    ld [hl], h                                    ; $7da3: $74
    or $1a                                        ; $7da4: $f6 $1a
    rst $38                                       ; $7da6: $ff

Jump_043_7da7:
    db $ed                                        ; $7da7: $ed
    dec d                                         ; $7da8: $15
    dec e                                         ; $7da9: $1d
    ld e, b                                       ; $7daa: $58
    add hl, sp                                    ; $7dab: $39
    sbc c                                         ; $7dac: $99
    ld [hl], h                                    ; $7dad: $74
    db $ec                                        ; $7dae: $ec
    scf                                           ; $7daf: $37
    ld e, d                                       ; $7db0: $5a
    ld a, b                                       ; $7db1: $78
    ld h, h                                       ; $7db2: $64
    dec b                                         ; $7db3: $05
    sbc [hl]                                      ; $7db4: $9e
    ret c                                         ; $7db5: $d8

    jr z, @+$7e                                   ; $7db6: $28 $7c

    ld a, [c]                                     ; $7db8: $f2
    jp hl                                         ; $7db9: $e9


    db $ec                                        ; $7dba: $ec
    ld c, l                                       ; $7dbb: $4d
    rrca                                          ; $7dbc: $0f
    rst $10                                       ; $7dbd: $d7
    db $ed                                        ; $7dbe: $ed
    ld a, [bc]                                    ; $7dbf: $0a
    or l                                          ; $7dc0: $b5
    pop af                                        ; $7dc1: $f1
    db $ec                                        ; $7dc2: $ec
    ld [hl], a                                    ; $7dc3: $77
    jp $6b48                                      ; $7dc4: $c3 $48 $6b


    ld l, a                                       ; $7dc7: $6f
    ld a, [$0237]                                 ; $7dc8: $fa $37 $02
    dec hl                                        ; $7dcb: $2b
    db $ed                                        ; $7dcc: $ed
    jp $2478                                      ; $7dcd: $c3 $78 $24


    ld l, l                                       ; $7dd0: $6d
    reti                                          ; $7dd1: $d9


    sub e                                         ; $7dd2: $93
    jr z, jr_043_7e00                             ; $7dd3: $28 $2b

    xor l                                         ; $7dd5: $ad
    ld c, l                                       ; $7dd6: $4d
    ld [hl], a                                    ; $7dd7: $77
    push de                                       ; $7dd8: $d5
    ld c, e                                       ; $7dd9: $4b
    ld a, [hl-]                                   ; $7dda: $3a
    or e                                          ; $7ddb: $b3
    db $d3                                        ; $7ddc: $d3
    db $fc                                        ; $7ddd: $fc
    cp h                                          ; $7dde: $bc
    ld [bc], a                                    ; $7ddf: $02
    db $ed                                        ; $7de0: $ed
    ld c, h                                       ; $7de1: $4c
    ld [hl], c                                    ; $7de2: $71
    ret c                                         ; $7de3: $d8

    daa                                           ; $7de4: $27
    ld a, [hl+]                                   ; $7de5: $2a
    sbc l                                         ; $7de6: $9d
    cp l                                          ; $7de7: $bd
    ld [hl], d                                    ; $7de8: $72
    db $e3                                        ; $7de9: $e3
    cp d                                          ; $7dea: $ba

Call_043_7deb:
    ld e, l                                       ; $7deb: $5d
    ld bc, $756d                                  ; $7dec: $01 $6d $75
    rlca                                          ; $7def: $07
    add hl, de                                    ; $7df0: $19
    dec l                                         ; $7df1: $2d
    db $ed                                        ; $7df2: $ed
    adc h                                         ; $7df3: $8c
    and b                                         ; $7df4: $a0
    xor h                                         ; $7df5: $ac
    sbc [hl]                                      ; $7df6: $9e
    inc b                                         ; $7df7: $04
    ld d, $bb                                     ; $7df8: $16 $bb
    sub a                                         ; $7dfa: $97
    ld [hl], h                                    ; $7dfb: $74
    ld sp, $6d54                                  ; $7dfc: $31 $54 $6d
    xor h                                         ; $7dff: $ac

jr_043_7e00:
    xor l                                         ; $7e00: $ad
    add e                                         ; $7e01: $83
    call c, $e927                                 ; $7e02: $dc $27 $e9
    call z, $0c7f                                 ; $7e05: $cc $7f $0c
    rst $38                                       ; $7e08: $ff
    sbc b                                         ; $7e09: $98
    xor h                                         ; $7e0a: $ac
    xor l                                         ; $7e0b: $ad
    ld d, e                                       ; $7e0c: $53
    pop de                                        ; $7e0d: $d1
    cp a                                          ; $7e0e: $bf
    and l                                         ; $7e0f: $a5

Jump_043_7e10:
    inc bc                                        ; $7e10: $03
    ld l, l                                       ; $7e11: $6d
    add e                                         ; $7e12: $83
    db $fd                                        ; $7e13: $fd
    ld h, e                                       ; $7e14: $63
    dec bc                                        ; $7e15: $0b
    ld d, [hl]                                    ; $7e16: $56
    db $ed                                        ; $7e17: $ed
    ld h, c                                       ; $7e18: $61
    sub [hl]                                      ; $7e19: $96
    reti                                          ; $7e1a: $d9


    ld [$e3e4], a                                 ; $7e1b: $ea $e4 $e3
    ld e, e                                       ; $7e1e: $5b
    add c                                         ; $7e1f: $81
    db $fd                                        ; $7e20: $fd
    db $dd                                        ; $7e21: $dd
    ld de, $dd70                                  ; $7e22: $11 $70 $dd
    xor [hl]                                      ; $7e25: $ae
    dec e                                         ; $7e26: $1d
    adc l                                         ; $7e27: $8d
    add d                                         ; $7e28: $82
    sbc l                                         ; $7e29: $9d
    db $eb                                        ; $7e2a: $eb
    ld [hl], $75                                  ; $7e2b: $36 $75
    scf                                           ; $7e2d: $37
    xor l                                         ; $7e2e: $ad
    ld d, $1e                                     ; $7e2f: $16 $1e
    ld e, c                                       ; $7e31: $59
    ld bc, $cd1d                                  ; $7e32: $01 $1d $cd
    ld a, [hl]                                    ; $7e35: $7e
    ld d, c                                       ; $7e36: $51
    ld l, c                                       ; $7e37: $69
    rla                                           ; $7e38: $17
    sbc d                                         ; $7e39: $9a
    or [hl]                                       ; $7e3a: $b6
    ld [bc], a                                    ; $7e3b: $02
    or l                                          ; $7e3c: $b5
    ld h, c                                       ; $7e3d: $61
    set 4, h                                      ; $7e3e: $cb $e4
    halt                                          ; $7e40: $76
    jp c, $bd9c                                   ; $7e41: $da $9c $bd

    or c                                          ; $7e44: $b1
    ld [bc], a                                    ; $7e45: $02
    xor l                                         ; $7e46: $ad
    adc d                                         ; $7e47: $8a
    or d                                          ; $7e48: $b2
    add hl, hl                                    ; $7e49: $29
    reti                                          ; $7e4a: $d9


    ld e, $6d                                     ; $7e4b: $1e $6d
    dec bc                                        ; $7e4d: $0b
    ld a, c                                       ; $7e4e: $79
    ld [c], a                                     ; $7e4f: $e2
    ld c, [hl]                                    ; $7e50: $4e
    ld a, a                                       ; $7e51: $7f
    dec de                                        ; $7e52: $1b
    dec hl                                        ; $7e53: $2b
    sbc l                                         ; $7e54: $9d
    ret c                                         ; $7e55: $d8

    cp c                                          ; $7e56: $b9
    ld [hl], h                                    ; $7e57: $74
    adc h                                         ; $7e58: $8c
    jp nz, Jump_000_3d5f                          ; $7e59: $c2 $5f $3d

    di                                            ; $7e5c: $f3
    xor a                                         ; $7e5d: $af
    db $ed                                        ; $7e5e: $ed
    adc l                                         ; $7e5f: $8d
    xor c                                         ; $7e60: $a9
    ld hl, sp-$0e                                 ; $7e61: $f8 $f2
    jr z, @-$09                                   ; $7e63: $28 $f5

    and [hl]                                      ; $7e65: $a6
    jp nc, $b1d9                                  ; $7e66: $d2 $d9 $b1

    rra                                           ; $7e69: $1f
    ld d, [hl]                                    ; $7e6a: $56
    ld d, [hl]                                    ; $7e6b: $56

Call_043_7e6c:
    sbc [hl]                                      ; $7e6c: $9e
    ld h, a                                       ; $7e6d: $67
    ld c, $2b                                     ; $7e6e: $0e $2b
    db $ed                                        ; $7e70: $ed
    sbc a                                         ; $7e71: $9f
    cp l                                          ; $7e72: $bd
    ld e, $7b                                     ; $7e73: $1e $7b
    ld a, a                                       ; $7e75: $7f
    ld [$2a6e], a                                 ; $7e76: $ea $6e $2a
    db $dd                                        ; $7e79: $dd
    add d                                         ; $7e7a: $82
    ld a, c                                       ; $7e7b: $79
    dec b                                         ; $7e7c: $05
    xor l                                         ; $7e7d: $ad
    pop bc                                        ; $7e7e: $c1
    ld hl, sp-$70                                 ; $7e7f: $f8 $90
    sub $86                                       ; $7e81: $d6 $86
    ld a, c                                       ; $7e83: $79
    dec b                                         ; $7e84: $05
    dec e                                         ; $7e85: $1d
    ei                                            ; $7e86: $fb

Call_043_7e87:
    ld e, a                                       ; $7e87: $5f
    add hl, hl                                    ; $7e88: $29
    ret nc                                        ; $7e89: $d0

    sub d                                         ; $7e8a: $92
    adc [hl]                                      ; $7e8b: $8e
    db $fd                                        ; $7e8c: $fd
    call nc, $c5ba                                ; $7e8d: $d4 $ba $c5
    sbc $2b                                       ; $7e90: $de $2b
    cp [hl]                                       ; $7e92: $be
    ld l, [hl]                                    ; $7e93: $6e
    ld h, h                                       ; $7e94: $64
    adc d                                         ; $7e95: $8a
    dec sp                                        ; $7e96: $3b
    jp z, $02b3                                   ; $7e97: $ca $b3 $02

    ld e, c                                       ; $7e9a: $59
    ld bc, $146d                                  ; $7e9b: $01 $6d $14
    ld l, b                                       ; $7e9e: $68
    db $f4                                        ; $7e9f: $f4
    ld a, [c]                                     ; $7ea0: $f2

jr_043_7ea1:
    call z, $dcef                                 ; $7ea1: $cc $ef $dc
    xor h                                         ; $7ea4: $ac
    ld c, c                                       ; $7ea5: $49
    ld d, a                                       ; $7ea6: $57
    cp [hl]                                       ; $7ea7: $be
    ld c, h                                       ; $7ea8: $4c
    push de                                       ; $7ea9: $d5
    push de                                       ; $7eaa: $d5
    sbc a                                         ; $7eab: $9f
    db $ed                                        ; $7eac: $ed
    ld [hl], c                                    ; $7ead: $71
    ld [c], a                                     ; $7eae: $e2
    db $dd                                        ; $7eaf: $dd
    inc d                                         ; $7eb0: $14
    ld b, d                                       ; $7eb1: $42
    db $fc                                        ; $7eb2: $fc
    jr z, jr_043_7ea1                             ; $7eb3: $28 $ec

    adc l                                         ; $7eb5: $8d
    ld a, b                                       ; $7eb6: $78
    cp a                                          ; $7eb7: $bf
    ld e, h                                       ; $7eb8: $5c
    ld [hl], $95                                  ; $7eb9: $36 $95
    or a                                          ; $7ebb: $b7
    ld c, e                                       ; $7ebc: $4b
    and c                                         ; $7ebd: $a1
    ld a, e                                       ; $7ebe: $7b
    ld a, a                                       ; $7ebf: $7f
    ld d, $c3                                     ; $7ec0: $16 $c3
    ld a, [c]                                     ; $7ec2: $f2
    or $c4                                        ; $7ec3: $f6 $c4
    dec de                                        ; $7ec5: $1b
    ld b, c                                       ; $7ec6: $41

jr_043_7ec7:
    inc d                                         ; $7ec7: $14
    or $46                                        ; $7ec8: $f6 $46
    sub [hl]                                      ; $7eca: $96
    ld hl, $c8de                                  ; $7ecb: $21 $de $c8
    push af                                       ; $7ece: $f5
    dec hl                                        ; $7ecf: $2b
    ld c, c                                       ; $7ed0: $49

jr_043_7ed1:
    ld d, a                                       ; $7ed1: $57
    ld l, l                                       ; $7ed2: $6d
    rst $28                                       ; $7ed3: $ef
    inc l                                         ; $7ed4: $2c
    rst $10                                       ; $7ed5: $d7
    ld b, b                                       ; $7ed6: $40
    xor [hl]                                      ; $7ed7: $ae
    ld e, d                                       ; $7ed8: $5a
    add $f8                                       ; $7ed9: $c6 $f8
    add l                                         ; $7edb: $85
    sub c                                         ; $7edc: $91
    rst $18                                       ; $7edd: $df
    adc $7f                                       ; $7ede: $ce $7f
    push de                                       ; $7ee0: $d5
    dec d                                         ; $7ee1: $15
    cp $28                                        ; $7ee2: $fe $28
    db $ec                                        ; $7ee4: $ec
    or h                                          ; $7ee5: $b4
    rrca                                          ; $7ee6: $0f
    ld [hl], l                                    ; $7ee7: $75
    sub e                                         ; $7ee8: $93
    ld [hl], $c8                                  ; $7ee9: $36 $c8
    jp hl                                         ; $7eeb: $e9


    ld d, a                                       ; $7eec: $57
    ld c, c                                       ; $7eed: $49
    ld d, a                                       ; $7eee: $57
    ld l, l                                       ; $7eef: $6d
    jp nz, $e521                                  ; $7ef0: $c2 $21 $e5

    scf                                           ; $7ef3: $37
    cp a                                          ; $7ef4: $bf
    ld hl, $7927                                  ; $7ef5: $21 $27 $79
    cp e                                          ; $7ef8: $bb
    rst $08                                       ; $7ef9: $cf
    db $ed                                        ; $7efa: $ed
    inc l                                         ; $7efb: $2c
    rst $20                                       ; $7efc: $e7
    call c, Call_000_09ec                         ; $7efd: $dc $ec $09
    ld a, c                                       ; $7f00: $79
    ld a, e                                       ; $7f01: $7b
    cp a                                          ; $7f02: $bf
    and [hl]                                      ; $7f03: $a6
    db $dd                                        ; $7f04: $dd
    ld b, h                                       ; $7f05: $44
    ld e, l                                       ; $7f06: $5d
    jp c, $e63b                                   ; $7f07: $da $3b $e6

    adc l                                         ; $7f0a: $8d
    or h                                          ; $7f0b: $b4
    ld l, [hl]                                    ; $7f0c: $6e
    or e                                          ; $7f0d: $b3
    inc l                                         ; $7f0e: $2c
    daa                                           ; $7f0f: $27
    ld e, d                                       ; $7f10: $5a
    inc b                                         ; $7f11: $04
    dec sp                                        ; $7f12: $3b
    inc c                                         ; $7f13: $0c
    pop hl                                        ; $7f14: $e1
    rst $20                                       ; $7f15: $e7
    inc hl                                        ; $7f16: $23
    daa                                           ; $7f17: $27
    ld [$d572], a                                 ; $7f18: $ea $72 $d5
    ld a, [c]                                     ; $7f1b: $f2
    add l                                         ; $7f1c: $85
    rst $18                                       ; $7f1d: $df
    sub b                                         ; $7f1e: $90
    ld [$73b5], a                                 ; $7f1f: $ea $b5 $73
    ld e, a                                       ; $7f22: $5f
    ld b, c                                       ; $7f23: $41
    jr jr_043_7ec7                                ; $7f24: $18 $a1

    ld a, [c]                                     ; $7f26: $f2
    pop hl                                        ; $7f27: $e1
    ld sp, $7efe                                  ; $7f28: $31 $fe $7e
    dec b                                         ; $7f2b: $05
    ld c, c                                       ; $7f2c: $49
    ld d, a                                       ; $7f2d: $57
    cp [hl]                                       ; $7f2e: $be
    ld l, [hl]                                    ; $7f2f: $6e
    ld d, $ab                                     ; $7f30: $16 $ab
    cpl                                           ; $7f32: $2f
    db $db                                        ; $7f33: $db
    add e                                         ; $7f34: $83
    sub [hl]                                      ; $7f35: $96
    adc c                                         ; $7f36: $89
    jp nz, $1ede                                  ; $7f37: $c2 $de $1e

    xor l                                         ; $7f3a: $ad
    ld l, [hl]                                    ; $7f3b: $6e
    db $ed                                        ; $7f3c: $ed

Call_043_7f3d:
    push af                                       ; $7f3d: $f5
    or $e2                                        ; $7f3e: $f6 $e2
    db $fc                                        ; $7f40: $fc
    rst $30                                       ; $7f41: $f7
    pop af                                        ; $7f42: $f1
    and c                                         ; $7f43: $a1
    cpl                                           ; $7f44: $2f
    ld l, d                                       ; $7f45: $6a
    or d                                          ; $7f46: $b2
    ccf                                           ; $7f47: $3f
    add l                                         ; $7f48: $85
    ld a, [hl]                                    ; $7f49: $7e
    jr jr_043_7ed1                                ; $7f4a: $18 $85

    ccf                                           ; $7f4c: $3f
    halt                                          ; $7f4d: $76
    push de                                       ; $7f4e: $d5
    rla                                           ; $7f4f: $17
    db $e4                                        ; $7f50: $e4
    call nz, Call_043_617d                        ; $7f51: $c4 $7d $61
    ld a, e                                       ; $7f54: $7b
    cp $9c                                        ; $7f55: $fe $9c
    add h                                         ; $7f57: $84
    ld c, d                                       ; $7f58: $4a
    ld a, [bc]                                    ; $7f59: $0a
    sbc h                                         ; $7f5a: $9c
    di                                            ; $7f5b: $f3
    rst $18                                       ; $7f5c: $df
    ld b, h                                       ; $7f5d: $44
    ld a, c                                       ; $7f5e: $79
    cp h                                          ; $7f5f: $bc
    di                                            ; $7f60: $f3
    and c                                         ; $7f61: $a1
    rst $18                                       ; $7f62: $df
    xor a                                         ; $7f63: $af
    ld c, c                                       ; $7f64: $49
    ld d, a                                       ; $7f65: $57
    sbc [hl]                                      ; $7f66: $9e
    ret c                                         ; $7f67: $d8

    ret nc                                        ; $7f68: $d0

    dec de                                        ; $7f69: $1b
    ld [hl], d                                    ; $7f6a: $72
    ld b, d                                       ; $7f6b: $42
    ld b, d                                       ; $7f6c: $42
    ld a, b                                       ; $7f6d: $78
    inc c                                         ; $7f6e: $0c
    ld d, c                                       ; $7f6f: $51
    ret c                                         ; $7f70: $d8

    ld [hl], c                                    ; $7f71: $71
    cp a                                          ; $7f72: $bf
    dec d                                         ; $7f73: $15
    ld l, h                                       ; $7f74: $6c
    inc b                                         ; $7f75: $04
    ld a, c                                       ; $7f76: $79
    jp z, Jump_043_5763                           ; $7f77: $ca $63 $57

    and c                                         ; $7f7a: $a1
    ldh a, [$0b]                                  ; $7f7b: $f0 $0b
    and e                                         ; $7f7d: $a3
    ld e, a                                       ; $7f7e: $5f
    ld bc, $5749                                  ; $7f7f: $01 $49 $57
    ld l, l                                       ; $7f82: $6d
    dec bc                                        ; $7f83: $0b
    add hl, bc                                    ; $7f84: $09
    pop hl                                        ; $7f85: $e1
    ld sp, $6144                                  ; $7f86: $31 $44 $61
    rst $28                                       ; $7f89: $ef
    rst $08                                       ; $7f8a: $cf
    ld [hl-], a                                   ; $7f8b: $32
    call nz, Call_043_411b                        ; $7f8c: $c4 $1b $41
    ld d, $2c                                     ; $7f8f: $16 $2c
    rst $08                                       ; $7f91: $cf
    xor a                                         ; $7f92: $af
    adc e                                         ; $7f93: $8b
    and e                                         ; $7f94: $a3
    or $59                                        ; $7f95: $f6 $59
    ld h, b                                       ; $7f97: $60
    cp c                                          ; $7f98: $b9
    dec e                                         ; $7f99: $1d
    scf                                           ; $7f9a: $37
    dec d                                         ; $7f9b: $15
    dec d                                         ; $7f9c: $15
    call nz, $ebde                                ; $7f9d: $c4 $de $eb
    dec [hl]                                      ; $7fa0: $35
    jr z, jr_043_7fd8                             ; $7fa1: $28 $35

    add [hl]                                      ; $7fa3: $86
    ld a, [hl]                                    ; $7fa4: $7e
    dec b                                         ; $7fa5: $05
    ld c, c                                       ; $7fa6: $49
    ld d, a                                       ; $7fa7: $57
    ld l, l                                       ; $7fa8: $6d
    ld a, [hl]                                    ; $7fa9: $7e
    dec [hl]                                      ; $7faa: $35
    ld h, l                                       ; $7fab: $65
    ld [c], a                                     ; $7fac: $e2
    inc c                                         ; $7fad: $0c
    rst $08                                       ; $7fae: $cf
    ld h, e                                       ; $7faf: $63
    adc b                                         ; $7fb0: $88
    jp nz, $1ede                                  ; $7fb1: $c2 $de $1e

    ld d, e                                       ; $7fb4: $53
    adc l                                         ; $7fb5: $8d
    ld e, h                                       ; $7fb6: $5c
    dec [hl]                                      ; $7fb7: $35
    and c                                         ; $7fb8: $a1
    and d                                         ; $7fb9: $a2
    ld d, c                                       ; $7fba: $51
    ld [$144f], sp                                ; $7fbb: $08 $4f $14
    or $f6                                        ; $7fbe: $f6 $f6
    ld l, b                                       ; $7fc0: $68
    ld a, e                                       ; $7fc1: $7b
    add hl, de                                    ; $7fc2: $19
    ld h, a                                       ; $7fc3: $67
    ld d, a                                       ; $7fc4: $57
    xor $fb                                       ; $7fc5: $ee $fb
    dec d                                         ; $7fc7: $15
    ld c, c                                       ; $7fc8: $49
    ld d, a                                       ; $7fc9: $57
    ld l, l                                       ; $7fca: $6d
    dec bc                                        ; $7fcb: $0b
    add hl, bc                                    ; $7fcc: $09
    ld h, c                                       ; $7fcd: $61
    dec sp                                        ; $7fce: $3b
    add a                                         ; $7fcf: $87
    xor b                                         ; $7fd0: $a8
    adc e                                         ; $7fd1: $8b
    ret nc                                        ; $7fd2: $d0

    ld a, [bc]                                    ; $7fd3: $0a
    ld [hl], $e5                                  ; $7fd4: $36 $e5
    ld [c], a                                     ; $7fd6: $e2
    cp l                                          ; $7fd7: $bd

jr_043_7fd8:
    call Call_043_5176                            ; $7fd8: $cd $76 $51
    ld e, $5f                                     ; $7fdb: $1e $5f
    adc l                                         ; $7fdd: $8d
    and c                                         ; $7fde: $a1
    ld e, a                                       ; $7fdf: $5f
    ld bc, $5749                                  ; $7fe0: $01 $49 $57
    db $ed                                        ; $7fe3: $ed
    ld a, l                                       ; $7fe4: $7d
    ld a, [bc]                                    ; $7fe5: $0a
    dec de                                        ; $7fe6: $1b
    or h                                          ; $7fe7: $b4
    adc a                                         ; $7fe8: $8f
    di                                            ; $7fe9: $f3
    inc hl                                        ; $7fea: $23
    daa                                           ; $7feb: $27
    inc h                                         ; $7fec: $24
    add h                                         ; $7fed: $84
    db $eb                                        ; $7fee: $eb
    rst $08                                       ; $7fef: $cf
    cp $d4                                        ; $7ff0: $fe $d4
    sbc l                                         ; $7ff2: $9d
    ld c, l                                       ; $7ff3: $4d
    jp nz, $4e90                                  ; $7ff4: $c2 $90 $4e

    ld h, a                                       ; $7ff7: $67
    cp a                                          ; $7ff8: $bf
    jr nc, @-$04                                  ; $7ff9: $30 $fa

    dec d                                         ; $7ffb: $15
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
