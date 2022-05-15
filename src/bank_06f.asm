; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $06f", ROMX[$4000], BANK[$6f]

    ld l, a                                       ; $4000: $6f
    ld d, a                                       ; $4001: $57
    pop af                                        ; $4002: $f1
    rst $20                                       ; $4003: $e7
    ld a, $f2                                     ; $4004: $3e $f2
    add a                                         ; $4006: $87
    sbc $f8                                       ; $4007: $de $f8
    sub c                                         ; $4009: $91
    adc h                                         ; $400a: $8c
    dec hl                                        ; $400b: $2b
    sbc a                                         ; $400c: $9f
    ld c, $ef                                     ; $400d: $0e $ef
    db $ec                                        ; $400f: $ec
    ld hl, sp-$51                                 ; $4010: $f8 $af
    and h                                         ; $4012: $a4
    ld a, l                                       ; $4013: $7d

jr_06f_4014:
    adc e                                         ; $4014: $8b
    cp e                                          ; $4015: $bb
    ldh a, [$a7]                                  ; $4016: $f0 $a7
    inc bc                                        ; $4018: $03
    rst $28                                       ; $4019: $ef
    daa                                           ; $401a: $27
    adc l                                         ; $401b: $8d
    ld c, c                                       ; $401c: $49
    ld a, e                                       ; $401d: $7b
    ld a, l                                       ; $401e: $7d
    db $ed                                        ; $401f: $ed
    ei                                            ; $4020: $fb
    ld a, [$c971]                                 ; $4021: $fa $71 $c9
    rra                                           ; $4024: $1f
    halt                                          ; $4025: $76
    ld e, $1f                                     ; $4026: $1e $1f
    adc l                                         ; $4028: $8d
    db $fd                                        ; $4029: $fd
    cp c                                          ; $402a: $b9
    rst $30                                       ; $402b: $f7
    or e                                          ; $402c: $b3
    rra                                           ; $402d: $1f
    daa                                           ; $402e: $27
    rst $38                                       ; $402f: $ff
    ld [hl], b                                    ; $4030: $70
    nop                                           ; $4031: $00
    rra                                           ; $4032: $1f
    db $eb                                        ; $4033: $eb
    adc a                                         ; $4034: $8f
    ret c                                         ; $4035: $d8

    ld a, l                                       ; $4036: $7d
    rst $18                                       ; $4037: $df
    ld [hl+], a                                   ; $4038: $22
    call c, $f152                                 ; $4039: $dc $52 $f1
    ld bc, $c657                                  ; $403c: $01 $57 $c6
    ld a, [c]                                     ; $403f: $f2
    add l                                         ; $4040: $85
    ld a, l                                       ; $4041: $7d
    ld c, l                                       ; $4042: $4d
    cpl                                           ; $4043: $2f
    sbc a                                         ; $4044: $9f
    ld l, h                                       ; $4045: $6c
    add l                                         ; $4046: $85
    jr c, jr_06f_4049                             ; $4047: $38 $00

jr_06f_4049:
    rst $28                                       ; $4049: $ef
    and [hl]                                      ; $404a: $a6
    ld a, l                                       ; $404b: $7d
    ld e, a                                       ; $404c: $5f
    ld a, a                                       ; $404d: $7f
    ld e, d                                       ; $404e: $5a
    xor a                                         ; $404f: $af
    rst $08                                       ; $4050: $cf
    rrca                                          ; $4051: $0f
    inc d                                         ; $4052: $14
    cp $74                                        ; $4053: $fe $74
    nop                                           ; $4055: $00
    rra                                           ; $4056: $1f
    pop af                                        ; $4057: $f1
    rst $00                                       ; $4058: $c7
    jr c, jr_06f_4014                             ; $4059: $38 $b9

jr_06f_405b:
    scf                                           ; $405b: $37
    inc h                                         ; $405c: $24
    inc e                                         ; $405d: $1c
    or d                                          ; $405e: $b2
    and a                                         ; $405f: $a7
    dec e                                         ; $4060: $1d
    rst $28                                       ; $4061: $ef
    xor $cc                                       ; $4062: $ee $cc
    ld e, $bd                                     ; $4064: $1e $bd
    ld [hl+], a                                   ; $4066: $22
    ld e, [hl]                                    ; $4067: $5e
    ld sp, $fc8e                                  ; $4068: $31 $8e $fc
    pop hl                                        ; $406b: $e1
    nop                                           ; $406c: $00
    sub a                                         ; $406d: $97
    dec a                                         ; $406e: $3d
    halt                                          ; $406f: $76
    ld hl, $4e2d                                  ; $4070: $21 $2d $4e
    cp a                                          ; $4073: $bf
    add b                                         ; $4074: $80
    ld c, b                                       ; $4075: $48
    or h                                          ; $4076: $b4
    xor a                                         ; $4077: $af
    ld a, h                                       ; $4078: $7c
    ld a, [hl-]                                   ; $4079: $3a
    nop                                           ; $407a: $00
    rst $10                                       ; $407b: $d7
    ld l, c                                       ; $407c: $69
    ld hl, $4263                                  ; $407d: $21 $63 $42
    rst $18                                       ; $4080: $df
    ld b, c                                       ; $4081: $41
    sub [hl]                                      ; $4082: $96
    sub e                                         ; $4083: $93
    inc l                                         ; $4084: $2c
    ld e, $57                                     ; $4085: $1e $57
    and b                                         ; $4087: $a0
    adc d                                         ; $4088: $8a
    db $ec                                        ; $4089: $ec
    dec c                                         ; $408a: $0d
    cp l                                          ; $408b: $bd
    add hl, bc                                    ; $408c: $09
    pop hl                                        ; $408d: $e1
    adc [hl]                                      ; $408e: $8e
    xor b                                         ; $408f: $a8
    ccf                                           ; $4090: $3f
    db $fc                                        ; $4091: $fc
    ld [hl], h                                    ; $4092: $74
    nop                                           ; $4093: $00
    rst $10                                       ; $4094: $d7
    ld h, $d4                                     ; $4095: $26 $d4
    and h                                         ; $4097: $a4
    rlca                                          ; $4098: $07
    ld l, a                                       ; $4099: $6f
    db $ed                                        ; $409a: $ed
    call z, Call_000_2e62                         ; $409b: $cc $62 $2e
    rst $10                                       ; $409e: $d7
    dec de                                        ; $409f: $1b
    ld de, $0ffb                                  ; $40a0: $11 $fb $0f
    rlca                                          ; $40a3: $07
    sub a                                         ; $40a4: $97
    ld [hl], a                                    ; $40a5: $77
    ld hl, $c96d                                  ; $40a6: $21 $6d $c9
    jp hl                                         ; $40a9: $e9


    cp e                                          ; $40aa: $bb
    sub [hl]                                      ; $40ab: $96
    ld [hl], d                                    ; $40ac: $72
    ld e, [hl]                                    ; $40ad: $5e
    sub e                                         ; $40ae: $93
    rrca                                          ; $40af: $0f
    rst $10                                       ; $40b0: $d7

Jump_06f_40b1:
    ld l, b                                       ; $40b1: $68
    ei                                            ; $40b2: $fb
    jp z, $e707                                   ; $40b3: $ca $07 $e7

    cp e                                          ; $40b6: $bb
    ret z                                         ; $40b7: $c8

    sub [hl]                                      ; $40b8: $96
    ld b, a                                       ; $40b9: $47
    xor a                                         ; $40ba: $af
    db $ec                                        ; $40bb: $ec
    jr c, jr_06f_405b                             ; $40bc: $38 $9d

    ld c, $ef                                     ; $40be: $0e $ef
    jp c, $909c                                   ; $40c0: $da $9c $90

    ld a, e                                       ; $40c3: $7b
    inc hl                                        ; $40c4: $23
    ld h, $17                                     ; $40c5: $26 $17
    ld e, $6f                                     ; $40c7: $1e $6f
    dec h                                         ; $40c9: $25
    di                                            ; $40ca: $f3
    inc hl                                        ; $40cb: $23
    ld a, a                                       ; $40cc: $7f
    add sp, -$4b                                  ; $40cd: $e8 $b5
    or h                                          ; $40cf: $b4
    ei                                            ; $40d0: $fb
    sbc c                                         ; $40d1: $99
    ld a, h                                       ; $40d2: $7c
    nop                                           ; $40d3: $00
    sub a                                         ; $40d4: $97
    ld [hl], a                                    ; $40d5: $77
    ld b, a                                       ; $40d6: $47
    ld e, e                                       ; $40d7: $5b
    ld a, [c]                                     ; $40d8: $f2
    add a                                         ; $40d9: $87
    sbc $c0                                       ; $40da: $de $c0
    adc a                                         ; $40dc: $8f
    ld b, d                                       ; $40dd: $42
    ld e, e                                       ; $40de: $5b
    cp $c4                                        ; $40df: $fe $c4
    inc bc                                        ; $40e1: $03
    sub a                                         ; $40e2: $97
    dec l                                         ; $40e3: $2d
    jp nc, Jump_06f_5d2d                          ; $40e4: $d2 $2d $5d

    add sp, -$79                                  ; $40e7: $e8 $87
    ld c, c                                       ; $40e9: $49
    db $f4                                        ; $40ea: $f4
    jp Jump_000_07ca                              ; $40eb: $c3 $ca $07


    rst $28                                       ; $40ee: $ef
    ld c, [hl]                                    ; $40ef: $4e
    or $b3                                        ; $40f0: $f6 $b3
    xor a                                         ; $40f2: $af
    call z, $bc7e                                 ; $40f3: $cc $7e $bc
    xor a                                         ; $40f6: $af
    ld d, b                                       ; $40f7: $50
    adc h                                         ; $40f8: $8c
    inc e                                         ; $40f9: $1c
    rrca                                          ; $40fa: $0f
    rst $10                                       ; $40fb: $d7
    ld h, $47                                     ; $40fc: $26 $47
    sbc h                                         ; $40fe: $9c
    ld [de], a                                    ; $40ff: $12
    ei                                            ; $4100: $fb
    ld b, c                                       ; $4101: $41
    ld e, [hl]                                    ; $4102: $5e
    daa                                           ; $4103: $27
    ld [hl], c                                    ; $4104: $71
    call c, $d3f9                                 ; $4105: $dc $f9 $d3
    ld bc, $6157                                  ; $4108: $01 $57 $61
    or $53                                        ; $410b: $f6 $53
    xor a                                         ; $410d: $af
    ld c, a                                       ; $410e: $4f
    adc h                                         ; $410f: $8c
    or h                                          ; $4110: $b4
    inc bc                                        ; $4111: $03
    ld l, a                                       ; $4112: $6f
    db $d3                                        ; $4113: $d3
    ld a, [hl]                                    ; $4114: $7e
    ld h, h                                       ; $4115: $64
    adc [hl]                                      ; $4116: $8e
    cp l                                          ; $4117: $bd
    ld hl, $2e5e                                  ; $4118: $21 $5e $2e
    call c, $3e57                                 ; $411b: $dc $57 $3e
    dec e                                         ; $411e: $1d
    rst $28                                       ; $411f: $ef
    and [hl]                                      ; $4120: $a6
    inc l                                         ; $4121: $2c
    ld e, [hl]                                    ; $4122: $5e
    cp e                                          ; $4123: $bb
    ld b, a                                       ; $4124: $47
    dec a                                         ; $4125: $3d
    ei                                            ; $4126: $fb
    xor $98                                       ; $4127: $ee $98
    jp nc, $d8cd                                  ; $4129: $d2 $cd $d8

    ld bc, $f657                                  ; $412c: $01 $57 $f6
    dec [hl]                                      ; $412f: $35
    ld a, $f3                                     ; $4130: $3e $f3
    nop                                           ; $4132: $00
    ld l, a                                       ; $4133: $6f
    ld de, $4dc9                                  ; $4134: $11 $c9 $4d
    adc [hl]                                      ; $4137: $8e
    cp l                                          ; $4138: $bd
    ld b, $fb                                     ; $4139: $06 $fb
    ld a, [hl]                                    ; $413b: $7e
    ld l, h                                       ; $413c: $6c
    add hl, bc                                    ; $413d: $09
    sub c                                         ; $413e: $91
    ld a, a                                       ; $413f: $7f
    ret nc                                        ; $4140: $d0

    inc bc                                        ; $4141: $03
    ld d, a                                       ; $4142: $57
    call nz, Call_06f_5948                        ; $4143: $c4 $48 $59
    ld a, [c]                                     ; $4146: $f2
    and a                                         ; $4147: $a7
    ld a, [hl]                                    ; $4148: $7e
    cp h                                          ; $4149: $bc
    ld a, e                                       ; $414a: $7b
    ld e, e                                       ; $414b: $5b
    cp $c4                                        ; $414c: $fe $c4
    inc bc                                        ; $414e: $03
    rst $10                                       ; $414f: $d7
    ld d, d                                       ; $4150: $52
    ld a, $4d                                     ; $4151: $3e $4d
    rst $18                                       ; $4153: $df
    sbc d                                         ; $4154: $9a
    inc l                                         ; $4155: $2c
    add [hl]                                      ; $4156: $86
    dec sp                                        ; $4157: $3b
    nop                                           ; $4158: $00
    ld e, a                                       ; $4159: $5f
    xor h                                         ; $415a: $ac
    ld e, l                                       ; $415b: $5d
    ld h, h                                       ; $415c: $64
    db $f4                                        ; $415d: $f4
    dec a                                         ; $415e: $3d
    rst $18                                       ; $415f: $df
    ld b, e                                       ; $4160: $43
    pop af                                        ; $4161: $f1
    sub d                                         ; $4162: $92
    ccf                                           ; $4163: $3f
    inc e                                         ; $4164: $1c
    ld l, a                                       ; $4165: $6f
    reti                                          ; $4166: $d9


    ld a, [hl-]                                   ; $4167: $3a
    xor l                                         ; $4168: $ad
    ret z                                         ; $4169: $c8

    ld a, [hl]                                    ; $416a: $7e
    pop bc                                        ; $416b: $c1
    cp h                                          ; $416c: $bc
    adc a                                         ; $416d: $8f
    db $fc                                        ; $416e: $fc
    pop hl                                        ; $416f: $e1
    nop                                           ; $4170: $00
    rst $28                                       ; $4171: $ef
    adc [hl]                                      ; $4172: $8e
    or a                                          ; $4173: $b7
    dec h                                         ; $4174: $25
    ei                                            ; $4175: $fb
    xor [hl]                                      ; $4176: $ae
    dec l                                         ; $4177: $2d
    pop de                                        ; $4178: $d1
    jp z, $d8f7                                   ; $4179: $ca $f7 $d8

    jp nz, $d701                                  ; $417c: $c2 $01 $d7

    sub [hl]                                      ; $417f: $96
    ld hl, $f47b                                  ; $4180: $21 $7b $f4
    db $dd                                        ; $4183: $dd
    ld d, c                                       ; $4184: $51
    ld sp, $fc7e                                  ; $4185: $31 $7e $fc
    pop hl                                        ; $4188: $e1
    nop                                           ; $4189: $00
    scf                                           ; $418a: $37
    or b                                          ; $418b: $b0
    db $e3                                        ; $418c: $e3
    ld [hl], $ac                                  ; $418d: $36 $ac
    scf                                           ; $418f: $37
    ld h, $2b                                     ; $4190: $26 $2b
    ld l, l                                       ; $4192: $6d
    ld h, l                                       ; $4193: $65
    inc e                                         ; $4194: $1c
    sbc a                                         ; $4195: $9f
    inc h                                         ; $4196: $24
    ld [hl-], a                                   ; $4197: $32
    rst $30                                       ; $4198: $f7
    ld a, [de]                                    ; $4199: $1a
    ld hl, sp-$19                                 ; $419a: $f8 $e7
    ld bc, $b957                                  ; $419c: $01 $57 $b9
    sbc a                                         ; $419f: $9f
    ret nc                                        ; $41a0: $d0

    rrca                                          ; $41a1: $0f
    sub e                                         ; $41a2: $93
    ld [$ec4f], sp                                ; $41a3: $08 $4f $ec
    ld c, c                                       ; $41a6: $49
    add h                                         ; $41a7: $84
    inc bc                                        ; $41a8: $03
    sbc a                                         ; $41a9: $9f
    adc $8f                                       ; $41aa: $ce $8f
    call z, $95e8                                 ; $41ac: $cc $e8 $95
    or c                                          ; $41af: $b1
    rst $38                                       ; $41b0: $ff
    jp z, Jump_000_0fd8                           ; $41b1: $ca $d8 $0f

    ld d, a                                       ; $41b4: $57
    sbc c                                         ; $41b5: $99
    ld c, a                                       ; $41b6: $4f
    ld c, e                                       ; $41b7: $4b
    db $e3                                        ; $41b8: $e3
    call nc, $5fb3                                ; $41b9: $d4 $b3 $5f
    call z, Call_06f_6978                         ; $41bc: $cc $78 $69
    inc hl                                        ; $41bf: $23
    adc d                                         ; $41c0: $8a
    rlca                                          ; $41c1: $07
    ld l, a                                       ; $41c2: $6f
    ld h, e                                       ; $41c3: $63
    jp hl                                         ; $41c4: $e9


    ld c, a                                       ; $41c5: $4f
    ld a, l                                       ; $41c6: $7d
    ld a, e                                       ; $41c7: $7b
    cp h                                          ; $41c8: $bc
    and a                                         ; $41c9: $a7
    dec l                                         ; $41ca: $2d
    ld a, a                                       ; $41cb: $7f
    ld [c], a                                     ; $41cc: $e2

jr_06f_41cd:
    ld bc, $f797                                  ; $41cd: $01 $97 $f7
    rst $38                                       ; $41d0: $ff
    db $f4                                        ; $41d1: $f4
    db $ed                                        ; $41d2: $ed
    db $e4                                        ; $41d3: $e4
    add h                                         ; $41d4: $84
    dec sp                                        ; $41d5: $3b
    db $fd                                        ; $41d6: $fd
    jr @+$11                                      ; $41d7: $18 $0f

    ld l, a                                       ; $41d9: $6f
    ld c, a                                       ; $41da: $4f
    add $49                                       ; $41db: $c6 $49
    adc h                                         ; $41dd: $8c
    call c, $8ccf                                 ; $41de: $dc $cf $8c
    ld l, [hl]                                    ; $41e1: $6e
    ld h, a                                       ; $41e2: $67
    adc h                                         ; $41e3: $8c
    rlca                                          ; $41e4: $07
    rst $10                                       ; $41e5: $d7
    sub d                                         ; $41e6: $92
    ld l, $3f                                     ; $41e7: $2e $3f
    add [hl]                                      ; $41e9: $86
    cp [hl]                                       ; $41ea: $be
    dec b                                         ; $41eb: $05
    ei                                            ; $41ec: $fb
    pop hl                                        ; $41ed: $e1
    rst $00                                       ; $41ee: $c7
    dec d                                         ; $41ef: $15
    push bc                                       ; $41f0: $c5
    rlca                                          ; $41f1: $07
    rst $28                                       ; $41f2: $ef
    ld l, $cf                                     ; $41f3: $2e $cf

jr_06f_41f5:
    ret                                           ; $41f5: $c9


    cp l                                          ; $41f6: $bd
    ld h, d                                       ; $41f7: $62
    ret                                           ; $41f8: $c9


    add hl, bc                                    ; $41f9: $09
    rrca                                          ; $41fa: $0f
    ld d, a                                       ; $41fb: $57
    ld l, c                                       ; $41fc: $69
    ld c, $b9                                     ; $41fd: $0e $b9
    ld e, a                                       ; $41ff: $5f
    xor h                                         ; $4200: $ac
    inc e                                         ; $4201: $1c
    ld l, l                                       ; $4202: $6d
    push hl                                       ; $4203: $e5
    sub e                                         ; $4204: $93
    jr jr_06f_41f5                                ; $4205: $18 $ee

    nop                                           ; $4207: $00
    rra                                           ; $4208: $1f
    inc l                                         ; $4209: $2c
    db $db                                        ; $420a: $db
    ld sp, hl                                     ; $420b: $f9
    ld d, e                                       ; $420c: $53
    rst $18                                       ; $420d: $df
    ld c, [hl]                                    ; $420e: $4e
    ccf                                           ; $420f: $3f
    ldh a, [rP1]                                  ; $4210: $f0 $00
    rst $10                                       ; $4212: $d7
    ld a, [hl]                                    ; $4213: $7e
    or d                                          ; $4214: $b2
    ret                                           ; $4215: $c9


    db $fd                                        ; $4216: $fd
    ld [bc], a                                    ; $4217: $02
    and a                                         ; $4218: $a7
    adc b                                         ; $4219: $88
    or l                                          ; $421a: $b5
    rra                                           ; $421b: $1f
    rra                                           ; $421c: $1f
    sbc e                                         ; $421d: $9b
    xor [hl]                                      ; $421e: $ae
    inc a                                         ; $421f: $3c
    db $fd                                        ; $4220: $fd
    ld c, h                                       ; $4221: $4c
    ld l, h                                       ; $4222: $6c
    ld c, c                                       ; $4223: $49
    db $e3                                        ; $4224: $e3
    db $e4                                        ; $4225: $e4
    inc bc                                        ; $4226: $03
    ld d, a                                       ; $4227: $57
    cp b                                          ; $4228: $b8

Call_06f_4229:
    ld d, e                                       ; $4229: $53
    db $e3                                        ; $422a: $e3
    jp z, $17e8                                   ; $422b: $ca $e8 $17

    jr nc, jr_06f_4251                            ; $422e: $30 $21

    push hl                                       ; $4230: $e5
    rrca                                          ; $4231: $0f
    rlca                                          ; $4232: $07
    ld d, a                                       ; $4233: $57
    adc c                                         ; $4234: $89
    jr z, jr_06f_41cd                             ; $4235: $28 $96

    inc de                                        ; $4237: $13
    reti                                          ; $4238: $d9


    or a                                          ; $4239: $b7
    ld h, b                                       ; $423a: $60
    ld b, d                                       ; $423b: $42
    ret c                                         ; $423c: $d8

    ld c, a                                       ; $423d: $4f
    rlca                                          ; $423e: $07
    rst $10                                       ; $423f: $d7
    ld l, b                                       ; $4240: $68
    ld [hl], c                                    ; $4241: $71
    ld [hl], d                                    ; $4242: $72
    rst $18                                       ; $4243: $df
    dec [hl]                                      ; $4244: $35
    db $fc                                        ; $4245: $fc
    xor c                                         ; $4246: $a9
    rlca                                          ; $4247: $07
    ld l, a                                       ; $4248: $6f
    call Call_000_0e8f                            ; $4249: $cd $8f $0e
    cp c                                          ; $424c: $b9
    ld e, a                                       ; $424d: $5f
    ret c                                         ; $424e: $d8

    ld a, [hl-]                                   ; $424f: $3a
    adc c                                         ; $4250: $89

jr_06f_4251:
    db $e3                                        ; $4251: $e3
    ld bc, $8fef                                  ; $4252: $01 $ef $8f
    ld c, d                                       ; $4255: $4a
    xor $2b                                       ; $4256: $ee $2b
    ei                                            ; $4258: $fb
    ld a, [hl]                                    ; $4259: $7e
    ld bc, $472f                                  ; $425a: $01 $2f $47
    cp $70                                        ; $425d: $fe $70
    nop                                           ; $425f: $00
    rst $28                                       ; $4260: $ef
    cp $c8                                        ; $4261: $fe $c8
    inc a                                         ; $4263: $3c
    and a                                         ; $4264: $a7
    cp [hl]                                       ; $4265: $be
    ccf                                           ; $4266: $3f
    sbc c                                         ; $4267: $99
    ld a, d                                       ; $4268: $7a
    nop                                           ; $4269: $00
    ld d, a                                       ; $426a: $57
    ld a, [hl]                                    ; $426b: $7e
    ld a, [bc]                                    ; $426c: $0a
    ld l, l                                       ; $426d: $6d
    ld hl, $abf7                                  ; $426e: $21 $f7 $ab
    ld c, c                                       ; $4271: $49
    ld a, [hl]                                    ; $4272: $7e
    rst $20                                       ; $4273: $e7
    ld bc, $f36f                                  ; $4274: $01 $6f $f3
    cp a                                          ; $4277: $bf
    xor a                                         ; $4278: $af
    call c, $c42f                                 ; $4279: $dc $2f $c4
    dec hl                                        ; $427c: $2b
    ld d, d                                       ; $427d: $52
    inc a                                         ; $427e: $3c
    sub [hl]                                      ; $427f: $96
    rrca                                          ; $4280: $0f
    ld l, a                                       ; $4281: $6f
    and a                                         ; $4282: $a7
    inc l                                         ; $4283: $2c
    add h                                         ; $4284: $84
    push af                                       ; $4285: $f5
    db $e3                                        ; $4286: $e3
    db $d3                                        ; $4287: $d3
    adc $28                                       ; $4288: $ce $28
    ld e, $0b                                     ; $428a: $1e $0b
    ld a, c                                       ; $428c: $79
    nop                                           ; $428d: $00
    rra                                           ; $428e: $1f
    ld [hl], d                                    ; $428f: $72
    jp nz, $fdd9                                  ; $4290: $c2 $d9 $fd

    jp z, Jump_000_0de8                           ; $4293: $ca $e8 $0d

    rst $00                                       ; $4296: $c7

jr_06f_4297:
    jr z, jr_06f_4297                             ; $4297: $28 $fe

    pop af                                        ; $4299: $f1
    daa                                           ; $429a: $27
    ld sp, hl                                     ; $429b: $f9
    jp $9f01                                      ; $429c: $c3 $01 $9f


    adc [hl]                                      ; $429f: $8e
    and a                                         ; $42a0: $a7
    dec l                                         ; $42a1: $2d
    ld sp, hl                                     ; $42a2: $f9
    ld b, e                                       ; $42a3: $43
    xor a                                         ; $42a4: $af
    rst $28                                       ; $42a5: $ef
    ret                                           ; $42a6: $c9


    add l                                         ; $42a7: $85
    ld [hl], c                                    ; $42a8: $71
    ld a, [c]                                     ; $42a9: $f2
    ld bc, $ce9f                                  ; $42aa: $01 $9f $ce
    adc [hl]                                      ; $42ad: $8e
    db $ec                                        ; $42ae: $ec
    ei                                            ; $42af: $fb
    ld bc, $a74f                                  ; $42b0: $01 $4f $a7
    inc bc                                        ; $42b3: $03
    ld d, a                                       ; $42b4: $57
    ld l, c                                       ; $42b5: $69
    pop hl                                        ; $42b6: $e1
    ld [$fd3a], sp                                ; $42b7: $08 $3a $fd
    ld l, h                                       ; $42ba: $6c
    or $39                                        ; $42bb: $f6 $39
    nop                                           ; $42bd: $00
    sub a                                         ; $42be: $97
    or e                                          ; $42bf: $b3
    or a                                          ; $42c0: $b7
    ld d, c                                       ; $42c1: $51
    ld b, c                                       ; $42c2: $41
    and a                                         ; $42c3: $a7
    rst $28                                       ; $42c4: $ef
    push hl                                       ; $42c5: $e5
    ccf                                           ; $42c6: $3f
    or e                                          ; $42c7: $b3
    cp h                                          ; $42c8: $bc
    ei                                            ; $42c9: $fb
    rst $08                                       ; $42ca: $cf
    db $fd                                        ; $42cb: $fd
    nop                                           ; $42cc: $00
    sbc a                                         ; $42cd: $9f
    db $db                                        ; $42ce: $db
    sub d                                         ; $42cf: $92
    inc hl                                        ; $42d0: $23
    add sp, -$0c                                  ; $42d1: $e8 $f4
    ld e, h                                       ; $42d3: $5c
    inc bc                                        ; $42d4: $03
    ld l, c                                       ; $42d5: $69
    jp hl                                         ; $42d6: $e9


    adc d                                         ; $42d7: $8a
    cp a                                          ; $42d8: $bf
    ld [hl], e                                    ; $42d9: $73
    nop                                           ; $42da: $00
    rra                                           ; $42db: $1f
    adc [hl]                                      ; $42dc: $8e
    ld sp, hl                                     ; $42dd: $f9
    sbc $88                                       ; $42de: $de $88
    db $e3                                        ; $42e0: $e3
    dec a                                         ; $42e1: $3d
    call z, $8bf7                                 ; $42e2: $cc $f7 $8b
    dec d                                         ; $42e5: $15
    push bc                                       ; $42e6: $c5
    inc [hl]                                      ; $42e7: $34
    dec a                                         ; $42e8: $3d
    nop                                           ; $42e9: $00
    ld d, a                                       ; $42ea: $57
    sub [hl]                                      ; $42eb: $96
    ld c, c                                       ; $42ec: $49
    ld e, $d7                                     ; $42ed: $1e $d7
    sub [hl]                                      ; $42ef: $96
    ld b, c                                       ; $42f0: $41
    ret z                                         ; $42f1: $c8

    ld a, l                                       ; $42f2: $7d
    ld b, a                                       ; $42f3: $47
    xor a                                         ; $42f4: $af
    rst $28                                       ; $42f5: $ef
    add hl, hl                                    ; $42f6: $29
    rst $38                                       ; $42f7: $ff
    ret nz                                        ; $42f8: $c0

    jr jr_06f_430a                                ; $42f9: $18 $0f

    ld l, a                                       ; $42fb: $6f
    pop de                                        ; $42fc: $d1
    ld [c], a                                     ; $42fd: $e2
    ld h, d                                       ; $42fe: $62
    rst $18                                       ; $42ff: $df
    sbc d                                         ; $4300: $9a
    jr jr_06f_4312                                ; $4301: $18 $0f

    sbc a                                         ; $4303: $9f
    adc c                                         ; $4304: $89
    pop hl                                        ; $4305: $e1
    dec a                                         ; $4306: $3d
    sub e                                         ; $4307: $93
    or $33                                        ; $4308: $f6 $33

jr_06f_430a:
    ld [hl], c                                    ; $430a: $71
    or d                                          ; $430b: $b2
    rra                                           ; $430c: $1f
    cp b                                          ; $430d: $b8
    rst $28                                       ; $430e: $ef
    rlca                                          ; $430f: $07
    ld l, a                                       ; $4310: $6f
    ld d, e                                       ; $4311: $53

jr_06f_4312:
    push hl                                       ; $4312: $e5
    ld h, h                                       ; $4313: $64
    ld sp, $f2e5                                  ; $4314: $31 $e5 $f2
    jr c, jr_06f_4319                             ; $4317: $38 $00

jr_06f_4319:
    dec a                                         ; $4319: $3d
    nop                                           ; $431a: $00
    rst $20                                       ; $431b: $e7
    or a                                          ; $431c: $b7
    jr z, jr_06f_4372                             ; $431d: $28 $53

    add h                                         ; $431f: $84
    push af                                       ; $4320: $f5
    ld [hl], d                                    ; $4321: $72
    ld b, h                                       ; $4322: $44
    jr nz, @-$0d                                  ; $4323: $20 $f1

    nop                                           ; $4325: $00
    db $ed                                        ; $4326: $ed
    or a                                          ; $4327: $b7
    rst $20                                       ; $4328: $e7
    ld a, [de]                                    ; $4329: $1a
    sub e                                         ; $432a: $93

Call_06f_432b:
    sbc a                                         ; $432b: $9f
    ld d, h                                       ; $432c: $54
    add hl, sp                                    ; $432d: $39
    ld l, [hl]                                    ; $432e: $6e
    ld a, [bc]                                    ; $432f: $0a
    xor l                                         ; $4330: $ad
    ld [$ad4a], sp                                ; $4331: $08 $4a $ad
    ld b, a                                       ; $4334: $47
    rst $30                                       ; $4335: $f7
    add h                                         ; $4336: $84
    ld b, d                                       ; $4337: $42
    call nz, Call_06f_5708                        ; $4338: $c4 $08 $57
    inc [hl]                                      ; $433b: $34
    inc [hl]                                      ; $433c: $34
    add [hl]                                      ; $433d: $86
    jr nc, jr_06f_439c                            ; $433e: $30 $5c

    db $fc                                        ; $4340: $fc
    sbc l                                         ; $4341: $9d
    ld a, d                                       ; $4342: $7a
    ld [hl], $9c                                  ; $4343: $36 $9c
    adc e                                         ; $4345: $8b

Jump_06f_4346:
    rst $30                                       ; $4346: $f7
    ld d, d                                       ; $4347: $52
    or a                                          ; $4348: $b7
    inc bc                                        ; $4349: $03
    db $ed                                        ; $434a: $ed
    or a                                          ; $434b: $b7
    rra                                           ; $434c: $1f
    rst $10                                       ; $434d: $d7
    ld h, c                                       ; $434e: $61

Call_06f_434f:
    adc l                                         ; $434f: $8d
    push de                                       ; $4350: $d5
    or e                                          ; $4351: $b3
    ld [hl], c                                    ; $4352: $71
    db $fc                                        ; $4353: $fc
    ld l, b                                       ; $4354: $68
    ld b, a                                       ; $4355: $47
    adc e                                         ; $4356: $8b
    dec a                                         ; $4357: $3d
    sub b                                         ; $4358: $90
    sub [hl]                                      ; $4359: $96
    ld e, e                                       ; $435a: $5b
    ld a, [de]                                    ; $435b: $1a
    and c                                         ; $435c: $a1
    ld [hl], l                                    ; $435d: $75
    db $f4                                        ; $435e: $f4
    adc e                                         ; $435f: $8b
    ld a, a                                       ; $4360: $7f
    inc l                                         ; $4361: $2c
    db $dd                                        ; $4362: $dd
    ld c, $ed                                     ; $4363: $0e $ed
    or a                                          ; $4365: $b7
    rst $20                                       ; $4366: $e7
    or a                                          ; $4367: $b7
    jp nz, $fc7d                                  ; $4368: $c2 $7d $fc

    ld c, d                                       ; $436b: $4a
    ld b, l                                       ; $436c: $45
    or c                                          ; $436d: $b1
    ld a, e                                       ; $436e: $7b
    ld l, $d4                                     ; $436f: $2e $d4
    or e                                          ; $4371: $b3

jr_06f_4372:
    rst $10                                       ; $4372: $d7
    add hl, de                                    ; $4373: $19
    ld c, b                                       ; $4374: $48
    call z, Call_000_27e8                         ; $4375: $cc $e8 $27
    adc c                                         ; $4378: $89
    ld e, $65                                     ; $4379: $1e $65
    ld c, $24                                     ; $437b: $0e $24
    db $e4                                        ; $437d: $e4
    jr c, jr_06f_438d                             ; $437e: $38 $0d

    adc l                                         ; $4380: $8d
    ld hl, $7f0c                                  ; $4381: $21 $0c $7f
    call nc, $b4e1                                ; $4384: $d4 $e1 $b4
    inc h                                         ; $4387: $24
    inc e                                         ; $4388: $1c
    ld [hl], e                                    ; $4389: $73
    ld h, h                                       ; $438a: $64
    sub e                                         ; $438b: $93
    xor e                                         ; $438c: $ab

jr_06f_438d:
    ld [hl], b                                    ; $438d: $70
    or $a9                                        ; $438e: $f6 $a9
    ld h, a                                       ; $4390: $67
    sub c                                         ; $4391: $91
    rst $10                                       ; $4392: $d7
    sbc a                                         ; $4393: $9f
    and [hl]                                      ; $4394: $a6
    pop bc                                        ; $4395: $c1
    or [hl]                                       ; $4396: $b6
    ld h, [hl]                                    ; $4397: $66
    dec sp                                        ; $4398: $3b
    nop                                           ; $4399: $00
    db $ed                                        ; $439a: $ed
    or a                                          ; $439b: $b7

jr_06f_439c:
    ld l, a                                       ; $439c: $6f
    ld d, e                                       ; $439d: $53
    push hl                                       ; $439e: $e5
    ld [$a56d], sp                                ; $439f: $08 $6d $a5
    and d                                         ; $43a2: $a2
    add hl, hl                                    ; $43a3: $29
    xor [hl]                                      ; $43a4: $ae
    ld a, l                                       ; $43a5: $7d
    ld a, c                                       ; $43a6: $79
    ld a, b                                       ; $43a7: $78
    sub $4f                                       ; $43a8: $d6 $4f
    ld c, a                                       ; $43aa: $4f
    adc c                                         ; $43ab: $89
    cp e                                          ; $43ac: $bb
    dec l                                         ; $43ad: $2d
    add hl, hl                                    ; $43ae: $29
    sbc [hl]                                      ; $43af: $9e
    ld b, $12                                     ; $43b0: $06 $12
    or d                                          ; $43b2: $b2
    sbc a                                         ; $43b3: $9f
    add [hl]                                      ; $43b4: $86
    add $ec                                       ; $43b5: $c6 $ec
    sbc c                                         ; $43b7: $99
    adc d                                         ; $43b8: $8a
    ld c, d                                       ; $43b9: $4a
    ld [$1179], sp                                ; $43ba: $08 $79 $11
    push af                                       ; $43bd: $f5
    call z, $a6d1                                 ; $43be: $cc $d1 $a6
    sbc [hl]                                      ; $43c1: $9e
    ld c, l                                       ; $43c2: $4d
    xor [hl]                                      ; $43c3: $ae
    ld b, d                                       ; $43c4: $42
    db $ec                                        ; $43c5: $ec
    sbc [hl]                                      ; $43c6: $9e
    push af                                       ; $43c7: $f5
    ld l, h                                       ; $43c8: $6c
    ldh a, [$29]                                  ; $43c9: $f0 $29
    ld h, c                                       ; $43cb: $61
    dec sp                                        ; $43cc: $3b
    nop                                           ; $43cd: $00
    db $ed                                        ; $43ce: $ed
    or a                                          ; $43cf: $b7
    ld d, a                                       ; $43d0: $57
    cp b                                          ; $43d1: $b8
    ld d, e                                       ; $43d2: $53
    ld l, b                                       ; $43d3: $68
    ldh a, [$d3]                                  ; $43d4: $f0 $d3
    sub l                                         ; $43d6: $95
    rst $38                                       ; $43d7: $ff
    call z, $ac71                                 ; $43d8: $cc $71 $ac
    ld a, [hl]                                    ; $43db: $7e
    ld a, [hl+]                                   ; $43dc: $2a
    or c                                          ; $43dd: $b1
    ld a, e                                       ; $43de: $7b
    ld l, $fb                                     ; $43df: $2e $fb
    sbc l                                         ; $43e1: $9d
    ld [hl+], a                                   ; $43e2: $22
    push bc                                       ; $43e3: $c5
    ld [hl], c                                    ; $43e4: $71
    cp h                                          ; $43e5: $bc
    ld b, l                                       ; $43e6: $45
    cp a                                          ; $43e7: $bf
    ld l, $ce                                     ; $43e8: $2e $ce
    halt                                          ; $43ea: $76
    nop                                           ; $43eb: $00
    db $ed                                        ; $43ec: $ed

jr_06f_43ed:
    or a                                          ; $43ed: $b7
    rst $28                                       ; $43ee: $ef
    push hl                                       ; $43ef: $e5
    ccf                                           ; $43f0: $3f
    ld [hl], e                                    ; $43f1: $73
    inc e                                         ; $43f2: $1c
    xor e                                         ; $43f3: $ab
    ld b, a                                       ; $43f4: $47
    jp $f8b9                                      ; $43f5: $c3 $b9 $f8


    dec sp                                        ; $43f8: $3b
    and l                                         ; $43f9: $a5
    add $e5                                       ; $43fa: $c6 $e5
    jp nc, Jump_000_1c8e                          ; $43fc: $d2 $8e $1c

    add hl, hl                                    ; $43ff: $29
    jr z, jr_06f_43ed                             ; $4400: $28 $eb

    ld d, c                                       ; $4402: $51
    sbc c                                         ; $4403: $99
    inc c                                         ; $4404: $0c
    dec c                                         ; $4405: $0d
    ld h, c                                       ; $4406: $61
    add sp, -$2c                                  ; $4407: $e8 $d4
    xor b                                         ; $4409: $a8
    ld [hl+], a                                   ; $440a: $22
    ld e, e                                       ; $440b: $5b
    ldh a, [rHDMA3]                               ; $440c: $f0 $53
    add hl, sp                                    ; $440e: $39
    ld l, $b9                                     ; $440f: $2e $b9
    db $ed                                        ; $4411: $ed
    nop                                           ; $4412: $00
    db $ed                                        ; $4413: $ed
    or a                                          ; $4414: $b7
    rst $28                                       ; $4415: $ef
    ret nz                                        ; $4416: $c0

    adc l                                         ; $4417: $8d
    ld c, [hl]                                    ; $4418: $4e
    and l                                         ; $4419: $a5
    dec l                                         ; $441a: $2d
    ld hl, sp-$4f                                 ; $441b: $f8 $b1
    ld a, [$e7e9]                                 ; $441d: $fa $e9 $e7
    ld sp, hl                                     ; $4420: $f9
    sub h                                         ; $4421: $94
    sbc b                                         ; $4422: $98
    db $e3                                        ; $4423: $e3
    db $f4                                        ; $4424: $f4
    di                                            ; $4425: $f3
    ld a, h                                       ; $4426: $7c
    ld c, d                                       ; $4427: $4a
    ldh a, [rHDMA3]                               ; $4428: $f0 $53
    ccf                                           ; $442a: $3f
    ld a, l                                       ; $442b: $7d
    rst $10                                       ; $442c: $d7
    ld a, b                                       ; $442d: $78
    ld a, [de]                                    ; $442e: $1a
    ei                                            ; $442f: $fb
    ld l, c                                       ; $4430: $69
    dec sp                                        ; $4431: $3b
    nop                                           ; $4432: $00
    db $ed                                        ; $4433: $ed
    or a                                          ; $4434: $b7
    rst $28                                       ; $4435: $ef
    push hl                                       ; $4436: $e5
    ccf                                           ; $4437: $3f
    ld [hl], e                                    ; $4438: $73
    inc e                                         ; $4439: $1c
    ld b, e                                       ; $443a: $43
    dec a                                         ; $443b: $3d
    db $eb                                        ; $443c: $eb
    jp nc, $d08a                                  ; $443d: $d2 $8a $d0

    add [hl]                                      ; $4440: $86
    ld [hl], e                                    ; $4441: $73
    pop af                                        ; $4442: $f1
    ld e, [hl]                                    ; $4443: $5e
    ld l, d                                       ; $4444: $6a
    db $fd                                        ; $4445: $fd
    inc d                                         ; $4446: $14
    ld l, [hl]                                    ; $4447: $6e
    ld l, h                                       ; $4448: $6c
    dec sp                                        ; $4449: $3b
    nop                                           ; $444a: $00
    db $ed                                        ; $444b: $ed
    or a                                          ; $444c: $b7
    sub a                                         ; $444d: $97
    dec hl                                        ; $444e: $2b
    or h                                          ; $444f: $b4
    ld [hl], h                                    ; $4450: $74
    dec bc                                        ; $4451: $0b
    dec c                                         ; $4452: $0d
    inc h                                         ; $4453: $24
    halt                                          ; $4454: $76
    push hl                                       ; $4455: $e5
    ccf                                           ; $4456: $3f
    ld [hl], e                                    ; $4457: $73
    sbc h                                         ; $4458: $9c
    call nc, Call_06f_7869                        ; $4459: $d4 $69 $78
    ld c, a                                       ; $445c: $4f
    dec a                                         ; $445d: $3d
    dec hl                                        ; $445e: $2b
    jp c, Jump_06f_76d3                           ; $445f: $da $d3 $76

    nop                                           ; $4462: $00
    db $ed                                        ; $4463: $ed
    or a                                          ; $4464: $b7
    ld l, a                                       ; $4465: $6f
    ld d, e                                       ; $4466: $53
    push hl                                       ; $4467: $e5
    ld [$a56d], sp                                ; $4468: $08 $6d $a5
    ld b, d                                       ; $446b: $42
    dec de                                        ; $446c: $1b
    jp c, $b684                                   ; $446d: $da $84 $b6

    add sp, -$1f                                  ; $4470: $e8 $e1
    xor c                                         ; $4472: $a9
    sub l                                         ; $4473: $95
    ret                                           ; $4474: $c9


    db $10                                        ; $4475: $10
    rst $10                                       ; $4476: $d7
    rra                                           ; $4477: $1f
    ld e, d                                       ; $4478: $5a
    ccf                                           ; $4479: $3f
    dec c                                         ; $447a: $0d
    rst $28                                       ; $447b: $ef

jr_06f_447c:
    rst $10                                       ; $447c: $d7
    ld a, d                                       ; $447d: $7a
    ld d, [hl]                                    ; $447e: $56
    sbc b                                         ; $447f: $98
    add h                                         ; $4480: $84
    inc de                                        ; $4481: $13
    rst $28                                       ; $4482: $ef
    rla                                           ; $4483: $17
    jp nc, $dba0                                  ; $4484: $d2 $a0 $db

    ld bc, $b7ed                                  ; $4487: $01 $ed $b7
    rst $28                                       ; $448a: $ef
    ret nz                                        ; $448b: $c0

    adc l                                         ; $448c: $8d
    ld c, [hl]                                    ; $448d: $4e
    jp Jump_000_3ab1                              ; $448e: $c3 $b1 $3a


    ld b, h                                       ; $4491: $44
    ld e, b                                       ; $4492: $58
    ld d, c                                       ; $4493: $51
    and l                                         ; $4494: $a5
    add l                                         ; $4495: $85
    call z, Call_06f_7591                         ; $4496: $cc $91 $75
    or b                                          ; $4499: $b0
    sub l                                         ; $449a: $95
    push bc                                       ; $449b: $c5
    xor b                                         ; $449c: $a8
    ld h, a                                       ; $449d: $67
    xor a                                         ; $449e: $af
    ret c                                         ; $449f: $d8

    jr c, jr_06f_447c                             ; $44a0: $38 $da

    halt                                          ; $44a2: $76
    nop                                           ; $44a3: $00
    db $ed                                        ; $44a4: $ed
    or a                                          ; $44a5: $b7
    rst $20                                       ; $44a6: $e7
    ld a, [de]                                    ; $44a7: $1a
    ld hl, $4ee4                                  ; $44a8: $21 $e4 $4e
    ret                                           ; $44ab: $c9


    ld d, h                                       ; $44ac: $54
    db $f4                                        ; $44ad: $f4
    jp z, $a5b8                                   ; $44ae: $ca $b8 $a5

    ld a, [$f53b]                                 ; $44b1: $fa $3b $f5
    db $ec                                        ; $44b4: $ec
    dec sp                                        ; $44b5: $3b
    ld e, h                                       ; $44b6: $5c
    ld [hl], c                                    ; $44b7: $71
    ld e, l                                       ; $44b8: $5d
    inc e                                         ; $44b9: $1c
    db $ed                                        ; $44ba: $ed
    ld sp, hl                                     ; $44bb: $f9
    xor l                                         ; $44bc: $ad
    sub b                                         ; $44bd: $90
    or [hl]                                       ; $44be: $b6
    inc e                                         ; $44bf: $1c
    ld [hl], e                                    ; $44c0: $73
    call nz, $edd2                                ; $44c1: $c4 $d2 $ed
    nop                                           ; $44c4: $00
    db $ed                                        ; $44c5: $ed
    or a                                          ; $44c6: $b7
    rra                                           ; $44c7: $1f
    ld [hl], a                                    ; $44c8: $77
    push hl                                       ; $44c9: $e5
    ccf                                           ; $44ca: $3f
    ld [hl], e                                    ; $44cb: $73
    inc e                                         ; $44cc: $1c
    xor e                                         ; $44cd: $ab
    rra                                           ; $44ce: $1f
    xor l                                         ; $44cf: $ad
    adc b                                         ; $44d0: $88
    dec hl                                        ; $44d1: $2b
    xor [hl]                                      ; $44d2: $ae
    adc e                                         ; $44d3: $8b
    and e                                         ; $44d4: $a3
    dec c                                         ; $44d5: $0d
    ld h, c                                       ; $44d6: $61
    jr z, jr_06f_454f                             ; $44d7: $28 $76

    sbc [hl]                                      ; $44d9: $9e
    inc c                                         ; $44da: $0c
    or [hl]                                       ; $44db: $b6
    dec e                                         ; $44dc: $1d
    db $ed                                        ; $44dd: $ed
    or a                                          ; $44de: $b7
    sub a                                         ; $44df: $97
    ld d, e                                       ; $44e0: $53
    inc e                                         ; $44e1: $1c
    ld b, e                                       ; $44e2: $43
    dec a                                         ; $44e3: $3d
    ei                                            ; $44e4: $fb
    ret z                                         ; $44e5: $c8

    ld a, c                                       ; $44e6: $79
    ld d, $71                                     ; $44e7: $16 $71
    push bc                                       ; $44e9: $c5
    dec h                                         ; $44ea: $25
    reti                                          ; $44eb: $d9


    adc a                                         ; $44ec: $8f
    ld a, e                                       ; $44ed: $7b
    db $dd                                        ; $44ee: $dd
    xor $09                                       ; $44ef: $ee $09
    ld l, l                                       ; $44f1: $6d
    ld c, l                                       ; $44f2: $4d
    ccf                                           ; $44f3: $3f
    ld c, c                                       ; $44f4: $49
    ld e, h                                       ; $44f5: $5c
    rst $18                                       ; $44f6: $df
    rst $08                                       ; $44f7: $cf
    inc hl                                        ; $44f8: $23
    db $db                                        ; $44f9: $db
    ld bc, $b7ed                                  ; $44fa: $01 $ed $b7
    rst $28                                       ; $44fd: $ef
    and h                                         ; $44fe: $a4
    db $ec                                        ; $44ff: $ec
    daa                                           ; $4500: $27
    dec d                                         ; $4501: $15
    cp l                                          ; $4502: $bd
    ld sp, $d172                                  ; $4503: $31 $72 $d1
    jp $9eb3                                      ; $4506: $c3 $b3 $9e


    db $fd                                        ; $4509: $fd
    sub h                                         ; $450a: $94
    and d                                         ; $450b: $a2
    ld sp, $7a87                                  ; $450c: $31 $87 $7a
    or $1d                                        ; $450f: $f6 $1d
    xor [hl]                                      ; $4511: $ae
    cp b                                          ; $4512: $b8
    inc h                                         ; $4513: $24
    sub a                                         ; $4514: $97
    ld b, c                                       ; $4515: $41
    or a                                          ; $4516: $b7
    inc bc                                        ; $4517: $03
    db $ed                                        ; $4518: $ed
    or a                                          ; $4519: $b7
    rst $28                                       ; $451a: $ef
    ret nz                                        ; $451b: $c0

    adc l                                         ; $451c: $8d
    ld c, [hl]                                    ; $451d: $4e
    dec e                                         ; $451e: $1d
    ld [hl+], a                                   ; $451f: $22
    db $fc                                        ; $4520: $fc
    ld e, b                                       ; $4521: $58
    dec a                                         ; $4522: $3d
    ld a, e                                       ; $4523: $7b
    ld e, d                                       ; $4524: $5a
    daa                                           ; $4525: $27
    db $e4                                        ; $4526: $e4
    ld c, b                                       ; $4527: $48
    db $dd                                        ; $4528: $dd
    ld a, d                                       ; $4529: $7a
    dec c                                         ; $452a: $0d
    ld [hl], c                                    ; $452b: $71
    ld d, d                                       ; $452c: $52
    and a                                         ; $452d: $a7
    and a                                         ; $452e: $a7
    ld [hl], l                                    ; $452f: $75
    ld b, d                                       ; $4530: $42
    adc [hl]                                      ; $4531: $8e
    db $ec                                        ; $4532: $ec
    ld d, l                                       ; $4533: $55
    and $d3                                       ; $4534: $e6 $d3
    jp nc, $cf58                                  ; $4536: $d2 $58 $cf

    ld a, [hl]                                    ; $4539: $7e

Jump_06f_453a:
    ld e, $86                                     ; $453a: $1e $86
    or h                                          ; $453c: $b4
    cp [hl]                                       ; $453d: $be
    dec b                                         ; $453e: $05
    bit 6, c                                      ; $453f: $cb $71
    ld a, [c]                                     ; $4541: $f2
    halt                                          ; $4542: $76
    nop                                           ; $4543: $00
    db $ed                                        ; $4544: $ed
    or a                                          ; $4545: $b7
    sub a                                         ; $4546: $97
    dec de                                        ; $4547: $1b

jr_06f_4548:
    jp c, Jump_06f_5c72                           ; $4548: $da $72 $5c

    add [hl]                                      ; $454b: $86
    add [hl]                                      ; $454c: $86
    ld d, h                                       ; $454d: $54
    dec e                                         ; $454e: $1d

jr_06f_454f:
    inc d                                         ; $454f: $14
    sub l                                         ; $4550: $95
    sub [hl]                                      ; $4551: $96
    ld l, [hl]                                    ; $4552: $6e
    jp Jump_06f_453a                              ; $4553: $c3 $3a $45


    call c, $caef                                 ; $4556: $dc $ef $ca
    ld [hl], c                                    ; $4559: $71
    ret                                           ; $455a: $c9


    add hl, hl                                    ; $455b: $29
    ld e, l                                       ; $455c: $5d
    sub e                                         ; $455d: $93
    ld b, e                                       ; $455e: $43
    rst $38                                       ; $455f: $ff
    ld d, b                                       ; $4560: $50
    sbc l                                         ; $4561: $9d
    ld h, h                                       ; $4562: $64
    ret c                                         ; $4563: $d8

    ld c, $ed                                     ; $4564: $0e $ed
    or a                                          ; $4566: $b7
    ld l, a                                       ; $4567: $6f
    ld e, c                                       ; $4568: $59
    cp d                                          ; $4569: $ba
    dec [hl]                                      ; $456a: $35
    sub l                                         ; $456b: $95
    ld [c], a                                     ; $456c: $e2
    sub l                                         ; $456d: $95
    rst $08                                       ; $456e: $cf
    or h                                          ; $456f: $b4
    add c                                         ; $4570: $81
    call nz, $aa7a                                ; $4571: $c4 $7a $aa
    inc e                                         ; $4574: $1c
    and c                                         ; $4575: $a1
    xor l                                         ; $4576: $ad
    ld d, h                                       ; $4577: $54
    ld l, b                                       ; $4578: $68
    ld d, e                                       ; $4579: $53
    ld e, h                                       ; $457a: $5c
    ei                                            ; $457b: $fb
    ld a, [c]                                     ; $457c: $f2
    ldh a, [$d4]                                  ; $457d: $f0 $d4
    ld a, [$7ed1]                                 ; $457f: $fa $d1 $7e
    db $fc                                        ; $4582: $fc
    rra                                           ; $4583: $1f
    xor l                                         ; $4584: $ad
    ld h, a                                       ; $4585: $67
    rst $18                                       ; $4586: $df
    sbc c                                         ; $4587: $99
    db $d3                                        ; $4588: $d3
    ld d, h                                       ; $4589: $54
    adc [hl]                                      ; $458a: $8e
    db $eb                                        ; $458b: $eb
    push af                                       ; $458c: $f5

Call_06f_458d:
    ld a, e                                       ; $458d: $7b
    or $ff                                        ; $458e: $f6 $ff
    jr jr_06f_4548                                ; $4590: $18 $b6

    inc bc                                        ; $4592: $03
    db $ed                                        ; $4593: $ed
    or a                                          ; $4594: $b7
    rst $28                                       ; $4595: $ef
    and h                                         ; $4596: $a4
    db $ec                                        ; $4597: $ec
    pop hl                                        ; $4598: $e1
    rst $00                                       ; $4599: $c7
    ld d, b                                       ; $459a: $50
    adc a                                         ; $459b: $8f
    sbc $18                                       ; $459c: $de $18
    cp c                                          ; $459e: $b9
    add sp, -$1f                                  ; $459f: $e8 $e1
    ld e, c                                       ; $45a1: $59
    rrca                                          ; $45a2: $0f
    db $ed                                        ; $45a3: $ed
    ld e, e                                       ; $45a4: $5b
    sub [hl]                                      ; $45a5: $96
    ld l, [hl]                                    ; $45a6: $6e
    ld b, c                                       ; $45a7: $41
    ld a, e                                       ; $45a8: $7b
    xor [hl]                                      ; $45a9: $ae
    pop de                                        ; $45aa: $d1
    xor b                                         ; $45ab: $a8
    ld a, [bc]                                    ; $45ac: $0a
    rrca                                          ; $45ad: $0f
    db $dd                                        ; $45ae: $dd
    ld c, $ed                                     ; $45af: $0e $ed
    or a                                          ; $45b1: $b7
    ld d, a                                       ; $45b2: $57
    adc h                                         ; $45b3: $8c
    ld a, [hl]                                    ; $45b4: $7e
    ld b, l                                       ; $45b5: $45
    ld hl, sp-$57                                 ; $45b6: $f8 $a9
    inc e                                         ; $45b8: $1c
    scf                                           ; $45b9: $37
    sub l                                         ; $45ba: $95
    or [hl]                                       ; $45bb: $b6
    ldh [$c7], a                                  ; $45bc: $e0 $c7
    ld [$9759], a                                 ; $45be: $ea $59 $97
    ld d, [hl]                                    ; $45c1: $56
    add h                                         ; $45c2: $84
    sub $78                                       ; $45c3: $d6 $78
    ld [hl-], a                                   ; $45c5: $32
    ld l, b                                       ; $45c6: $68
    dec a                                         ; $45c7: $3d
    dec d                                         ; $45c8: $15
    daa                                           ; $45c9: $27
    add e                                         ; $45ca: $83
    rrca                                          ; $45cb: $0f
    cp $73                                        ; $45cc: $fe $73
    ld l, c                                       ; $45ce: $69
    ld [hl], l                                    ; $45cf: $75
    add h                                         ; $45d0: $84
    add $4e                                       ; $45d1: $c6 $4e
    ld [hl], c                                    ; $45d3: $71
    dec de                                        ; $45d4: $1b
    or [hl]                                       ; $45d5: $b6
    dec e                                         ; $45d6: $1d
    db $ed                                        ; $45d7: $ed
    or a                                          ; $45d8: $b7
    rst $10                                       ; $45d9: $d7
    cp b                                          ; $45da: $b8
    ret nc                                        ; $45db: $d0

    ld h, l                                       ; $45dc: $65
    xor $b7                                       ; $45dd: $ee $b7
    ld a, [hl]                                    ; $45df: $7e
    ld a, [$5729]                                 ; $45e0: $fa $29 $57
    cpl                                           ; $45e3: $2f
    ld e, e                                       ; $45e4: $5b
    ld c, h                                       ; $45e5: $4c
    or [hl]                                       ; $45e6: $b6
    push af                                       ; $45e7: $f5
    or d                                          ; $45e8: $b2
    ld h, a                                       ; $45e9: $67
    jr jr_06f_463d                                ; $45ea: $18 $51

    adc a                                         ; $45ec: $8f
    ld a, [hl-]                                   ; $45ed: $3a
    sbc h                                         ; $45ee: $9c
    ld d, $9a                                     ; $45ef: $16 $9a
    ld a, c                                       ; $45f1: $79
    ld [hl-], a                                   ; $45f2: $32
    sub h                                         ; $45f3: $94
    ld e, l                                       ; $45f4: $5d
    ld a, c                                       ; $45f5: $79
    cp c                                          ; $45f6: $b9
    ld [hl], l                                    ; $45f7: $75
    ld b, d                                       ; $45f8: $42
    dec a                                         ; $45f9: $3d
    ld a, e                                       ; $45fa: $7b
    adc l                                         ; $45fb: $8d
    or [hl]                                       ; $45fc: $b6
    xor a                                         ; $45fd: $af
    cp h                                          ; $45fe: $bc
    dec e                                         ; $45ff: $1d
    db $ed                                        ; $4600: $ed
    or a                                          ; $4601: $b7
    rst $10                                       ; $4602: $d7
    sub b                                         ; $4603: $90
    dec a                                         ; $4604: $3d
    db $fc                                        ; $4605: $fc
    inc [hl]                                      ; $4606: $34
    add h                                         ; $4607: $84
    and c                                         ; $4608: $a1
    sub a                                         ; $4609: $97
    ld l, a                                       ; $460a: $6f
    rst $38                                       ; $460b: $ff
    nop                                           ; $460c: $00
    ld hl, $c372                                  ; $460d: $21 $72 $c3
    or c                                          ; $4610: $b1
    ld c, d                                       ; $4611: $4a
    ld e, e                                       ; $4612: $5b
    or b                                          ; $4613: $b0
    ld d, d                                       ; $4614: $52
    ld b, l                                       ; $4615: $45
    dec hl                                        ; $4616: $2b
    sbc a                                         ; $4617: $9f
    xor b                                         ; $4618: $a8
    and l                                         ; $4619: $a5
    xor e                                         ; $461a: $ab
    ld [hl-], a                                   ; $461b: $32
    dec [hl]                                      ; $461c: $35
    sub b                                         ; $461d: $90
    ld d, [hl]                                    ; $461e: $56
    adc [hl]                                      ; $461f: $8e
    ret c                                         ; $4620: $d8

    db $eb                                        ; $4621: $eb
    ld b, a                                       ; $4622: $47
    dec hl                                        ; $4623: $2b
    ld c, d                                       ; $4624: $4a
    reti                                          ; $4625: $d9


    adc a                                         ; $4626: $8f
    ld l, [hl]                                    ; $4627: $6e
    rlca                                          ; $4628: $07
    db $ed                                        ; $4629: $ed
    or a                                          ; $462a: $b7
    rst $28                                       ; $462b: $ef
    ret nz                                        ; $462c: $c0

    adc l                                         ; $462d: $8d
    ld c, [hl]                                    ; $462e: $4e
    jp $2ab1                                      ; $462f: $c3 $b1 $2a


    dec sp                                        ; $4632: $3b
    ld [hl+], a                                   ; $4633: $22
    ld h, [hl]                                    ; $4634: $66
    ld c, a                                       ; $4635: $4f
    xor e                                         ; $4636: $ab
    inc e                                         ; $4637: $1c
    rst $10                                       ; $4638: $d7
    ld b, b                                       ; $4639: $40
    jp nz, Jump_06f_481e                          ; $463a: $c2 $1e $48

jr_06f_463d:
    or h                                          ; $463d: $b4
    jp z, $8a59                                   ; $463e: $ca $59 $8a

    or d                                          ; $4641: $b2
    ld [hl], $27                                  ; $4642: $36 $27
    ld e, b                                       ; $4644: $58
    ld b, e                                       ; $4645: $43
    jp Jump_06f_5a09                              ; $4646: $c3 $09 $5a


    cp d                                          ; $4649: $ba
    add [hl]                                      ; $464a: $86
    ld d, h                                       ; $464b: $54
    dec e                                         ; $464c: $1d
    ld l, b                                       ; $464d: $68
    ld d, a                                       ; $464e: $57
    ld e, $c9                                     ; $464f: $1e $c9
    inc e                                         ; $4651: $1c
    xor c                                         ; $4652: $a9
    db $db                                        ; $4653: $db
    ld bc, $b7ed                                  ; $4654: $01 $ed $b7
    rst $20                                       ; $4657: $e7
    ld a, [hl+]                                   ; $4658: $2a
    adc l                                         ; $4659: $8d
    ld a, a                                       ; $465a: $7f
    and [hl]                                      ; $465b: $a6
    ld b, d                                       ; $465c: $42
    ei                                            ; $465d: $fb
    ld hl, $87b3                                  ; $465e: $21 $b3 $87
    sub $4f                                       ; $4661: $d6 $4f
    xor a                                         ; $4663: $af
    call z, Call_000_3929                         ; $4664: $cc $29 $39
    xor $23                                       ; $4667: $ee $23
    add sp, -$42                                  ; $4669: $e8 $be
    cp $36                                        ; $466b: $fe $36
    ld e, l                                       ; $466d: $5d
    ld e, c                                       ; $466e: $59
    add h                                         ; $466f: $84
    inc e                                         ; $4670: $1c
    rst $10                                       ; $4671: $d7
    ld e, [hl]                                    ; $4672: $5e
    sbc h                                         ; $4673: $9c
    add $50                                       ; $4674: $c6 $50
    ld hl, $f2f2                                  ; $4676: $21 $f2 $f2
    db $d3                                        ; $4679: $d3
    ld [hl], b                                    ; $467a: $70
    xor h                                         ; $467b: $ac
    ld [de], a                                    ; $467c: $12
    ld c, c                                       ; $467d: $49
    ld h, c                                       ; $467e: $61
    db $fd                                        ; $467f: $fd
    rst $18                                       ; $4680: $df
    rst $20                                       ; $4681: $e7
    ld d, [hl]                                    ; $4682: $56
    inc e                                         ; $4683: $1c
    db $dd                                        ; $4684: $dd
    ld c, $ed                                     ; $4685: $0e $ed
    or a                                          ; $4687: $b7
    scf                                           ; $4688: $37
    sbc c                                         ; $4689: $99
    dec h                                         ; $468a: $25
    db $fd                                        ; $468b: $fd
    jr @-$14                                      ; $468c: $18 $ea

    pop de                                        ; $468e: $d1
    dec hl                                        ; $468f: $2b
    db $e3                                        ; $4690: $e3
    ld b, d                                       ; $4691: $42
    add $75                                       ; $4692: $c6 $75
    pop af                                        ; $4694: $f1
    ld [hl], a                                    ; $4695: $77
    ld [$b7d9], a                                 ; $4696: $ea $d9 $b7
    inc de                                        ; $4699: $13
    rst $30                                       ; $469a: $f7
    pop de                                        ; $469b: $d1
    ld a, d                                       ; $469c: $7a
    or $1a                                        ; $469d: $f6 $1a
    ld c, [hl]                                    ; $469f: $4e
    and e                                         ; $46a0: $a3
    push af                                       ; $46a1: $f5
    db $ec                                        ; $46a2: $ec
    ld h, a                                       ; $46a3: $67
    db $e3                                        ; $46a4: $e3
    ld d, c                                       ; $46a5: $51
    db $f4                                        ; $46a6: $f4
    cp l                                          ; $46a7: $bd
    ld a, h                                       ; $46a8: $7c
    jp c, Jump_06f_6911                           ; $46a9: $da $11 $69

    add [hl]                                      ; $46ac: $86
    ld a, d                                       ; $46ad: $7a
    or $e9                                        ; $46ae: $f6 $e9
    rst $20                                       ; $46b0: $e7

Jump_06f_46b1:
    sbc [hl]                                      ; $46b1: $9e
    ld a, l                                       ; $46b2: $7d
    ld l, d                                       ; $46b3: $6a
    dec sp                                        ; $46b4: $3b
    nop                                           ; $46b5: $00
    db $ed                                        ; $46b6: $ed
    or a                                          ; $46b7: $b7
    rst $10                                       ; $46b8: $d7
    ld [hl], b                                    ; $46b9: $70
    sbc d                                         ; $46ba: $9a
    ld a, [$7329]                                 ; $46bb: $fa $29 $73
    inc [hl]                                      ; $46be: $34
    ld b, [hl]                                    ; $46bf: $46

jr_06f_46c0:
    and $e5                                       ; $46c0: $e6 $e5
    sbc b                                         ; $46c2: $98
    db $e3                                        ; $46c3: $e3
    inc [hl]                                      ; $46c4: $34
    sub b                                         ; $46c5: $90
    ld e, b                                       ; $46c6: $58
    ld c, a                                       ; $46c7: $4f
    ld b, l                                       ; $46c8: $45
    ld [$64a3], sp                                ; $46c9: $08 $a3 $64
    xor d                                         ; $46cc: $aa
    ld e, e                                       ; $46cd: $5b
    ld a, [de]                                    ; $46ce: $1a
    ld l, c                                       ; $46cf: $69
    ld l, e                                       ; $46d0: $6b
    inc d                                         ; $46d1: $14
    ld h, l                                       ; $46d2: $65
    ld d, a                                       ; $46d3: $57
    and [hl]                                      ; $46d4: $a6
    add [hl]                                      ; $46d5: $86
    inc [hl]                                      ; $46d6: $34
    ld a, b                                       ; $46d7: $78
    jr c, jr_06f_46c0                             ; $46d8: $38 $e6

    ret z                                         ; $46da: $c8

    ld [hl-], a                                   ; $46db: $32
    rlca                                          ; $46dc: $07
    ld [de], a                                    ; $46dd: $12
    ld [hl], d                                    ; $46de: $72
    sbc h                                         ; $46df: $9c
    ld a, [hl+]                                   ; $46e0: $2a
    ld b, d                                       ; $46e1: $42
    ld b, h                                       ; $46e2: $44
    ld [c], a                                     ; $46e3: $e2
    adc a                                         ; $46e4: $8f
    db $ed                                        ; $46e5: $ed
    nop                                           ; $46e6: $00
    db $ed                                        ; $46e7: $ed
    or a                                          ; $46e8: $b7
    sub a                                         ; $46e9: $97
    ld d, l                                       ; $46ea: $55
    and c                                         ; $46eb: $a1
    cp d                                          ; $46ec: $ba
    ld a, [c]                                     ; $46ed: $f2
    call nc, Call_06f_6fb3                        ; $46ee: $d4 $b3 $6f
    daa                                           ; $46f1: $27
    ld h, [hl]                                    ; $46f2: $66
    ld c, a                                       ; $46f3: $4f
    dec l                                         ; $46f4: $2d
    ld e, l                                       ; $46f5: $5d
    ld l, a                                       ; $46f6: $6f
    ld e, h                                       ; $46f7: $5c
    or b                                          ; $46f8: $b0
    push bc                                       ; $46f9: $c5
    db $ed                                        ; $46fa: $ed
    nop                                           ; $46fb: $00
    db $ed                                        ; $46fc: $ed
    or a                                          ; $46fd: $b7
    rst $28                                       ; $46fe: $ef
    ld h, b                                       ; $46ff: $60
    rla                                           ; $4700: $17
    ld c, a                                       ; $4701: $4f
    ld a, [hl+]                                   ; $4702: $2a
    and [hl]                                      ; $4703: $a6
    sub c                                         ; $4704: $91

jr_06f_4705:
    add hl, sp                                    ; $4705: $39
    jp nz, $d21a                                  ; $4706: $c2 $1a $d2

    inc [hl]                                      ; $4709: $34
    pop bc                                        ; $470a: $c1
    cpl                                           ; $470b: $2f
    db $eb                                        ; $470c: $eb
    db $f4                                        ; $470d: $f4
    jp c, Jump_06f_4bca                           ; $470e: $da $ca $4b

    db $e3                                        ; $4711: $e3
    dec b                                         ; $4712: $05

jr_06f_4713:
    ld e, e                                       ; $4713: $5b
    ld d, e                                       ; $4714: $53
    adc a                                         ; $4715: $8f
    ld e, [hl]                                    ; $4716: $5e
    jp $a169                                      ; $4717: $c3 $69 $a1


    jr z, jr_06f_4713                             ; $471a: $28 $f7

    push hl                                       ; $471c: $e5
    ld d, [hl]                                    ; $471d: $56
    add [hl]                                      ; $471e: $86
    dec [hl]                                      ; $471f: $35
    adc [hl]                                      ; $4720: $8e
    rra                                           ; $4721: $1f
    db $ed                                        ; $4722: $ed
    ld l, b                                       ; $4723: $68
    ld c, a                                       ; $4724: $4f
    ld a, c                                       ; $4725: $79
    call c, $3d68                                 ; $4726: $dc $68 $3d
    ld a, [hl+]                                   ; $4729: $2a
    ld a, [de]                                    ; $472a: $1a
    ld [hl], e                                    ; $472b: $73
    xor b                                         ; $472c: $a8
    jp $8ad2                                      ; $472d: $c3 $d2 $8a


    sub e                                         ; $4730: $93
    ld b, e                                       ; $4731: $43
    ld b, [hl]                                    ; $4732: $46
    jp $bd51                                      ; $4733: $c3 $51 $bd


    ei                                            ; $4736: $fb
    rst $08                                       ; $4737: $cf
    ld a, l                                       ; $4738: $7d
    dec sp                                        ; $4739: $3b
    nop                                           ; $473a: $00
    db $ed                                        ; $473b: $ed
    or a                                          ; $473c: $b7
    rst $28                                       ; $473d: $ef
    ret nz                                        ; $473e: $c0

    adc l                                         ; $473f: $8d
    ld c, [hl]                                    ; $4740: $4e
    jp $e6b1                                      ; $4741: $c3 $b1 $e6


    sub h                                         ; $4744: $94
    dec h                                         ; $4745: $25
    xor d                                         ; $4746: $aa
    ld e, b                                       ; $4747: $58
    ld d, [hl]                                    ; $4748: $56
    rst $08                                       ; $4749: $cf
    ld l, d                                       ; $474a: $6a
    ld b, d                                       ; $474b: $42
    dec h                                         ; $474c: $25
    inc d                                         ; $474d: $14
    add d                                         ; $474e: $82
    ld [hl+], a                                   ; $474f: $22
    ld e, [hl]                                    ; $4750: $5e
    ld l, b                                       ; $4751: $68
    jr nz, jr_06f_4705                            ; $4752: $20 $b1

    ret                                           ; $4754: $c9


    ld d, l                                       ; $4755: $55
    call nz, $d715                                ; $4756: $c4 $15 $d7
    push bc                                       ; $4759: $c5
    xor c                                         ; $475a: $a9
    ld h, a                                       ; $475b: $67
    ld a, [hl+]                                   ; $475c: $2a
    call $a7e0                                    ; $475d: $cd $e0 $a7
    db $ec                                        ; $4760: $ec
    inc [hl]                                      ; $4761: $34
    ld [hl-], a                                   ; $4762: $32
    ld c, [hl]                                    ; $4763: $4e
    dec a                                         ; $4764: $3d
    dec d                                         ; $4765: $15
    jp nz, $db49                                  ; $4766: $c2 $49 $db

    ld bc, $b7ed                                  ; $4769: $01 $ed $b7
    rst $28                                       ; $476c: $ef
    adc [hl]                                      ; $476d: $8e
    ld b, [hl]                                    ; $476e: $46

jr_06f_476f:
    db $fc                                        ; $476f: $fc
    pop de                                        ; $4770: $d1
    adc b                                         ; $4771: $88
    inc e                                         ; $4772: $1c
    and a                                         ; $4773: $a7
    sbc [hl]                                      ; $4774: $9e
    ld d, l                                       ; $4775: $55
    ld e, d                                       ; $4776: $5a
    inc bc                                        ; $4777: $03
    adc c                                         ; $4778: $89
    set 0, c                                      ; $4779: $cb $c1
    and e                                         ; $477b: $a3
    add hl, de                                    ; $477c: $19
    dec d                                         ; $477d: $15
    call Call_06f_7129                            ; $477e: $cd $29 $71
    add hl, de                                    ; $4781: $19
    ld a, [de]                                    ; $4782: $1a
    ld c, b                                       ; $4783: $48
    xor h                                         ; $4784: $ac
    rst $20                                       ; $4785: $e7
    cp d                                          ; $4786: $ba
    dec [hl]                                      ; $4787: $35
    jp hl                                         ; $4788: $e9


    add hl, bc                                    ; $4789: $09
    ld h, l                                       ; $478a: $65
    ld de, $8b22                                  ; $478b: $11 $22 $8b
    ld h, c                                       ; $478e: $61
    ld a, l                                       ; $478f: $7d
    xor $c5                                       ; $4790: $ee $c5
    cp $79                                        ; $4792: $fe $79
    sbc e                                         ; $4794: $9b
    cp d                                          ; $4795: $ba
    dec e                                         ; $4796: $1d
    db $ed                                        ; $4797: $ed
    or a                                          ; $4798: $b7
    scf                                           ; $4799: $37
    or b                                          ; $479a: $b0
    rst $38                                       ; $479b: $ff
    daa                                           ; $479c: $27
    push de                                       ; $479d: $d5
    and l                                         ; $479e: $a5
    dec d                                         ; $479f: $15
    ld b, a                                       ; $47a0: $47
    dec de                                        ; $47a1: $1b
    ld l, l                                       ; $47a2: $6d
    jp nc, Jump_06f_682d                          ; $47a3: $d2 $2d $68

    inc bc                                        ; $47a6: $03
    add hl, bc                                    ; $47a7: $09
    reti                                          ; $47a8: $d9


    ld c, a                                       ; $47a9: $4f
    sub e                                         ; $47aa: $93
    xor e                                         ; $47ab: $ab
    scf                                           ; $47ac: $37
    sbc h                                         ; $47ad: $9c
    ld a, [hl]                                    ; $47ae: $7e
    and a                                         ; $47af: $a7
    ld [$9461], sp                                ; $47b0: $08 $61 $94
    ld c, h                                       ; $47b3: $4c
    and l                                         ; $47b4: $a5
    ld l, e                                       ; $47b5: $6b
    ld [hl], d                                    ; $47b6: $72
    ld l, b                                       ; $47b7: $68
    ld l, b                                       ; $47b8: $68
    ld e, b                                       ; $47b9: $58
    add sp, $3e                                   ; $47ba: $e8 $3e
    ld de, $db1e                                  ; $47bc: $11 $1e $db
    ld bc, $b7ed                                  ; $47bf: $01 $ed $b7
    rra                                           ; $47c2: $1f
    and [hl]                                      ; $47c3: $a6
    jr c, jr_06f_476f                             ; $47c4: $38 $a9

    ld hl, $850c                                  ; $47c6: $21 $0c $85
    add h                                         ; $47c9: $84
    db $10                                        ; $47ca: $10
    ld d, [hl]                                    ; $47cb: $56
    add hl, sp                                    ; $47cc: $39
    xor [hl]                                      ; $47cd: $ae
    db $d3                                        ; $47ce: $d3
    ld [hl], e                                    ; $47cf: $73
    adc l                                         ; $47d0: $8d
    adc b                                         ; $47d1: $88
    add hl, hl                                    ; $47d2: $29
    ld c, [hl]                                    ; $47d3: $4e
    dec a                                         ; $47d4: $3d
    ld a, e                                       ; $47d5: $7b
    ld h, e                                       ; $47d6: $63
    sbc l                                         ; $47d7: $9d
    sub $3e                                       ; $47d8: $d6 $3e
    ld h, l                                       ; $47da: $65
    push hl                                       ; $47db: $e5
    db $e4                                        ; $47dc: $e4
    ld [$462b], sp                                ; $47dd: $08 $2b $46
    dec de                                        ; $47e0: $1b
    ld l, l                                       ; $47e1: $6d
    jp nc, Jump_06f_682d                          ; $47e2: $d2 $2d $68

    inc bc                                        ; $47e5: $03
    adc c                                         ; $47e6: $89
    dec d                                         ; $47e7: $15
    ld e, d                                       ; $47e8: $5a
    cp d                                          ; $47e9: $ba
    dec [hl]                                      ; $47ea: $35
    ld e, d                                       ; $47eb: $5a
    sbc $5a                                       ; $47ec: $de $5a
    ld a, [de]                                    ; $47ee: $1a
    jp hl                                         ; $47ef: $e9


Jump_06f_47f0:
    or [hl]                                       ; $47f0: $b6
    inc bc                                        ; $47f1: $03
    db $ed                                        ; $47f2: $ed
    or a                                          ; $47f3: $b7
    rst $28                                       ; $47f4: $ef
    push hl                                       ; $47f5: $e5
    ccf                                           ; $47f6: $3f
    ld [hl], e                                    ; $47f7: $73
    inc e                                         ; $47f8: $1c
    xor e                                         ; $47f9: $ab
    sbc a                                         ; $47fa: $9f
    ld a, [bc]                                    ; $47fb: $0a
    sub a                                         ; $47fc: $97
    ld a, [bc]                                    ; $47fd: $0a

Jump_06f_47fe:
    rst $10                                       ; $47fe: $d7
    ld l, $1e                                     ; $47ff: $2e $1e
    sub l                                         ; $4801: $95
    rst $30                                       ; $4802: $f7
    add h                                         ; $4803: $84
    ld l, e                                       ; $4804: $6b
    or [hl]                                       ; $4805: $b6
    inc bc                                        ; $4806: $03
    db $ed                                        ; $4807: $ed
    or a                                          ; $4808: $b7
    rst $20                                       ; $4809: $e7
    ld a, [de]                                    ; $480a: $1a
    ld d, d                                       ; $480b: $52
    ld l, $ec                                     ; $480c: $2e $ec
    ld c, e                                       ; $480e: $4b
    inc hl                                        ; $480f: $23
    ld c, d                                       ; $4810: $4a
    rst $10                                       ; $4811: $d7
    sub h                                         ; $4812: $94
    sub a                                         ; $4813: $97
    cp h                                          ; $4814: $bc
    rst $00                                       ; $4815: $c7
    ld a, [c]                                     ; $4816: $f2
    ld a, [de]                                    ; $4817: $1a
    db $dd                                        ; $4818: $dd

jr_06f_4819:
    ld a, d                                       ; $4819: $7a

Jump_06f_481a:
    ld sp, hl                                     ; $481a: $f9
    ei                                            ; $481b: $fb
    db $e4                                        ; $481c: $e4
    daa                                           ; $481d: $27

Jump_06f_481e:
    dec d                                         ; $481e: $15
    sub l                                         ; $481f: $95
    or [hl]                                       ; $4820: $b6
    ld h, b                                       ; $4821: $60
    dec [hl]                                      ; $4822: $35
    ld a, [hl+]                                   ; $4823: $2a
    db $ed                                        ; $4824: $ed
    rrca                                          ; $4825: $0f
    xor l                                         ; $4826: $ad
    ld h, a                                       ; $4827: $67
    ld d, e                                       ; $4828: $53
    ld e, [hl]                                    ; $4829: $5e
    ld a, [c]                                     ; $482a: $f2
    ld e, $cb                                     ; $482b: $1e $cb
    ld l, e                                       ; $482d: $6b
    or h                                          ; $482e: $b4
    add hl, de                                    ; $482f: $19
    ld a, l                                       ; $4830: $7d
    cpl                                           ; $4831: $2f
    sbc a                                         ; $4832: $9f
    halt                                          ; $4833: $76
    ld b, h                                       ; $4834: $44
    sbc d                                         ; $4835: $9a
    ld h, c                                       ; $4836: $61
    dec sp                                        ; $4837: $3b
    nop                                           ; $4838: $00
    db $ed                                        ; $4839: $ed
    or a                                          ; $483a: $b7
    rra                                           ; $483b: $1f
    rst $30                                       ; $483c: $f7
    cp $bc                                        ; $483d: $fe $bc
    db $e4                                        ; $483f: $e4
    ld d, h                                       ; $4840: $54
    ld l, b                                       ; $4841: $68
    jp hl                                         ; $4842: $e9


    sub $14                                       ; $4843: $d6 $14
    push de                                       ; $4845: $d5
    ld de, $ff1a                                  ; $4846: $11 $1a $ff
    db $eb                                        ; $4849: $eb
    ld c, a                                       ; $484a: $4f
    dec hl                                        ; $484b: $2b
    and [hl]                                      ; $484c: $a6
    adc b                                         ; $484d: $88
    ld [$d624], sp                                ; $484e: $08 $24 $d6
    or e                                          ; $4851: $b3
    ret                                           ; $4852: $c9


    and c                                         ; $4853: $a1
    jr nc, jr_06f_4819                            ; $4854: $30 $c3

    ld b, d                                       ; $4856: $42
    inc hl                                        ; $4857: $23
    call $d1a8                                    ; $4858: $cd $a8 $d1
    cp b                                          ; $485b: $b8
    dec e                                         ; $485c: $1d
    db $ed                                        ; $485d: $ed
    or a                                          ; $485e: $b7
    rst $28                                       ; $485f: $ef
    ret nz                                        ; $4860: $c0

    adc l                                         ; $4861: $8d
    ld c, [hl]                                    ; $4862: $4e
    xor a                                         ; $4863: $af
    adc b                                         ; $4864: $88
    add hl, hl                                    ; $4865: $29
    ld h, d                                       ; $4866: $62
    db $fd                                        ; $4867: $fd
    db $f4                                        ; $4868: $f4
    ld l, l                                       ; $4869: $6d
    add [hl]                                      ; $486a: $86
    or b                                          ; $486b: $b0
    ld [$1cc7], sp                                ; $486c: $08 $c7 $1c
    and a                                         ; $486f: $a7
    sbc [hl]                                      ; $4870: $9e
    dec a                                         ; $4871: $3d
    cp a                                          ; $4872: $bf
    ld b, l                                       ; $4873: $45
    sbc c                                         ; $4874: $99
    ld l, $fe                                     ; $4875: $2e $fe
    ld c, [hl]                                    ; $4877: $4e
    dec a                                         ; $4878: $3d
    or h                                          ; $4879: $b4
    rra                                           ; $487a: $1f
    ld [hl], d                                    ; $487b: $72
    ld l, c                                       ; $487c: $69
    dec a                                         ; $487d: $3d
    ld a, d                                       ; $487e: $7a
    dec c                                         ; $487f: $0d
    and a                                         ; $4880: $a7
    add l                                         ; $4881: $85
    db $ed                                        ; $4882: $ed
    nop                                           ; $4883: $00
    db $ed                                        ; $4884: $ed
    or a                                          ; $4885: $b7
    rst $10                                       ; $4886: $d7
    add $8c                                       ; $4887: $c6 $8c
    xor c                                         ; $4889: $a9
    adc d                                         ; $488a: $8a
    db $fd                                        ; $488b: $fd
    adc a                                         ; $488c: $8f
    db $ec                                        ; $488d: $ec
    and a                                         ; $488e: $a7
    ret                                           ; $488f: $c9


    and c                                         ; $4890: $a1
    jp nc, $f216                                  ; $4891: $d2 $16 $f2

    ld b, l                                       ; $4894: $45
    inc [hl]                                      ; $4895: $34
    jp c, Jump_06f_5ba4                           ; $4896: $da $a4 $5b

    xor b                                         ; $4899: $a8
    ld h, a                                       ; $489a: $67
    sub e                                         ; $489b: $93
    ld b, e                                       ; $489c: $43
    dec e                                         ; $489d: $1d
    ld [hl], d                                    ; $489e: $72
    ld e, h                                       ; $489f: $5c
    ld [hl], d                                    ; $48a0: $72
    inc c                                         ; $48a1: $0c
    push af                                       ; $48a2: $f5
    ld d, h                                       ; $48a3: $54
    add hl, sp                                    ; $48a4: $39
    add hl, sp                                    ; $48a5: $39
    jp c, $f0ec                                   ; $48a6: $da $ec $f0

    ret c                                         ; $48a9: $d8

    ld c, $ed                                     ; $48aa: $0e $ed
    or a                                          ; $48ac: $b7
    rst $10                                       ; $48ad: $d7
    rst $10                                       ; $48ae: $d7
    ld h, h                                       ; $48af: $64
    ld l, $9b                                     ; $48b0: $2e $9b
    ld a, [$bed1]                                 ; $48b2: $fa $d1 $be
    cp l                                          ; $48b5: $bd
    adc h                                         ; $48b6: $8c
    dec hl                                        ; $48b7: $2b
    adc [hl]                                      ; $48b8: $8e
    sub $8f                                       ; $48b9: $d6 $8f
    or $ed                                        ; $48bb: $f6 $ed
    call nz, $a9ec                                ; $48bd: $c4 $ec $a9
    db $db                                        ; $48c0: $db
    ld bc, $b7ed                                  ; $48c1: $01 $ed $b7
    rst $28                                       ; $48c4: $ef
    ret nz                                        ; $48c5: $c0

    adc l                                         ; $48c6: $8d
    ld c, [hl]                                    ; $48c7: $4e
    add l                                         ; $48c8: $85
    sub [hl]                                      ; $48c9: $96
    ld l, [hl]                                    ; $48ca: $6e
    adc l                                         ; $48cb: $8d
    and b                                         ; $48cc: $a0
    and c                                         ; $48cd: $a1
    ld d, c                                       ; $48ce: $51
    and a                                         ; $48cf: $a7
    pop hl                                        ; $48d0: $e1
    ld e, b                                       ; $48d1: $58
    and e                                         ; $48d2: $a3
    ld c, l                                       ; $48d3: $4d
    cp d                                          ; $48d4: $ba
    dec b                                         ; $48d5: $05
    ld l, l                                       ; $48d6: $6d
    jr c, jr_06f_492f                             ; $48d7: $38 $56

    adc c                                         ; $48d9: $89
    and h                                         ; $48da: $a4
    xor b                                         ; $48db: $a8
    ld h, a                                       ; $48dc: $67
    sub l                                         ; $48dd: $95
    ld c, c                                       ; $48de: $49
    cp e                                          ; $48df: $bb
    xor a                                         ; $48e0: $af

jr_06f_48e1:
    cp a                                          ; $48e1: $bf
    adc l                                         ; $48e2: $8d
    ld l, [hl]                                    ; $48e3: $6e
    rlca                                          ; $48e4: $07
    db $ed                                        ; $48e5: $ed
    or a                                          ; $48e6: $b7
    rst $20                                       ; $48e7: $e7
    ld a, [de]                                    ; $48e8: $1a
    ld d, d                                       ; $48e9: $52
    ld l, $ec                                     ; $48ea: $2e $ec
    ld c, e                                       ; $48ec: $4b
    inc hl                                        ; $48ed: $23
    ld c, d                                       ; $48ee: $4a
    rst $10                                       ; $48ef: $d7
    jr nc, jr_06f_494a                            ; $48f0: $30 $58

    dec d                                         ; $48f2: $15
    ld [hl], $5a                                  ; $48f3: $36 $5a
    rla                                           ; $48f5: $17
    ld a, h                                       ; $48f6: $7c
    ld e, d                                       ; $48f7: $5a
    ld [hl], d                                    ; $48f8: $72
    ld [hl], h                                    ; $48f9: $74
    db $eb                                        ; $48fa: $eb
    rst $00                                       ; $48fb: $c7
    dec c                                         ; $48fc: $0d
    ld l, l                                       ; $48fd: $6d
    add hl, sp                                    ; $48fe: $39
    ld l, $9b                                     ; $48ff: $2e $9b
    and d                                         ; $4901: $a2
    swap e                                        ; $4902: $cb $33
    rst $00                                       ; $4904: $c7
    dec h                                         ; $4905: $25
    ld e, d                                       ; $4906: $5a
    ld [de], a                                    ; $4907: $12
    sub $a9                                       ; $4908: $d6 $a9
    xor [hl]                                      ; $490a: $ae
    ld d, e                                       ; $490b: $53
    ld e, [hl]                                    ; $490c: $5e
    and d                                         ; $490d: $a2
    dec h                                         ; $490e: $25
    pop hl                                        ; $490f: $e1
    and a                                         ; $4910: $a7
    ld e, $95                                     ; $4911: $1e $95
    ret z                                         ; $4913: $c8

    rla                                           ; $4914: $17
    ld a, a                                       ; $4915: $7f
    and a                                         ; $4916: $a7
    ld a, [hl]                                    ; $4917: $7e
    ld a, d                                       ; $4918: $7a
    add hl, sp                                    ; $4919: $39
    sbc l                                         ; $491a: $9d
    xor $b7                                       ; $491b: $ee $b7
    dec [hl]                                      ; $491d: $35
    db $db                                        ; $491e: $db
    ld bc, $b7ed                                  ; $491f: $01 $ed $b7
    rst $28                                       ; $4922: $ef
    ret nz                                        ; $4923: $c0

    adc l                                         ; $4924: $8d
    ld c, [hl]                                    ; $4925: $4e
    sub c                                         ; $4926: $91
    ld [c], a                                     ; $4927: $e2
    ld e, b                                       ; $4928: $58
    dec a                                         ; $4929: $3d
    ei                                            ; $492a: $fb
    ret z                                         ; $492b: $c8

    push hl                                       ; $492c: $e5
    cp h                                          ; $492d: $bc
    inc e                                         ; $492e: $1c

jr_06f_492f:
    sub [hl]                                      ; $492f: $96
    or $1d                                        ; $4930: $f6 $1d
    db $e4                                        ; $4932: $e4
    jr jr_06f_48e1                                ; $4933: $18 $ac

    ld [hl], c                                    ; $4935: $71
    ret                                           ; $4936: $c9


    pop de                                        ; $4937: $d1
    or d                                          ; $4938: $b2
    scf                                           ; $4939: $37
    sbc b                                         ; $493a: $98
    ld a, d                                       ; $493b: $7a
    dec [hl]                                      ; $493c: $35
    ld e, b                                       ; $493d: $58
    cp b                                          ; $493e: $b8
    ld [hl+], a                                   ; $493f: $22
    ld [c], a                                     ; $4940: $e2
    inc hl                                        ; $4941: $23
    db $db                                        ; $4942: $db
    ld bc, $b7ed                                  ; $4943: $01 $ed $b7
    sub a                                         ; $4946: $97
    ld b, e                                       ; $4947: $43
    and e                                         ; $4948: $a3
    ld [hl-], a                                   ; $4949: $32

jr_06f_494a:
    ld b, a                                       ; $494a: $47
    ld hl, sp+$31                                 ; $494b: $f8 $31
    call nc, Call_06f_434f                        ; $494d: $d4 $4f $43
    sbc e                                         ; $4950: $9b
    sub e                                         ; $4951: $93
    pop bc                                        ; $4952: $c1
    and c                                         ; $4953: $a1
    ld e, $fd                                     ; $4954: $1e $fd
    db $f4                                        ; $4956: $f4
    db $d3                                        ; $4957: $d3
    or a                                          ; $4958: $b7
    ld a, [$a7e8]                                 ; $4959: $fa $e8 $a7
    db $f4                                        ; $495c: $f4
    db $ec                                        ; $495d: $ec
    and a                                         ; $495e: $a7
    ldh a, [rOCPD]                                ; $495f: $f0 $6b
    ld b, h                                       ; $4961: $44
    rst $30                                       ; $4962: $f7
    push hl                                       ; $4963: $e5
    dec h                                         ; $4964: $25
    ld d, c                                       ; $4965: $51
    ccf                                           ; $4966: $3f
    jp c, $2cb7                                   ; $4967: $da $b7 $2c

    db $dd                                        ; $496a: $dd
    ld a, [de]                                    ; $496b: $1a
    ld a, l                                       ; $496c: $7d
    xor h                                         ; $496d: $ac
    adc a                                         ; $496e: $8f
    ld a, h                                       ; $496f: $7c
    or c                                          ; $4970: $b1
    and d                                         ; $4971: $a2
    inc d                                         ; $4972: $14
    xor a                                         ; $4973: $af
    ld a, h                                       ; $4974: $7c
    ld [$49d5], a                                 ; $4975: $ea $d5 $49
    or $c8                                        ; $4978: $f6 $c8
    halt                                          ; $497a: $76
    nop                                           ; $497b: $00
    db $ed                                        ; $497c: $ed
    or a                                          ; $497d: $b7
    rst $28                                       ; $497e: $ef
    ret nz                                        ; $497f: $c0

    adc l                                         ; $4980: $8d
    ld c, [hl]                                    ; $4981: $4e
    inc hl                                        ; $4982: $23
    rst $00                                       ; $4983: $c7
    sub [hl]                                      ; $4984: $96
    ld b, [hl]                                    ; $4985: $46
    call nc, $9f05                                ; $4986: $d4 $05 $9f
    sub [hl]                                      ; $4989: $96
    sbc h                                         ; $498a: $9c
    db $ed                                        ; $498b: $ed
    nop                                           ; $498c: $00
    db $ed                                        ; $498d: $ed
    or a                                          ; $498e: $b7
    ld l, a                                       ; $498f: $6f
    ld e, c                                       ; $4990: $59
    cp d                                          ; $4991: $ba
    add l                                         ; $4992: $85
    ld b, $12                                     ; $4993: $06 $12
    cp e                                          ; $4995: $bb
    ld a, [c]                                     ; $4996: $f2
    sbc a                                         ; $4997: $9f
    add hl, sp                                    ; $4998: $39
    ld c, [hl]                                    ; $4999: $4e
    ld [$c3f4], a                                 ; $499a: $ea $f4 $c3
    sub h                                         ; $499d: $94
    and c                                         ; $499e: $a1
    ld a, [c]                                     ; $499f: $f2
    sbc [hl]                                      ; $49a0: $9e
    ld [hl], b                                    ; $49a1: $70
    call Call_000_0076                            ; $49a2: $cd $76 $00
    db $ed                                        ; $49a5: $ed
    or a                                          ; $49a6: $b7
    ld d, a                                       ; $49a7: $57
    cp b                                          ; $49a8: $b8
    ld d, e                                       ; $49a9: $53
    ld l, b                                       ; $49aa: $68
    ldh a, [$e8]                                  ; $49ab: $f0 $e8
    ld a, a                                       ; $49ad: $7f
    ld a, c                                       ; $49ae: $79
    and $c8                                       ; $49af: $e6 $c8
    or d                                          ; $49b1: $b2
    ld c, b                                       ; $49b2: $48
    ld [hl], c                                    ; $49b3: $71
    inc c                                         ; $49b4: $0c
    push af                                       ; $49b5: $f5
    db $ec                                        ; $49b6: $ec
    inc hl                                        ; $49b7: $23
    rst $20                                       ; $49b8: $e7
    ld a, [hl+]                                   ; $49b9: $2a
    ld [hl], a                                    ; $49ba: $77
    jr jr_06f_49e2                                ; $49bb: $18 $25

    or e                                          ; $49bd: $b3
    sbc a                                         ; $49be: $9f
    ld c, [hl]                                    ; $49bf: $4e
    rst $18                                       ; $49c0: $df
    ld c, c                                       ; $49c1: $49
    ld sp, $3cd9                                  ; $49c2: $31 $d9 $3c
    or d                                          ; $49c5: $b2
    dec e                                         ; $49c6: $1d
    db $ed                                        ; $49c7: $ed
    or a                                          ; $49c8: $b7
    sub a                                         ; $49c9: $97
    ld [hl], e                                    ; $49ca: $73
    ld e, h                                       ; $49cb: $5c
    and a                                         ; $49cc: $a7
    xor c                                         ; $49cd: $a9
    ld [$fc3b], sp                                ; $49ce: $08 $3b $fc
    ld e, b                                       ; $49d1: $58
    dec a                                         ; $49d2: $3d
    ei                                            ; $49d3: $fb
    and a                                         ; $49d4: $a7
    ld a, c                                       ; $49d5: $79
    ld a, b                                       ; $49d6: $78
    ld l, d                                       ; $49d7: $6a
    inc bc                                        ; $49d8: $03
    adc c                                         ; $49d9: $89
    push af                                       ; $49da: $f5
    inc [hl]                                      ; $49db: $34
    sbc e                                         ; $49dc: $9b
    jr c, @-$55                                   ; $49dd: $38 $a9

    db $d3                                        ; $49df: $d3
    rst $38                                       ; $49e0: $ff
    ld a, [c]                                     ; $49e1: $f2

jr_06f_49e2:
    call z, $bd91                                 ; $49e2: $cc $91 $bd
    add d                                         ; $49e5: $82
    ld e, l                                       ; $49e6: $5d
    adc d                                         ; $49e7: $8a
    and c                                         ; $49e8: $a1
    and l                                         ; $49e9: $a5
    ld l, e                                       ; $49ea: $6b
    ld [hl], d                                    ; $49eb: $72
    xor b                                         ; $49ec: $a8
    inc e                                         ; $49ed: $1c
    rla                                           ; $49ee: $17
    ld [hl-], a                                   ; $49ef: $32
    xor [hl]                                      ; $49f0: $ae
    adc e                                         ; $49f1: $8b
    cp a                                          ; $49f2: $bf
    ld d, e                                       ; $49f3: $53
    rst $08                                       ; $49f4: $cf
    cp $69                                        ; $49f5: $fe $69
    ld e, $9e                                     ; $49f7: $1e $9e
    cp d                                          ; $49f9: $ba

Jump_06f_49fa:
    dec e                                         ; $49fa: $1d
    db $ed                                        ; $49fb: $ed
    or a                                          ; $49fc: $b7
    rst $20                                       ; $49fd: $e7
    ld a, [de]                                    ; $49fe: $1a
    ld d, d                                       ; $49ff: $52
    ld l, $ec                                     ; $4a00: $2e $ec
    ld c, e                                       ; $4a02: $4b
    inc hl                                        ; $4a03: $23
    ld c, d                                       ; $4a04: $4a
    rst $10                                       ; $4a05: $d7
    ld l, b                                       ; $4a06: $68
    sub e                                         ; $4a07: $93
    ld l, [hl]                                    ; $4a08: $6e
    ld b, c                                       ; $4a09: $41
    sla d                                         ; $4a0a: $cb $22
    push bc                                       ; $4a0c: $c5
    or c                                          ; $4a0d: $b1
    ld a, d                                       ; $4a0e: $7a
    sub $a5                                       ; $4a0f: $d6 $a5
    dec d                                         ; $4a11: $15
    ld b, a                                       ; $4a12: $47
    cp e                                          ; $4a13: $bb
    xor a                                         ; $4a14: $af
    cp a                                          ; $4a15: $bf
    adc l                                         ; $4a16: $8d
    ld a, [bc]                                    ; $4a17: $0a
    cp d                                          ; $4a18: $ba
    or d                                          ; $4a19: $b2
    call c, $cad3                                 ; $4a1a: $dc $d3 $ca
    ld a, [hl]                                    ; $4a1d: $7e
    ld a, [$67c8]                                 ; $4a1e: $fa $c8 $67
    ld [hl], $e9                                  ; $4a21: $36 $e9
    ld d, $b4                                     ; $4a23: $16 $b4
    ld c, a                                       ; $4a25: $4f
    db $f4                                        ; $4a26: $f4
    sub e                                         ; $4a27: $93
    ld b, h                                       ; $4a28: $44
    rst $10                                       ; $4a29: $d7
    rrca                                          ; $4a2a: $0f
    rst $10                                       ; $4a2b: $d7
    add hl, bc                                    ; $4a2c: $09
    cp l                                          ; $4a2d: $bd
    ld c, $43                                     ; $4a2e: $0e $43
    rst $08                                       ; $4a30: $cf
    ld [hl], a                                    ; $4a31: $77
    ld [$db23], a                                 ; $4a32: $ea $23 $db
    ld bc, $b7ed                                  ; $4a35: $01 $ed $b7
    rst $28                                       ; $4a38: $ef
    push hl                                       ; $4a39: $e5
    ccf                                           ; $4a3a: $3f
    ld [hl], e                                    ; $4a3b: $73
    inc e                                         ; $4a3c: $1c
    xor e                                         ; $4a3d: $ab
    ld b, a                                       ; $4a3e: $47
    add l                                         ; $4a3f: $85
    db $e3                                        ; $4a40: $e3
    add h                                         ; $4a41: $84
    xor b                                         ; $4a42: $a8
    ld h, a                                       ; $4a43: $67
    add l                                         ; $4a44: $85
    and e                                         ; $4a45: $a3
    ld de, $01db                                  ; $4a46: $11 $db $01
    db $ed                                        ; $4a49: $ed
    or a                                          ; $4a4a: $b7
    rra                                           ; $4a4b: $1f
    ld d, a                                       ; $4a4c: $57
    ld l, b                                       ; $4a4d: $68
    jp hl                                         ; $4a4e: $e9


    sub $d4                                       ; $4a4f: $d6 $d4
    ld h, c                                       ; $4a51: $61
    ld l, c                                       ; $4a52: $69
    ld b, l                                       ; $4a53: $45
    ld [hl], b                                    ; $4a54: $70
    and e                                         ; $4a55: $a3
    ld d, e                                       ; $4a56: $53
    rst $08                                       ; $4a57: $cf
    add $f1                                       ; $4a58: $c6 $f1
    and e                                         ; $4a5a: $a3
    dec e                                         ; $4a5b: $1d
    ld l, l                                       ; $4a5c: $6d
    and h                                         ; $4a5d: $a4
    dec bc                                        ; $4a5e: $0b
    ld b, a                                       ; $4a5f: $47
    or a                                          ; $4a60: $b7
    cp [hl]                                       ; $4a61: $be
    jp Jump_000_0ddb                              ; $4a62: $c3 $db $0d


    ld h, c                                       ; $4a65: $61
    sub c                                         ; $4a66: $91
    push af                                       ; $4a67: $f5
    xor b                                         ; $4a68: $a8
    inc e                                         ; $4a69: $1c
    adc e                                         ; $4a6a: $8b
    xor h                                         ; $4a6b: $ac
    sbc a                                         ; $4a6c: $9f
    ld a, [hl]                                    ; $4a6d: $7e
    jp z, $cbd5                                   ; $4a6e: $ca $d5 $cb

    ld d, $93                                     ; $4a71: $16 $93
    ld l, l                                       ; $4a73: $6d
    rlca                                          ; $4a74: $07
    db $ed                                        ; $4a75: $ed
    or a                                          ; $4a76: $b7
    ld d, a                                       ; $4a77: $57
    call nz, $b114                                ; $4a78: $c4 $14 $b1
    ld a, [hl]                                    ; $4a7b: $7e
    ld a, d                                       ; $4a7c: $7a
    ld h, l                                       ; $4a7d: $65
    or d                                          ; $4a7e: $b2
    ld [hl], d                                    ; $4a7f: $72
    rla                                           ; $4a80: $17
    ld c, a                                       ; $4a81: $4f
    db $fd                                        ; $4a82: $fd
    ld l, b                                       ; $4a83: $68
    xor a                                         ; $4a84: $af
    pop hl                                        ; $4a85: $e1
    inc [hl]                                      ; $4a86: $34
    ld a, [hl+]                                   ; $4a87: $2a
    add sp, -$2d                                  ; $4a88: $e8 $d3
    cpl                                           ; $4a8a: $2f
    inc a                                         ; $4a8b: $3c
    db $fd                                        ; $4a8c: $fd
    ld c, h                                       ; $4a8d: $4c
    sbc a                                         ; $4a8e: $9f
    add sp, -$2d                                  ; $4a8f: $e8 $d3
    cpl                                           ; $4a91: $2f
    cp h                                          ; $4a92: $bc
    db $f4                                        ; $4a93: $f4
    ld [c], a                                     ; $4a94: $e2
    halt                                          ; $4a95: $76
    nop                                           ; $4a96: $00
    db $ed                                        ; $4a97: $ed
    or a                                          ; $4a98: $b7
    rst $10                                       ; $4a99: $d7
    daa                                           ; $4a9a: $27
    ld c, h                                       ; $4a9b: $4c
    dec sp                                        ; $4a9c: $3b
    xor h                                         ; $4a9d: $ac
    rst $10                                       ; $4a9e: $d7
    ld d, [hl]                                    ; $4a9f: $56
    ld e, [hl]                                    ; $4aa0: $5e
    ld a, [de]                                    ; $4aa1: $1a
    ld l, l                                       ; $4aa2: $6d
    ld [$6bd1], a                                 ; $4aa3: $ea $d1 $6b
    jr c, jr_06f_4ad5                             ; $4aa6: $38 $2d

    ld [$9dca], sp                                ; $4aa8: $08 $ca $9d
    dec hl                                        ; $4aab: $2b
    ld c, [hl]                                    ; $4aac: $4e
    jp hl                                         ; $4aad: $e9


    ld a, [$4bf4]                                 ; $4aae: $fa $f4 $4b
    ld c, a                                       ; $4ab1: $4f
    ccf                                           ; $4ab2: $3f
    cp l                                          ; $4ab3: $bd
    dec e                                         ; $4ab4: $1d
    db $ed                                        ; $4ab5: $ed
    or a                                          ; $4ab6: $b7
    ld d, a                                       ; $4ab7: $57
    call nz, $b114                                ; $4ab8: $c4 $14 $b1
    ld a, [hl]                                    ; $4abb: $7e
    ld a, d                                       ; $4abc: $7a
    ld h, l                                       ; $4abd: $65
    or d                                          ; $4abe: $b2
    ld [hl], d                                    ; $4abf: $72
    rla                                           ; $4ac0: $17
    ld c, a                                       ; $4ac1: $4f
    db $fd                                        ; $4ac2: $fd
    ld l, b                                       ; $4ac3: $68
    xor a                                         ; $4ac4: $af
    pop hl                                        ; $4ac5: $e1
    inc [hl]                                      ; $4ac6: $34
    jp c, $9fa7                                   ; $4ac7: $da $a7 $9f

    ld a, e                                       ; $4aca: $7b
    xor $a5                                       ; $4acb: $ee $a5
    ld a, $d1                                     ; $4acd: $3e $d1
    rst $20                                       ; $4acf: $e7
    sbc a                                         ; $4ad0: $9f
    jp c, $ed0e                                   ; $4ad1: $da $0e $ed

    or a                                          ; $4ad4: $b7

jr_06f_4ad5:
    rst $28                                       ; $4ad5: $ef
    ret nz                                        ; $4ad6: $c0

    adc l                                         ; $4ad7: $8d
    ld c, [hl]                                    ; $4ad8: $4e
    jp Jump_06f_7ab1                              ; $4ad9: $c3 $b1 $7a


    sbc d                                         ; $4adc: $9a
    ld c, l                                       ; $4add: $4d
    add h                                         ; $4ade: $84
    dec [hl]                                      ; $4adf: $35
    cp c                                          ; $4ae0: $b9
    ld b, [hl]                                    ; $4ae1: $46
    add e                                         ; $4ae2: $83
    sbc [hl]                                      ; $4ae3: $9e
    and [hl]                                      ; $4ae4: $a6
    add c                                         ; $4ae5: $81
    call nz, $d222                                ; $4ae6: $c4 $22 $d2
    ld l, h                                       ; $4ae9: $6c
    ld l, h                                       ; $4aea: $6c
    db $dd                                        ; $4aeb: $dd
    add $1f                                       ; $4aec: $c6 $1f
    ld b, l                                       ; $4aee: $45
    jr nz, jr_06f_4b62                            ; $4aef: $20 $71

    and a                                         ; $4af1: $a7
    ld [hl], $90                                  ; $4af2: $36 $90
    ld e, b                                       ; $4af4: $58
    ld b, h                                       ; $4af5: $44
    jp $aa9f                                      ; $4af6: $c3 $9f $aa


    ld hl, sp-$3d                                 ; $4af9: $f8 $c3
    ld [hl], l                                    ; $4afb: $75
    ld l, d                                       ; $4afc: $6a
    ld l, e                                       ; $4afd: $6b
    ld a, [$4fc5]                                 ; $4afe: $fa $c5 $4f
    call c, $ed0e                                 ; $4b01: $dc $0e $ed
    or a                                          ; $4b04: $b7
    sub a                                         ; $4b05: $97
    dec de                                        ; $4b06: $1b
    jp c, Jump_06f_5c72                           ; $4b07: $da $72 $5c

    add [hl]                                      ; $4b0a: $86
    ld a, [bc]                                    ; $4b0b: $0a
    dec l                                         ; $4b0c: $2d
    db $dd                                        ; $4b0d: $dd
    ld b, d                                       ; $4b0e: $42
    ld d, c                                       ; $4b0f: $51
    ld h, l                                       ; $4b10: $65
    db $e3                                        ; $4b11: $e3
    ld e, b                                       ; $4b12: $58
    add [hl]                                      ; $4b13: $86
    push af                                       ; $4b14: $f5
    jp c, Jump_06f_4bca                           ; $4b15: $da $ca $4b

    and e                                         ; $4b18: $a3
    and c                                         ; $4b19: $a1
    ld e, $bd                                     ; $4b1a: $1e $bd
    add [hl]                                      ; $4b1c: $86
    db $d3                                        ; $4b1d: $d3
    jp nz, Jump_000_0076                          ; $4b1e: $c2 $76 $00

    db $ed                                        ; $4b21: $ed
    or a                                          ; $4b22: $b7
    rst $28                                       ; $4b23: $ef
    ret nz                                        ; $4b24: $c0

    adc l                                         ; $4b25: $8d
    and d                                         ; $4b26: $a2
    pop hl                                        ; $4b27: $e1
    ld e, b                                       ; $4b28: $58
    sub l                                         ; $4b29: $95
    ld c, c                                       ; $4b2a: $49
    ld c, e                                       ; $4b2b: $4b
    adc l                                         ; $4b2c: $8d
    ret                                           ; $4b2d: $c9


    adc a                                         ; $4b2e: $8f
    ld d, [hl]                                    ; $4b2f: $56
    ld b, a                                       ; $4b30: $47
    ld l, b                                       ; $4b31: $68
    ld l, h                                       ; $4b32: $6c
    inc [hl]                                      ; $4b33: $34
    add sp, $69                                   ; $4b34: $e8 $69
    ld [hl], h                                    ; $4b36: $74
    db $eb                                        ; $4b37: $eb
    cp c                                          ; $4b38: $b9
    add [hl]                                      ; $4b39: $86
    ret z                                         ; $4b3a: $c8

    ld [de], a                                    ; $4b3b: $12
    ld e, $45                                     ; $4b3c: $1e $45
    cp h                                          ; $4b3e: $bc
    ld d, b                                       ; $4b3f: $50
    call nc, Call_06f_458d                        ; $4b40: $d4 $8d $45
    ld [hl], $1c                                  ; $4b43: $36 $1c
    ld l, e                                       ; $4b45: $6b
    ld [hl], d                                    ; $4b46: $72
    push af                                       ; $4b47: $f5
    call c, Call_06f_65a9                         ; $4b48: $dc $a9 $65
    ld c, $24                                     ; $4b4b: $0e $24
    db $e4                                        ; $4b4d: $e4
    jr c, @-$61                                   ; $4b4e: $38 $9d

    ld d, d                                       ; $4b50: $52
    ld h, e                                       ; $4b51: $63
    ld a, [c]                                     ; $4b52: $f2
    ld hl, sp+$63                                 ; $4b53: $f8 $63
    dec sp                                        ; $4b55: $3b
    nop                                           ; $4b56: $00
    db $ed                                        ; $4b57: $ed
    or a                                          ; $4b58: $b7
    ld d, a                                       ; $4b59: $57
    ldh [rSCY], a                                 ; $4b5a: $e0 $42
    cp $4e                                        ; $4b5c: $fe $4e
    dec a                                         ; $4b5e: $3d
    ei                                            ; $4b5f: $fb
    dec h                                         ; $4b60: $25
    cp h                                          ; $4b61: $bc

jr_06f_4b62:
    pop af                                        ; $4b62: $f1
    halt                                          ; $4b63: $76
    dec a                                         ; $4b64: $3d
    ei                                            ; $4b65: $fb

jr_06f_4b66:
    sub [hl]                                      ; $4b66: $96
    and l                                         ; $4b67: $a5
    ld e, e                                       ; $4b68: $5b
    and e                                         ; $4b69: $a3
    ld a, l                                       ; $4b6a: $7d
    ld a, [$a7f9]                                 ; $4b6b: $fa $f9 $a7
    ld e, [hl]                                    ; $4b6e: $5e
    add sp, $13                                   ; $4b6f: $e8 $13
    ld a, l                                       ; $4b71: $7d
    ld a, [$97f9]                                 ; $4b72: $fa $f9 $97
    ld e, [hl]                                    ; $4b75: $5e
    jp c, $ed0e                                   ; $4b76: $da $0e $ed

    or a                                          ; $4b79: $b7
    rra                                           ; $4b7a: $1f
    rst $10                                       ; $4b7b: $d7
    ld sp, $3caf                                  ; $4b7c: $31 $af $3c
    dec c                                         ; $4b7f: $0d
    inc h                                         ; $4b80: $24
    ld d, [hl]                                    ; $4b81: $56
    ld b, a                                       ; $4b82: $47
    ld l, b                                       ; $4b83: $68
    db $fc                                        ; $4b84: $fc
    xor a                                         ; $4b85: $af
    ccf                                           ; $4b86: $3f
    db $d3                                        ; $4b87: $d3
    halt                                          ; $4b88: $76
    nop                                           ; $4b89: $00
    db $ed                                        ; $4b8a: $ed
    or a                                          ; $4b8b: $b7
    ld d, a                                       ; $4b8c: $57
    add $31                                       ; $4b8d: $c6 $31
    dec [hl]                                      ; $4b8f: $35
    cp c                                          ; $4b90: $b9
    ld b, [hl]                                    ; $4b91: $46
    and $18                                       ; $4b92: $e6 $18
    inc l                                         ; $4b94: $2c
    db $d3                                        ; $4b95: $d3
    ld a, $fd                                     ; $4b96: $3e $fd
    inc sp                                        ; $4b98: $33
    inc sp                                        ; $4b99: $33
    adc a                                         ; $4b9a: $8f
    ld c, [hl]                                    ; $4b9b: $4e
    ld d, a                                       ; $4b9c: $57
    adc [hl]                                      ; $4b9d: $8e
    ld e, h                                       ; $4b9e: $5c
    ld [hl], $65                                  ; $4b9f: $36 $65
    ld [hl], l                                    ; $4ba1: $75
    add h                                         ; $4ba2: $84
    add $ff                                       ; $4ba3: $c6 $ff
    ld a, [$0933]                                 ; $4ba5: $fa $33 $09
    adc d                                         ; $4ba8: $8a
    sub b                                         ; $4ba9: $90
    ld a, [bc]                                    ; $4baa: $0a
    xor e                                         ; $4bab: $ab
    ld h, a                                       ; $4bac: $67
    xor c                                         ; $4bad: $a9
    ld de, $9b56                                  ; $4bae: $11 $56 $9b
    ld e, e                                       ; $4bb1: $5b
    ld d, e                                       ; $4bb2: $53
    call nz, Call_000_150b                        ; $4bb3: $c4 $0b $15
    rst $08                                       ; $4bb6: $cf
    rst $30                                       ; $4bb7: $f7
    call c, $ed0e                                 ; $4bb8: $dc $0e $ed
    or a                                          ; $4bbb: $b7
    ld l, a                                       ; $4bbc: $6f
    ld e, c                                       ; $4bbd: $59
    cp d                                          ; $4bbe: $ba
    add l                                         ; $4bbf: $85
    jp z, $9931                                   ; $4bc0: $ca $31 $99

    or d                                          ; $4bc3: $b2
    ld b, a                                       ; $4bc4: $47
    dec a                                         ; $4bc5: $3d
    sbc e                                         ; $4bc6: $9b
    ld e, h                                       ; $4bc7: $5c
    ld h, a                                       ; $4bc8: $67
    rla                                           ; $4bc9: $17

Jump_06f_4bca:
    ld c, a                                       ; $4bca: $4f
    push af                                       ; $4bcb: $f5
    sbc [hl]                                      ; $4bcc: $9e
    ld b, $12                                     ; $4bcd: $06 $12
    db $eb                                        ; $4bcf: $eb
    xor c                                         ; $4bd0: $a9
    ld [hl], d                                    ; $4bd1: $72
    add h                                         ; $4bd2: $84
    or [hl]                                       ; $4bd3: $b6
    ld d, d                                       ; $4bd4: $52
    ld d, c                                       ; $4bd5: $51
    sbc c                                         ; $4bd6: $99
    inc c                                         ; $4bd7: $0c
    dec c                                         ; $4bd8: $0d
    ld h, c                                       ; $4bd9: $61
    jr z, jr_06f_4b66                             ; $4bda: $28 $8a

    sbc l                                         ; $4bdc: $9d
    halt                                          ; $4bdd: $76
    ld e, d                                       ; $4bde: $5a
    xor b                                         ; $4bdf: $a8
    ld h, a                                       ; $4be0: $67
    cp l                                          ; $4be1: $bd

Call_06f_4be2:
    pop hl                                        ; $4be2: $e1
    db $f4                                        ; $4be3: $f4
    dec sp                                        ; $4be4: $3b
    db $db                                        ; $4be5: $db
    ld bc, $b7ed                                  ; $4be6: $01 $ed $b7
    ld l, a                                       ; $4be9: $6f
    ld e, e                                       ; $4bea: $5b
    cp d                                          ; $4beb: $ba
    db $db                                        ; $4bec: $db
    and e                                         ; $4bed: $a3
    bit 6, [hl]                                   ; $4bee: $cb $76
    ld h, h                                       ; $4bf0: $64
    ld c, a                                       ; $4bf1: $4f
    ld b, l                                       ; $4bf2: $45
    inc bc                                        ; $4bf3: $03
    adc c                                         ; $4bf4: $89
    push af                                       ; $4bf5: $f5
    ld d, h                                       ; $4bf6: $54
    add hl, sp                                    ; $4bf7: $39
    ld b, d                                       ; $4bf8: $42
    ld e, e                                       ; $4bf9: $5b
    xor c                                         ; $4bfa: $a9
    ret nc                                        ; $4bfb: $d0

    add [hl]                                      ; $4bfc: $86
    ld [hl], $a1                                  ; $4bfd: $36 $a1
    dec l                                         ; $4bff: $2d
    ld a, d                                       ; $4c00: $7a
    ld a, b                                       ; $4c01: $78
    ld l, d                                       ; $4c02: $6a
    db $fd                                        ; $4c03: $fd
    ld [hl], h                                    ; $4c04: $74
    db $ec                                        ; $4c05: $ec
    adc a                                         ; $4c06: $8f
    ld e, l                                       ; $4c07: $5d
    inc a                                         ; $4c08: $3c
    push af                                       ; $4c09: $f5
    add sp, -$62                                  ; $4c0a: $e8 $9e
    or b                                          ; $4c0c: $b0
    dec e                                         ; $4c0d: $1d
    db $ed                                        ; $4c0e: $ed
    or a                                          ; $4c0f: $b7

jr_06f_4c10:
    rst $10                                       ; $4c10: $d7
    rst $10                                       ; $4c11: $d7
    ld h, h                                       ; $4c12: $64
    ld l, $43                                     ; $4c13: $2e $43
    dec a                                         ; $4c15: $3d
    ld a, d                                       ; $4c16: $7a
    sub l                                         ; $4c17: $95
    ld h, $9c                                     ; $4c18: $26 $9c
    ld a, l                                       ; $4c1a: $7d
    ld c, [hl]                                    ; $4c1b: $4e
    dec bc                                        ; $4c1c: $0b
    ld h, l                                       ; $4c1d: $65
    push hl                                       ; $4c1e: $e5
    db $ec                                        ; $4c1f: $ec
    sub h                                         ; $4c20: $94
    ld l, e                                       ; $4c21: $6b
    ld [hl-], a                                   ; $4c22: $32
    db $fc                                        ; $4c23: $fc
    jr jr_06f_4c10                                ; $4c24: $18 $ea

    ld e, c                                       ; $4c26: $59
    sub a                                         ; $4c27: $97
    ld d, [hl]                                    ; $4c28: $56
    add h                                         ; $4c29: $84
    ld d, [hl]                                    ; $4c2a: $56
    or h                                          ; $4c2b: $b4
    adc a                                         ; $4c2c: $8f
    ld d, c                                       ; $4c2d: $51
    db $eb                                        ; $4c2e: $eb
    add d                                         ; $4c2f: $82
    ld c, a                                       ; $4c30: $4f
    ld c, e                                       ; $4c31: $4b
    ld b, d                                       ; $4c32: $42
    or a                                          ; $4c33: $b7
    inc bc                                        ; $4c34: $03
    db $ed                                        ; $4c35: $ed
    or a                                          ; $4c36: $b7
    sub a                                         ; $4c37: $97
    dec de                                        ; $4c38: $1b
    jp c, Jump_06f_5c72                           ; $4c39: $da $72 $5c

    add [hl]                                      ; $4c3c: $86
    cp $ef                                        ; $4c3d: $fe $ef
    adc [hl]                                      ; $4c3f: $8e
    res 4, c                                      ; $4c40: $cb $a1
    ld [hl], d                                    ; $4c42: $72
    or d                                          ; $4c43: $b2
    sbc b                                         ; $4c44: $98
    ld [hl], d                                    ; $4c45: $72
    ld a, c                                       ; $4c46: $79
    call nc, $d8a3                                ; $4c47: $d4 $a3 $d8
    ld l, c                                       ; $4c4a: $69
    and a                                         ; $4c4b: $a7
    add l                                         ; $4c4c: $85
    ld a, d                                       ; $4c4d: $7a
    or $6d                                        ; $4c4e: $f6 $6d
    jp Jump_06f_77e9                              ; $4c50: $c3 $e9 $77


    or [hl]                                       ; $4c53: $b6
    inc bc                                        ; $4c54: $03
    db $ed                                        ; $4c55: $ed
    or a                                          ; $4c56: $b7
    rst $28                                       ; $4c57: $ef
    and h                                         ; $4c58: $a4
    db $ec                                        ; $4c59: $ec
    daa                                           ; $4c5a: $27
    ld [hl], l                                    ; $4c5b: $75
    ld a, d                                       ; $4c5c: $7a
    ld [hl], l                                    ; $4c5d: $75
    inc [hl]                                      ; $4c5e: $34

jr_06f_4c5f:
    ld e, h                                       ; $4c5f: $5c
    ld de, $437b                                  ; $4c60: $11 $7b $43
    jr jr_06f_4c5f                                ; $4c63: $18 $fa

    or $30                                        ; $4c65: $f6 $30
    ld e, a                                       ; $4c67: $5f
    add h                                         ; $4c68: $84
    or $5a                                        ; $4c69: $f6 $5a
    ldh a, [rBCPD]                                ; $4c6b: $f0 $69
    ld c, c                                       ; $4c6d: $49
    ld l, b                                       ; $4c6e: $68
    reti                                          ; $4c6f: $d9


    ld l, e                                       ; $4c70: $6b
    sub b                                         ; $4c71: $90
    ld [c], a                                     ; $4c72: $e2
    inc h                                         ; $4c73: $24
    pop hl                                        ; $4c74: $e1
    ld b, a                                       ; $4c75: $47
    ld a, e                                       ; $4c76: $7b
    db $e3                                        ; $4c77: $e3
    ld [hl], a                                    ; $4c78: $77
    ld a, d                                       ; $4c79: $7a
    dec l                                         ; $4c7a: $2d
    push hl                                       ; $4c7b: $e5
    db $d3                                        ; $4c7c: $d3
    ld l, h                                       ; $4c7d: $6c
    rlca                                          ; $4c7e: $07
    db $ed                                        ; $4c7f: $ed
    or a                                          ; $4c80: $b7
    rra                                           ; $4c81: $1f
    scf                                           ; $4c82: $37
    or h                                          ; $4c83: $b4
    push hl                                       ; $4c84: $e5
    cp b                                          ; $4c85: $b8
    ld l, h                                       ; $4c86: $6c
    ld a, [hl+]                                   ; $4c87: $2a
    or h                                          ; $4c88: $b4
    ld [hl], h                                    ; $4c89: $74
    ld l, e                                       ; $4c8a: $6b
    adc d                                         ; $4c8b: $8a
    ld a, [hl+]                                   ; $4c8c: $2a
    xor l                                         ; $4c8d: $ad
    cp b                                          ; $4c8e: $b8
    dec c                                         ; $4c8f: $0d
    add e                                         ; $4c90: $83
    sbc a                                         ; $4c91: $9f
    add [hl]                                      ; $4c92: $86
    ld h, e                                       ; $4c93: $63
    ld c, l                                       ; $4c94: $4d
    xor [hl]                                      ; $4c95: $ae
    or h                                          ; $4c96: $b4
    db $e4                                        ; $4c97: $e4
    ld b, d                                       ; $4c98: $42
    db $e4                                        ; $4c99: $e4
    ret z                                         ; $4c9a: $c8

    ld e, [hl]                                    ; $4c9b: $5e
    ld d, $d9                                     ; $4c9c: $16 $d9
    sub d                                         ; $4c9e: $92
    ret z                                         ; $4c9f: $c8

    or e                                          ; $4ca0: $b3
    dec e                                         ; $4ca1: $1d
    db $ed                                        ; $4ca2: $ed
    or a                                          ; $4ca3: $b7
    sub a                                         ; $4ca4: $97
    dec de                                        ; $4ca5: $1b
    jp c, Jump_06f_5c72                           ; $4ca6: $da $72 $5c

    add [hl]                                      ; $4ca9: $86
    jp nz, Jump_06f_7456                          ; $4caa: $c2 $56 $74

    pop bc                                        ; $4cad: $c1
    ld [hl], c                                    ; $4cae: $71
    ld c, c                                       ; $4caf: $49
    inc d                                         ; $4cb0: $14
    and l                                         ; $4cb1: $a5
    ld b, [hl]                                    ; $4cb2: $46
    ld [$53b9], sp                                ; $4cb3: $08 $b9 $53
    jp nc, Jump_06f_6d0a                          ; $4cb6: $d2 $0a $6d

    ld l, b                                       ; $4cb9: $68
    inc de                                        ; $4cba: $13
    jp c, $87a2                                   ; $4cbb: $da $a2 $87

    and a                                         ; $4cbe: $a7
    sub $05                                       ; $4cbf: $d6 $05
    sbc a                                         ; $4cc1: $9f
    sub [hl]                                      ; $4cc2: $96
    add h                                         ; $4cc3: $84
    sub $4f                                       ; $4cc4: $d6 $4f
    di                                            ; $4cc6: $f3
    db $fd                                        ; $4cc7: $fd
    adc [hl]                                      ; $4cc8: $8e
    ld [hl], $55                                  ; $4cc9: $36 $55
    ld b, [hl]                                    ; $4ccb: $46
    ld l, [hl]                                    ; $4ccc: $6e
    rlca                                          ; $4ccd: $07
    db $ed                                        ; $4cce: $ed
    or a                                          ; $4ccf: $b7
    ld d, a                                       ; $4cd0: $57
    and $09                                       ; $4cd1: $e6 $09
    ld d, c                                       ; $4cd3: $51
    jp z, Jump_06f_7e1e                           ; $4cd4: $ca $1e $7e

    xor h                                         ; $4cd7: $ac
    sbc [hl]                                      ; $4cd8: $9e
    cp l                                          ; $4cd9: $bd
    ld a, [hl-]                                   ; $4cda: $3a
    and a                                         ; $4cdb: $a7
    rra                                           ; $4cdc: $1f
    ld h, c                                       ; $4cdd: $61
    ld d, c                                       ; $4cde: $51
    or a                                          ; $4cdf: $b7
    cp [hl]                                       ; $4ce0: $be
    call Call_06f_69d4                            ; $4ce1: $cd $d4 $69
    ld e, $c7                                     ; $4ce4: $1e $c7
    and d                                         ; $4ce6: $a2
    ret                                           ; $4ce7: $c9


    and c                                         ; $4ce8: $a1
    ld e, $da                                     ; $4ce9: $1e $da
    ld b, b                                       ; $4ceb: $40
    ld b, d                                       ; $4cec: $42
    or h                                          ; $4ced: $b4
    xor c                                         ; $4cee: $a9
    add h                                         ; $4cef: $84
    ld b, d                                       ; $4cf0: $42
    db $eb                                        ; $4cf1: $eb
    reti                                          ; $4cf2: $d9


    xor e                                         ; $4cf3: $ab
    ld [hl], e                                    ; $4cf4: $73
    ld a, [$1611]                                 ; $4cf5: $fa $11 $16
    ld [hl], l                                    ; $4cf8: $75
    dec sp                                        ; $4cf9: $3b
    nop                                           ; $4cfa: $00
    db $ed                                        ; $4cfb: $ed
    or a                                          ; $4cfc: $b7
    rst $28                                       ; $4cfd: $ef
    ret nz                                        ; $4cfe: $c0

    adc l                                         ; $4cff: $8d
    and d                                         ; $4d00: $a2
    ld d, h                                       ; $4d01: $54
    ld l, c                                       ; $4d02: $69
    dec hl                                        ; $4d03: $2b
    adc [hl]                                      ; $4d04: $8e
    and c                                         ; $4d05: $a1
    sbc [hl]                                      ; $4d06: $9e
    db $dd                                        ; $4d07: $dd
    rst $10                                       ; $4d08: $d7
    rst $18                                       ; $4d09: $df
    ld b, [hl]                                    ; $4d0a: $46
    db $eb                                        ; $4d0b: $eb
    ld e, c                                       ; $4d0c: $59
    ld de, $5c57                                  ; $4d0d: $11 $57 $5c
    rla                                           ; $4d10: $17
    ld b, a                                       ; $4d11: $47
    or a                                          ; $4d12: $b7
    inc bc                                        ; $4d13: $03
    db $ed                                        ; $4d14: $ed
    or a                                          ; $4d15: $b7
    ld d, a                                       ; $4d16: $57
    and $09                                       ; $4d17: $e6 $09
    ld d, c                                       ; $4d19: $51
    jp z, Jump_06f_7e1e                           ; $4d1a: $ca $1e $7e

    xor h                                         ; $4d1d: $ac
    sbc [hl]                                      ; $4d1e: $9e
    cp l                                          ; $4d1f: $bd
    ld a, [hl-]                                   ; $4d20: $3a
    and a                                         ; $4d21: $a7
    rra                                           ; $4d22: $1f
    ld h, c                                       ; $4d23: $61
    ld d, c                                       ; $4d24: $51
    or a                                          ; $4d25: $b7
    cp [hl]                                       ; $4d26: $be
    call Call_06f_69d4                            ; $4d27: $cd $d4 $69
    ld e, $c7                                     ; $4d2a: $1e $c7
    and d                                         ; $4d2c: $a2
    ret                                           ; $4d2d: $c9


    and c                                         ; $4d2e: $a1
    ld e, $da                                     ; $4d2f: $1e $da
    ld b, b                                       ; $4d31: $40
    ld b, d                                       ; $4d32: $42
    or h                                          ; $4d33: $b4
    xor c                                         ; $4d34: $a9
    add h                                         ; $4d35: $84
    ld b, d                                       ; $4d36: $42
    db $eb                                        ; $4d37: $eb
    reti                                          ; $4d38: $d9


    xor e                                         ; $4d39: $ab
    ld [hl], e                                    ; $4d3a: $73
    ld a, [$1611]                                 ; $4d3b: $fa $11 $16
    ld [hl], l                                    ; $4d3e: $75
    dec sp                                        ; $4d3f: $3b
    nop                                           ; $4d40: $00
    db $ed                                        ; $4d41: $ed
    or a                                          ; $4d42: $b7
    ld l, a                                       ; $4d43: $6f
    ld e, c                                       ; $4d44: $59
    cp d                                          ; $4d45: $ba
    add l                                         ; $4d46: $85
    xor $cc                                       ; $4d47: $ee $cc
    ld a, $d8                                     ; $4d49: $3e $d8
    ld d, $1a                                     ; $4d4b: $16 $1a
    ld c, b                                       ; $4d4d: $48
    ld l, h                                       ; $4d4e: $6c
    inc [hl]                                      ; $4d4f: $34
    xor [hl]                                      ; $4d50: $ae

Jump_06f_4d51:
    inc a                                         ; $4d51: $3c
    xor c                                         ; $4d52: $a9
    rst $18                                       ; $4d53: $df
    rst $08                                       ; $4d54: $cf
    sbc a                                         ; $4d55: $9f
    ld e, c                                       ; $4d56: $59
    db $eb                                        ; $4d57: $eb
    ld [hl], b                                    ; $4d58: $70
    ld a, [de]                                    ; $4d59: $1a
    ld l, l                                       ; $4d5a: $6d
    ld b, [hl]                                    ; $4d5b: $46
    rst $18                                       ; $4d5c: $df
    or e                                          ; $4d5d: $b3
    dec e                                         ; $4d5e: $1d
    reti                                          ; $4d5f: $d9


    ld h, e                                       ; $4d60: $63
    dec sp                                        ; $4d61: $3b
    nop                                           ; $4d62: $00
    db $ed                                        ; $4d63: $ed
    or a                                          ; $4d64: $b7
    ld d, a                                       ; $4d65: $57
    and $09                                       ; $4d66: $e6 $09
    ld d, c                                       ; $4d68: $51
    jp z, Jump_06f_7e1e                           ; $4d69: $ca $1e $7e

    inc c                                         ; $4d6c: $0c
    push af                                       ; $4d6d: $f5
    db $ec                                        ; $4d6e: $ec
    push de                                       ; $4d6f: $d5
    add hl, sp                                    ; $4d70: $39
    db $fd                                        ; $4d71: $fd
    ld [$ba8b], sp                                ; $4d72: $08 $8b $ba
    push af                                       ; $4d75: $f5
    ld l, l                                       ; $4d76: $6d
    and [hl]                                      ; $4d77: $a6
    ld c, [hl]                                    ; $4d78: $4e
    di                                            ; $4d79: $f3
    jr c, jr_06f_4d92                             ; $4d7a: $38 $16

    ld c, l                                       ; $4d7c: $4d

Jump_06f_4d7d:
    ld c, $f5                                     ; $4d7d: $0e $f5
    ret nc                                        ; $4d7f: $d0

    ld b, $12                                     ; $4d80: $06 $12
    and d                                         ; $4d82: $a2
    ld c, l                                       ; $4d83: $4d
    dec h                                         ; $4d84: $25
    inc d                                         ; $4d85: $14
    ld e, d                                       ; $4d86: $5a
    rst $08                                       ; $4d87: $cf
    ld e, [hl]                                    ; $4d88: $5e
    sbc l                                         ; $4d89: $9d
    db $d3                                        ; $4d8a: $d3
    adc a                                         ; $4d8b: $8f
    or b                                          ; $4d8c: $b0
    xor b                                         ; $4d8d: $a8
    db $db                                        ; $4d8e: $db
    ld bc, $b7ed                                  ; $4d8f: $01 $ed $b7

jr_06f_4d92:
    ld d, a                                       ; $4d92: $57
    and $09                                       ; $4d93: $e6 $09
    ld d, c                                       ; $4d95: $51
    jp z, Jump_06f_7e1e                           ; $4d96: $ca $1e $7e

    inc c                                         ; $4d99: $0c
    push af                                       ; $4d9a: $f5
    db $ec                                        ; $4d9b: $ec
    push de                                       ; $4d9c: $d5
    add hl, sp                                    ; $4d9d: $39
    db $fd                                        ; $4d9e: $fd
    ld [$ba8b], sp                                ; $4d9f: $08 $8b $ba
    push af                                       ; $4da2: $f5
    ld l, l                                       ; $4da3: $6d
    and [hl]                                      ; $4da4: $a6
    ld c, [hl]                                    ; $4da5: $4e
    di                                            ; $4da6: $f3
    jr c, jr_06f_4dbf                             ; $4da7: $38 $16

    ld c, l                                       ; $4da9: $4d
    ld c, $f5                                     ; $4daa: $0e $f5
    ret nc                                        ; $4dac: $d0

    ld b, $12                                     ; $4dad: $06 $12
    and d                                         ; $4daf: $a2
    ld c, l                                       ; $4db0: $4d
    dec h                                         ; $4db1: $25
    inc d                                         ; $4db2: $14
    ld e, d                                       ; $4db3: $5a
    rst $08                                       ; $4db4: $cf
    ld e, [hl]                                    ; $4db5: $5e
    sbc l                                         ; $4db6: $9d
    db $d3                                        ; $4db7: $d3
    adc a                                         ; $4db8: $8f
    or b                                          ; $4db9: $b0
    xor b                                         ; $4dba: $a8
    db $db                                        ; $4dbb: $db
    ld bc, $b7ed                                  ; $4dbc: $01 $ed $b7

jr_06f_4dbf:
    rst $28                                       ; $4dbf: $ef
    and h                                         ; $4dc0: $a4
    db $ec                                        ; $4dc1: $ec
    daa                                           ; $4dc2: $27
    dec d                                         ; $4dc3: $15
    db $fd                                        ; $4dc4: $fd
    xor a                                         ; $4dc5: $af
    dec e                                         ; $4dc6: $1d
    push af                                       ; $4dc7: $f5
    db $ec                                        ; $4dc8: $ec
    push de                                       ; $4dc9: $d5
    add hl, sp                                    ; $4dca: $39
    xor c                                         ; $4dcb: $a9
    inc hl                                        ; $4dcc: $23
    inc a                                         ; $4dcd: $3c
    or a                                          ; $4dce: $b7
    inc bc                                        ; $4dcf: $03
    db $ed                                        ; $4dd0: $ed
    or a                                          ; $4dd1: $b7
    sub a                                         ; $4dd2: $97
    dec de                                        ; $4dd3: $1b
    jp c, Jump_06f_5c72                           ; $4dd4: $da $72 $5c

    add [hl]                                      ; $4dd7: $86
    sbc [hl]                                      ; $4dd8: $9e
    ld h, b                                       ; $4dd9: $60
    rla                                           ; $4dda: $17
    daa                                           ; $4ddb: $27
    inc sp                                        ; $4ddc: $33
    or d                                          ; $4ddd: $b2
    cp $91                                        ; $4dde: $fe $91
    adc a                                         ; $4de0: $8f
    ld a, e                                       ; $4de1: $7b
    dec b                                         ; $4de2: $05
    cp e                                          ; $4de3: $bb
    rst $20                                       ; $4de4: $e7
    or d                                          ; $4de5: $b2
    rst $18                                       ; $4de6: $df
    jp hl                                         ; $4de7: $e9


    dec sp                                        ; $4de8: $3b
    ret                                           ; $4de9: $c9


    ldh [$67], a                                  ; $4dea: $e0 $67
    dec sp                                        ; $4dec: $3b
    nop                                           ; $4ded: $00
    db $ed                                        ; $4dee: $ed
    or a                                          ; $4def: $b7
    ld l, a                                       ; $4df0: $6f
    cpl                                           ; $4df1: $2f
    ld h, e                                       ; $4df2: $63
    inc e                                         ; $4df3: $1c
    xor e                                         ; $4df4: $ab
    ld h, a                                       ; $4df5: $67
    xor a                                         ; $4df6: $af
    adc $e9                                       ; $4df7: $ce $e9
    ld b, a                                       ; $4df9: $47
    ld e, b                                       ; $4dfa: $58
    call nc, $97ad                                ; $4dfb: $d4 $ad $97
    db $dd                                        ; $4dfe: $dd
    ld a, [hl-]                                   ; $4dff: $3a
    ld c, l                                       ; $4e00: $4d
    dec a                                         ; $4e01: $3d
    ei                                            ; $4e02: $fb
    pop de                                        ; $4e03: $d1
    sub d                                         ; $4e04: $92
    or e                                          ; $4e05: $b3
    inc hl                                        ; $4e06: $23
    push af                                       ; $4e07: $f5
    sbc l                                         ; $4e08: $9d
    dec e                                         ; $4e09: $1d
    adc [hl]                                      ; $4e0a: $8e

Jump_06f_4e0b:
    ld a, e                                       ; $4e0b: $7b
    sbc a                                         ; $4e0c: $9f
    add sp, $7b                                   ; $4e0d: $e8 $7b
    ld sp, hl                                     ; $4e0f: $f9
    rst $08                                       ; $4e10: $cf
    inc e                                         ; $4e11: $1c
    rst $00                                       ; $4e12: $c7
    ld [$ebd1], a                                 ; $4e13: $ea $d1 $eb
    db $f4                                        ; $4e16: $f4
    add [hl]                                      ; $4e17: $86
    cp [hl]                                       ; $4e18: $be
    or e                                          ; $4e19: $b3
    or $d1                                        ; $4e1a: $f6 $d1
    ld de, $df61                                  ; $4e1c: $11 $61 $df
    ld c, $ed                                     ; $4e1f: $0e $ed
    or a                                          ; $4e21: $b7
    ld l, a                                       ; $4e22: $6f
    ld h, c                                       ; $4e23: $61
    db $dd                                        ; $4e24: $dd
    ld e, d                                       ; $4e25: $5a
    ld a, [de]                                    ; $4e26: $1a
    ld d, c                                       ; $4e27: $51
    adc a                                         ; $4e28: $8f
    add [hl]                                      ; $4e29: $86
    inc de                                        ; $4e2a: $13
    and [hl]                                      ; $4e2b: $a6
    dec e                                         ; $4e2c: $1d
    ld d, [hl]                                    ; $4e2d: $56
    ld hl, $47b2                                  ; $4e2e: $21 $b2 $47
    dec a                                         ; $4e31: $3d
    dec hl                                        ; $4e32: $2b
    or h                                          ; $4e33: $b4
    ld [hl], h                                    ; $4e34: $74
    dec bc                                        ; $4e35: $0b
    jp c, Jump_000_0d73                           ; $4e36: $da $73 $0d

    and h                                         ; $4e39: $a4
    and l                                         ; $4e3a: $a5
    dec hl                                        ; $4e3b: $2b
    ld c, [hl]                                    ; $4e3c: $4e
    add [hl]                                      ; $4e3d: $86
    ld l, [hl]                                    ; $4e3e: $6e
    rlca                                          ; $4e3f: $07
    db $ed                                        ; $4e40: $ed
    or a                                          ; $4e41: $b7
    ld d, a                                       ; $4e42: $57
    add $85                                       ; $4e43: $c6 $85
    and e                                         ; $4e45: $a3
    dec hl                                        ; $4e46: $2b
    adc [hl]                                      ; $4e47: $8e
    and c                                         ; $4e48: $a1
    ld e, $bd                                     ; $4e49: $1e $bd
    or c                                          ; $4e4b: $b1
    or d                                          ; $4e4c: $b2
    ld l, b                                       ; $4e4d: $68
    ld a, [c]                                     ; $4e4e: $f2
    ld b, d                                       ; $4e4f: $42
    rst $08                                       ; $4e50: $cf
    or e                                          ; $4e51: $b3
    adc b                                         ; $4e52: $88
    dec hl                                        ; $4e53: $2b
    xor [hl]                                      ; $4e54: $ae
    adc e                                         ; $4e55: $8b
    ret z                                         ; $4e56: $c8

    sub c                                         ; $4e57: $91
    call $f3bf                                    ; $4e58: $cd $bf $f3
    inc b                                         ; $4e5b: $04
    inc h                                         ; $4e5c: $24
    add h                                         ; $4e5d: $84
    ldh a, [rNR10]                                ; $4e5e: $f0 $10
    inc [hl]                                      ; $4e60: $34
    sub b                                         ; $4e61: $90
    ld e, b                                       ; $4e62: $58
    add h                                         ; $4e63: $84
    ld b, [hl]                                    ; $4e64: $46
    ld h, l                                       ; $4e65: $65
    adc [hl]                                      ; $4e66: $8e
    ld l, b                                       ; $4e67: $68
    ld [hl], d                                    ; $4e68: $72
    ld l, b                                       ; $4e69: $68
    ld c, h                                       ; $4e6a: $4c
    ld b, d                                       ; $4e6b: $42
    sub h                                         ; $4e6c: $94
    or a                                          ; $4e6d: $b7
    jp nz, Jump_06f_747d                          ; $4e6e: $c2 $7d $74

    db $fd                                        ; $4e71: $fd
    or c                                          ; $4e72: $b1
    dec e                                         ; $4e73: $1d
    db $ed                                        ; $4e74: $ed
    or a                                          ; $4e75: $b7
    sbc a                                         ; $4e76: $9f
    adc l                                         ; $4e77: $8d
    ld b, h                                       ; $4e78: $44
    ld c, a                                       ; $4e79: $4f
    ld e, b                                       ; $4e7a: $58
    ld de, $acf5                                  ; $4e7b: $11 $f5 $ac
    ld l, b                                       ; $4e7e: $68
    halt                                          ; $4e7f: $76
    ld [hl], $a3                                  ; $4e80: $36 $a3
    pop hl                                        ; $4e82: $e1
    add h                                         ; $4e83: $84
    ld l, c                                       ; $4e84: $69
    add a                                         ; $4e85: $87
    ld d, l                                       ; $4e86: $55
    adc b                                         ; $4e87: $88
    db $ec                                        ; $4e88: $ec
    ld d, c                                       ; $4e89: $51
    rst $08                                       ; $4e8a: $cf
    ld a, [bc]                                    ; $4e8b: $0a
    dec l                                         ; $4e8c: $2d
    db $dd                                        ; $4e8d: $dd
    add d                                         ; $4e8e: $82
    or $5c                                        ; $4e8f: $f6 $5c
    inc bc                                        ; $4e91: $03
    ld l, c                                       ; $4e92: $69
    jp hl                                         ; $4e93: $e9


    adc d                                         ; $4e94: $8a
    sub e                                         ; $4e95: $93
    and c                                         ; $4e96: $a1
    db $db                                        ; $4e97: $db
    ld bc, $b7ed                                  ; $4e98: $01 $ed $b7
    sbc a                                         ; $4e9b: $9f
    adc l                                         ; $4e9c: $8d
    ld b, h                                       ; $4e9d: $44
    ld b, l                                       ; $4e9e: $45
    dec sp                                        ; $4e9f: $3b
    ld d, d                                       ; $4ea0: $52
    ld b, h                                       ; $4ea1: $44
    inc sp                                        ; $4ea2: $33
    ld a, [de]                                    ; $4ea3: $1a
    ld c, [hl]                                    ; $4ea4: $4e
    sbc b                                         ; $4ea5: $98
    halt                                          ; $4ea6: $76
    ld e, b                                       ; $4ea7: $58
    add l                                         ; $4ea8: $85
    ret z                                         ; $4ea9: $c8

    ld e, $f5                                     ; $4eaa: $1e $f5
    xor h                                         ; $4eac: $ac
    ret nc                                        ; $4ead: $d0

    jp nc, Jump_06f_682d                          ; $4eae: $d2 $2d $68

    rst $08                                       ; $4eb1: $cf
    dec [hl]                                      ; $4eb2: $35
    sub b                                         ; $4eb3: $90
    sub [hl]                                      ; $4eb4: $96
    xor [hl]                                      ; $4eb5: $ae
    jr c, @+$1b                                   ; $4eb6: $38 $19

    cp d                                          ; $4eb8: $ba
    dec e                                         ; $4eb9: $1d
    db $ed                                        ; $4eba: $ed
    or a                                          ; $4ebb: $b7
    rst $28                                       ; $4ebc: $ef
    and [hl]                                      ; $4ebd: $a6
    dec d                                         ; $4ebe: $15
    ld h, c                                       ; $4ebf: $61
    or [hl]                                       ; $4ec0: $b6
    inc [hl]                                      ; $4ec1: $34
    and d                                         ; $4ec2: $a2
    ld e, $0d                                     ; $4ec3: $1e $0d
    daa                                           ; $4ec5: $27
    ld c, h                                       ; $4ec6: $4c
    dec sp                                        ; $4ec7: $3b
    xor h                                         ; $4ec8: $ac
    ld b, d                                       ; $4ec9: $42
    ld h, h                                       ; $4eca: $64
    adc a                                         ; $4ecb: $8f
    ld a, d                                       ; $4ecc: $7a
    ld d, [hl]                                    ; $4ecd: $56
    ld l, b                                       ; $4ece: $68
    jp hl                                         ; $4ecf: $e9


    ld d, $b4                                     ; $4ed0: $16 $b4
    rst $20                                       ; $4ed2: $e7
    ld a, [de]                                    ; $4ed3: $1a
    ld c, b                                       ; $4ed4: $48
    ld c, e                                       ; $4ed5: $4b
    ld d, a                                       ; $4ed6: $57
    sbc h                                         ; $4ed7: $9c
    inc c                                         ; $4ed8: $0c
    db $dd                                        ; $4ed9: $dd
    ld c, $ed                                     ; $4eda: $0e $ed
    or a                                          ; $4edc: $b7
    scf                                           ; $4edd: $37
    ld b, a                                       ; $4ede: $47
    ld h, d                                       ; $4edf: $62
    ld e, a                                       ; $4ee0: $5f
    ld a, [de]                                    ; $4ee1: $1a
    ld d, c                                       ; $4ee2: $51
    adc a                                         ; $4ee3: $8f
    add [hl]                                      ; $4ee4: $86
    inc de                                        ; $4ee5: $13
    and [hl]                                      ; $4ee6: $a6
    dec e                                         ; $4ee7: $1d
    ld d, [hl]                                    ; $4ee8: $56
    ld hl, $47b2                                  ; $4ee9: $21 $b2 $47
    dec a                                         ; $4eec: $3d
    dec hl                                        ; $4eed: $2b
    or h                                          ; $4eee: $b4
    ld [hl], h                                    ; $4eef: $74
    dec bc                                        ; $4ef0: $0b
    jp c, Jump_000_0d73                           ; $4ef1: $da $73 $0d

    and h                                         ; $4ef4: $a4
    and l                                         ; $4ef5: $a5
    dec hl                                        ; $4ef6: $2b
    ld c, [hl]                                    ; $4ef7: $4e
    add [hl]                                      ; $4ef8: $86
    ld l, [hl]                                    ; $4ef9: $6e
    rlca                                          ; $4efa: $07
    db $ed                                        ; $4efb: $ed
    or a                                          ; $4efc: $b7
    ld l, a                                       ; $4efd: $6f
    ld hl, $96d2                                  ; $4efe: $21 $d2 $96
    ld b, [hl]                                    ; $4f01: $46
    call nc, $e1a3                                ; $4f02: $d4 $a3 $e1
    add h                                         ; $4f05: $84
    ld l, c                                       ; $4f06: $69
    add a                                         ; $4f07: $87
    ld d, l                                       ; $4f08: $55
    adc b                                         ; $4f09: $88
    db $ec                                        ; $4f0a: $ec
    ld d, c                                       ; $4f0b: $51
    rst $08                                       ; $4f0c: $cf
    ld a, [bc]                                    ; $4f0d: $0a
    dec l                                         ; $4f0e: $2d
    db $dd                                        ; $4f0f: $dd
    add d                                         ; $4f10: $82
    or $5c                                        ; $4f11: $f6 $5c
    inc bc                                        ; $4f13: $03
    ld l, c                                       ; $4f14: $69
    jp hl                                         ; $4f15: $e9


    adc d                                         ; $4f16: $8a
    sub e                                         ; $4f17: $93
    and c                                         ; $4f18: $a1

jr_06f_4f19:
    db $db                                        ; $4f19: $db
    ld bc, $b7ed                                  ; $4f1a: $01 $ed $b7
    ld l, a                                       ; $4f1d: $6f
    ld e, c                                       ; $4f1e: $59
    cp d                                          ; $4f1f: $ba
    add l                                         ; $4f20: $85
    ld c, d                                       ; $4f21: $4a
    db $e4                                        ; $4f22: $e4
    jr c, @-$78                                   ; $4f23: $38 $86

    cp d                                          ; $4f25: $ba
    or h                                          ; $4f26: $b4
    ld [c], a                                     ; $4f27: $e2
    inc [hl]                                      ; $4f28: $34
    sbc h                                         ; $4f29: $9c
    jr nc, jr_06f_4f19                            ; $4f2a: $30 $ed

    or b                                          ; $4f2c: $b0
    db $ed                                        ; $4f2d: $ed
    nop                                           ; $4f2e: $00
    db $ed                                        ; $4f2f: $ed
    or a                                          ; $4f30: $b7
    sbc a                                         ; $4f31: $9f
    adc l                                         ; $4f32: $8d
    ld b, h                                       ; $4f33: $44
    ld c, a                                       ; $4f34: $4f
    ld l, c                                       ; $4f35: $69
    ld b, l                                       ; $4f36: $45
    sbc b                                         ; $4f37: $98
    and c                                         ; $4f38: $a1
    halt                                          ; $4f39: $76
    ld [hl], a                                    ; $4f3a: $77
    ld [hl], h                                    ; $4f3b: $74
    ld c, e                                       ; $4f3c: $4b
    and d                                         ; $4f3d: $a2
    add hl, de                                    ; $4f3e: $19
    dec c                                         ; $4f3f: $0d
    daa                                           ; $4f40: $27
    ld c, h                                       ; $4f41: $4c
    dec sp                                        ; $4f42: $3b
    xor h                                         ; $4f43: $ac
    ld b, d                                       ; $4f44: $42
    ld h, h                                       ; $4f45: $64
    adc a                                         ; $4f46: $8f
    ld a, d                                       ; $4f47: $7a
    ld d, [hl]                                    ; $4f48: $56
    ld l, b                                       ; $4f49: $68
    jp hl                                         ; $4f4a: $e9


    ld d, $b4                                     ; $4f4b: $16 $b4
    rst $20                                       ; $4f4d: $e7
    ld a, [de]                                    ; $4f4e: $1a
    ld c, b                                       ; $4f4f: $48
    ld c, e                                       ; $4f50: $4b
    ld d, a                                       ; $4f51: $57
    sbc h                                         ; $4f52: $9c
    inc c                                         ; $4f53: $0c
    db $dd                                        ; $4f54: $dd
    ld c, $ed                                     ; $4f55: $0e $ed
    or a                                          ; $4f57: $b7
    sbc a                                         ; $4f58: $9f
    adc l                                         ; $4f59: $8d
    ld b, h                                       ; $4f5a: $44
    rst $38                                       ; $4f5b: $ff
    ld l, e                                       ; $4f5c: $6b
    or $c9                                        ; $4f5d: $f6 $c9
    sub d                                         ; $4f5f: $92
    ei                                            ; $4f60: $fb
    inc [hl]                                      ; $4f61: $34
    and e                                         ; $4f62: $a3
    pop hl                                        ; $4f63: $e1
    add h                                         ; $4f64: $84
    ld l, c                                       ; $4f65: $69
    add a                                         ; $4f66: $87
    ld d, l                                       ; $4f67: $55
    adc b                                         ; $4f68: $88
    db $ec                                        ; $4f69: $ec
    ld d, c                                       ; $4f6a: $51
    rst $08                                       ; $4f6b: $cf
    ld a, [bc]                                    ; $4f6c: $0a
    dec l                                         ; $4f6d: $2d
    db $dd                                        ; $4f6e: $dd
    add d                                         ; $4f6f: $82
    or $5c                                        ; $4f70: $f6 $5c
    inc bc                                        ; $4f72: $03
    ld l, c                                       ; $4f73: $69
    jp hl                                         ; $4f74: $e9


    adc d                                         ; $4f75: $8a
    sub e                                         ; $4f76: $93
    and c                                         ; $4f77: $a1
    db $db                                        ; $4f78: $db
    ld bc, $b7ed                                  ; $4f79: $01 $ed $b7
    rst $28                                       ; $4f7c: $ef
    ret nz                                        ; $4f7d: $c0

    adc l                                         ; $4f7e: $8d
    ld c, [hl]                                    ; $4f7f: $4e
    jp Jump_06f_7ab1                              ; $4f80: $c3 $b1 $7a


    ld a, [hl+]                                   ; $4f83: $2a
    di                                            ; $4f84: $f3
    ld a, a                                       ; $4f85: $7f
    or $3f                                        ; $4f86: $f6 $3f
    xor l                                         ; $4f88: $ad
    db $d3                                        ; $4f89: $d3
    db $eb                                        ; $4f8a: $eb
    db $e3                                        ; $4f8b: $e3
    and [hl]                                      ; $4f8c: $a6
    ld l, a                                       ; $4f8d: $6f
    ld c, a                                       ; $4f8e: $4f
    ld [hl-], a                                   ; $4f8f: $32
    ld hl, sp-$27                                 ; $4f90: $f8 $d9
    ld c, $ed                                     ; $4f92: $0e $ed
    or a                                          ; $4f94: $b7
    sbc a                                         ; $4f95: $9f
    ld d, d                                       ; $4f96: $52
    jp Jump_000_1ac9                              ; $4f97: $c3 $c9 $1a


    db $fc                                        ; $4f9a: $fc
    rst $20                                       ; $4f9b: $e7
    sbc $90                                       ; $4f9c: $de $90
    ei                                            ; $4f9e: $fb
    call nc, $c728                                ; $4f9f: $d4 $28 $c7
    inc a                                         ; $4fa2: $3c
    db $eb                                        ; $4fa3: $eb
    ld e, c                                       ; $4fa4: $59
    add a                                         ; $4fa5: $87

Jump_06f_4fa6:
    dec [hl]                                      ; $4fa6: $35
    sub $7c                                       ; $4fa7: $d6 $7c
    cp a                                          ; $4fa9: $bf
    and e                                         ; $4faa: $a3
    ld c, l                                       ; $4fab: $4d
    dec a                                         ; $4fac: $3d
    ld a, e                                       ; $4fad: $7b
    sbc d                                         ; $4fae: $9a
    ld e, l                                       ; $4faf: $5d
    db $eb                                        ; $4fb0: $eb
    sub e                                         ; $4fb1: $93
    ld hl, $1647                                  ; $4fb2: $21 $47 $16
    adc l                                         ; $4fb5: $8d
    ld [hl], h                                    ; $4fb6: $74
    pop hl                                        ; $4fb7: $e1
    jr @+$3e                                      ; $4fb8: $18 $3c

    cp d                                          ; $4fba: $ba
    ld a, [c]                                     ; $4fbb: $f2
    ld l, c                                       ; $4fbc: $69
    and a                                         ; $4fbd: $a7
    and d                                         ; $4fbe: $a2
    sbc [hl]                                      ; $4fbf: $9e
    db $fd                                        ; $4fc0: $fd
    inc h                                         ; $4fc1: $24
    pop bc                                        ; $4fc2: $c1
    db $db                                        ; $4fc3: $db
    ld [de], a                                    ; $4fc4: $12
    adc $5e                                       ; $4fc5: $ce $5e
    ld c, a                                       ; $4fc7: $4f
    adc l                                         ; $4fc8: $8d
    xor h                                         ; $4fc9: $ac
    ld e, [hl]                                    ; $4fca: $5e
    sub b                                         ; $4fcb: $90
    ld l, c                                       ; $4fcc: $69
    sbc a                                         ; $4fcd: $9f
    db $ed                                        ; $4fce: $ed
    nop                                           ; $4fcf: $00
    db $ed                                        ; $4fd0: $ed
    or a                                          ; $4fd1: $b7
    ld d, a                                       ; $4fd2: $57
    db $10                                        ; $4fd3: $10
    xor [hl]                                      ; $4fd4: $ae
    ld hl, sp+$5b                                 ; $4fd5: $f8 $5b
    ccf                                           ; $4fd7: $3f
    cp l                                          ; $4fd8: $bd
    ccf                                           ; $4fd9: $3f
    cpl                                           ; $4fda: $2f
    add hl, sp                                    ; $4fdb: $39
    adc l                                         ; $4fdc: $8d
    res 6, c                                      ; $4fdd: $cb $b1
    sbc [hl]                                      ; $4fdf: $9e
    db $fd                                        ; $4fe0: $fd
    inc h                                         ; $4fe1: $24
    pop bc                                        ; $4fe2: $c1
    db $db                                        ; $4fe3: $db
    ld [de], a                                    ; $4fe4: $12
    adc $de                                       ; $4fe5: $ce $de
    jr c, jr_06f_4ffa                             ; $4fe7: $38 $11

    cp e                                          ; $4fe9: $bb
    ld h, e                                       ; $4fea: $63
    adc [hl]                                      ; $4feb: $8e
    xor h                                         ; $4fec: $ac
    adc b                                         ; $4fed: $88
    ld l, [hl]                                    ; $4fee: $6e
    push hl                                       ; $4fef: $e5
    sub l                                         ; $4ff0: $95
    ld b, a                                       ; $4ff1: $47
    ld d, b                                       ; $4ff2: $50
    ld l, b                                       ; $4ff3: $68
    xor a                                         ; $4ff4: $af
    jp nz, Jump_000_05c2                          ; $4ff5: $c2 $c2 $05

    db $ed                                        ; $4ff8: $ed
    dec c                                         ; $4ff9: $0d

jr_06f_4ffa:
    sbc h                                         ; $4ffa: $9c
    inc c                                         ; $4ffb: $0c
    ld e, $ba                                     ; $4ffc: $1e $ba
    dec e                                         ; $4ffe: $1d
    db $ed                                        ; $4fff: $ed
    or a                                          ; $5000: $b7
    ld [hl], a                                    ; $5001: $77
    db $e4                                        ; $5002: $e4
    dec h                                         ; $5003: $25
    and a                                         ; $5004: $a7
    rst $18                                       ; $5005: $df
    and a                                         ; $5006: $a7
    ld [hl], l                                    ; $5007: $75
    cp e                                          ; $5008: $bb
    sbc [hl]                                      ; $5009: $9e
    db $fd                                        ; $500a: $fd
    inc h                                         ; $500b: $24
    pop bc                                        ; $500c: $c1
    db $db                                        ; $500d: $db
    ld [de], a                                    ; $500e: $12
    adc $de                                       ; $500f: $ce $de
    ld b, b                                       ; $5011: $40
    ld h, d                                       ; $5012: $62
    push hl                                       ; $5013: $e5
    ld h, h                                       ; $5014: $64
    push hl                                       ; $5015: $e5
    add hl, hl                                    ; $5016: $29
    xor l                                         ; $5017: $ad
    ld d, h                                       ; $5018: $54
    scf                                           ; $5019: $37
    ld h, [hl]                                    ; $501a: $66
    or h                                          ; $501b: $b4
    ld a, [$c864]                                 ; $501c: $fa $64 $c8
    sub c                                         ; $501f: $91
    push af                                       ; $5020: $f5
    ret                                           ; $5021: $c9


    sub b                                         ; $5022: $90
    inc hl                                        ; $5023: $23
    sbc e                                         ; $5024: $9b
    inc e                                         ; $5025: $1c
    ld a, [de]                                    ; $5026: $1a
    jp nz, $f2e2                                  ; $5027: $c2 $e2 $f2

    ret c                                         ; $502a: $d8

    ld c, $ed                                     ; $502b: $0e $ed
    or a                                          ; $502d: $b7
    rst $28                                       ; $502e: $ef
    and h                                         ; $502f: $a4
    db $ec                                        ; $5030: $ec
    pop hl                                        ; $5031: $e1
    rst $00                                       ; $5032: $c7
    ld [$3951], a                                 ; $5033: $ea $51 $39
    ld l, $44                                     ; $5036: $2e $44
    ld d, $2f                                     ; $5038: $16 $2f
    call nc, Call_06f_7fb3                        ; $503a: $d4 $b3 $7f
    xor b                                         ; $503d: $a8
    ld c, [hl]                                    ; $503e: $4e
    ld [hl-], a                                   ; $503f: $32
    ld l, b                                       ; $5040: $68
    dec a                                         ; $5041: $3d
    dec hl                                        ; $5042: $2b
    rst $00                                       ; $5043: $c7
    ld l, h                                       ; $5044: $6c
    ld a, c                                       ; $5045: $79
    db $f4                                        ; $5046: $f4
    and e                                         ; $5047: $a3
    push hl                                       ; $5048: $e5
    add h                                         ; $5049: $84
    ld c, c                                       ; $504a: $49
    or a                                          ; $504b: $b7
    inc bc                                        ; $504c: $03
    db $ed                                        ; $504d: $ed
    or a                                          ; $504e: $b7
    sub a                                         ; $504f: $97
    ld h, e                                       ; $5050: $63
    jp nz, $295e                                  ; $5051: $c2 $5e $29

    and [hl]                                      ; $5054: $a6
    adc b                                         ; $5055: $88
    push af                                       ; $5056: $f5
    ld d, e                                       ; $5057: $53
    add hl, sp                                    ; $5058: $39
    ld e, c                                       ; $5059: $59
    cp c                                          ; $505a: $b9
    adc e                                         ; $505b: $8b
    and a                                         ; $505c: $a7
    ld a, [hl]                                    ; $505d: $7e
    add hl, de                                    ; $505e: $19
    db $e3                                        ; $505f: $e3
    ld e, b                                       ; $5060: $58
    dec a                                         ; $5061: $3d
    ei                                            ; $5062: $fb
    ld c, c                                       ; $5063: $49
    add d                                         ; $5064: $82
    or a                                          ; $5065: $b7
    dec h                                         ; $5066: $25
    sbc h                                         ; $5067: $9c
    ld a, l                                       ; $5068: $7d
    dec sp                                        ; $5069: $3b
    nop                                           ; $506a: $00
    db $ed                                        ; $506b: $ed
    or a                                          ; $506c: $b7
    sub a                                         ; $506d: $97
    dec de                                        ; $506e: $1b
    jp c, Jump_06f_5c72                           ; $506f: $da $72 $5c

    add [hl]                                      ; $5072: $86
    ld a, [bc]                                    ; $5073: $0a
    dec l                                         ; $5074: $2d
    db $dd                                        ; $5075: $dd
    ld b, d                                       ; $5076: $42
    ld d, a                                       ; $5077: $57
    ld a, $ed                                     ; $5078: $3e $ed
    ld d, h                                       ; $507a: $54
    inc d                                         ; $507b: $14
    ld d, l                                       ; $507c: $55
    ld e, d                                       ; $507d: $5a
    cp a                                          ; $507e: $bf
    ld c, a                                       ; $507f: $4f
    ld [hl], a                                    ; $5080: $77
    rst $18                                       ; $5081: $df
    ld b, [hl]                                    ; $5082: $46
    dec a                                         ; $5083: $3d
    sbc e                                         ; $5084: $9b
    inc e                                         ; $5085: $1c
    ld a, [de]                                    ; $5086: $1a
    jp nz, $f2e2                                  ; $5087: $c2 $e2 $f2

    xor b                                         ; $508a: $a8
    ld h, a                                       ; $508b: $67
    ccf                                           ; $508c: $3f
    ld c, c                                       ; $508d: $49
    ldh a, [$b6]                                  ; $508e: $f0 $b6
    add h                                         ; $5090: $84
    or e                                          ; $5091: $b3
    ld l, a                                       ; $5092: $6f
    rlca                                          ; $5093: $07
    db $ed                                        ; $5094: $ed
    or a                                          ; $5095: $b7
    ld l, a                                       ; $5096: $6f
    inc sp                                        ; $5097: $33
    ld e, [hl]                                    ; $5098: $5e
    ld [hl], b                                    ; $5099: $70
    sbc l                                         ; $509a: $9d
    ld a, [de]                                    ; $509b: $1a
    push hl                                       ; $509c: $e5
    sbc b                                         ; $509d: $98
    ld h, a                                       ; $509e: $67
    add l                                         ; $509f: $85
    or [hl]                                       ; $50a0: $b6
    ld [c], a                                     ; $50a1: $e2
    ld e, l                                       ; $50a2: $5d
    ld a, c                                       ; $50a3: $79
    ret                                           ; $50a4: $c9


    xor c                                         ; $50a5: $a9
    ld h, a                                       ; $50a6: $67
    dec h                                         ; $50a7: $25
    jp nz, Jump_000_0c98                          ; $50a8: $c2 $98 $0c

    push af                                       ; $50ab: $f5
    db $ec                                        ; $50ac: $ec
    push af                                       ; $50ad: $f5
    ld [hl], c                                    ; $50ae: $71
    ld d, e                                       ; $50af: $53
    add a                                         ; $50b0: $87
    and l                                         ; $50b1: $a5
    or l                                          ; $50b2: $b5
    ldh [rSVBK], a                                ; $50b3: $e0 $70
    ld a, c                                       ; $50b5: $79
    cp h                                          ; $50b6: $bc
    jp nc, Jump_06f_6768                          ; $50b7: $d2 $68 $67

    ld e, d                                       ; $50ba: $5a
    push hl                                       ; $50bb: $e5
    add hl, hl                                    ; $50bc: $29
    ld h, l                                       ; $50bd: $65
    ccf                                           ; $50be: $3f
    ld e, d                                       ; $50bf: $5a
    or $d9                                        ; $50c0: $f6 $d9
    and a                                         ; $50c2: $a7
    ld a, [hl+]                                   ; $50c3: $2a
    sbc c                                         ; $50c4: $99
    db $e3                                        ; $50c5: $e3
    dec b                                         ; $50c6: $05
    ld e, l                                       ; $50c7: $5d
    ld l, [hl]                                    ; $50c8: $6e
    ld [hl], h                                    ; $50c9: $74
    dec sp                                        ; $50ca: $3b
    nop                                           ; $50cb: $00
    db $ed                                        ; $50cc: $ed
    or a                                          ; $50cd: $b7
    sub a                                         ; $50ce: $97
    ld h, e                                       ; $50cf: $63
    jp nz, $d0de                                  ; $50d0: $c2 $de $d0

    xor b                                         ; $50d3: $a8
    swap e                                        ; $50d4: $cb $33
    ld b, a                                       ; $50d6: $47
    sub $4f                                       ; $50d7: $d6 $4f
    db $e3                                        ; $50d9: $e3
    ld [hl], d                                    ; $50da: $72
    db $ec                                        ; $50db: $ec
    jp z, $fda7                                   ; $50dc: $ca $a7 $fd

    ld c, h                                       ; $50df: $4c
    db $eb                                        ; $50e0: $eb
    reti                                          ; $50e1: $d9


    ld c, a                                       ; $50e2: $4f
    ld [de], a                                    ; $50e3: $12

Call_06f_50e4:
    cp h                                          ; $50e4: $bc
    dec l                                         ; $50e5: $2d
    pop hl                                        ; $50e6: $e1
    db $ec                                        ; $50e7: $ec
    ld a, l                                       ; $50e8: $7d
    ld [hl], a                                    ; $50e9: $77
    add h                                         ; $50ea: $84
    ld a, [de]                                    ; $50eb: $1a
    daa                                           ; $50ec: $27
    ld d, e                                       ; $50ed: $53
    or a                                          ; $50ee: $b7
    inc bc                                        ; $50ef: $03
    db $ed                                        ; $50f0: $ed
    or a                                          ; $50f1: $b7
    rra                                           ; $50f2: $1f
    scf                                           ; $50f3: $37
    or h                                          ; $50f4: $b4
    push hl                                       ; $50f5: $e5
    cp b                                          ; $50f6: $b8
    ld l, h                                       ; $50f7: $6c
    ld a, [hl+]                                   ; $50f8: $2a
    ld l, l                                       ; $50f9: $6d
    pop bc                                        ; $50fa: $c1
    adc a                                         ; $50fb: $8f
    push de                                       ; $50fc: $d5
    ld c, a                                       ; $50fd: $4f
    rst $18                                       ; $50fe: $df
    add d                                         ; $50ff: $82
    xor [hl]                                      ; $5100: $ae
    db $fd                                        ; $5101: $fd
    ld l, [hl]                                    ; $5102: $6e
    sub l                                         ; $5103: $95
    ld d, e                                       ; $5104: $53
    add hl, sp                                    ; $5105: $39
    ld e, c                                       ; $5106: $59
    ld c, h                                       ; $5107: $4c
    cp c                                          ; $5108: $b9
    db $fc                                        ; $5109: $fc
    ld l, h                                       ; $510a: $6c
    rlca                                          ; $510b: $07
    db $ed                                        ; $510c: $ed
    or a                                          ; $510d: $b7
    sub a                                         ; $510e: $97
    jp Jump_000_11c9                              ; $510f: $c3 $c9 $11


    ld a, [hl]                                    ; $5112: $7e
    ld a, [hl+]                                   ; $5113: $2a
    rst $00                                       ; $5114: $c7
    ld c, l                                       ; $5115: $4d
    and a                                         ; $5116: $a7
    rst $30                                       ; $5117: $f7
    rst $20                                       ; $5118: $e7
    dec h                                         ; $5119: $25
    and a                                         ; $511a: $a7
    ld b, d                                       ; $511b: $42
    ld c, e                                       ; $511c: $4b
    or a                                          ; $511d: $b7
    and [hl]                                      ; $511e: $a6
    ld [hl], d                                    ; $511f: $72
    or d                                          ; $5120: $b2
    sbc b                                         ; $5121: $98
    ld [hl], d                                    ; $5122: $72
    ld sp, hl                                     ; $5123: $f9
    add hl, hl                                    ; $5124: $29
    ld a, [de]                                    ; $5125: $1a
    jp c, Jump_06f_74f8                           ; $5126: $da $f8 $74

    ld a, e                                       ; $5129: $7b
    ld e, c                                       ; $512a: $59
    xor a                                         ; $512b: $af
    inc hl                                        ; $512c: $23
    jp c, $d1e4                                   ; $512d: $da $e4 $d1

    jp nc, $c235                                  ; $5130: $d2 $35 $c2

    ld hl, $a78b                                  ; $5133: $21 $8b $a7
    and a                                         ; $5136: $a7
    ld [hl], l                                    ; $5137: $75
    ld b, d                                       ; $5138: $42
    adc [hl]                                      ; $5139: $8e
    call c, $ed0e                                 ; $513a: $dc $0e $ed
    or a                                          ; $513d: $b7
    ld l, a                                       ; $513e: $6f
    ld e, c                                       ; $513f: $59
    cp d                                          ; $5140: $ba
    dec [hl]                                      ; $5141: $35
    push hl                                       ; $5142: $e5
    xor l                                         ; $5143: $ad
    ld l, b                                       ; $5144: $68
    ld [hl], h                                    ; $5145: $74
    ld [hl], b                                    ; $5146: $70
    call z, $e591                                 ; $5147: $cc $91 $e5
    dec l                                         ; $514a: $2d
    ld a, c                                       ; $514b: $79
    sub [hl]                                      ; $514c: $96
    and e                                         ; $514d: $a3
    dec l                                         ; $514e: $2d
    add hl, sp                                    ; $514f: $39
    sub l                                         ; $5150: $95
    sub e                                         ; $5151: $93
    push bc                                       ; $5152: $c5
    sub h                                         ; $5153: $94
    bit 1, a                                      ; $5154: $cb $4f
    jp Jump_000_26b1                              ; $5156: $c3 $b1 $26


    add l                                         ; $5159: $85
    dec [hl]                                      ; $515a: $35
    add hl, sp                                    ; $515b: $39
    inc [hl]                                      ; $515c: $34
    ld hl, sp-$6c                                 ; $515d: $f8 $94
    ldh a, [$c4]                                  ; $515f: $f0 $c4
    ld a, a                                       ; $5161: $7f
    db $fd                                        ; $5162: $fd
    ld d, c                                       ; $5163: $51
    add hl, sp                                    ; $5164: $39
    ld l, [hl]                                    ; $5165: $6e
    ld a, [hl+]                                   ; $5166: $2a
    push bc                                       ; $5167: $c5
    ld [$a42f], sp                                ; $5168: $08 $2f $a4
    db $ed                                        ; $516b: $ed
    nop                                           ; $516c: $00
    db $ed                                        ; $516d: $ed
    or a                                          ; $516e: $b7
    ld d, a                                       ; $516f: $57
    ld l, h                                       ; $5170: $6c
    pop bc                                        ; $5171: $c1
    adc a                                         ; $5172: $8f
    push de                                       ; $5173: $d5
    or e                                          ; $5174: $b3
    ld [de], a                                    ; $5175: $12
    ld a, a                                       ; $5176: $7f
    db $ec                                        ; $5177: $ec
    and e                                         ; $5178: $a3
    db $fd                                        ; $5179: $fd
    rrca                                          ; $517a: $0f
    db $fc                                        ; $517b: $fc
    jr jr_06f_51f3                                ; $517c: $18 $75

    dec sp                                        ; $517e: $3b
    nop                                           ; $517f: $00
    rst $28                                       ; $5180: $ef
    jp c, $b905                                   ; $5181: $da $05 $b9

    ld d, b                                       ; $5184: $50
    db $e4                                        ; $5185: $e4
    cp b                                          ; $5186: $b8
    ld c, [hl]                                    ; $5187: $4e
    ret c                                         ; $5188: $d8

    ld a, d                                       ; $5189: $7a
    ld [hl], e                                    ; $518a: $73
    db $fd                                        ; $518b: $fd
    sbc c                                         ; $518c: $99
    sbc d                                         ; $518d: $9a
    pop de                                        ; $518e: $d1
    rst $30                                       ; $518f: $f7
    halt                                          ; $5190: $76
    ld sp, $d9ea                                  ; $5191: $31 $ea $d9
    rlc h                                         ; $5194: $cb $04
    or c                                          ; $5196: $b1
    push af                                       ; $5197: $f5
    call c, Call_06f_6a50                         ; $5198: $dc $50 $6a
    ld c, b                                       ; $519b: $48
    cp c                                          ; $519c: $b9
    or b                                          ; $519d: $b0
    cpl                                           ; $519e: $2f
    adc l                                         ; $519f: $8d
    jr z, jr_06f_51ff                             ; $51a0: $28 $5d

    and e                                         ; $51a2: $a3
    ld hl, $68ab                                  ; $51a3: $21 $ab $68
    call z, $eac1                                 ; $51a6: $cc $c1 $ea
    ld h, b                                       ; $51a9: $60
    dec hl                                        ; $51aa: $2b
    adc e                                         ; $51ab: $8b
    cp c                                          ; $51ac: $b9
    ld l, h                                       ; $51ad: $6c
    or h                                          ; $51ae: $b4
    ld hl, $2fcd                                  ; $51af: $21 $cd $2f
    ccf                                           ; $51b2: $3f
    ld e, d                                       ; $51b3: $5a
    cp d                                          ; $51b4: $ba
    add [hl]                                      ; $51b5: $86
    ld h, e                                       ; $51b6: $63
    ld [hl], d                                    ; $51b7: $72
    ld [hl], h                                    ; $51b8: $74
    dec sp                                        ; $51b9: $3b
    nop                                           ; $51ba: $00
    db $ed                                        ; $51bb: $ed
    or a                                          ; $51bc: $b7
    rst $28                                       ; $51bd: $ef
    ret nz                                        ; $51be: $c0

    adc l                                         ; $51bf: $8d
    and d                                         ; $51c0: $a2
    pop hl                                        ; $51c1: $e1
    ld e, b                                       ; $51c2: $58
    inc hl                                        ; $51c3: $23
    xor l                                         ; $51c4: $ad
    jp z, $c422                                   ; $51c5: $ca $22 $c4

    cp d                                          ; $51c8: $ba
    dec [hl]                                      ; $51c9: $35
    add hl, de                                    ; $51ca: $19
    ld a, [hl]                                    ; $51cb: $7e
    ld a, [de]                                    ; $51cc: $1a
    adc [hl]                                      ; $51cd: $8e
    dec [hl]                                      ; $51ce: $35
    cp c                                          ; $51cf: $b9
    ld a, [hl+]                                   ; $51d0: $2a
    adc l                                         ; $51d1: $8d
    ld l, e                                       ; $51d2: $6b
    jp z, Jump_06f_4346                           ; $51d3: $ca $46 $43

    ld d, [hl]                                    ; $51d6: $56
    pop de                                        ; $51d7: $d1
    sbc b                                         ; $51d8: $98
    add e                                         ; $51d9: $83
    dec d                                         ; $51da: $15
    push de                                       ; $51db: $d5
    ld d, l                                       ; $51dc: $55
    ld b, a                                       ; $51dd: $47
    ld [hl], l                                    ; $51de: $75
    jr z, jr_06f_523e                             ; $51df: $28 $5d

    sub e                                         ; $51e1: $93
    xor e                                         ; $51e2: $ab
    ld h, d                                       ; $51e3: $62
    ld [hl], a                                    ; $51e4: $77
    cp a                                          ; $51e5: $bf
    or e                                          ; $51e6: $b3
    dec e                                         ; $51e7: $1d
    db $ed                                        ; $51e8: $ed
    or a                                          ; $51e9: $b7
    rst $28                                       ; $51ea: $ef
    push hl                                       ; $51eb: $e5
    ccf                                           ; $51ec: $3f
    ld [hl], e                                    ; $51ed: $73
    inc e                                         ; $51ee: $1c
    xor e                                         ; $51ef: $ab
    rra                                           ; $51f0: $1f
    xor l                                         ; $51f1: $ad
    adc b                                         ; $51f2: $88

jr_06f_51f3:
    db $eb                                        ; $51f3: $eb
    ei                                            ; $51f4: $fb
    ld a, e                                       ; $51f5: $7b
    ld a, c                                       ; $51f6: $79
    ld a, e                                       ; $51f7: $7b
    ld h, l                                       ; $51f8: $65
    pop af                                        ; $51f9: $f1
    ld l, b                                       ; $51fa: $68
    dec a                                         ; $51fb: $3d
    dec de                                        ; $51fc: $1b
    rst $00                                       ; $51fd: $c7
    adc a                                         ; $51fe: $8f

jr_06f_51ff:
    halt                                          ; $51ff: $76
    or h                                          ; $5200: $b4
    ld a, [bc]                                    ; $5201: $0a
    pop hl                                        ; $5202: $e1
    jr jr_06f_527a                                ; $5203: $18 $75

    dec sp                                        ; $5205: $3b
    nop                                           ; $5206: $00
    db $ed                                        ; $5207: $ed
    or a                                          ; $5208: $b7
    rst $28                                       ; $5209: $ef
    ret nz                                        ; $520a: $c0

    adc l                                         ; $520b: $8d
    ld c, [hl]                                    ; $520c: $4e
    jp Jump_06f_46b1                              ; $520d: $c3 $b1 $46


    ld e, d                                       ; $5210: $5a
    db $e3                                        ; $5211: $e3
    ld a, [c]                                     ; $5212: $f2
    ld d, e                                       ; $5213: $53
    ld h, l                                       ; $5214: $65
    ld h, h                                       ; $5215: $64
    ld b, l                                       ; $5216: $45
    ld l, e                                       ; $5217: $6b
    rla                                           ; $5218: $17
    adc a                                         ; $5219: $8f
    sub [hl]                                      ; $521a: $96
    adc l                                         ; $521b: $8d
    add [hl]                                      ; $521c: $86
    xor h                                         ; $521d: $ac
    and d                                         ; $521e: $a2
    ld sp, $6b07                                  ; $521f: $31 $07 $6b
    inc e                                         ; $5222: $1c
    ccf                                           ; $5223: $3f
    ld e, d                                       ; $5224: $5a
    xor $d4                                       ; $5225: $ee $d4
    jp nc, Jump_000_1c35                          ; $5227: $d2 $35 $1c

    sub e                                         ; $522a: $93
    and e                                         ; $522b: $a3
    ld c, a                                       ; $522c: $4f
    ld d, b                                       ; $522d: $50
    jp $c595                                      ; $522e: $c3 $95 $c5


    and e                                         ; $5231: $a3
    db $db                                        ; $5232: $db
    ld bc, $b7ed                                  ; $5233: $01 $ed $b7
    scf                                           ; $5236: $37
    ld b, a                                       ; $5237: $47
    sbc [hl]                                      ; $5238: $9e
    dec d                                         ; $5239: $15
    dec hl                                        ; $523a: $2b
    ld a, e                                       ; $523b: $7b
    inc [hl]                                      ; $523c: $34
    rst $38                                       ; $523d: $ff

jr_06f_523e:
    ld c, [hl]                                    ; $523e: $4e
    sbc c                                         ; $523f: $99
    push hl                                       ; $5240: $e5
    db $e4                                        ; $5241: $e4
    ld l, b                                       ; $5242: $68
    sub e                                         ; $5243: $93
    ld c, d                                       ; $5244: $4a
    adc l                                         ; $5245: $8d
    xor b                                         ; $5246: $a8
    add h                                         ; $5247: $84
    ld b, l                                       ; $5248: $45
    ld l, h                                       ; $5249: $6c
    rlca                                          ; $524a: $07
    scf                                           ; $524b: $37
    ld b, a                                       ; $524c: $47
    sbc [hl]                                      ; $524d: $9e
    dec [hl]                                      ; $524e: $35
    rst $38                                       ; $524f: $ff
    ld c, [hl]                                    ; $5250: $4e
    jp Jump_06f_4d51                              ; $5251: $c3 $51 $4d


    xor e                                         ; $5254: $ab
    sbc c                                         ; $5255: $99
    ld e, c                                       ; $5256: $59
    sbc h                                         ; $5257: $9c
    inc e                                         ; $5258: $1c
    ld a, [hl+]                                   ; $5259: $2a
    ld h, c                                       ; $525a: $61
    ld de, $01db                                  ; $525b: $11 $db $01
    rst $20                                       ; $525e: $e7
    or a                                          ; $525f: $b7
    jr z, jr_06f_52b5                             ; $5260: $28 $53

    add h                                         ; $5262: $84
    ld [hl], l                                    ; $5263: $75
    adc d                                         ; $5264: $8a
    adc b                                         ; $5265: $88
    ld b, b                                       ; $5266: $40
    ld h, d                                       ; $5267: $62
    dec a                                         ; $5268: $3d
    dec [hl]                                      ; $5269: $35
    and d                                         ; $526a: $a2
    ld [de], a                                    ; $526b: $12
    ld d, $b1                                     ; $526c: $16 $b1
    dec e                                         ; $526e: $1d
    sub a                                         ; $526f: $97
    rst $30                                       ; $5270: $f7
    ld b, b                                       ; $5271: $40
    ld e, d                                       ; $5272: $5a
    ld l, [hl]                                    ; $5273: $6e
    pop hl                                        ; $5274: $e1
    nop                                           ; $5275: $00
    rst $28                                       ; $5276: $ef
    ld [hl], b                                    ; $5277: $70
    push bc                                       ; $5278: $c5
    ld [hl], l                                    ; $5279: $75

jr_06f_527a:
    ld [hl], c                                    ; $527a: $71
    db $f4                                        ; $527b: $f4
    nop                                           ; $527c: $00
    rst $10                                       ; $527d: $d7
    dec c                                         ; $527e: $0d
    daa                                           ; $527f: $27
    add sp, $01                                   ; $5280: $e8 $01
    rst $10                                       ; $5282: $d7
    ld l, l                                       ; $5283: $6d
    ld [hl+], a                                   ; $5284: $22
    cpl                                           ; $5285: $2f
    cp $ce                                        ; $5286: $fe $ce
    ld bc, $fd97                                  ; $5288: $01 $97 $fd
    ld a, a                                       ; $528b: $7f
    ld h, l                                       ; $528c: $65
    ld sp, $fe2e                                  ; $528d: $31 $2e $fe
    adc $01                                       ; $5290: $ce $01
    rst $28                                       ; $5292: $ef
    jp nc, $1fb0                                  ; $5293: $d2 $b0 $1f

    ld d, a                                       ; $5296: $57
    sub d                                         ; $5297: $92
    pop hl                                        ; $5298: $e1
    nop                                           ; $5299: $00
    ld d, a                                       ; $529a: $57
    rst $20                                       ; $529b: $e7
    db $f4                                        ; $529c: $f4
    inc hl                                        ; $529d: $23
    inc l                                         ; $529e: $2c
    ld [$d701], a                                 ; $529f: $ea $01 $d7
    xor $d7                                       ; $52a2: $ee $d7
    dec h                                         ; $52a4: $25
    ld [hl], c                                    ; $52a5: $71
    nop                                           ; $52a6: $00
    sbc a                                         ; $52a7: $9f
    inc h                                         ; $52a8: $24
    ld a, b                                       ; $52a9: $78
    ld e, e                                       ; $52aa: $5b
    jp nz, $0fd9                                  ; $52ab: $c2 $d9 $0f

    sbc a                                         ; $52ae: $9f
    add hl, de                                    ; $52af: $19
    or d                                          ; $52b0: $b2
    adc d                                         ; $52b1: $8a
    sub $29                                       ; $52b2: $d6 $29
    add hl, de                                    ; $52b4: $19

jr_06f_52b5:
    ld l, $fe                                     ; $52b5: $2e $fe
    adc $01                                       ; $52b7: $ce $01
    rst $20                                       ; $52b9: $e7
    ld e, a                                       ; $52ba: $5f
    ld e, [hl]                                    ; $52bb: $5e
    ccf                                           ; $52bc: $3f
    nop                                           ; $52bd: $00
    scf                                           ; $52be: $37
    sub [hl]                                      ; $52bf: $96
    call c, Call_000_07a9                         ; $52c0: $dc $a9 $07
    ld d, a                                       ; $52c3: $57
    ld h, c                                       ; $52c4: $61
    or $53                                        ; $52c5: $f6 $53
    rst $08                                       ; $52c7: $cf
    or e                                          ; $52c8: $b3
    sbc h                                         ; $52c9: $9c
    inc e                                         ; $52ca: $1c
    ld l, l                                       ; $52cb: $6d
    jp nc, Jump_06f_5701                          ; $52cc: $d2 $01 $57

    ld h, $8b                                     ; $52cf: $26 $8b
    sub [hl]                                      ; $52d1: $96
    add hl, sp                                    ; $52d2: $39
    inc d                                         ; $52d3: $14
    sub l                                         ; $52d4: $95
    db $e3                                        ; $52d5: $e3
    ld b, d                                       ; $52d6: $42
    jp Jump_000_071b                              ; $52d7: $c3 $1b $07


    ld l, l                                       ; $52da: $6d
    ld a, e                                       ; $52db: $7b
    ld h, e                                       ; $52dc: $63
    cp c                                          ; $52dd: $b9
    inc bc                                        ; $52de: $03
    ld l, l                                       ; $52df: $6d
    ei                                            ; $52e0: $fb
    pop de                                        ; $52e1: $d1
    rst $28                                       ; $52e2: $ef
    inc e                                         ; $52e3: $1c
    rst $20                                       ; $52e4: $e7
    ld a, [de]                                    ; $52e5: $1a
    pop de                                        ; $52e6: $d1
    ld [hl], b                                    ; $52e7: $70
    inc l                                         ; $52e8: $2c
    and d                                         ; $52e9: $a2
    call nc, Call_06f_5c18                        ; $52ea: $d4 $18 $5c
    ld hl, $a35d                                  ; $52ed: $21 $5d $a3
    ld hl, $784b                                  ; $52f0: $21 $4b $78
    ld e, h                                       ; $52f3: $5c
    ld a, [hl-]                                   ; $52f4: $3a
    nop                                           ; $52f5: $00
    rra                                           ; $52f6: $1f
    ld l, e                                       ; $52f7: $6b
    push hl                                       ; $52f8: $e5
    adc b                                         ; $52f9: $88
    adc h                                         ; $52fa: $8c
    ld e, d                                       ; $52fb: $5a
    rst $08                                       ; $52fc: $cf
    cp [hl]                                       ; $52fd: $be

jr_06f_52fe:
    ld l, e                                       ; $52fe: $6b
    dec hl                                        ; $52ff: $2b
    sbc a                                         ; $5300: $9f
    ld h, $52                                     ; $5301: $26 $52
    xor e                                         ; $5303: $ab
    cp a                                          ; $5304: $bf
    ld d, e                                       ; $5305: $53
    inc hl                                        ; $5306: $23
    halt                                          ; $5307: $76
    rst $00                                       ; $5308: $c7
    inc e                                         ; $5309: $1c
    reti                                          ; $530a: $d9


    rst $28                                       ; $530b: $ef
    sub h                                         ; $530c: $94
    and a                                         ; $530d: $a7
    ld h, h                                       ; $530e: $64
    and e                                         ; $530f: $a3
    adc a                                         ; $5310: $8f
    ld e, h                                       ; $5311: $5c
    ld a, [hl-]                                   ; $5312: $3a
    nop                                           ; $5313: $00
    sbc a                                         ; $5314: $9f
    inc h                                         ; $5315: $24
    cp d                                          ; $5316: $ba
    ld a, [hl+]                                   ; $5317: $2a
    add h                                         ; $5318: $84
    db $ec                                        ; $5319: $ec
    inc [hl]                                      ; $531a: $34
    sub b                                         ; $531b: $90
    ret c                                         ; $531c: $d8

    ld [hl], b                                    ; $531d: $70
    inc a                                         ; $531e: $3c
    dec hl                                        ; $531f: $2b
    add $9f                                       ; $5320: $c6 $9f
    ld d, [hl]                                    ; $5322: $56
    rst $08                                       ; $5323: $cf
    inc e                                         ; $5324: $1c
    ld l, l                                       ; $5325: $6d
    ld [$91a9], a                                 ; $5326: $ea $a9 $91
    sub l                                         ; $5329: $95
    inc hl                                        ; $532a: $23
    ld [hl-], a                                   ; $532b: $32
    cp [hl]                                       ; $532c: $be
    pop de                                        ; $532d: $d1
    sbc e                                         ; $532e: $9b
    inc hl                                        ; $532f: $23
    rst $08                                       ; $5330: $cf
    sbc d                                         ; $5331: $9a
    ld a, a                                       ; $5332: $7f
    ld b, a                                       ; $5333: $47
    ld d, b                                       ; $5334: $50
    add hl, sp                                    ; $5335: $39
    xor [hl]                                      ; $5336: $ae
    ld [hl], c                                    ; $5337: $71
    inc a                                         ; $5338: $3c
    adc d                                         ; $5339: $8a
    ld c, d                                       ; $533a: $4a
    ld e, d                                       ; $533b: $5a
    db $e4                                        ; $533c: $e4
    ld l, l                                       ; $533d: $6d
    ld l, h                                       ; $533e: $6c
    rlca                                          ; $533f: $07
    sbc a                                         ; $5340: $9f
    inc h                                         ; $5341: $24
    db $e4                                        ; $5342: $e4
    ld [$386d], sp                                ; $5343: $08 $6d $38
    ld d, $a1                                     ; $5346: $16 $a1
    adc l                                         ; $5348: $8d
    add [hl]                                      ; $5349: $86
    inc l                                         ; $534a: $2c
    pop hl                                        ; $534b: $e1
    and c                                         ; $534c: $a1
    sub a                                         ; $534d: $97
    ld c, $1f                                     ; $534e: $0e $1f
    rst $30                                       ; $5350: $f7
    cp $bc                                        ; $5351: $fe $bc
    db $e4                                        ; $5353: $e4
    ld d, h                                       ; $5354: $54
    adc [hl]                                      ; $5355: $8e
    ret z                                         ; $5356: $c8

    ret c                                         ; $5357: $d8

    ret                                           ; $5358: $c9


    sbc [hl]                                      ; $5359: $9e
    db $fd                                        ; $535a: $fd
    adc a                                         ; $535b: $8f
    inc a                                         ; $535c: $3c
    ld l, e                                       ; $535d: $6b
    jr c, jr_06f_52fe                             ; $535e: $38 $9e

    ld h, l                                       ; $5360: $65
    adc [hl]                                      ; $5361: $8e
    ld b, $eb                                     ; $5362: $06 $eb
    add l                                         ; $5364: $85
    ld c, [hl]                                    ; $5365: $4e
    sub l                                         ; $5366: $95
    ld l, c                                       ; $5367: $69
    dec sp                                        ; $5368: $3b
    nop                                           ; $5369: $00
    scf                                           ; $536a: $37
    ld l, b                                       ; $536b: $68
    pop bc                                        ; $536c: $c1
    dec c                                         ; $536d: $0d
    inc h                                         ; $536e: $24
    or $3f                                        ; $536f: $f6 $3f
    ld a, [c]                                     ; $5371: $f2
    xor h                                         ; $5372: $ac
    add hl, sp                                    ; $5373: $39
    ld h, l                                       ; $5374: $65
    adc c                                         ; $5375: $89
    cp $b1                                        ; $5376: $fe $b1
    ld a, [hl+]                                   ; $5378: $2a
    push bc                                       ; $5379: $c5
    inc a                                         ; $537a: $3c
    pop bc                                        ; $537b: $c1
    adc d                                         ; $537c: $8a
    xor c                                         ; $537d: $a9
    ld [hl-], a                                   ; $537e: $32
    dec [hl]                                      ; $537f: $35
    or h                                          ; $5380: $b4
    ld a, e                                       ; $5381: $7b
    ld b, d                                       ; $5382: $42
    ld e, e                                       ; $5383: $5b
    ld d, e                                       ; $5384: $53
    add hl, sp                                    ; $5385: $39
    ld [hl+], a                                   ; $5386: $22
    db $e3                                        ; $5387: $e3
    dec de                                        ; $5388: $1b
    rlca                                          ; $5389: $07
    rra                                           ; $538a: $1f
    and a                                         ; $538b: $a7
    ld l, b                                       ; $538c: $68
    ld l, b                                       ; $538d: $68
    jr c, jr_06f_53a6                             ; $538e: $38 $16

    pop de                                        ; $5390: $d1
    ld l, b                                       ; $5391: $68
    ret z                                         ; $5392: $c8

    ld [de], a                                    ; $5393: $12
    ld e, $db                                     ; $5394: $1e $db
    ld bc, $b9d7                                  ; $5396: $01 $d7 $b9
    ld c, a                                       ; $5399: $4f
    dec e                                         ; $539a: $1d
    di                                            ; $539b: $f3
    ld l, b                                       ; $539c: $68
    db $e3                                        ; $539d: $e3
    ld a, b                                       ; $539e: $78
    ld l, b                                       ; $539f: $68

jr_06f_53a0:
    xor c                                         ; $53a0: $a9
    ld de, $70da                                  ; $53a1: $11 $da $70
    inc l                                         ; $53a4: $2c
    ld b, d                                       ; $53a5: $42

jr_06f_53a6:
    dec de                                        ; $53a6: $1b
    dec c                                         ; $53a7: $0d
    ld e, c                                       ; $53a8: $59
    jp nz, Jump_000_2b43                          ; $53a9: $c2 $43 $2b

    jp nz, $ba6d                                  ; $53ac: $c2 $6d $ba

    cp $47                                        ; $53af: $fe $47
    sbc [hl]                                      ; $53b1: $9e
    ld d, l                                       ; $53b2: $55
    ld e, c                                       ; $53b3: $59
    ld h, l                                       ; $53b4: $65
    adc [hl]                                      ; $53b5: $8e
    res 5, d                                      ; $53b6: $cb $aa
    inc a                                         ; $53b8: $3c
    dec h                                         ; $53b9: $25
    sbc e                                         ; $53ba: $9b
    add [hl]                                      ; $53bb: $86
    ld h, e                                       ; $53bc: $63
    adc l                                         ; $53bd: $8d
    ld [hl], b                                    ; $53be: $70

Call_06f_53bf:
    jp nz, $ae0b                                  ; $53bf: $c2 $0b $ae

    sub c                                         ; $53c2: $91
    sub $e4                                       ; $53c3: $d6 $e4
    ld a, [hl+]                                   ; $53c5: $2a
    ld b, a                                       ; $53c6: $47
    ld h, h                                       ; $53c7: $64
    inc l                                         ; $53c8: $2c
    ld [bc], a                                    ; $53c9: $02
    ld l, c                                       ; $53ca: $69
    ld l, l                                       ; $53cb: $6d
    rlca                                          ; $53cc: $07
    rst $20                                       ; $53cd: $e7

jr_06f_53ce:
    ld a, [de]                                    ; $53ce: $1a
    pop de                                        ; $53cf: $d1
    ld [hl], b                                    ; $53d0: $70
    inc l                                         ; $53d1: $2c
    and d                                         ; $53d2: $a2
    call nc, Call_06f_5c18                        ; $53d3: $d4 $18 $5c
    inc hl                                        ; $53d6: $23
    halt                                          ; $53d7: $76
    rst $00                                       ; $53d8: $c7
    inc e                                         ; $53d9: $1c
    ld e, c                                       ; $53da: $59
    ld hl, $a35d                                  ; $53db: $21 $5d $a3
    ld hl, $784b                                  ; $53de: $21 $4b $78
    ld l, h                                       ; $53e1: $6c
    rlca                                          ; $53e2: $07
    scf                                           ; $53e3: $37
    ld b, a                                       ; $53e4: $47
    sbc [hl]                                      ; $53e5: $9e
    dec d                                         ; $53e6: $15
    ld [de], a                                    ; $53e7: $12
    ld b, d                                       ; $53e8: $42
    call nc, $9eb3                                ; $53e9: $d4 $b3 $9e
    ld a, [hl+]                                   ; $53ec: $2a
    ld b, a                                       ; $53ed: $47
    ld l, b                                       ; $53ee: $68
    rr d                                          ; $53ef: $cb $1a
    ld c, b                                       ; $53f1: $48
    inc l                                         ; $53f2: $2c
    dec [hl]                                      ; $53f3: $35
    and d                                         ; $53f4: $a2
    pop hl                                        ; $53f5: $e1
    ld e, b                                       ; $53f6: $58
    ld b, h                                       ; $53f7: $44
    xor c                                         ; $53f8: $a9
    ld sp, $bcb8                                  ; $53f9: $31 $b8 $bc
    dec d                                         ; $53fc: $15
    adc l                                         ; $53fd: $8d
    ld c, $8e                                     ; $53fe: $0e $8e
    add hl, sp                                    ; $5400: $39
    or d                                          ; $5401: $b2
    ld b, d                                       ; $5402: $42
    cp d                                          ; $5403: $ba
    ld b, [hl]                                    ; $5404: $46
    ld b, e                                       ; $5405: $43
    sub [hl]                                      ; $5406: $96
    ldh a, [$d8]                                  ; $5407: $f0 $d8
    ld c, $1f                                     ; $5409: $0e $1f
    pop de                                        ; $540b: $d1
    push de                                       ; $540c: $d5
    ld d, c                                       ; $540d: $51
    db $dd                                        ; $540e: $dd
    db $f4                                        ; $540f: $f4
    ld a, [hl+]                                   ; $5410: $2a
    ld c, [hl]                                    ; $5411: $4e
    or [hl]                                       ; $5412: $b6
    ld a, h                                       ; $5413: $7c
    push hl                                       ; $5414: $e5
    ld h, h                                       ; $5415: $64
    push hl                                       ; $5416: $e5
    add hl, hl                                    ; $5417: $29
    dec l                                         ; $5418: $2d
    ld e, e                                       ; $5419: $5b
    jr z, jr_06f_53a0                             ; $541a: $28 $84

    or [hl]                                       ; $541c: $b6
    xor h                                         ; $541d: $ac
    call nc, $8688                                ; $541e: $d4 $88 $86
    ld h, e                                       ; $5421: $63
    ld de, $01db                                  ; $5422: $11 $db $01
    sbc a                                         ; $5425: $9f
    inc h                                         ; $5426: $24
    db $ec                                        ; $5427: $ec
    add c                                         ; $5428: $81
    ld b, h                                       ; $5429: $44
    xor e                                         ; $542a: $ab
    sbc h                                         ; $542b: $9c
    and l                                         ; $542c: $a5
    ld l, b                                       ; $542d: $68
    jr c, jr_06f_53ce                             ; $542e: $38 $9e

    or [hl]                                       ; $5430: $b6
    ld d, b                                       ; $5431: $50
    ld l, d                                       ; $5432: $6a
    add h                                         ; $5433: $84
    dec d                                         ; $5434: $15
    pop de                                        ; $5435: $d1
    add d                                         ; $5436: $82
    or l                                          ; $5437: $b5
    sbc [hl]                                      ; $5438: $9e
    ld a, [de]                                    ; $5439: $1a
    pop de                                        ; $543a: $d1
    ld [hl], b                                    ; $543b: $70
    inc l                                         ; $543c: $2c
    ld [c], a                                     ; $543d: $e2
    ld d, d                                       ; $543e: $52
    ccf                                           ; $543f: $3f
    ld c, c                                       ; $5440: $49
    ret c                                         ; $5441: $d8

    inc bc                                        ; $5442: $03
    adc c                                         ; $5443: $89
    ld d, [hl]                                    ; $5444: $56
    add hl, sp                                    ; $5445: $39
    ld c, e                                       ; $5446: $4b
    ld d, c                                       ; $5447: $51
    rst $00                                       ; $5448: $c7
    inc a                                         ; $5449: $3c
    jp c, $c8ff                                   ; $544a: $da $ff $c8

    inc sp                                        ; $544d: $33
    ld b, c                                       ; $544e: $41
    inc bc                                        ; $544f: $03

Jump_06f_5450:
    adc c                                         ; $5450: $89
    ld [hl], $f5                                  ; $5451: $36 $f5
    db $eb                                        ; $5453: $eb
    ld [hl], $6d                                  ; $5454: $36 $6d
    dec sp                                        ; $5456: $3b
    nop                                           ; $5457: $00
    sbc a                                         ; $5458: $9f
    ld hl, $6847                                  ; $5459: $21 $47 $68
    jp $08b1                                      ; $545c: $c3 $b1 $08


    ld l, l                                       ; $545f: $6d
    inc [hl]                                      ; $5460: $34
    ld h, h                                       ; $5461: $64
    add hl, bc                                    ; $5462: $09
    rrca                                          ; $5463: $0f
    db $ed                                        ; $5464: $ed
    or [hl]                                       ; $5465: $b6
    ld l, l                                       ; $5466: $6d
    adc l                                         ; $5467: $8d
    cp a                                          ; $5468: $bf
    db $d3                                        ; $5469: $d3
    ld [hl], b                                    ; $546a: $70
    sub d                                         ; $546b: $92
    add h                                         ; $546c: $84
    ld d, [hl]                                    ; $546d: $56
    adc d                                         ; $546e: $8a
    pop af                                        ; $546f: $f1
    and a                                         ; $5470: $a7
    ld l, [hl]                                    ; $5471: $6e
    rlca                                          ; $5472: $07
    scf                                           ; $5473: $37
    ld b, a                                       ; $5474: $47
    sbc [hl]                                      ; $5475: $9e
    dec [hl]                                      ; $5476: $35
    rst $38                                       ; $5477: $ff
    ld c, [hl]                                    ; $5478: $4e
    jp $2cf1                                      ; $5479: $c3 $f1 $2c


    ld [hl], e                                    ; $547c: $73
    inc [hl]                                      ; $547d: $34
    ld e, b                                       ; $547e: $58
    jp hl                                         ; $547f: $e9


    sbc d                                         ; $5480: $9a
    sbc c                                         ; $5481: $99
    push bc                                       ; $5482: $c5
    ret                                           ; $5483: $c9


    ld d, l                                       ; $5484: $55
    adc [hl]                                      ; $5485: $8e
    ret z                                         ; $5486: $c8

    ld e, b                                       ; $5487: $58
    db $ec                                        ; $5488: $ec
    rla                                           ; $5489: $17
    ld e, h                                       ; $548a: $5c
    db $fd                                        ; $548b: $fd
    ld d, h                                       ; $548c: $54
    sbc c                                         ; $548d: $99
    or [hl]                                       ; $548e: $b6
    inc bc                                        ; $548f: $03
    scf                                           ; $5490: $37
    ld l, b                                       ; $5491: $68
    pop bc                                        ; $5492: $c1
    dec c                                         ; $5493: $0d
    inc h                                         ; $5494: $24
    or $fc                                        ; $5495: $f6 $fc
    add $67                                       ; $5497: $c6 $67
    rst $20                                       ; $5499: $e7
    dec c                                         ; $549a: $0d
    rst $00                                       ; $549b: $c7
    db $d3                                        ; $549c: $d3
    ld d, $aa                                     ; $549d: $16 $aa
    or h                                          ; $549f: $b4
    ld c, [hl]                                    ; $54a0: $4e
    push hl                                       ; $54a1: $e5
    adc b                                         ; $54a2: $88

Call_06f_54a3:
    adc h                                         ; $54a3: $8c
    push af                                       ; $54a4: $f5
    db $ec                                        ; $54a5: $ec
    ld d, l                                       ; $54a6: $55
    sbc b                                         ; $54a7: $98
    db $fd                                        ; $54a8: $fd
    call nc, Call_000_13eb                        ; $54a9: $d4 $eb $13
    inc hl                                        ; $54ac: $23
    db $ed                                        ; $54ad: $ed
    adc l                                         ; $54ae: $8d
    or $a3                                        ; $54af: $f6 $a3
    rst $18                                       ; $54b1: $df
    ld de, $5214                                  ; $54b2: $11 $14 $52
    inc a                                         ; $54b5: $3c
    dec c                                         ; $54b6: $0d
    inc h                                         ; $54b7: $24
    ld [hl], $ff                                  ; $54b8: $36 $ff
    ld c, [hl]                                    ; $54ba: $4e
    jp $b4f1                                      ; $54bb: $c3 $f1 $b4


    add l                                         ; $54be: $85
    db $ed                                        ; $54bf: $ed
    nop                                           ; $54c0: $00
    scf                                           ; $54c1: $37
    ld b, a                                       ; $54c2: $47
    sbc [hl]                                      ; $54c3: $9e
    dec [hl]                                      ; $54c4: $35
    rst $38                                       ; $54c5: $ff
    ld c, [hl]                                    ; $54c6: $4e
    push hl                                       ; $54c7: $e5
    ld h, h                                       ; $54c8: $64
    push hl                                       ; $54c9: $e5
    add hl, hl                                    ; $54ca: $29
    or c                                          ; $54cb: $b1
    call z, Call_06f_60d1                         ; $54cc: $cc $d1 $60
    add d                                         ; $54cf: $82
    ld a, [hl-]                                   ; $54d0: $3a
    ld l, b                                       ; $54d1: $68
    ld b, e                                       ; $54d2: $43
    xor $53                                       ; $54d3: $ee $53
    rst $00                                       ; $54d5: $c7
    inc a                                         ; $54d6: $3c
    jp c, Jump_000_3bfc                           ; $54d7: $da $fc $3b

    dec c                                         ; $54da: $0d
    adc l                                         ; $54db: $8d
    ld [hl], d                                    ; $54dc: $72
    add hl, hl                                    ; $54dd: $29
    xor d                                         ; $54de: $aa
    ld l, h                                       ; $54df: $6c
    ld l, b                                       ; $54e0: $68
    inc e                                         ; $54e1: $1c
    sbc c                                         ; $54e2: $99
    ld b, d                                       ; $54e3: $42
    ld e, b                                       ; $54e4: $58
    jp hl                                         ; $54e5: $e9


    ld a, [hl+]                                   ; $54e6: $2a
    daa                                           ; $54e7: $27
    dec hl                                        ; $54e8: $2b
    ld c, a                                       ; $54e9: $4f
    ld l, c                                       ; $54ea: $69
    ld e, c                                       ; $54eb: $59
    dec d                                         ; $54ec: $15
    sra [hl]                                      ; $54ed: $cb $2e
    dec e                                         ; $54ef: $1d
    rst $10                                       ; $54f0: $d7
    and b                                         ; $54f1: $a0
    dec c                                         ; $54f2: $0d
    inc h                                         ; $54f3: $24
    cp d                                          ; $54f4: $ba
    ld a, [$0b65]                                 ; $54f5: $fa $65 $0b
    db $dd                                        ; $54f8: $dd
    or [hl]                                       ; $54f9: $b6
    xor l                                         ; $54fa: $ad
    call nc, $8688                                ; $54fb: $d4 $88 $86
    ld h, e                                       ; $54fe: $63
    ld de, $c6a5                                  ; $54ff: $11 $a5 $c6
    ldh [rDMA], a                                 ; $5502: $e0 $46
    ld b, e                                       ; $5504: $43
    sub [hl]                                      ; $5505: $96
    ldh a, [$d8]                                  ; $5506: $f0 $d8
    ld c, $1f                                     ; $5508: $0e $1f
    and a                                         ; $550a: $a7
    ld l, b                                       ; $550b: $68
    ld d, e                                       ; $550c: $53
    add hl, sp                                    ; $550d: $39
    ld [hl+], a                                   ; $550e: $22
    ld h, e                                       ; $550f: $63
    daa                                           ; $5510: $27
    ld a, e                                       ; $5511: $7b
    or $3f                                        ; $5512: $f6 $3f
    ld a, [c]                                     ; $5514: $f2
    xor h                                         ; $5515: $ac
    ld sp, hl                                     ; $5516: $f9
    ld [hl], a                                    ; $5517: $77
    ld a, [de]                                    ; $5518: $1a
    adc [hl]                                      ; $5519: $8e
    ld h, a                                       ; $551a: $67
    sbc c                                         ; $551b: $99
    and e                                         ; $551c: $a3
    pop bc                                        ; $551d: $c1
    or [hl]                                       ; $551e: $b6
    inc bc                                        ; $551f: $03
    rst $20                                       ; $5520: $e7
    ld a, [de]                                    ; $5521: $1a
    pop de                                        ; $5522: $d1
    ld [hl], b                                    ; $5523: $70
    inc l                                         ; $5524: $2c
    and d                                         ; $5525: $a2
    call nc, Call_06f_5c18                        ; $5526: $d4 $18 $5c
    ld hl, $a35d                                  ; $5529: $21 $5d $a3
    ld hl, $784b                                  ; $552c: $21 $4b $78
    ld l, h                                       ; $552f: $6c
    rlca                                          ; $5530: $07
    rst $20                                       ; $5531: $e7
    ld a, [hl+]                                   ; $5532: $2a
    ld h, a                                       ; $5533: $67
    rla                                           ; $5534: $17
    and e                                         ; $5535: $a3
    and e                                         ; $5536: $a3
    ld e, l                                       ; $5537: $5d
    ld sp, hl                                     ; $5538: $f9
    ld h, h                                       ; $5539: $64

Jump_06f_553a:
    db $f4                                        ; $553a: $f4
    adc e                                         ; $553b: $8b
    add hl, sp                                    ; $553c: $39
    ld d, d                                       ; $553d: $52
    sla d                                         ; $553e: $cb $22
    and h                                         ; $5540: $a4
    ld b, l                                       ; $5541: $45
    or $33                                        ; $5542: $f6 $33
    jp z, $d51d                                   ; $5544: $ca $1d $d5

    ld [$0d8b], sp                                ; $5547: $08 $8b $0d
    ld h, c                                       ; $554a: $61
    xor b                                         ; $554b: $a8
    ld e, e                                       ; $554c: $5b
    ld a, [de]                                    ; $554d: $1a
    sub e                                         ; $554e: $93
    dec b                                         ; $554f: $05
    ccf                                           ; $5550: $3f
    or c                                          ; $5551: $b1
    adc a                                         ; $5552: $8f
    ld l, [hl]                                    ; $5553: $6e
    rlca                                          ; $5554: $07
    dec a                                         ; $5555: $3d
    nop                                           ; $5556: $00
    dec a                                         ; $5557: $3d
    nop                                           ; $5558: $00
    rra                                           ; $5559: $1f
    pop bc                                        ; $555a: $c1
    and e                                         ; $555b: $a3
    sub b                                         ; $555c: $90
    sub e                                         ; $555d: $93
    inc hl                                        ; $555e: $23
    dec h                                         ; $555f: $25
    db $d3                                        ; $5560: $d3
    sub $f3                                       ; $5561: $d6 $f3
    cp $47                                        ; $5563: $fe $47
    sbc [hl]                                      ; $5565: $9e
    dec [hl]                                      ; $5566: $35
    and h                                         ; $5567: $a4
    ld a, c                                       ; $5568: $79
    and [hl]                                      ; $5569: $a6
    ld a, [hl+]                                   ; $556a: $2a
    sub e                                         ; $556b: $93
    halt                                          ; $556c: $76
    push hl                                       ; $556d: $e5
    sub e                                         ; $556e: $93
    pop de                                        ; $556f: $d1
    cpl                                           ; $5570: $2f
    and $48                                       ; $5571: $e6 $48
    db $dd                                        ; $5573: $dd
    ld c, $1f                                     ; $5574: $0e $1f
    ld a, [c]                                     ; $5576: $f2
    add h                                         ; $5577: $84
    db $fd                                        ; $5578: $fd
    ld d, d                                       ; $5579: $52
    ld l, a                                       ; $557a: $6f
    adc [hl]                                      ; $557b: $8e
    inc a                                         ; $557c: $3c
    xor e                                         ; $557d: $ab
    or h                                          ; $557e: $b4
    dec [hl]                                      ; $557f: $35
    jp hl                                         ; $5580: $e9


    sub l                                         ; $5581: $95
    inc bc                                        ; $5582: $03
    rra                                           ; $5583: $1f
    call $fa7f                                    ; $5584: $cd $7f $fa
    cp $9c                                        ; $5587: $fe $9c
    and $00                                       ; $5589: $e6 $00
    ld d, a                                       ; $558b: $57

jr_06f_558c:
    ld h, b                                       ; $558c: $60
    add $13                                       ; $558d: $c6 $13
    xor h                                         ; $558f: $ac

Call_06f_5590:
    rst $28                                       ; $5590: $ef
    rst $08                                       ; $5591: $cf
    ld l, c                                       ; $5592: $69
    ld c, $37                                     ; $5593: $0e $37
    cp b                                          ; $5595: $b8
    ld d, e                                       ; $5596: $53
    xor [hl]                                      ; $5597: $ae
    ret                                           ; $5598: $c9


    or b                                          ; $5599: $b0
    cp [hl]                                       ; $559a: $be
    rst $20                                       ; $559b: $e7
    rst $10                                       ; $559c: $d7
    jr c, jr_06f_55bb                             ; $559d: $38 $1c

    rst $28                                       ; $559f: $ef
    rst $08                                       ; $55a0: $cf
    ld l, c                                       ; $55a1: $69
    or h                                          ; $55a2: $b4
    ld l, a                                       ; $55a3: $6f
    db $dd                                        ; $55a4: $dd
    sub a                                         ; $55a5: $97
    sub e                                         ; $55a6: $93
    ld e, $37                                     ; $55a7: $1e $37
    ld b, a                                       ; $55a9: $47
    sbc [hl]                                      ; $55aa: $9e
    dec [hl]                                      ; $55ab: $35
    rst $38                                       ; $55ac: $ff
    ld c, [hl]                                    ; $55ad: $4e
    xor c                                         ; $55ae: $a9
    ld sp, $12b8                                  ; $55af: $31 $b8 $12
    ld e, c                                       ; $55b2: $59
    pop hl                                        ; $55b3: $e1
    and a                                         ; $55b4: $a7
    ld e, $bd                                     ; $55b5: $1e $bd
    ld c, d                                       ; $55b7: $4a
    ld [hl], e                                    ; $55b8: $73
    ld l, e                                       ; $55b9: $6b
    ld [hl-], a                                   ; $55ba: $32

jr_06f_55bb:
    rst $18                                       ; $55bb: $df
    add sp, -$07                                  ; $55bc: $e8 $f9
    adc [hl]                                      ; $55be: $8e
    ld b, d                                       ; $55bf: $42
    adc d                                         ; $55c0: $8a
    pop de                                        ; $55c1: $d1
    ld b, b                                       ; $55c2: $40
    ld h, d                                       ; $55c3: $62
    dec d                                         ; $55c4: $15
    ld b, d                                       ; $55c5: $42
    ld [hl], $26                                  ; $55c6: $36 $26
    ccf                                           ; $55c8: $3f
    db $db                                        ; $55c9: $db
    ld bc, $fd1f                                  ; $55ca: $01 $1f $fd
    ld c, [hl]                                    ; $55cd: $4e
    pop hl                                        ; $55ce: $e1
    db $dd                                        ; $55cf: $dd
    ld [hl-], a                                   ; $55d0: $32
    inc [hl]                                      ; $55d1: $34
    sub b                                         ; $55d2: $90
    ret c                                         ; $55d3: $d8

    cp h                                          ; $55d4: $bc
    ld a, [c]                                     ; $55d5: $f2
    add hl, hl                                    ; $55d6: $29
    ld e, l                                       ; $55d7: $5d
    ld [hl], b                                    ; $55d8: $70
    push de                                       ; $55d9: $d5
    inc d                                         ; $55da: $14
    adc [hl]                                      ; $55db: $8e
    ld b, l                                       ; $55dc: $45
    sub [hl]                                      ; $55dd: $96
    dec sp                                        ; $55de: $3b
    or [hl]                                       ; $55df: $b6
    inc bc                                        ; $55e0: $03
    ld d, a                                       ; $55e1: $57
    add $4d                                       ; $55e2: $c6 $4d
    or a                                          ; $55e4: $b7
    ld l, l                                       ; $55e5: $6d
    xor e                                         ; $55e6: $ab
    inc e                                         ; $55e7: $1c
    scf                                           ; $55e8: $37
    push hl                                       ; $55e9: $e5
    ld c, [hl]                                    ; $55ea: $4e
    ld l, l                                       ; $55eb: $6d
    jr c, jr_06f_558c                             ; $55ec: $38 $9e

    xor [hl]                                      ; $55ee: $ae
    ld [hl+], a                                   ; $55ef: $22
    db $ec                                        ; $55f0: $ec
    or b                                          ; $55f1: $b0
    ld b, d                                       ; $55f2: $42
    ld [hl], l                                    ; $55f3: $75
    cp c                                          ; $55f4: $b9
    ld a, d                                       ; $55f5: $7a
    sub $2d                                       ; $55f6: $d6 $2d
    rst $10                                       ; $55f8: $d7
    ld l, l                                       ; $55f9: $6d
    db $db                                        ; $55fa: $db
    ld c, $97                                     ; $55fb: $0e $97
    and l                                         ; $55fd: $a5
    ld a, b                                       ; $55fe: $78
    ld a, [de]                                    ; $55ff: $1a
    ld c, b                                       ; $5600: $48
    inc l                                         ; $5601: $2c
    ld [hl], a                                    ; $5602: $77
    inc [hl]                                      ; $5603: $34
    adc a                                         ; $5604: $8f
    halt                                          ; $5605: $76
    jp nc, $a57f                                  ; $5606: $d2 $7f $a5

    ld l, [hl]                                    ; $5609: $6e
    db $db                                        ; $560a: $db
    halt                                          ; $560b: $76
    nop                                           ; $560c: $00
    scf                                           ; $560d: $37
    ld b, a                                       ; $560e: $47
    sbc [hl]                                      ; $560f: $9e
    ld l, c                                       ; $5610: $69
    rst $38                                       ; $5611: $ff
    set 4, b                                      ; $5612: $cb $e0
    ld a, d                                       ; $5614: $7a
    sub l                                         ; $5615: $95
    and $d6                                       ; $5616: $e6 $d6
    ld h, h                                       ; $5618: $64
    or $5d                                        ; $5619: $f6 $5d
    ld b, e                                       ; $561b: $43
    ld a, $d1                                     ; $561c: $3e $d1
    sbc $38                                       ; $561e: $de $38
    nop                                           ; $5620: $00
    rst $20                                       ; $5621: $e7
    xor c                                         ; $5622: $a9
    sub b                                         ; $5623: $90
    db $10                                        ; $5624: $10
    ld [hl], d                                    ; $5625: $72
    push de                                       ; $5626: $d5
    or e                                          ; $5627: $b3
    rst $38                                       ; $5628: $ff
    or e                                          ; $5629: $b3
    daa                                           ; $562a: $27
    halt                                          ; $562b: $76
    ld [$a0ea], sp                                ; $562c: $08 $ea $a0
    call Call_06f_53bf                            ; $562f: $cd $bf $53
    push hl                                       ; $5632: $e5
    ld [$cf64], a                                 ; $5633: $ea $64 $cf
    ld [hl], d                                    ; $5636: $72
    ld b, a                                       ; $5637: $47
    ld b, l                                       ; $5638: $45
    or e                                          ; $5639: $b3
    or [hl]                                       ; $563a: $b6
    inc bc                                        ; $563b: $03
    ld l, a                                       ; $563c: $6f
    pop de                                        ; $563d: $d1
    add hl, bc                                    ; $563e: $09
    ld a, [de]                                    ; $563f: $1a
    jp c, Jump_06f_64c8                           ; $5640: $da $c8 $64

    ld [hl], h                                    ; $5643: $74
    dec c                                         ; $5644: $0d
    rst $00                                       ; $5645: $c7
    jp z, Jump_06f_5b1d                           ; $5646: $ca $1d $5b

    ccf                                           ; $5649: $3f
    dec de                                        ; $564a: $1b
    ccf                                           ; $564b: $3f
    ld e, d                                       ; $564c: $5a
    rst $08                                       ; $564d: $cf
    ccf                                           ; $564e: $3f
    ld l, l                                       ; $564f: $6d
    pop bc                                        ; $5650: $c1
    sub l                                         ; $5651: $95
    ld a, [de]                                    ; $5652: $1a
    ld h, c                                       ; $5653: $61
    ld d, l                                       ; $5654: $55
    sub $98                                       ; $5655: $d6 $98

jr_06f_5657:
    ld a, [c]                                     ; $5657: $f2
    jp z, Jump_000_1a7e                           ; $5658: $ca $7e $1a

    jp nz, Jump_06f_5450                          ; $565b: $c2 $50 $54

    ld b, h                                       ; $565e: $44
    adc l                                         ; $565f: $8d
    xor b                                         ; $5660: $a8
    sbc a                                         ; $5661: $9f
    cp [hl]                                       ; $5662: $be

jr_06f_5663:
    cp l                                          ; $5663: $bd
    ld d, b                                       ; $5664: $50
    rrca                                          ; $5665: $0f
    db $ed                                        ; $5666: $ed
    ld e, e                                       ; $5667: $5b
    sub [hl]                                      ; $5668: $96
    ld l, [hl]                                    ; $5669: $6e
    ld b, c                                       ; $566a: $41
    or a                                          ; $566b: $b7
    inc bc                                        ; $566c: $03
    sbc a                                         ; $566d: $9f
    ld sp, $6447                                  ; $566e: $31 $47 $64
    ccf                                           ; $5671: $3f
    ld d, l                                       ; $5672: $55
    inc l                                         ; $5673: $2c
    xor e                                         ; $5674: $ab
    ld h, a                                       ; $5675: $67
    ld b, l                                       ; $5676: $45
    dec hl                                        ; $5677: $2b
    xor a                                         ; $5678: $af
    inc l                                         ; $5679: $2c
    sbc [hl]                                      ; $567a: $9e
    scf                                           ; $567b: $37
    ld a, [$efd1]                                 ; $567c: $fa $d1 $ef
    sub h                                         ; $567f: $94
    add hl, sp                                    ; $5680: $39
    sub b                                         ; $5681: $90
    sub b                                         ; $5682: $90
    db $e3                                        ; $5683: $e3
    sub h                                         ; $5684: $94
    xor c                                         ; $5685: $a9
    call nc, $feb8                                ; $5686: $d4 $b8 $fe
    or h                                          ; $5689: $b4
    ld [hl+], a                                   ; $568a: $22
    sub b                                         ; $568b: $90
    sub $d6                                       ; $568c: $d6 $d6
    ld [hl], a                                    ; $568e: $77
    ld d, [hl]                                    ; $568f: $56
    jr nz, jr_06f_5663                            ; $5690: $20 $d1

    dec d                                         ; $5692: $15
    add c                                         ; $5693: $81
    or h                                          ; $5694: $b4
    ld a, [de]                                    ; $5695: $1a
    jp nz, $a9d0                                  ; $5696: $c2 $d0 $a9

    db $10                                        ; $5699: $10
    add hl, sp                                    ; $569a: $39
    sub b                                         ; $569b: $90
    jr jr_06f_5657                                ; $569c: $18 $b9

    dec e                                         ; $569e: $1d
    rst $20                                       ; $569f: $e7
    xor c                                         ; $56a0: $a9
    call nc, $a938                                ; $56a1: $d4 $38 $a9
    and a                                         ; $56a4: $a7
    inc b                                         ; $56a5: $04
    di                                            ; $56a6: $f3
    ret z                                         ; $56a7: $c8

    ld a, [hl]                                    ; $56a8: $7e
    ld c, d                                       ; $56a9: $4a
    adc l                                         ; $56aa: $8d
    ld l, b                                       ; $56ab: $68
    jr c, jr_06f_56c4                             ; $56ac: $38 $16

    ld d, c                                       ; $56ae: $51
    call nz, $0d0b                                ; $56af: $c4 $0b $0d
    inc h                                         ; $56b2: $24
    halt                                          ; $56b3: $76
    ld a, [hl+]                                   ; $56b4: $2a
    ld b, h                                       ; $56b5: $44
    ld c, $24                                     ; $56b6: $0e $24
    ld b, [hl]                                    ; $56b8: $46
    ld d, [hl]                                    ; $56b9: $56
    adc [hl]                                      ; $56ba: $8e
    and e                                         ; $56bb: $a3
    db $e4                                        ; $56bc: $e4
    sub $8f                                       ; $56bd: $d6 $8f
    ld a, [hl]                                    ; $56bf: $7e
    and a                                         ; $56c0: $a7
    pop hl                                        ; $56c1: $e1
    ld a, b                                       ; $56c2: $78
    cp d                                          ; $56c3: $ba

jr_06f_56c4:
    pop de                                        ; $56c4: $d1
    ld a, d                                       ; $56c5: $7a
    xor [hl]                                      ; $56c6: $ae
    ld e, e                                       ; $56c7: $5b
    or b                                          ; $56c8: $b0
    ld a, [hl-]                                   ; $56c9: $3a
    inc l                                         ; $56ca: $2c
    ld l, l                                       ; $56cb: $6d
    ld h, [hl]                                    ; $56cc: $66
    ld d, $27                                     ; $56cd: $16 $27
    ld d, a                                       ; $56cf: $57
    rst $08                                       ; $56d0: $cf
    cp $47                                        ; $56d1: $fe $47
    sbc [hl]                                      ; $56d3: $9e
    ld l, c                                       ; $56d4: $69
    sub c                                         ; $56d5: $91
    dec a                                         ; $56d6: $3d
    or d                                          ; $56d7: $b2
    sbc a                                         ; $56d8: $9f
    add [hl]                                      ; $56d9: $86
    ld h, e                                       ; $56da: $63
    push bc                                       ; $56db: $c5
    db $dd                                        ; $56dc: $dd
    db $db                                        ; $56dd: $db
    ld bc, $fd1f                                  ; $56de: $01 $1f $fd
    ld c, [hl]                                    ; $56e1: $4e
    push bc                                       ; $56e2: $c5
    pop bc                                        ; $56e3: $c1
    call $68f0                                    ; $56e4: $cd $f0 $68
    ld [$ff43], sp                                ; $56e7: $08 $43 $ff
    or h                                          ; $56ea: $b4
    xor $c1                                       ; $56eb: $ee $c1
    and l                                         ; $56ed: $a5
    xor e                                         ; $56ee: $ab
    ld e, h                                       ; $56ef: $5c
    ld c, $82                                     ; $56f0: $0e $82
    ld e, [hl]                                    ; $56f2: $5e
    add l                                         ; $56f3: $85
    reti                                          ; $56f4: $d9


    ld c, a                                       ; $56f5: $4f
    ld e, e                                       ; $56f6: $5b
    ccf                                           ; $56f7: $3f
    dec de                                        ; $56f8: $1b
    adc a                                         ; $56f9: $8f
    and d                                         ; $56fa: $a2
    ld a, [hl]                                    ; $56fb: $7e
    db $fd                                        ; $56fc: $fd
    ld l, c                                       ; $56fd: $69
    ld a, [$a53b]                                 ; $56fe: $fa $3b $a5

Jump_06f_5701:
jr_06f_5701:
    add $e0                                       ; $5701: $c6 $e0
    ld [hl+], a                                   ; $5703: $22
    sub b                                         ; $5704: $90

Jump_06f_5705:
    ld d, [hl]                                    ; $5705: $56
    jp hl                                         ; $5706: $e9


    add h                                         ; $5707: $84

Call_06f_5708:
    ld e, b                                       ; $5708: $58
    or a                                          ; $5709: $b7
    and $d2                                       ; $570a: $e6 $d2
    ld bc, $4737                                  ; $570c: $01 $37 $47
    sbc [hl]                                      ; $570f: $9e
    ld l, c                                       ; $5710: $69
    di                                            ; $5711: $f3
    rst $28                                       ; $5712: $ef
    db $f4                                        ; $5713: $f4
    rst $38                                       ; $5714: $ff
    dec sp                                        ; $5715: $3b
    dec d                                         ; $5716: $15
    ld [c], a                                     ; $5717: $e2
    sub h                                         ; $5718: $94
    ld a, [c]                                     ; $5719: $f2
    ld b, l                                       ; $571a: $45
    ld e, b                                       ; $571b: $58
    db $dd                                        ; $571c: $dd
    jp z, Jump_06f_6862                           ; $571d: $ca $62 $68

    dec e                                         ; $5720: $1d
    call nc, Call_000_198d                        ; $5721: $d4 $8d $19
    or h                                          ; $5724: $b4
    ei                                            ; $5725: $fb
    ld [hl], d                                    ; $5726: $72
    pop hl                                        ; $5727: $e1
    jp z, $e862                                   ; $5728: $ca $62 $e8

    sub $77                                       ; $572b: $d6 $77
    ld d, [hl]                                    ; $572d: $56
    jr nz, jr_06f_5701                            ; $572e: $20 $d1

    dec d                                         ; $5730: $15
    add c                                         ; $5731: $81
    or h                                          ; $5732: $b4
    jp z, Jump_06f_708a                           ; $5733: $ca $8a $70

    ld de, $42ae                                  ; $5736: $11 $ae $42
    sbc h                                         ; $5739: $9c
    ld d, d                                       ; $573a: $52
    cp [hl]                                       ; $573b: $be
    adc b                                         ; $573c: $88
    ld h, [hl]                                    ; $573d: $66
    ld d, h                                       ; $573e: $54
    ld b, h                                       ; $573f: $44
    adc l                                         ; $5740: $8d
    xor b                                         ; $5741: $a8
    ld h, a                                       ; $5742: $67
    rst $38                                       ; $5743: $ff
    inc hl                                        ; $5744: $23
    rst $08                                       ; $5745: $cf
    or h                                          ; $5746: $b4
    db $db                                        ; $5747: $db
    or [hl]                                       ; $5748: $b6
    dec [hl]                                      ; $5749: $35
    sub b                                         ; $574a: $90
    ld e, b                                       ; $574b: $58
    and [hl]                                      ; $574c: $a6
    cp $27                                        ; $574d: $fe $27
    dec [hl]                                      ; $574f: $35
    jp nc, Jump_06f_481a                          ; $5750: $d2 $1a $48

    db $ec                                        ; $5753: $ec
    cp [hl]                                       ; $5754: $be
    ld e, h                                       ; $5755: $5c
    ld [$67ab], sp                                ; $5756: $08 $ab $67
    jr c, jr_06f_57a6                             ; $5759: $38 $4b

    or a                                          ; $575b: $b7
    inc bc                                        ; $575c: $03
    scf                                           ; $575d: $37
    ld b, a                                       ; $575e: $47
    sbc [hl]                                      ; $575f: $9e
    ld l, c                                       ; $5760: $69
    di                                            ; $5761: $f3
    rst $28                                       ; $5762: $ef
    db $f4                                        ; $5763: $f4
    rst $38                                       ; $5764: $ff
    dec sp                                        ; $5765: $3b
    ld b, l                                       ; $5766: $45
    rst $30                                       ; $5767: $f7
    ld [hl], h                                    ; $5768: $74
    add d                                         ; $5769: $82
    dec d                                         ; $576a: $15
    ei                                            ; $576b: $fb
    add hl, hl                                    ; $576c: $29
    cp c                                          ; $576d: $b9
    xor l                                         ; $576e: $ad

jr_06f_576f:
    sub a                                         ; $576f: $97
    db $eb                                        ; $5770: $eb
    add hl, hl                                    ; $5771: $29
    rst $00                                       ; $5772: $c7
    ld [hl], b                                    ; $5773: $70
    pop af                                        ; $5774: $f1
    ld [hl], a                                    ; $5775: $77
    adc d                                         ; $5776: $8a
    sub l                                         ; $5777: $95
    dec a                                         ; $5778: $3d
    sbc d                                         ; $5779: $9a
    ld a, a                                       ; $577a: $7f
    and a                                         ; $577b: $a7
    call nc, $dc18                                ; $577c: $d4 $18 $dc
    ret nc                                        ; $577f: $d0

    ld h, $47                                     ; $5780: $26 $47
    ld l, h                                       ; $5782: $6c
    rlca                                          ; $5783: $07
    rra                                           ; $5784: $1f
    db $fd                                        ; $5785: $fd
    ld c, [hl]                                    ; $5786: $4e
    jp $9d51                                      ; $5787: $c3 $51 $9d


    ld a, d                                       ; $578a: $7a
    xor [hl]                                      ; $578b: $ae
    ld e, e                                       ; $578c: $5b
    or b                                          ; $578d: $b0
    cp $47                                        ; $578e: $fe $47
    sbc [hl]                                      ; $5790: $9e
    dec d                                         ; $5791: $15
    reti                                          ; $5792: $d9


    inc hl                                        ; $5793: $23
    ei                                            ; $5794: $fb
    xor c                                         ; $5795: $a9
    sbc a                                         ; $5796: $9f
    xor $f0                                       ; $5797: $ee $f0
    ld d, e                                       ; $5799: $53
    rst $08                                       ; $579a: $cf
    adc d                                         ; $579b: $8a
    add $50                                       ; $579c: $c6 $50
    sub h                                         ; $579e: $94
    xor d                                         ; $579f: $aa
    xor b                                         ; $57a0: $a8
    ld a, b                                       ; $57a1: $78
    inc c                                         ; $57a2: $0c
    add d                                         ; $57a3: $82
    ld e, [hl]                                    ; $57a4: $5e
    add l                                         ; $57a5: $85

jr_06f_57a6:
    reti                                          ; $57a6: $d9


    ld c, a                                       ; $57a7: $4f
    db $db                                        ; $57a8: $db
    ld bc, $4737                                  ; $57a9: $01 $37 $47
    sbc [hl]                                      ; $57ac: $9e
    push af                                       ; $57ad: $f5
    cp a                                          ; $57ae: $bf
    ld d, d                                       ; $57af: $52
    xor a                                         ; $57b0: $af
    jp nc, $9adc                                  ; $57b1: $d2 $dc $9a

    call z, Call_000_0e37                         ; $57b4: $cc $37 $0e
    rst $20                                       ; $57b7: $e7
    xor c                                         ; $57b8: $a9
    sub b                                         ; $57b9: $90
    ld [c], a                                     ; $57ba: $e2
    ld l, c                                       ; $57bb: $69
    jr nz, jr_06f_576f                            ; $57bc: $20 $b1

    add sp, $7f                                   ; $57be: $e8 $7f
    dec [hl]                                      ; $57c0: $35
    and h                                         ; $57c1: $a4
    push bc                                       ; $57c2: $c5
    xor c                                         ; $57c3: $a9
    sbc a                                         ; $57c4: $9f
    jp nz, $b05c                                  ; $57c5: $c2 $5c $b0

    xor l                                         ; $57c8: $ad
    xor c                                         ; $57c9: $a9
    add a                                         ; $57ca: $87
    or $0f                                        ; $57cb: $f6 $0f
    push de                                       ; $57cd: $d5
    ld c, c                                       ; $57ce: $49
    ld b, $dd                                     ; $57cf: $06 $dd
    ld c, $1f                                     ; $57d1: $0e $1f
    scf                                           ; $57d3: $37
    jp $edd6                                      ; $57d4: $c3 $d6 $ed


    ld a, d                                       ; $57d7: $7a
    xor $68                                       ; $57d8: $ee $68
    ld l, b                                       ; $57da: $68
    di                                            ; $57db: $f3
    rst $00                                       ; $57dc: $c7
    sbc a                                         ; $57dd: $9f
    cp e                                          ; $57de: $bb
    ld h, e                                       ; $57df: $63
    adc [hl]                                      ; $57e0: $8e
    inc l                                         ; $57e1: $2c
    dec [hl]                                      ; $57e2: $35
    ld b, $97                                     ; $57e3: $06 $97
    add hl, sp                                    ; $57e5: $39
    ld a, [de]                                    ; $57e6: $1a
    dec bc                                        ; $57e7: $0b
    ld l, l                                       ; $57e8: $6d
    jr jr_06f_5867                                ; $57e9: $18 $7c

    ld e, d                                       ; $57eb: $5a
    add hl, de                                    ; $57ec: $19
    ld e, d                                       ; $57ed: $5a
    rst $08                                       ; $57ee: $cf
    ld h, $d7                                     ; $57ef: $26 $d7
    ld a, l                                       ; $57f1: $7d
    db $fd                                        ; $57f2: $fd
    ld l, l                                       ; $57f3: $6d
    inc b                                         ; $57f4: $04
    ld [hl], l                                    ; $57f5: $75
    ret nc                                        ; $57f6: $d0

    ld [hl-], a                                   ; $57f7: $32
    dec [hl]                                      ; $57f8: $35
    rst $38                                       ; $57f9: $ff
    ld c, [hl]                                    ; $57fa: $4e
    sub l                                         ; $57fb: $95
    xor e                                         ; $57fc: $ab
    sub e                                         ; $57fd: $93
    dec a                                         ; $57fe: $3d
    dec sp                                        ; $57ff: $3b
    dec [hl]                                      ; $5800: $35
    ld l, d                                       ; $5801: $6a
    sbc h                                         ; $5802: $9c
    ld a, [$1ca9]                                 ; $5803: $fa $a9 $1c
    dec bc                                        ; $5806: $0b
    and a                                         ; $5807: $a7
    sbc [hl]                                      ; $5808: $9e
    dec sp                                        ; $5809: $3b
    ld c, d                                       ; $580a: $4a
    adc l                                         ; $580b: $8d
    pop bc                                        ; $580c: $c1
    db $db                                        ; $580d: $db
    ld bc, $619f                                  ; $580e: $01 $9f $61
    rst $38                                       ; $5811: $ff
    di                                            ; $5812: $f3
    halt                                          ; $5813: $76
    cp c                                          ; $5814: $b9

jr_06f_5815:
    and e                                         ; $5815: $a3
    call nc, $efc8                                ; $5816: $d4 $c8 $ef
    ld d, c                                       ; $5819: $51
    add hl, sp                                    ; $581a: $39
    xor [hl]                                      ; $581b: $ae
    ld d, e                                       ; $581c: $53
    ld b, l                                       ; $581d: $45
    jr c, jr_06f_5815                             ; $581e: $38 $f5

    db $d3                                        ; $5820: $d3
    adc a                                         ; $5821: $8f
    ld hl, sp+$5f                                 ; $5822: $f8 $5f
    ei                                            ; $5824: $fb
    adc $6e                                       ; $5825: $ce $6e
    db $db                                        ; $5827: $db
    ld d, [hl]                                    ; $5828: $56
    ld d, $4e                                     ; $5829: $16 $4e
    jr c, jr_06f_5887                             ; $582b: $38 $5a

    ld l, d                                       ; $582d: $6a
    db $e4                                        ; $582e: $e4
    rst $30                                       ; $582f: $f7
    ld [hl], b                                    ; $5830: $70
    dec c                                         ; $5831: $0d
    ld l, c                                       ; $5832: $69
    ld a, [hl]                                    ; $5833: $7e
    ld sp, hl                                     ; $5834: $f9
    pop de                                        ; $5835: $d1
    db $ed                                        ; $5836: $ed
    nop                                           ; $5837: $00
    rst $20                                       ; $5838: $e7
    dec sp                                        ; $5839: $3b
    ld c, d                                       ; $583a: $4a
    adc l                                         ; $583b: $8d
    pop bc                                        ; $583c: $c1
    call Call_000_2153                            ; $583d: $cd $53 $21
    or d                                          ; $5840: $b2
    sbc b                                         ; $5841: $98
    res 4, [hl]                                   ; $5842: $cb $a6
    ld e, $5a                                     ; $5844: $1e $5a
    rst $00                                       ; $5846: $c7
    cp h                                          ; $5847: $bc
    ld [hl-], a                                   ; $5848: $32
    or h                                          ; $5849: $b4
    ld a, c                                       ; $584a: $79
    ld a, [de]                                    ; $584b: $1a
    jp c, Jump_06f_5c72                           ; $584c: $da $72 $5c

    ld [hl], $45                                  ; $584f: $36 $45
    or $30                                        ; $5851: $f6 $30
    ld b, c                                       ; $5853: $41
    and l                                         ; $5854: $a5
    ld a, b                                       ; $5855: $78
    inc c                                         ; $5856: $0c
    reti                                          ; $5857: $d9


    ld c, a                                       ; $5858: $4f
    dec a                                         ; $5859: $3d
    sub l                                         ; $585a: $95
    ld a, [de]                                    ; $585b: $1a
    jp nc, $e1e0                                  ; $585c: $d2 $e0 $e1

    sbc b                                         ; $585f: $98
    inc hl                                        ; $5860: $23
    ld a, e                                       ; $5861: $7b
    ld [hl-], a                                   ; $5862: $32
    ld e, h                                       ; $5863: $5c
    add h                                         ; $5864: $84
    ld d, $fd                                     ; $5865: $16 $fd

jr_06f_5867:
    adc a                                         ; $5867: $8f
    inc a                                         ; $5868: $3c
    cp e                                          ; $5869: $bb
    ld [hl], h                                    ; $586a: $74
    nop                                           ; $586b: $00
    rra                                           ; $586c: $1f
    adc e                                         ; $586d: $8b
    dec b                                         ; $586e: $05
    call Call_06f_73bf                            ; $586f: $cd $bf $73
    xor c                                         ; $5872: $a9
    rst $20                                       ; $5873: $e7
    xor c                                         ; $5874: $a9
    ld sp, hl                                     ; $5875: $f9
    ld [hl], a                                    ; $5876: $77
    ld a, [de]                                    ; $5877: $1a
    ld c, b                                       ; $5878: $48
    or h                                          ; $5879: $b4
    add l                                         ; $587a: $85
    ld b, $12                                     ; $587b: $06 $12
    cp e                                          ; $587d: $bb
    ld d, h                                       ; $587e: $54
    and a                                         ; $587f: $a7
    sub b                                         ; $5880: $90
    sub e                                         ; $5881: $93
    inc hl                                        ; $5882: $23
    dec h                                         ; $5883: $25
    ld d, l                                       ; $5884: $55
    cp c                                          ; $5885: $b9
    dec e                                         ; $5886: $1d

jr_06f_5887:
    scf                                           ; $5887: $37
    pop hl                                        ; $5888: $e1
    ld b, [hl]                                    ; $5889: $46
    dec hl                                        ; $588a: $2b
    daa                                           ; $588b: $27
    rst $38                                       ; $588c: $ff
    ld l, c                                       ; $588d: $69
    ld a, [bc]                                    ; $588e: $0a
    xor e                                         ; $588f: $ab
    inc e                                         ; $5890: $1c
    ld d, a                                       ; $5891: $57
    xor $68                                       ; $5892: $ee $68
    jr nz, jr_06f_58b7                            ; $5894: $20 $21

    ei                                            ; $5896: $fb
    add hl, hl                                    ; $5897: $29
    ld [hl], a                                    ; $5898: $77
    db $f4                                        ; $5899: $f4
    ccf                                           ; $589a: $3f
    ld a, e                                       ; $589b: $7b
    add h                                         ; $589c: $84
    ld l, l                                       ; $589d: $6d
    rlca                                          ; $589e: $07
    sbc a                                         ; $589f: $9f
    adc l                                         ; $58a0: $8d
    rra                                           ; $58a1: $1f
    ld l, l                                       ; $58a2: $6d
    ld [$a743], sp                                ; $58a3: $08 $43 $a7
    rst $28                                       ; $58a6: $ef
    ld a, [de]                                    ; $58a7: $1a
    or d                                          ; $58a8: $b2
    ld h, a                                       ; $58a9: $67
    ld l, a                                       ; $58aa: $6f
    ld h, b                                       ; $58ab: $60
    rst $38                                       ; $58ac: $ff
    sbc l                                         ; $58ad: $9d
    ld c, e                                       ; $58ae: $4b
    db $fd                                        ; $58af: $fd
    inc h                                         ; $58b0: $24
    or c                                          ; $58b1: $b1
    xor b                                         ; $58b2: $a8
    adc b                                         ; $58b3: $88
    ld a, [de]                                    ; $58b4: $1a
    ld d, c                                       ; $58b5: $51
    ccf                                           ; $58b6: $3f

jr_06f_58b7:
    ld a, l                                       ; $58b7: $7d
    ld a, e                                       ; $58b8: $7b
    and c                                         ; $58b9: $a1
    ld e, $da                                     ; $58ba: $1e $da
    or a                                          ; $58bc: $b7
    inc l                                         ; $58bd: $2c
    db $dd                                        ; $58be: $dd
    add d                                         ; $58bf: $82
    ld d, [hl]                                    ; $58c0: $56
    adc [hl]                                      ; $58c1: $8e
    and e                                         ; $58c2: $a3
    db $e4                                        ; $58c3: $e4
    and l                                         ; $58c4: $a5
    inc bc                                        ; $58c5: $03
    sbc a                                         ; $58c6: $9f
    dec a                                         ; $58c7: $3d
    ld de, $889f                                  ; $58c8: $11 $9f $88
    ld b, $3d                                     ; $58cb: $06 $3d
    ld c, l                                       ; $58cd: $4d
    or a                                          ; $58ce: $b7
    ld l, l                                       ; $58cf: $6d
    ld l, e                                       ; $58d0: $6b
    add [hl]                                      ; $58d1: $86
    sub $3d                                       ; $58d2: $d6 $3d
    pop hl                                        ; $58d4: $e1
    sbc [hl]                                      ; $58d5: $9e
    ld [hl], b                                    ; $58d6: $70
    ld d, b                                       ; $58d7: $50
    scf                                           ; $58d8: $37
    ld h, [hl]                                    ; $58d9: $66
    ret nc                                        ; $58da: $d0

    ld l, [hl]                                    ; $58db: $6e
    db $db                                        ; $58dc: $db
    ld d, [hl]                                    ; $58dd: $56
    ld c, b                                       ; $58de: $48
    ld sp, $0357                                  ; $58df: $31 $57 $03
    adc c                                         ; $58e2: $89
    push af                                       ; $58e3: $f5
    db $fc                                        ; $58e4: $fc
    cpl                                           ; $58e5: $2f
    ld [hl], h                                    ; $58e6: $74
    rla                                           ; $58e7: $17
    or e                                          ; $58e8: $b3
    ld a, [hl]                                    ; $58e9: $7e
    db $dd                                        ; $58ea: $dd
    and [hl]                                      ; $58eb: $a6
    ld l, l                                       ; $58ec: $6d
    rlca                                          ; $58ed: $07
    rst $10                                       ; $58ee: $d7
    ld h, $af                                     ; $58ef: $26 $af
    jr c, jr_06f_5939                             ; $58f1: $38 $46

    dec d                                         ; $58f3: $15
    ld [hl], h                                    ; $58f4: $74
    rst $20                                       ; $58f5: $e7
    sbc a                                         ; $58f6: $9f
    xor [hl]                                      ; $58f7: $ae
    and e                                         ; $58f8: $a3
    push bc                                       ; $58f9: $c5
    sbc [hl]                                      ; $58fa: $9e
    ld a, [c]                                     ; $58fb: $f2
    ld l, b                                       ; $58fc: $68
    dec a                                         ; $58fd: $3d
    xor e                                         ; $58fe: $ab
    add hl, bc                                    ; $58ff: $09
    ld e, d                                       ; $5900: $5a
    add hl, bc                                    ; $5901: $09
    add l                                         ; $5902: $85
    sub $b3                                       ; $5903: $d6 $b3
    rst $38                                       ; $5905: $ff
    reti                                          ; $5906: $d9


    inc hl                                        ; $5907: $23
    adc d                                         ; $5908: $8a
    pop de                                        ; $5909: $d1
    ld a, [$b731]                                 ; $590a: $fa $31 $b7
    ld [c], a                                     ; $590d: $e2
    dec a                                         ; $590e: $3d
    or [hl]                                       ; $590f: $b6
    ld b, [hl]                                    ; $5910: $46
    dec b                                         ; $5911: $05
    ld e, l                                       ; $5912: $5d
    adc [hl]                                      ; $5913: $8e
    ld a, [hl]                                    ; $5914: $7e
    ld hl, $31c2                                  ; $5915: $21 $c2 $31
    ld b, a                                       ; $5918: $47
    ld e, [hl]                                    ; $5919: $5e
    ld a, [hl-]                                   ; $591a: $3a
    nop                                           ; $591b: $00
    rst $28                                       ; $591c: $ef
    xor h                                         ; $591d: $ac
    ld b, b                                       ; $591e: $40
    and d                                         ; $591f: $a2
    db $eb                                        ; $5920: $eb
    rst $30                                       ; $5921: $f7
    add hl, hl                                    ; $5922: $29
    rst $00                                       ; $5923: $c7
    ld d, c                                       ; $5924: $51
    ld b, c                                       ; $5925: $41
    or c                                          ; $5926: $b1
    and a                                         ; $5927: $a7
    inc a                                         ; $5928: $3c
    ld e, d                                       ; $5929: $5a
    ccf                                           ; $592a: $3f
    dec c                                         ; $592b: $0d
    ld l, l                                       ; $592c: $6d
    add hl, sp                                    ; $592d: $39
    ld l, $9b                                     ; $592e: $2e $9b
    ld [hl+], a                                   ; $5930: $22
    rst $08                                       ; $5931: $cf
    and l                                         ; $5932: $a5
    sbc $58                                       ; $5933: $de $58
    daa                                           ; $5935: $27
    cp b                                          ; $5936: $b8
    daa                                           ; $5937: $27
    inc e                                         ; $5938: $1c

jr_06f_5939:
    cpl                                           ; $5939: $2f
    dec e                                         ; $593a: $1d
    ld d, a                                       ; $593b: $57
    add $4d                                       ; $593c: $c6 $4d
    cpl                                           ; $593e: $2f
    inc [hl]                                      ; $593f: $34
    sub b                                         ; $5940: $90
    ret c                                         ; $5941: $d8

    db $e4                                        ; $5942: $e4
    ld a, [de]                                    ; $5943: $1a
    dec c                                         ; $5944: $0d
    ld a, d                                       ; $5945: $7a
    sbc d                                         ; $5946: $9a
    add [hl]                                      ; $5947: $86

Call_06f_5948:
    rst $30                                       ; $5948: $f7
    ld a, c                                       ; $5949: $79
    sub [hl]                                      ; $594a: $96
    add hl, sp                                    ; $594b: $39
    ld a, [de]                                    ; $594c: $1a
    db $ec                                        ; $594d: $ec
    adc l                                         ; $594e: $8d
    inc bc                                        ; $594f: $03
    scf                                           ; $5950: $37
    or c                                          ; $5951: $b1
    ld a, [$75a7]                                 ; $5952: $fa $a7 $75
    ld a, d                                       ; $5955: $7a
    ld a, l                                       ; $5956: $7d
    sbc c                                         ; $5957: $99
    pop hl                                        ; $5958: $e1
    ld [hl+], a                                   ; $5959: $22
    ld [$6eb9], a                                 ; $595a: $ea $b9 $6e
    ld c, l                                       ; $595d: $4d
    ld a, [hl+]                                   ; $595e: $2a
    ld [hl], a                                    ; $595f: $77
    sub [hl]                                      ; $5960: $96
    add hl, sp                                    ; $5961: $39
    ld a, [de]                                    ; $5962: $1a
    xor h                                         ; $5963: $ac
    ld hl, $0d0c                                  ; $5964: $21 $0c $0d
    adc l                                         ; $5967: $8d
    daa                                           ; $5968: $27
    ld e, b                                       ; $5969: $58
    sub e                                         ; $596a: $93
    ld b, e                                       ; $596b: $43
    ld b, e                                       ; $596c: $43
    ld e, [hl]                                    ; $596d: $5e
    ld b, h                                       ; $596e: $44
    dec a                                         ; $596f: $3d
    ei                                            ; $5970: $fb
    or $42                                        ; $5971: $f6 $42
    dec a                                         ; $5973: $3d
    or h                                          ; $5974: $b4
    ld l, a                                       ; $5975: $6f
    ld e, c                                       ; $5976: $59
    cp d                                          ; $5977: $ba
    dec b                                         ; $5978: $05
    db $dd                                        ; $5979: $dd
    ld c, $e7                                     ; $597a: $0e $e7
    ld a, [de]                                    ; $597c: $1a
    jp nc, $e4d8                                  ; $597d: $d2 $d8 $e4

    ld a, [de]                                    ; $5980: $1a
    ld c, [hl]                                    ; $5981: $4e
    sub d                                         ; $5982: $92
    db $d3                                        ; $5983: $d3
    ld l, l                                       ; $5984: $6d
    db $db                                        ; $5985: $db
    ld a, d                                       ; $5986: $7a
    sub l                                         ; $5987: $95
    and $d6                                       ; $5988: $e6 $d6
    ld h, h                                       ; $598a: $64
    ld [hl], $ff                                  ; $598b: $36 $ff
    ld c, [hl]                                    ; $598d: $4e
    dec d                                         ; $598e: $15
    ld b, d                                       ; $598f: $42
    ld [hl], $90                                  ; $5990: $36 $90
    ret c                                         ; $5992: $d8

    ld c, b                                       ; $5993: $48
    rst $10                                       ; $5994: $d7
    db $e4                                        ; $5995: $e4
    ld a, [de]                                    ; $5996: $1a
    dec c                                         ; $5997: $0d
    ld a, d                                       ; $5998: $7a
    sbc d                                         ; $5999: $9a
    ld [hl+], a                                   ; $599a: $22
    sub b                                         ; $599b: $90
    sub $a5                                       ; $599c: $d6 $a5
    ld a, [hl]                                    ; $599e: $7e
    ld b, [hl]                                    ; $599f: $46
    scf                                           ; $59a0: $37
    jp c, $6240                                   ; $59a1: $da $40 $62

    pop af                                        ; $59a4: $f1
    ld e, a                                       ; $59a5: $5f
    ld a, [de]                                    ; $59a6: $1a
    db $fc                                        ; $59a7: $fc
    call nz, $4b8e                                ; $59a8: $c4 $8e $4b
    rlca                                          ; $59ab: $07
    rra                                           ; $59ac: $1f
    scf                                           ; $59ad: $37
    sub b                                         ; $59ae: $90
    ret c                                         ; $59af: $d8

    dec de                                        ; $59b0: $1b
    add hl, de                                    ; $59b1: $19
    ld hl, $8d4b                                  ; $59b2: $21 $4b $8d
    pop bc                                        ; $59b5: $c1
    dec d                                         ; $59b6: $15
    pop hl                                        ; $59b7: $e1
    ld [hl], $b3                                  ; $59b8: $36 $b3
    sbc a                                         ; $59ba: $9f
    ld [hl+], a                                   ; $59bb: $22
    sub b                                         ; $59bc: $90
    ld d, [hl]                                    ; $59bd: $56
    jp hl                                         ; $59be: $e9


    ld a, [hl+]                                   ; $59bf: $2a
    sub a                                         ; $59c0: $97
    jp Jump_000_071b                              ; $59c1: $c3 $1b $07


    rst $10                                       ; $59c4: $d7
    adc l                                         ; $59c5: $8d
    inc hl                                        ; $59c6: $23
    ld d, e                                       ; $59c7: $53
    ret z                                         ; $59c8: $c8

    daa                                           ; $59c9: $27
    sub h                                         ; $59ca: $94
    sub l                                         ; $59cb: $95
    db $e3                                        ; $59cc: $e3
    jp z, $f59d                                   ; $59cd: $ca $9d $f5

    inc c                                         ; $59d0: $0c
    ld h, a                                       ; $59d1: $67
    jp hl                                         ; $59d2: $e9


    sub $eb                                       ; $59d3: $d6 $eb
    ld b, [hl]                                    ; $59d5: $46
    cp c                                          ; $59d6: $b9
    inc d                                         ; $59d7: $14
    ld l, [hl]                                    ; $59d8: $6e
    or h                                          ; $59d9: $b4
    call z, Call_06f_7272                         ; $59da: $cc $72 $72
    inc [hl]                                      ; $59dd: $34
    ld e, b                                       ; $59de: $58
    xor a                                         ; $59df: $af
    jp nc, $9adc                                  ; $59e0: $d2 $dc $9a

    call z, $074b                                 ; $59e3: $cc $4b $07
    scf                                           ; $59e6: $37
    ld b, a                                       ; $59e7: $47
    sbc [hl]                                      ; $59e8: $9e
    sub l                                         ; $59e9: $95
    ld a, [de]                                    ; $59ea: $1a
    add e                                         ; $59eb: $83
    xor e                                         ; $59ec: $ab
    call z, $6571                                 ; $59ed: $cc $71 $65
    ccf                                           ; $59f0: $3f
    and l                                         ; $59f1: $a5
    ld a, [hl+]                                   ; $59f2: $2a
    dec hl                                        ; $59f3: $2b
    push bc                                       ; $59f4: $c5
    ld e, h                                       ; $59f5: $5c
    ld [hl], $6f                                  ; $59f6: $36 $6f
    inc e                                         ; $59f8: $1c
    scf                                           ; $59f9: $37
    sub [hl]                                      ; $59fa: $96
    db $eb                                        ; $59fb: $eb
    or [hl]                                       ; $59fc: $b6
    ld l, l                                       ; $59fd: $6d
    dec c                                         ; $59fe: $0d
    ld h, c                                       ; $59ff: $61
    sub h                                         ; $5a00: $94
    ld l, h                                       ; $5a01: $6c
    ld [hl], d                                    ; $5a02: $72
    xor b                                         ; $5a03: $a8
    ld e, e                                       ; $5a04: $5b
    ld a, [de]                                    ; $5a05: $1a
    sub e                                         ; $5a06: $93
    and c                                         ; $5a07: $a1
    sbc [hl]                                      ; $5a08: $9e

Jump_06f_5a09:
    ld [hl], l                                    ; $5a09: $75
    ld e, h                                       ; $5a0a: $5c
    ret nc                                        ; $5a0b: $d0

    cp $b9                                        ; $5a0c: $fe $b9
    adc e                                         ; $5a0e: $8b
    and c                                         ; $5a0f: $a1
    ld h, l                                       ; $5a10: $65
    add l                                         ; $5a11: $85
    ret z                                         ; $5a12: $c8

    ld h, d                                       ; $5a13: $62
    ld l, $9b                                     ; $5a14: $2e $9b
    add [hl]                                      ; $5a16: $86
    rst $30                                       ; $5a17: $f7
    dec bc                                        ; $5a18: $0b
    rst $30                                       ; $5a19: $f7
    dec h                                         ; $5a1a: $25
    ld h, a                                       ; $5a1b: $67
    db $eb                                        ; $5a1c: $eb
    ld h, l                                       ; $5a1d: $65
    add hl, hl                                    ; $5a1e: $29
    sbc [hl]                                      ; $5a1f: $9e
    ld b, $12                                     ; $5a20: $06 $12
    ld c, e                                       ; $5a22: $4b
    adc l                                         ; $5a23: $8d
    ld [hl], b                                    ; $5a24: $70
    and e                                         ; $5a25: $a3
    dec c                                         ; $5a26: $0d
    ld l, c                                       ; $5a27: $69
    ld [hl], c                                    ; $5a28: $71
    ld [$1bd1], a                                 ; $5a29: $ea $d1 $1b
    sub e                                         ; $5a2c: $93
    sub l                                         ; $5a2d: $95
    or [hl]                                       ; $5a2e: $b6
    ld [hl-], a                                   ; $5a2f: $32
    or [hl]                                       ; $5a30: $b6
    inc bc                                        ; $5a31: $03
    sbc a                                         ; $5a32: $9f
    ld c, [hl]                                    ; $5a33: $4e
    cp $a9                                        ; $5a34: $fe $a9
    db $db                                        ; $5a36: $db
    or [hl]                                       ; $5a37: $b6
    ld [hl], l                                    ; $5a38: $75
    halt                                          ; $5a39: $76
    ld sp, $1d2f                                  ; $5a3a: $31 $2f $1d
    rra                                           ; $5a3d: $1f
    ld h, a                                       ; $5a3e: $67
    rst $08                                       ; $5a3f: $cf
    ld [hl], d                                    ; $5a40: $72
    ld h, a                                       ; $5a41: $67
    xor c                                         ; $5a42: $a9
    ld sp, $2bb8                                  ; $5a43: $31 $b8 $2b
    ei                                            ; $5a46: $fb
    ld a, c                                       ; $5a47: $79
    db $e3                                        ; $5a48: $e3
    nop                                           ; $5a49: $00
    sub a                                         ; $5a4a: $97
    ld bc, $a5f1                                  ; $5a4b: $01 $f1 $a5
    ld c, e                                       ; $5a4e: $4b
    sub a                                         ; $5a4f: $97
    ld c, $1f                                     ; $5a50: $0e $1f
    scf                                           ; $5a52: $37
    sub b                                         ; $5a53: $90
    ld e, b                                       ; $5a54: $58
    pop de                                        ; $5a55: $d1
    xor h                                         ; $5a56: $ac
    ld l, $d5                                     ; $5a57: $2e $d5
    ld a, c                                       ; $5a59: $79
    db $e3                                        ; $5a5a: $e3
    nop                                           ; $5a5b: $00
    ld d, a                                       ; $5a5c: $57
    ld l, c                                       ; $5a5d: $69
    ld l, [hl]                                    ; $5a5e: $6e
    ld c, l                                       ; $5a5f: $4d
    and $a5                                       ; $5a60: $e6 $a5
    ld a, [hl]                                    ; $5a62: $7e
    call c, $d068                                 ; $5a63: $dc $68 $d0
    db $d3                                        ; $5a66: $d3
    inc d                                         ; $5a67: $14
    ld h, l                                       ; $5a68: $65
    sub [hl]                                      ; $5a69: $96
    sub e                                         ; $5a6a: $93
    and e                                         ; $5a6b: $a3
    ld c, l                                       ; $5a6c: $4d
    cp d                                          ; $5a6d: $ba
    ld [hl], h                                    ; $5a6e: $74
    nop                                           ; $5a6f: $00
    ld d, a                                       ; $5a70: $57
    ld h, c                                       ; $5a71: $61
    or $93                                        ; $5a72: $f6 $93
    and b                                         ; $5a74: $a0
    rst $38                                       ; $5a75: $ff
    sub c                                         ; $5a76: $91
    ld h, a                                       ; $5a77: $67
    dec c                                         ; $5a78: $0d
    adc l                                         ; $5a79: $8d
    ld [hl], d                                    ; $5a7a: $72
    add hl, hl                                    ; $5a7b: $29
    xor d                                         ; $5a7c: $aa
    ret c                                         ; $5a7d: $d8

    rst $38                                       ; $5a7e: $ff
    pop bc                                        ; $5a7f: $c1
    ld c, a                                       ; $5a80: $4f
    db $ec                                        ; $5a81: $ec
    cp b                                          ; $5a82: $b8
    ld [hl], h                                    ; $5a83: $74
    nop                                           ; $5a84: $00
    rst $20                                       ; $5a85: $e7
    xor c                                         ; $5a86: $a9
    sub c                                         ; $5a87: $91
    adc l                                         ; $5a88: $8d
    res 7, b                                      ; $5a89: $cb $b8
    ld [$3dd9], a                                 ; $5a8b: $ea $d9 $3d
    cp b                                          ; $5a8e: $b8
    ld b, d                                       ; $5a8f: $42
    cp d                                          ; $5a90: $ba
    and d                                         ; $5a91: $a2
    sub c                                         ; $5a92: $91
    ld l, $9c                                     ; $5a93: $2e $9c
    ld c, e                                       ; $5a95: $4b
    db $fd                                        ; $5a96: $fd
    inc h                                         ; $5a97: $24
    or c                                          ; $5a98: $b1
    ld a, [hl-]                                   ; $5a99: $3a
    ld d, $59                                     ; $5a9a: $16 $59
    and [hl]                                      ; $5a9c: $a6
    ld b, [hl]                                    ; $5a9d: $46
    ld e, d                                       ; $5a9e: $5a
    xor c                                         ; $5a9f: $a9
    ld de, $e70d                                  ; $5aa0: $11 $0d $e7
    ld [c], a                                     ; $5aa3: $e2
    rst $28                                       ; $5aa4: $ef
    call nc, Call_000_32b3                        ; $5aa5: $d4 $b3 $32
    add hl, de                                    ; $5aa8: $19
    or [hl]                                       ; $5aa9: $b6
    ld e, [hl]                                    ; $5aaa: $5e
    add e                                         ; $5aab: $83
    or $2a                                        ; $5aac: $f6 $2a
    call $c9ad                                    ; $5aae: $cd $ad $c9
    inc l                                         ; $5ab1: $2c
    ld d, [hl]                                    ; $5ab2: $56
    or $28                                        ; $5ab3: $f6 $28
    dec [hl]                                      ; $5ab5: $35
    ld b, $77                                     ; $5ab6: $06 $77
    rrca                                          ; $5ab8: $0f
    xor [hl]                                      ; $5ab9: $ae
    ld h, a                                       ; $5aba: $67
    adc [hl]                                      ; $5abb: $8e
    ld [hl], $5b                                  ; $5abc: $36 $5b
    ld l, a                                       ; $5abe: $6f
    adc [hl]                                      ; $5abf: $8e
    inc a                                         ; $5ac0: $3c
    ld l, e                                       ; $5ac1: $6b
    ld l, b                                       ; $5ac2: $68
    sub h                                         ; $5ac3: $94
    ld c, e                                       ; $5ac4: $4b
    ld d, c                                       ; $5ac5: $51
    push bc                                       ; $5ac6: $c5
    cp $0f                                        ; $5ac7: $fe $0f
    ld a, [hl]                                    ; $5ac9: $7e
    ld h, d                                       ; $5aca: $62
    rst $00                                       ; $5acb: $c7
    and l                                         ; $5acc: $a5
    inc bc                                        ; $5acd: $03
    rst $20                                       ; $5ace: $e7
    xor c                                         ; $5acf: $a9
    ld [hl], c                                    ; $5ad0: $71
    add hl, de                                    ; $5ad1: $19
    ld d, a                                       ; $5ad2: $57
    rst $38                                       ; $5ad3: $ff
    inc hl                                        ; $5ad4: $23
    rst $08                                       ; $5ad5: $cf
    ld [$3dd9], a                                 ; $5ad6: $ea $d9 $3d
    cp b                                          ; $5ad9: $b8
    ld b, d                                       ; $5ada: $42
    cp d                                          ; $5adb: $ba
    ld h, [hl]                                    ; $5adc: $66
    ld d, h                                       ; $5add: $54
    inc a                                         ; $5ade: $3c
    add [hl]                                      ; $5adf: $86
    ld c, e                                       ; $5ae0: $4b
    db $fd                                        ; $5ae1: $fd
    sub h                                         ; $5ae2: $94
    ret c                                         ; $5ae3: $d8

    dec e                                         ; $5ae4: $1d
    ld [hl], e                                    ; $5ae5: $73
    ld h, h                                       ; $5ae6: $64
    cpl                                           ; $5ae7: $2f
    inc [hl]                                      ; $5ae8: $34
    add hl, sp                                    ; $5ae9: $39
    ld d, h                                       ; $5aea: $54
    rst $00                                       ; $5aeb: $c7
    ld [hl+], a                                   ; $5aec: $22
    set 2, h                                      ; $5aed: $cb $d4
    ld c, b                                       ; $5aef: $48
    db $eb                                        ; $5af0: $eb
    and h                                         ; $5af1: $a4
    ld l, b                                       ; $5af2: $68
    ld l, b                                       ; $5af3: $68
    jr c, jr_06f_5b0d                             ; $5af4: $38 $17

    ld a, a                                       ; $5af6: $7f
    and a                                         ; $5af7: $a7
    sbc [hl]                                      ; $5af8: $9e
    sub l                                         ; $5af9: $95
    ret                                           ; $5afa: $c9


    or b                                          ; $5afb: $b0
    push af                                       ; $5afc: $f5
    ld a, [de]                                    ; $5afd: $1a
    or h                                          ; $5afe: $b4
    rst $38                                       ; $5aff: $ff
    sub c                                         ; $5b00: $91
    ld h, a                                       ; $5b01: $67
    push bc                                       ; $5b02: $c5
    jp z, Jump_000_0d1e                           ; $5b03: $ca $1e $0d

    adc l                                         ; $5b06: $8d
    ld [hl], d                                    ; $5b07: $72
    add hl, hl                                    ; $5b08: $29
    ld l, d                                       ; $5b09: $6a
    call nc, $2213                                ; $5b0a: $d4 $13 $22

jr_06f_5b0d:
    xor h                                         ; $5b0d: $ac
    ld d, a                                       ; $5b0e: $57
    ld l, c                                       ; $5b0f: $69
    ld l, [hl]                                    ; $5b10: $6e
    ld c, l                                       ; $5b11: $4d
    and $a5                                       ; $5b12: $e6 $a5
    inc bc                                        ; $5b14: $03
    ld d, a                                       ; $5b15: $57
    ld l, c                                       ; $5b16: $69
    ld l, [hl]                                    ; $5b17: $6e
    ld c, l                                       ; $5b18: $4d
    and $a5                                       ; $5b19: $e6 $a5
    sbc [hl]                                      ; $5b1b: $9e
    ld l, e                                       ; $5b1c: $6b

Jump_06f_5b1d:
    inc c                                         ; $5b1d: $0c
    ld l, [hl]                                    ; $5b1e: $6e
    ld c, h                                       ; $5b1f: $4c
    ld a, [hl]                                    ; $5b20: $7e
    ld a, [hl+]                                   ; $5b21: $2a
    and h                                         ; $5b22: $a4
    ld a, e                                       ; $5b23: $7b
    db $e3                                        ; $5b24: $e3
    nop                                           ; $5b25: $00
    scf                                           ; $5b26: $37
    sub [hl]                                      ; $5b27: $96
    db $eb                                        ; $5b28: $eb
    or [hl]                                       ; $5b29: $b6
    ld l, l                                       ; $5b2a: $6d
    ld h, l                                       ; $5b2b: $65
    ld a, [hl+]                                   ; $5b2c: $2a
    and h                                         ; $5b2d: $a4
    ld a, b                                       ; $5b2e: $78
    cp d                                          ; $5b2f: $ba
    ld l, l                                       ; $5b30: $6d
    db $db                                        ; $5b31: $db
    ld bc, $371f                                  ; $5b32: $01 $1f $37
    sub b                                         ; $5b35: $90
    ld e, b                                       ; $5b36: $58
    ret z                                         ; $5b37: $c8

    ret                                           ; $5b38: $c9


    sub c                                         ; $5b39: $91
    sub d                                         ; $5b3a: $92
    xor c                                         ; $5b3b: $a9
    db $ec                                        ; $5b3c: $ec
    or [hl]                                       ; $5b3d: $b6
    ld l, l                                       ; $5b3e: $6d
    and l                                         ; $5b3f: $a5
    add h                                         ; $5b40: $84
    and b                                         ; $5b41: $a0
    call nc, Call_000_3708                        ; $5b42: $d4 $08 $37
    jp c, Jump_000_153c                           ; $5b45: $da $3c $15

    ld [hl+], a                                   ; $5b48: $22
    adc e                                         ; $5b49: $8b
    cp c                                          ; $5b4a: $b9
    ld l, h                                       ; $5b4b: $6c
    ld [$75a1], a                                 ; $5b4c: $ea $a1 $75
    call z, Call_06f_432b                         ; $5b4f: $cc $2b $43
    or a                                          ; $5b52: $b7
    inc bc                                        ; $5b53: $03
    scf                                           ; $5b54: $37
    ld b, a                                       ; $5b55: $47
    sbc [hl]                                      ; $5b56: $9e
    ld l, c                                       ; $5b57: $69
    and e                                         ; $5b58: $a3
    sbc l                                         ; $5b59: $9d
    ld l, c                                       ; $5b5a: $69
    xor c                                         ; $5b5b: $a9
    ld de, $b87f                                  ; $5b5c: $11 $7f $b8
    add [hl]                                      ; $5b5f: $86
    ld [hl], $32                                  ; $5b60: $36 $32
    add hl, de                                    ; $5b62: $19
    or d                                          ; $5b63: $b2
    sbc a                                         ; $5b64: $9f
    add [hl]                                      ; $5b65: $86
    ld h, e                                       ; $5b66: $63
    ld b, l                                       ; $5b67: $45
    jr nz, @+$73                                  ; $5b68: $20 $71

    ld h, a                                       ; $5b6a: $67
    and e                                         ; $5b6b: $a3
    ld b, c                                       ; $5b6c: $41
    ld c, a                                       ; $5b6d: $4f
    di                                            ; $5b6e: $f3
    ld b, [hl]                                    ; $5b6f: $46
    ld l, a                                       ; $5b70: $6f
    adc [hl]                                      ; $5b71: $8e
    inc a                                         ; $5b72: $3c
    db $d3                                        ; $5b73: $d3
    add $f5                                       ; $5b74: $c6 $f5
    and a                                         ; $5b76: $a7
    pop bc                                        ; $5b77: $c1
    ld d, l                                       ; $5b78: $55
    rst $00                                       ; $5b79: $c7
    ld [hl+], a                                   ; $5b7a: $22
    db $eb                                        ; $5b7b: $eb
    reti                                          ; $5b7c: $d9


    db $fc                                        ; $5b7d: $fc
    dec sp                                        ; $5b7e: $3b
    ld d, l                                       ; $5b7f: $55
    ld a, [de]                                    ; $5b80: $1a
    ld e, l                                       ; $5b81: $5d
    db $dd                                        ; $5b82: $dd
    ld e, b                                       ; $5b83: $58
    inc e                                         ; $5b84: $1c
    cp l                                          ; $5b85: $bd
    ld [hl], h                                    ; $5b86: $74
    nop                                           ; $5b87: $00
    rst $20                                       ; $5b88: $e7
    xor c                                         ; $5b89: $a9
    adc d                                         ; $5b8a: $8a
    cp e                                          ; $5b8b: $bb
    dec de                                        ; $5b8c: $1b
    jp c, Jump_06f_64c8                           ; $5b8d: $da $c8 $64

    ret z                                         ; $5b90: $c8

Call_06f_5b91:
    ld a, [hl]                                    ; $5b91: $7e
    ld a, [hl-]                                   ; $5b92: $3a
    adc l                                         ; $5b93: $8d
    ld b, $3d                                     ; $5b94: $06 $3d
    ld c, l                                       ; $5b96: $4d
    jp Jump_06f_40b1                              ; $5b97: $c3 $b1 $40


    ld h, d                                       ; $5b9a: $62
    ld hl, $5cc5                                  ; $5b9b: $21 $c5 $5c
    dec c                                         ; $5b9e: $0d
    inc h                                         ; $5b9f: $24
    ld [hl], $1c                                  ; $5ba0: $36 $1c
    cp a                                          ; $5ba2: $bf
    ld d, b                                       ; $5ba3: $50

Jump_06f_5ba4:
    ld h, [hl]                                    ; $5ba4: $66
    sub c                                         ; $5ba5: $91
    ld sp, $e0c7                                  ; $5ba6: $31 $c7 $e0
    daa                                           ; $5ba9: $27
    or $a9                                        ; $5baa: $f6 $a9
    adc $ed                                       ; $5bac: $ce $ed
    sub l                                         ; $5bae: $95
    push bc                                       ; $5baf: $c5
    ret c                                         ; $5bb0: $d8

    ld a, d                                       ; $5bb1: $7a
    sbc [hl]                                      ; $5bb2: $9e
    ld a, [$707d]                                 ; $5bb3: $fa $7d $70
    rst $30                                       ; $5bb6: $f7
    push de                                       ; $5bb7: $d5
    sbc b                                         ; $5bb8: $98
    db $fc                                        ; $5bb9: $fc
    ld d, h                                       ; $5bba: $54
    ld b, a                                       ; $5bbb: $47
    ld l, b                                       ; $5bbc: $68
    ld l, h                                       ; $5bbd: $6c
    inc [hl]                                      ; $5bbe: $34
    add sp, $69                                   ; $5bbf: $e8 $69
    ld [hl], h                                    ; $5bc1: $74
    db $eb                                        ; $5bc2: $eb
    dec c                                         ; $5bc3: $0d
    or $d3                                        ; $5bc4: $f6 $d3
    ret                                           ; $5bc6: $c9


    ccf                                           ; $5bc7: $3f
    sub l                                         ; $5bc8: $95
    cp l                                          ; $5bc9: $bd
    ld a, [bc]                                    ; $5bca: $0a
    or e                                          ; $5bcb: $b3
    sbc a                                         ; $5bcc: $9f
    sbc d                                         ; $5bcd: $9a
    ld a, a                                       ; $5bce: $7f
    and a                                         ; $5bcf: $a7
    ld [hl], c                                    ; $5bd0: $71
    db $fd                                        ; $5bd1: $fd
    xor c                                         ; $5bd2: $a9
    ld c, d                                       ; $5bd3: $4a
    ld d, a                                       ; $5bd4: $57
    rst $00                                       ; $5bd5: $c7
    ld [hl-], a                                   ; $5bd6: $32
    set 1, c                                      ; $5bd7: $cb $c9
    pop de                                        ; $5bd9: $d1
    ldh [$a7], a                                  ; $5bda: $e0 $a7
    ld c, h                                       ; $5bdc: $4c
    and l                                         ; $5bdd: $a5
    ld b, [hl]                                    ; $5bde: $46
    ret c                                         ; $5bdf: $d8

    ld b, d                                       ; $5be0: $42
    db $dd                                        ; $5be1: $dd
    ld e, b                                       ; $5be2: $58
    ld b, h                                       ; $5be3: $44
    ld [hl], c                                    ; $5be4: $71
    ld a, [de]                                    ; $5be5: $1a
    jp Jump_000_0076                              ; $5be6: $c3 $76 $00


    rst $20                                       ; $5be9: $e7
    add hl, sp                                    ; $5bea: $39
    cp $4e                                        ; $5beb: $fe $4e
    cpl                                           ; $5bed: $2f
    ld d, h                                       ; $5bee: $54
    inc de                                        ; $5bef: $13
    ld l, d                                       ; $5bf0: $6a
    call nc, $b270                                ; $5bf1: $d4 $70 $b2
    ld b, d                                       ; $5bf4: $42
    cp b                                          ; $5bf5: $b8
    or $e5                                        ; $5bf6: $f6 $e5
    pop hl                                        ; $5bf8: $e1
    ld a, c                                       ; $5bf9: $79
    xor c                                         ; $5bfa: $a9
    sub a                                         ; $5bfb: $97
    ei                                            ; $5bfc: $fb
    xor [hl]                                      ; $5bfd: $ae
    dec l                                         ; $5bfe: $2d
    pop de                                        ; $5bff: $d1
    jp z, $d8f7                                   ; $5c00: $ca $f7 $d8

    ld b, d                                       ; $5c03: $42
    rst $38                                       ; $5c04: $ff
    ld e, b                                       ; $5c05: $58
    dec c                                         ; $5c06: $0d
    ld l, c                                       ; $5c07: $69
    sbc [hl]                                      ; $5c08: $9e
    ld d, [hl]                                    ; $5c09: $56
    cp c                                          ; $5c0a: $b9
    or d                                          ; $5c0b: $b2
    sbc h                                         ; $5c0c: $9c
    add [hl]                                      ; $5c0d: $86
    sub e                                         ; $5c0e: $93
    db $e3                                        ; $5c0f: $e3
    add sp, -$2a                                  ; $5c10: $e8 $d6
    res 4, a                                      ; $5c12: $cb $a7
    ld sp, $3ff4                                  ; $5c14: $31 $f4 $3f
    ld a, e                                       ; $5c17: $7b

Call_06f_5c18:
    ld h, h                                       ; $5c18: $64
    ld b, e                                       ; $5c19: $43
    jr jr_06f_5c56                                ; $5c1a: $18 $3a

    ld d, l                                       ; $5c1c: $55
    and [hl]                                      ; $5c1d: $a6
    ld a, [$b731]                                 ; $5c1e: $fa $31 $b7
    ld [c], a                                     ; $5c21: $e2
    dec a                                         ; $5c22: $3d
    or [hl]                                       ; $5c23: $b6
    ld h, [hl]                                    ; $5c24: $66
    dec sp                                        ; $5c25: $3b
    nop                                           ; $5c26: $00
    sbc a                                         ; $5c27: $9f
    inc h                                         ; $5c28: $24
    db $e4                                        ; $5c29: $e4
    jr c, jr_06f_5c71                             ; $5c2a: $38 $45

    rst $38                                       ; $5c2c: $ff
    inc hl                                        ; $5c2d: $23
    rst $08                                       ; $5c2e: $cf
    or h                                          ; $5c2f: $b4
    ld a, [hl]                                    ; $5c30: $7e
    sub [hl]                                      ; $5c31: $96
    ld a, [bc]                                    ; $5c32: $0a
    sbc d                                         ; $5c33: $9a
    ld a, a                                       ; $5c34: $7f
    and a                                         ; $5c35: $a7
    ld [c], a                                     ; $5c36: $e2
    ldh [$ba], a                                  ; $5c37: $e0 $ba
    or h                                          ; $5c39: $b4
    ld [c], a                                     ; $5c3a: $e2
    ld l, b                                       ; $5c3b: $68
    or c                                          ; $5c3c: $b1
    and a                                         ; $5c3d: $a7
    inc a                                         ; $5c3e: $3c
    ld e, d                                       ; $5c3f: $5a
    ccf                                           ; $5c40: $3f
    dec c                                         ; $5c41: $0d
    ld l, l                                       ; $5c42: $6d
    add hl, sp                                    ; $5c43: $39
    ld l, $9b                                     ; $5c44: $2e $9b
    ld [hl+], a                                   ; $5c46: $22
    ld c, a                                       ; $5c47: $4f
    inc bc                                        ; $5c48: $03
    adc c                                         ; $5c49: $89
    dec c                                         ; $5c4a: $0d
    sub e                                         ; $5c4b: $93
    and a                                         ; $5c4c: $a7
    ld a, [hl+]                                   ; $5c4d: $2a
    ld e, l                                       ; $5c4e: $5d
    sbc c                                         ; $5c4f: $99
    ld b, l                                       ; $5c50: $45
    add $1c                                       ; $5c51: $c6 $1c
    ld h, c                                       ; $5c53: $61
    ld c, l                                       ; $5c54: $4d
    xor [hl]                                      ; $5c55: $ae

jr_06f_5c56:
    pop de                                        ; $5c56: $d1
    and b                                         ; $5c57: $a0
    and a                                         ; $5c58: $a7
    xor c                                         ; $5c59: $a9
    sbc e                                         ; $5c5a: $9b
    inc e                                         ; $5c5b: $1c
    sub c                                         ; $5c5c: $91
    push bc                                       ; $5c5d: $c5
    ld h, a                                       ; $5c5e: $67
    ld e, d                                       ; $5c5f: $5a
    ld hl, sp-$4c                                 ; $5c60: $f8 $b4
    rst $00                                       ; $5c62: $c7
    reti                                          ; $5c63: $d9


    ld a, d                                       ; $5c64: $7a
    dec b                                         ; $5c65: $05
    ld e, $4d                                     ; $5c66: $1e $4d
    xor [hl]                                      ; $5c68: $ae
    sbc [hl]                                      ; $5c69: $9e
    db $fd                                        ; $5c6a: $fd
    adc a                                         ; $5c6b: $8f
    inc a                                         ; $5c6c: $3c
    db $d3                                        ; $5c6d: $d3
    sbc [hl]                                      ; $5c6e: $9e
    sub b                                         ; $5c6f: $90
    push bc                                       ; $5c70: $c5

jr_06f_5c71:
    xor b                                         ; $5c71: $a8

Jump_06f_5c72:
    ld e, h                                       ; $5c72: $5c
    ld e, c                                       ; $5c73: $59
    ld c, [hl]                                    ; $5c74: $4e
    jp Jump_06f_71c9                              ; $5c75: $c3 $c9 $71


    or h                                          ; $5c78: $b4
    ld hl, $450c                                  ; $5c79: $21 $0c $45
    rst $18                                       ; $5c7c: $df
    or l                                          ; $5c7d: $b5
    dec h                                         ; $5c7e: $25
    ld e, d                                       ; $5c7f: $5a
    ld sp, hl                                     ; $5c80: $f9
    ld e, $5b                                     ; $5c81: $1e $5b
    ret c                                         ; $5c83: $d8

    ld a, d                                       ; $5c84: $7a
    ld a, l                                       ; $5c85: $7d
    inc a                                         ; $5c86: $3c
    ld e, l                                       ; $5c87: $5d
    sub a                                         ; $5c88: $97
    ld l, l                                       ; $5c89: $6d
    rlca                                          ; $5c8a: $07
    rst $28                                       ; $5c8b: $ef
    call z, $ceea                                 ; $5c8c: $cc $ea $ce
    inc de                                        ; $5c8f: $13
    or $7a                                        ; $5c90: $f6 $7a
    ld d, h                                       ; $5c92: $54
    inc de                                        ; $5c93: $13
    ld a, [de]                                    ; $5c94: $1a
    jp nz, $9b22                                  ; $5c95: $c2 $22 $9b

    ld b, a                                       ; $5c98: $47
    dec de                                        ; $5c99: $1b
    sub a                                         ; $5c9a: $97
    pop bc                                        ; $5c9b: $c1
    ld [$6651], a                                 ; $5c9c: $ea $51 $66
    ld l, c                                       ; $5c9f: $69
    call z, $f512                                 ; $5ca0: $cc $12 $f5
    ld [$ee24], sp                                ; $5ca3: $08 $24 $ee
    db $ec                                        ; $5ca6: $ec
    rst $30                                       ; $5ca7: $f7
    ld e, h                                       ; $5ca8: $5c
    ld [hl], c                                    ; $5ca9: $71
    or [hl]                                       ; $5caa: $b6
    inc bc                                        ; $5cab: $03
    ld l, a                                       ; $5cac: $6f
    pop de                                        ; $5cad: $d1
    add hl, bc                                    ; $5cae: $09
    ld a, [$791f]                                 ; $5caf: $fa $1f $79
    and [hl]                                      ; $5cb2: $a6
    ld [hl], l                                    ; $5cb3: $75
    xor h                                         ; $5cb4: $ac
    ld h, d                                       ; $5cb5: $62
    rst $38                                       ; $5cb6: $ff
    jp $04e0                                      ; $5cb7: $c3 $e0 $04


    ld [hl], l                                    ; $5cba: $75
    ld d, h                                       ; $5cbb: $54
    scf                                           ; $5cbc: $37
    push af                                       ; $5cbd: $f5
    inc c                                         ; $5cbe: $0c
    ld h, a                                       ; $5cbf: $67
    ld l, c                                       ; $5cc0: $69
    or a                                          ; $5cc1: $b7
    ld l, l                                       ; $5cc2: $6d
    xor e                                         ; $5cc3: $ab
    sbc a                                         ; $5cc4: $9f
    ld a, [hl]                                    ; $5cc5: $7e
    rst $08                                       ; $5cc6: $cf
    dec d                                         ; $5cc7: $15
    and a                                         ; $5cc8: $a7
    add c                                         ; $5cc9: $81
    call nz, $f532                                ; $5cca: $c4 $32 $f5
    cp a                                          ; $5ccd: $bf
    or d                                          ; $5cce: $b2
    jr @-$39                                      ; $5ccf: $18 $c5

    ld l, c                                       ; $5cd1: $69
    ld h, l                                       ; $5cd2: $65
    ccf                                           ; $5cd3: $3f
    db $db                                        ; $5cd4: $db
    ld bc, $8d6f                                  ; $5cd5: $01 $6f $8d
    inc de                                        ; $5cd8: $13
    inc d                                         ; $5cd9: $14
    ld d, d                                       ; $5cda: $52
    inc a                                         ; $5cdb: $3c
    dec c                                         ; $5cdc: $0d
    inc h                                         ; $5cdd: $24
    sub $f3                                       ; $5cde: $d6 $f3
    ld c, a                                       ; $5ce0: $4f
    cp e                                          ; $5ce1: $bb
    dec de                                        ; $5ce2: $1b
    ld l, [hl]                                    ; $5ce3: $6e
    or h                                          ; $5ce4: $b4
    ld c, d                                       ; $5ce5: $4a
    dec hl                                        ; $5ce6: $2b
    call c, $8d3a                                 ; $5ce7: $dc $3a $8d
    ld a, [bc]                                    ; $5cea: $0a
    adc d                                         ; $5ceb: $8a
    rst $28                                       ; $5cec: $ef
    sub e                                         ; $5ced: $93
    add a                                         ; $5cee: $87
    dec [hl]                                      ; $5cef: $35
    cp c                                          ; $5cf0: $b9
    ld h, d                                       ; $5cf1: $62
    ld a, [hl-]                                   ; $5cf2: $3a
    add hl, hl                                    ; $5cf3: $29
    jp c, $bd6c                                   ; $5cf4: $da $6c $bd

    inc l                                         ; $5cf7: $2c
    push bc                                       ; $5cf8: $c5
    db $d3                                        ; $5cf9: $d3
    ld b, b                                       ; $5cfa: $40
    ld h, d                                       ; $5cfb: $62
    dec a                                         ; $5cfc: $3d
    call $c226                                    ; $5cfd: $cd $26 $c2
    sbc d                                         ; $5d00: $9a
    ld e, h                                       ; $5d01: $5c
    and e                                         ; $5d02: $a3
    ld b, c                                       ; $5d03: $41
    ld c, a                                       ; $5d04: $4f
    db $d3                                        ; $5d05: $d3
    dec bc                                        ; $5d06: $0b
    sbc l                                         ; $5d07: $9d
    add $15                                       ; $5d08: $c6 $15
    ld c, [hl]                                    ; $5d0a: $4e
    dec a                                         ; $5d0b: $3d
    dec hl                                        ; $5d0c: $2b
    ld h, a                                       ; $5d0d: $67
    add hl, hl                                    ; $5d0e: $29
    ld a, [de]                                    ; $5d0f: $1a
    ld c, b                                       ; $5d10: $48
    ld l, h                                       ; $5d11: $6c
    inc e                                         ; $5d12: $1c
    sra b                                         ; $5d13: $cb $28
    or h                                          ; $5d15: $b4
    ld hl, $0755                                  ; $5d16: $21 $55 $07
    ld e, d                                       ; $5d19: $5a
    add a                                         ; $5d1a: $87
    and l                                         ; $5d1b: $a5
    dec c                                         ; $5d1c: $0d
    db $ed                                        ; $5d1d: $ed
    sbc [hl]                                      ; $5d1e: $9e
    ld e, e                                       ; $5d1f: $5b
    bit 0, c                                      ; $5d20: $cb $41
    or a                                          ; $5d22: $b7
    inc bc                                        ; $5d23: $03
    scf                                           ; $5d24: $37
    ld l, b                                       ; $5d25: $68
    ld [hl], h                                    ; $5d26: $74
    and e                                         ; $5d27: $a3
    add l                                         ; $5d28: $85
    ld e, e                                       ; $5d29: $5b
    and a                                         ; $5d2a: $a7
    pop de                                        ; $5d2b: $d1
    ld [hl-], a                                   ; $5d2c: $32

Jump_06f_5d2d:
    rst $00                                       ; $5d2d: $c7
    rst $18                                       ; $5d2e: $df
    cp c                                          ; $5d2f: $b9
    ld [hl], h                                    ; $5d30: $74
    nop                                           ; $5d31: $00
    rra                                           ; $5d32: $1f
    db $dd                                        ; $5d33: $dd
    and e                                         ; $5d34: $a3
    push af                                       ; $5d35: $f5
    db $fc                                        ; $5d36: $fc
    rst $18                                       ; $5d37: $df
    dec c                                         ; $5d38: $0d
    scf                                           ; $5d39: $37
    jp c, $ab48                                   ; $5d3a: $da $48 $ab

    ld d, c                                       ; $5d3d: $51
    ld d, d                                       ; $5d3e: $52
    cp b                                          ; $5d3f: $b8
    db $fc                                        ; $5d40: $fc
    call nc, Call_06f_6961                        ; $5d41: $d4 $61 $69
    jp Jump_06f_71c9                              ; $5d44: $c3 $c9 $71


    or h                                          ; $5d47: $b4
    ld hl, $cd0c                                  ; $5d48: $21 $0c $cd
    and e                                         ; $5d4b: $a3
    adc d                                         ; $5d4c: $8a
    ld c, d                                       ; $5d4d: $4a
    jr z, jr_06f_5d6a                             ; $5d4e: $28 $1a

    adc [hl]                                      ; $5d50: $8e
    dec d                                         ; $5d51: $15
    add c                                         ; $5d52: $81
    or h                                          ; $5d53: $b4
    or $69                                        ; $5d54: $f6 $69
    jr nz, @-$4d                                  ; $5d56: $20 $b1

jr_06f_5d58:
    and d                                         ; $5d58: $a2
    ld [hl], l                                    ; $5d59: $75
    sbc e                                         ; $5d5a: $9b
    ld l, [hl]                                    ; $5d5b: $6e
    ld d, h                                       ; $5d5c: $54
    ret nc                                        ; $5d5d: $d0

    db $fc                                        ; $5d5e: $fc
    dec sp                                        ; $5d5f: $3b
    add l                                         ; $5d60: $85
    inc d                                         ; $5d61: $14
    jp Jump_06f_71bd                              ; $5d62: $c3 $bd $71


    nop                                           ; $5d65: $00
    rst $20                                       ; $5d66: $e7
    xor c                                         ; $5d67: $a9
    ld [hl], c                                    ; $5d68: $71
    db $fd                                        ; $5d69: $fd

jr_06f_5d6a:
    reti                                          ; $5d6a: $d9


    db $e4                                        ; $5d6b: $e4
    ret nc                                        ; $5d6c: $d0

    push hl                                       ; $5d6d: $e5
    cpl                                           ; $5d6e: $2f
    inc l                                         ; $5d6f: $2c
    ld [hl], h                                    ; $5d70: $74
    db $db                                        ; $5d71: $db
    or [hl]                                       ; $5d72: $b6
    cp $e1                                        ; $5d73: $fe $e1
    ld b, [hl]                                    ; $5d75: $46
    dec hl                                        ; $5d76: $2b
    jp nz, $ab0e                                  ; $5d77: $c2 $0e $ab

    inc e                                         ; $5d7a: $1c
    rst $10                                       ; $5d7b: $d7
    xor e                                         ; $5d7c: $ab
    jr c, jr_06f_5d58                             ; $5d7d: $38 $d9

    ld a, [c]                                     ; $5d7f: $f2
    ld e, e                                       ; $5d80: $5b
    rst $08                                       ; $5d81: $cf
    ld [hl], a                                    ; $5d82: $77
    or $42                                        ; $5d83: $f6 $42
    and a                                         ; $5d85: $a7
    and a                                         ; $5d86: $a7
    inc b                                         ; $5d87: $04
    di                                            ; $5d88: $f3
    ld a, b                                       ; $5d89: $78
    ld b, d                                       ; $5d8a: $42
    ld [c], a                                     ; $5d8b: $e2
    ld [hl+], a                                   ; $5d8c: $22
    jp z, $842a                                   ; $5d8d: $ca $2a $84

    ld l, h                                       ; $5d90: $6c
    ld c, h                                       ; $5d91: $4c
    ld a, [hl]                                    ; $5d92: $7e
    xor d                                         ; $5d93: $aa
    inc hl                                        ; $5d94: $23
    inc [hl]                                      ; $5d95: $34
    ld d, $79                                     ; $5d96: $16 $79
    add hl, sp                                    ; $5d98: $39
    inc l                                         ; $5d99: $2c
    db $dd                                        ; $5d9a: $dd
    ld a, [$f619]                                 ; $5d9b: $fa $19 $f6
    ccf                                           ; $5d9e: $3f
    ld l, a                                       ; $5d9f: $6f
    sub a                                         ; $5da0: $97
    dec sp                                        ; $5da1: $3b
    xor e                                         ; $5da2: $ab
    ld e, b                                       ; $5da3: $58
    ld b, d                                       ; $5da4: $42
    inc d                                         ; $5da5: $14
    ei                                            ; $5da6: $fb
    add hl, hl                                    ; $5da7: $29
    add hl, sp                                    ; $5da8: $39
    ld d, h                                       ; $5da9: $54
    adc $52                                       ; $5daa: $ce $52
    ld d, h                                       ; $5dac: $54
    ld b, a                                       ; $5dad: $47
    ld l, b                                       ; $5dae: $68
    db $ec                                        ; $5daf: $ec
    ld d, h                                       ; $5db0: $54
    ld b, d                                       ; $5db1: $42
    adc d                                         ; $5db2: $8a
    rst $00                                       ; $5db3: $c7
    ld l, h                                       ; $5db4: $6c
    ld [$68d9], a                                 ; $5db5: $ea $d9 $68
    ld h, a                                       ; $5db8: $67
    ld e, d                                       ; $5db9: $5a
    add hl, bc                                    ; $5dba: $09
    ld hl, $422f                                  ; $5dbb: $21 $2f $42
    or a                                          ; $5dbe: $b7
    inc bc                                        ; $5dbf: $03
    rst $20                                       ; $5dc0: $e7
    xor c                                         ; $5dc1: $a9
    ld sp, hl                                     ; $5dc2: $f9
    ld [hl], a                                    ; $5dc3: $77
    ld a, [hl+]                                   ; $5dc4: $2a
    add $7f                                       ; $5dc5: $c6 $7f
    and c                                         ; $5dc7: $a1
    ld hl, $c2b3                                  ; $5dc8: $21 $b3 $c2
    ld c, a                                       ; $5dcb: $4f
    di                                            ; $5dcc: $f3
    ld d, d                                       ; $5dcd: $52
    sbc l                                         ; $5dce: $9d
    xor l                                         ; $5dcf: $ad
    rst $20                                       ; $5dd0: $e7
    ld d, l                                       ; $5dd1: $55
    sub [hl]                                      ; $5dd2: $96
    dec sp                                        ; $5dd3: $3b
    sbc e                                         ; $5dd4: $9b
    ld a, a                                       ; $5dd5: $7f
    and a                                         ; $5dd6: $a7
    ld a, [hl-]                                   ; $5dd7: $3a
    ld c, c                                       ; $5dd8: $49
    ld c, b                                       ; $5dd9: $48
    inc de                                        ; $5dda: $13
    inc d                                         ; $5ddb: $14
    pop hl                                        ; $5ddc: $e1
    ld l, b                                       ; $5ddd: $68
    sbc h                                         ; $5dde: $9c
    ld b, $12                                     ; $5ddf: $06 $12
    dec de                                        ; $5de1: $1b
    adc [hl]                                      ; $5de2: $8e
    ld h, a                                       ; $5de3: $67
    dec a                                         ; $5de4: $3d
    ld d, l                                       ; $5de5: $55
    adc [hl]                                      ; $5de6: $8e
    ret nc                                        ; $5de7: $d0

    sub [hl]                                      ; $5de8: $96
    ld l, l                                       ; $5de9: $6d
    cp l                                          ; $5dea: $bd
    add hl, bc                                    ; $5deb: $09
    scf                                           ; $5dec: $37
    jp c, Jump_06f_783d                           ; $5ded: $da $3d $78

    dec sp                                        ; $5df0: $3b
    nop                                           ; $5df1: $00
    ld d, a                                       ; $5df2: $57
    ld l, h                                       ; $5df3: $6c
    ld hl, $4326                                  ; $5df4: $21 $26 $43
    dec e                                         ; $5df7: $1d
    halt                                          ; $5df8: $76
    cp a                                          ; $5df9: $bf
    ld [hl+], a                                   ; $5dfa: $22
    inc b                                         ; $5dfb: $04
    ld [hl], l                                    ; $5dfc: $75
    xor h                                         ; $5dfd: $ac
    dec de                                        ; $5dfe: $1b
    di                                            ; $5dff: $f3
    call z, $ea7e                                 ; $5e00: $cc $7e $ea
    xor c                                         ; $5e03: $a9
    jp z, $cf7e                                   ; $5e04: $ca $7e $cf

    dec d                                         ; $5e07: $15
    ld h, a                                       ; $5e08: $67
    db $eb                                        ; $5e09: $eb
    sub l                                         ; $5e0a: $95
    ld [hl], c                                    ; $5e0b: $71
    db $d3                                        ; $5e0c: $d3
    dec bc                                        ; $5e0d: $0b
    dec c                                         ; $5e0e: $0d
    inc h                                         ; $5e0f: $24
    ld d, [hl]                                    ; $5e10: $56
    reti                                          ; $5e11: $d9


    ld [hl], b                                    ; $5e12: $70
    inc a                                         ; $5e13: $3c
    dec hl                                        ; $5e14: $2b
    ld e, d                                       ; $5e15: $5a
    ld [de], a                                    ; $5e16: $12
    ld d, [hl]                                    ; $5e17: $56
    rst $08                                       ; $5e18: $cf
    adc $2e                                       ; $5e19: $ce $2e
    sbc [hl]                                      ; $5e1b: $9e
    jp nc, $da35                                  ; $5e1c: $d2 $35 $da

    sbc c                                         ; $5e1f: $99
    ld d, [hl]                                    ; $5e20: $56
    ld b, d                                       ; $5e21: $42
    ret z                                         ; $5e22: $c8

    adc e                                         ; $5e23: $8b
    ret nc                                        ; $5e24: $d0

    ld h, d                                       ; $5e25: $62
    ld [$6ea8], a                                 ; $5e26: $ea $a8 $6e
    ld a, [de]                                    ; $5e29: $1a
    jp hl                                         ; $5e2a: $e9


    jp nz, $e379                                  ; $5e2b: $c2 $79 $e3

    nop                                           ; $5e2e: $00
    ld l, a                                       ; $5e2f: $6f
    ld d, e                                       ; $5e30: $53

jr_06f_5e31:
    ld h, l                                       ; $5e31: $65
    jp c, Jump_000_3643                           ; $5e32: $da $43 $36

    or h                                          ; $5e35: $b4
    ld de, $7551                                  ; $5e36: $11 $51 $75
    ld c, h                                       ; $5e39: $4c
    ld d, b                                       ; $5e3a: $50
    rlca                                          ; $5e3b: $07
    db $ed                                        ; $5e3c: $ed
    ld d, h                                       ; $5e3d: $54
    sbc c                                         ; $5e3e: $99
    push bc                                       ; $5e3f: $c5
    ld h, e                                       ; $5e40: $63
    and l                                         ; $5e41: $a5
    add $e0                                       ; $5e42: $c6 $e0
    ld a, [bc]                                    ; $5e44: $0a
    jp hl                                         ; $5e45: $e9


    sbc $e8                                       ; $5e46: $de $e8
    rst $00                                       ; $5e48: $c7
    ld d, l                                       ; $5e49: $55
    ld h, [hl]                                    ; $5e4a: $66
    pop af                                        ; $5e4b: $f1
    ld e, b                                       ; $5e4c: $58
    xor c                                         ; $5e4d: $a9
    ld sp, $0eb8                                  ; $5e4e: $31 $b8 $0e
    ld e, c                                       ; $5e51: $59
    ld [hl+], a                                   ; $5e52: $22
    ei                                            ; $5e53: $fb
    reti                                          ; $5e54: $d9


    ld c, $37                                     ; $5e55: $0e $37
    ld b, a                                       ; $5e57: $47
    sbc [hl]                                      ; $5e58: $9e
    sub l                                         ; $5e59: $95
    ld a, [de]                                    ; $5e5a: $1a
    add e                                         ; $5e5b: $83
    db $eb                                        ; $5e5c: $eb
    ld e, b                                       ; $5e5d: $58
    ld l, d                                       ; $5e5e: $6a
    cp b                                          ; $5e5f: $b8
    ld h, $23                                     ; $5e60: $26 $23
    ei                                            ; $5e62: $fb
    ld de, $faf4                                  ; $5e63: $11 $f4 $fa
    call nz, Call_06f_7b48                        ; $5e66: $c4 $48 $7b
    and e                                         ; $5e69: $a3
    sbc a                                         ; $5e6a: $9f
    ld h, c                                       ; $5e6b: $61
    rst $38                                       ; $5e6c: $ff
    di                                            ; $5e6d: $f3
    halt                                          ; $5e6e: $76
    rst $38                                       ; $5e6f: $ff
    inc hl                                        ; $5e70: $23
    rst $08                                       ; $5e71: $cf
    ld [$a7f9], a                                 ; $5e72: $ea $f9 $a7
    ld a, [hl+]                                   ; $5e75: $2a
    dec de                                        ; $5e76: $1b
    ld a, [de]                                    ; $5e77: $1a
    dec [hl]                                      ; $5e78: $35
    jp nz, $b0ea                                  ; $5e79: $c2 $ea $b0

    or h                                          ; $5e7c: $b4
    adc b                                         ; $5e7d: $88
    call z, Call_06f_7f17                         ; $5e7e: $cc $17 $7f
    and a                                         ; $5e81: $a7
    jr jr_06f_5e31                                ; $5e82: $18 $ad

    ld [hl-], a                                   ; $5e84: $32
    ld l, c                                       ; $5e85: $69
    xor c                                         ; $5e86: $a9
    ld sp, $d1f9                                  ; $5e87: $31 $f9 $d1
    or d                                          ; $5e8a: $b2
    adc [hl]                                      ; $5e8b: $8e
    ld a, c                                       ; $5e8c: $79
    or h                                          ; $5e8d: $b4
    jr z, @+$56                                   ; $5e8e: $28 $54

    ld d, e                                       ; $5e90: $53
    adc [hl]                                      ; $5e91: $8e
    and e                                         ; $5e92: $a3
    dec c                                         ; $5e93: $0d
    inc h                                         ; $5e94: $24
    ld [hl], $ff                                  ; $5e95: $36 $ff
    ld c, [hl]                                    ; $5e97: $4e
    ld [hl], a                                    ; $5e98: $77
    ld sp, $d7eb                                  ; $5e99: $31 $eb $d7
    add hl, bc                                    ; $5e9c: $09
    xor [hl]                                      ; $5e9d: $ae
    ld b, [hl]                                    ; $5e9e: $46
    dec c                                         ; $5e9f: $0d
    cp c                                          ; $5ea0: $b9
    ld [c], a                                     ; $5ea1: $e2
    ld l, h                                       ; $5ea2: $6c
    rlca                                          ; $5ea3: $07
    sbc a                                         ; $5ea4: $9f
    reti                                          ; $5ea5: $d9


    sbc c                                         ; $5ea6: $99
    ld d, [hl]                                    ; $5ea7: $56
    ld b, d                                       ; $5ea8: $42
    ret z                                         ; $5ea9: $c8

    adc e                                         ; $5eaa: $8b
    ret nc                                        ; $5eab: $d0

    scf                                           ; $5eac: $37
    ld a, d                                       ; $5ead: $7a
    cp [hl]                                       ; $5eae: $be
    or e                                          ; $5eaf: $b3
    sub c                                         ; $5eb0: $91
    add hl, sp                                    ; $5eb1: $39
    ld c, [hl]                                    ; $5eb2: $4e
    ld l, d                                       ; $5eb3: $6a
    ld [$5855], sp                                ; $5eb4: $08 $55 $58
    ld b, e                                       ; $5eb7: $43
    xor $53                                       ; $5eb8: $ee $53
    add hl, bc                                    ; $5eba: $09
    add hl, hl                                    ; $5ebb: $29
    ld e, $b3                                     ; $5ebc: $1e $b3
    xor c                                         ; $5ebe: $a9
    ld h, a                                       ; $5ebf: $67
    and e                                         ; $5ec0: $a3
    sbc l                                         ; $5ec1: $9d
    ld l, c                                       ; $5ec2: $69
    dec h                                         ; $5ec3: $25
    add h                                         ; $5ec4: $84
    cp h                                          ; $5ec5: $bc
    ld [$d4bd], sp                                ; $5ec6: $08 $bd $d4
    di                                            ; $5ec9: $f3
    ld [hl+], a                                   ; $5eca: $22
    inc e                                         ; $5ecb: $1c
    adc l                                         ; $5ecc: $8d
    ld d, e                                       ; $5ecd: $53
    add hl, sp                                    ; $5ece: $39
    ld l, [hl]                                    ; $5ecf: $6e
    jp z, $f59d                                   ; $5ed0: $ca $9d $f5

    ld e, h                                       ; $5ed3: $5c
    or a                                          ; $5ed4: $b7
    ld h, $15                                     ; $5ed5: $26 $15
    add c                                         ; $5ed7: $81
    call nz, $8d9d                                ; $5ed8: $c4 $9d $8d
    ld b, $3d                                     ; $5edb: $06 $3d
    ld c, l                                       ; $5edd: $4d
    sbc c                                         ; $5ede: $99
    and e                                         ; $5edf: $a3
    pop bc                                        ; $5ee0: $c1
    ld a, [de]                                    ; $5ee1: $1a
    jp nz, $bf50                                  ; $5ee2: $c2 $50 $bf

    inc [hl]                                      ; $5ee5: $34
    ld a, [de]                                    ; $5ee6: $1a
    sub [hl]                                      ; $5ee7: $96
    dec d                                         ; $5ee8: $15
    ld b, l                                       ; $5ee9: $45
    ld h, h                                       ; $5eea: $64
    cp [hl]                                       ; $5eeb: $be
    ld hl, sp+$3b                                 ; $5eec: $f8 $3b
    push af                                       ; $5eee: $f5
    ld l, h                                       ; $5eef: $6c
    inc e                                         ; $5ef0: $1c
    ccf                                           ; $5ef1: $3f
    ld a, d                                       ; $5ef2: $7a
    xor c                                         ; $5ef3: $a9
    scf                                           ; $5ef4: $37
    pop hl                                        ; $5ef5: $e1
    ld b, [hl]                                    ; $5ef6: $46
    ei                                            ; $5ef7: $fb
    and a                                         ; $5ef8: $a7
    ld [hl], l                                    ; $5ef9: $75
    ld a, d                                       ; $5efa: $7a
    dec d                                         ; $5efb: $15
    daa                                           ; $5efc: $27
    ld e, e                                       ; $5efd: $5b
    cp $d2                                        ; $5efe: $fe $d2
    ld bc, $1b1f                                  ; $5f00: $01 $1f $1b
    inc b                                         ; $5f03: $04
    sbc l                                         ; $5f04: $9d
    dec a                                         ; $5f05: $3d
    ld hl, sp+$52                                 ; $5f06: $f8 $52

jr_06f_5f08:
    rst $08                                       ; $5f08: $cf
    ld d, e                                       ; $5f09: $53
    di                                            ; $5f0a: $f3
    rst $28                                       ; $5f0b: $ef
    sub h                                         ; $5f0c: $94
    ld a, [de]                                    ; $5f0d: $1a
    jp nc, Jump_06f_47f0                          ; $5f0e: $d2 $f0 $47

    rst $38                                       ; $5f11: $ff
    or h                                          ; $5f12: $b4
    cp $47                                        ; $5f13: $fe $47
    sbc [hl]                                      ; $5f15: $9e
    ld d, l                                       ; $5f16: $55
    inc a                                         ; $5f17: $3c
    rst $18                                       ; $5f18: $df
    ld [hl], e                                    ; $5f19: $73
    dec sp                                        ; $5f1a: $3b
    nop                                           ; $5f1b: $00
    scf                                           ; $5f1c: $37
    ld [hl-], a                                   ; $5f1d: $32
    ld b, d                                       ; $5f1e: $42
    ld [hl], $32                                  ; $5f1f: $36 $32
    rst $00                                       ; $5f21: $c7
    ld c, c                                       ; $5f22: $49
    dec c                                         ; $5f23: $0d
    and c                                         ; $5f24: $a1
    ld a, [bc]                                    ; $5f25: $0a
    ld l, e                                       ; $5f26: $6b
    ret z                                         ; $5f27: $c8

    ld a, l                                       ; $5f28: $7d
    ld a, [hl+]                                   ; $5f29: $2a
    ld hl, $63c5                                  ; $5f2a: $21 $c5 $63
    ld [hl], $f5                                  ; $5f2d: $36 $f5
    ld l, h                                       ; $5f2f: $6c
    or h                                          ; $5f30: $b4
    inc sp                                        ; $5f31: $33
    xor l                                         ; $5f32: $ad
    add h                                         ; $5f33: $84
    sub b                                         ; $5f34: $90
    rla                                           ; $5f35: $17
    and c                                         ; $5f36: $a1
    push af                                       ; $5f37: $f5
    ret                                           ; $5f38: $c9


    sub b                                         ; $5f39: $90
    inc hl                                        ; $5f3a: $23
    adc e                                         ; $5f3b: $8b
    adc d                                         ; $5f3c: $8a
    xor b                                         ; $5f3d: $a8
    ld de, $d3f5                                  ; $5f3e: $11 $f5 $d3
    or a                                          ; $5f41: $b7
    rla                                           ; $5f42: $17
    ld [$7da1], a                                 ; $5f43: $ea $a1 $7d
    set 2, d                                      ; $5f46: $cb $d2
    dec l                                         ; $5f48: $2d
    add sp, -$2a                                  ; $5f49: $e8 $d6
    rrca                                          ; $5f4b: $0f
    ld sp, hl                                     ; $5f4c: $f9
    sbc a                                         ; $5f4d: $9f
    call nc, Call_06f_50e4                        ; $5f4e: $d4 $e4 $50
    scf                                           ; $5f51: $37
    and $97                                       ; $5f52: $e6 $97
    rst $00                                       ; $5f54: $c7
    sub $cb                                       ; $5f55: $d6 $cb
    ld d, d                                       ; $5f57: $52
    inc c                                         ; $5f58: $0c
    scf                                           ; $5f59: $37
    jp c, $6240                                   ; $5f5a: $da $40 $62

    xor c                                         ; $5f5d: $a9
    ld de, $347f                                  ; $5f5e: $11 $7f $34
    ld [hl-], a                                   ; $5f61: $32
    ld b, a                                       ; $5f62: $47
    ld h, h                                       ; $5f63: $64
    ccf                                           ; $5f64: $3f
    or l                                          ; $5f65: $b5
    ld c, c                                       ; $5f66: $49
    ld b, d                                       ; $5f67: $42
    ld e, b                                       ; $5f68: $58
    and a                                         ; $5f69: $a7
    add c                                         ; $5f6a: $81
    call nz, Call_000_254e                        ; $5f6b: $c4 $4e $25
    and h                                         ; $5f6e: $a4
    ld a, b                                       ; $5f6f: $78
    call z, $d4a6                                 ; $5f70: $cc $a6 $d4
    adc b                                         ; $5f73: $88
    ccf                                           ; $5f74: $3f
    ld a, d                                       ; $5f75: $7a
    ld c, d                                       ; $5f76: $4a
    jr nc, jr_06f_5f08                            ; $5f77: $30 $8f

    db $ec                                        ; $5f79: $ec
    ld h, a                                       ; $5f7a: $67
    dec sp                                        ; $5f7b: $3b
    nop                                           ; $5f7c: $00
    ld d, a                                       ; $5f7d: $57
    add $4d                                       ; $5f7e: $c6 $4d
    cpl                                           ; $5f80: $2f
    inc [hl]                                      ; $5f81: $34
    sub b                                         ; $5f82: $90
    ret c                                         ; $5f83: $d8

    rst $38                                       ; $5f84: $ff
    ret z                                         ; $5f85: $c8

    inc sp                                        ; $5f86: $33
    xor l                                         ; $5f87: $ad
    ld b, d                                       ; $5f88: $42
    ld c, b                                       ; $5f89: $48
    ld d, a                                       ; $5f8a: $57
    adc a                                         ; $5f8b: $8f
    ld a, [c]                                     ; $5f8c: $f2
    sub $d2                                       ; $5f8d: $d6 $d2
    ld a, b                                       ; $5f8f: $78
    sub [hl]                                      ; $5f90: $96
    push hl                                       ; $5f91: $e5
    ld b, d                                       ; $5f92: $42
    db $fd                                        ; $5f93: $fd
    db $f4                                        ; $5f94: $f4
    sbc l                                         ; $5f95: $9d
    ld de, $1bcd                                  ; $5f96: $11 $cd $1b
    dec a                                         ; $5f99: $3d
    ld c, a                                       ; $5f9a: $4f
    sbc l                                         ; $5f9b: $9d
    jp z, $a171                                   ; $5f9c: $ca $71 $a1

    ld [hl], c                                    ; $5f9f: $71
    push de                                       ; $5fa0: $d5
    or e                                          ; $5fa1: $b3
    ret                                           ; $5fa2: $c9


    push af                                       ; $5fa3: $f5
    ld h, h                                       ; $5fa4: $64
    inc a                                         ; $5fa5: $3c
    ld c, l                                       ; $5fa6: $4d
    inc bc                                        ; $5fa7: $03
    adc c                                         ; $5fa8: $89
    sub l                                         ; $5fa9: $95
    sub e                                         ; $5faa: $93
    push bc                                       ; $5fab: $c5
    sub h                                         ; $5fac: $94
    xor e                                         ; $5fad: $ab
    add hl, sp                                    ; $5fae: $39
    cp c                                          ; $5faf: $b9
    ld a, [bc]                                    ; $5fb0: $0a
    ld h, c                                       ; $5fb1: $61

jr_06f_5fb2:
    call $e453                                    ; $5fb2: $cd $53 $e4
    ld l, c                                       ; $5fb5: $69
    ld [$f855], sp                                ; $5fb6: $08 $55 $f8
    add hl, hl                                    ; $5fb9: $29
    ld c, e                                       ; $5fba: $4b
    rla                                           ; $5fbb: $17
    ld a, [de]                                    ; $5fbc: $1a
    dec [hl]                                      ; $5fbd: $35
    ld [hl], d                                    ; $5fbe: $72
    dec a                                         ; $5fbf: $3d
    ld sp, $df45                                  ; $5fc0: $31 $45 $df
    ld c, [hl]                                    ; $5fc3: $4e
    ld c, [hl]                                    ; $5fc4: $4e
    cp b                                          ; $5fc5: $b8
    db $d3                                        ; $5fc6: $d3
    adc a                                         ; $5fc7: $8f
    or c                                          ; $5fc8: $b1
    ld hl, $3d0c                                  ; $5fc9: $21 $0c $3d
    dec h                                         ; $5fcc: $25
    sbc b                                         ; $5fcd: $98
    add a                                         ; $5fce: $87
    ld [hl], l                                    ; $5fcf: $75
    cp d                                          ; $5fd0: $ba
    ld l, l                                       ; $5fd1: $6d
    ld e, e                                       ; $5fd2: $5b
    ld hl, $82ce                                  ; $5fd3: $21 $ce $82
    ld d, d                                       ; $5fd6: $52
    inc bc                                        ; $5fd7: $03
    adc c                                         ; $5fd8: $89
    rla                                           ; $5fd9: $17
    or c                                          ; $5fda: $b1
    dec e                                         ; $5fdb: $1d
    rst $28                                       ; $5fdc: $ef
    ld h, $98                                     ; $5fdd: $26 $98
    add a                                         ; $5fdf: $87
    ld [hl], l                                    ; $5fe0: $75
    ld a, [de]                                    ; $5fe1: $1a
    ld c, b                                       ; $5fe2: $48
    ld h, a                                       ; $5fe3: $67
    ld l, a                                       ; $5fe4: $6f
    cp h                                          ; $5fe5: $bc
    ld [hl], c                                    ; $5fe6: $71
    nop                                           ; $5fe7: $00
    rra                                           ; $5fe8: $1f
    and a                                         ; $5fe9: $a7
    adc e                                         ; $5fea: $8b
    ld [hl], b                                    ; $5feb: $70
    add d                                         ; $5fec: $82
    cp $47                                        ; $5fed: $fe $47
    sbc [hl]                                      ; $5fef: $9e
    ld l, c                                       ; $5ff0: $69
    xor c                                         ; $5ff1: $a9
    pop af                                        ; $5ff2: $f1
    ld [hl], a                                    ; $5ff3: $77
    xor d                                         ; $5ff4: $aa
    xor h                                         ; $5ff5: $ac
    ld h, e                                       ; $5ff6: $63
    ld h, h                                       ; $5ff7: $64
    or $53                                        ; $5ff8: $f6 $53
    cp d                                          ; $5ffa: $ba
    jp z, $0a59                                   ; $5ffb: $ca $59 $0a

    ld l, l                                       ; $5ffe: $6d
    jr nz, jr_06f_5fb2                            ; $5fff: $20 $b1

    ld sp, hl                                     ; $6001: $f9
    ld [hl], a                                    ; $6002: $77
    xor d                                         ; $6003: $aa
    cp a                                          ; $6004: $bf
    ld d, e                                       ; $6005: $53
    rst $08                                       ; $6006: $cf
    ld l, d                                       ; $6007: $6a
    ld b, d                                       ; $6008: $42
    push hl                                       ; $6009: $e5
    db $e4                                        ; $600a: $e4
    adc b                                         ; $600b: $88
    xor l                                         ; $600c: $ad
    rst $20                                       ; $600d: $e7
    ld a, [de]                                    ; $600e: $1a
    ld c, b                                       ; $600f: $48
    cp h                                          ; $6010: $bc
    ld [$0457], sp                                ; $6011: $08 $57 $04
    ld [de], a                                    ; $6014: $12
    ld [hl], a                                    ; $6015: $77
    ld d, [hl]                                    ; $6016: $56
    ld b, d                                       ; $6017: $42
    adc d                                         ; $6018: $8a
    rst $00                                       ; $6019: $c7
    ld l, h                                       ; $601a: $6c
    jp z, $0352                                   ; $601b: $ca $52 $03

    adc c                                         ; $601e: $89
    rla                                           ; $601f: $17
    pop hl                                        ; $6020: $e1
    ld a, [hl-]                                   ; $6021: $3a
    dec c                                         ; $6022: $0d
    inc h                                         ; $6023: $24
    sub [hl]                                      ; $6024: $96
    dec sp                                        ; $6025: $3b
    ld c, e                                       ; $6026: $4b
    adc l                                         ; $6027: $8d
    pop bc                                        ; $6028: $c1
    dec a                                         ; $6029: $3d
    dec h                                         ; $602a: $25
    sbc b                                         ; $602b: $98
    ld b, a                                       ; $602c: $47
    or $d3                                        ; $602d: $f6 $d3
    ld l, l                                       ; $602f: $6d
    db $db                                        ; $6030: $db
    cp d                                          ; $6031: $ba
    inc [hl]                                      ; $6032: $34
    ld c, [hl]                                    ; $6033: $4e
    cpl                                           ; $6034: $2f
    ld d, h                                       ; $6035: $54
    adc $52                                       ; $6036: $ce $52
    call nc, Call_06f_434f                        ; $6038: $d4 $4f $43
    dec de                                        ; $603b: $1b
    ld de, $c755                                  ; $603c: $11 $55 $c7
    ld a, [$7276]                                 ; $603f: $fa $76 $72
    jp nz, Jump_06f_7e9d                          ; $6042: $c2 $9d $7e

    adc h                                         ; $6045: $8c
    sub l                                         ; $6046: $95
    db $e3                                        ; $6047: $e3
    ld a, [hl-]                                   ; $6048: $3a
    db $fd                                        ; $6049: $fd
    ld l, b                                       ; $604a: $68
    ret                                           ; $604b: $c9


    reti                                          ; $604c: $d9


    sub c                                         ; $604d: $91
    ld a, [$0ece]                                 ; $604e: $fa $ce $0e
    rst $00                                       ; $6051: $c7
    ld a, l                                       ; $6052: $7d
    dec sp                                        ; $6053: $3b
    nop                                           ; $6054: $00
    rst $20                                       ; $6055: $e7
    add hl, sp                                    ; $6056: $39
    cp $4e                                        ; $6057: $fe $4e
    inc hl                                        ; $6059: $23
    ld e, l                                       ; $605a: $5d
    or c                                          ; $605b: $b1
    sbc a                                         ; $605c: $9f
    jp nc, Jump_06f_5705                          ; $605d: $d2 $05 $57

    add hl, hl                                    ; $6060: $29
    add [hl]                                      ; $6061: $86
    add e                                         ; $6062: $83
    sbc a                                         ; $6063: $9f
    ld a, [hl]                                    ; $6064: $7e
    or h                                          ; $6065: $b4
    db $e4                                        ; $6066: $e4
    db $ec                                        ; $6067: $ec
    ld c, b                                       ; $6068: $48
    ld a, l                                       ; $6069: $7d
    ld h, a                                       ; $606a: $67
    add a                                         ; $606b: $87
    db $e3                                        ; $606c: $e3
    ld e, [hl]                                    ; $606d: $5e
    rst $00                                       ; $606e: $c7
    cp b                                          ; $606f: $b8
    db $fc                                        ; $6070: $fc
    inc [hl]                                      ; $6071: $34
    and e                                         ; $6072: $a3
    rst $18                                       ; $6073: $df
    rst $08                                       ; $6074: $cf
    add hl, bc                                    ; $6075: $09
    ld e, $82                                     ; $6076: $1e $82
    ld e, [hl]                                    ; $6078: $5e
    ld a, b                                       ; $6079: $78
    db $e3                                        ; $607a: $e3
    nop                                           ; $607b: $00
    rra                                           ; $607c: $1f
    db $fd                                        ; $607d: $fd
    ld c, [hl]                                    ; $607e: $4e
    db $fd                                        ; $607f: $fd
    ld [hl-], a                                   ; $6080: $32
    xor [hl]                                      ; $6081: $ae
    ld a, [hl-]                                   ; $6082: $3a
    inc l                                         ; $6083: $2c
    ld l, l                                       ; $6084: $6d
    ld [hl], d                                    ; $6085: $72
    ld l, b                                       ; $6086: $68
    adc b                                         ; $6087: $88
    dec e                                         ; $6088: $1d
    ld a, a                                       ; $6089: $7f
    jp $03a5                                      ; $608a: $c3 $a5 $03


    rst $10                                       ; $608d: $d7
    adc l                                         ; $608e: $8d
    ld [hl], d                                    ; $608f: $72
    add hl, hl                                    ; $6090: $29
    call c, $f368                                 ; $6091: $dc $68 $f3
    ld l, b                                       ; $6094: $68
    ld de, $551a                                  ; $6095: $11 $1a $55
    ld h, c                                       ; $6098: $61
    ld h, l                                       ; $6099: $65
    sbc c                                         ; $609a: $99
    push hl                                       ; $609b: $e5
    db $e4                                        ; $609c: $e4
    ld l, b                                       ; $609d: $68
    or b                                          ; $609e: $b0
    ld e, [hl]                                    ; $609f: $5e
    and l                                         ; $60a0: $a5
    cp c                                          ; $60a1: $b9
    dec [hl]                                      ; $60a2: $35
    sbc c                                         ; $60a3: $99
    add d                                         ; $60a4: $82
    ld e, [hl]                                    ; $60a5: $5e
    add l                                         ; $60a6: $85
    reti                                          ; $60a7: $d9


    ld c, a                                       ; $60a8: $4f
    ld e, e                                       ; $60a9: $5b
    ld l, a                                       ; $60aa: $6f
    ld b, b                                       ; $60ab: $40
    ld c, b                                       ; $60ac: $48
    scf                                           ; $60ad: $37
    jp c, $6240                                   ; $60ae: $da $40 $62

    cp c                                          ; $60b1: $b9
    and e                                         ; $60b2: $a3
    call nc, Call_06f_5c18                        ; $60b3: $d4 $18 $5c
    cp d                                          ; $60b6: $ba
    ld h, d                                       ; $60b7: $62

jr_06f_60b8:
    ccf                                           ; $60b8: $3f
    dec h                                         ; $60b9: $25
    rst $10                                       ; $60ba: $d7
    dec a                                         ; $60bb: $3d
    sbc l                                         ; $60bc: $9d
    ld h, b                                       ; $60bd: $60
    push af                                       ; $60be: $f5
    db $d3                                        ; $60bf: $d3
    ret nc                                        ; $60c0: $d0

    sub [hl]                                      ; $60c1: $96
    db $e3                                        ; $60c2: $e3
    or d                                          ; $60c3: $b2
    add hl, hl                                    ; $60c4: $29
    or d                                          ; $60c5: $b2
    add a                                         ; $60c6: $87
    ld e, l                                       ; $60c7: $5d
    ld a, [hl-]                                   ; $60c8: $3a
    nop                                           ; $60c9: $00
    rra                                           ; $60ca: $1f
    rst $30                                       ; $60cb: $f7
    add [hl]                                      ; $60cc: $86
    ld l, l                                       ; $60cd: $6d
    ld a, l                                       ; $60ce: $7d
    ld h, a                                       ; $60cf: $67
    db $ed                                        ; $60d0: $ed

Call_06f_60d1:
    ld d, d                                       ; $60d1: $52
    call c, $b329                                 ; $60d2: $dc $29 $b3
    sbc h                                         ; $60d5: $9c
    inc e                                         ; $60d6: $1c
    ld l, l                                       ; $60d7: $6d
    ld d, d                                       ; $60d8: $52
    inc sp                                        ; $60d9: $33
    ld a, [de]                                    ; $60da: $1a
    rst $00                                       ; $60db: $c7
    adc h                                         ; $60dc: $8c
    push af                                       ; $60dd: $f5
    inc l                                         ; $60de: $2c
    inc [hl]                                      ; $60df: $34
    jp c, Jump_06f_71e4                           ; $60e0: $da $e4 $71

    dec bc                                        ; $60e3: $0b
    sub a                                         ; $60e4: $97
    ld c, $57                                     ; $60e5: $0e $57
    ld h, c                                       ; $60e7: $61
    or $d3                                        ; $60e8: $f6 $d3
    and l                                         ; $60ea: $a5
    sbc [hl]                                      ; $60eb: $9e
    ld l, e                                       ; $60ec: $6b
    call nz, $8d1f                                ; $60ed: $c4 $1f $8d
    call z, $d911                                 ; $60f0: $cc $11 $d9
    ld c, a                                       ; $60f3: $4f
    pop af                                        ; $60f4: $f1
    ld e, a                                       ; $60f5: $5f
    ld a, [bc]                                    ; $60f6: $0a
    db $eb                                        ; $60f7: $eb
    ld a, a                                       ; $60f8: $7f
    db $e4                                        ; $60f9: $e4
    sbc c                                         ; $60fa: $99
    ld a, [bc]                                    ; $60fb: $0a
    ld a, d                                       ; $60fc: $7a
    dec c                                         ; $60fd: $0d
    cp e                                          ; $60fe: $bb
    ld l, b                                       ; $60ff: $68
    ld a, [hl]                                    ; $6100: $7e
    xor d                                         ; $6101: $aa
    ld e, a                                       ; $6102: $5f
    xor d                                         ; $6103: $aa
    ld l, h                                       ; $6104: $6c
    jr nz, jr_06f_60b8                            ; $6105: $20 $b1

    rst $38                                       ; $6107: $ff
    sub c                                         ; $6108: $91
    ld h, a                                       ; $6109: $67
    adc l                                         ; $610a: $8d
    dec hl                                        ; $610b: $2b
    adc e                                         ; $610c: $8b
    pop de                                        ; $610d: $d1
    db $e4                                        ; $610e: $e4
    ld [$a70d], a                                 ; $610f: $ea $0d $a7
    ld l, [hl]                                    ; $6112: $6e
    db $db                                        ; $6113: $db
    halt                                          ; $6114: $76
    nop                                           ; $6115: $00
    scf                                           ; $6116: $37
    call nz, Call_06f_4be2                        ; $6117: $c4 $e2 $4b
    rlca                                          ; $611a: $07
    scf                                           ; $611b: $37
    ld b, a                                       ; $611c: $47
    sbc [hl]                                      ; $611d: $9e
    ld l, c                                       ; $611e: $69
    push hl                                       ; $611f: $e5
    db $e4                                        ; $6120: $e4
    ld [$2b83], sp                                ; $6121: $08 $83 $2b
    and [hl]                                      ; $6124: $a6
    scf                                           ; $6125: $37
    ld l, h                                       ; $6126: $6c
    db $eb                                        ; $6127: $eb
    dec [hl]                                      ; $6128: $35
    db $ec                                        ; $6129: $ec
    and d                                         ; $612a: $a2
    ld sp, hl                                     ; $612b: $f9
    xor c                                         ; $612c: $a9
    ret                                           ; $612d: $c9


    and c                                         ; $612e: $a1
    ld [c], a                                     ; $612f: $e2
    and l                                         ; $6130: $a5
    pop af                                        ; $6131: $f1
    ld e, $5b                                     ; $6132: $1e $5b
    xor b                                         ; $6134: $a8
    ld b, a                                       ; $6135: $47
    dec h                                         ; $6136: $25
    ld l, h                                       ; $6137: $6c
    and h                                         ; $6138: $a4
    ld a, b                                       ; $6139: $78
    ld h, l                                       ; $613a: $65
    ld sp, $23aa                                  ; $613b: $31 $aa $23
    inc [hl]                                      ; $613e: $34
    ld [hl], $b9                                  ; $613f: $36 $b9
    ld a, d                                       ; $6141: $7a
    jp Jump_06f_77e9                              ; $6142: $c3 $e9 $77


    ld a, [de]                                    ; $6145: $1a
    jp nz, $b8d0                                  ; $6146: $c2 $d0 $b8

    inc l                                         ; $6149: $2c
    ld hl, sp-$77                                 ; $614a: $f8 $89
    ld a, l                                       ; $614c: $7d
    ld [$0951], a                                 ; $614d: $ea $51 $09
    add a                                         ; $6150: $87
    or d                                          ; $6151: $b2
    adc [hl]                                      ; $6152: $8e
    pop af                                        ; $6153: $f1
    db $ec                                        ; $6154: $ec
    adc c                                         ; $6155: $89
    ld a, l                                       ; $6156: $7d
    ld c, d                                       ; $6157: $4a
    ld d, a                                       ; $6158: $57
    add h                                         ; $6159: $84
    ret                                           ; $615a: $c9


    ld b, [hl]                                    ; $615b: $46
    or a                                          ; $615c: $b7
    sbc [hl]                                      ; $615d: $9e
    and a                                         ; $615e: $a7
    ld a, [hl]                                    ; $615f: $7e
    rra                                           ; $6160: $1f
    call c, Call_06f_4229                         ; $6161: $dc $29 $42
    ld h, h                                       ; $6164: $64
    ld sp, $d6d7                                  ; $6165: $31 $d7 $d6
    di                                            ; $6168: $f3
    ld a, [hl]                                    ; $6169: $7e
    call nz, $daff                                ; $616a: $c4 $ff $da
    ld [hl], a                                    ; $616d: $77
    ld d, $d2                                     ; $616e: $16 $d2
    add sp, $57                                   ; $6170: $e8 $57
    sbc h                                         ; $6172: $9c
    call nc, Call_000_1dcc                        ; $6173: $d4 $cc $1d
    adc l                                         ; $6176: $8d
    ld [hl], b                                    ; $6177: $70
    jp nz, Jump_06f_4e0b                          ; $6178: $c2 $0b $4e

    ld d, b                                       ; $617b: $50
    sub $a8                                       ; $617c: $d6 $a8
    or e                                          ; $617e: $b3
    rst $38                                       ; $617f: $ff
    sbc c                                         ; $6180: $99
    xor d                                         ; $6181: $aa
    db $ec                                        ; $6182: $ec
    adc $3f                                       ; $6183: $ce $3f
    ld [hl], d                                    ; $6185: $72
    add h                                         ; $6186: $84
    ld d, l                                       ; $6187: $55
    adc [hl]                                      ; $6188: $8e
    sbc e                                         ; $6189: $9b
    add $f1                                       ; $618a: $c6 $f1
    and e                                         ; $618c: $a3
    dec e                                         ; $618d: $1d
    db $ed                                        ; $618e: $ed
    and h                                         ; $618f: $a4
    ld l, b                                       ; $6190: $68
    and e                                         ; $6191: $a3
    db $db                                        ; $6192: $db
    ld bc, $a0d7                                  ; $6193: $01 $d7 $a0
    db $dd                                        ; $6196: $dd
    or [hl]                                       ; $6197: $b6
    db $ed                                        ; $6198: $ed
    nop                                           ; $6199: $00
    rra                                           ; $619a: $1f
    ld l, e                                       ; $619b: $6b
    and e                                         ; $619c: $a3
    sbc l                                         ; $619d: $9d
    ld l, c                                       ; $619e: $69
    rst $38                                       ; $619f: $ff
    cp a                                          ; $61a0: $bf
    db $d3                                        ; $61a1: $d3
    sub b                                         ; $61a2: $90
    daa                                           ; $61a3: $27
    ld e, b                                       ; $61a4: $58
    sub e                                         ; $61a5: $93
    ld b, e                                       ; $61a6: $43
    dec a                                         ; $61a7: $3d
    inc hl                                        ; $61a8: $23
    di                                            ; $61a9: $f3
    push bc                                       ; $61aa: $c5
    rst $18                                       ; $61ab: $df
    add hl, hl                                    ; $61ac: $29
    ei                                            ; $61ad: $fb

jr_06f_61ae:
    sbc a                                         ; $61ae: $9f
    ld d, h                                       ; $61af: $54
    ld c, a                                       ; $61b0: $4f
    sub l                                         ; $61b1: $95
    sub e                                         ; $61b2: $93
    inc hl                                        ; $61b3: $23
    xor h                                         ; $61b4: $ac
    rst $08                                       ; $61b5: $cf
    ccf                                           ; $61b6: $3f
    push de                                       ; $61b7: $d5
    ld [hl], b                                    ; $61b8: $70
    ld [hl], d                                    ; $61b9: $72
    inc e                                         ; $61ba: $1c
    xor l                                         ; $61bb: $ad
    ld b, a                                       ; $61bc: $47
    rst $18                                       ; $61bd: $df
    or l                                          ; $61be: $b5
    dec h                                         ; $61bf: $25
    ld e, d                                       ; $61c0: $5a
    ld sp, hl                                     ; $61c1: $f9
    ld e, $5b                                     ; $61c2: $1e $5b
    add sp, -$4a                                  ; $61c4: $e8 $b6
    ld l, l                                       ; $61c6: $6d
    ld a, l                                       ; $61c7: $7d
    cp $a9                                        ; $61c8: $fe $a9
    ld c, d                                       ; $61ca: $4a
    ld a, b                                       ; $61cb: $78
    inc [hl]                                      ; $61cc: $34
    cp c                                          ; $61cd: $b9
    ld c, e                                       ; $61ce: $4b
    rlca                                          ; $61cf: $07
    rst $08                                       ; $61d0: $cf
    ccf                                           ; $61d1: $3f
    push de                                       ; $61d2: $d5
    ld [hl], b                                    ; $61d3: $70
    ld [hl], d                                    ; $61d4: $72
    inc e                                         ; $61d5: $1c
    xor l                                         ; $61d6: $ad
    add h                                         ; $61d7: $84
    ld b, a                                       ; $61d8: $47
    sub e                                         ; $61d9: $93
    ld a, e                                       ; $61da: $7b
    db $e3                                        ; $61db: $e3
    jp nc, $9701                                  ; $61dc: $d2 $01 $97

    db $eb                                        ; $61df: $eb
    add hl, de                                    ; $61e0: $19
    sbc c                                         ; $61e1: $99
    cpl                                           ; $61e2: $2f
    cp $4e                                        ; $61e3: $fe $4e
    dec a                                         ; $61e5: $3d
    ei                                            ; $61e6: $fb
    rra                                           ; $61e7: $1f
    ld a, c                                       ; $61e8: $79
    and [hl]                                      ; $61e9: $a6
    sub l                                         ; $61ea: $95
    db $e3                                        ; $61eb: $e3
    ld a, b                                       ; $61ec: $78
    ld de, $4385                                  ; $61ed: $11 $85 $43
    ld d, $ff                                     ; $61f0: $16 $ff
    or $4e                                        ; $61f2: $f6 $4e
    db $ed                                        ; $61f4: $ed
    ld a, a                                       ; $61f5: $7f
    push hl                                       ; $61f6: $e5
    ret z                                         ; $61f7: $c8

    or d                                          ; $61f8: $b2
    pop de                                        ; $61f9: $d1
    adc $b4                                       ; $61fa: $ce $b4
    ld [c], a                                     ; $61fc: $e2
    ld sp, $d6e8                                  ; $61fd: $31 $e8 $d6
    res 4, a                                      ; $6200: $cb $a7
    inc b                                         ; $6202: $04
    di                                            ; $6203: $f3
    ld [hl], h                                    ; $6204: $74
    sbc l                                         ; $6205: $9d
    sbc $b0                                       ; $6206: $de $b0
    xor l                                         ; $6208: $ad
    rst $28                                       ; $6209: $ef
    xor h                                         ; $620a: $ac
    ld e, l                                       ; $620b: $5d
    adc d                                         ; $620c: $8a
    sbc e                                         ; $620d: $9b
    and a                                         ; $620e: $a7
    adc d                                         ; $620f: $8a
    ld d, e                                       ; $6210: $53
    ld a, [$7a9d]                                 ; $6211: $fa $9d $7a
    sub [hl]                                      ; $6214: $96
    add hl, sp                                    ; $6215: $39
    ld a, [de]                                    ; $6216: $1a
    inc a                                         ; $6217: $3c
    or [hl]                                       ; $6218: $b6
    ld e, [hl]                                    ; $6219: $5e
    ld a, $8d                                     ; $621a: $3e $8d
    and c                                         ; $621c: $a1
    rst $38                                       ; $621d: $ff
    reti                                          ; $621e: $d9


    inc hl                                        ; $621f: $23
    ld e, l                                       ; $6220: $5d
    ld b, e                                       ; $6221: $43
    jr jr_06f_61ae                                ; $6222: $18 $8a

    ld c, d                                       ; $6224: $4a
    jr c, jr_06f_622f                             ; $6225: $38 $08

    ld a, [de]                                    ; $6227: $1a
    rst $00                                       ; $6228: $c7
    adc a                                         ; $6229: $8f
    or $3f                                        ; $622a: $f6 $3f
    ld a, [c]                                     ; $622c: $f2
    ld c, h                                       ; $622d: $4c
    or a                                          ; $622e: $b7

jr_06f_622f:
    ld a, [hl]                                    ; $622f: $7e
    sub h                                         ; $6230: $94
    or d                                          ; $6231: $b2
    ld b, h                                       ; $6232: $44
    sub l                                         ; $6233: $95
    add hl, sp                                    ; $6234: $39
    xor [hl]                                      ; $6235: $ae
    ld b, [hl]                                    ; $6236: $46
    db $e4                                        ; $6237: $e4
    adc b                                         ; $6238: $88
    cp $69                                        ; $6239: $fe $69
    and a                                         ; $623b: $a7
    ret                                           ; $623c: $c9


    ld h, d                                       ; $623d: $62
    call nc, $d8b3                                ; $623e: $d4 $b3 $d8
    ld d, e                                       ; $6241: $53
    ld e, $ad                                     ; $6242: $1e $ad
    ld b, a                                       ; $6244: $47
    rst $18                                       ; $6245: $df
    or l                                          ; $6246: $b5
    dec h                                         ; $6247: $25
    ld e, d                                       ; $6248: $5a
    ld sp, hl                                     ; $6249: $f9
    ld e, $5b                                     ; $624a: $1e $5b
    jr z, jr_06f_62c0                             ; $624c: $28 $72

    and h                                         ; $624e: $a4
    ld l, [hl]                                    ; $624f: $6e
    rlca                                          ; $6250: $07
    rst $20                                       ; $6251: $e7
    ld a, [de]                                    ; $6252: $1a
    ld e, c                                       ; $6253: $59
    pop de                                        ; $6254: $d1
    xor h                                         ; $6255: $ac
    ld c, [hl]                                    ; $6256: $4e
    jp $5635                                      ; $6257: $c3 $35 $56


    cp a                                          ; $625a: $bf
    ld d, b                                       ; $625b: $50
    adc a                                         ; $625c: $8f
    cp d                                          ; $625d: $ba
    sub l                                         ; $625e: $95
    push bc                                       ; $625f: $c5
    add sp, $7f                                   ; $6260: $e8 $7f
    ld a, c                                       ; $6262: $79
    ld l, h                                       ; $6263: $6c
    db $fd                                        ; $6264: $fd
    ld l, h                                       ; $6265: $6c
    db $fc                                        ; $6266: $fc
    ld l, b                                       ; $6267: $68
    dec d                                         ; $6268: $15
    jp nz, $d705                                  ; $6269: $c2 $05 $d7

    ld b, b                                       ; $626c: $40
    ld h, d                                       ; $626d: $62
    di                                            ; $626e: $f3
    dec a                                         ; $626f: $3d
    jp c, $e690                                   ; $6270: $da $90 $e6

    jp hl                                         ; $6273: $e9


    ld b, [hl]                                    ; $6274: $46
    ei                                            ; $6275: $fb
    db $f4                                        ; $6276: $f4
    di                                            ; $6277: $f3
    ld c, a                                       ; $6278: $4f
    dec [hl]                                      ; $6279: $35
    sbc h                                         ; $627a: $9c
    inc e                                         ; $627b: $1c
    ld b, a                                       ; $627c: $47
    dec de                                        ; $627d: $1b
    jp nz, $f450                                  ; $627e: $c2 $50 $f4

    ld e, l                                       ; $6281: $5d
    ld e, e                                       ; $6282: $5b
    and d                                         ; $6283: $a2
    sub l                                         ; $6284: $95
    rst $28                                       ; $6285: $ef
    or c                                          ; $6286: $b1
    add l                                         ; $6287: $85
    db $ed                                        ; $6288: $ed
    nop                                           ; $6289: $00
    sub a                                         ; $628a: $97
    db $e3                                        ; $628b: $e3
    add l                                         ; $628c: $85
    adc [hl]                                      ; $628d: $8e
    ld d, $7b                                     ; $628e: $16 $7b
    jp z, $f5a3                                   ; $6290: $ca $a3 $f5

    add sp, -$6b                                  ; $6293: $e8 $95
    or c                                          ; $6295: $b1
    rst $38                                       ; $6296: $ff
    jp z, $cbd8                                   ; $6297: $ca $d8 $cb

    ld a, d                                       ; $629a: $7a
    db $f4                                        ; $629b: $f4
    jp $c224                                      ; $629c: $c3 $24 $c2


    inc de                                        ; $629f: $13
    ld a, e                                       ; $62a0: $7b
    ld [de], a                                    ; $62a1: $12
    and c                                         ; $62a2: $a1
    call nc, Call_000_3bf8                        ; $62a3: $d4 $f8 $3b
    cp l                                          ; $62a6: $bd
    adc l                                         ; $62a7: $8d
    ld a, h                                       ; $62a8: $7c
    add d                                         ; $62a9: $82
    rra                                           ; $62aa: $1f
    xor l                                         ; $62ab: $ad
    inc e                                         ; $62ac: $1c
    ld d, a                                       ; $62ad: $57
    db $f4                                        ; $62ae: $f4
    call nz, $b91c                                ; $62af: $c4 $1c $b9
    push af                                       ; $62b2: $f5
    ld a, h                                       ; $62b3: $7c
    and a                                         ; $62b4: $a7
    ld d, $52                                     ; $62b5: $16 $52
    adc h                                         ; $62b7: $8c
    ccf                                           ; $62b8: $3f
    ld e, h                                       ; $62b9: $5c
    inc bc                                        ; $62ba: $03
    adc c                                         ; $62bb: $89
    call Call_06f_68f7                            ; $62bc: $cd $f7 $68
    cpl                                           ; $62bf: $2f

jr_06f_62c0:
    jr @-$22                                      ; $62c0: $18 $dc

    ld l, b                                       ; $62c2: $68
    pop de                                        ; $62c3: $d1
    ei                                            ; $62c4: $fb
    di                                            ; $62c5: $f3
    sub d                                         ; $62c6: $92
    xor b                                         ; $62c7: $a8
    add h                                         ; $62c8: $84
    and d                                         ; $62c9: $a2
    add c                                         ; $62ca: $81
    call nz, $e386                                ; $62cb: $c4 $86 $e3
    ld l, c                                       ; $62ce: $69
    dec bc                                        ; $62cf: $0b
    adc l                                         ; $62d0: $8d
    bit 4, b                                      ; $62d1: $cb $60
    ld b, l                                       ; $62d3: $45
    inc hl                                        ; $62d4: $23
    ld l, $a2                                     ; $62d5: $2e $a2
    ld e, $95                                     ; $62d7: $1e $95
    ld d, b                                       ; $62d9: $50
    call nc, Call_000_37a3                        ; $62da: $d4 $a3 $37
    ld h, $2b                                     ; $62dd: $26 $2b
    ld l, l                                       ; $62df: $6d
    ld h, l                                       ; $62e0: $65
    ld l, h                                       ; $62e1: $6c
    ld a, l                                       ; $62e2: $7d
    ld l, e                                       ; $62e3: $6b
    sbc h                                         ; $62e4: $9c
    and b                                         ; $62e5: $a0
    sub c                                         ; $62e6: $91
    db $fd                                        ; $62e7: $fd
    di                                            ; $62e8: $f3
    ei                                            ; $62e9: $fb
    jp hl                                         ; $62ea: $e9


    ld e, $5c                                     ; $62eb: $1e $5c
    ld a, [hl-]                                   ; $62ed: $3a
    ld hl, $add6                                  ; $62ee: $21 $d6 $ad
    reti                                          ; $62f1: $d9


    ld c, $1f                                     ; $62f2: $0e $1f
    db $fd                                        ; $62f4: $fd
    ld c, [hl]                                    ; $62f5: $4e
    or a                                          ; $62f6: $b7
    ld l, l                                       ; $62f7: $6d
    ld l, e                                       ; $62f8: $6b
    cp $9d                                        ; $62f9: $fe $9d
    ld l, [hl]                                    ; $62fb: $6e
    db $db                                        ; $62fc: $db
    sub $49                                       ; $62fd: $d6 $49
    pop de                                        ; $62ff: $d1
    ret nc                                        ; $6300: $d0

    ccf                                           ; $6301: $3f
    ld l, a                                       ; $6302: $6f
    scf                                           ; $6303: $37
    rst $38                                       ; $6304: $ff
    adc [hl]                                      ; $6305: $8e
    and b                                         ; $6306: $a0
    pop hl                                        ; $6307: $e1
    ld e, b                                       ; $6308: $58
    ld b, l                                       ; $6309: $45
    ld hl, sp-$71                                 ; $630a: $f8 $8f
    ld [hl], l                                    ; $630c: $75
    db $db                                        ; $630d: $db
    or [hl]                                       ; $630e: $b6
    inc bc                                        ; $630f: $03
    rst $20                                       ; $6310: $e7
    xor d                                         ; $6311: $aa
    add sp, $7f                                   ; $6312: $e8 $7f
    ld l, [hl]                                    ; $6314: $6e
    ld [hl], a                                    ; $6315: $77
    db $db                                        ; $6316: $db
    or [hl]                                       ; $6317: $b6
    add [hl]                                      ; $6318: $86
    jr nc, jr_06f_6365                            ; $6319: $30 $4a

    halt                                          ; $631b: $76
    ld a, [de]                                    ; $631c: $1a
    jp c, $a888                                   ; $631d: $da $88 $a8

    ld a, [hl-]                                   ; $6320: $3a
    sub $4f                                       ; $6321: $d6 $4f
    jp nc, $e332                                  ; $6323: $d2 $32 $e3

    cp [hl]                                       ; $6326: $be
    dec e                                         ; $6327: $1d
    ld d, a                                       ; $6328: $57
    ld d, e                                       ; $6329: $53
    ld d, $09                                     ; $632a: $16 $09
    ld a, d                                       ; $632c: $7a
    or d                                          ; $632d: $b2
    ret                                           ; $632e: $c9


    ld [hl+], a                                   ; $632f: $22
    ld b, c                                       ; $6330: $41
    ld c, a                                       ; $6331: $4f
    ld h, [hl]                                    ; $6332: $66
    or [hl]                                       ; $6333: $b6
    dec e                                         ; $6334: $1d
    rst $20                                       ; $6335: $e7
    ld a, [de]                                    ; $6336: $1a
    add e                                         ; $6337: $83
    dec hl                                        ; $6338: $2b
    and h                                         ; $6339: $a4
    db $eb                                        ; $633a: $eb
    or [hl]                                       ; $633b: $b6
    ld l, l                                       ; $633c: $6d
    and l                                         ; $633d: $a5
    add $e0                                       ; $633e: $c6 $e0
    ld a, [bc]                                    ; $6340: $0a
    jp hl                                         ; $6341: $e9


    cp d                                          ; $6342: $ba
    ld l, l                                       ; $6343: $6d
    ld e, e                                       ; $6344: $5b
    sbc c                                         ; $6345: $99
    ld [$7197], a                                 ; $6346: $ea $97 $71
    ld [hl], l                                    ; $6349: $75
    db $db                                        ; $634a: $db
    or [hl]                                       ; $634b: $b6
    inc bc                                        ; $634c: $03

jr_06f_634d:
    rst $20                                       ; $634d: $e7
    xor e                                         ; $634e: $ab
    db $db                                        ; $634f: $db
    or [hl]                                       ; $6350: $b6
    push af                                       ; $6351: $f5
    ld a, [hl+]                                   ; $6352: $2a
    call $c9ad                                    ; $6353: $cd $ad $c9
    db $ec                                        ; $6356: $ec
    or [hl]                                       ; $6357: $b6
    ld l, l                                       ; $6358: $6d
    ld h, l                                       ; $6359: $65
    ld a, [hl+]                                   ; $635a: $2a
    inc h                                         ; $635b: $24
    add h                                         ; $635c: $84
    ld e, h                                       ; $635d: $5c
    push af                                       ; $635e: $f5
    db $ec                                        ; $635f: $ec
    and h                                         ; $6360: $a4
    rst $38                                       ; $6361: $ff
    or d                                          ; $6362: $b2
    ld a, [hl]                                    ; $6363: $7e
    sub d                                         ; $6364: $92

jr_06f_6365:
    sub [hl]                                      ; $6365: $96
    add hl, de                                    ; $6366: $19
    rst $30                                       ; $6367: $f7
    adc d                                         ; $6368: $8a
    or b                                          ; $6369: $b0
    inc hl                                        ; $636a: $23
    ei                                            ; $636b: $fb
    xor c                                         ; $636c: $a9
    inc e                                         ; $636d: $1c
    ld d, a                                       ; $636e: $57
    db $ec                                        ; $636f: $ec
    and a                                         ; $6370: $a7
    ld [hl], h                                    ; $6371: $74
    pop bc                                        ; $6372: $c1
    ld l, l                                       ; $6373: $6d
    dec a                                         ; $6374: $3d
    rst $18                                       ; $6375: $df
    reti                                          ; $6376: $d9


    db $10                                        ; $6377: $10
    ld b, [hl]                                    ; $6378: $46
    cp c                                          ; $6379: $b9
    ld d, b                                       ; $637a: $50
    jr c, jr_06f_63f7                             ; $637b: $38 $7a

    sbc e                                         ; $637d: $9b
    inc e                                         ; $637e: $1c
    pop hl                                        ; $637f: $e1
    ld h, a                                       ; $6380: $67
    dec sp                                        ; $6381: $3b
    nop                                           ; $6382: $00
    ld l, a                                       ; $6383: $6f
    di                                            ; $6384: $f3
    rst $08                                       ; $6385: $cf
    ld b, [hl]                                    ; $6386: $46
    ld e, d                                       ; $6387: $5a
    ld [hl], l                                    ; $6388: $75
    ld sp, hl                                     ; $6389: $f9
    jp hl                                         ; $638a: $e9


    db $f4                                        ; $638b: $f4
    ld b, [hl]                                    ; $638c: $46
    ld b, [hl]                                    ; $638d: $46
    ret z                                         ; $638e: $c8

    ld a, d                                       ; $638f: $7a
    ld [hl], $cf                                  ; $6390: $36 $cf
    ld a, a                                       ; $6392: $7f
    ld l, $1d                                     ; $6393: $2e $1d
    rst $20                                       ; $6395: $e7
    xor c                                         ; $6396: $a9
    sub b                                         ; $6397: $90
    ld [c], a                                     ; $6398: $e2
    ld l, c                                       ; $6399: $69
    jr nz, jr_06f_634d                            ; $639a: $20 $b1

    call c, Call_000_3fd9                         ; $639c: $dc $d9 $3f
    ld d, [hl]                                    ; $639f: $56
    push hl                                       ; $63a0: $e5
    db $e4                                        ; $63a1: $e4
    ld [$a62b], sp                                ; $63a2: $08 $2b $a6
    scf                                           ; $63a5: $37
    ld [hl-], a                                   ; $63a6: $32
    ld b, d                                       ; $63a7: $42
    ld d, [hl]                                    ; $63a8: $56
    adc [hl]                                      ; $63a9: $8e
    sbc e                                         ; $63aa: $9b
    add [hl]                                      ; $63ab: $86
    inc a                                         ; $63ac: $3c
    pop bc                                        ; $63ad: $c1
    adc d                                         ; $63ae: $8a
    ld e, [hl]                                    ; $63af: $5e
    and a                                         ; $63b0: $a7
    scf                                           ; $63b1: $37
    ld e, h                                       ; $63b2: $5c
    ld a, [hl-]                                   ; $63b3: $3a
    nop                                           ; $63b4: $00
    scf                                           ; $63b5: $37
    pop hl                                        ; $63b6: $e1
    ld b, [hl]                                    ; $63b7: $46
    dec de                                        ; $63b8: $1b
    jp c, Jump_06f_64c8                           ; $63b9: $da $c8 $64

    or b                                          ; $63bc: $b0
    cp [hl]                                       ; $63bd: $be
    sbc l                                         ; $63be: $9d
    sbc h                                         ; $63bf: $9c
    ld [hl], b                                    ; $63c0: $70
    and a                                         ; $63c1: $a7
    rra                                           ; $63c2: $1f
    db $e3                                        ; $63c3: $e3
    sub $f7                                       ; $63c4: $d6 $f7
    inc [hl]                                      ; $63c6: $34
    ld c, [hl]                                    ; $63c7: $4e
    cpl                                           ; $63c8: $2f
    ld [hl], h                                    ; $63c9: $74
    ld a, [de]                                    ; $63ca: $1a
    ld c, b                                       ; $63cb: $48
    xor h                                         ; $63cc: $ac
    rst $20                                       ; $63cd: $e7
    sbc a                                         ; $63ce: $9f
    halt                                          ; $63cf: $76
    scf                                           ; $63d0: $37
    call c, Call_000_2368                         ; $63d1: $dc $68 $23
    xor l                                         ; $63d4: $ad
    ld [hl+], a                                   ; $63d5: $22
    xor [hl]                                      ; $63d6: $ae
    jr c, @+$17                                   ; $63d7: $38 $15

    rlca                                          ; $63d9: $07
    ld d, a                                       ; $63da: $57
    cpl                                           ; $63db: $2f
    ret z                                         ; $63dc: $c8

    or h                                          ; $63dd: $b4
    adc a                                         ; $63de: $8f
    ld l, [hl]                                    ; $63df: $6e
    rlca                                          ; $63e0: $07
    rst $10                                       ; $63e1: $d7
    and b                                         ; $63e2: $a0
    call $d3bf                                    ; $63e3: $cd $bf $d3
    ld c, b                                       ; $63e6: $48
    scf                                           ; $63e7: $37
    jp c, $e6d0                                   ; $63e8: $da $d0 $e6

    rrca                                          ; $63eb: $0f
    cp l                                          ; $63ec: $bd
    call nc, $e6f3                                ; $63ed: $d4 $f3 $e6
    rst $18                                       ; $63f0: $df
    xor c                                         ; $63f1: $a9
    or d                                          ; $63f2: $b2
    call nc, $e240                                ; $63f3: $d4 $40 $e2
    ld b, l                                       ; $63f6: $45

jr_06f_63f7:
    ld [$ef9a], sp                                ; $63f7: $08 $9a $ef
    pop de                                        ; $63fa: $d1
    ld h, [hl]                                    ; $63fb: $66
    cp d                                          ; $63fc: $ba
    ld a, d                                       ; $63fd: $7a
    cp $ef                                        ; $63fe: $fe $ef
    add [hl]                                      ; $6400: $86
    dec de                                        ; $6401: $1b
    xor l                                         ; $6402: $ad
    ld b, d                                       ; $6403: $42
    ld c, b                                       ; $6404: $48
    xor e                                         ; $6405: $ab
    ld b, a                                       ; $6406: $47
    xor a                                         ; $6407: $af
    db $d3                                        ; $6408: $d3
    dec de                                        ; $6409: $1b
    sbc d                                         ; $640a: $9a
    jp hl                                         ; $640b: $e9


    ld [$77d9], a                                 ; $640c: $ea $d9 $77
    ld b, [hl]                                    ; $640f: $46
    inc [hl]                                      ; $6410: $34
    db $db                                        ; $6411: $db
    ld bc, $d637                                  ; $6412: $01 $37 $d6
    add hl, bc                                    ; $6415: $09
    xor $09                                       ; $6416: $ee $09
    rst $00                                       ; $6418: $c7
    xor l                                         ; $6419: $ad
    sub a                                         ; $641a: $97
    jp Jump_000_38d1                              ; $641b: $c3 $d1 $38


    dec c                                         ; $641e: $0d
    inc h                                         ; $641f: $24
    or $ff                                        ; $6420: $f6 $ff
    dec sp                                        ; $6422: $3b
    dec c                                         ; $6423: $0d
    sbc c                                         ; $6424: $99
    dec d                                         ; $6425: $15
    ld d, [hl]                                    ; $6426: $56
    sbc a                                         ; $6427: $9f
    and b                                         ; $6428: $a0
    db $fd                                        ; $6429: $fd
    di                                            ; $642a: $f3
    ld [hl], $b5                                  ; $642b: $36 $b5
    ret z                                         ; $642d: $c8

    sub c                                         ; $642e: $91
    ld e, d                                       ; $642f: $5a
    rst $08                                       ; $6430: $cf
    ld a, d                                       ; $6431: $7a
    ld [$e908], a                                 ; $6432: $ea $08 $e9
    add hl, hl                                    ; $6435: $29
    ld l, c                                       ; $6436: $69
    call $87f3                                    ; $6437: $cd $f3 $87
    ld h, e                                       ; $643a: $63
    adc [hl]                                      ; $643b: $8e
    inc l                                         ; $643c: $2c
    and [hl]                                      ; $643d: $a6
    add $53                                       ; $643e: $c6 $53
    jp c, $98e1                                   ; $6440: $da $e1 $98

    db $e3                                        ; $6443: $e3
    call nc, Call_06f_54a3                        ; $6444: $d4 $a3 $54
    add hl, sp                                    ; $6447: $39
    dec sp                                        ; $6448: $3b
    inc b                                         ; $6449: $04
    call $d3bf                                    ; $644a: $cd $bf $d3
    dec bc                                        ; $644d: $0b
    ld [hl], l                                    ; $644e: $75
    ld d, h                                       ; $644f: $54
    scf                                           ; $6450: $37
    ld l, a                                       ; $6451: $6f
    inc e                                         ; $6452: $1c
    xor a                                         ; $6453: $af
    scf                                           ; $6454: $37
    add hl, sp                                    ; $6455: $39
    inc [hl]                                      ; $6456: $34
    ld h, h                                       ; $6457: $64
    ld b, [hl]                                    ; $6458: $46
    inc bc                                        ; $6459: $03
    adc c                                         ; $645a: $89
    adc l                                         ; $645b: $8d
    call z, $b862                                 ; $645c: $cc $62 $b8
    ld l, d                                       ; $645f: $6a
    jp nc, $d990                                  ; $6460: $d2 $90 $d9

    cpl                                           ; $6463: $2f
    ccf                                           ; $6464: $3f
    dec e                                         ; $6465: $1d
    xor l                                         ; $6466: $ad
    add h                                         ; $6467: $84
    add $75                                       ; $6468: $c6 $75
    ld a, [de]                                    ; $646a: $1a
    dec l                                         ; $646b: $2d
    ld [hl], d                                    ; $646c: $72
    ld e, h                                       ; $646d: $5c
    and a                                         ; $646e: $a7
    pop de                                        ; $646f: $d1
    xor l                                         ; $6470: $ad
    rst $20                                       ; $6471: $e7
    xor c                                         ; $6472: $a9
    ld e, b                                       ; $6473: $58
    reti                                          ; $6474: $d9


    and e                                         ; $6475: $a3
    sub c                                         ; $6476: $91
    ld e, c                                       ; $6477: $59
    inc a                                         ; $6478: $3c
    add l                                         ; $6479: $85
    ld d, [hl]                                    ; $647a: $56
    adc [hl]                                      ; $647b: $8e
    add hl, de                                    ; $647c: $19
    ld [hl], e                                    ; $647d: $73
    and h                                         ; $647e: $a4
    ld [hl], $a3                                  ; $647f: $36 $a3
    ld l, [hl]                                    ; $6481: $6e
    ld h, l                                       ; $6482: $65
    ld sp, $d8aa                                  ; $6483: $31 $aa $d8
    or c                                          ; $6486: $b1
    dec e                                         ; $6487: $1d
    rra                                           ; $6488: $1f
    dec de                                        ; $6489: $1b

jr_06f_648a:
    inc b                                         ; $648a: $04
    dec e                                         ; $648b: $1d
    ld b, e                                       ; $648c: $43
    or a                                          ; $648d: $b7
    ld l, l                                       ; $648e: $6d
    db $eb                                        ; $648f: $eb
    db $f4                                        ; $6490: $f4
    cp l                                          ; $6491: $bd
    dec a                                         ; $6492: $3d
    ld l, c                                       ; $6493: $69
    inc [hl]                                      ; $6494: $34
    or $86                                        ; $6495: $f6 $86

jr_06f_6497:
    ld l, l                                       ; $6497: $6d
    cp l                                          ; $6498: $bd
    ld a, [bc]                                    ; $6499: $0a
    or e                                          ; $649a: $b3
    sbc a                                         ; $649b: $9f
    ld a, d                                       ; $649c: $7a
    ld a, l                                       ; $649d: $7d
    ld h, d                                       ; $649e: $62
    and h                                         ; $649f: $a4
    push af                                       ; $64a0: $f5
    ei                                            ; $64a1: $fb
    sub h                                         ; $64a2: $94
    inc hl                                        ; $64a3: $23
    sbc [hl]                                      ; $64a4: $9e
    ld d, b                                       ; $64a5: $50
    ld d, $cd                                     ; $64a6: $16 $cd
    rst $30                                       ; $64a8: $f7
    xor b                                         ; $64a9: $a8
    and b                                         ; $64aa: $a0
    and d                                         ; $64ab: $a2
    sub l                                         ; $64ac: $95
    or c                                          ; $64ad: $b1
    dec sp                                        ; $64ae: $3b
    and $c8                                       ; $64af: $e6 $c8
    xor l                                         ; $64b1: $ad
    rst $20                                       ; $64b2: $e7
    ld a, [de]                                    ; $64b3: $1a
    jp nc, $0458                                  ; $64b4: $d2 $58 $04

    jp nc, Jump_000_386a                          ; $64b7: $d2 $6a $38

    sub $ab                                       ; $64ba: $d6 $ab
    jr c, jr_06f_6497                             ; $64bc: $38 $d9

    ld a, [c]                                     ; $64be: $f2
    ld e, e                                       ; $64bf: $5b
    rst $08                                       ; $64c0: $cf
    sbc e                                         ; $64c1: $9b
    jp hl                                         ; $64c2: $e9


    ld a, [de]                                    ; $64c3: $1a
    ld [hl-], a                                   ; $64c4: $32
    dec hl                                        ; $64c5: $2b
    ld c, e                                       ; $64c6: $4b
    ld d, a                                       ; $64c7: $57

Jump_06f_64c8:
    ld d, c                                       ; $64c8: $51
    ld a, [hl-]                                   ; $64c9: $3a
    dec l                                         ; $64ca: $2d
    db $db                                        ; $64cb: $db
    ld a, d                                       ; $64cc: $7a
    add e                                         ; $64cd: $83
    ld d, $dc                                     ; $64ce: $16 $dc
    ld [hl], b                                    ; $64d0: $70
    adc l                                         ; $64d1: $8d
    dec [hl]                                      ; $64d2: $35
    add h                                         ; $64d3: $84
    and c                                         ; $64d4: $a1
    rst $38                                       ; $64d5: $ff
    sub c                                         ; $64d6: $91
    ld h, a                                       ; $64d7: $67
    ld d, l                                       ; $64d8: $55
    ld d, [hl]                                    ; $64d9: $56
    or h                                          ; $64da: $b4
    ld l, [hl]                                    ; $64db: $6e
    db $d3                                        ; $64dc: $d3
    cp d                                          ; $64dd: $ba
    ld d, h                                       ; $64de: $54
    ld h, a                                       ; $64df: $67
    dec sp                                        ; $64e0: $3b
    nop                                           ; $64e1: $00
    ld l, a                                       ; $64e2: $6f
    dec c                                         ; $64e3: $0d
    sbc d                                         ; $64e4: $9a
    ld h, a                                       ; $64e5: $67
    ld b, l                                       ; $64e6: $45
    ld l, [hl]                                    ; $64e7: $6e
    cp l                                          ; $64e8: $bd
    ld l, [hl]                                    ; $64e9: $6e
    sub e                                         ; $64ea: $93
    db $e3                                        ; $64eb: $e3
    ld l, b                                       ; $64ec: $68
    ld b, e                                       ; $64ed: $43
    jr jr_06f_648a                                ; $64ee: $18 $9a

    inc e                                         ; $64f0: $1c
    ld a, [hl+]                                   ; $64f1: $2a
    pop hl                                        ; $64f2: $e1
    ld d, [hl]                                    ; $64f3: $56
    ld d, $c3                                     ; $64f4: $16 $c3
    and e                                         ; $64f6: $a3
    add hl, de                                    ; $64f7: $19
    dec d                                         ; $64f8: $15
    db $ed                                        ; $64f9: $ed
    ld h, e                                       ; $64fa: $63
    call nc, $3788                                ; $64fb: $d4 $88 $37
    ld c, $1f                                     ; $64fe: $0e $1f
    db $fd                                        ; $6500: $fd
    ld c, [hl]                                    ; $6501: $4e
    rst $38                                       ; $6502: $ff
    sub e                                         ; $6503: $93
    jp z, Jump_000_0d1c                           ; $6504: $ca $1c $0d

    sub $4c                                       ; $6507: $d6 $4c
    ld d, l                                       ; $6509: $55
    ld d, h                                       ; $650a: $54
    or h                                          ; $650b: $b4
    adc a                                         ; $650c: $8f
    ld d, c                                       ; $650d: $51
    inc hl                                        ; $650e: $23
    ld l, $1d                                     ; $650f: $2e $1d
    scf                                           ; $6511: $37
    or c                                          ; $6512: $b1
    inc b                                         ; $6513: $04
    push de                                       ; $6514: $d5
    push hl                                       ; $6515: $e5
    inc b                                         ; $6516: $04
    ld d, l                                       ; $6517: $55
    ld [hl], $90                                  ; $6518: $36 $90
    sub [hl]                                      ; $651a: $96
    jp nc, Jump_000_272a                          ; $651b: $d2 $2a $27

    rst $00                                       ; $651e: $c7
    sub l                                         ; $651f: $95
    inc de                                        ; $6520: $13
    xor h                                         ; $6521: $ac
    ld [hl], h                                    ; $6522: $74
    cp l                                          ; $6523: $bd
    ld a, [hl-]                                   ; $6524: $3a
    and a                                         ; $6525: $a7
    rra                                           ; $6526: $1f
    ld h, c                                       ; $6527: $61
    ld d, c                                       ; $6528: $51
    cpl                                           ; $6529: $2f
    or l                                          ; $652a: $b5
    rra                                           ; $652b: $1f
    rst $28                                       ; $652c: $ef
    ld h, d                                       ; $652d: $62
    cp d                                          ; $652e: $ba
    ld h, d                                       ; $652f: $62
    ld e, a                                       ; $6530: $5f
    ld e, e                                       ; $6531: $5b
    rst $08                                       ; $6532: $cf
    dec [hl]                                      ; $6533: $35
    cp $4e                                        ; $6534: $fe $4e
    rst $38                                       ; $6536: $ff
    call z, $8a7e                                 ; $6537: $cc $7e $8a
    ld b, b                                       ; $653a: $40
    ld [c], a                                     ; $653b: $e2
    adc [hl]                                      ; $653c: $8e
    jp z, $8a59                                   ; $653d: $ca $59 $8a

    ld a, [bc]                                    ; $6540: $0a
    ld l, l                                       ; $6541: $6d
    db $ed                                        ; $6542: $ed
    ld h, d                                       ; $6543: $62
    ld h, h                                       ; $6544: $64
    ccf                                           ; $6545: $3f
    call Call_000_2953                            ; $6546: $cd $53 $29
    cp $9d                                        ; $6549: $fe $9d
    scf                                           ; $654b: $37
    ld a, d                                       ; $654c: $7a
    db $dd                                        ; $654d: $dd
    db $10                                        ; $654e: $10
    add hl, bc                                    ; $654f: $09
    adc a                                         ; $6550: $8f
    scf                                           ; $6551: $37
    ld a, d                                       ; $6552: $7a
    add hl, sp                                    ; $6553: $39
    sub b                                         ; $6554: $90
    sub $3e                                       ; $6555: $d6 $3e
    cp l                                          ; $6557: $bd
    ld d, b                                       ; $6558: $50
    ld b, l                                       ; $6559: $45
    ld a, $25                                     ; $655a: $3e $25
    sub $b3                                       ; $655c: $d6 $b3
    add hl, hl                                    ; $655e: $29
    cpl                                           ; $655f: $2f
    ld a, c                                       ; $6560: $79
    adc a                                         ; $6561: $8f
    push hl                                       ; $6562: $e5
    dec [hl]                                      ; $6563: $35
    ld e, e                                       ; $6564: $5b
    ccf                                           ; $6565: $3f
    and e                                         ; $6566: $a3
    ld l, e                                       ; $6567: $6b
    ld [hl], d                                    ; $6568: $72
    ld c, l                                       ; $6569: $4d
    ld a, c                                       ; $656a: $79
    ret                                           ; $656b: $c9


    ld a, e                                       ; $656c: $7b
    inc l                                         ; $656d: $2c
    xor a                                         ; $656e: $af
    add hl, hl                                    ; $656f: $29
    or $d5                                        ; $6570: $f6 $d5
    ld b, b                                       ; $6572: $40
    ld h, d                                       ; $6573: $62
    ld b, l                                       ; $6574: $45
    or e                                          ; $6575: $b3
    ld a, [hl+]                                   ; $6576: $2a
    and d                                         ; $6577: $a2
    dec l                                         ; $6578: $2d
    ccf                                           ; $6579: $3f
    dec a                                         ; $657a: $3d
    add hl, de                                    ; $657b: $19
    cp $74                                        ; $657c: $fe $74
    call z, Call_06f_5b91                         ; $657e: $cc $91 $5b
    xor a                                         ; $6581: $af
    dec de                                        ; $6582: $1b
    push hl                                       ; $6583: $e5
    ld d, d                                       ; $6584: $52
    cp b                                          ; $6585: $b8
    pop de                                        ; $6586: $d1
    ld [hl-], a                                   ; $6587: $32
    set 1, c                                      ; $6588: $cb $c9
    pop de                                        ; $658a: $d1
    ld h, b                                       ; $658b: $60
    sbc l                                         ; $658c: $9d
    add [hl]                                      ; $658d: $86
    inc hl                                        ; $658e: $23
    inc [hl]                                      ; $658f: $34
    sbc $5e                                       ; $6590: $de $5e
    ld e, c                                       ; $6592: $59
    inc a                                         ; $6593: $3c
    db $db                                        ; $6594: $db
    ld bc, $9de7                                  ; $6595: $01 $e7 $9d
    ld b, $12                                     ; $6598: $06 $12
    dec bc                                        ; $659a: $0b
    add hl, sp                                    ; $659b: $39
    add hl, sp                                    ; $659c: $39
    ld d, d                                       ; $659d: $52
    or d                                          ; $659e: $b2
    jp z, Jump_000_034e                           ; $659f: $ca $4e $03

    adc c                                         ; $65a2: $89
    dec d                                         ; $65a3: $15
    pop de                                        ; $65a4: $d1
    ld d, [hl]                                    ; $65a5: $56
    ld [$e534], a                                 ; $65a6: $ea $34 $e5

Call_06f_65a9:
    dec h                                         ; $65a9: $25
    rst $28                                       ; $65aa: $ef
    or c                                          ; $65ab: $b1
    cp h                                          ; $65ac: $bc
    and [hl]                                      ; $65ad: $a6
    ld a, c                                       ; $65ae: $79
    or h                                          ; $65af: $b4
    call z, Call_06f_7272                         ; $65b0: $cc $72 $72
    inc [hl]                                      ; $65b3: $34
    ld e, b                                       ; $65b4: $58
    ld b, e                                       ; $65b5: $43
    ld e, e                                       ; $65b6: $5b
    adc [hl]                                      ; $65b7: $8e
    set 4, [hl]                                   ; $65b8: $cb $e6
    adc l                                         ; $65ba: $8d
    inc bc                                        ; $65bb: $03
    rra                                           ; $65bc: $1f
    db $fd                                        ; $65bd: $fd
    ld c, [hl]                                    ; $65be: $4e
    push bc                                       ; $65bf: $c5
    pop bc                                        ; $65c0: $c1
    call $e2cc                                    ; $65c1: $cd $cc $e2
    db $e4                                        ; $65c4: $e4
    ld d, b                                       ; $65c5: $50
    ld l, c                                       ; $65c6: $69
    dec bc                                        ; $65c7: $0b
    ld sp, $fa19                                  ; $65c8: $31 $19 $fa
    ld e, a                                       ; $65cb: $5f
    ld a, a                                       ; $65cc: $7f
    inc [hl]                                      ; $65cd: $34
    and e                                         ; $65ce: $a3
    and d                                         ; $65cf: $a2
    ld a, l                                       ; $65d0: $7d
    adc h                                         ; $65d1: $8c
    ld a, [de]                                    ; $65d2: $1a
    pop de                                        ; $65d3: $d1
    ld b, b                                       ; $65d4: $40
    ld h, d                                       ; $65d5: $62
    rst $38                                       ; $65d6: $ff
    pop bc                                        ; $65d7: $c1
    ld [hl], l                                    ; $65d8: $75
    sub b                                         ; $65d9: $90
    ld [c], a                                     ; $65da: $e2
    inc h                                         ; $65db: $24
    add e                                         ; $65dc: $83
    sbc a                                         ; $65dd: $9f
    ret c                                         ; $65de: $d8

    and a                                         ; $65df: $a7
    jp z, Jump_06f_47fe                           ; $65e0: $ca $fe $47

    sbc [hl]                                      ; $65e3: $9e
    sub l                                         ; $65e4: $95
    ld a, [de]                                    ; $65e5: $1a
    rst $10                                       ; $65e6: $d7
    sbc a                                         ; $65e7: $9f
    ld d, [hl]                                    ; $65e8: $56
    add hl, sp                                    ; $65e9: $39
    ld l, [hl]                                    ; $65ea: $6e
    sbc l                                         ; $65eb: $9d
    and [hl]                                      ; $65ec: $a6
    xor h                                         ; $65ed: $ac
    inc e                                         ; $65ee: $1c
    rst $10                                       ; $65ef: $d7
    jp hl                                         ; $65f0: $e9


    dec d                                         ; $65f1: $15
    db $e4                                        ; $65f2: $e4
    sub l                                         ; $65f3: $95
    ld h, a                                       ; $65f4: $67
    db $eb                                        ; $65f5: $eb
    ld a, c                                       ; $65f6: $79
    ld [hl], l                                    ; $65f7: $75
    sbc l                                         ; $65f8: $9d
    ld d, b                                       ; $65f9: $50
    inc [hl]                                      ; $65fa: $34
    jp c, $c5da                                   ; $65fb: $da $da $c5

    ret c                                         ; $65fe: $d8

    ld a, d                                       ; $65ff: $7a
    dec l                                         ; $6600: $2d
    xor l                                         ; $6601: $ad
    jr c, jr_06f_6619                             ; $6602: $38 $15

    jp nc, $8a09                                  ; $6604: $d2 $09 $8a

    db $d3                                        ; $6607: $d3
    jr jr_06f_660e                                ; $6608: $18 $04

    db $fd                                        ; $660a: $fd
    jp $368d                                      ; $660b: $c3 $8d $36


jr_06f_660e:
    adc a                                         ; $660e: $8f
    ld d, [hl]                                    ; $660f: $56
    add hl, de                                    ; $6610: $19
    jp nz, $a560                                  ; $6611: $c2 $60 $a5

    xor e                                         ; $6614: $ab
    sbc a                                         ; $6615: $9f
    and l                                         ; $6616: $a5
    dec a                                         ; $6617: $3d
    ld e, c                                       ; $6618: $59

jr_06f_6619:
    ld a, [bc]                                    ; $6619: $0a
    ld b, a                                       ; $661a: $47
    dec de                                        ; $661b: $1b
    jp nz, $d0d0                                  ; $661c: $c2 $d0 $d0

    ld b, [hl]                                    ; $661f: $46
    ld h, $83                                     ; $6620: $26 $83
    ld l, l                                       ; $6622: $6d
    rlca                                          ; $6623: $07
    scf                                           ; $6624: $37
    ld e, b                                       ; $6625: $58
    and [hl]                                      ; $6626: $a6
    cp $27                                        ; $6627: $fe $27
    push de                                       ; $6629: $d5
    ld d, c                                       ; $662a: $51
    db $dd                                        ; $662b: $dd
    sub h                                         ; $662c: $94
    add hl, sp                                    ; $662d: $39
    ld a, [de]                                    ; $662e: $1a
    ld c, h                                       ; $662f: $4c
    ld d, b                                       ; $6630: $50
    and [hl]                                      ; $6631: $a6
    ld b, $12                                     ; $6632: $06 $12
    ld l, l                                       ; $6634: $6d
    ld a, [hl-]                                   ; $6635: $3a
    cp l                                          ; $6636: $bd
    add d                                         ; $6637: $82
    cp h                                          ; $6638: $bc
    ld a, [c]                                     ; $6639: $f2
    ld l, h                                       ; $663a: $6c
    rlca                                          ; $663b: $07
    rst $20                                       ; $663c: $e7
    ld a, [de]                                    ; $663d: $1a
    add e                                         ; $663e: $83
    dec hl                                        ; $663f: $2b
    ld l, c                                       ; $6640: $69
    ld [hl], c                                    ; $6641: $71
    or [hl]                                       ; $6642: $b6
    sbc [hl]                                      ; $6643: $9e
    rst $20                                       ; $6644: $e7
    ld hl, sp+$3b                                 ; $6645: $f8 $3b
    ld h, l                                       ; $6647: $65
    ld [de], a                                    ; $6648: $12
    db $f4                                        ; $6649: $f4
    ld a, [hl+]                                   ; $664a: $2a
    call z, $2a7e                                 ; $664b: $cc $7e $2a
    ld a, e                                       ; $664e: $7b
    sub l                                         ; $664f: $95
    and $d6                                       ; $6650: $e6 $d6
    ld h, h                                       ; $6652: $64
    or $0f                                        ; $6653: $f6 $0f
    scf                                           ; $6655: $37
    jp c, $ac70                                   ; $6656: $da $70 $ac

    ld [$b5a4], sp                                ; $6659: $08 $a4 $b5
    push af                                       ; $665c: $f5
    ld a, [de]                                    ; $665d: $1a
    halt                                          ; $665e: $76
    pop de                                        ; $665f: $d1
    db $fc                                        ; $6660: $fc
    inc h                                         ; $6661: $24
    add sp, $47                                   ; $6662: $e8 $47
    db $fc                                        ; $6664: $fc
    xor a                                         ; $6665: $af
    ld a, l                                       ; $6666: $7d
    ld h, a                                       ; $6667: $67
    reti                                          ; $6668: $d9


    dec hl                                        ; $6669: $2b
    ret z                                         ; $666a: $c8

    dec hl                                        ; $666b: $2b
    ld c, a                                       ; $666c: $4f
    jp $62b1                                      ; $666d: $c3 $b1 $62


    ld e, a                                       ; $6670: $5f
    ld e, e                                       ; $6671: $5b
    ld l, a                                       ; $6672: $6f
    or b                                          ; $6673: $b0
    ret c                                         ; $6674: $d8

jr_06f_6675:
    ld c, a                                       ; $6675: $4f
    jp hl                                         ; $6676: $e9


    add d                                         ; $6677: $82
    xor e                                         ; $6678: $ab
    or d                                          ; $6679: $b2
    call z, Call_000_3b36                         ; $667a: $cc $36 $3b
    ld c, h                                       ; $667d: $4c
    ld d, b                                       ; $667e: $50
    cp a                                          ; $667f: $bf
    inc [hl]                                      ; $6680: $34
    add h                                         ; $6681: $84
    or c                                          ; $6682: $b1
    sub d                                         ; $6683: $92
    add hl, sp                                    ; $6684: $39
    ld [hl], d                                    ; $6685: $72
    rla                                           ; $6686: $17
    ld b, e                                       ; $6687: $43
    ei                                            ; $6688: $fb
    and a                                         ; $6689: $a7
    add hl, sp                                    ; $668a: $39
    xor $62                                       ; $668b: $ee $62
    ld l, b                                       ; $668d: $68
    push hl                                       ; $668e: $e5
    cp b                                          ; $668f: $b8
    and d                                         ; $6690: $a2
    ld a, a                                       ; $6691: $7f
    ret c                                         ; $6692: $d8

    jp z, Jump_06f_6c62                           ; $6693: $ca $62 $6c

    rlca                                          ; $6696: $07
    rra                                           ; $6697: $1f
    db $fd                                        ; $6698: $fd
    ld c, [hl]                                    ; $6699: $4e
    sub l                                         ; $669a: $95
    ld d, l                                       ; $669b: $55
    add [hl]                                      ; $669c: $86
    jr nc, jr_06f_6675                            ; $669d: $30 $d6

    ld c, a                                       ; $669f: $4f
    ld c, a                                       ; $66a0: $4f
    sub [hl]                                      ; $66a1: $96
    jp nz, $f411                                  ; $66a2: $c2 $11 $f4

    ld a, [hl+]                                   ; $66a5: $2a
    call z, $da7e                                 ; $66a6: $cc $7e $da
    ld a, d                                       ; $66a9: $7a
    xor [hl]                                      ; $66aa: $ae
    ld de, $ed15                                  ; $66ab: $11 $15 $ed
    ld h, e                                       ; $66ae: $63
    call nc, $5e88                                ; $66af: $d4 $88 $5e
    ld l, b                                       ; $66b2: $68
    ld c, b                                       ; $66b3: $48
    ld e, e                                       ; $66b4: $5b
    and a                                         ; $66b5: $a7
    ld d, c                                       ; $66b6: $51
    ld l, h                                       ; $66b7: $6c
    rlca                                          ; $66b8: $07
    sbc a                                         ; $66b9: $9f
    inc h                                         ; $66ba: $24
    cp d                                          ; $66bb: $ba
    ld d, d                                       ; $66bc: $52
    ld h, e                                       ; $66bd: $63
    ld [hl], b                                    ; $66be: $70
    ld [hl], c                                    ; $66bf: $71
    ld [hl], a                                    ; $66c0: $77
    or a                                          ; $66c1: $b7
    ld l, l                                       ; $66c2: $6d
    db $db                                        ; $66c3: $db
    ld a, [bc]                                    ; $66c4: $0a
    or c                                          ; $66c5: $b1
    and b                                         ; $66c6: $a0
    rla                                           ; $66c7: $17
    ld a, [$791f]                                 ; $66c8: $fa $1f $79
    or [hl]                                       ; $66cb: $b6
    dec e                                         ; $66cc: $1d
    ld l, a                                       ; $66cd: $6f
    dec c                                         ; $66ce: $0d
    sbc d                                         ; $66cf: $9a
    ld h, a                                       ; $66d0: $67
    ld b, l                                       ; $66d1: $45
    ld [hl], $84                                  ; $66d2: $36 $84
    and c                                         ; $66d4: $a1
    rst $38                                       ; $66d5: $ff
    sub c                                         ; $66d6: $91
    ld h, a                                       ; $66d7: $67
    add d                                         ; $66d8: $82
    ld e, [hl]                                    ; $66d9: $5e
    push bc                                       ; $66da: $c5
    ret                                           ; $66db: $c9


    sub [hl]                                      ; $66dc: $96
    rst $18                                       ; $66dd: $df
    ld c, $e7                                     ; $66de: $0e $e7
    ld a, [de]                                    ; $66e0: $1a
    xor c                                         ; $66e1: $a9
    push de                                       ; $66e2: $d5
    rst $18                                       ; $66e3: $df
    jp hl                                         ; $66e4: $e9


    ld d, l                                       ; $66e5: $55
    sbc b                                         ; $66e6: $98
    db $fd                                        ; $66e7: $fd
    call nc, Call_000_13eb                        ; $66e8: $d4 $eb $13
    inc hl                                        ; $66eb: $23
    xor l                                         ; $66ec: $ad
    db $ec                                        ; $66ed: $ec
    ld d, l                                       ; $66ee: $55
    sbc d                                         ; $66ef: $9a
    ld e, e                                       ; $66f0: $5b
    sub e                                         ; $66f1: $93
    reti                                          ; $66f2: $d9


    ld [hl], a                                    ; $66f3: $77
    dec c                                         ; $66f4: $0d
    ld sp, hl                                     ; $66f5: $f9
    ld b, h                                       ; $66f6: $44
    inc de                                        ; $66f7: $13
    inc d                                         ; $66f8: $14
    ld a, e                                       ; $66f9: $7b
    jp z, $dda3                                   ; $66fa: $ca $a3 $dd

    add e                                         ; $66fd: $83
    db $eb                                        ; $66fe: $eb
    ld d, c                                       ; $66ff: $51
    xor d                                         ; $6700: $aa
    sbc h                                         ; $6701: $9c
    dec e                                         ; $6702: $1d
    ld e, e                                       ; $6703: $5b
    rst $08                                       ; $6704: $cf
    ld c, e                                       ; $6705: $4b
    adc l                                         ; $6706: $8d
    db $ec                                        ; $6707: $ec
    add l                                         ; $6708: $85
    ld a, [hl]                                    ; $6709: $7e
    ld a, [hl-]                                   ; $670a: $3a
    add hl, de                                    ; $670b: $19
    ld a, c                                       ; $670c: $79
    db $eb                                        ; $670d: $eb
    db $eb                                        ; $670e: $eb
    ld c, l                                       ; $670f: $4d
    xor [hl]                                      ; $6710: $ae
    sub d                                         ; $6711: $92
    add hl, sp                                    ; $6712: $39
    ld [hl+], a                                   ; $6713: $22
    reti                                          ; $6714: $d9


    ld l, h                                       ; $6715: $6c
    rlca                                          ; $6716: $07
    rra                                           ; $6717: $1f
    db $dd                                        ; $6718: $dd
    and e                                         ; $6719: $a3
    dec c                                         ; $671a: $0d
    ld l, c                                       ; $671b: $69
    sub d                                         ; $671c: $92
    ld b, d                                       ; $671d: $42
    cp d                                          ; $671e: $ba
    pop de                                        ; $671f: $d1
    db $ed                                        ; $6720: $ed
    nop                                           ; $6721: $00
    sbc a                                         ; $6722: $9f
    cp e                                          ; $6723: $bb
    and [hl]                                      ; $6724: $a6
    cp h                                          ; $6725: $bc
    db $e4                                        ; $6726: $e4
    dec a                                         ; $6727: $3d
    sub [hl]                                      ; $6728: $96
    rst $10                                       ; $6729: $d7
    ld d, h                                       ; $672a: $54
    inc [hl]                                      ; $672b: $34
    xor e                                         ; $672c: $ab
    ld [hl+], a                                   ; $672d: $22
    jp c, $d3f2                                   ; $672e: $da $f2 $d3

    daa                                           ; $6731: $27
    ld a, [$791f]                                 ; $6732: $fa $1f $79
    sub $ff                                       ; $6735: $d6 $ff
    ld c, d                                       ; $6737: $4a
    push bc                                       ; $6738: $c5
    ld a, [hl]                                    ; $6739: $7e
    ld c, d                                       ; $673a: $4a
    ld c, $95                                     ; $673b: $0e $95
    or e                                          ; $673d: $b3
    inc d                                         ; $673e: $14
    ld l, a                                       ; $673f: $6f
    inc e                                         ; $6740: $1c
    rst $10                                       ; $6741: $d7
    ld h, b                                       ; $6742: $60
    sub c                                         ; $6743: $91
    and l                                         ; $6744: $a5
    add $e0                                       ; $6745: $c6 $e0
    ld a, [bc]                                    ; $6747: $0a
    ld l, l                                       ; $6748: $6d
    db $ed                                        ; $6749: $ed
    ld h, d                                       ; $674a: $62
    db $e4                                        ; $674b: $e4
    ret z                                         ; $674c: $c8

    adc d                                         ; $674d: $8a
    rst $20                                       ; $674e: $e7
    ld a, e                                       ; $674f: $7b
    ld l, [hl]                                    ; $6750: $6e
    db $fd                                        ; $6751: $fd
    call c, Call_06f_6855                         ; $6752: $dc $55 $68
    ld l, e                                       ; $6755: $6b
    rla                                           ; $6756: $17
    ld c, a                                       ; $6757: $4f
    sub c                                         ; $6758: $91
    rst $00                                       ; $6759: $c7
    inc e                                         ; $675a: $1c
    or $ed                                        ; $675b: $f6 $ed
    nop                                           ; $675d: $00
    rst $20                                       ; $675e: $e7
    ld a, [de]                                    ; $675f: $1a
    daa                                           ; $6760: $27
    push de                                       ; $6761: $d5
    or c                                          ; $6762: $b1
    ld b, [hl]                                    ; $6763: $46
    ld de, $656d                                  ; $6764: $11 $6d $65
    ccf                                           ; $6767: $3f

Jump_06f_6768:
    ld b, l                                       ; $6768: $45
    or c                                          ; $6769: $b1
    sbc a                                         ; $676a: $9f
    sub d                                         ; $676b: $92
    ld b, e                                       ; $676c: $43
    push hl                                       ; $676d: $e5
    inc l                                         ; $676e: $2c
    ld b, l                                       ; $676f: $45
    dec e                                         ; $6770: $1d
    sub [hl]                                      ; $6771: $96
    ld [hl], $a4                                  ; $6772: $36 $a4
    push bc                                       ; $6774: $c5
    xor c                                         ; $6775: $a9
    ld b, a                                       ; $6776: $47
    inc hl                                        ; $6777: $23
    call Call_000_1db0                            ; $6778: $cd $b0 $1d
    sub a                                         ; $677b: $97
    dec hl                                        ; $677c: $2b
    jp c, $a8c7                                   ; $677d: $da $c7 $a8

    ld de, $caa5                                  ; $6780: $11 $a5 $ca
    ret                                           ; $6783: $c9


    sbc [hl]                                      ; $6784: $9e
    ld [hl], l                                    ; $6785: $75
    ld l, c                                       ; $6786: $69
    push bc                                       ; $6787: $c5
    pop de                                        ; $6788: $d1
    ld a, [hl+]                                   ; $6789: $2a
    ld c, a                                       ; $678a: $4f
    ld b, [hl]                                    ; $678b: $46
    ccf                                           ; $678c: $3f
    cp d                                          ; $678d: $ba
    dec e                                         ; $678e: $1d
    sbc a                                         ; $678f: $9f
    inc h                                         ; $6790: $24
    or $c4                                        ; $6791: $f6 $c4
    inc e                                         ; $6793: $1c
    rst $10                                       ; $6794: $d7
    ld e, [hl]                                    ; $6795: $5e
    adc a                                         ; $6796: $8f
    ld l, d                                       ; $6797: $6a
    ld b, d                                       ; $6798: $42
    ld b, e                                       ; $6799: $43
    ld e, b                                       ; $679a: $58
    ld h, h                                       ; $679b: $64
    dec e                                         ; $679c: $1d
    cp e                                          ; $679d: $bb
    db $d3                                        ; $679e: $d3
    add hl, bc                                    ; $679f: $09
    dec c                                         ; $67a0: $0d
    ld d, [hl]                                    ; $67a1: $56
    cp a                                          ; $67a2: $bf
    inc [hl]                                      ; $67a3: $34
    adc $76                                       ; $67a4: $ce $76
    nop                                           ; $67a6: $00
    rra                                           ; $67a7: $1f
    rst $28                                       ; $67a8: $ef
    pop bc                                        ; $67a9: $c1
    add d                                         ; $67aa: $82
    ld e, [hl]                                    ; $67ab: $5e
    push bc                                       ; $67ac: $c5
    ret                                           ; $67ad: $c9


    sub [hl]                                      ; $67ae: $96
    rst $18                                       ; $67af: $df
    ld c, $1f                                     ; $67b0: $0e $1f
    rst $28                                       ; $67b2: $ef
    pop bc                                        ; $67b3: $c1
    add d                                         ; $67b4: $82
    ld e, [hl]                                    ; $67b5: $5e
    ld a, $4d                                     ; $67b6: $3e $4d
    or d                                          ; $67b8: $b2
    reti                                          ; $67b9: $d9


    ld a, [$2ef1]                                 ; $67ba: $fa $f1 $2e
    and [hl]                                      ; $67bd: $a6
    and b                                         ; $67be: $a0
    ld c, h                                       ; $67bf: $4c
    and l                                         ; $67c0: $a5
    ld b, [hl]                                    ; $67c1: $46
    db $fc                                        ; $67c2: $fc
    ld d, c                                       ; $67c3: $51
    ld b, a                                       ; $67c4: $47
    ld [hl], l                                    ; $67c5: $75
    db $d3                                        ; $67c6: $d3
    sub b                                         ; $67c7: $90
    halt                                          ; $67c8: $76
    ld c, d                                       ; $67c9: $4a
    add hl, sp                                    ; $67ca: $39
    ld [hl+], a                                   ; $67cb: $22
    ei                                            ; $67cc: $fb
    add hl, hl                                    ; $67cd: $29
    ld a, [$64e9]                                 ; $67ce: $fa $e9 $64
    ld h, h                                       ; $67d1: $64
    ld b, c                                       ; $67d2: $41
    rst $38                                       ; $67d3: $ff
    inc hl                                        ; $67d4: $23
    rst $08                                       ; $67d5: $cf
    ld a, [$a95f]                                 ; $67d6: $fa $5f $a9
    ret c                                         ; $67d9: $d8

    ld c, a                                       ; $67da: $4f
    ret                                           ; $67db: $c9


    and c                                         ; $67dc: $a1
    ld [hl], d                                    ; $67dd: $72
    sub [hl]                                      ; $67de: $96
    and d                                         ; $67df: $a2
    call nc, $c868                                ; $67e0: $d4 $68 $c8
    ld h, d                                       ; $67e3: $62
    inc [hl]                                      ; $67e4: $34
    db $ed                                        ; $67e5: $ed
    ld [hl], c                                    ; $67e6: $71
    add hl, sp                                    ; $67e7: $39
    jr c, @-$18                                   ; $67e8: $38 $e6

    ret z                                         ; $67ea: $c8

    scf                                           ; $67eb: $37
    ld c, $d7                                     ; $67ec: $0e $d7
    ld h, b                                       ; $67ee: $60
    sub c                                         ; $67ef: $91

jr_06f_67f0:
    and l                                         ; $67f0: $a5
    add $e0                                       ; $67f1: $c6 $e0
    ld a, [bc]                                    ; $67f3: $0a
    ld l, l                                       ; $67f4: $6d
    db $ed                                        ; $67f5: $ed
    ld h, d                                       ; $67f6: $62
    db $e4                                        ; $67f7: $e4
    ret z                                         ; $67f8: $c8

    adc d                                         ; $67f9: $8a
    rst $20                                       ; $67fa: $e7
    ld a, e                                       ; $67fb: $7b
    ld l, [hl]                                    ; $67fc: $6e
    rlca                                          ; $67fd: $07
    rst $28                                       ; $67fe: $ef
    rlca                                          ; $67ff: $07
    ld d, a                                       ; $6800: $57
    ld hl, $1ba4                                  ; $6801: $21 $a4 $1b
    db $dd                                        ; $6804: $dd
    ld a, [$38d6]                                 ; $6805: $fa $d6 $38
    ld b, c                                       ; $6808: $41
    ld b, e                                       ; $6809: $43
    and e                                         ; $680a: $a3
    ld e, h                                       ; $680b: $5c
    ld a, [bc]                                    ; $680c: $0a
    scf                                           ; $680d: $37
    jp c, $4565                                   ; $680e: $da $65 $45

    or $c8                                        ; $6811: $f6 $c8
    ld a, [hl]                                    ; $6813: $7e
    or [hl]                                       ; $6814: $b6
    sbc $60                                       ; $6815: $de $60
    sub e                                         ; $6817: $93
    xor e                                         ; $6818: $ab
    ld h, a                                       ; $6819: $67
    rst $38                                       ; $681a: $ff
    inc hl                                        ; $681b: $23
    rst $08                                       ; $681c: $cf
    or h                                          ; $681d: $b4
    rst $38                                       ; $681e: $ff
    ld h, l                                       ; $681f: $65
    push bc                                       ; $6820: $c5
    ld a, [hl]                                    ; $6821: $7e
    ld c, d                                       ; $6822: $4a
    ld c, $95                                     ; $6823: $0e $95
    or e                                          ; $6825: $b3
    inc d                                         ; $6826: $14
    push af                                       ; $6827: $f5
    ld c, e                                       ; $6828: $4b
    ld b, h                                       ; $6829: $44
    ld h, e                                       ; $682a: $63
    adc [hl]                                      ; $682b: $8e
    inc d                                         ; $682c: $14

Jump_06f_682d:
    sub h                                         ; $682d: $94
    dec c                                         ; $682e: $0d
    inc h                                         ; $682f: $24
    sub [hl]                                      ; $6830: $96
    ld a, [de]                                    ; $6831: $1a
    ld sp, hl                                     ; $6832: $f9
    dec a                                         ; $6833: $3d
    ld [$b4b0], a                                 ; $6834: $ea $b0 $b4
    and c                                         ; $6837: $a1
    db $dd                                        ; $6838: $dd
    ld [hl], e                                    ; $6839: $73
    ld l, e                                       ; $683a: $6b
    cp c                                          ; $683b: $b9
    ld l, c                                       ; $683c: $69
    jr nz, jr_06f_67f0                            ; $683d: $20 $b1

    ld c, $16                                     ; $683f: $0e $16
    add hl, hl                                    ; $6841: $29
    xor b                                         ; $6842: $a8
    ld h, e                                       ; $6843: $63
    pop af                                        ; $6844: $f1
    ld e, a                                       ; $6845: $5f
    ld c, d                                       ; $6846: $4a
    ld b, c                                       ; $6847: $41
    jp $8ab1                                      ; $6848: $c3 $b1 $8a


    ldh a, [$1f]                                  ; $684b: $f0 $1f
    db $db                                        ; $684d: $db
    ld c, $97                                     ; $684e: $0e $97
    or l                                          ; $6850: $b5
    call nc, $dc68                                ; $6851: $d4 $68 $dc
    and c                                         ; $6854: $a1

Call_06f_6855:
    dec c                                         ; $6855: $0d
    adc l                                         ; $6856: $8d
    ld a, [hl]                                    ; $6857: $7e
    db $dd                                        ; $6858: $dd
    and [hl]                                      ; $6859: $a6
    ld l, e                                       ; $685a: $6b
    ld e, $d5                                     ; $685b: $1e $d5
    xor c                                         ; $685d: $a9
    and a                                         ; $685e: $a7
    add $95                                       ; $685f: $c6 $95
    ld h, a                                       ; $6861: $67

Jump_06f_6862:
    db $eb                                        ; $6862: $eb
    ld b, a                                       ; $6863: $47
    rst $30                                       ; $6864: $f7
    ld l, b                                       ; $6865: $68
    dec a                                         ; $6866: $3d
    rst $38                                       ; $6867: $ff
    ld [hl], h                                    ; $6868: $74
    and e                                         ; $6869: $a3
    add l                                         ; $686a: $85
    db $e4                                        ; $686b: $e4
    adc d                                         ; $686c: $8a
    pop bc                                        ; $686d: $c1
    ld c, a                                       ; $686e: $4f
    db $ec                                        ; $686f: $ec
    or e                                          ; $6870: $b3
    dec e                                         ; $6871: $1d
    rra                                           ; $6872: $1f
    scf                                           ; $6873: $37
    sub b                                         ; $6874: $90
    ld e, b                                       ; $6875: $58
    ld l, b                                       ; $6876: $68
    xor c                                         ; $6877: $a9
    pop de                                        ; $6878: $d1
    cp b                                          ; $6879: $b8
    ld b, e                                       ; $687a: $43
    sbc e                                         ; $687b: $9b
    ld b, a                                       ; $687c: $47
    db $eb                                        ; $687d: $eb
    rst $10                                       ; $687e: $d7
    ld l, l                                       ; $687f: $6d
    cp d                                          ; $6880: $ba
    ld h, [hl]                                    ; $6881: $66
    cp d                                          ; $6882: $ba
    ld a, [hl+]                                   ; $6883: $2a
    ld e, l                                       ; $6884: $5d
    ld l, b                                       ; $6885: $68
    xor h                                         ; $6886: $ac
    cp $4e                                        ; $6887: $fe $4e
    add l                                         ; $6889: $85
    inc bc                                        ; $688a: $03
    ld l, l                                       ; $688b: $6d
    sbc [hl]                                      ; $688c: $9e
    ld a, b                                       ; $688d: $78
    or a                                          ; $688e: $b7
    ld e, h                                       ; $688f: $5c
    ret nc                                        ; $6890: $d0

    db $ed                                        ; $6891: $ed
    nop                                           ; $6892: $00
    rra                                           ; $6893: $1f
    ld sp, $3ca6                                  ; $6894: $31 $a6 $3c
    call Call_06f_53bf                            ; $6897: $cd $bf $53
    ld l, d                                       ; $689a: $6a
    inc c                                         ; $689b: $0c
    xor [hl]                                      ; $689c: $ae
    ld c, e                                       ; $689d: $4b
    dec hl                                        ; $689e: $2b
    ld c, [hl]                                    ; $689f: $4e
    add l                                         ; $68a0: $85
    or [hl]                                       ; $68a1: $b6
    halt                                          ; $68a2: $76
    ld sp, $6472                                  ; $68a3: $31 $72 $64
    push bc                                       ; $68a6: $c5
    di                                            ; $68a7: $f3

Call_06f_68a8:
    dec a                                         ; $68a8: $3d
    dec b                                         ; $68a9: $05
    ld [hl], l                                    ; $68aa: $75
    ret nc                                        ; $68ab: $d0

    ld d, d                                       ; $68ac: $52
    ld h, e                                       ; $68ad: $63
    ld [hl], b                                    ; $68ae: $70
    dec e                                         ; $68af: $1d
    sub [hl]                                      ; $68b0: $96
    ld d, [hl]                                    ; $68b1: $56
    ld l, b                                       ; $68b2: $68
    ld l, e                                       ; $68b3: $6b
    rla                                           ; $68b4: $17
    inc hl                                        ; $68b5: $23
    ld b, a                                       ; $68b6: $47
    ld [hl], $90                                  ; $68b7: $36 $90
    ret c                                         ; $68b9: $d8

    ld l, c                                       ; $68ba: $69
    ld e, $73                                     ; $68bb: $1e $73
    ret c                                         ; $68bd: $d8

    or a                                          ; $68be: $b7
    inc bc                                        ; $68bf: $03
    rra                                           ; $68c0: $1f
    db $dd                                        ; $68c1: $dd
    and e                                         ; $68c2: $a3
    call Call_06f_53bf                            ; $68c3: $cd $bf $53
    rst $08                                       ; $68c6: $cf
    ccf                                           ; $68c7: $3f
    db $dd                                        ; $68c8: $dd
    ld l, b                                       ; $68c9: $68
    pop af                                        ; $68ca: $f1
    ld a, l                                       ; $68cb: $7d
    ld a, [c]                                     ; $68cc: $f2
    or b                                          ; $68cd: $b0
    ld [hl+], a                                   ; $68ce: $22
    sub b                                         ; $68cf: $90
    cp b                                          ; $68d0: $b8
    ld d, e                                       ; $68d1: $53
    dec de                                        ; $68d2: $1b
    ld c, b                                       ; $68d3: $48
    inc l                                         ; $68d4: $2c
    or h                                          ; $68d5: $b4
    call nc, $dc68                                ; $68d6: $d4 $68 $dc
    and c                                         ; $68d9: $a1
    push af                                       ; $68da: $f5
    db $eb                                        ; $68db: $eb
    ld [hl], $5d                                  ; $68dc: $36 $5d
    xor c                                         ; $68de: $a9
    ld de, $3956                                  ; $68df: $11 $56 $39
    reti                                          ; $68e2: $d9


    inc sp                                        ; $68e3: $33
    jp $6e8f                                      ; $68e4: $c3 $8f $6e


    rlca                                          ; $68e7: $07
    rra                                           ; $68e8: $1f
    db $dd                                        ; $68e9: $dd
    and e                                         ; $68ea: $a3
    push af                                       ; $68eb: $f5
    db $fc                                        ; $68ec: $fc
    db $d3                                        ; $68ed: $d3
    adc l                                         ; $68ee: $8d
    ld d, $92                                     ; $68ef: $16 $92
    dec hl                                        ; $68f1: $2b
    jp nz, $ed0a                                  ; $68f2: $c2 $0a $ed

    ld a, a                                       ; $68f5: $7f
    ld [hl], d                                    ; $68f6: $72

Call_06f_68f7:
    add h                                         ; $68f7: $84
    and a                                         ; $68f8: $a7
    sub $43                                       ; $68f9: $d6 $43
    ld c, e                                       ; $68fb: $4b
    adc l                                         ; $68fc: $8d
    add $1d                                       ; $68fd: $c6 $1d
    cp d                                          ; $68ff: $ba
    dec e                                         ; $6900: $1d
    sub a                                         ; $6901: $97
    dec hl                                        ; $6902: $2b
    jp c, $a8c7                                   ; $6903: $da $c7 $a8

    ld de, $d0bd                                  ; $6906: $11 $bd $d0
    db $e4                                        ; $6909: $e4
    cp d                                          ; $690a: $ba
    and a                                         ; $690b: $a7
    inc de                                        ; $690c: $13
    xor h                                         ; $690d: $ac
    ld l, [hl]                                    ; $690e: $6e
    ld l, c                                       ; $690f: $69
    and h                                         ; $6910: $a4

Jump_06f_6911:
    xor l                                         ; $6911: $ad
    pop de                                        ; $6912: $d1
    reti                                          ; $6913: $d9


    ld c, $57                                     ; $6914: $0e $57
    ld [hl], c                                    ; $6916: $71
    or d                                          ; $6917: $b2
    push hl                                       ; $6918: $e5
    dec b                                         ; $6919: $05
    db $fd                                        ; $691a: $fd
    di                                            ; $691b: $f3
    ld a, e                                       ; $691c: $7b
    ld [$992a], sp                                ; $691d: $08 $2a $99
    inc hl                                        ; $6920: $23
    ld [hl], a                                    ; $6921: $77
    ld sp, $7fb4                                  ; $6922: $31 $b4 $7f
    sbc d                                         ; $6925: $9a
    db $e3                                        ; $6926: $e3
    ld l, $86                                     ; $6927: $2e $86
    ld e, [hl]                                    ; $6929: $5e
    ld [$dac7], a                                 ; $692a: $ea $c7 $da
    ld c, c                                       ; $692d: $49
    pop de                                        ; $692e: $d1
    ld b, [hl]                                    ; $692f: $46
    ld c, e                                       ; $6930: $4b
    adc l                                         ; $6931: $8d
    cp a                                          ; $6932: $bf
    ld d, e                                       ; $6933: $53
    cp d                                          ; $6934: $ba
    ld [hl+], a                                   ; $6935: $22
    ld c, h                                       ; $6936: $4c
    ld [hl], $7a                                  ; $6937: $36 $7a
    jp hl                                         ; $6939: $e9


    nop                                           ; $693a: $00
    scf                                           ; $693b: $37
    ld b, a                                       ; $693c: $47
    sbc [hl]                                      ; $693d: $9e
    ld l, c                                       ; $693e: $69
    db $fd                                        ; $693f: $fd
    inc l                                         ; $6940: $2c
    dec l                                         ; $6941: $2d
    dec [hl]                                      ; $6942: $35
    and h                                         ; $6943: $a4
    pop de                                        ; $6944: $d1
    dec d                                         ; $6945: $15
    add c                                         ; $6946: $81
    or h                                          ; $6947: $b4
    or [hl]                                       ; $6948: $b6
    inc bc                                        ; $6949: $03
    sbc a                                         ; $694a: $9f
    adc l                                         ; $694b: $8d
    add e                                         ; $694c: $83
    and c                                         ; $694d: $a1
    add c                                         ; $694e: $81
    call nz, $95e6                                ; $694f: $c4 $e6 $95
    ld c, a                                       ; $6952: $4f
    jp hl                                         ; $6953: $e9


    add d                                         ; $6954: $82
    dec hl                                        ; $6955: $2b
    dec [hl]                                      ; $6956: $35
    ld a, [c]                                     ; $6957: $f2
    ld a, e                                       ; $6958: $7b
    call nc, $8a41                                ; $6959: $d4 $41 $8a
    sub e                                         ; $695c: $93
    add h                                         ; $695d: $84
    sbc a                                         ; $695e: $9f
    ld c, e                                       ; $695f: $4b
    rlca                                          ; $6960: $07

Call_06f_6961:
    rst $20                                       ; $6961: $e7
    or a                                          ; $6962: $b7
    inc h                                         ; $6963: $24
    db $e3                                        ; $6964: $e3
    ld [hl], h                                    ; $6965: $74
    ld a, d                                       ; $6966: $7a
    dec c                                         ; $6967: $0d
    cp e                                          ; $6968: $bb
    ld l, b                                       ; $6969: $68
    ld a, [hl]                                    ; $696a: $7e
    ld [de], a                                    ; $696b: $12
    inc [hl]                                      ; $696c: $34
    sub b                                         ; $696d: $90
    add sp, -$56                                  ; $696e: $e8 $aa
    db $10                                        ; $6970: $10
    or d                                          ; $6971: $b2
    db $db                                        ; $6972: $db
    or [hl]                                       ; $6973: $b6
    dec e                                         ; $6974: $1d
    rra                                           ; $6975: $1f
    scf                                           ; $6976: $37
    sub b                                         ; $6977: $90

Call_06f_6978:
    ld e, b                                       ; $6978: $58
    ret z                                         ; $6979: $c8

    ret                                           ; $697a: $c9


    sub c                                         ; $697b: $91
    sub d                                         ; $697c: $92
    jp hl                                         ; $697d: $e9


    adc l                                         ; $697e: $8d
    inc bc                                        ; $697f: $03
    rst $10                                       ; $6980: $d7
    or b                                          ; $6981: $b0
    adc e                                         ; $6982: $8b
    and $a7                                       ; $6983: $e6 $a7
    ld a, [hl-]                                   ; $6985: $3a
    sub $33                                       ; $6986: $d6 $33
    dec [hl]                                      ; $6988: $35
    cp c                                          ; $6989: $b9
    ld l, d                                       ; $698a: $6a
    jp nc, $f538                                  ; $698b: $d2 $38 $f5

    xor h                                         ; $698e: $ac
    ret nc                                        ; $698f: $d0

    ld d, [hl]                                    ; $6990: $56
    sub [hl]                                      ; $6991: $96
    ldh a, [$5c]                                  ; $6992: $f0 $5c
    add [hl]                                      ; $6994: $86
    or d                                          ; $6995: $b2
    db $db                                        ; $6996: $db
    or [hl]                                       ; $6997: $b6
    sub l                                         ; $6998: $95
    ld h, l                                       ; $6999: $65
    ld a, [hl+]                                   ; $699a: $2a
    ld [hl], e                                    ; $699b: $73
    inc [hl]                                      ; $699c: $34
    xor [hl]                                      ; $699d: $ae
    jp nc, $bc35                                  ; $699e: $d2 $35 $bc

    dec hl                                        ; $69a1: $2b
    cpl                                           ; $69a2: $2f
    add hl, sp                                    ; $69a3: $39
    db $db                                        ; $69a4: $db
    ld bc, $e137                                  ; $69a5: $01 $37 $e1
    ld b, [hl]                                    ; $69a8: $46
    dec de                                        ; $69a9: $1b
    ld l, l                                       ; $69aa: $6d
    inc h                                         ; $69ab: $24
    xor h                                         ; $69ac: $ac
    sbc [hl]                                      ; $69ad: $9e
    dec a                                         ; $69ae: $3d
    ld e, c                                       ; $69af: $59
    ld a, [bc]                                    ; $69b0: $0a
    ld b, a                                       ; $69b1: $47
    or a                                          ; $69b2: $b7
    ld a, [hl]                                    ; $69b3: $7e
    call nz, $daff                                ; $69b4: $c4 $ff $da
    ld [hl], a                                    ; $69b7: $77
    sub [hl]                                      ; $69b8: $96
    cp l                                          ; $69b9: $bd
    ld c, d                                       ; $69ba: $4a

jr_06f_69bb:
    ld [hl], e                                    ; $69bb: $73
    ld l, e                                       ; $69bc: $6b
    ld [hl-], a                                   ; $69bd: $32
    dec b                                         ; $69be: $05
    db $fd                                        ; $69bf: $fd
    inc sp                                        ; $69c0: $33
    adc e                                         ; $69c1: $8b
    pop hl                                        ; $69c2: $e1
    ld a, [hl+]                                   ; $69c3: $2a
    rst $00                                       ; $69c4: $c7
    xor l                                         ; $69c5: $ad
    db $d3                                        ; $69c6: $d3
    ld l, h                                       ; $69c7: $6c
    cp l                                          ; $69c8: $bd
    ld a, [bc]                                    ; $69c9: $0a
    or e                                          ; $69ca: $b3
    sbc a                                         ; $69cb: $9f
    inc b                                         ; $69cc: $04
    db $fd                                        ; $69cd: $fd
    adc a                                         ; $69ce: $8f
    inc a                                         ; $69cf: $3c
    db $eb                                        ; $69d0: $eb
    rra                                           ; $69d1: $1f
    xor e                                         ; $69d2: $ab
    ld [hl], d                                    ; $69d3: $72

Call_06f_69d4:
    ld e, h                                       ; $69d4: $5c
    and a                                         ; $69d5: $a7
    ld d, a                                       ; $69d6: $57
    sub b                                         ; $69d7: $90
    ld d, a                                       ; $69d8: $57
    sbc [hl]                                      ; $69d9: $9e
    or d                                          ; $69da: $b2
    ld d, h                                       ; $69db: $54
    ld h, l                                       ; $69dc: $65
    sub a                                         ; $69dd: $97
    ld e, a                                       ; $69de: $5f
    inc de                                        ; $69df: $13
    or c                                          ; $69e0: $b1
    push af                                       ; $69e1: $f5
    ld h, $56                                     ; $69e2: $26 $56
    sub l                                         ; $69e4: $95
    ld d, [hl]                                    ; $69e5: $56
    add a                                         ; $69e6: $87
    and l                                         ; $69e7: $a5
    push af                                       ; $69e8: $f5
    ld c, e                                       ; $69e9: $4b
    ld [hl], h                                    ; $69ea: $74
    or a                                          ; $69eb: $b7
    ld e, h                                       ; $69ec: $5c
    ld a, e                                       ; $69ed: $7b
    ld b, e                                       ; $69ee: $43
    jr jr_06f_69bb                                ; $69ef: $18 $ca

    sbc l                                         ; $69f1: $9d
    add l                                         ; $69f2: $85
    ld l, d                                       ; $69f3: $6a
    jp nc, $eb08                                  ; $69f4: $d2 $08 $eb

    ld a, a                                       ; $69f7: $7f
    db $e4                                        ; $69f8: $e4
    reti                                          ; $69f9: $d9


    halt                                          ; $69fa: $76
    nop                                           ; $69fb: $00
    rra                                           ; $69fc: $1f
    rst $28                                       ; $69fd: $ef
    ld h, d                                       ; $69fe: $62
    ld e, [hl]                                    ; $69ff: $5e
    ld [$40e5], a                                 ; $6a00: $ea $e5 $40
    ld [c], a                                     ; $6a03: $e2
    adc $7a                                       ; $6a04: $ce $7a
    cp $59                                        ; $6a06: $fe $59
    and l                                         ; $6a08: $a5
    ld [hl], l                                    ; $6a09: $75
    sbc d                                         ; $6a0a: $9a
    ld a, [c]                                     ; $6a0b: $f2
    sub d                                         ; $6a0c: $92
    rst $30                                       ; $6a0d: $f7
    ld e, b                                       ; $6a0e: $58
    ld e, [hl]                                    ; $6a0f: $5e
    or e                                          ; $6a10: $b3
    push af                                       ; $6a11: $f5
    ld e, h                                       ; $6a12: $5c
    ld h, e                                       ; $6a13: $63
    ld [hl], b                                    ; $6a14: $70
    db $dd                                        ; $6a15: $dd
    ld e, b                                       ; $6a16: $58
    sbc h                                         ; $6a17: $9c
    ld c, e                                       ; $6a18: $4b
    rlca                                          ; $6a19: $07
    sub a                                         ; $6a1a: $97
    ld bc, $0000                                  ; $6a1b: $01 $00 $00
    nop                                           ; $6a1e: $00
    nop                                           ; $6a1f: $00
    add b                                         ; $6a20: $80
    ld hl, sp-$2e                                 ; $6a21: $f8 $d2
    ld bc, $c597                                  ; $6a23: $01 $97 $c5
    cp c                                          ; $6a26: $b9
    db $db                                        ; $6a27: $db
    or [hl]                                       ; $6a28: $b6
    push de                                       ; $6a29: $d5
    xor l                                         ; $6a2a: $ad
    inc l                                         ; $6a2b: $2c
    ld b, [hl]                                    ; $6a2c: $46
    dec h                                         ; $6a2d: $25
    add h                                         ; $6a2e: $84
    cp h                                          ; $6a2f: $bc
    adc b                                         ; $6a30: $88
    ld l, [hl]                                    ; $6a31: $6e
    db $db                                        ; $6a32: $db
    ld d, [hl]                                    ; $6a33: $56
    ld l, d                                       ; $6a34: $6a
    inc c                                         ; $6a35: $0c
    xor [hl]                                      ; $6a36: $ae
    rra                                           ; $6a37: $1f
    ld h, [hl]                                    ; $6a38: $66
    ccf                                           ; $6a39: $3f
    db $dd                                        ; $6a3a: $dd
    or [hl]                                       ; $6a3b: $b6
    db $ed                                        ; $6a3c: $ed
    nop                                           ; $6a3d: $00
    rra                                           ; $6a3e: $1f
    scf                                           ; $6a3f: $37
    sub b                                         ; $6a40: $90
    ld e, b                                       ; $6a41: $58
    ret z                                         ; $6a42: $c8

    ret                                           ; $6a43: $c9


    sub c                                         ; $6a44: $91
    sub d                                         ; $6a45: $92
    jp hl                                         ; $6a46: $e9


    adc l                                         ; $6a47: $8d
    inc bc                                        ; $6a48: $03
    rst $20                                       ; $6a49: $e7
    dec sp                                        ; $6a4a: $3b
    xor e                                         ; $6a4b: $ab
    xor h                                         ; $6a4c: $ac
    ld l, b                                       ; $6a4d: $68
    sub $d6                                       ; $6a4e: $d6 $d6

Call_06f_6a50:
    ld l, e                                       ; $6a50: $6b
    ld c, h                                       ; $6a51: $4c
    call $d8e3                                    ; $6a52: $cd $e3 $d8
    dec bc                                        ; $6a55: $0b
    ld a, l                                       ; $6a56: $7d
    ld h, a                                       ; $6a57: $67
    add hl, de                                    ; $6a58: $19
    di                                            ; $6a59: $f3
    ld l, l                                       ; $6a5a: $6d
    ld l, [hl]                                    ; $6a5b: $6e
    db $fd                                        ; $6a5c: $fd
    adc h                                         ; $6a5d: $8c
    ld l, [hl]                                    ; $6a5e: $6e
    or h                                          ; $6a5f: $b4
    add c                                         ; $6a60: $81
    call nz, $fcee                                ; $6a61: $c4 $ee $fc
    rlca                                          ; $6a64: $07
    ccf                                           ; $6a65: $3f
    or c                                          ; $6a66: $b1
    ld c, a                                       ; $6a67: $4f
    dec a                                         ; $6a68: $3d
    ei                                            ; $6a69: $fb
    sbc a                                         ; $6a6a: $9f
    dec a                                         ; $6a6b: $3d
    and d                                         ; $6a6c: $a2
    ld hl, $bd0c                                  ; $6a6d: $21 $0c $bd
    adc d                                         ; $6a70: $8a

jr_06f_6a71:
    sub e                                         ; $6a71: $93
    dec l                                         ; $6a72: $2d
    cp a                                          ; $6a73: $bf
    dec e                                         ; $6a74: $1d
    rst $20                                       ; $6a75: $e7
    ld a, [de]                                    ; $6a76: $1a
    jp nc, Jump_06f_6dd8                          ; $6a77: $d2 $d8 $6d

    db $db                                        ; $6a7a: $db
    ld a, [$791f]                                 ; $6a7b: $fa $1f $79
    ld d, [hl]                                    ; $6a7e: $56
    add l                                         ; $6a7f: $85
    sub b                                         ; $6a80: $90
    sbc l                                         ; $6a81: $9d
    ld b, $12                                     ; $6a82: $06 $12
    ld c, e                                       ; $6a84: $4b
    adc l                                         ; $6a85: $8d
    pop bc                                        ; $6a86: $c1
    ld [hl], l                                    ; $6a87: $75
    adc b                                         ; $6a88: $88
    ret z                                         ; $6a89: $c8

    ld a, [hl]                                    ; $6a8a: $7e
    ld a, [hl-]                                   ; $6a8b: $3a
    jp c, $9794                                   ; $6a8c: $da $94 $97

    cp h                                          ; $6a8f: $bc
    rst $00                                       ; $6a90: $c7
    ld a, [c]                                     ; $6a91: $f2
    ld a, [de]                                    ; $6a92: $1a
    ld a, l                                       ; $6a93: $7d
    db $e3                                        ; $6a94: $e3
    nop                                           ; $6a95: $00
    sub a                                         ; $6a96: $97
    rst $30                                       ; $6a97: $f7
    ld d, e                                       ; $6a98: $53
    cp d                                          ; $6a99: $ba
    ldh [rNR30], a                                ; $6a9a: $e0 $1a
    ld c, b                                       ; $6a9c: $48
    ld l, h                                       ; $6a9d: $6c
    jr nz, jr_06f_6a71                            ; $6a9e: $20 $d1

    ld a, [hl-]                                   ; $6aa0: $3a
    ld d, l                                       ; $6aa1: $55
    and [hl]                                      ; $6aa2: $a6
    ld a, [hl+]                                   ; $6aa3: $2a
    ld a, [c]                                     ; $6aa4: $f2
    add hl, hl                                    ; $6aa5: $29
    ld [hl], c                                    ; $6aa6: $71
    db $eb                                        ; $6aa7: $eb
    ld e, e                                       ; $6aa8: $5b
    inc d                                         ; $6aa9: $14
    jp nc, Jump_06f_553a                          ; $6aaa: $d2 $3a $55

    db $e4                                        ; $6aad: $e4
    ld d, e                                       ; $6aae: $53
    ld h, d                                       ; $6aaf: $62
    dec a                                         ; $6ab0: $3d
    sbc e                                         ; $6ab1: $9b
    ld e, h                                       ; $6ab2: $5c
    ld d, e                                       ; $6ab3: $53
    ld e, [hl]                                    ; $6ab4: $5e
    ld a, [c]                                     ; $6ab5: $f2
    ld e, $cb                                     ; $6ab6: $1e $cb
    ld l, e                                       ; $6ab8: $6b
    ld [$e390], a                                 ; $6ab9: $ea $90 $e3
    dec b                                         ; $6abc: $05
    ld d, a                                       ; $6abd: $57
    inc [hl]                                      ; $6abe: $34
    and h                                         ; $6abf: $a4
    ld [$ffa0], a                                 ; $6ac0: $ea $a0 $ff
    push af                                       ; $6ac3: $f5
    add a                                         ; $6ac4: $87
    and b                                         ; $6ac5: $a0
    ld c, $5a                                     ; $6ac6: $0e $5a
    inc d                                         ; $6ac8: $14
    ld c, $bb                                     ; $6ac9: $0e $bb
    ld e, a                                       ; $6acb: $5f
    rla                                           ; $6acc: $17
    rlca                                          ; $6acd: $07
    dec c                                         ; $6ace: $0d
    ld h, c                                       ; $6acf: $61
    xor b                                         ; $6ad0: $a8
    jp nc, $c685                                  ; $6ad1: $d2 $85 $c6

    xor l                                         ; $6ad4: $ad
    rst $10                                       ; $6ad5: $d7
    and b                                         ; $6ad6: $a0
    ld b, l                                       ; $6ad7: $45
    ld b, e                                       ; $6ad8: $43
    xor d                                         ; $6ad9: $aa
    ld c, $1a                                     ; $6ada: $0e $1a
    ld c, b                                       ; $6adc: $48
    inc l                                         ; $6add: $2c
    dec [hl]                                      ; $6ade: $35
    ld b, $57                                     ; $6adf: $06 $57
    add h                                         ; $6ae1: $84
    db $db                                        ; $6ae2: $db
    call z, $ba7e                                 ; $6ae3: $cc $7e $ba
    ld d, h                                       ; $6ae6: $54
    and a                                         ; $6ae7: $a7
    sub b                                         ; $6ae8: $90
    ld b, [hl]                                    ; $6ae9: $46
    cp a                                          ; $6aea: $bf
    ld [hl+], a                                   ; $6aeb: $22
    ld a, [de]                                    ; $6aec: $1a
    ld c, b                                       ; $6aed: $48
    db $ec                                        ; $6aee: $ec
    ld a, $a7                                     ; $6aef: $3e $a7
    xor c                                         ; $6af1: $a9
    sub b                                         ; $6af2: $90
    ld b, d                                       ; $6af3: $42
    ld e, d                                       ; $6af4: $5a
    ld [hl], b                                    ; $6af5: $70
    daa                                           ; $6af6: $27
    ld b, l                                       ; $6af7: $45
    ld b, e                                       ; $6af8: $43
    push hl                                       ; $6af9: $e5

jr_06f_6afa:
    inc l                                         ; $6afa: $2c
    ld b, l                                       ; $6afb: $45
    inc bc                                        ; $6afc: $03
    adc c                                         ; $6afd: $89
    db $dd                                        ; $6afe: $dd
    push bc                                       ; $6aff: $c5
    xor h                                         ; $6b00: $ac

jr_06f_6b01:
    add a                                         ; $6b01: $87
    dec b                                         ; $6b02: $05
    rla                                           ; $6b03: $17
    db $fd                                        ; $6b04: $fd
    cpl                                           ; $6b05: $2f
    adc a                                         ; $6b06: $8f
    ld [hl-], a                                   ; $6b07: $32
    jp nc, $b632                                  ; $6b08: $d2 $32 $b6

    inc bc                                        ; $6b0b: $03
    rst $10                                       ; $6b0c: $d7
    and b                                         ; $6b0d: $a0
    cp l                                          ; $6b0e: $bd
    ld d, b                                       ; $6b0f: $50
    cp c                                          ; $6b10: $b9
    jp Jump_06f_4fa6                              ; $6b11: $c3 $a6 $4f


    ld [hl], h                                    ; $6b14: $74
    ld a, d                                       ; $6b15: $7a
    cp [hl]                                       ; $6b16: $be
    xor a                                         ; $6b17: $af
    ld e, e                                       ; $6b18: $5b
    set 5, d                                      ; $6b19: $cb $ea
    pop de                                        ; $6b1b: $d1
    sbc e                                         ; $6b1c: $9b
    res 4, e                                      ; $6b1d: $cb $a3
    ld e, $bd                                     ; $6b1f: $1e $bd
    ld c, [hl]                                    ; $6b21: $4e
    ld l, a                                       ; $6b22: $6f
    add sp, $3b                                   ; $6b23: $e8 $3b
    ld l, e                                       ; $6b25: $6b
    rra                                           ; $6b26: $1f
    dec e                                         ; $6b27: $1d
    ld de, $4bf6                                  ; $6b28: $11 $f6 $4b
    cp l                                          ; $6b2b: $bd
    ld b, $6d                                     ; $6b2c: $06 $6d
    jr nz, jr_06f_6b01                            ; $6b2e: $20 $d1

    sub l                                         ; $6b30: $95
    ld a, [de]                                    ; $6b31: $1a
    ld h, c                                       ; $6b32: $61
    dec bc                                        ; $6b33: $0b
    adc l                                         ; $6b34: $8d
    cp a                                          ; $6b35: $bf
    ld d, e                                       ; $6b36: $53
    ld c, a                                       ; $6b37: $4f
    and l                                         ; $6b38: $a5
    add [hl]                                      ; $6b39: $86
    inc [hl]                                      ; $6b3a: $34
    ld hl, sp+$79                                 ; $6b3b: $f8 $79
    db $e3                                        ; $6b3d: $e3
    nop                                           ; $6b3e: $00
    sub a                                         ; $6b3f: $97
    db $eb                                        ; $6b40: $eb
    xor b                                         ; $6b41: $a8
    ld c, $0d                                     ; $6b42: $0e $0d
    xor c                                         ; $6b44: $a9
    ld a, [hl-]                                   ; $6b45: $3a
    ld l, b                                       ; $6b46: $68
    jr nz, jr_06f_6afa                            ; $6b47: $20 $b1

    ret c                                         ; $6b49: $d8

    ld c, a                                       ; $6b4a: $4f
    add hl, hl                                    ; $6b4b: $29
    ld l, e                                       ; $6b4c: $6b
    xor a                                         ; $6b4d: $af
    jr nc, jr_06f_6b97                            ; $6b4e: $30 $47

    inc h                                         ; $6b50: $24
    dec de                                        ; $6b51: $1b
    dec l                                         ; $6b52: $2d
    and h                                         ; $6b53: $a4
    pop de                                        ; $6b54: $d1
    xor a                                         ; $6b55: $af
    ld [$a557], sp                                ; $6b56: $08 $57 $a5
    dec d                                         ; $6b59: $15
    add c                                         ; $6b5a: $81
    call nz, Call_000_0d9d                        ; $6b5b: $c4 $9d $0d
    inc h                                         ; $6b5e: $24
    halt                                          ; $6b5f: $76
    ld e, c                                       ; $6b60: $59
    ld [hl], b                                    ; $6b61: $70
    dec e                                         ; $6b62: $1d
    ld h, d                                       ; $6b63: $62
    ldh a, [rNR13]                                ; $6b64: $f0 $13
    ei                                            ; $6b66: $fb
    ld [$c72a], sp                                ; $6b67: $08 $2a $c7
    ld c, l                                       ; $6b6a: $4d
    db $fd                                        ; $6b6b: $fd
    cp d                                          ; $6b6c: $ba
    ld c, l                                       ; $6b6d: $4d
    ld d, a                                       ; $6b6e: $57
    ld l, b                                       ; $6b6f: $68
    xor c                                         ; $6b70: $a9
    pop de                                        ; $6b71: $d1
    cp b                                          ; $6b72: $b8
    ld b, e                                       ; $6b73: $43
    or a                                          ; $6b74: $b7
    ld e, [hl]                                    ; $6b75: $5e
    xor [hl]                                      ; $6b76: $ae
    and e                                         ; $6b77: $a3
    ld a, [hl-]                                   ; $6b78: $3a
    inc [hl]                                      ; $6b79: $34
    and h                                         ; $6b7a: $a4
    ld [$81a0], a                                 ; $6b7b: $ea $a0 $81
    call nz, $8b2a                                ; $6b7e: $c4 $2a $8b
    sub b                                         ; $6b81: $90
    and a                                         ; $6b82: $a7
    ld c, c                                       ; $6b83: $49
    cp l                                          ; $6b84: $bd
    or e                                          ; $6b85: $b3
    rst $38                                       ; $6b86: $ff
    push hl                                       ; $6b87: $e5
    pop de                                        ; $6b88: $d1
    ld [hl], b                                    ; $6b89: $70
    xor h                                         ; $6b8a: $ac
    ld l, $ad                                     ; $6b8b: $2e $ad
    jr c, jr_06f_6be9                             ; $6b8d: $38 $5a

    db $e4                                        ; $6b8f: $e4
    ld d, c                                       ; $6b90: $51
    ld b, c                                       ; $6b91: $41
    xor c                                         ; $6b92: $a9
    ld hl, $d90d                                  ; $6b93: $21 $0d $d9
    ld c, a                                       ; $6b96: $4f

jr_06f_6b97:
    sub e                                         ; $6b97: $93
    ld b, e                                       ; $6b98: $43
    and l                                         ; $6b99: $a5
    jr jr_06f_6bf5                                ; $6b9a: $18 $59

    or d                                          ; $6b9c: $b2
    sbc [hl]                                      ; $6b9d: $9e
    dec [hl]                                      ; $6b9e: $35
    add $71                                       ; $6b9f: $c6 $71
    or b                                          ; $6ba1: $b0
    ld c, [hl]                                    ; $6ba2: $4e
    jp $b4f1                                      ; $6ba3: $c3 $f1 $b4


    db $ed                                        ; $6ba6: $ed
    nop                                           ; $6ba7: $00
    scf                                           ; $6ba8: $37
    ld h, a                                       ; $6ba9: $67
    rst $30                                       ; $6baa: $f7
    ld [hl], h                                    ; $6bab: $74
    ld h, e                                       ; $6bac: $63
    pop af                                        ; $6bad: $f1
    jp nc, Jump_06f_5701                          ; $6bae: $d2 $01 $57

    ld h, c                                       ; $6bb1: $61
    or $d3                                        ; $6bb2: $f6 $d3
    and l                                         ; $6bb4: $a5
    sbc $1c                                       ; $6bb5: $de $1c
    ld a, c                                       ; $6bb7: $79
    ld d, [hl]                                    ; $6bb8: $56
    ld l, d                                       ; $6bb9: $6a
    inc c                                         ; $6bba: $0c
    xor [hl]                                      ; $6bbb: $ae
    sub b                                         ; $6bbc: $90
    xor $8d                                       ; $6bbd: $ee $8d
    inc bc                                        ; $6bbf: $03
    rst $20                                       ; $6bc0: $e7
    ld a, [de]                                    ; $6bc1: $1a
    daa                                           ; $6bc2: $27
    ld l, l                                       ; $6bc3: $6d
    cp l                                          ; $6bc4: $bd
    ld b, $ed                                     ; $6bc5: $06 $ed
    inc [hl]                                      ; $6bc7: $34
    push hl                                       ; $6bc8: $e5
    dec h                                         ; $6bc9: $25
    rst $28                                       ; $6bca: $ef
    or c                                          ; $6bcb: $b1
    cp h                                          ; $6bcc: $bc
    and [hl]                                      ; $6bcd: $a6
    call nc, Call_06f_5c18                        ; $6bce: $d4 $18 $5c
    scf                                           ; $6bd1: $37
    ld d, $47                                     ; $6bd2: $16 $47
    ld d, b                                       ; $6bd4: $50
    db $ec                                        ; $6bd5: $ec
    xor e                                         ; $6bd6: $ab
    adc b                                         ; $6bd7: $88
    ld d, $ac                                     ; $6bd8: $16 $ac
    db $db                                        ; $6bda: $db
    ld bc, $17af                                  ; $6bdb: $01 $af $17
    add c                                         ; $6bde: $81
    or h                                          ; $6bdf: $b4
    ld a, [de]                                    ; $6be0: $1a
    ld c, b                                       ; $6be1: $48
    inc l                                         ; $6be2: $2c
    ld d, e                                       ; $6be3: $53
    and a                                         ; $6be4: $a7
    sbc [hl]                                      ; $6be5: $9e
    db $eb                                        ; $6be6: $eb
    sub $08                                       ; $6be7: $d6 $08

jr_06f_6be9:
    ld a, d                                       ; $6be9: $7a
    dec d                                         ; $6bea: $15
    ld h, [hl]                                    ; $6beb: $66
    ccf                                           ; $6bec: $3f
    ld l, l                                       ; $6bed: $6d
    dec a                                         ; $6bee: $3d

jr_06f_6bef:
    rst $10                                       ; $6bef: $d7
    jr jr_06f_6c4e                                ; $6bf0: $18 $5c

    push hl                                       ; $6bf2: $e5
    add hl, hl                                    ; $6bf3: $29
    reti                                          ; $6bf4: $d9


jr_06f_6bf5:
    inc d                                         ; $6bf5: $14
    and a                                         ; $6bf6: $a7
    ld sp, $3d6c                                  ; $6bf7: $31 $6c $3d
    rst $28                                       ; $6bfa: $ef
    ld c, [hl]                                    ; $6bfb: $4e
    daa                                           ; $6bfc: $27
    inc [hl]                                      ; $6bfd: $34
    ld a, $a1                                     ; $6bfe: $3e $a1
    inc d                                         ; $6c00: $14
    ld [hl], h                                    ; $6c01: $74
    or h                                          ; $6c02: $b4
    pop hl                                        ; $6c03: $e1
    adc [hl]                                      ; $6c04: $8e
    call z, $ed08                                 ; $6c05: $cc $08 $ed
    rst $30                                       ; $6c08: $f7
    pop bc                                        ; $6c09: $c1
    dec d                                         ; $6c0a: $15
    adc l                                         ; $6c0b: $8d
    pop bc                                        ; $6c0c: $c1
    push de                                       ; $6c0d: $d5
    ld h, c                                       ; $6c0e: $61
    rst $28                                       ; $6c0f: $ef
    jp z, $1691                                   ; $6c10: $ca $91 $16

    ld a, [de]                                    ; $6c13: $1a
    inc hl                                        ; $6c14: $23
    db $fc                                        ; $6c15: $fc
    ld l, b                                       ; $6c16: $68
    sub c                                         ; $6c17: $91
    inc hl                                        ; $6c18: $23
    ld [hl], l                                    ; $6c19: $75
    db $eb                                        ; $6c1a: $eb
    push hl                                       ; $6c1b: $e5
    ld a, b                                       ; $6c1c: $78
    and c                                         ; $6c1d: $a1
    adc [hl]                                      ; $6c1e: $8e
    ld [$21a6], a                                 ; $6c1f: $ea $a6 $21
    rst $30                                       ; $6c22: $f7
    pop de                                        ; $6c23: $d1
    ld c, d                                       ; $6c24: $4a
    and $88                                       ; $6c25: $e6 $88
    ld h, h                                       ; $6c27: $64
    and e                                         ; $6c28: $a3
    db $db                                        ; $6c29: $db
    ld bc, $e137                                  ; $6c2a: $01 $37 $e1
    ld b, [hl]                                    ; $6c2d: $46
    cp e                                          ; $6c2e: $bb
    or d                                          ; $6c2f: $b2
    sbc a                                         ; $6c30: $9f
    ld e, [hl]                                    ; $6c31: $5e
    add l                                         ; $6c32: $85
    reti                                          ; $6c33: $d9


    ld c, a                                       ; $6c34: $4f
    ld e, e                                       ; $6c35: $5b
    rst $08                                       ; $6c36: $cf
    ld d, e                                       ; $6c37: $53
    ld de, $c68e                                  ; $6c38: $11 $8e $c6
    ld l, c                                       ; $6c3b: $69
    jr nz, jr_06f_6bef                            ; $6c3c: $20 $b1

    and e                                         ; $6c3e: $a3
    sbc l                                         ; $6c3f: $9d
    inc d                                         ; $6c40: $14
    ld l, l                                       ; $6c41: $6d
    or h                                          ; $6c42: $b4
    rst $18                                       ; $6c43: $df
    rlca                                          ; $6c44: $07
    ld d, a                                       ; $6c45: $57
    adc d                                         ; $6c46: $8a
    ld a, c                                       ; $6c47: $79
    add d                                         ; $6c48: $82
    pop bc                                        ; $6c49: $c1
    dec [hl]                                      ; $6c4a: $35
    and e                                         ; $6c4b: $a3
    ld d, h                                       ; $6c4c: $54
    add hl, sp                                    ; $6c4d: $39

jr_06f_6c4e:
    dec sp                                        ; $6c4e: $3b
    or [hl]                                       ; $6c4f: $b6
    inc bc                                        ; $6c50: $03
    rst $28                                       ; $6c51: $ef
    call z, $8eaa                                 ; $6c52: $cc $aa $8e
    ld b, l                                       ; $6c55: $45
    or $2a                                        ; $6c56: $f6 $2a
    ld c, [hl]                                    ; $6c58: $4e
    or [hl]                                       ; $6c59: $b6
    ld a, h                                       ; $6c5a: $7c
    db $e3                                        ; $6c5b: $e3
    reti                                          ; $6c5c: $d9


    inc de                                        ; $6c5d: $13
    ei                                            ; $6c5e: $fb
    sub h                                         ; $6c5f: $94
    ld e, c                                       ; $6c60: $59
    ld c, [hl]                                    ; $6c61: $4e

Jump_06f_6c62:
    adc [hl]                                      ; $6c62: $8e
    ld b, $3f                                     ; $6c63: $06 $3f
    call Call_06f_68a8                            ; $6c65: $cd $a8 $68
    rra                                           ; $6c68: $1f
    and e                                         ; $6c69: $a3
    ld b, [hl]                                    ; $6c6a: $46
    ld l, h                                       ; $6c6b: $6c
    cp l                                          ; $6c6c: $bd
    ld a, h                                       ; $6c6d: $7c
    ld a, [de]                                    ; $6c6e: $1a
    add e                                         ; $6c6f: $83
    and b                                         ; $6c70: $a0
    ld c, d                                       ; $6c71: $4a
    ld e, e                                       ; $6c72: $5b
    xor b                                         ; $6c73: $a8
    db $e3                                        ; $6c74: $e3
    ld l, $1e                                     ; $6c75: $2e $1e
    db $eb                                        ; $6c77: $eb
    ld a, a                                       ; $6c78: $7f
    db $e4                                        ; $6c79: $e4
    ld e, c                                       ; $6c7a: $59
    sub a                                         ; $6c7b: $97
    push de                                       ; $6c7c: $d5
    cpl                                           ; $6c7d: $2f
    ld h, e                                       ; $6c7e: $63
    sbc h                                         ; $6c7f: $9c
    add [hl]                                      ; $6c80: $86
    jr nc, @+$16                                  ; $6c81: $30 $14

    ld a, l                                       ; $6c83: $7d
    rst $10                                       ; $6c84: $d7
    sub [hl]                                      ; $6c85: $96
    ld l, b                                       ; $6c86: $68
    push hl                                       ; $6c87: $e5
    ld a, e                                       ; $6c88: $7b
    ld l, h                                       ; $6c89: $6c
    ld h, c                                       ; $6c8a: $61
    dec sp                                        ; $6c8b: $3b
    nop                                           ; $6c8c: $00
    ld l, a                                       ; $6c8d: $6f
    or e                                          ; $6c8e: $b3
    rst $38                                       ; $6c8f: $ff
    reti                                          ; $6c90: $d9


    inc hl                                        ; $6c91: $23
    ld a, [de]                                    ; $6c92: $1a
    jp nz, Jump_06f_5450                          ; $6c93: $c2 $50 $54

    jp nz, $9ea1                                  ; $6c96: $c2 $a1 $9e

    ld c, l                                       ; $6c99: $4d
    ld c, $fd                                     ; $6c9a: $0e $fd
    di                                            ; $6c9c: $f3
    or [hl]                                       ; $6c9d: $b6
    and b                                         ; $6c9e: $a0
    rst $10                                       ; $6c9f: $d7
    daa                                           ; $6ca0: $27
    ld b, [hl]                                    ; $6ca1: $46
    jp c, Jump_000_0076                           ; $6ca2: $da $76 $00

    scf                                           ; $6ca5: $37
    ld [de], a                                    ; $6ca6: $12
    ld [$9919], a                                 ; $6ca7: $ea $19 $99
    cpl                                           ; $6caa: $2f
    cp $4e                                        ; $6cab: $fe $4e
    xor c                                         ; $6cad: $a9
    ld sp, $72b8                                  ; $6cae: $31 $b8 $72
    ld e, h                                       ; $6cb1: $5c
    cp b                                          ; $6cb2: $b8
    inc sp                                        ; $6cb3: $33

jr_06f_6cb4:
    ld b, d                                       ; $6cb4: $42
    ret nc                                        ; $6cb5: $d0

    xor e                                         ; $6cb6: $ab
    jr nc, jr_06f_6cb4                            ; $6cb7: $30 $fb

    ld l, c                                       ; $6cb9: $69
    db $eb                                        ; $6cba: $eb
    call $23d9                                    ; $6cbb: $cd $d9 $23
    db $eb                                        ; $6cbe: $eb
    sub a                                         ; $6cbf: $97
    ld sp, $31c2                                  ; $6cc0: $31 $c2 $31
    ld b, a                                       ; $6cc3: $47
    ld [hl], $84                                  ; $6cc4: $36 $84
    and c                                         ; $6cc6: $a1
    add sp, -$45                                  ; $6cc7: $e8 $bb
    or [hl]                                       ; $6cc9: $b6
    ld b, h                                       ; $6cca: $44
    dec hl                                        ; $6ccb: $2b
    rst $18                                       ; $6ccc: $df
    ld h, e                                       ; $6ccd: $63
    dec bc                                        ; $6cce: $0b
    db $db                                        ; $6ccf: $db
    ld bc, $8cef                                  ; $6cd0: $01 $ef $8c
    ld e, h                                       ; $6cd3: $5c
    ld e, c                                       ; $6cd4: $59
    inc a                                         ; $6cd5: $3c
    push af                                       ; $6cd6: $f5
    ld l, h                                       ; $6cd7: $6c
    jr c, jr_06f_6d00                             ; $6cd8: $38 $26

    ld h, a                                       ; $6cda: $67
    dec sp                                        ; $6cdb: $3b
    nop                                           ; $6cdc: $00
    ld d, a                                       ; $6cdd: $57
    ld h, c                                       ; $6cde: $61
    or $d3                                        ; $6cdf: $f6 $d3
    and l                                         ; $6ce1: $a5
    ld a, [hl]                                    ; $6ce2: $7e
    call c, $6240                                 ; $6ce3: $dc $40 $62
    ld hl, $4727                                  ; $6ce6: $21 $27 $47
    ld c, d                                       ; $6ce9: $4a
    and [hl]                                      ; $6cea: $a6
    scf                                           ; $6ceb: $37
    ld c, $37                                     ; $6cec: $0e $37
    ld h, a                                       ; $6cee: $67
    rst $30                                       ; $6cef: $f7
    ld [hl], h                                    ; $6cf0: $74
    ld h, e                                       ; $6cf1: $63
    or c                                          ; $6cf2: $b1
    call nc, $dc18                                ; $6cf3: $d4 $18 $dc
    adc h                                         ; $6cf6: $8c
    adc d                                         ; $6cf7: $8a
    or $31                                        ; $6cf8: $f6 $31
    ld l, d                                       ; $6cfa: $6a
    add h                                         ; $6cfb: $84
    and b                                         ; $6cfc: $a0
    call nc, $8690                                ; $6cfd: $d4 $90 $86

jr_06f_6d00:
    db $ec                                        ; $6d00: $ec
    and a                                         ; $6d01: $a7
    ld hl, $0d0c                                  ; $6d02: $21 $0c $0d
    ld a, c                                       ; $6d05: $79
    add d                                         ; $6d06: $82
    dec d                                         ; $6d07: $15
    cp l                                          ; $6d08: $bd
    ld c, [hl]                                    ; $6d09: $4e

Jump_06f_6d0a:
    ld l, a                                       ; $6d0a: $6f
    add sp, $3b                                   ; $6d0b: $e8 $3b
    ld l, e                                       ; $6d0d: $6b
    rra                                           ; $6d0e: $1f
    dec e                                         ; $6d0f: $1d
    ld de, $adf6                                  ; $6d10: $11 $f6 $ad
    rst $20                                       ; $6d13: $e7
    ld h, l                                       ; $6d14: $65
    ld a, [hl+]                                   ; $6d15: $2a
    and h                                         ; $6d16: $a4
    ld a, b                                       ; $6d17: $78
    ld a, [de]                                    ; $6d18: $1a
    ld c, b                                       ; $6d19: $48
    db $ec                                        ; $6d1a: $ec
    adc l                                         ; $6d1b: $8d
    adc h                                         ; $6d1c: $8c
    sub b                                         ; $6d1d: $90
    sub l                                         ; $6d1e: $95
    sub e                                         ; $6d1f: $93
    sub l                                         ; $6d20: $95
    and a                                         ; $6d21: $a7
    or h                                          ; $6d22: $b4
    ld d, d                                       ; $6d23: $52
    and c                                         ; $6d24: $a1
    sbc d                                         ; $6d25: $9a
    inc [hl]                                      ; $6d26: $34
    jp nz, Jump_06f_49fa                          ; $6d27: $c2 $fa $49

    ld e, d                                       ; $6d2a: $5a
    ld h, [hl]                                    ; $6d2b: $66
    call c, $c21b                                 ; $6d2c: $dc $1b $c2
    ret nc                                        ; $6d2f: $d0

    ld b, b                                       ; $6d30: $40
    ld h, d                                       ; $6d31: $62
    cp c                                          ; $6d32: $b9
    or e                                          ; $6d33: $b3
    ld d, e                                       ; $6d34: $53
    ld a, h                                       ; $6d35: $7c
    sbc a                                         ; $6d36: $9f
    inc a                                         ; $6d37: $3c
    or a                                          ; $6d38: $b7
    inc bc                                        ; $6d39: $03
    rra                                           ; $6d3a: $1f
    db $fd                                        ; $6d3b: $fd
    ld c, [hl]                                    ; $6d3c: $4e
    db $fd                                        ; $6d3d: $fd
    ld a, [hl-]                                   ; $6d3e: $3a
    and c                                         ; $6d3f: $a1
    ld d, h                                       ; $6d40: $54
    ld h, l                                       ; $6d41: $65
    di                                            ; $6d42: $f3
    jr c, jr_06f_6da3                             ; $6d43: $38 $5e

    ld a, [hl-]                                   ; $6d45: $3a
    nop                                           ; $6d46: $00
    rst $28                                       ; $6d47: $ef
    inc l                                         ; $6d48: $2c
    ld h, e                                       ; $6d49: $63
    cp [hl]                                       ; $6d4a: $be
    ld c, l                                       ; $6d4b: $4d
    ld b, c                                       ; $6d4c: $41
    and a                                         ; $6d4d: $a7
    sub d                                         ; $6d4e: $92
    add hl, sp                                    ; $6d4f: $39
    ld [hl+], a                                   ; $6d50: $22
    reti                                          ; $6d51: $d9


    ld [$58ea], sp                                ; $6d52: $08 $ea $58
    push bc                                       ; $6d55: $c5
    cp $9f                                        ; $6d56: $fe $9f
    inc h                                         ; $6d58: $24
    xor b                                         ; $6d59: $a8
    add e                                         ; $6d5a: $83
    halt                                          ; $6d5b: $76
    or h                                          ; $6d5c: $b4
    sub e                                         ; $6d5d: $93
    and d                                         ; $6d5e: $a2
    adc l                                         ; $6d5f: $8d
    ld d, [hl]                                    ; $6d60: $56
    ld [hl-], a                                   ; $6d61: $32
    ld b, a                                       ; $6d62: $47
    inc h                                         ; $6d63: $24
    dec de                                        ; $6d64: $1b
    dec l                                         ; $6d65: $2d
    and h                                         ; $6d66: $a4
    pop de                                        ; $6d67: $d1
    xor a                                         ; $6d68: $af
    ld [$40d7], sp                                ; $6d69: $08 $d7 $40
    ld h, d                                       ; $6d6c: $62

jr_06f_6d6d:
    ld l, a                                       ; $6d6d: $6f
    adc $ee                                       ; $6d6e: $ce $ee
    jp hl                                         ; $6d70: $e9


    add $62                                       ; $6d71: $c6 $62
    sub a                                         ; $6d73: $97
    dec b                                         ; $6d74: $05
    rst $10                                       ; $6d75: $d7
    or c                                          ; $6d76: $b1
    ld c, $11                                     ; $6d77: $0e $11
    or [hl]                                       ; $6d79: $b6
    push af                                       ; $6d7a: $f5
    or d                                          ; $6d7b: $b2
    sub [hl]                                      ; $6d7c: $96
    ld a, [de]                                    ; $6d7d: $1a
    adc l                                         ; $6d7e: $8d
    dec sp                                        ; $6d7f: $3b
    or h                                          ; $6d80: $b4
    ld a, [hl]                                    ; $6d81: $7e
    db $dd                                        ; $6d82: $dd
    and [hl]                                      ; $6d83: $a6
    db $eb                                        ; $6d84: $eb
    jp nc, $db38                                  ; $6d85: $d2 $38 $db

    ld bc, $3be7                                  ; $6d88: $01 $e7 $3b
    ei                                            ; $6d8b: $fb
    rst $00                                       ; $6d8c: $c7
    ld l, d                                       ; $6d8d: $6a
    ret z                                         ; $6d8e: $c8

    inc de                                        ; $6d8f: $13
    xor h                                         ; $6d90: $ac
    ld [hl], c                                    ; $6d91: $71
    db $fc                                        ; $6d92: $fc
    ld l, b                                       ; $6d93: $68
    di                                            ; $6d94: $f3
    dec a                                         ; $6d95: $3d
    ld e, d                                       ; $6d96: $5a
    ld h, l                                       ; $6d97: $65
    rst $38                                       ; $6d98: $ff
    inc hl                                        ; $6d99: $23
    rst $08                                       ; $6d9a: $cf
    ld a, [hl+]                                   ; $6d9b: $2a
    daa                                           ; $6d9c: $27
    rst $00                                       ; $6d9d: $c7
    sub l                                         ; $6d9e: $95
    inc de                                        ; $6d9f: $13
    xor h                                         ; $6da0: $ac
    ld a, [hl]                                    ; $6da1: $7e
    db $dd                                        ; $6da2: $dd

jr_06f_6da3:
    ld h, [hl]                                    ; $6da3: $66
    or $53                                        ; $6da4: $f6 $53
    xor d                                         ; $6da6: $aa
    or d                                          ; $6da7: $b2
    ld a, c                                       ; $6da8: $79
    inc e                                         ; $6da9: $1c
    cpl                                           ; $6daa: $2f
    dec e                                         ; $6dab: $1d
    ld d, a                                       ; $6dac: $57
    ld h, c                                       ; $6dad: $61
    or $93                                        ; $6dae: $f6 $93
    and b                                         ; $6db0: $a0
    ld [hl], c                                    ; $6db1: $71
    db $fc                                        ; $6db2: $fc
    call nc, $eca5                                ; $6db3: $d4 $a5 $ec
    and a                                         ; $6db6: $a7
    ld a, [hl]                                    ; $6db7: $7e
    db $dd                                        ; $6db8: $dd
    ld l, [hl]                                    ; $6db9: $6e
    jr nz, jr_06f_6d6d                            ; $6dba: $20 $b1

    scf                                           ; $6dbc: $37
    ld h, a                                       ; $6dbd: $67
    rst $30                                       ; $6dbe: $f7
    ld [hl], h                                    ; $6dbf: $74
    ld h, e                                       ; $6dc0: $63
    or c                                          ; $6dc1: $b1
    sub c                                         ; $6dc2: $91
    xor [hl]                                      ; $6dc3: $ae
    adc [hl]                                      ; $6dc4: $8e
    ld a, [hl]                                    ; $6dc5: $7e
    ld [$b7d9], a                                 ; $6dc6: $ea $d9 $b7
    sub e                                         ; $6dc9: $93
    inc de                                        ; $6dca: $13
    xor $f4                                       ; $6dcb: $ee $f4
    ld h, e                                       ; $6dcd: $63
    call c, $5e7a                                 ; $6dce: $dc $7a $5e
    ld h, l                                       ; $6dd1: $65
    rst $38                                       ; $6dd2: $ff
    inc hl                                        ; $6dd3: $23
    rst $08                                       ; $6dd4: $cf
    ld a, [de]                                    ; $6dd5: $1a
    ld c, b                                       ; $6dd6: $48
    ld c, e                                       ; $6dd7: $4b

Jump_06f_6dd8:
    ld l, c                                       ; $6dd8: $69
    ld d, l                                       ; $6dd9: $55
    ld [$8269], sp                                ; $6dda: $08 $69 $82
    ld [hl-], a                                   ; $6ddd: $32
    rst $00                                       ; $6dde: $c7
    rst $18                                       ; $6ddf: $df
    add hl, hl                                    ; $6de0: $29
    ld d, e                                       ; $6de1: $53
    ld hl, $d3c5                                  ; $6de2: $21 $c5 $d3
    ld b, b                                       ; $6de5: $40
    ld h, d                                       ; $6de6: $62
    rst $38                                       ; $6de7: $ff
    inc hl                                        ; $6de8: $23
    rst $08                                       ; $6de9: $cf
    ld c, d                                       ; $6dea: $4a
    adc l                                         ; $6deb: $8d
    pop bc                                        ; $6dec: $c1
    ld b, l                                       ; $6ded: $45
    dec d                                         ; $6dee: $15
    ei                                            ; $6def: $fb
    ld a, a                                       ; $6df0: $7f
    or [hl]                                       ; $6df1: $b6
    ld e, [hl]                                    ; $6df2: $5e
    ld a, $8d                                     ; $6df3: $3e $8d
    and c                                         ; $6df5: $a1
    ld a, a                                       ; $6df6: $7f
    cp b                                          ; $6df7: $b8
    pop de                                        ; $6df8: $d1
    ld a, [$b731]                                 ; $6df9: $fa $31 $b7
    ld l, h                                       ; $6dfc: $6c
    dec sp                                        ; $6dfd: $3b
    nop                                           ; $6dfe: $00
    rst $10                                       ; $6dff: $d7
    ld d, [hl]                                    ; $6e00: $56
    ld d, $a3                                     ; $6e01: $16 $a3
    ld [de], a                                    ; $6e03: $12
    ld hl, $d1ea                                  ; $6e04: $21 $ea $d1
    sub l                                         ; $6e07: $95
    rst $38                                       ; $6e08: $ff
    ld c, e                                       ; $6e09: $4b
    sub a                                         ; $6e0a: $97
    ld [hl], b                                    ; $6e0b: $70
    db $ed                                        ; $6e0c: $ed
    set 0, e                                      ; $6e0d: $cb $c3
    or e                                          ; $6e0f: $b3
    db $db                                        ; $6e10: $db
    or [hl]                                       ; $6e11: $b6
    sub l                                         ; $6e12: $95
    ld a, [de]                                    ; $6e13: $1a
    add e                                         ; $6e14: $83
    adc e                                         ; $6e15: $8b
    ld b, b                                       ; $6e16: $40
    ld e, d                                       ; $6e17: $5a
    sub a                                         ; $6e18: $97
    ld a, d                                       ; $6e19: $7a
    sbc $48                                       ; $6e1a: $de $48
    rst $10                                       ; $6e1c: $d7
    db $e4                                        ; $6e1d: $e4
    ld a, [hl+]                                   ; $6e1e: $2a
    ld e, h                                       ; $6e1f: $5c
    cp e                                          ; $6e20: $bb
    sbc b                                         ; $6e21: $98
    sub c                                         ; $6e22: $91
    and l                                         ; $6e23: $a5
    add [hl]                                      ; $6e24: $86
    adc h                                         ; $6e25: $8c
    ldh a, [$d3]                                  ; $6e26: $f0 $d3
    call z, $db1d                                 ; $6e28: $cc $1d $db
    ld bc, $5c8f                                  ; $6e2b: $01 $8f $5c
    rra                                           ; $6e2e: $1f
    db $eb                                        ; $6e2f: $eb
    ld a, a                                       ; $6e30: $7f
    and c                                         ; $6e31: $a1
    ld e, $5a                                     ; $6e32: $1e $5a
    ld a, a                                       ; $6e34: $7f
    rst $38                                       ; $6e35: $ff
    ld a, a                                       ; $6e36: $7f
    ld a, c                                       ; $6e37: $79
    add sp, $23                                   ; $6e38: $e8 $23
    db $db                                        ; $6e3a: $db
    ld bc, $59e7                                  ; $6e3b: $01 $e7 $59
    ld c, [hl]                                    ; $6e3e: $4e
    adc [hl]                                      ; $6e3f: $8e
    add $5e                                       ; $6e40: $c6 $5e
    push bc                                       ; $6e42: $c5
    ret                                           ; $6e43: $c9


    sub [hl]                                      ; $6e44: $96
    ld l, a                                       ; $6e45: $6f
    ld b, [hl]                                    ; $6e46: $46
    ccf                                           ; $6e47: $3f
    and l                                         ; $6e48: $a5
    ld h, h                                       ; $6e49: $64
    ld a, b                                       ; $6e4a: $78
    pop af                                        ; $6e4b: $f1
    ld [hl], a                                    ; $6e4c: $77
    ld [$77d9], a                                 ; $6e4d: $ea $d9 $77
    ld l, l                                       ; $6e50: $6d
    push hl                                       ; $6e51: $e5
    db $d3                                        ; $6e52: $d3
    ld b, h                                       ; $6e53: $44
    ld [$0076], a                                 ; $6e54: $ea $76 $00
    ld d, a                                       ; $6e57: $57
    add $85                                       ; $6e58: $c6 $85
    add $2a                                       ; $6e5a: $c6 $2a
    sub e                                         ; $6e5c: $93
    or $1a                                        ; $6e5d: $f6 $1a
    ld [hl+], a                                   ; $6e5f: $22
    ld l, l                                       ; $6e60: $6d
    ld h, c                                       ; $6e61: $61
    ld l, c                                       ; $6e62: $69
    rst $08                                       ; $6e63: $cf
    ld d, l                                       ; $6e64: $55
    adc $0e                                       ; $6e65: $ce $0e
    and e                                         ; $6e67: $a3
    ld [hl], $4f                                  ; $6e68: $36 $4f
    rst $18                                       ; $6e6a: $df
    and d                                         ; $6e6b: $a2
    sbc h                                         ; $6e6c: $9c
    cp [hl]                                       ; $6e6d: $be
    cp l                                          ; $6e6e: $bd
    ld [hl], b                                    ; $6e6f: $70
    sbc d                                         ; $6e70: $9a
    adc h                                         ; $6e71: $8c
    ld a, l                                       ; $6e72: $7d
    dec sp                                        ; $6e73: $3b
    nop                                           ; $6e74: $00
    ld d, a                                       ; $6e75: $57
    call nz, $253c                                ; $6e76: $c4 $3c $25
    ld d, $d3                                     ; $6e79: $16 $d3
    di                                            ; $6e7b: $f3
    ld e, e                                       ; $6e7c: $5b
    and c                                         ; $6e7d: $a1
    ld d, c                                       ; $6e7e: $51
    ld [hl], l                                    ; $6e7f: $75
    ld [$abd9], a                                 ; $6e80: $ea $d9 $ab
    ld [hl], e                                    ; $6e83: $73
    ld a, [$1611]                                 ; $6e84: $fa $11 $16
    ld [hl], l                                    ; $6e87: $75
    dec sp                                        ; $6e88: $3b
    nop                                           ; $6e89: $00
    rst $20                                       ; $6e8a: $e7
    ld e, c                                       ; $6e8b: $59
    ld c, [hl]                                    ; $6e8c: $4e
    adc [hl]                                      ; $6e8d: $8e
    add $2a                                       ; $6e8e: $c6 $2a
    ld d, e                                       ; $6e90: $53
    ccf                                           ; $6e91: $3f
    ld c, h                                       ; $6e92: $4c
    daa                                           ; $6e93: $27
    ld e, b                                       ; $6e94: $58
    di                                            ; $6e95: $f3
    db $f4                                        ; $6e96: $f4
    db $fc                                        ; $6e97: $fc
    ld d, [hl]                                    ; $6e98: $56

jr_06f_6e99:
    ld l, b                                       ; $6e99: $68
    ld d, h                                       ; $6e9a: $54
    sbc l                                         ; $6e9b: $9d
    ld a, d                                       ; $6e9c: $7a
    or $ea                                        ; $6e9d: $f6 $ea
    sbc h                                         ; $6e9f: $9c
    ld a, [hl]                                    ; $6ea0: $7e
    add h                                         ; $6ea1: $84

Jump_06f_6ea2:
    ld b, l                                       ; $6ea2: $45
    db $dd                                        ; $6ea3: $dd
    ld c, $57                                     ; $6ea4: $0e $57
    inc l                                         ; $6ea6: $2c
    db $dd                                        ; $6ea7: $dd
    ld h, [hl]                                    ; $6ea8: $66
    and a                                         ; $6ea9: $a7
    rra                                           ; $6eaa: $1f
    ld [c], a                                     ; $6eab: $e2
    inc [hl]                                      ; $6eac: $34
    call $cfd3                                    ; $6ead: $cd $d3 $cf
    ld l, b                                       ; $6eb0: $68
    add $3c                                       ; $6eb1: $c6 $3c
    push af                                       ; $6eb3: $f5
    db $ec                                        ; $6eb4: $ec
    push de                                       ; $6eb5: $d5
    add hl, sp                                    ; $6eb6: $39
    db $fd                                        ; $6eb7: $fd
    ld [$ba8b], sp                                ; $6eb8: $08 $8b $ba
    dec e                                         ; $6ebb: $1d
    sub a                                         ; $6ebc: $97
    and e                                         ; $6ebd: $a3
    pop hl                                        ; $6ebe: $e1
    ld c, a                                       ; $6ebf: $4f
    ld d, l                                       ; $6ec0: $55
    ld d, $da                                     ; $6ec1: $16 $da
    ld l, e                                       ; $6ec3: $6b
    ld d, b                                       ; $6ec4: $50
    scf                                           ; $6ec5: $37
    ld h, [hl]                                    ; $6ec6: $66
    ret nc                                        ; $6ec7: $d0

    ld a, d                                       ; $6ec8: $7a
    or $ea                                        ; $6ec9: $f6 $ea
    sbc h                                         ; $6ecb: $9c
    ld a, [hl]                                    ; $6ecc: $7e
    add h                                         ; $6ecd: $84
    ld b, l                                       ; $6ece: $45
    db $dd                                        ; $6ecf: $dd
    ld c, $37                                     ; $6ed0: $0e $37
    ld hl, sp+$3d                                 ; $6ed2: $f8 $3d
    ld a, d                                       ; $6ed4: $7a
    add e                                         ; $6ed5: $83
    dec sp                                        ; $6ed6: $3b
    push hl                                       ; $6ed7: $e5
    sbc d                                         ; $6ed8: $9a
    inc c                                         ; $6ed9: $0c
    ccf                                           ; $6eda: $3f
    dec c                                         ; $6edb: $0d
    ld h, c                                       ; $6edc: $61
    ld l, b                                       ; $6edd: $68
    ld [hl], d                                    ; $6ede: $72
    add sp, $15                                   ; $6edf: $e8 $15
    jr z, jr_06f_6e99                             ; $6ee1: $28 $b6

    inc bc                                        ; $6ee3: $03
    rst $20                                       ; $6ee4: $e7
    ld e, c                                       ; $6ee5: $59
    ld c, [hl]                                    ; $6ee6: $4e
    adc [hl]                                      ; $6ee7: $8e
    add $a2                                       ; $6ee8: $c6 $a2
    rst $28                                       ; $6eea: $ef
    jp c, $ad12                                   ; $6eeb: $da $12 $ad

    ld a, h                                       ; $6eee: $7c
    adc a                                         ; $6eef: $8f
    dec l                                         ; $6ef0: $2d
    ld l, h                                       ; $6ef1: $6c
    rlca                                          ; $6ef2: $07
    rst $20                                       ; $6ef3: $e7
    ld e, c                                       ; $6ef4: $59
    ld c, [hl]                                    ; $6ef5: $4e
    adc [hl]                                      ; $6ef6: $8e
    add $a2                                       ; $6ef7: $c6 $a2
    ld d, a                                       ; $6ef9: $57
    halt                                          ; $6efa: $76
    xor b                                         ; $6efb: $a8
    or d                                          ; $6efc: $b2
    sbc [hl]                                      ; $6efd: $9e
    cp l                                          ; $6efe: $bd
    ld a, $17                                     ; $6eff: $3e $17
    rst $28                                       ; $6f01: $ef
    and l                                         ; $6f02: $a5

Call_06f_6f03:
    ld l, [hl]                                    ; $6f03: $6e
    rlca                                          ; $6f04: $07
    rst $20                                       ; $6f05: $e7
    ld e, c                                       ; $6f06: $59
    ld c, [hl]                                    ; $6f07: $4e
    adc [hl]                                      ; $6f08: $8e
    add $8e                                       ; $6f09: $c6 $8e
    or $bd                                        ; $6f0b: $f6 $bd
    ld a, h                                       ; $6f0d: $7c
    ld [hl-], a                                   ; $6f0e: $32
    ld a, [$1cc5]                                 ; $6f0f: $fa $c5 $1c
    xor c                                         ; $6f12: $a9
    dec c                                         ; $6f13: $0d
    ld h, c                                       ; $6f14: $61
    add sp, -$73                                  ; $6f15: $e8 $8d
    adc h                                         ; $6f17: $8c
    sub b                                         ; $6f18: $90
    db $db                                        ; $6f19: $db
    ld bc, $003d                                  ; $6f1a: $01 $3d $00
    ld d, a                                       ; $6f1d: $57
    db $10                                        ; $6f1e: $10
    add $64                                       ; $6f1f: $c6 $64
    db $ec                                        ; $6f21: $ec
    db $f4                                        ; $6f22: $f4
    jp z, Jump_000_1770                           ; $6f23: $ca $70 $17

    ld c, a                                       ; $6f26: $4f
    ccf                                           ; $6f27: $3f
    sbc l                                         ; $6f28: $9d
    ld e, e                                       ; $6f29: $5b
    or e                                          ; $6f2a: $b3
    dec e                                         ; $6f2b: $1d
    rst $20                                       ; $6f2c: $e7
    ld e, c                                       ; $6f2d: $59
    ld c, [hl]                                    ; $6f2e: $4e
    adc [hl]                                      ; $6f2f: $8e
    add $be                                       ; $6f30: $c6 $be
    ret nc                                        ; $6f32: $d0

    ld [hl], e                                    ; $6f33: $73
    ei                                            ; $6f34: $fb
    ld b, e                                       ; $6f35: $43
    dec de                                        ; $6f36: $1b
    jp nz, $f450                                  ; $6f37: $c2 $50 $f4

    ld [hl], d                                    ; $6f3a: $72
    jp c, $cf51                                   ; $6f3b: $da $51 $cf

    ld e, [hl]                                    ; $6f3e: $5e
    and l                                         ; $6f3f: $a5
    add hl, bc                                    ; $6f40: $09
    ld h, a                                       ; $6f41: $67
    sbc a                                         ; $6f42: $9f
    db $d3                                        ; $6f43: $d3
    jp nz, Jump_000_0076                          ; $6f44: $c2 $76 $00

    rst $20                                       ; $6f47: $e7
    ld e, c                                       ; $6f48: $59
    ld c, [hl]                                    ; $6f49: $4e
    adc [hl]                                      ; $6f4a: $8e
    add $be                                       ; $6f4b: $c6 $be
    ret nc                                        ; $6f4d: $d0

    ld [hl], e                                    ; $6f4e: $73
    ei                                            ; $6f4f: $fb
    ld b, e                                       ; $6f50: $43
    dec de                                        ; $6f51: $1b
    jp nz, $f450                                  ; $6f52: $c2 $50 $f4

    ld [hl], d                                    ; $6f55: $72
    jp c, $cf51                                   ; $6f56: $da $51 $cf

    ld e, [hl]                                    ; $6f59: $5e
    and l                                         ; $6f5a: $a5
    add hl, bc                                    ; $6f5b: $09
    ld h, a                                       ; $6f5c: $67
    sbc a                                         ; $6f5d: $9f
    db $d3                                        ; $6f5e: $d3
    jp nz, Jump_000_0076                          ; $6f5f: $c2 $76 $00

    dec a                                         ; $6f62: $3d
    nop                                           ; $6f63: $00
    dec a                                         ; $6f64: $3d
    nop                                           ; $6f65: $00
    rst $20                                       ; $6f66: $e7
    ld e, c                                       ; $6f67: $59
    ld c, [hl]                                    ; $6f68: $4e
    adc [hl]                                      ; $6f69: $8e
    add $a2                                       ; $6f6a: $c6 $a2
    ld d, a                                       ; $6f6c: $57
    halt                                          ; $6f6d: $76
    xor b                                         ; $6f6e: $a8
    or d                                          ; $6f6f: $b2
    sbc [hl]                                      ; $6f70: $9e
    ld a, l                                       ; $6f71: $7d
    sbc e                                         ; $6f72: $9b
    ld [hl+], a                                   ; $6f73: $22
    ld a, [hl+]                                   ; $6f74: $2a
    ld a, d                                       ; $6f75: $7a
    ld h, l                                       ; $6f76: $65
    ld [hl], d                                    ; $6f77: $72
    inc [hl]                                      ; $6f78: $34
    inc d                                         ; $6f79: $14
    jp c, Jump_000_16cb                           ; $6f7a: $da $cb $16

    xor c                                         ; $6f7d: $a9
    push af                                       ; $6f7e: $f5
    ret nc                                        ; $6f7f: $d0

    ld a, [hl]                                    ; $6f80: $7e
    ld h, [hl]                                    ; $6f81: $66
    db $fc                                        ; $6f82: $fc
    ld b, e                                       ; $6f83: $43
    or a                                          ; $6f84: $b7
    inc bc                                        ; $6f85: $03
    rst $20                                       ; $6f86: $e7
    ld e, c                                       ; $6f87: $59
    ld c, [hl]                                    ; $6f88: $4e
    adc [hl]                                      ; $6f89: $8e
    add $26                                       ; $6f8a: $c6 $26
    add a                                         ; $6f8c: $87
    ld e, [hl]                                    ; $6f8d: $5e
    ld b, e                                       ; $6f8e: $43
    and $32                                       ; $6f8f: $e6 $32
    call nc, $9fb3                                ; $6f91: $d4 $b3 $9f
    jp nc, $9fcd                                  ; $6f94: $d2 $cd $9f

    ld d, [hl]                                    ; $6f97: $56
    db $f4                                        ; $6f98: $f4
    cp d                                          ; $6f99: $ba
    pop hl                                        ; $6f9a: $e1
    add h                                         ; $6f9b: $84
    db $ed                                        ; $6f9c: $ed
    nop                                           ; $6f9d: $00
    dec a                                         ; $6f9e: $3d
    nop                                           ; $6f9f: $00
    sbc a                                         ; $6fa0: $9f
    ld d, d                                       ; $6fa1: $52
    and [hl]                                      ; $6fa2: $a6
    sub b                                         ; $6fa3: $90
    add $4e                                       ; $6fa4: $c6 $4e
    ccf                                           ; $6fa6: $3f
    and h                                         ; $6fa7: $a4
    inc de                                        ; $6fa8: $13
    jp c, $f5ec                                   ; $6fa9: $da $ec $f5

    db $d3                                        ; $6fac: $d3
    adc a                                         ; $6fad: $8f
    ld hl, sp+$5f                                 ; $6fae: $f8 $5f
    ei                                            ; $6fb0: $fb
    adc $7a                                       ; $6fb1: $ce $7a

Call_06f_6fb3:
    ld l, b                                       ; $6fb3: $68
    xor a                                         ; $6fb4: $af
    db $fd                                        ; $6fb5: $fd
    adc [hl]                                      ; $6fb6: $8e
    sub $b3                                       ; $6fb7: $d6 $b3
    ld l, a                                       ; $6fb9: $6f
    dec de                                        ; $6fba: $1b
    db $e4                                        ; $6fbb: $e4
    ld l, h                                       ; $6fbc: $6c
    rlca                                          ; $6fbd: $07
    dec a                                         ; $6fbe: $3d
    nop                                           ; $6fbf: $00
    dec a                                         ; $6fc0: $3d
    nop                                           ; $6fc1: $00
    scf                                           ; $6fc2: $37
    ld h, a                                       ; $6fc3: $67
    adc a                                         ; $6fc4: $8f
    ld l, h                                       ; $6fc5: $6c
    ld [$d143], sp                                ; $6fc6: $08 $43 $d1
    bit 5, c                                      ; $6fc9: $cb $69
    ld b, a                                       ; $6fcb: $47
    dec a                                         ; $6fcc: $3d
    ld a, e                                       ; $6fcd: $7b
    ld [hl], l                                    ; $6fce: $75
    ld l, c                                       ; $6fcf: $69
    cp h                                          ; $6fd0: $bc
    rst $00                                       ; $6fd1: $c7
    ld d, $ea                                     ; $6fd2: $16 $ea
    pop de                                        ; $6fd4: $d1
    ld l, e                                       ; $6fd5: $6b
    pop bc                                        ; $6fd6: $c1
    and a                                         ; $6fd7: $a7
    dec h                                         ; $6fd8: $25
    or c                                          ; $6fd9: $b1
    dec e                                         ; $6fda: $1d
    rst $20                                       ; $6fdb: $e7
    ld e, c                                       ; $6fdc: $59
    ld c, [hl]                                    ; $6fdd: $4e
    adc [hl]                                      ; $6fde: $8e
    add $a2                                       ; $6fdf: $c6 $a2
    ld d, a                                       ; $6fe1: $57
    ld h, b                                       ; $6fe2: $60
    ld de, $b2bd                                  ; $6fe3: $11 $bd $b2
    ld c, h                                       ; $6fe6: $4c
    ld [hl], d                                    ; $6fe7: $72
    dec sp                                        ; $6fe8: $3b
    nop                                           ; $6fe9: $00
    rst $20                                       ; $6fea: $e7
    ld e, c                                       ; $6feb: $59
    ld c, [hl]                                    ; $6fec: $4e
    adc [hl]                                      ; $6fed: $8e
    add $a2                                       ; $6fee: $c6 $a2
    ld d, a                                       ; $6ff0: $57
    ld h, b                                       ; $6ff1: $60
    ld de, $b2bd                                  ; $6ff2: $11 $bd $b2
    ld c, h                                       ; $6ff5: $4c
    ld [hl], d                                    ; $6ff6: $72
    dec sp                                        ; $6ff7: $3b
    nop                                           ; $6ff8: $00
    dec a                                         ; $6ff9: $3d
    nop                                           ; $6ffa: $00
    dec a                                         ; $6ffb: $3d
    nop                                           ; $6ffc: $00
    dec a                                         ; $6ffd: $3d
    nop                                           ; $6ffe: $00
    scf                                           ; $6fff: $37
    ld h, a                                       ; $7000: $67
    adc a                                         ; $7001: $8f
    ld l, h                                       ; $7002: $6c
    ld [$d143], sp                                ; $7003: $08 $43 $d1
    bit 5, c                                      ; $7006: $cb $69
    ld b, a                                       ; $7008: $47
    dec a                                         ; $7009: $3d
    ld a, e                                       ; $700a: $7b
    ld [hl], l                                    ; $700b: $75
    ld l, c                                       ; $700c: $69
    cp h                                          ; $700d: $bc
    rst $00                                       ; $700e: $c7
    ld d, $ea                                     ; $700f: $16 $ea
    pop de                                        ; $7011: $d1
    ld l, e                                       ; $7012: $6b
    pop bc                                        ; $7013: $c1
    and a                                         ; $7014: $a7
    dec h                                         ; $7015: $25
    or c                                          ; $7016: $b1
    dec e                                         ; $7017: $1d
    dec a                                         ; $7018: $3d
    nop                                           ; $7019: $00
    dec a                                         ; $701a: $3d
    nop                                           ; $701b: $00
    dec a                                         ; $701c: $3d
    nop                                           ; $701d: $00
    dec a                                         ; $701e: $3d
    nop                                           ; $701f: $00
    dec a                                         ; $7020: $3d
    nop                                           ; $7021: $00
    dec a                                         ; $7022: $3d
    nop                                           ; $7023: $00
    dec a                                         ; $7024: $3d
    nop                                           ; $7025: $00
    dec a                                         ; $7026: $3d
    nop                                           ; $7027: $00
    rst $20                                       ; $7028: $e7
    ld e, c                                       ; $7029: $59
    ld c, [hl]                                    ; $702a: $4e
    adc [hl]                                      ; $702b: $8e
    add $be                                       ; $702c: $c6 $be
    ld l, l                                       ; $702e: $6d
    sub b                                         ; $702f: $90
    or e                                          ; $7030: $b3
    dec e                                         ; $7031: $1d
    ld d, a                                       ; $7032: $57
    call nz, $253c                                ; $7033: $c4 $3c $25
    or $ce                                        ; $7036: $f6 $ce
    sbc $c0                                       ; $7038: $de $c0
    adc [hl]                                      ; $703a: $8e
    ld a, d                                       ; $703b: $7a
    or $33                                        ; $703c: $f6 $33
    dec de                                        ; $703e: $1b
    pop de                                        ; $703f: $d1
    add l                                         ; $7040: $85
    and h                                         ; $7041: $a4
    dec c                                         ; $7042: $0d
    ld h, c                                       ; $7043: $61
    add sp, -$0c                                  ; $7044: $e8 $f4
    db $ed                                        ; $7046: $ed
    call nz, Call_06f_7a7d                        ; $7047: $c4 $7d $7a
    ld h, a                                       ; $704a: $67
    xor a                                         ; $704b: $af
    ld [hl], c                                    ; $704c: $71
    pop hl                                        ; $704d: $e1
    adc c                                         ; $704e: $89
    adc a                                         ; $704f: $8f
    ld h, [hl]                                    ; $7050: $66
    ld b, l                                       ; $7051: $45
    ld l, [hl]                                    ; $7052: $6e
    rlca                                          ; $7053: $07
    scf                                           ; $7054: $37
    ld h, a                                       ; $7055: $67
    adc a                                         ; $7056: $8f
    db $ec                                        ; $7057: $ec
    ld [hl], l                                    ; $7058: $75
    jr @-$74                                      ; $7059: $18 $8a

    cp [hl]                                       ; $705b: $be
    ld l, e                                       ; $705c: $6b
    ld c, e                                       ; $705d: $4b
    or h                                          ; $705e: $b4
    ld a, [c]                                     ; $705f: $f2
    dec a                                         ; $7060: $3d
    or [hl]                                       ; $7061: $b6
    or b                                          ; $7062: $b0
    dec e                                         ; $7063: $1d
    dec a                                         ; $7064: $3d
    nop                                           ; $7065: $00
    dec a                                         ; $7066: $3d
    nop                                           ; $7067: $00
    dec a                                         ; $7068: $3d
    nop                                           ; $7069: $00
    dec a                                         ; $706a: $3d
    nop                                           ; $706b: $00
    dec a                                         ; $706c: $3d
    nop                                           ; $706d: $00
    dec a                                         ; $706e: $3d
    nop                                           ; $706f: $00
    dec a                                         ; $7070: $3d
    nop                                           ; $7071: $00
    dec a                                         ; $7072: $3d
    nop                                           ; $7073: $00
    dec a                                         ; $7074: $3d
    nop                                           ; $7075: $00
    dec a                                         ; $7076: $3d
    nop                                           ; $7077: $00
    scf                                           ; $7078: $37
    add e                                         ; $7079: $83
    dec de                                        ; $707a: $1b
    jp nz, $f450                                  ; $707b: $c2 $50 $f4

    dec e                                         ; $707e: $1d
    ld l, d                                       ; $707f: $6a
    ld b, h                                       ; $7080: $44
    db $fd                                        ; $7081: $fd
    db $f4                                        ; $7082: $f4
    db $ed                                        ; $7083: $ed
    add l                                         ; $7084: $85
    ld a, d                                       ; $7085: $7a
    ld l, b                                       ; $7086: $68
    rst $18                                       ; $7087: $df
    or d                                          ; $7088: $b2
    ld [hl], h                                    ; $7089: $74

Jump_06f_708a:
    dec bc                                        ; $708a: $0b
    cp d                                          ; $708b: $ba
    dec e                                         ; $708c: $1d
    scf                                           ; $708d: $37
    or b                                          ; $708e: $b0
    rst $38                                       ; $708f: $ff
    reti                                          ; $7090: $d9


    xor e                                         ; $7091: $ab
    inc [hl]                                      ; $7092: $34
    or a                                          ; $7093: $b7
    ld h, $b3                                     ; $7094: $26 $b3
    ld a, [hl]                                    ; $7096: $7e
    ld a, [$4199]                                 ; $7097: $fa $99 $41
    ld c, a                                       ; $709a: $4f
    or e                                          ; $709b: $b3
    dec e                                         ; $709c: $1d
    scf                                           ; $709d: $37
    add e                                         ; $709e: $83
    ld a, e                                       ; $709f: $7b
    add hl, sp                                    ; $70a0: $39
    ld e, [hl]                                    ; $70a1: $5e
    jr z, jr_06f_711e                             ; $70a2: $28 $7a

    dec b                                         ; $70a4: $05
    ld b, d                                       ; $70a5: $42
    ld h, h                                       ; $70a6: $64
    call nc, $af4f                                ; $70a7: $d4 $4f $af
    ld [c], a                                     ; $70aa: $e2
    ld h, h                                       ; $70ab: $64
    bit 5, a                                      ; $70ac: $cb $6f
    rlca                                          ; $70ae: $07
    scf                                           ; $70af: $37

jr_06f_70b0:
    add e                                         ; $70b0: $83
    ld a, e                                       ; $70b1: $7b
    add hl, sp                                    ; $70b2: $39
    ld e, [hl]                                    ; $70b3: $5e
    jr z, jr_06f_70b0                             ; $70b4: $28 $fa

    xor [hl]                                      ; $70b6: $ae
    dec l                                         ; $70b7: $2d
    pop de                                        ; $70b8: $d1
    jp z, $d8f7                                   ; $70b9: $ca $f7 $d8

    jp nz, Jump_000_0076                          ; $70bc: $c2 $76 $00

    sbc a                                         ; $70bf: $9f
    ld d, d                                       ; $70c0: $52
    ld d, d                                       ; $70c1: $52
    adc b                                         ; $70c2: $88
    ld a, [hl+]                                   ; $70c3: $2a
    ld d, e                                       ; $70c4: $53
    xor a                                         ; $70c5: $af
    dec de                                        ; $70c6: $1b
    sub l                                         ; $70c7: $95
    add hl, sp                                    ; $70c8: $39
    or d                                          ; $70c9: $b2
    sbc [hl]                                      ; $70ca: $9e
    db $fd                                        ; $70cb: $fd
    ld [$fb11], sp                                ; $70cc: $08 $11 $fb
    halt                                          ; $70cf: $76
    nop                                           ; $70d0: $00
    rst $20                                       ; $70d1: $e7
    or a                                          ; $70d2: $b7
    jp nz, $8c7d                                  ; $70d3: $c2 $7d $8c

    cp l                                          ; $70d6: $bd
    ld a, [hl-]                                   ; $70d7: $3a
    and a                                         ; $70d8: $a7
    rra                                           ; $70d9: $1f
    ld h, c                                       ; $70da: $61
    ld d, c                                       ; $70db: $51
    dec hl                                        ; $70dc: $2b
    rst $00                                       ; $70dd: $c7
    ld d, l                                       ; $70de: $55
    inc de                                        ; $70df: $13
    ld a, d                                       ; $70e0: $7a
    dec b                                         ; $70e1: $05
    ld hl, $d1ea                                  ; $70e2: $21 $ea $d1
    rst $30                                       ; $70e5: $f7
    ld a, [c]                                     ; $70e6: $f2
    ld a, a                                       ; $70e7: $7f
    jp hl                                         ; $70e8: $e9


    ld [de], a                                    ; $70e9: $12
    xor [hl]                                      ; $70ea: $ae
    ld a, l                                       ; $70eb: $7d
    ld a, c                                       ; $70ec: $79
    ld a, b                                       ; $70ed: $78
    ld l, [hl]                                    ; $70ee: $6e
    rlca                                          ; $70ef: $07
    dec a                                         ; $70f0: $3d
    nop                                           ; $70f1: $00
    rst $20                                       ; $70f2: $e7
    ld a, [hl+]                                   ; $70f3: $2a
    ld de, $1eb2                                  ; $70f4: $11 $b2 $1e
    ld a, l                                       ; $70f7: $7d
    ld l, e                                       ; $70f8: $6b
    add hl, bc                                    ; $70f9: $09
    rst $30                                       ; $70fa: $f7
    dec [hl]                                      ; $70fb: $35
    sub c                                         ; $70fc: $91
    ld [de], a                                    ; $70fd: $12
    db $db                                        ; $70fe: $db
    ld bc, $003d                                  ; $70ff: $01 $3d $00
    rst $20                                       ; $7102: $e7
    ld e, c                                       ; $7103: $59
    ld c, [hl]                                    ; $7104: $4e
    adc [hl]                                      ; $7105: $8e
    add $4e                                       ; $7106: $c6 $4e
    rst $08                                       ; $7108: $cf
    dec [hl]                                      ; $7109: $35
    db $e4                                        ; $710a: $e4
    ld l, $9e                                     ; $710b: $2e $9e
    ld a, d                                       ; $710d: $7a
    or $e3                                        ; $710e: $f6 $e3
    rst $28                                       ; $7110: $ef
    xor c                                         ; $7111: $a9
    db $f4                                        ; $7112: $f4
    db $db                                        ; $7113: $db
    ld bc, $003d                                  ; $7114: $01 $3d $00
    scf                                           ; $7117: $37
    add e                                         ; $7118: $83
    adc e                                         ; $7119: $8b
    ld a, b                                       ; $711a: $78
    and c                                         ; $711b: $a1
    add sp, $15                                   ; $711c: $e8 $15

jr_06f_711e:
    ld [$5191], sp                                ; $711e: $08 $91 $51
    rst $08                                       ; $7121: $cf
    ld e, [hl]                                    ; $7122: $5e
    push bc                                       ; $7123: $c5
    ret                                           ; $7124: $c9


    sub [hl]                                      ; $7125: $96
    rst $18                                       ; $7126: $df

jr_06f_7127:
    ld c, $3d                                     ; $7127: $0e $3d

Call_06f_7129:
    nop                                           ; $7129: $00
    rst $20                                       ; $712a: $e7
    ld e, c                                       ; $712b: $59
    ld c, [hl]                                    ; $712c: $4e
    adc [hl]                                      ; $712d: $8e
    add $3e                                       ; $712e: $c6 $3e
    rst $18                                       ; $7130: $df
    ld [hl], a                                    ; $7131: $77
    or c                                          ; $7132: $b1
    xor a                                         ; $7133: $af
    inc l                                         ; $7134: $2c
    add [hl]                                      ; $7135: $86
    ld [hl], $84                                  ; $7136: $36 $84
    and c                                         ; $7138: $a1
    rra                                           ; $7139: $1f
    adc l                                         ; $713a: $8d
    add hl, bc                                    ; $713b: $09
    ld l, c                                       ; $713c: $69
    ld [hl], c                                    ; $713d: $71
    or [hl]                                       ; $713e: $b6
    inc bc                                        ; $713f: $03
    sbc a                                         ; $7140: $9f
    ld d, d                                       ; $7141: $52
    ld [hl+], a                                   ; $7142: $22
    adc h                                         ; $7143: $8c
    ret                                           ; $7144: $c9


    ret c                                         ; $7145: $d8

    adc a                                         ; $7146: $8f
    add $84                                       ; $7147: $c6 $84
    or h                                          ; $7149: $b4
    jr c, jr_06f_7127                             ; $714a: $38 $db

    ld bc, $f21f                                  ; $714c: $01 $1f $f2
    rst $08                                       ; $714f: $cf
    ld a, [hl]                                    ; $7150: $7e
    inc [hl]                                      ; $7151: $34
    ld h, $a4                                     ; $7152: $26 $a4
    push bc                                       ; $7154: $c5
    add hl, hl                                    ; $7155: $29
    ld [c], a                                     ; $7156: $e2
    add l                                         ; $7157: $85
    and d                                         ; $7158: $a2
    sbc a                                         ; $7159: $9f
    adc l                                         ; $715a: $8d
    add hl, de                                    ; $715b: $19
    db $eb                                        ; $715c: $eb
    reti                                          ; $715d: $d9


    rr d                                          ; $715e: $cb $1a
    ld l, l                                       ; $7160: $6d
    ld a, [c]                                     ; $7161: $f2
    cp b                                          ; $7162: $b8
    add l                                         ; $7163: $85
    db $ed                                        ; $7164: $ed
    nop                                           ; $7165: $00
    scf                                           ; $7166: $37
    ld h, a                                       ; $7167: $67
    adc a                                         ; $7168: $8f
    ld l, h                                       ; $7169: $6c
    ld [$d143], sp                                ; $716a: $08 $43 $d1
    ld [hl], a                                    ; $716d: $77
    ld l, l                                       ; $716e: $6d
    adc c                                         ; $716f: $89
    ld d, [hl]                                    ; $7170: $56
    cp [hl]                                       ; $7171: $be
    rst $00                                       ; $7172: $c7
    ld d, $b6                                     ; $7173: $16 $b6
    inc bc                                        ; $7175: $03
    rst $20                                       ; $7176: $e7
    ld e, c                                       ; $7177: $59
    ld c, [hl]                                    ; $7178: $4e
    adc [hl]                                      ; $7179: $8e
    add $4e                                       ; $717a: $c6 $4e
    ccf                                           ; $717c: $3f
    rst $08                                       ; $717d: $cf
    ld c, e                                       ; $717e: $4b
    sbc $63                                       ; $717f: $de $63
    ld a, c                                       ; $7181: $79
    ld c, l                                       ; $7182: $4d
    rst $18                                       ; $7183: $df
    and c                                         ; $7184: $a1
    dec l                                         ; $7185: $2d
    ccf                                           ; $7186: $3f
    db $db                                        ; $7187: $db
    ld bc, $003d                                  ; $7188: $01 $3d $00
    dec a                                         ; $718b: $3d
    nop                                           ; $718c: $00
    dec a                                         ; $718d: $3d
    nop                                           ; $718e: $00
    dec a                                         ; $718f: $3d
    nop                                           ; $7190: $00
    scf                                           ; $7191: $37
    add e                                         ; $7192: $83
    adc e                                         ; $7193: $8b
    ld a, b                                       ; $7194: $78
    and c                                         ; $7195: $a1
    db $d3                                        ; $7196: $d3
    dec hl                                        ; $7197: $2b
    ld h, e                                       ; $7198: $63
    ld b, [hl]                                    ; $7199: $46
    ccf                                           ; $719a: $3f
    sub $eb                                       ; $719b: $d6 $eb
    ld [hl], $4b                                  ; $719d: $36 $4b
    cp b                                          ; $719f: $b8
    db $fc                                        ; $71a0: $fc
    ld l, h                                       ; $71a1: $6c
    rlca                                          ; $71a2: $07
    ld l, a                                       ; $71a3: $6f
    db $d3                                        ; $71a4: $d3
    ld l, h                                       ; $71a5: $6c
    ld [hl+], a                                   ; $71a6: $22
    dec sp                                        ; $71a7: $3b
    cp l                                          ; $71a8: $bd
    cp c                                          ; $71a9: $b9
    db $f4                                        ; $71aa: $f4
    inc [hl]                                      ; $71ab: $34
    push af                                       ; $71ac: $f5
    db $d3                                        ; $71ad: $d3
    or a                                          ; $71ae: $b7
    rla                                           ; $71af: $17
    add h                                         ; $71b0: $84
    or e                                          ; $71b1: $b3
    dec e                                         ; $71b2: $1d
    rst $20                                       ; $71b3: $e7
    ld e, c                                       ; $71b4: $59
    ld c, [hl]                                    ; $71b5: $4e
    adc [hl]                                      ; $71b6: $8e
    add $a2                                       ; $71b7: $c6 $a2
    ld d, a                                       ; $71b9: $57
    call nz, $b3f8                                ; $71ba: $c4 $f8 $b3

Jump_06f_71bd:
    scf                                           ; $71bd: $37
    rlca                                          ; $71be: $07
    ld a, [hl]                                    ; $71bf: $7e
    inc c                                         ; $71c0: $0c
    cp l                                          ; $71c1: $bd
    ld [hl-], a                                   ; $71c2: $32
    ld h, [hl]                                    ; $71c3: $66
    adc h                                         ; $71c4: $8c
    ret c                                         ; $71c5: $d8

    ld c, $e7                                     ; $71c6: $0e $e7
    ld e, c                                       ; $71c8: $59

Jump_06f_71c9:
    ld h, h                                       ; $71c9: $64
    call z, $8591                                 ; $71ca: $cc $91 $85
    or $3a                                        ; $71cd: $f6 $3a
    cpl                                           ; $71cf: $2f
    ld b, d                                       ; $71d0: $42
    db $eb                                        ; $71d1: $eb
    reti                                          ; $71d2: $d9


    cpl                                           ; $71d3: $2f
    pop hl                                        ; $71d4: $e1
    adc l                                         ; $71d5: $8d
    or a                                          ; $71d6: $b7
    or a                                          ; $71d7: $b7
    inc bc                                        ; $71d8: $03
    sbc a                                         ; $71d9: $9f
    ld d, d                                       ; $71da: $52
    ld h, a                                       ; $71db: $67
    rst $38                                       ; $71dc: $ff
    and e                                         ; $71dd: $a3
    db $d3                                        ; $71de: $d3
    di                                            ; $71df: $f3
    cp h                                          ; $71e0: $bc
    ld c, [hl]                                    ; $71e1: $4e
    ld c, $f5                                     ; $71e2: $0e $f5

Jump_06f_71e4:
    add sp, -$4b                                  ; $71e4: $e8 $b5
    and l                                         ; $71e6: $a5
    ld sp, $ea19                                  ; $71e7: $31 $19 $ea
    pop de                                        ; $71ea: $d1
    db $eb                                        ; $71eb: $eb
    ld [hl], e                                    ; $71ec: $73
    pop af                                        ; $71ed: $f1
    ld [hl], a                                    ; $71ee: $77
    or [hl]                                       ; $71ef: $b6
    inc bc                                        ; $71f0: $03
    sbc a                                         ; $71f1: $9f
    ld d, d                                       ; $71f2: $52
    ld h, a                                       ; $71f3: $67
    rst $38                                       ; $71f4: $ff
    and e                                         ; $71f5: $a3
    db $d3                                        ; $71f6: $d3
    di                                            ; $71f7: $f3
    cp h                                          ; $71f8: $bc
    ld c, [hl]                                    ; $71f9: $4e
    ld c, $f5                                     ; $71fa: $0e $f5
    add sp, -$4b                                  ; $71fc: $e8 $b5
    and l                                         ; $71fe: $a5
    ld sp, $ea19                                  ; $71ff: $31 $19 $ea
    pop de                                        ; $7202: $d1
    db $eb                                        ; $7203: $eb
    ld [hl], e                                    ; $7204: $73
    pop af                                        ; $7205: $f1
    ld [hl], a                                    ; $7206: $77
    or [hl]                                       ; $7207: $b6
    inc bc                                        ; $7208: $03
    rst $20                                       ; $7209: $e7
    ld e, c                                       ; $720a: $59
    ld c, [hl]                                    ; $720b: $4e
    adc [hl]                                      ; $720c: $8e
    add $a2                                       ; $720d: $c6 $a2
    rst $10                                       ; $720f: $d7
    jp hl                                         ; $7210: $e9


    dec c                                         ; $7211: $0d
    ld a, l                                       ; $7212: $7d
    ld h, a                                       ; $7213: $67
    db $ed                                        ; $7214: $ed
    and e                                         ; $7215: $a3
    inc hl                                        ; $7216: $23
    jp nz, Jump_000_1dbe                          ; $7217: $c2 $be $1d

    scf                                           ; $721a: $37
    add e                                         ; $721b: $83
    dec de                                        ; $721c: $1b
    jp nz, $e9d0                                  ; $721d: $c2 $d0 $e9

    cp e                                          ; $7220: $bb
    add [hl]                                      ; $7221: $86
    db $ec                                        ; $7222: $ec
    reti                                          ; $7223: $d9


    dec de                                        ; $7224: $1b
    ret c                                         ; $7225: $d8

    ld a, a                                       ; $7226: $7f
    ld h, a                                       ; $7227: $67
    dec sp                                        ; $7228: $3b
    nop                                           ; $7229: $00
    rst $20                                       ; $722a: $e7
    ld e, c                                       ; $722b: $59
    ld c, [hl]                                    ; $722c: $4e
    adc [hl]                                      ; $722d: $8e
    add $a2                                       ; $722e: $c6 $a2
    ld d, a                                       ; $7230: $57
    ld h, b                                       ; $7231: $60
    ld de, $16bd                                  ; $7232: $11 $bd $16
    ld a, h                                       ; $7235: $7c
    ld e, d                                       ; $7236: $5a
    ld [de], a                                    ; $7237: $12
    push af                                       ; $7238: $f5
    db $ec                                        ; $7239: $ec
    ld d, l                                       ; $723a: $55
    sbc b                                         ; $723b: $98
    db $fd                                        ; $723c: $fd
    or h                                          ; $723d: $b4
    dec e                                         ; $723e: $1d
    rst $20                                       ; $723f: $e7
    ld e, c                                       ; $7240: $59
    ld c, [hl]                                    ; $7241: $4e
    adc [hl]                                      ; $7242: $8e
    add $5e                                       ; $7243: $c6 $5e
    push bc                                       ; $7245: $c5
    ret                                           ; $7246: $c9


    sub [hl]                                      ; $7247: $96
    ld l, a                                       ; $7248: $6f
    sbc [hl]                                      ; $7249: $9e
    ld e, [hl]                                    ; $724a: $5e
    add hl, de                                    ; $724b: $19
    sub c                                         ; $724c: $91
    ld [hl], c                                    ; $724d: $71
    dec sp                                        ; $724e: $3b
    nop                                           ; $724f: $00
    ld l, a                                       ; $7250: $6f
    ld d, e                                       ; $7251: $53
    ld h, l                                       ; $7252: $65
    ld [de], a                                    ; $7253: $12
    ld a, [de]                                    ; $7254: $1a
    adc d                                         ; $7255: $8a
    sbc $60                                       ; $7256: $de $60
    ld d, $a3                                     ; $7258: $16 $a3
    ld e, $7d                                     ; $725a: $1e $7d
    rst $10                                       ; $725c: $d7
    sub [hl]                                      ; $725d: $96
    ld l, b                                       ; $725e: $68
    push hl                                       ; $725f: $e5
    ld a, e                                       ; $7260: $7b
    ld l, h                                       ; $7261: $6c
    ld h, c                                       ; $7262: $61
    dec sp                                        ; $7263: $3b
    nop                                           ; $7264: $00
    ld l, a                                       ; $7265: $6f
    ld d, e                                       ; $7266: $53
    ld h, l                                       ; $7267: $65
    ld [de], a                                    ; $7268: $12
    ld a, [de]                                    ; $7269: $1a
    xor d                                         ; $726a: $aa
    add hl, bc                                    ; $726b: $09
    cp l                                          ; $726c: $bd
    ld l, [hl]                                    ; $726d: $6e
    rst $30                                       ; $726e: $f7
    call c, $0e5a                                 ; $726f: $dc $5a $0e

Call_06f_7272:
    cp l                                          ; $7272: $bd
    sbc h                                         ; $7273: $9c
    halt                                          ; $7274: $76
    ld l, h                                       ; $7275: $6c
    rlca                                          ; $7276: $07
    ld l, a                                       ; $7277: $6f
    di                                            ; $7278: $f3
    ccf                                           ; $7279: $3f
    ei                                            ; $727a: $fb
    rra                                           ; $727b: $1f
    sbc l                                         ; $727c: $9d

jr_06f_727d:
    ld a, [hl]                                    ; $727d: $7e
    cp b                                          ; $727e: $b8
    cp $36                                        ; $727f: $fe $36
    push af                                       ; $7281: $f5
    db $ec                                        ; $7282: $ec
    ld [hl], l                                    ; $7283: $75
    jp $da09                                      ; $7284: $c3 $09 $da


    ld c, a                                       ; $7287: $4f
    daa                                           ; $7288: $27
    add hl, bc                                    ; $7289: $09
    pop hl                                        ; $728a: $e1
    and a                                         ; $728b: $a7
    ld hl, $450c                                  ; $728c: $21 $0c $45
    rst $18                                       ; $728f: $df
    ld e, d                                       ; $7290: $5a
    jp nz, Jump_06f_4d7d                          ; $7291: $c2 $7d $4d

    and h                                         ; $7294: $a4
    call nz, Call_000_0076                        ; $7295: $c4 $76 $00
    dec a                                         ; $7298: $3d
    nop                                           ; $7299: $00
    rst $10                                       ; $729a: $d7
    ld a, c                                       ; $729b: $79
    ld c, d                                       ; $729c: $4a
    inc l                                         ; $729d: $2c
    or h                                          ; $729e: $b4
    sbc a                                         ; $729f: $9f
    ld d, d                                       ; $72a0: $52
    ld [hl], d                                    ; $72a1: $72
    ld b, l                                       ; $72a2: $45
    ld l, b                                       ; $72a3: $68
    dec a                                         ; $72a4: $3d
    ld a, e                                       ; $72a5: $7b
    ld a, l                                       ; $72a6: $7d
    ld l, $fe                                     ; $72a7: $2e $fe
    ld c, [hl]                                    ; $72a9: $4e
    push hl                                       ; $72aa: $e5
    cp b                                          ; $72ab: $b8
    sbc $c8                                       ; $72ac: $de $c8
    ld [$1db9], sp                                ; $72ae: $08 $b9 $1d
    rst $20                                       ; $72b1: $e7
    ld a, [hl+]                                   ; $72b2: $2a
    ld de, $1eb2                                  ; $72b3: $11 $b2 $1e
    cp l                                          ; $72b6: $bd
    add c                                         ; $72b7: $81
    dec e                                         ; $72b8: $1d
    push af                                       ; $72b9: $f5
    db $ec                                        ; $72ba: $ec
    ld h, a                                       ; $72bb: $67
    ld [hl], $a2                                  ; $72bc: $36 $a2
    dec bc                                        ; $72be: $0b
    ld c, c                                       ; $72bf: $49
    or a                                          ; $72c0: $b7
    inc bc                                        ; $72c1: $03
    rst $20                                       ; $72c2: $e7
    ld e, c                                       ; $72c3: $59
    ld c, [hl]                                    ; $72c4: $4e
    adc [hl]                                      ; $72c5: $8e
    add $4e                                       ; $72c6: $c6 $4e
    xor a                                         ; $72c8: $af
    dec de                                        ; $72c9: $1b
    sub l                                         ; $72ca: $95
    add hl, sp                                    ; $72cb: $39
    or d                                          ; $72cc: $b2
    rst $20                                       ; $72cd: $e7
    ld a, [hl+]                                   ; $72ce: $2a

jr_06f_72cf:
    daa                                           ; $72cf: $27
    ei                                            ; $72d0: $fb
    push hl                                       ; $72d1: $e5
    ld h, a                                       ; $72d2: $67
    dec sp                                        ; $72d3: $3b
    nop                                           ; $72d4: $00
    scf                                           ; $72d5: $37
    add e                                         ; $72d6: $83
    ld a, e                                       ; $72d7: $7b
    ld h, a                                       ; $72d8: $67
    ccf                                           ; $72d9: $3f
    sbc $d7                                       ; $72da: $de $d7
    rra                                           ; $72dc: $1f
    ld b, $ed                                     ; $72dd: $06 $ed
    sub l                                         ; $72df: $95
    ld [hl], c                                    ; $72e0: $71
    and c                                         ; $72e1: $a1
    pop bc                                        ; $72e2: $c1
    ld a, d                                       ; $72e3: $7a
    inc hl                                        ; $72e4: $23
    and c                                         ; $72e5: $a1
    scf                                           ; $72e6: $37
    ld h, c                                       ; $72e7: $61
    dec hl                                        ; $72e8: $2b
    adc e                                         ; $72e9: $8b
    or c                                          ; $72ea: $b1
    dec e                                         ; $72eb: $1d
    scf                                           ; $72ec: $37
    ld h, a                                       ; $72ed: $67
    adc a                                         ; $72ee: $8f
    db $ec                                        ; $72ef: $ec
    ld [hl], l                                    ; $72f0: $75
    jr jr_06f_727d                                ; $72f1: $18 $8a

    cp [hl]                                       ; $72f3: $be
    ld l, e                                       ; $72f4: $6b
    ld c, e                                       ; $72f5: $4b
    or h                                          ; $72f6: $b4
    ld a, [c]                                     ; $72f7: $f2
    dec a                                         ; $72f8: $3d
    or [hl]                                       ; $72f9: $b6
    or b                                          ; $72fa: $b0
    dec e                                         ; $72fb: $1d
    scf                                           ; $72fc: $37
    ld h, a                                       ; $72fd: $67
    adc a                                         ; $72fe: $8f
    ld l, h                                       ; $72ff: $6c
    ld [$d143], sp                                ; $7300: $08 $43 $d1
    ld [hl], a                                    ; $7303: $77
    ld l, l                                       ; $7304: $6d
    adc c                                         ; $7305: $89
    ld d, [hl]                                    ; $7306: $56
    cp [hl]                                       ; $7307: $be
    rst $00                                       ; $7308: $c7
    ld d, $b6                                     ; $7309: $16 $b6
    inc bc                                        ; $730b: $03
    rst $10                                       ; $730c: $d7
    ld l, l                                       ; $730d: $6d
    ld h, h                                       ; $730e: $64
    ld [hl-], a                                   ; $730f: $32
    or $ed                                        ; $7310: $f6 $ed
    db $e4                                        ; $7312: $e4
    add h                                         ; $7313: $84
    dec sp                                        ; $7314: $3b
    db $fd                                        ; $7315: $fd
    jr jr_06f_72cf                                ; $7316: $18 $b7

    inc bc                                        ; $7318: $03
    scf                                           ; $7319: $37
    ld h, a                                       ; $731a: $67
    adc a                                         ; $731b: $8f
    ld l, h                                       ; $731c: $6c
    ld [$d143], sp                                ; $731d: $08 $43 $d1
    dec de                                        ; $7320: $1b
    ret c                                         ; $7321: $d8

    ld d, c                                       ; $7322: $51
    rst $08                                       ; $7323: $cf
    ld a, [hl]                                    ; $7324: $7e
    ld h, [hl]                                    ; $7325: $66
    inc hl                                        ; $7326: $23
    cp d                                          ; $7327: $ba
    sub b                                         ; $7328: $90
    ld [hl], h                                    ; $7329: $74
    dec sp                                        ; $732a: $3b
    nop                                           ; $732b: $00
    rst $20                                       ; $732c: $e7
    ld e, c                                       ; $732d: $59
    ld c, [hl]                                    ; $732e: $4e
    adc [hl]                                      ; $732f: $8e
    add $a2                                       ; $7330: $c6 $a2
    ld d, a                                       ; $7332: $57
    ld h, b                                       ; $7333: $60
    ld de, $b2bd                                  ; $7334: $11 $bd $b2
    ld c, h                                       ; $7337: $4c
    ld [hl], d                                    ; $7338: $72
    dec sp                                        ; $7339: $3b
    nop                                           ; $733a: $00
    ld l, a                                       ; $733b: $6f
    ld d, c                                       ; $733c: $51
    ld c, [hl]                                    ; $733d: $4e

Call_06f_733e:
    rst $18                                       ; $733e: $df
    ld e, [hl]                                    ; $733f: $5e
    jr c, jr_06f_738f                             ; $7340: $38 $4d

    add $7e                                       ; $7342: $c6 $7e
    nop                                           ; $7344: $00
    rra                                           ; $7345: $1f
    adc $f7                                       ; $7346: $ce $f7
    xor b                                         ; $7348: $a8
    ld h, a                                       ; $7349: $67
    xor a                                         ; $734a: $af
    ld h, b                                       ; $734b: $60
    rst $30                                       ; $734c: $f7
    ld e, h                                       ; $734d: $5c
    halt                                          ; $734e: $76
    cpl                                           ; $734f: $2f
    push af                                       ; $7350: $f5
    nop                                           ; $7351: $00
    rst $28                                       ; $7352: $ef
    ret nz                                        ; $7353: $c0

    ld e, h                                       ; $7354: $5c
    or b                                          ; $7355: $b0
    ld e, h                                       ; $7356: $5c
    jr c, jr_06f_7359                             ; $7357: $38 $00

jr_06f_7359:
    rra                                           ; $7359: $1f
    adc $f7                                       ; $735a: $ce $f7
    xor b                                         ; $735c: $a8
    ld h, a                                       ; $735d: $67
    xor a                                         ; $735e: $af
    adc h                                         ; $735f: $8c
    and l                                         ; $7360: $a5
    rst $28                                       ; $7361: $ef
    and c                                         ; $7362: $a1
    rlca                                          ; $7363: $07
    rra                                           ; $7364: $1f
    adc $f7                                       ; $7365: $ce $f7
    xor b                                         ; $7367: $a8
    ld h, a                                       ; $7368: $67
    ld l, a                                       ; $7369: $6f
    jp nz, Jump_000_1656                          ; $736a: $c2 $56 $16

    ld b, e                                       ; $736d: $43
    rrca                                          ; $736e: $0f
    rra                                           ; $736f: $1f
    adc $f7                                       ; $7370: $ce $f7
    xor b                                         ; $7372: $a8
    ld h, a                                       ; $7373: $67
    ccf                                           ; $7374: $3f
    ld e, h                                       ; $7375: $5c
    ld a, a                                       ; $7376: $7f
    dec de                                        ; $7377: $1b
    dec a                                         ; $7378: $3d
    nop                                           ; $7379: $00
    rra                                           ; $737a: $1f
    adc $f7                                       ; $737b: $ce $f7
    xor b                                         ; $737d: $a8
    ld h, a                                       ; $737e: $67
    ld l, a                                       ; $737f: $6f
    ld d, d                                       ; $7380: $52

jr_06f_7381:
    inc hl                                        ; $7381: $23
    push af                                       ; $7382: $f5
    nop                                           ; $7383: $00
    rra                                           ; $7384: $1f
    adc $f7                                       ; $7385: $ce $f7
    xor b                                         ; $7387: $a8
    ld h, a                                       ; $7388: $67
    rst $18                                       ; $7389: $df
    ld e, $49                                     ; $738a: $1e $49
    dec a                                         ; $738c: $3d
    nop                                           ; $738d: $00
    rst $20                                       ; $738e: $e7

jr_06f_738f:
    add hl, sp                                    ; $738f: $39
    ld a, [de]                                    ; $7390: $1a
    inc a                                         ; $7391: $3c
    ld [$77d9], a                                 ; $7392: $ea $d9 $77
    ld l, l                                       ; $7395: $6d
    push hl                                       ; $7396: $e5
    db $d3                                        ; $7397: $d3
    ld b, h                                       ; $7398: $44
    ld [$d701], a                                 ; $7399: $ea $01 $d7
    and b                                         ; $739c: $a0
    ld l, [hl]                                    ; $739d: $6e
    call z, $f5a0                                 ; $739e: $cc $a0 $f5
    db $ec                                        ; $73a1: $ec
    cp e                                          ; $73a2: $bb
    or [hl]                                       ; $73a3: $b6
    ld a, [c]                                     ; $73a4: $f2
    ld l, c                                       ; $73a5: $69
    ld [hl+], a                                   ; $73a6: $22
    or l                                          ; $73a7: $b5
    ld c, a                                       ; $73a8: $4f
    rra                                           ; $73a9: $1f
    ld d, a                                       ; $73aa: $57
    inc l                                         ; $73ab: $2c
    db $dd                                        ; $73ac: $dd
    ld b, [hl]                                    ; $73ad: $46
    or $d3                                        ; $73ae: $f6 $d3
    jp hl                                         ; $73b0: $e9


    add a                                         ; $73b1: $87
    jr c, jr_06f_7381                             ; $73b2: $38 $cd

    ld bc, $a0d7                                  ; $73b4: $01 $d7 $a0
    ld l, [hl]                                    ; $73b7: $6e
    call z, $f5a0                                 ; $73b8: $cc $a0 $f5
    db $ec                                        ; $73bb: $ec
    push de                                       ; $73bc: $d5
    add hl, sp                                    ; $73bd: $39
    db $fd                                        ; $73be: $fd

Call_06f_73bf:
    ld [$da8b], sp                                ; $73bf: $08 $8b $da
    and a                                         ; $73c2: $a7
    rrca                                          ; $73c3: $0f
    rst $10                                       ; $73c4: $d7
    and b                                         ; $73c5: $a0
    ld l, [hl]                                    ; $73c6: $6e
    call z, $f5a0                                 ; $73c7: $cc $a0 $f5
    db $ec                                        ; $73ca: $ec
    push de                                       ; $73cb: $d5
    add hl, sp                                    ; $73cc: $39
    db $fd                                        ; $73cd: $fd
    ld [$da8b], sp                                ; $73ce: $08 $8b $da
    ld h, a                                       ; $73d1: $67
    ld c, $d7                                     ; $73d2: $0e $d7
    and b                                         ; $73d4: $a0
    ld l, [hl]                                    ; $73d5: $6e
    call z, $f5a0                                 ; $73d6: $cc $a0 $f5
    db $ec                                        ; $73d9: $ec
    push de                                       ; $73da: $d5
    add hl, sp                                    ; $73db: $39
    db $fd                                        ; $73dc: $fd
    ld [$da8b], sp                                ; $73dd: $08 $8b $da
    ld h, a                                       ; $73e0: $67
    rrca                                          ; $73e1: $0f
    rst $20                                       ; $73e2: $e7
    or a                                          ; $73e3: $b7
    ld b, d                                       ; $73e4: $42
    and e                                         ; $73e5: $a3
    ld [$b3d4], a                                 ; $73e6: $ea $d4 $b3
    ld d, a                                       ; $73e9: $57
    rst $20                                       ; $73ea: $e7
    db $f4                                        ; $73eb: $f4
    inc hl                                        ; $73ec: $23
    inc l                                         ; $73ed: $2c
    ld [$5701], a                                 ; $73ee: $ea $01 $57
    halt                                          ; $73f1: $76
    xor b                                         ; $73f2: $a8
    or d                                          ; $73f3: $b2
    sbc [hl]                                      ; $73f4: $9e
    db $fd                                        ; $73f5: $fd
    inc [hl]                                      ; $73f6: $34
    ld h, l                                       ; $73f7: $65
    ld l, b                                       ; $73f8: $68
    cpl                                           ; $73f9: $2f
    rst $20                                       ; $73fa: $e7
    cp b                                          ; $73fb: $b8
    ld c, [hl]                                    ; $73fc: $4e
    ret nc                                        ; $73fd: $d0

    inc bc                                        ; $73fe: $03
    ld d, a                                       ; $73ff: $57
    halt                                          ; $7400: $76
    xor b                                         ; $7401: $a8
    or d                                          ; $7402: $b2
    sbc [hl]                                      ; $7403: $9e
    cp l                                          ; $7404: $bd
    ld l, h                                       ; $7405: $6c
    dec hl                                        ; $7406: $2b
    cp d                                          ; $7407: $ba
    ldh [$b8], a                                  ; $7408: $e0 $b8
    inc h                                         ; $740a: $24
    ld c, $ef                                     ; $740b: $0e $ef
    ld h, d                                       ; $740d: $62
    and a                                         ; $740e: $a7
    dec l                                         ; $740f: $2d
    call nc, Call_06f_7b43                        ; $7410: $d4 $43 $7b
    reti                                          ; $7413: $d9


    inc e                                         ; $7414: $1c
    ld a, h                                       ; $7415: $7c
    ld [hl-], a                                   ; $7416: $32
    add sp, $01                                   ; $7417: $e8 $01
    ld d, a                                       ; $7419: $57
    halt                                          ; $741a: $76
    xor b                                         ; $741b: $a8
    or d                                          ; $741c: $b2
    sbc [hl]                                      ; $741d: $9e
    cp l                                          ; $741e: $bd
    xor h                                         ; $741f: $ac
    pop de                                        ; $7420: $d1
    ld h, $8f                                     ; $7421: $26 $8f
    ld e, e                                       ; $7423: $5b
    jr c, jr_06f_7426                             ; $7424: $38 $00

jr_06f_7426:
    scf                                           ; $7426: $37
    or b                                          ; $7427: $b0
    and e                                         ; $7428: $a3
    ld a, [hl]                                    ; $7429: $7e
    or h                                          ; $742a: $b4
    rst $10                                       ; $742b: $d7
    sbc c                                         ; $742c: $99
    sub a                                         ; $742d: $97
    inc e                                         ; $742e: $1c
    dec a                                         ; $742f: $3d
    nop                                           ; $7430: $00
    rra                                           ; $7431: $1f
    adc $f7                                       ; $7432: $ce $f7
    xor b                                         ; $7434: $a8
    ld h, a                                       ; $7435: $67
    ld l, a                                       ; $7436: $6f
    ld b, d                                       ; $7437: $42
    ld [hl], l                                    ; $7438: $75
    sub d                                         ; $7439: $92
    ld b, c                                       ; $743a: $41
    rrca                                          ; $743b: $0f
    ld d, a                                       ; $743c: $57
    halt                                          ; $743d: $76
    xor b                                         ; $743e: $a8
    or d                                          ; $743f: $b2
    sbc [hl]                                      ; $7440: $9e
    ld a, l                                       ; $7441: $7d
    add a                                         ; $7442: $87
    dec hl                                        ; $7443: $2b
    xor [hl]                                      ; $7444: $ae
    adc e                                         ; $7445: $8b

Call_06f_7446:
    and e                                         ; $7446: $a3
    rlca                                          ; $7447: $07
    ld d, a                                       ; $7448: $57
    halt                                          ; $7449: $76
    xor b                                         ; $744a: $a8
    or d                                          ; $744b: $b2
    sbc [hl]                                      ; $744c: $9e
    cp l                                          ; $744d: $bd
    ld l, h                                       ; $744e: $6c
    sub c                                         ; $744f: $91
    ld e, d                                       ; $7450: $5a
    rrca                                          ; $7451: $0f
    db $ed                                        ; $7452: $ed
    ld h, a                                       ; $7453: $67
    add $3f                                       ; $7454: $c6 $3f

Jump_06f_7456:
    db $f4                                        ; $7456: $f4
    nop                                           ; $7457: $00
    rst $20                                       ; $7458: $e7
    ld a, [de]                                    ; $7459: $1a
    ld [hl], d                                    ; $745a: $72
    rla                                           ; $745b: $17
    ld c, a                                       ; $745c: $4f
    dec a                                         ; $745d: $3d
    ei                                            ; $745e: $fb
    pop af                                        ; $745f: $f1
    rst $30                                       ; $7460: $f7
    ld d, h                                       ; $7461: $54
    ld a, [$ef03]                                 ; $7462: $fa $03 $ef
    db $ec                                        ; $7465: $ec
    ld h, e                                       ; $7466: $63
    call nc, $5e88                                ; $7467: $d4 $88 $5e
    or a                                          ; $746a: $b7
    ld e, c                                       ; $746b: $59
    jp nz, $d1e5                                  ; $746c: $c2 $e5 $d1

    and a                                         ; $746f: $a7
    rrca                                          ; $7470: $0f
    rst $28                                       ; $7471: $ef
    db $ec                                        ; $7472: $ec
    ld h, e                                       ; $7473: $63
    call nc, $5e88                                ; $7474: $d4 $88 $5e
    or a                                          ; $7477: $b7
    ld e, c                                       ; $7478: $59
    jp nz, $d1e5                                  ; $7479: $c2 $e5 $d1

    ld h, a                                       ; $747c: $67

Jump_06f_747d:
    ld c, $ef                                     ; $747d: $0e $ef
    db $ec                                        ; $747f: $ec
    ld h, e                                       ; $7480: $63
    call nc, $5e88                                ; $7481: $d4 $88 $5e
    or a                                          ; $7484: $b7
    ld e, c                                       ; $7485: $59
    jp nz, $d1e5                                  ; $7486: $c2 $e5 $d1

    ld h, a                                       ; $7489: $67
    rrca                                          ; $748a: $0f
    rst $28                                       ; $748b: $ef
    db $ec                                        ; $748c: $ec
    ld h, e                                       ; $748d: $63
    call nc, $5e88                                ; $748e: $d4 $88 $5e
    or a                                          ; $7491: $b7
    ld e, c                                       ; $7492: $59
    jp nz, $d1e5                                  ; $7493: $c2 $e5 $d1

    rst $20                                       ; $7496: $e7
    ld c, $ef                                     ; $7497: $0e $ef
    db $ec                                        ; $7499: $ec
    ld h, e                                       ; $749a: $63
    call nc, $5e88                                ; $749b: $d4 $88 $5e
    or a                                          ; $749e: $b7
    ld e, c                                       ; $749f: $59
    jp nz, $d1e5                                  ; $74a0: $c2 $e5 $d1

    rst $20                                       ; $74a3: $e7
    rrca                                          ; $74a4: $0f
    rst $28                                       ; $74a5: $ef
    db $ec                                        ; $74a6: $ec
    ld h, e                                       ; $74a7: $63
    call nc, $5e88                                ; $74a8: $d4 $88 $5e
    or a                                          ; $74ab: $b7
    ld e, c                                       ; $74ac: $59
    jp nz, $d1e5                                  ; $74ad: $c2 $e5 $d1

    rla                                           ; $74b0: $17
    ld c, $d7                                     ; $74b1: $0e $d7
    and b                                         ; $74b3: $a0
    ld l, [hl]                                    ; $74b4: $6e
    call z, Call_06f_77d0                         ; $74b5: $cc $d0 $77
    ld d, [hl]                                    ; $74b8: $56
    add $de                                       ; $74b9: $c6 $de
    and a                                         ; $74bb: $a7
    rrca                                          ; $74bc: $0f
    rst $10                                       ; $74bd: $d7
    and b                                         ; $74be: $a0
    ld l, [hl]                                    ; $74bf: $6e
    call z, Call_06f_77d0                         ; $74c0: $cc $d0 $77
    ld d, [hl]                                    ; $74c3: $56
    add $de                                       ; $74c4: $c6 $de
    ld h, a                                       ; $74c6: $67
    ld c, $d7                                     ; $74c7: $0e $d7
    and b                                         ; $74c9: $a0
    ld l, [hl]                                    ; $74ca: $6e
    call z, Call_06f_77d0                         ; $74cb: $cc $d0 $77
    ld d, [hl]                                    ; $74ce: $56
    add $de                                       ; $74cf: $c6 $de
    ld h, a                                       ; $74d1: $67
    rrca                                          ; $74d2: $0f
    rst $10                                       ; $74d3: $d7
    and b                                         ; $74d4: $a0
    ld l, [hl]                                    ; $74d5: $6e
    call z, Call_06f_77d0                         ; $74d6: $cc $d0 $77
    ld d, [hl]                                    ; $74d9: $56
    add $de                                       ; $74da: $c6 $de
    rst $20                                       ; $74dc: $e7
    ld c, $d7                                     ; $74dd: $0e $d7
    and b                                         ; $74df: $a0
    ld l, [hl]                                    ; $74e0: $6e
    call z, Call_06f_77d0                         ; $74e1: $cc $d0 $77
    ld d, [hl]                                    ; $74e4: $56
    add $de                                       ; $74e5: $c6 $de
    rst $20                                       ; $74e7: $e7
    rrca                                          ; $74e8: $0f
    rst $10                                       ; $74e9: $d7
    and b                                         ; $74ea: $a0
    ld l, [hl]                                    ; $74eb: $6e
    call z, Call_06f_77d0                         ; $74ec: $cc $d0 $77
    ld d, [hl]                                    ; $74ef: $56
    add $de                                       ; $74f0: $c6 $de
    rla                                           ; $74f2: $17
    ld c, $e7                                     ; $74f3: $0e $e7
    ld a, [hl+]                                   ; $74f5: $2a
    ld l, l                                       ; $74f6: $6d
    push bc                                       ; $74f7: $c5

Jump_06f_74f8:
    ld a, e                                       ; $74f8: $7b
    ld l, h                                       ; $74f9: $6c
    ld c, l                                       ; $74fa: $4d
    xor a                                         ; $74fb: $af
    db $db                                        ; $74fc: $db
    adc b                                         ; $74fd: $88
    or [hl]                                       ; $74fe: $b6
    cp [hl]                                       ; $74ff: $be
    or e                                          ; $7500: $b3
    xor a                                         ; $7501: $af
    ld hl, sp-$1d                                 ; $7502: $f8 $e3
    sub d                                         ; $7504: $92
    ccf                                           ; $7505: $3f
    inc e                                         ; $7506: $1c
    ld d, a                                       ; $7507: $57
    halt                                          ; $7508: $76
    xor b                                         ; $7509: $a8
    or d                                          ; $750a: $b2
    scf                                           ; $750b: $37
    ld [hl], c                                    ; $750c: $71
    ld a, e                                       ; $750d: $7b
    pop hl                                        ; $750e: $e1
    nop                                           ; $750f: $00
    ld d, a                                       ; $7510: $57
    halt                                          ; $7511: $76
    xor b                                         ; $7512: $a8
    or d                                          ; $7513: $b2
    scf                                           ; $7514: $37
    ld [hl], c                                    ; $7515: $71
    ld a, e                                       ; $7516: $7b
    pop hl                                        ; $7517: $e1
    nop                                           ; $7518: $00
    ld d, a                                       ; $7519: $57
    add $8c                                       ; $751a: $c6 $8c
    ld a, [hl]                                    ; $751c: $7e
    xor h                                         ; $751d: $ac
    rst $10                                       ; $751e: $d7
    ld l, l                                       ; $751f: $6d
    sub [hl]                                      ; $7520: $96
    ld [hl], b                                    ; $7521: $70
    ld sp, hl                                     ; $7522: $f9
    add hl, sp                                    ; $7523: $39
    nop                                           ; $7524: $00
    rst $20                                       ; $7525: $e7
    ld a, [de]                                    ; $7526: $1a
    sub e                                         ; $7527: $93
    ld [$6f07], sp                                ; $7528: $08 $07 $6f
    ld hl, $b98b                                  ; $752b: $21 $8b $b9
    ld l, h                                       ; $752e: $6c
    ld [$bda1], a                                 ; $752f: $ea $a1 $bd
    add $bc                                       ; $7532: $c6 $bc
    ld [hl-], a                                   ; $7534: $32
    db $f4                                        ; $7535: $f4
    nop                                           ; $7536: $00
    sbc a                                         ; $7537: $9f
    pop de                                        ; $7538: $d1
    adc h                                         ; $7539: $8c
    ld a, c                                       ; $753a: $79
    ld [$abd9], a                                 ; $753b: $ea $d9 $ab
    ld [hl], e                                    ; $753e: $73
    ld a, [$1611]                                 ; $753f: $fa $11 $16
    or l                                          ; $7542: $b5
    ld c, a                                       ; $7543: $4f
    rra                                           ; $7544: $1f
    rst $28                                       ; $7545: $ef
    push hl                                       ; $7546: $e5
    ld c, b                                       ; $7547: $48
    ld e, e                                       ; $7548: $5b
    ld h, e                                       ; $7549: $63
    push af                                       ; $754a: $f5
    add sp, $15                                   ; $754b: $e8 $15
    ld [$5191], sp                                ; $754d: $08 $91 $51
    ccf                                           ; $7550: $3f
    cp l                                          ; $7551: $bd
    adc d                                         ; $7552: $8a
    sub e                                         ; $7553: $93
    dec l                                         ; $7554: $2d
    ld a, a                                       ; $7555: $7f
    nop                                           ; $7556: $00
    ld d, a                                       ; $7557: $57
    add $8c                                       ; $7558: $c6 $8c
    ld a, [hl]                                    ; $755a: $7e
    xor h                                         ; $755b: $ac
    ld a, [hl]                                    ; $755c: $7e
    ld a, d                                       ; $755d: $7a
    db $dd                                        ; $755e: $dd
    sub [hl]                                      ; $755f: $96
    db $e3                                        ; $7560: $e3
    or d                                          ; $7561: $b2
    jp hl                                         ; $7562: $e9


    push hl                                       ; $7563: $e5
    db $ec                                        ; $7564: $ec
    ld h, c                                       ; $7565: $61
    rlca                                          ; $7566: $07
    ld d, a                                       ; $7567: $57
    add $8c                                       ; $7568: $c6 $8c
    ld a, [hl]                                    ; $756a: $7e
    xor h                                         ; $756b: $ac
    ld a, [hl]                                    ; $756c: $7e
    ld a, d                                       ; $756d: $7a
    add e                                         ; $756e: $83
    and a                                         ; $756f: $a7
    sub h                                         ; $7570: $94
    db $fd                                        ; $7571: $fd
    db $f4                                        ; $7572: $f4
    ld [hl], d                                    ; $7573: $72
    or $b0                                        ; $7574: $f6 $b0
    inc bc                                        ; $7576: $03
    ld d, a                                       ; $7577: $57
    add $8c                                       ; $7578: $c6 $8c
    ld a, [hl]                                    ; $757a: $7e
    xor h                                         ; $757b: $ac
    ld a, [hl]                                    ; $757c: $7e
    ld a, [$4d19]                                 ; $757d: $fa $19 $4d
    ld [hl], d                                    ; $7580: $72
    reti                                          ; $7581: $d9


    db $f4                                        ; $7582: $f4
    ld [hl], d                                    ; $7583: $72
    or $b0                                        ; $7584: $f6 $b0
    inc bc                                        ; $7586: $03
    ld d, a                                       ; $7587: $57
    add $8c                                       ; $7588: $c6 $8c
    ld a, [hl]                                    ; $758a: $7e
    xor h                                         ; $758b: $ac
    ld a, [hl]                                    ; $758c: $7e
    ld a, [$8249]                                 ; $758d: $fa $49 $82
    push bc                                       ; $7590: $c5

Call_06f_7591:
    jp hl                                         ; $7591: $e9


    push hl                                       ; $7592: $e5
    db $ec                                        ; $7593: $ec
    ld h, c                                       ; $7594: $61
    rlca                                          ; $7595: $07
    ld d, a                                       ; $7596: $57
    add $8c                                       ; $7597: $c6 $8c
    ld a, [hl]                                    ; $7599: $7e
    xor h                                         ; $759a: $ac
    ld a, [hl]                                    ; $759b: $7e
    ld a, [$5a49]                                 ; $759c: $fa $49 $5a
    add hl, sp                                    ; $759f: $39
    ld c, [hl]                                    ; $75a0: $4e
    cpl                                           ; $75a1: $2f
    ld h, a                                       ; $75a2: $67
    rrca                                          ; $75a3: $0f
    dec sp                                        ; $75a4: $3b
    nop                                           ; $75a5: $00
    ld d, a                                       ; $75a6: $57
    add $8c                                       ; $75a7: $c6 $8c
    ld a, [hl]                                    ; $75a9: $7e
    xor h                                         ; $75aa: $ac
    ld a, [hl]                                    ; $75ab: $7e
    ld a, d                                       ; $75ac: $7a
    add e                                         ; $75ad: $83
    or a                                          ; $75ae: $b7
    ld [c], a                                     ; $75af: $e2
    db $f4                                        ; $75b0: $f4
    ld [hl], d                                    ; $75b1: $72
    or $b0                                        ; $75b2: $f6 $b0
    inc bc                                        ; $75b4: $03
    ld d, a                                       ; $75b5: $57
    add $8c                                       ; $75b6: $c6 $8c
    ld a, [hl]                                    ; $75b8: $7e
    xor h                                         ; $75b9: $ac
    ld a, [hl]                                    ; $75ba: $7e
    ld a, d                                       ; $75bb: $7a
    db $e3                                        ; $75bc: $e3
    ld b, d                                       ; $75bd: $42
    ld e, h                                       ; $75be: $5c
    ld l, [hl]                                    ; $75bf: $6e
    ld a, d                                       ; $75c0: $7a
    add hl, sp                                    ; $75c1: $39
    ld a, e                                       ; $75c2: $7b
    ret c                                         ; $75c3: $d8

    ld bc, $9857                                  ; $75c4: $01 $57 $98
    and e                                         ; $75c7: $a3
    ld h, c                                       ; $75c8: $61
    xor a                                         ; $75c9: $af
    ld h, a                                       ; $75ca: $67
    xor a                                         ; $75cb: $af
    inc h                                         ; $75cc: $24
    jp Jump_06f_5701                              ; $75cd: $c3 $01 $57


    halt                                          ; $75d0: $76
    xor b                                         ; $75d1: $a8
    or d                                          ; $75d2: $b2
    sbc [hl]                                      ; $75d3: $9e
    cp l                                          ; $75d4: $bd
    cp d                                          ; $75d5: $ba
    inc [hl]                                      ; $75d6: $34
    sbc $63                                       ; $75d7: $de $63
    dec bc                                        ; $75d9: $0b
    push af                                       ; $75da: $f5
    add sp, -$4b                                  ; $75db: $e8 $b5
    ldh [$d3], a                                  ; $75dd: $e0 $d3
    sub d                                         ; $75df: $92
    jr c, jr_06f_75e2                             ; $75e0: $38 $00

jr_06f_75e2:
    sub a                                         ; $75e2: $97
    ld [hl], a                                    ; $75e3: $77
    call nc, $af4f                                ; $75e4: $d4 $4f $af
    adc [hl]                                      ; $75e7: $8e
    add [hl]                                      ; $75e8: $86
    dec hl                                        ; $75e9: $2b
    ld h, d                                       ; $75ea: $62
    ccf                                           ; $75eb: $3f
    nop                                           ; $75ec: $00
    ld l, a                                       ; $75ed: $6f
    dec l                                         ; $75ee: $2d
    pop hl                                        ; $75ef: $e1
    cp [hl]                                       ; $75f0: $be
    ld h, $52                                     ; $75f1: $26 $52
    and d                                         ; $75f3: $a2
    ld c, a                                       ; $75f4: $4f
    rra                                           ; $75f5: $1f
    ld l, a                                       ; $75f6: $6f
    dec l                                         ; $75f7: $2d
    pop hl                                        ; $75f8: $e1
    cp [hl]                                       ; $75f9: $be
    ld h, $52                                     ; $75fa: $26 $52
    and d                                         ; $75fc: $a2
    rst $08                                       ; $75fd: $cf
    inc e                                         ; $75fe: $1c
    rst $20                                       ; $75ff: $e7
    ld a, [hl+]                                   ; $7600: $2a
    ld l, l                                       ; $7601: $6d
    push bc                                       ; $7602: $c5
    ld a, e                                       ; $7603: $7b
    ld l, h                                       ; $7604: $6c
    ld c, l                                       ; $7605: $4d
    xor a                                         ; $7606: $af
    db $db                                        ; $7607: $db
    adc b                                         ; $7608: $88
    or b                                          ; $7609: $b0
    push af                                       ; $760a: $f5
    sbc d                                         ; $760b: $9a
    ld a, h                                       ; $760c: $7c
    ld [hl], a                                    ; $760d: $77
    ld [hl-], a                                   ; $760e: $32
    ld c, [hl]                                    ; $760f: $4e
    ret c                                         ; $7610: $d8

    rst $30                                       ; $7611: $f7
    inc bc                                        ; $7612: $03
    ld d, a                                       ; $7613: $57
    halt                                          ; $7614: $76
    xor b                                         ; $7615: $a8
    or d                                          ; $7616: $b2
    sbc [hl]                                      ; $7617: $9e
    dec a                                         ; $7618: $3d
    rst $10                                       ; $7619: $d7
    sbc b                                         ; $761a: $98
    db $fc                                        ; $761b: $fc
    ld l, b                                       ; $761c: $68
    db $fd                                        ; $761d: $fd
    ld l, b                                       ; $761e: $68
    ccf                                           ; $761f: $3f
    or e                                          ; $7620: $b3
    ld c, c                                       ; $7621: $49
    or a                                          ; $7622: $b7
    and b                                         ; $7623: $a0
    rlca                                          ; $7624: $07
    rst $20                                       ; $7625: $e7
    ld a, [hl+]                                   ; $7626: $2a
    ld l, l                                       ; $7627: $6d
    push bc                                       ; $7628: $c5
    ld a, e                                       ; $7629: $7b
    ld l, h                                       ; $762a: $6c
    ld c, l                                       ; $762b: $4d
    dec a                                         ; $762c: $3d
    ld a, d                                       ; $762d: $7a
    dec c                                         ; $762e: $0d
    ld e, $8e                                     ; $762f: $1e $8e
    cp l                                          ; $7631: $bd
    ld a, $4e                                     ; $7632: $3e $4e
    ld h, h                                       ; $7634: $64
    db $fc                                        ; $7635: $fc
    jp hl                                         ; $7636: $e9


    nop                                           ; $7637: $00
    ld d, a                                       ; $7638: $57
    halt                                          ; $7639: $76
    xor b                                         ; $763a: $a8
    or d                                          ; $763b: $b2
    sbc [hl]                                      ; $763c: $9e
    cp l                                          ; $763d: $bd
    ld a, $17                                     ; $763e: $3e $17
    rst $28                                       ; $7640: $ef
    and l                                         ; $7641: $a5
    ld e, $e7                                     ; $7642: $1e $e7
    ld a, [hl+]                                   ; $7644: $2a
    ld l, l                                       ; $7645: $6d
    push bc                                       ; $7646: $c5
    ld a, e                                       ; $7647: $7b
    ld l, h                                       ; $7648: $6c
    ld c, l                                       ; $7649: $4d
    xor a                                         ; $764a: $af
    db $db                                        ; $764b: $db
    adc b                                         ; $764c: $88
    or [hl]                                       ; $764d: $b6
    ld a, [hl]                                    ; $764e: $7e
    sub d                                         ; $764f: $92
    sub [hl]                                      ; $7650: $96
    add hl, de                                    ; $7651: $19
    rst $30                                       ; $7652: $f7
    inc bc                                        ; $7653: $03
    rst $20                                       ; $7654: $e7
    ld a, [hl+]                                   ; $7655: $2a
    ld l, l                                       ; $7656: $6d
    push bc                                       ; $7657: $c5
    ld a, e                                       ; $7658: $7b
    ld l, h                                       ; $7659: $6c
    ld c, l                                       ; $765a: $4d
    xor a                                         ; $765b: $af
    db $db                                        ; $765c: $db
    adc b                                         ; $765d: $88
    or [hl]                                       ; $765e: $b6
    sbc $c8                                       ; $765f: $de $c8
    ld [$0079], sp                                ; $7661: $08 $79 $00
    rst $20                                       ; $7664: $e7
    ld a, [hl+]                                   ; $7665: $2a
    ld l, l                                       ; $7666: $6d
    push bc                                       ; $7667: $c5
    ld a, e                                       ; $7668: $7b
    ld l, h                                       ; $7669: $6c
    ld c, l                                       ; $766a: $4d
    xor a                                         ; $766b: $af
    db $db                                        ; $766c: $db
    adc b                                         ; $766d: $88
    or b                                          ; $766e: $b0
    push af                                       ; $766f: $f5
    ld b, [hl]                                    ; $7670: $46
    ld l, b                                       ; $7671: $68
    sub e                                         ; $7672: $93
    ld [c], a                                     ; $7673: $e2
    ld bc, $336f                                  ; $7674: $01 $6f $33
    cp h                                          ; $7677: $bc
    ld b, a                                       ; $7678: $47
    ld d, a                                       ; $7679: $57
    sbc h                                         ; $767a: $9c
    inc bc                                        ; $767b: $03
    ld d, a                                       ; $767c: $57
    halt                                          ; $767d: $76
    xor b                                         ; $767e: $a8
    or d                                          ; $767f: $b2
    sbc [hl]                                      ; $7680: $9e
    db $fd                                        ; $7681: $fd
    call z, Call_06f_5590                         ; $7682: $cc $90 $55
    or h                                          ; $7685: $b4
    ld c, [hl]                                    ; $7686: $4e
    ret                                           ; $7687: $c9


    ld [hl], b                                    ; $7688: $70

jr_06f_7689:
    pop af                                        ; $7689: $f1
    ld [hl], a                                    ; $768a: $77
    ld c, $37                                     ; $768b: $0e $37
    or b                                          ; $768d: $b0
    and e                                         ; $768e: $a3
    sbc [hl]                                      ; $768f: $9e
    db $fd                                        ; $7690: $fd
    call z, Call_06f_7446                         ; $7691: $cc $46 $74
    ld hl, $01e9                                  ; $7694: $21 $e9 $01
    rst $10                                       ; $7697: $d7
    and b                                         ; $7698: $a0
    ld l, [hl]                                    ; $7699: $6e
    call z, $f5a0                                 ; $769a: $cc $a0 $f5
    db $ec                                        ; $769d: $ec
    cp e                                          ; $769e: $bb
    or [hl]                                       ; $769f: $b6
    ld a, [c]                                     ; $76a0: $f2
    ld l, c                                       ; $76a1: $69
    ld [hl+], a                                   ; $76a2: $22
    or l                                          ; $76a3: $b5
    rst $08                                       ; $76a4: $cf
    inc e                                         ; $76a5: $1c
    rst $10                                       ; $76a6: $d7
    ld [hl], a                                    ; $76a7: $77
    ld b, h                                       ; $76a8: $44
    adc b                                         ; $76a9: $88
    add $1c                                       ; $76aa: $c6 $1c
    ld a, [$9f72]                                 ; $76ac: $fa $72 $9f
    ld a, [hl]                                    ; $76af: $7e
    ld a, [c]                                     ; $76b0: $f2
    sbc c                                         ; $76b1: $99
    inc bc                                        ; $76b2: $03
    rst $10                                       ; $76b3: $d7
    ld h, b                                       ; $76b4: $60
    daa                                           ; $76b5: $27
    cp d                                          ; $76b6: $ba
    ld a, [$87e9]                                 ; $76b7: $fa $e9 $87
    jr c, jr_06f_7689                             ; $76ba: $38 $cd

    ld bc, $7037                                  ; $76bc: $01 $37 $70
    ld c, d                                       ; $76bf: $4a
    cp a                                          ; $76c0: $bf
    ld d, e                                       ; $76c1: $53

Call_06f_76c2:
    rst $08                                       ; $76c2: $cf
    sbc [hl]                                      ; $76c3: $9e
    rst $20                                       ; $76c4: $e7
    ld l, b                                       ; $76c5: $68
    ldh a, [$a8]                                  ; $76c6: $f0 $a8
    ld h, a                                       ; $76c8: $67
    xor a                                         ; $76c9: $af
    adc $e9                                       ; $76ca: $ce $e9
    ld b, a                                       ; $76cc: $47
    ld e, b                                       ; $76cd: $58
    call nc, Call_06f_6f03                        ; $76ce: $d4 $03 $6f
    adc a                                         ; $76d1: $8f
    cp c                                          ; $76d2: $b9

Jump_06f_76d3:
    dec d                                         ; $76d3: $15
    rst $28                                       ; $76d4: $ef
    or c                                          ; $76d5: $b1
    dec [hl]                                      ; $76d6: $35
    cp l                                          ; $76d7: $bd
    ld b, $95                                     ; $76d8: $06 $95
    ld l, c                                       ; $76da: $69
    ld e, a                                       ; $76db: $5f
    ld a, c                                       ; $76dc: $79
    ld [$77d1], a                                 ; $76dd: $ea $d1 $77
    ld l, l                                       ; $76e0: $6d
    adc c                                         ; $76e1: $89
    ld d, [hl]                                    ; $76e2: $56
    cp [hl]                                       ; $76e3: $be
    rst $00                                       ; $76e4: $c7
    ld d, $0e                                     ; $76e5: $16 $0e
    scf                                           ; $76e7: $37
    or b                                          ; $76e8: $b0
    and e                                         ; $76e9: $a3
    ld d, a                                       ; $76ea: $57
    add $a5                                       ; $76eb: $c6 $a5
    adc h                                         ; $76ed: $8c
    cp l                                          ; $76ee: $bd
    ld e, $7d                                     ; $76ef: $1e $7d
    rst $10                                       ; $76f1: $d7
    sub [hl]                                      ; $76f2: $96
    ld l, b                                       ; $76f3: $68
    push hl                                       ; $76f4: $e5
    ld a, e                                       ; $76f5: $7b
    ld l, h                                       ; $76f6: $6c
    pop hl                                        ; $76f7: $e1
    nop                                           ; $76f8: $00
    sub a                                         ; $76f9: $97
    call $db05                                    ; $76fa: $cd $05 $db
    sbc d                                         ; $76fd: $9a
    ld a, d                                       ; $76fe: $7a
    or $26                                        ; $76ff: $f6 $26
    ld d, h                                       ; $7701: $54
    daa                                           ; $7702: $27
    add hl, de                                    ; $7703: $19
    db $f4                                        ; $7704: $f4
    nop                                           ; $7705: $00
    rst $20                                       ; $7706: $e7
    ld a, [hl+]                                   ; $7707: $2a
    ld l, l                                       ; $7708: $6d
    push bc                                       ; $7709: $c5
    ld a, e                                       ; $770a: $7b
    ld l, h                                       ; $770b: $6c
    ld c, l                                       ; $770c: $4d
    db $fd                                        ; $770d: $fd
    db $f4                                        ; $770e: $f4
    sbc l                                         ; $770f: $9d
    or l                                          ; $7710: $b5
    ld c, e                                       ; $7711: $4b
    pop af                                        ; $7712: $f1
    ld bc, $1aef                                  ; $7713: $01 $ef $1a
    or d                                          ; $7716: $b2
    ld h, a                                       ; $7717: $67
    ld l, a                                       ; $7718: $6f
    ld h, b                                       ; $7719: $60
    rst $38                                       ; $771a: $ff
    sbc l                                         ; $771b: $9d
    ld a, d                                       ; $771c: $7a
    or $ea                                        ; $771d: $f6 $ea
    sbc h                                         ; $771f: $9c
    ld a, [hl]                                    ; $7720: $7e
    add h                                         ; $7721: $84
    ld b, l                                       ; $7722: $45
    dec a                                         ; $7723: $3d
    nop                                           ; $7724: $00
    scf                                           ; $7725: $37
    or b                                          ; $7726: $b0
    and e                                         ; $7727: $a3
    ld a, [hl]                                    ; $7728: $7e
    or h                                          ; $7729: $b4
    rst $10                                       ; $772a: $d7
    ld l, l                                       ; $772b: $6d
    ld b, h                                       ; $772c: $44
    ld d, h                                       ; $772d: $54
    dec e                                         ; $772e: $1d
    and e                                         ; $772f: $a3
    ld e, $37                                     ; $7730: $1e $37
    or b                                          ; $7732: $b0
    and e                                         ; $7733: $a3
    ld a, [hl]                                    ; $7734: $7e
    or h                                          ; $7735: $b4
    sbc a                                         ; $7736: $9f
    ld [hl-], a                                   ; $7737: $32
    ld a, [de]                                    ; $7738: $1a
    ld [c], a                                     ; $7739: $e2
    add sp, $01                                   ; $773a: $e8 $01
    rst $10                                       ; $773c: $d7
    and b                                         ; $773d: $a0
    ld l, [hl]                                    ; $773e: $6e
    call z, Call_06f_7da0                         ; $773f: $cc $a0 $7d
    and d                                         ; $7742: $a2
    scf                                           ; $7743: $37
    sub d                                         ; $7744: $92
    ld d, b                                       ; $7745: $50
    ld h, a                                       ; $7746: $67
    sbc a                                         ; $7747: $9f
    inc bc                                        ; $7748: $03
    rst $10                                       ; $7749: $d7
    rst $20                                       ; $774a: $e7
    ld [c], a                                     ; $774b: $e2
    cp l                                          ; $774c: $bd
    call nc, Call_06f_733e                        ; $774d: $d4 $3e $73
    nop                                           ; $7750: $00
    ld d, a                                       ; $7751: $57
    ld b, [hl]                                    ; $7752: $46
    ld h, h                                       ; $7753: $64
    xor h                                         ; $7754: $ac
    ld h, a                                       ; $7755: $67

jr_06f_7756:
    rst $18                                       ; $7756: $df
    or l                                          ; $7757: $b5
    sub l                                         ; $7758: $95
    ld c, a                                       ; $7759: $4f
    inc de                                        ; $775a: $13
    xor c                                         ; $775b: $a9
    rlca                                          ; $775c: $07
    sbc a                                         ; $775d: $9f
    adc l                                         ; $775e: $8d
    add hl, de                                    ; $775f: $19
    db $eb                                        ; $7760: $eb
    reti                                          ; $7761: $d9


    rr d                                          ; $7762: $cb $1a
    ld l, l                                       ; $7764: $6d
    ld a, [c]                                     ; $7765: $f2
    cp b                                          ; $7766: $b8
    add l                                         ; $7767: $85
    inc bc                                        ; $7768: $03
    sbc a                                         ; $7769: $9f
    pop de                                        ; $776a: $d1
    adc h                                         ; $776b: $8c
    ld a, c                                       ; $776c: $79
    ld [$abd9], a                                 ; $776d: $ea $d9 $ab
    ld [hl], e                                    ; $7770: $73
    ld a, [$1611]                                 ; $7771: $fa $11 $16
    or l                                          ; $7774: $b5
    rst $08                                       ; $7775: $cf
    inc e                                         ; $7776: $1c
    sbc a                                         ; $7777: $9f
    pop de                                        ; $7778: $d1
    adc h                                         ; $7779: $8c
    ld a, c                                       ; $777a: $79
    ld [$abd9], a                                 ; $777b: $ea $d9 $ab
    ld [hl], e                                    ; $777e: $73
    ld a, [$1611]                                 ; $777f: $fa $11 $16
    or l                                          ; $7782: $b5
    rst $08                                       ; $7783: $cf
    ld e, $9f                                     ; $7784: $1e $9f
    pop de                                        ; $7786: $d1
    adc h                                         ; $7787: $8c
    ld a, c                                       ; $7788: $79
    ld [$abd9], a                                 ; $7789: $ea $d9 $ab
    ld [hl], e                                    ; $778c: $73
    ld a, [$1611]                                 ; $778d: $fa $11 $16
    or l                                          ; $7790: $b5
    rst $08                                       ; $7791: $cf
    dec e                                         ; $7792: $1d
    rst $20                                       ; $7793: $e7
    or a                                          ; $7794: $b7
    ld [hl+], a                                   ; $7795: $22
    ld l, l                                       ; $7796: $6d
    adc l                                         ; $7797: $8d
    push de                                       ; $7798: $d5
    and e                                         ; $7799: $a3
    ld d, a                                       ; $779a: $57
    jr nz, jr_06f_77e1                            ; $779b: $20 $44

    ld b, [hl]                                    ; $779d: $46
    dec a                                         ; $779e: $3d
    ld a, e                                       ; $779f: $7b
    dec d                                         ; $77a0: $15
    daa                                           ; $77a1: $27
    ld e, e                                       ; $77a2: $5b
    cp $00                                        ; $77a3: $fe $00
    ld d, a                                       ; $77a5: $57
    or $24                                        ; $77a6: $f6 $24
    ld h, h                                       ; $77a8: $64
    dec a                                         ; $77a9: $3d

jr_06f_77aa:
    ei                                            ; $77aa: $fb
    sbc c                                         ; $77ab: $99
    adc l                                         ; $77ac: $8d
    ld b, h                                       ; $77ad: $44
    dec a                                         ; $77ae: $3d
    ld a, e                                       ; $77af: $7b
    dec b                                         ; $77b0: $05
    ld d, $a1                                     ; $77b1: $16 $a1
    rlca                                          ; $77b3: $07
    rst $28                                       ; $77b4: $ef
    ld a, [de]                                    ; $77b5: $1a
    or d                                          ; $77b6: $b2
    ld h, a                                       ; $77b7: $67
    ld l, a                                       ; $77b8: $6f
    ld h, b                                       ; $77b9: $60
    rst $38                                       ; $77ba: $ff
    sbc l                                         ; $77bb: $9d
    ld a, $d1                                     ; $77bc: $3e $d1
    sbc e                                         ; $77be: $9b
    cp b                                          ; $77bf: $b8
    cp l                                          ; $77c0: $bd
    and $00                                       ; $77c1: $e6 $00
    scf                                           ; $77c3: $37
    or b                                          ; $77c4: $b0
    and e                                         ; $77c5: $a3
    scf                                           ; $77c6: $37
    jr z, jr_06f_7756                             ; $77c7: $28 $8d

    ld de, $a3f5                                  ; $77c9: $11 $f5 $a3
    db $fd                                        ; $77cc: $fd
    call z, $dd26                                 ; $77cd: $cc $26 $dd

Call_06f_77d0:
    add d                                         ; $77d0: $82
    ld e, $d7                                     ; $77d1: $1e $d7
    db $10                                        ; $77d3: $10
    ld l, c                                       ; $77d4: $69
    dec bc                                        ; $77d5: $0b
    ld c, e                                       ; $77d6: $4b
    db $eb                                        ; $77d7: $eb
    reti                                          ; $77d8: $d9


    ld [hl], e                                    ; $77d9: $73
    sub l                                         ; $77da: $95
    or [hl]                                       ; $77db: $b6
    ld [c], a                                     ; $77dc: $e2
    dec a                                         ; $77dd: $3d
    or [hl]                                       ; $77de: $b6
    and $00                                       ; $77df: $e6 $00

jr_06f_77e1:
    ld l, a                                       ; $77e1: $6f
    ld hl, $b98b                                  ; $77e2: $21 $8b $b9
    ld l, h                                       ; $77e5: $6c
    ld [$7b47], a                                 ; $77e6: $ea $47 $7b

Jump_06f_77e9:
    adc l                                         ; $77e9: $8d
    ld a, c                                       ; $77ea: $79
    push hl                                       ; $77eb: $e5
    pop de                                        ; $77ec: $d1
    inc bc                                        ; $77ed: $03
    ld d, a                                       ; $77ee: $57
    halt                                          ; $77ef: $76
    xor b                                         ; $77f0: $a8
    or d                                          ; $77f1: $b2
    sbc [hl]                                      ; $77f2: $9e
    cp l                                          ; $77f3: $bd
    halt                                          ; $77f4: $76
    cp a                                          ; $77f5: $bf
    ld l, $89                                     ; $77f6: $2e $89
    ld a, [hl]                                    ; $77f8: $7e
    ld h, [hl]                                    ; $77f9: $66
    sub e                                         ; $77fa: $93
    ld l, [hl]                                    ; $77fb: $6e
    pop hl                                        ; $77fc: $e1
    nop                                           ; $77fd: $00
    ld d, a                                       ; $77fe: $57
    halt                                          ; $77ff: $76
    xor b                                         ; $7800: $a8
    or d                                          ; $7801: $b2
    sbc [hl]                                      ; $7802: $9e
    cp l                                          ; $7803: $bd
    ld l, h                                       ; $7804: $6c
    sub c                                         ; $7805: $91
    db $fd                                        ; $7806: $fd
    call z, $dd26                                 ; $7807: $cc $26 $dd
    jp nz, Jump_06f_5701                          ; $780a: $c2 $01 $57

    ld b, [hl]                                    ; $780d: $46
    ld h, h                                       ; $780e: $64
    xor h                                         ; $780f: $ac
    ld b, a                                       ; $7810: $47
    xor a                                         ; $7811: $af
    ret nz                                        ; $7812: $c0

    ld [hl+], a                                   ; $7813: $22
    ld c, $57                                     ; $7814: $0e $57
    add $8c                                       ; $7816: $c6 $8c
    ld a, [hl]                                    ; $7818: $7e
    xor h                                         ; $7819: $ac
    scf                                           ; $781a: $37
    jr z, jr_06f_77aa                             ; $781b: $28 $8d

    ld [hl], c                                    ; $781d: $71
    ld [$37a7], a                                 ; $781e: $ea $a7 $37
    ld a, b                                       ; $7821: $78
    dec hl                                        ; $7822: $2b
    ld c, [hl]                                    ; $7823: $4e
    cpl                                           ; $7824: $2f
    ld h, a                                       ; $7825: $67
    rrca                                          ; $7826: $0f
    dec sp                                        ; $7827: $3b
    nop                                           ; $7828: $00
    rst $20                                       ; $7829: $e7
    ld a, [hl+]                                   ; $782a: $2a
    ld l, l                                       ; $782b: $6d
    push bc                                       ; $782c: $c5
    ld a, e                                       ; $782d: $7b
    ld l, h                                       ; $782e: $6c
    ld c, l                                       ; $782f: $4d
    xor a                                         ; $7830: $af
    db $db                                        ; $7831: $db
    adc b                                         ; $7832: $88
    or [hl]                                       ; $7833: $b6
    cp [hl]                                       ; $7834: $be
    or l                                          ; $7835: $b5
    ld [hl], d                                    ; $7836: $72
    sub $03                                       ; $7837: $d6 $03
    ld d, a                                       ; $7839: $57
    halt                                          ; $783a: $76
    xor b                                         ; $783b: $a8
    or d                                          ; $783c: $b2

Jump_06f_783d:
    scf                                           ; $783d: $37
    ld [hl], c                                    ; $783e: $71
    ld a, e                                       ; $783f: $7b
    pop hl                                        ; $7840: $e1
    nop                                           ; $7841: $00
    rst $10                                       ; $7842: $d7
    db $10                                        ; $7843: $10
    and d                                         ; $7844: $a2
    ld e, $bd                                     ; $7845: $1e $bd
    ld [hl+], a                                   ; $7847: $22
    add $9f                                       ; $7848: $c6 $9f
    cp l                                          ; $784a: $bd
    add hl, sp                                    ; $784b: $39
    ldh a, [$63]                                  ; $784c: $f0 $63
    jr c, jr_06f_7850                             ; $784e: $38 $00

jr_06f_7850:
    rst $28                                       ; $7850: $ef
    ld a, [de]                                    ; $7851: $1a
    or d                                          ; $7852: $b2
    ld h, a                                       ; $7853: $67
    ld l, a                                       ; $7854: $6f
    ld h, b                                       ; $7855: $60
    rst $38                                       ; $7856: $ff
    sbc l                                         ; $7857: $9d
    ld a, $d1                                     ; $7858: $3e $d1
    ld [hl], a                                    ; $785a: $77
    sub [hl]                                      ; $785b: $96
    xor e                                         ; $785c: $ab
    ld h, a                                       ; $785d: $67
    rst $18                                       ; $785e: $df
    sbc a                                         ; $785f: $9f
    db $d3                                        ; $7860: $d3
    inc e                                         ; $7861: $1c
    scf                                           ; $7862: $37
    ld h, $65                                     ; $7863: $26 $65
    rst $38                                       ; $7865: $ff
    db $e4                                        ; $7866: $e4
    or l                                          ; $7867: $b5
    and h                                         ; $7868: $a4

Call_06f_7869:
    ld c, e                                       ; $7869: $4b
    cp [hl]                                       ; $786a: $be
    jp nc, $9f37                                  ; $786b: $d2 $37 $9f

    xor $01                                       ; $786e: $ee $01
    scf                                           ; $7870: $37
    ld b, a                                       ; $7871: $47
    sbc [hl]                                      ; $7872: $9e
    sub l                                         ; $7873: $95
    ld a, [de]                                    ; $7874: $1a
    add e                                         ; $7875: $83
    sbc e                                         ; $7876: $9b
    and a                                         ; $7877: $a7
    ld l, a                                       ; $7878: $6f
    ld d, c                                       ; $7879: $51
    ld c, [hl]                                    ; $787a: $4e
    rst $18                                       ; $787b: $df
    ld e, [hl]                                    ; $787c: $5e
    jr c, jr_06f_78cc                             ; $787d: $38 $4d

    add $be                                       ; $787f: $c6 $be
    dec e                                         ; $7881: $1d
    scf                                           ; $7882: $37
    ld b, a                                       ; $7883: $47
    sbc [hl]                                      ; $7884: $9e
    sub l                                         ; $7885: $95
    ld a, [de]                                    ; $7886: $1a
    add e                                         ; $7887: $83
    sbc e                                         ; $7888: $9b
    pop de                                        ; $7889: $d1
    rrca                                          ; $788a: $0f
    rst $20                                       ; $788b: $e7
    ld a, e                                       ; $788c: $7b
    call nc, $57b3                                ; $788d: $d4 $b3 $57
    or b                                          ; $7890: $b0
    ld a, e                                       ; $7891: $7b
    ld l, $bb                                     ; $7892: $2e $bb
    sub a                                         ; $7894: $97
    jp c, $131b                                   ; $7895: $da $1b $13

    ld [c], a                                     ; $7898: $e2
    adc c                                         ; $7899: $89
    ld [hl], a                                    ; $789a: $77
    ld l, l                                       ; $789b: $6d
    ld d, h                                       ; $789c: $54
    or c                                          ; $789d: $b1
    dec e                                         ; $789e: $1d
    scf                                           ; $789f: $37
    ld b, a                                       ; $78a0: $47
    sbc [hl]                                      ; $78a1: $9e
    sub l                                         ; $78a2: $95
    ld a, [de]                                    ; $78a3: $1a
    add e                                         ; $78a4: $83
    sbc e                                         ; $78a5: $9b
    pop de                                        ; $78a6: $d1
    ld [hl], a                                    ; $78a7: $77
    ld h, b                                       ; $78a8: $60
    ld l, $58                                     ; $78a9: $2e $58
    ld l, $6c                                     ; $78ab: $2e $6c
    rlca                                          ; $78ad: $07
    scf                                           ; $78ae: $37
    ld b, a                                       ; $78af: $47
    sbc [hl]                                      ; $78b0: $9e
    sub l                                         ; $78b1: $95
    ld a, [de]                                    ; $78b2: $1a
    add e                                         ; $78b3: $83
    sbc e                                         ; $78b4: $9b
    and a                                         ; $78b5: $a7
    rst $20                                       ; $78b6: $e7
    ld l, $bc                                     ; $78b7: $2e $bc
    rst $00                                       ; $78b9: $c7
    sub $d4                                       ; $78ba: $d6 $d4
    or e                                          ; $78bc: $b3
    ld d, a                                       ; $78bd: $57
    add $d2                                       ; $78be: $c6 $d2
    rst $30                                       ; $78c0: $f7
    ret nc                                        ; $78c1: $d0

    db $ed                                        ; $78c2: $ed
    nop                                           ; $78c3: $00
    scf                                           ; $78c4: $37
    ld b, a                                       ; $78c5: $47
    sbc [hl]                                      ; $78c6: $9e
    sub l                                         ; $78c7: $95
    ld a, [de]                                    ; $78c8: $1a
    add e                                         ; $78c9: $83
    sbc e                                         ; $78ca: $9b
    pop de                                        ; $78cb: $d1

jr_06f_78cc:
    rrca                                          ; $78cc: $0f
    rst $20                                       ; $78cd: $e7
    ld a, e                                       ; $78ce: $7b
    call nc, Call_000_37b3                        ; $78cf: $d4 $b3 $37
    ld h, c                                       ; $78d2: $61
    dec hl                                        ; $78d3: $2b
    adc e                                         ; $78d4: $8b
    and c                                         ; $78d5: $a1
    db $fd                                        ; $78d6: $fd
    ld a, b                                       ; $78d7: $78
    ld e, a                                       ; $78d8: $5f
    ld a, a                                       ; $78d9: $7f
    jr @+$76                                      ; $78da: $18 $74

    dec sp                                        ; $78dc: $3b
    nop                                           ; $78dd: $00
    scf                                           ; $78de: $37
    ld b, a                                       ; $78df: $47
    sbc [hl]                                      ; $78e0: $9e
    sub l                                         ; $78e1: $95
    ld a, [de]                                    ; $78e2: $1a
    add e                                         ; $78e3: $83
    sbc e                                         ; $78e4: $9b
    pop de                                        ; $78e5: $d1
    rrca                                          ; $78e6: $0f
    rst $10                                       ; $78e7: $d7
    rst $18                                       ; $78e8: $df
    ld h, b                                       ; $78e9: $60
    dec bc                                        ; $78ea: $0b
    ld a, l                                       ; $78eb: $7d
    ld h, a                                       ; $78ec: $67
    rra                                           ; $78ed: $1f
    db $e3                                        ; $78ee: $e3
    ld a, [de]                                    ; $78ef: $1a
    dec l                                         ; $78f0: $2d
    ei                                            ; $78f1: $fb
    sub $98                                       ; $78f2: $d6 $98
    db $dd                                        ; $78f4: $dd
    ld c, e                                       ; $78f5: $4b
    db $dd                                        ; $78f6: $dd
    ld c, $37                                     ; $78f7: $0e $37
    ld b, a                                       ; $78f9: $47
    sbc [hl]                                      ; $78fa: $9e
    sub l                                         ; $78fb: $95
    ld a, [de]                                    ; $78fc: $1a
    add e                                         ; $78fd: $83
    sbc e                                         ; $78fe: $9b
    pop de                                        ; $78ff: $d1
    ld l, e                                       ; $7900: $6b
    ldh a, [rSVBK]                                ; $7901: $f0 $70
    db $ec                                        ; $7903: $ec
    dec [hl]                                      ; $7904: $35
    db $ec                                        ; $7905: $ec
    ccf                                           ; $7906: $3f
    xor h                                         ; $7907: $ac
    call c, Call_000_274f                         ; $7908: $dc $4f $27
    add l                                         ; $790b: $85
    ret nc                                        ; $790c: $d0

    ld e, [hl]                                    ; $790d: $5e
    add a                                         ; $790e: $87
    and c                                         ; $790f: $a1
    sbc a                                         ; $7910: $9f
    adc l                                         ; $7911: $8d
    add a                                         ; $7912: $87
    ld d, $da                                     ; $7913: $16 $da
    adc a                                         ; $7915: $8f
    dec h                                         ; $7916: $25
    ld [hl], h                                    ; $7917: $74
    db $dd                                        ; $7918: $dd
    ld c, e                                       ; $7919: $4b
    db $dd                                        ; $791a: $dd
    ld c, $37                                     ; $791b: $0e $37
    ld b, a                                       ; $791d: $47
    sbc [hl]                                      ; $791e: $9e
    sub l                                         ; $791f: $95
    ld a, [de]                                    ; $7920: $1a
    add e                                         ; $7921: $83
    sbc e                                         ; $7922: $9b
    pop de                                        ; $7923: $d1
    rrca                                          ; $7924: $0f
    rst $20                                       ; $7925: $e7
    ld a, e                                       ; $7926: $7b
    call nc, Call_06f_6fb3                        ; $7927: $d4 $b3 $6f
    adc a                                         ; $792a: $8f
    and h                                         ; $792b: $a4
    or $7a                                        ; $792c: $f6 $7a
    ld a, [c]                                     ; $792e: $f2
    srl l                                         ; $792f: $cb $3d
    pop hl                                        ; $7931: $e1
    ld sp, hl                                     ; $7932: $f9
    call nz, $8be5                                ; $7933: $c4 $e5 $8b
    rst $30                                       ; $7936: $f7
    ld c, e                                       ; $7937: $4b
    ret c                                         ; $7938: $d8

    halt                                          ; $7939: $76
    nop                                           ; $793a: $00
    scf                                           ; $793b: $37
    ld b, a                                       ; $793c: $47
    sbc [hl]                                      ; $793d: $9e
    sub l                                         ; $793e: $95
    ld a, [de]                                    ; $793f: $1a
    add e                                         ; $7940: $83
    ld c, e                                       ; $7941: $4b
    rst $10                                       ; $7942: $d7
    ld [hl], a                                    ; $7943: $77
    ld l, l                                       ; $7944: $6d
    push hl                                       ; $7945: $e5
    db $d3                                        ; $7946: $d3
    ld b, h                                       ; $7947: $44
    xor d                                         ; $7948: $aa
    and b                                         ; $7949: $a0
    db $d3                                        ; $794a: $d3
    or a                                          ; $794b: $b7
    sub b                                         ; $794c: $90
    push hl                                       ; $794d: $e5

jr_06f_794e:
    call nc, $f68f                                ; $794e: $d4 $8f $f6
    ld a, [de]                                    ; $7951: $1a
    ld c, [hl]                                    ; $7952: $4e
    and e                                         ; $7953: $a3
    db $db                                        ; $7954: $db
    ld bc, $4737                                  ; $7955: $01 $37 $47
    sbc [hl]                                      ; $7958: $9e
    sub l                                         ; $7959: $95
    ld a, [de]                                    ; $795a: $1a
    add e                                         ; $795b: $83
    sbc e                                         ; $795c: $9b
    and c                                         ; $795d: $a1
    ld [hl], l                                    ; $795e: $75
    ld d, b                                       ; $795f: $50
    scf                                           ; $7960: $37
    ld h, [hl]                                    ; $7961: $66
    ret nc                                        ; $7962: $d0

    jp nc, $b109                                  ; $7963: $d2 $09 $b1

    ld l, [hl]                                    ; $7966: $6e
    ld c, l                                       ; $7967: $4d
    dec a                                         ; $7968: $3d
    ei                                            ; $7969: $fb
    xor [hl]                                      ; $796a: $ae
    xor l                                         ; $796b: $ad
    ld a, h                                       ; $796c: $7c
    sbc d                                         ; $796d: $9a
    ld c, b                                       ; $796e: $48
    db $dd                                        ; $796f: $dd
    ld c, $37                                     ; $7970: $0e $37
    ld b, a                                       ; $7972: $47
    sbc [hl]                                      ; $7973: $9e
    sub l                                         ; $7974: $95
    ld a, [de]                                    ; $7975: $1a
    add e                                         ; $7976: $83
    dec hl                                        ; $7977: $2b
    dec l                                         ; $7978: $2d
    db $dd                                        ; $7979: $dd
    ld b, [hl]                                    ; $797a: $46
    or $d3                                        ; $797b: $f6 $d3
    jp hl                                         ; $797d: $e9


    add a                                         ; $797e: $87
    jr c, jr_06f_794e                             ; $797f: $38 $cd

    halt                                          ; $7981: $76
    nop                                           ; $7982: $00
    scf                                           ; $7983: $37
    ld b, a                                       ; $7984: $47
    sbc [hl]                                      ; $7985: $9e
    sub l                                         ; $7986: $95
    ld a, [de]                                    ; $7987: $1a
    add e                                         ; $7988: $83
    ld c, e                                       ; $7989: $4b
    rst $10                                       ; $798a: $d7
    db $e4                                        ; $798b: $e4
    ld d, b                                       ; $798c: $50
    rlca                                          ; $798d: $07
    ld [hl], l                                    ; $798e: $75
    ld h, e                                       ; $798f: $63
    add [hl]                                      ; $7990: $86
    db $ed                                        ; $7991: $ed
    nop                                           ; $7992: $00
    scf                                           ; $7993: $37
    ld b, a                                       ; $7994: $47
    sbc [hl]                                      ; $7995: $9e
    sub l                                         ; $7996: $95
    ld a, [de]                                    ; $7997: $1a
    add e                                         ; $7998: $83
    ld c, e                                       ; $7999: $4b
    rst $10                                       ; $799a: $d7
    db $e4                                        ; $799b: $e4
    ld d, b                                       ; $799c: $50
    rlca                                          ; $799d: $07
    ld [hl], l                                    ; $799e: $75
    ld h, e                                       ; $799f: $63
    add [hl]                                      ; $79a0: $86
    db $ed                                        ; $79a1: $ed
    nop                                           ; $79a2: $00
    scf                                           ; $79a3: $37
    ld b, a                                       ; $79a4: $47
    sbc [hl]                                      ; $79a5: $9e
    sub l                                         ; $79a6: $95
    ld a, [de]                                    ; $79a7: $1a
    add e                                         ; $79a8: $83
    ld c, e                                       ; $79a9: $4b
    rst $10                                       ; $79aa: $d7
    db $e4                                        ; $79ab: $e4
    ld d, b                                       ; $79ac: $50
    rlca                                          ; $79ad: $07
    ld [hl], l                                    ; $79ae: $75
    ld h, e                                       ; $79af: $63
    add [hl]                                      ; $79b0: $86
    db $ed                                        ; $79b1: $ed
    nop                                           ; $79b2: $00
    scf                                           ; $79b3: $37
    ld b, a                                       ; $79b4: $47
    sbc [hl]                                      ; $79b5: $9e
    sub l                                         ; $79b6: $95
    ld a, [de]                                    ; $79b7: $1a
    add e                                         ; $79b8: $83
    sbc e                                         ; $79b9: $9b
    and a                                         ; $79ba: $a7
    rst $20                                       ; $79bb: $e7
    or a                                          ; $79bc: $b7
    ld b, d                                       ; $79bd: $42
    and e                                         ; $79be: $a3
    ld [$b3d4], a                                 ; $79bf: $ea $d4 $b3
    ld d, a                                       ; $79c2: $57
    rst $20                                       ; $79c3: $e7
    db $f4                                        ; $79c4: $f4
    inc hl                                        ; $79c5: $23
    inc l                                         ; $79c6: $2c
    ld [$0076], a                                 ; $79c7: $ea $76 $00
    scf                                           ; $79ca: $37
    ld b, a                                       ; $79cb: $47
    sbc [hl]                                      ; $79cc: $9e
    sub l                                         ; $79cd: $95
    ld a, [de]                                    ; $79ce: $1a
    add e                                         ; $79cf: $83
    sbc e                                         ; $79d0: $9b
    ld d, c                                       ; $79d1: $51
    cp c                                          ; $79d2: $b9
    ld b, e                                       ; $79d3: $43
    sub l                                         ; $79d4: $95
    push af                                       ; $79d5: $f5
    db $ec                                        ; $79d6: $ec
    and a                                         ; $79d7: $a7
    add hl, hl                                    ; $79d8: $29
    ld b, e                                       ; $79d9: $43
    ld a, e                                       ; $79da: $7b
    add hl, sp                                    ; $79db: $39
    rst $00                                       ; $79dc: $c7
    ld [hl], l                                    ; $79dd: $75
    add d                                         ; $79de: $82
    ld l, [hl]                                    ; $79df: $6e
    rlca                                          ; $79e0: $07
    scf                                           ; $79e1: $37
    ld b, a                                       ; $79e2: $47
    sbc [hl]                                      ; $79e3: $9e
    sub l                                         ; $79e4: $95
    ld a, [de]                                    ; $79e5: $1a
    add e                                         ; $79e6: $83
    sbc e                                         ; $79e7: $9b
    ld d, c                                       ; $79e8: $51
    cp c                                          ; $79e9: $b9
    ld b, e                                       ; $79ea: $43
    sub l                                         ; $79eb: $95
    push af                                       ; $79ec: $f5
    db $ec                                        ; $79ed: $ec
    ld h, l                                       ; $79ee: $65
    ld e, e                                       ; $79ef: $5b
    pop de                                        ; $79f0: $d1
    dec b                                         ; $79f1: $05
    rst $00                                       ; $79f2: $c7
    dec h                                         ; $79f3: $25
    or c                                          ; $79f4: $b1
    dec e                                         ; $79f5: $1d
    scf                                           ; $79f6: $37
    ld b, a                                       ; $79f7: $47
    sbc [hl]                                      ; $79f8: $9e
    sub l                                         ; $79f9: $95
    ld a, [de]                                    ; $79fa: $1a
    add e                                         ; $79fb: $83
    sbc e                                         ; $79fc: $9b
    pop de                                        ; $79fd: $d1
    ld [hl], a                                    ; $79fe: $77
    or c                                          ; $79ff: $b1
    db $d3                                        ; $7a00: $d3
    ld d, $ea                                     ; $7a01: $16 $ea
    and c                                         ; $7a03: $a1
    cp l                                          ; $7a04: $bd
    ld l, h                                       ; $7a05: $6c
    ld c, $3e                                     ; $7a06: $0e $3e
    add hl, de                                    ; $7a08: $19
    ld [hl], h                                    ; $7a09: $74
    dec sp                                        ; $7a0a: $3b
    nop                                           ; $7a0b: $00
    scf                                           ; $7a0c: $37
    ld b, a                                       ; $7a0d: $47
    sbc [hl]                                      ; $7a0e: $9e
    sub l                                         ; $7a0f: $95
    ld a, [de]                                    ; $7a10: $1a
    add e                                         ; $7a11: $83
    sbc e                                         ; $7a12: $9b
    ld d, c                                       ; $7a13: $51
    cp c                                          ; $7a14: $b9
    ld b, e                                       ; $7a15: $43
    sub l                                         ; $7a16: $95
    push af                                       ; $7a17: $f5
    db $ec                                        ; $7a18: $ec
    ld h, l                                       ; $7a19: $65
    adc l                                         ; $7a1a: $8d
    ld [hl], $79                                  ; $7a1b: $36 $79
    call c, Call_06f_76c2                         ; $7a1d: $dc $c2 $76
    nop                                           ; $7a20: $00
    scf                                           ; $7a21: $37
    ld b, a                                       ; $7a22: $47
    sbc [hl]                                      ; $7a23: $9e
    sub l                                         ; $7a24: $95
    ld a, [de]                                    ; $7a25: $1a
    add e                                         ; $7a26: $83
    sbc e                                         ; $7a27: $9b
    pop de                                        ; $7a28: $d1
    dec de                                        ; $7a29: $1b
    ret c                                         ; $7a2a: $d8

    ld d, c                                       ; $7a2b: $51
    ccf                                           ; $7a2c: $3f
    jp c, $cceb                                   ; $7a2d: $da $eb $cc

    ld c, e                                       ; $7a30: $4b
    adc [hl]                                      ; $7a31: $8e
    ld l, [hl]                                    ; $7a32: $6e
    rlca                                          ; $7a33: $07
    scf                                           ; $7a34: $37
    ld b, a                                       ; $7a35: $47
    sbc [hl]                                      ; $7a36: $9e
    sub l                                         ; $7a37: $95
    ld a, [de]                                    ; $7a38: $1a
    add e                                         ; $7a39: $83
    sbc e                                         ; $7a3a: $9b
    pop de                                        ; $7a3b: $d1
    rrca                                          ; $7a3c: $0f
    rst $20                                       ; $7a3d: $e7
    ld a, e                                       ; $7a3e: $7b
    call nc, Call_000_37b3                        ; $7a3f: $d4 $b3 $37
    and c                                         ; $7a42: $a1
    ld a, [hl-]                                   ; $7a43: $3a
    ret                                           ; $7a44: $c9


    and b                                         ; $7a45: $a0
    db $db                                        ; $7a46: $db
    ld bc, $4737                                  ; $7a47: $01 $37 $47
    sbc [hl]                                      ; $7a4a: $9e
    sub l                                         ; $7a4b: $95
    ld a, [de]                                    ; $7a4c: $1a
    add e                                         ; $7a4d: $83
    sbc e                                         ; $7a4e: $9b
    ld d, c                                       ; $7a4f: $51
    cp c                                          ; $7a50: $b9
    ld b, e                                       ; $7a51: $43
    sub l                                         ; $7a52: $95
    push af                                       ; $7a53: $f5
    db $ec                                        ; $7a54: $ec
    dec sp                                        ; $7a55: $3b
    ld e, h                                       ; $7a56: $5c
    ld [hl], c                                    ; $7a57: $71
    ld e, l                                       ; $7a58: $5d
    inc e                                         ; $7a59: $1c
    db $dd                                        ; $7a5a: $dd
    ld c, $37                                     ; $7a5b: $0e $37
    ld b, a                                       ; $7a5d: $47
    sbc [hl]                                      ; $7a5e: $9e
    sub l                                         ; $7a5f: $95
    ld a, [de]                                    ; $7a60: $1a
    add e                                         ; $7a61: $83
    sbc e                                         ; $7a62: $9b
    ld d, c                                       ; $7a63: $51
    cp c                                          ; $7a64: $b9
    ld b, e                                       ; $7a65: $43
    sub l                                         ; $7a66: $95
    push af                                       ; $7a67: $f5
    db $ec                                        ; $7a68: $ec
    db $db                                        ; $7a69: $db
    inc d                                         ; $7a6a: $14
    ld d, c                                       ; $7a6b: $51
    pop de                                        ; $7a6c: $d1
    dec hl                                        ; $7a6d: $2b
    sub e                                         ; $7a6e: $93
    and e                                         ; $7a6f: $a3
    and c                                         ; $7a70: $a1
    ret nc                                        ; $7a71: $d0

    ld e, [hl]                                    ; $7a72: $5e
    or [hl]                                       ; $7a73: $b6
    ld c, b                                       ; $7a74: $48
    xor l                                         ; $7a75: $ad
    add a                                         ; $7a76: $87
    or $33                                        ; $7a77: $f6 $33
    db $e3                                        ; $7a79: $e3
    rra                                           ; $7a7a: $1f
    cp d                                          ; $7a7b: $ba
    dec e                                         ; $7a7c: $1d

Call_06f_7a7d:
    scf                                           ; $7a7d: $37
    ld b, a                                       ; $7a7e: $47
    sbc [hl]                                      ; $7a7f: $9e
    sub l                                         ; $7a80: $95
    ld e, c                                       ; $7a81: $59
    ld c, [hl]                                    ; $7a82: $4e
    adc [hl]                                      ; $7a83: $8e
    ld [hl], $a9                                  ; $7a84: $36 $a9
    db $d3                                        ; $7a86: $d3
    ld [hl], e                                    ; $7a87: $73
    dec c                                         ; $7a88: $0d
    cp c                                          ; $7a89: $b9
    adc e                                         ; $7a8a: $8b
    and a                                         ; $7a8b: $a7
    sbc [hl]                                      ; $7a8c: $9e
    db $fd                                        ; $7a8d: $fd
    ld hl, sp+$7b                                 ; $7a8e: $f8 $7b
    ld a, [hl+]                                   ; $7a90: $2a
    db $fd                                        ; $7a91: $fd
    halt                                          ; $7a92: $76
    nop                                           ; $7a93: $00
    scf                                           ; $7a94: $37
    ld b, a                                       ; $7a95: $47
    sbc [hl]                                      ; $7a96: $9e
    sub l                                         ; $7a97: $95
    ld a, [de]                                    ; $7a98: $1a
    add e                                         ; $7a99: $83
    sbc e                                         ; $7a9a: $9b
    pop de                                        ; $7a9b: $d1
    ret nc                                        ; $7a9c: $d0

    sub [hl]                                      ; $7a9d: $96
    db $e3                                        ; $7a9e: $e3
    ld [hl-], a                                   ; $7a9f: $32
    ld d, h                                       ; $7aa0: $54
    ld a, c                                       ; $7aa1: $79
    pop af                                        ; $7aa2: $f1
    ld [hl], a                                    ; $7aa3: $77
    ld [$77d1], a                                 ; $7aa4: $ea $d1 $77
    or $31                                        ; $7aa7: $f6 $31
    ld l, d                                       ; $7aa9: $6a
    ld b, h                                       ; $7aaa: $44
    xor a                                         ; $7aab: $af
    db $db                                        ; $7aac: $db
    inc l                                         ; $7aad: $2c
    pop hl                                        ; $7aae: $e1
    ld a, [c]                                     ; $7aaf: $f2
    ret c                                         ; $7ab0: $d8

Jump_06f_7ab1:
    ld c, $37                                     ; $7ab1: $0e $37
    ld b, a                                       ; $7ab3: $47
    sbc [hl]                                      ; $7ab4: $9e
    sub l                                         ; $7ab5: $95
    ld a, [de]                                    ; $7ab6: $1a
    add e                                         ; $7ab7: $83
    sbc e                                         ; $7ab8: $9b
    ld d, c                                       ; $7ab9: $51
    push hl                                       ; $7aba: $e5
    add hl, hl                                    ; $7abb: $29
    ld h, l                                       ; $7abc: $65
    adc a                                         ; $7abd: $8f
    ld a, [hl+]                                   ; $7abe: $2a
    cpl                                           ; $7abf: $2f
    cp $4e                                        ; $7ac0: $fe $4e
    dec a                                         ; $7ac2: $3d
    ld a, [$3ece]                                 ; $7ac3: $fa $ce $3e
    ld b, [hl]                                    ; $7ac6: $46
    adc l                                         ; $7ac7: $8d
    add sp, $75                                   ; $7ac8: $e8 $75
    sbc e                                         ; $7aca: $9b
    dec h                                         ; $7acb: $25
    ld e, h                                       ; $7acc: $5c
    ld e, $db                                     ; $7acd: $1e $db
    ld bc, $4737                                  ; $7acf: $01 $37 $47
    sbc [hl]                                      ; $7ad2: $9e
    sub l                                         ; $7ad3: $95
    ld a, [de]                                    ; $7ad4: $1a
    add e                                         ; $7ad5: $83
    sbc e                                         ; $7ad6: $9b
    pop de                                        ; $7ad7: $d1
    ld c, b                                       ; $7ad8: $48
    sub e                                         ; $7ad9: $93
    ld e, h                                       ; $7ada: $5c
    add [hl]                                      ; $7adb: $86
    ld a, [hl+]                                   ; $7adc: $2a
    cpl                                           ; $7add: $2f
    cp $4e                                        ; $7ade: $fe $4e
    dec a                                         ; $7ae0: $3d
    ld a, [$3ece]                                 ; $7ae1: $fa $ce $3e
    ld b, [hl]                                    ; $7ae4: $46
    adc l                                         ; $7ae5: $8d
    add sp, $75                                   ; $7ae6: $e8 $75
    sbc e                                         ; $7ae8: $9b
    dec h                                         ; $7ae9: $25
    ld e, h                                       ; $7aea: $5c
    ld e, $db                                     ; $7aeb: $1e $db
    ld bc, $4737                                  ; $7aed: $01 $37 $47
    sbc [hl]                                      ; $7af0: $9e
    sub l                                         ; $7af1: $95
    ld a, [de]                                    ; $7af2: $1a
    add e                                         ; $7af3: $83
    sbc e                                         ; $7af4: $9b
    pop de                                        ; $7af5: $d1
    ld b, b                                       ; $7af6: $40
    add d                                         ; $7af7: $82
    ld b, l                                       ; $7af8: $45
    ld d, h                                       ; $7af9: $54
    ld a, c                                       ; $7afa: $79
    pop af                                        ; $7afb: $f1
    ld [hl], a                                    ; $7afc: $77
    ld [$77d1], a                                 ; $7afd: $ea $d1 $77
    or $31                                        ; $7b00: $f6 $31
    ld l, d                                       ; $7b02: $6a
    ld b, h                                       ; $7b03: $44
    xor a                                         ; $7b04: $af
    db $db                                        ; $7b05: $db
    inc l                                         ; $7b06: $2c
    pop hl                                        ; $7b07: $e1
    ld a, [c]                                     ; $7b08: $f2
    ret c                                         ; $7b09: $d8

    ld c, $37                                     ; $7b0a: $0e $37
    ld b, a                                       ; $7b0c: $47
    sbc [hl]                                      ; $7b0d: $9e
    sub l                                         ; $7b0e: $95
    ld a, [de]                                    ; $7b0f: $1a
    add e                                         ; $7b10: $83
    sbc e                                         ; $7b11: $9b
    pop de                                        ; $7b12: $d1
    ld b, b                                       ; $7b13: $40
    ld e, d                                       ; $7b14: $5a
    add hl, sp                                    ; $7b15: $39
    and d                                         ; $7b16: $a2
    jp z, $bf8b                                   ; $7b17: $ca $8b $bf

    ld d, e                                       ; $7b1a: $53
    adc a                                         ; $7b1b: $8f
    cp [hl]                                       ; $7b1c: $be
    or e                                          ; $7b1d: $b3
    adc a                                         ; $7b1e: $8f
    ld d, c                                       ; $7b1f: $51
    inc hl                                        ; $7b20: $23
    ld a, d                                       ; $7b21: $7a
    db $dd                                        ; $7b22: $dd
    ld h, [hl]                                    ; $7b23: $66
    add hl, bc                                    ; $7b24: $09
    sub a                                         ; $7b25: $97
    rst $00                                       ; $7b26: $c7
    halt                                          ; $7b27: $76
    nop                                           ; $7b28: $00
    scf                                           ; $7b29: $37
    ld b, a                                       ; $7b2a: $47
    sbc [hl]                                      ; $7b2b: $9e
    sub l                                         ; $7b2c: $95
    ld a, [de]                                    ; $7b2d: $1a
    add e                                         ; $7b2e: $83
    sbc e                                         ; $7b2f: $9b
    ld d, c                                       ; $7b30: $51
    push hl                                       ; $7b31: $e5
    xor l                                         ; $7b32: $ad
    adc b                                         ; $7b33: $88
    ld a, [hl+]                                   ; $7b34: $2a
    cpl                                           ; $7b35: $2f
    cp $4e                                        ; $7b36: $fe $4e
    dec a                                         ; $7b38: $3d
    ld a, [$3ece]                                 ; $7b39: $fa $ce $3e
    ld b, [hl]                                    ; $7b3c: $46
    adc l                                         ; $7b3d: $8d
    add sp, $75                                   ; $7b3e: $e8 $75
    sbc e                                         ; $7b40: $9b
    dec h                                         ; $7b41: $25
    ld e, h                                       ; $7b42: $5c

Call_06f_7b43:
    ld e, $db                                     ; $7b43: $1e $db
    ld bc, $4737                                  ; $7b45: $01 $37 $47

Call_06f_7b48:
    sbc [hl]                                      ; $7b48: $9e
    sub l                                         ; $7b49: $95
    ld a, [de]                                    ; $7b4a: $1a
    add e                                         ; $7b4b: $83
    ld c, e                                       ; $7b4c: $4b
    rst $10                                       ; $7b4d: $d7
    db $e4                                        ; $7b4e: $e4
    ld d, b                                       ; $7b4f: $50
    rlca                                          ; $7b50: $07
    ld [hl], l                                    ; $7b51: $75
    ld h, e                                       ; $7b52: $63
    add [hl]                                      ; $7b53: $86
    db $ed                                        ; $7b54: $ed
    nop                                           ; $7b55: $00
    scf                                           ; $7b56: $37
    ld b, a                                       ; $7b57: $47
    sbc [hl]                                      ; $7b58: $9e
    sub l                                         ; $7b59: $95
    ld a, [de]                                    ; $7b5a: $1a
    add e                                         ; $7b5b: $83
    ld c, e                                       ; $7b5c: $4b
    rst $10                                       ; $7b5d: $d7
    db $e4                                        ; $7b5e: $e4
    ld d, b                                       ; $7b5f: $50
    rlca                                          ; $7b60: $07
    ld [hl], l                                    ; $7b61: $75
    ld h, e                                       ; $7b62: $63
    add [hl]                                      ; $7b63: $86
    db $ed                                        ; $7b64: $ed
    nop                                           ; $7b65: $00
    scf                                           ; $7b66: $37
    ld b, a                                       ; $7b67: $47
    sbc [hl]                                      ; $7b68: $9e
    sub l                                         ; $7b69: $95
    ld a, [de]                                    ; $7b6a: $1a
    add e                                         ; $7b6b: $83
    ld c, e                                       ; $7b6c: $4b
    rst $10                                       ; $7b6d: $d7
    db $e4                                        ; $7b6e: $e4
    ld d, b                                       ; $7b6f: $50
    rlca                                          ; $7b70: $07
    ld [hl], l                                    ; $7b71: $75
    ld h, e                                       ; $7b72: $63
    add [hl]                                      ; $7b73: $86
    db $ed                                        ; $7b74: $ed
    nop                                           ; $7b75: $00
    scf                                           ; $7b76: $37
    ld b, a                                       ; $7b77: $47
    sbc [hl]                                      ; $7b78: $9e
    sub l                                         ; $7b79: $95
    ld a, [de]                                    ; $7b7a: $1a
    add e                                         ; $7b7b: $83
    ld c, e                                       ; $7b7c: $4b
    rst $10                                       ; $7b7d: $d7
    db $e4                                        ; $7b7e: $e4
    ld d, b                                       ; $7b7f: $50
    rlca                                          ; $7b80: $07
    ld [hl], l                                    ; $7b81: $75
    ld h, e                                       ; $7b82: $63
    add [hl]                                      ; $7b83: $86
    db $ed                                        ; $7b84: $ed
    nop                                           ; $7b85: $00
    scf                                           ; $7b86: $37
    ld b, a                                       ; $7b87: $47
    sbc [hl]                                      ; $7b88: $9e
    sub l                                         ; $7b89: $95
    ld a, [de]                                    ; $7b8a: $1a
    add e                                         ; $7b8b: $83
    ld c, e                                       ; $7b8c: $4b
    rst $10                                       ; $7b8d: $d7
    db $e4                                        ; $7b8e: $e4
    ld d, b                                       ; $7b8f: $50
    rlca                                          ; $7b90: $07
    ld [hl], l                                    ; $7b91: $75
    ld h, e                                       ; $7b92: $63
    add [hl]                                      ; $7b93: $86
    db $ed                                        ; $7b94: $ed
    nop                                           ; $7b95: $00
    scf                                           ; $7b96: $37
    ld b, a                                       ; $7b97: $47
    sbc [hl]                                      ; $7b98: $9e
    sub l                                         ; $7b99: $95
    ld a, [de]                                    ; $7b9a: $1a
    add e                                         ; $7b9b: $83
    ld c, e                                       ; $7b9c: $4b
    rst $10                                       ; $7b9d: $d7
    db $e4                                        ; $7b9e: $e4
    ld d, b                                       ; $7b9f: $50
    rlca                                          ; $7ba0: $07
    ld [hl], l                                    ; $7ba1: $75
    ld h, e                                       ; $7ba2: $63
    add [hl]                                      ; $7ba3: $86
    db $ed                                        ; $7ba4: $ed
    nop                                           ; $7ba5: $00
    scf                                           ; $7ba6: $37
    ld b, a                                       ; $7ba7: $47
    sbc [hl]                                      ; $7ba8: $9e
    sub l                                         ; $7ba9: $95
    ld a, [de]                                    ; $7baa: $1a
    add e                                         ; $7bab: $83
    sbc e                                         ; $7bac: $9b
    and a                                         ; $7bad: $a7
    ld d, h                                       ; $7bae: $54
    ld l, c                                       ; $7baf: $69
    dec hl                                        ; $7bb0: $2b
    sbc $63                                       ; $7bb1: $de $63
    ld l, e                                       ; $7bb3: $6b
    ld [$a1a7], a                                 ; $7bb4: $ea $a7 $a1
    adc l                                         ; $7bb7: $8d
    adc b                                         ; $7bb8: $88
    xor d                                         ; $7bb9: $aa
    ld h, e                                       ; $7bba: $63
    ld a, l                                       ; $7bbb: $7d
    ld h, a                                       ; $7bbc: $67
    ld e, a                                       ; $7bbd: $5f
    pop af                                        ; $7bbe: $f1
    rst $00                                       ; $7bbf: $c7
    dec h                                         ; $7bc0: $25
    ld a, a                                       ; $7bc1: $7f
    ret c                                         ; $7bc2: $d8

    ld c, $37                                     ; $7bc3: $0e $37
    ld b, a                                       ; $7bc5: $47
    sbc [hl]                                      ; $7bc6: $9e
    sub l                                         ; $7bc7: $95
    ld a, [de]                                    ; $7bc8: $1a
    add e                                         ; $7bc9: $83
    ld c, e                                       ; $7bca: $4b
    rst $10                                       ; $7bcb: $d7
    db $e4                                        ; $7bcc: $e4
    ld d, b                                       ; $7bcd: $50
    cp c                                          ; $7bce: $b9
    ld b, e                                       ; $7bcf: $43
    sub l                                         ; $7bd0: $95
    db $fd                                        ; $7bd1: $fd
    db $e3                                        ; $7bd2: $e3
    or $c2                                        ; $7bd3: $f6 $c2
    halt                                          ; $7bd5: $76
    nop                                           ; $7bd6: $00
    scf                                           ; $7bd7: $37
    ld b, a                                       ; $7bd8: $47
    sbc [hl]                                      ; $7bd9: $9e
    sub l                                         ; $7bda: $95
    ld a, [de]                                    ; $7bdb: $1a
    add e                                         ; $7bdc: $83
    ld c, e                                       ; $7bdd: $4b
    rst $10                                       ; $7bde: $d7
    db $e4                                        ; $7bdf: $e4
    ld d, b                                       ; $7be0: $50
    cp c                                          ; $7be1: $b9
    ld b, e                                       ; $7be2: $43
    sub l                                         ; $7be3: $95
    db $fd                                        ; $7be4: $fd
    db $e3                                        ; $7be5: $e3
    or $c2                                        ; $7be6: $f6 $c2
    halt                                          ; $7be8: $76
    nop                                           ; $7be9: $00
    scf                                           ; $7bea: $37
    ld b, a                                       ; $7beb: $47
    sbc [hl]                                      ; $7bec: $9e
    sub l                                         ; $7bed: $95
    ld a, [de]                                    ; $7bee: $1a
    add e                                         ; $7bef: $83
    sbc e                                         ; $7bf0: $9b
    and a                                         ; $7bf1: $a7
    ld d, a                                       ; $7bf2: $57
    add $8c                                       ; $7bf3: $c6 $8c
    ld a, [hl]                                    ; $7bf5: $7e
    xor h                                         ; $7bf6: $ac
    rst $10                                       ; $7bf7: $d7
    ld l, l                                       ; $7bf8: $6d
    sub [hl]                                      ; $7bf9: $96
    ld [hl], b                                    ; $7bfa: $70
    ld sp, hl                                     ; $7bfb: $f9
    reti                                          ; $7bfc: $d9


    ld c, $37                                     ; $7bfd: $0e $37
    ld b, a                                       ; $7bff: $47
    sbc [hl]                                      ; $7c00: $9e
    sub l                                         ; $7c01: $95
    ld a, [de]                                    ; $7c02: $1a
    add e                                         ; $7c03: $83
    sbc e                                         ; $7c04: $9b
    pop de                                        ; $7c05: $d1
    ld [hl], e                                    ; $7c06: $73
    adc l                                         ; $7c07: $8d
    ld c, c                                       ; $7c08: $49
    add h                                         ; $7c09: $84
    db $ed                                        ; $7c0a: $ed
    nop                                           ; $7c0b: $00
    scf                                           ; $7c0c: $37
    ld b, a                                       ; $7c0d: $47
    sbc [hl]                                      ; $7c0e: $9e
    sub l                                         ; $7c0f: $95
    ld a, [de]                                    ; $7c10: $1a
    add e                                         ; $7c11: $83
    sbc e                                         ; $7c12: $9b
    and a                                         ; $7c13: $a7
    ld b, d                                       ; $7c14: $42
    ld h, h                                       ; $7c15: $64
    ld sp, $4d97                                  ; $7c16: $31 $97 $4d
    dec a                                         ; $7c19: $3d
    or h                                          ; $7c1a: $b4
    adc [hl]                                      ; $7c1b: $8e
    ld a, c                                       ; $7c1c: $79
    ld h, l                                       ; $7c1d: $65
    add sp, $76                                   ; $7c1e: $e8 $76
    nop                                           ; $7c20: $00
    scf                                           ; $7c21: $37
    ld b, a                                       ; $7c22: $47
    sbc [hl]                                      ; $7c23: $9e
    sub l                                         ; $7c24: $95
    ld a, [de]                                    ; $7c25: $1a
    add e                                         ; $7c26: $83
    dec hl                                        ; $7c27: $2b
    ld a, [de]                                    ; $7c28: $1a
    ld b, e                                       ; $7c29: $43
    dec a                                         ; $7c2a: $3d
    ld a, e                                       ; $7c2b: $7b
    ld [hl], l                                    ; $7c2c: $75
    ld c, [hl]                                    ; $7c2d: $4e
    ccf                                           ; $7c2e: $3f
    jp nz, Jump_06f_6ea2                          ; $7c2f: $c2 $a2 $6e

    rlca                                          ; $7c32: $07
    scf                                           ; $7c33: $37
    ld b, a                                       ; $7c34: $47
    sbc [hl]                                      ; $7c35: $9e
    sub l                                         ; $7c36: $95
    ld a, [de]                                    ; $7c37: $1a
    add e                                         ; $7c38: $83
    db $eb                                        ; $7c39: $eb
    sbc c                                         ; $7c3a: $99
    and e                                         ; $7c3b: $a3
    ld c, l                                       ; $7c3c: $4d
    dec a                                         ; $7c3d: $3d
    ld a, [hl+]                                   ; $7c3e: $2a
    ld hl, $4644                                  ; $7c3f: $21 $44 $46
    db $fd                                        ; $7c42: $fd
    db $f4                                        ; $7c43: $f4
    ld a, [hl+]                                   ; $7c44: $2a
    ld c, [hl]                                    ; $7c45: $4e
    or [hl]                                       ; $7c46: $b6
    db $fc                                        ; $7c47: $fc
    halt                                          ; $7c48: $76
    nop                                           ; $7c49: $00
    scf                                           ; $7c4a: $37
    ld b, a                                       ; $7c4b: $47
    sbc [hl]                                      ; $7c4c: $9e
    sub l                                         ; $7c4d: $95
    ld a, [de]                                    ; $7c4e: $1a
    add e                                         ; $7c4f: $83
    sbc e                                         ; $7c50: $9b
    and a                                         ; $7c51: $a7
    ld [hl], d                                    ; $7c52: $72
    call z, $c7e8                                 ; $7c53: $cc $e8 $c7
    ld [$a1a7], a                                 ; $7c56: $ea $a7 $a1
    dec l                                         ; $7c59: $2d
    rst $00                                       ; $7c5a: $c7
    ld h, l                                       ; $7c5b: $65
    ld d, e                                       ; $7c5c: $53
    ld h, h                                       ; $7c5d: $64
    rrca                                          ; $7c5e: $0f
    db $db                                        ; $7c5f: $db
    ld c, $37                                     ; $7c60: $0e $37
    ld b, a                                       ; $7c62: $47
    sbc [hl]                                      ; $7c63: $9e
    sub l                                         ; $7c64: $95
    ld a, [de]                                    ; $7c65: $1a
    add e                                         ; $7c66: $83
    sbc e                                         ; $7c67: $9b
    and a                                         ; $7c68: $a7
    ld [hl], d                                    ; $7c69: $72
    call z, $c7e8                                 ; $7c6a: $cc $e8 $c7
    ld [$caa7], a                                 ; $7c6d: $ea $a7 $ca
    ld d, e                                       ; $7c70: $53
    jp z, $8a7e                                   ; $7c71: $ca $7e $8a

    db $ec                                        ; $7c74: $ec
    ld h, c                                       ; $7c75: $61
    db $db                                        ; $7c76: $db
    ld bc, $4737                                  ; $7c77: $01 $37 $47
    sbc [hl]                                      ; $7c7a: $9e
    sub l                                         ; $7c7b: $95
    ld a, [de]                                    ; $7c7c: $1a
    add e                                         ; $7c7d: $83
    sbc e                                         ; $7c7e: $9b
    and a                                         ; $7c7f: $a7
    ld [hl], d                                    ; $7c80: $72
    call z, $c7e8                                 ; $7c81: $cc $e8 $c7
    ld [$91a7], a                                 ; $7c84: $ea $a7 $91
    ld h, $b9                                     ; $7c87: $26 $b9
    ld l, h                                       ; $7c89: $6c
    adc d                                         ; $7c8a: $8a
    db $ec                                        ; $7c8b: $ec
    ld h, c                                       ; $7c8c: $61
    db $db                                        ; $7c8d: $db
    ld bc, $4737                                  ; $7c8e: $01 $37 $47
    sbc [hl]                                      ; $7c91: $9e
    sub l                                         ; $7c92: $95
    ld a, [de]                                    ; $7c93: $1a
    add e                                         ; $7c94: $83
    sbc e                                         ; $7c95: $9b
    and a                                         ; $7c96: $a7
    ld [hl], d                                    ; $7c97: $72
    call z, $c7e8                                 ; $7c98: $cc $e8 $c7
    ld [$81a7], a                                 ; $7c9b: $ea $a7 $81
    inc b                                         ; $7c9e: $04
    adc e                                         ; $7c9f: $8b
    ld d, e                                       ; $7ca0: $53
    ld h, h                                       ; $7ca1: $64
    rrca                                          ; $7ca2: $0f
    db $db                                        ; $7ca3: $db
    ld c, $37                                     ; $7ca4: $0e $37
    ld b, a                                       ; $7ca6: $47
    sbc [hl]                                      ; $7ca7: $9e
    sub l                                         ; $7ca8: $95
    ld a, [de]                                    ; $7ca9: $1a
    add e                                         ; $7caa: $83
    sbc e                                         ; $7cab: $9b
    and a                                         ; $7cac: $a7
    ld [hl], d                                    ; $7cad: $72
    call z, $c7e8                                 ; $7cae: $cc $e8 $c7
    ld [$81a7], a                                 ; $7cb1: $ea $a7 $81
    or h                                          ; $7cb4: $b4
    ld [hl], d                                    ; $7cb5: $72
    sbc h                                         ; $7cb6: $9c
    ld [hl+], a                                   ; $7cb7: $22
    ld a, e                                       ; $7cb8: $7b
    ret c                                         ; $7cb9: $d8

    halt                                          ; $7cba: $76
    nop                                           ; $7cbb: $00
    scf                                           ; $7cbc: $37
    ld b, a                                       ; $7cbd: $47
    sbc [hl]                                      ; $7cbe: $9e
    sub l                                         ; $7cbf: $95
    ld a, [de]                                    ; $7cc0: $1a
    add e                                         ; $7cc1: $83
    sbc e                                         ; $7cc2: $9b
    and a                                         ; $7cc3: $a7
    ld [hl], d                                    ; $7cc4: $72
    call z, $c7e8                                 ; $7cc5: $cc $e8 $c7
    ld [$caa7], a                                 ; $7cc8: $ea $a7 $ca
    ld e, e                                       ; $7ccb: $5b
    ld [hl], c                                    ; $7ccc: $71
    adc d                                         ; $7ccd: $8a
    db $ec                                        ; $7cce: $ec
    ld h, c                                       ; $7ccf: $61
    db $db                                        ; $7cd0: $db
    ld bc, $4737                                  ; $7cd1: $01 $37 $47
    sbc [hl]                                      ; $7cd4: $9e
    sub l                                         ; $7cd5: $95
    ld a, [de]                                    ; $7cd6: $1a
    add e                                         ; $7cd7: $83
    sbc e                                         ; $7cd8: $9b
    and a                                         ; $7cd9: $a7
    ld [hl], d                                    ; $7cda: $72
    call z, $c7e8                                 ; $7cdb: $cc $e8 $c7
    ld [$7aa7], a                                 ; $7cde: $ea $a7 $7a
    ld hl, $372e                                  ; $7ce1: $21 $2e $37
    ld b, l                                       ; $7ce4: $45
    or $b0                                        ; $7ce5: $f6 $b0
    db $ed                                        ; $7ce7: $ed
    nop                                           ; $7ce8: $00
    scf                                           ; $7ce9: $37
    ld b, a                                       ; $7cea: $47
    sbc [hl]                                      ; $7ceb: $9e
    sub l                                         ; $7cec: $95
    ld a, [de]                                    ; $7ced: $1a
    add e                                         ; $7cee: $83
    sbc e                                         ; $7cef: $9b
    pop de                                        ; $7cf0: $d1
    dec hl                                        ; $7cf1: $2b
    call z, $b0d1                                 ; $7cf2: $cc $d1 $b0
    rst $10                                       ; $7cf5: $d7
    or e                                          ; $7cf6: $b3
    ld d, a                                       ; $7cf7: $57
    sub d                                         ; $7cf8: $92
    ld h, c                                       ; $7cf9: $61
    dec sp                                        ; $7cfa: $3b
    nop                                           ; $7cfb: $00
    scf                                           ; $7cfc: $37
    ld b, a                                       ; $7cfd: $47
    sbc [hl]                                      ; $7cfe: $9e
    sub l                                         ; $7cff: $95
    ld a, [de]                                    ; $7d00: $1a
    add e                                         ; $7d01: $83
    sbc e                                         ; $7d02: $9b
    pop de                                        ; $7d03: $d1
    dec hl                                        ; $7d04: $2b
    dec sp                                        ; $7d05: $3b
    ld d, h                                       ; $7d06: $54
    ld e, c                                       ; $7d07: $59
    rst $08                                       ; $7d08: $cf
    ld e, [hl]                                    ; $7d09: $5e
    ld e, l                                       ; $7d0a: $5d
    ld a, [de]                                    ; $7d0b: $1a
    rst $28                                       ; $7d0c: $ef
    or c                                          ; $7d0d: $b1
    add l                                         ; $7d0e: $85
    ld a, d                                       ; $7d0f: $7a
    db $f4                                        ; $7d10: $f4
    ld e, d                                       ; $7d11: $5a
    ldh a, [rBCPD]                                ; $7d12: $f0 $69
    ld c, c                                       ; $7d14: $49
    ld l, h                                       ; $7d15: $6c
    rlca                                          ; $7d16: $07
    scf                                           ; $7d17: $37
    ld b, a                                       ; $7d18: $47
    sbc [hl]                                      ; $7d19: $9e
    sub l                                         ; $7d1a: $95
    ld a, [de]                                    ; $7d1b: $1a
    add e                                         ; $7d1c: $83
    sbc e                                         ; $7d1d: $9b
    pop de                                        ; $7d1e: $d1
    srl e                                         ; $7d1f: $cb $3b
    ld [$57a7], a                                 ; $7d21: $ea $a7 $57
    ld b, a                                       ; $7d24: $47
    jp $b115                                      ; $7d25: $c3 $15 $b1


    ld l, a                                       ; $7d28: $6f
    rlca                                          ; $7d29: $07
    scf                                           ; $7d2a: $37
    ld b, a                                       ; $7d2b: $47
    sbc [hl]                                      ; $7d2c: $9e
    sub l                                         ; $7d2d: $95
    ld a, [de]                                    ; $7d2e: $1a
    add e                                         ; $7d2f: $83
    sbc e                                         ; $7d30: $9b
    pop de                                        ; $7d31: $d1
    or a                                          ; $7d32: $b7
    sub [hl]                                      ; $7d33: $96
    ld [hl], b                                    ; $7d34: $70
    ld e, a                                       ; $7d35: $5f
    inc de                                        ; $7d36: $13
    add hl, hl                                    ; $7d37: $29
    or c                                          ; $7d38: $b1
    dec e                                         ; $7d39: $1d
    scf                                           ; $7d3a: $37
    ld b, a                                       ; $7d3b: $47
    sbc [hl]                                      ; $7d3c: $9e
    sub l                                         ; $7d3d: $95
    ld a, [de]                                    ; $7d3e: $1a
    add e                                         ; $7d3f: $83
    sbc e                                         ; $7d40: $9b
    pop de                                        ; $7d41: $d1
    or a                                          ; $7d42: $b7
    sub [hl]                                      ; $7d43: $96
    ld [hl], b                                    ; $7d44: $70
    ld e, a                                       ; $7d45: $5f
    inc de                                        ; $7d46: $13
    add hl, hl                                    ; $7d47: $29
    or c                                          ; $7d48: $b1
    dec e                                         ; $7d49: $1d
    scf                                           ; $7d4a: $37
    ld b, a                                       ; $7d4b: $47
    sbc [hl]                                      ; $7d4c: $9e
    sub l                                         ; $7d4d: $95
    ld a, [de]                                    ; $7d4e: $1a
    add e                                         ; $7d4f: $83
    sbc e                                         ; $7d50: $9b
    and a                                         ; $7d51: $a7
    ld d, h                                       ; $7d52: $54
    ld l, c                                       ; $7d53: $69
    dec hl                                        ; $7d54: $2b
    sbc $63                                       ; $7d55: $de $63
    ld l, e                                       ; $7d57: $6b
    ld [$d0d1], a                                 ; $7d58: $ea $d1 $d0
    ld b, [hl]                                    ; $7d5b: $46
    ld b, h                                       ; $7d5c: $44
    push de                                       ; $7d5d: $d5
    ld sp, $9af4                                  ; $7d5e: $31 $f4 $9a
    ld a, h                                       ; $7d61: $7c
    ld [hl], a                                    ; $7d62: $77
    ld [hl-], a                                   ; $7d63: $32
    ld c, [hl]                                    ; $7d64: $4e
    ret c                                         ; $7d65: $d8

    rst $30                                       ; $7d66: $f7
    db $ed                                        ; $7d67: $ed
    nop                                           ; $7d68: $00
    scf                                           ; $7d69: $37
    ld b, a                                       ; $7d6a: $47
    sbc [hl]                                      ; $7d6b: $9e
    sub l                                         ; $7d6c: $95
    ld a, [de]                                    ; $7d6d: $1a
    add e                                         ; $7d6e: $83
    sbc e                                         ; $7d6f: $9b
    ld d, c                                       ; $7d70: $51
    cp c                                          ; $7d71: $b9
    ld b, e                                       ; $7d72: $43
    sub l                                         ; $7d73: $95
    push af                                       ; $7d74: $f5
    db $ec                                        ; $7d75: $ec
    cp c                                          ; $7d76: $b9
    add $e4                                       ; $7d77: $c6 $e4
    ld b, a                                       ; $7d79: $47
    db $eb                                        ; $7d7a: $eb
    ld b, a                                       ; $7d7b: $47
    ei                                            ; $7d7c: $fb
    sbc c                                         ; $7d7d: $99
    ld c, l                                       ; $7d7e: $4d
    cp d                                          ; $7d7f: $ba
    dec b                                         ; $7d80: $05
    db $dd                                        ; $7d81: $dd
    ld c, $37                                     ; $7d82: $0e $37
    ld b, a                                       ; $7d84: $47
    sbc [hl]                                      ; $7d85: $9e
    sub l                                         ; $7d86: $95
    ld a, [de]                                    ; $7d87: $1a
    add e                                         ; $7d88: $83
    sbc e                                         ; $7d89: $9b
    and a                                         ; $7d8a: $a7
    ld d, h                                       ; $7d8b: $54
    ld l, c                                       ; $7d8c: $69
    dec hl                                        ; $7d8d: $2b
    sbc $63                                       ; $7d8e: $de $63
    ld l, e                                       ; $7d90: $6b
    ld [$6bd1], a                                 ; $7d91: $ea $d1 $6b
    ldh a, [rSVBK]                                ; $7d94: $f0 $70
    db $ec                                        ; $7d96: $ec
    push af                                       ; $7d97: $f5
    ld [hl], c                                    ; $7d98: $71
    ld [hl+], a                                   ; $7d99: $22
    db $e3                                        ; $7d9a: $e3
    ld c, a                                       ; $7d9b: $4f
    db $db                                        ; $7d9c: $db
    ld bc, $4737                                  ; $7d9d: $01 $37 $47

Call_06f_7da0:
    sbc [hl]                                      ; $7da0: $9e
    sub l                                         ; $7da1: $95
    ld a, [de]                                    ; $7da2: $1a
    add e                                         ; $7da3: $83
    sbc e                                         ; $7da4: $9b
    ld d, c                                       ; $7da5: $51
    cp c                                          ; $7da6: $b9
    ld b, e                                       ; $7da7: $43
    sub l                                         ; $7da8: $95
    push af                                       ; $7da9: $f5
    db $ec                                        ; $7daa: $ec
    push af                                       ; $7dab: $f5
    cp c                                          ; $7dac: $b9
    ld a, b                                       ; $7dad: $78
    cpl                                           ; $7dae: $2f
    ld [hl], l                                    ; $7daf: $75
    dec sp                                        ; $7db0: $3b
    nop                                           ; $7db1: $00
    scf                                           ; $7db2: $37
    ld b, a                                       ; $7db3: $47
    sbc [hl]                                      ; $7db4: $9e
    sub l                                         ; $7db5: $95
    ld a, [de]                                    ; $7db6: $1a
    add e                                         ; $7db7: $83
    sbc e                                         ; $7db8: $9b
    and a                                         ; $7db9: $a7
    ld d, h                                       ; $7dba: $54
    ld l, c                                       ; $7dbb: $69
    dec hl                                        ; $7dbc: $2b
    sbc $63                                       ; $7dbd: $de $63
    ld l, e                                       ; $7dbf: $6b
    ld [$a1a7], a                                 ; $7dc0: $ea $a7 $a1
    adc l                                         ; $7dc3: $8d
    adc b                                         ; $7dc4: $88
    xor d                                         ; $7dc5: $aa
    ld h, e                                       ; $7dc6: $63
    db $fd                                        ; $7dc7: $fd
    inc h                                         ; $7dc8: $24
    dec l                                         ; $7dc9: $2d
    inc sp                                        ; $7dca: $33
    xor $db                                       ; $7dcb: $ee $db
    ld bc, $4737                                  ; $7dcd: $01 $37 $47
    sbc [hl]                                      ; $7dd0: $9e
    sub l                                         ; $7dd1: $95
    ld a, [de]                                    ; $7dd2: $1a
    add e                                         ; $7dd3: $83
    sbc e                                         ; $7dd4: $9b
    and a                                         ; $7dd5: $a7
    ld d, h                                       ; $7dd6: $54
    ld l, c                                       ; $7dd7: $69
    dec hl                                        ; $7dd8: $2b
    sbc $63                                       ; $7dd9: $de $63
    ld l, e                                       ; $7ddb: $6b
    ld [$a1a7], a                                 ; $7ddc: $ea $a7 $a1
    adc l                                         ; $7ddf: $8d
    adc b                                         ; $7de0: $88
    xor d                                         ; $7de1: $aa
    ld h, e                                       ; $7de2: $63
    cp l                                          ; $7de3: $bd
    sub c                                         ; $7de4: $91
    ld de, $3b72                                  ; $7de5: $11 $72 $3b
    nop                                           ; $7de8: $00
    scf                                           ; $7de9: $37
    ld b, a                                       ; $7dea: $47
    sbc [hl]                                      ; $7deb: $9e
    sub l                                         ; $7dec: $95
    ld a, [de]                                    ; $7ded: $1a
    add e                                         ; $7dee: $83
    sbc e                                         ; $7def: $9b
    and a                                         ; $7df0: $a7
    ld d, h                                       ; $7df1: $54
    ld l, c                                       ; $7df2: $69
    dec hl                                        ; $7df3: $2b
    sbc $63                                       ; $7df4: $de $63
    ld l, e                                       ; $7df6: $6b
    ld [$d0d1], a                                 ; $7df7: $ea $d1 $d0
    ld b, [hl]                                    ; $7dfa: $46
    ld b, h                                       ; $7dfb: $44
    push de                                       ; $7dfc: $d5
    ld sp, $46f4                                  ; $7dfd: $31 $f4 $46
    ld l, b                                       ; $7e00: $68
    sub e                                         ; $7e01: $93
    ld [c], a                                     ; $7e02: $e2
    halt                                          ; $7e03: $76
    nop                                           ; $7e04: $00
    scf                                           ; $7e05: $37
    ld b, a                                       ; $7e06: $47
    sbc [hl]                                      ; $7e07: $9e
    sub l                                         ; $7e08: $95
    ld a, [de]                                    ; $7e09: $1a
    add e                                         ; $7e0a: $83
    sbc e                                         ; $7e0b: $9b
    and a                                         ; $7e0c: $a7
    sbc [hl]                                      ; $7e0d: $9e
    pop hl                                        ; $7e0e: $e1
    dec a                                         ; $7e0f: $3d
    cp d                                          ; $7e10: $ba
    ld [c], a                                     ; $7e11: $e2
    ld l, h                                       ; $7e12: $6c
    rlca                                          ; $7e13: $07
    scf                                           ; $7e14: $37
    ld b, a                                       ; $7e15: $47
    sbc [hl]                                      ; $7e16: $9e
    sub l                                         ; $7e17: $95
    ld a, [de]                                    ; $7e18: $1a
    add e                                         ; $7e19: $83
    sbc e                                         ; $7e1a: $9b
    ld d, c                                       ; $7e1b: $51
    cp c                                          ; $7e1c: $b9
    ld b, e                                       ; $7e1d: $43

Jump_06f_7e1e:
    sub l                                         ; $7e1e: $95
    push af                                       ; $7e1f: $f5
    db $ec                                        ; $7e20: $ec
    ld h, a                                       ; $7e21: $67
    add [hl]                                      ; $7e22: $86
    xor h                                         ; $7e23: $ac
    and d                                         ; $7e24: $a2
    ld [hl], l                                    ; $7e25: $75
    ld c, d                                       ; $7e26: $4a
    add [hl]                                      ; $7e27: $86
    adc e                                         ; $7e28: $8b
    cp a                                          ; $7e29: $bf
    or e                                          ; $7e2a: $b3
    dec e                                         ; $7e2b: $1d
    scf                                           ; $7e2c: $37
    ld b, a                                       ; $7e2d: $47
    sbc [hl]                                      ; $7e2e: $9e
    sub l                                         ; $7e2f: $95
    ld a, [de]                                    ; $7e30: $1a
    add e                                         ; $7e31: $83
    sbc e                                         ; $7e32: $9b
    pop de                                        ; $7e33: $d1
    dec de                                        ; $7e34: $1b
    ret c                                         ; $7e35: $d8

    ld d, c                                       ; $7e36: $51
    rst $08                                       ; $7e37: $cf
    ld a, [hl]                                    ; $7e38: $7e
    ld h, [hl]                                    ; $7e39: $66
    inc hl                                        ; $7e3a: $23
    cp d                                          ; $7e3b: $ba
    sub b                                         ; $7e3c: $90
    ld [hl], h                                    ; $7e3d: $74
    dec sp                                        ; $7e3e: $3b
    nop                                           ; $7e3f: $00
    scf                                           ; $7e40: $37
    ld b, a                                       ; $7e41: $47
    sbc [hl]                                      ; $7e42: $9e
    sub l                                         ; $7e43: $95
    ld a, [de]                                    ; $7e44: $1a
    add e                                         ; $7e45: $83
    sbc e                                         ; $7e46: $9b
    and c                                         ; $7e47: $a1
    ld [hl], l                                    ; $7e48: $75
    ld d, b                                       ; $7e49: $50
    scf                                           ; $7e4a: $37
    ld h, [hl]                                    ; $7e4b: $66
    ret nc                                        ; $7e4c: $d0

    jp nc, $b109                                  ; $7e4d: $d2 $09 $b1

    ld l, [hl]                                    ; $7e50: $6e
    ld c, l                                       ; $7e51: $4d
    dec a                                         ; $7e52: $3d
    ei                                            ; $7e53: $fb
    xor [hl]                                      ; $7e54: $ae
    xor l                                         ; $7e55: $ad
    ld a, h                                       ; $7e56: $7c
    sbc d                                         ; $7e57: $9a
    ld c, b                                       ; $7e58: $48
    db $dd                                        ; $7e59: $dd
    ld c, $37                                     ; $7e5a: $0e $37
    ld b, a                                       ; $7e5c: $47
    sbc [hl]                                      ; $7e5d: $9e
    sub l                                         ; $7e5e: $95
    ld a, [de]                                    ; $7e5f: $1a
    add e                                         ; $7e60: $83
    sbc e                                         ; $7e61: $9b
    pop de                                        ; $7e62: $d1
    db $eb                                        ; $7e63: $eb
    dec sp                                        ; $7e64: $3b
    ld [hl+], a                                   ; $7e65: $22
    ld b, h                                       ; $7e66: $44
    ld h, e                                       ; $7e67: $63
    ld c, $fd                                     ; $7e68: $0e $fd
    ld l, b                                       ; $7e6a: $68
    cp $2c                                        ; $7e6b: $fe $2c
    ld a, e                                       ; $7e6d: $7b
    adc l                                         ; $7e6e: $8d
    dec bc                                        ; $7e6f: $0b
    db $db                                        ; $7e70: $db
    ld bc, $4737                                  ; $7e71: $01 $37 $47
    sbc [hl]                                      ; $7e74: $9e
    sub l                                         ; $7e75: $95
    ld a, [de]                                    ; $7e76: $1a
    add e                                         ; $7e77: $83
    sbc e                                         ; $7e78: $9b
    ld d, c                                       ; $7e79: $51
    rlca                                          ; $7e7a: $07
    dec sp                                        ; $7e7b: $3b
    pop de                                        ; $7e7c: $d1
    push de                                       ; $7e7d: $d5
    ld c, a                                       ; $7e7e: $4f
    ccf                                           ; $7e7f: $3f
    call nz, $b669                                ; $7e80: $c4 $69 $b6
    inc bc                                        ; $7e83: $03
    scf                                           ; $7e84: $37
    ld b, a                                       ; $7e85: $47
    sbc [hl]                                      ; $7e86: $9e
    sub l                                         ; $7e87: $95
    ld a, [de]                                    ; $7e88: $1a
    add e                                         ; $7e89: $83
    sbc e                                         ; $7e8a: $9b
    and a                                         ; $7e8b: $a7
    scf                                           ; $7e8c: $37
    ld [hl], b                                    ; $7e8d: $70
    ld c, d                                       ; $7e8e: $4a
    cp a                                          ; $7e8f: $bf
    ld d, e                                       ; $7e90: $53
    rst $08                                       ; $7e91: $cf
    sbc [hl]                                      ; $7e92: $9e
    rst $20                                       ; $7e93: $e7
    ld l, b                                       ; $7e94: $68
    ldh a, [$a8]                                  ; $7e95: $f0 $a8
    ld h, a                                       ; $7e97: $67
    xor a                                         ; $7e98: $af
    adc $e9                                       ; $7e99: $ce $e9
    ld b, a                                       ; $7e9b: $47
    ld e, b                                       ; $7e9c: $58

Jump_06f_7e9d:
    call nc, Call_000_00ed                        ; $7e9d: $d4 $ed $00
    scf                                           ; $7ea0: $37
    ld b, a                                       ; $7ea1: $47
    sbc [hl]                                      ; $7ea2: $9e
    sub l                                         ; $7ea3: $95
    ld a, [de]                                    ; $7ea4: $1a
    add e                                         ; $7ea5: $83
    sbc e                                         ; $7ea6: $9b
    and a                                         ; $7ea7: $a7
    ld l, a                                       ; $7ea8: $6f
    adc a                                         ; $7ea9: $8f
    cp c                                          ; $7eaa: $b9
    dec d                                         ; $7eab: $15
    rst $28                                       ; $7eac: $ef
    or c                                          ; $7ead: $b1
    dec [hl]                                      ; $7eae: $35
    cp l                                          ; $7eaf: $bd
    ld b, $95                                     ; $7eb0: $06 $95
    ld l, c                                       ; $7eb2: $69
    ld e, a                                       ; $7eb3: $5f
    ld a, c                                       ; $7eb4: $79
    ld [$77d1], a                                 ; $7eb5: $ea $d1 $77
    ld l, l                                       ; $7eb8: $6d
    adc c                                         ; $7eb9: $89
    ld d, [hl]                                    ; $7eba: $56
    cp [hl]                                       ; $7ebb: $be
    rst $00                                       ; $7ebc: $c7
    ld d, $b6                                     ; $7ebd: $16 $b6
    inc bc                                        ; $7ebf: $03
    scf                                           ; $7ec0: $37
    ld b, a                                       ; $7ec1: $47
    sbc [hl]                                      ; $7ec2: $9e
    sub l                                         ; $7ec3: $95
    ld a, [de]                                    ; $7ec4: $1a
    add e                                         ; $7ec5: $83
    sbc e                                         ; $7ec6: $9b
    pop de                                        ; $7ec7: $d1
    dec de                                        ; $7ec8: $1b
    ret c                                         ; $7ec9: $d8

    pop de                                        ; $7eca: $d1
    dec hl                                        ; $7ecb: $2b
    db $e3                                        ; $7ecc: $e3
    ld d, d                                       ; $7ecd: $52
    add $5e                                       ; $7ece: $c6 $5e
    adc a                                         ; $7ed0: $8f
    cp [hl]                                       ; $7ed1: $be
    ld l, e                                       ; $7ed2: $6b
    ld c, e                                       ; $7ed3: $4b
    or h                                          ; $7ed4: $b4
    ld a, [c]                                     ; $7ed5: $f2
    dec a                                         ; $7ed6: $3d
    or [hl]                                       ; $7ed7: $b6
    or b                                          ; $7ed8: $b0
    dec e                                         ; $7ed9: $1d
    scf                                           ; $7eda: $37
    ld b, a                                       ; $7edb: $47
    sbc [hl]                                      ; $7edc: $9e
    sub l                                         ; $7edd: $95
    ld a, [de]                                    ; $7ede: $1a
    add e                                         ; $7edf: $83
    ld c, e                                       ; $7ee0: $4b
    rst $10                                       ; $7ee1: $d7
    db $e4                                        ; $7ee2: $e4
    ld a, [bc]                                    ; $7ee3: $0a
    ld [hl], e                                    ; $7ee4: $73
    pop bc                                        ; $7ee5: $c1
    or [hl]                                       ; $7ee6: $b6
    and [hl]                                      ; $7ee7: $a6
    sbc [hl]                                      ; $7ee8: $9e
    db $fd                                        ; $7ee9: $fd
    ld b, e                                       ; $7eea: $43
    ld [hl], l                                    ; $7eeb: $75
    sub d                                         ; $7eec: $92
    ld b, c                                       ; $7eed: $41
    or a                                          ; $7eee: $b7
    inc bc                                        ; $7eef: $03
    scf                                           ; $7ef0: $37
    ld b, a                                       ; $7ef1: $47
    sbc [hl]                                      ; $7ef2: $9e
    sub l                                         ; $7ef3: $95
    ld a, [de]                                    ; $7ef4: $1a
    add e                                         ; $7ef5: $83
    sbc e                                         ; $7ef6: $9b
    and a                                         ; $7ef7: $a7
    ld d, h                                       ; $7ef8: $54
    ld l, c                                       ; $7ef9: $69
    dec hl                                        ; $7efa: $2b
    sbc $63                                       ; $7efb: $de $63
    ld l, e                                       ; $7efd: $6b
    ld [$efa7], a                                 ; $7efe: $ea $a7 $ef
    xor h                                         ; $7f01: $ac
    ld e, l                                       ; $7f02: $5d
    adc d                                         ; $7f03: $8a
    or a                                          ; $7f04: $b7
    inc bc                                        ; $7f05: $03
    scf                                           ; $7f06: $37
    ld b, a                                       ; $7f07: $47
    sbc [hl]                                      ; $7f08: $9e
    sub l                                         ; $7f09: $95
    ld a, [de]                                    ; $7f0a: $1a
    add e                                         ; $7f0b: $83
    sbc e                                         ; $7f0c: $9b
    and a                                         ; $7f0d: $a7
    rst $28                                       ; $7f0e: $ef
    ld a, [de]                                    ; $7f0f: $1a
    or d                                          ; $7f10: $b2
    ld h, a                                       ; $7f11: $67
    ld l, a                                       ; $7f12: $6f
    ld h, b                                       ; $7f13: $60
    rst $38                                       ; $7f14: $ff
    sbc l                                         ; $7f15: $9d
    db $ed                                        ; $7f16: $ed

Call_06f_7f17:
    nop                                           ; $7f17: $00
    scf                                           ; $7f18: $37
    ld b, a                                       ; $7f19: $47
    sbc [hl]                                      ; $7f1a: $9e
    sub l                                         ; $7f1b: $95
    ld a, [de]                                    ; $7f1c: $1a
    add e                                         ; $7f1d: $83
    sbc e                                         ; $7f1e: $9b
    pop de                                        ; $7f1f: $d1
    dec de                                        ; $7f20: $1b
    ret c                                         ; $7f21: $d8

    ld d, c                                       ; $7f22: $51
    ccf                                           ; $7f23: $3f
    jp c, Jump_000_36eb                           ; $7f24: $da $eb $36

    ld [hl+], a                                   ; $7f27: $22
    xor d                                         ; $7f28: $aa
    adc [hl]                                      ; $7f29: $8e
    ld d, c                                       ; $7f2a: $51
    or a                                          ; $7f2b: $b7
    inc bc                                        ; $7f2c: $03
    scf                                           ; $7f2d: $37
    ld b, a                                       ; $7f2e: $47
    sbc [hl]                                      ; $7f2f: $9e
    sub l                                         ; $7f30: $95
    ld a, [de]                                    ; $7f31: $1a
    add e                                         ; $7f32: $83
    sbc e                                         ; $7f33: $9b
    pop de                                        ; $7f34: $d1
    dec de                                        ; $7f35: $1b
    ret c                                         ; $7f36: $d8

    ld d, c                                       ; $7f37: $51
    ccf                                           ; $7f38: $3f
    jp c, Jump_000_194f                           ; $7f39: $da $4f $19

    dec c                                         ; $7f3c: $0d
    ld [hl], c                                    ; $7f3d: $71
    ld [hl], h                                    ; $7f3e: $74
    dec sp                                        ; $7f3f: $3b
    nop                                           ; $7f40: $00
    scf                                           ; $7f41: $37
    ld b, a                                       ; $7f42: $47
    sbc [hl]                                      ; $7f43: $9e
    sub l                                         ; $7f44: $95
    ld a, [de]                                    ; $7f45: $1a
    add e                                         ; $7f46: $83
    sbc e                                         ; $7f47: $9b
    and c                                         ; $7f48: $a1
    cp l                                          ; $7f49: $bd
    ld b, $75                                     ; $7f4a: $06 $75
    ld h, e                                       ; $7f4c: $63
    ld b, $dd                                     ; $7f4d: $06 $dd
    ld c, $37                                     ; $7f4f: $0e $37
    ld b, a                                       ; $7f51: $47
    sbc [hl]                                      ; $7f52: $9e
    sub l                                         ; $7f53: $95
    ld a, [de]                                    ; $7f54: $1a
    add e                                         ; $7f55: $83
    sbc e                                         ; $7f56: $9b
    ld d, c                                       ; $7f57: $51
    push bc                                       ; $7f58: $c5
    adc [hl]                                      ; $7f59: $8e
    ld a, d                                       ; $7f5a: $7a
    sub $2d                                       ; $7f5b: $d6 $2d
    adc l                                         ; $7f5d: $8d
    ret                                           ; $7f5e: $c9


    ld d, b                                       ; $7f5f: $50
    rst $08                                       ; $7f60: $cf
    add [hl]                                      ; $7f61: $86
    ld [hl], e                                    ; $7f62: $73
    pop af                                        ; $7f63: $f1
    ld e, [hl]                                    ; $7f64: $5e
    ld [$0076], a                                 ; $7f65: $ea $76 $00
    scf                                           ; $7f68: $37
    ld b, a                                       ; $7f69: $47
    sbc [hl]                                      ; $7f6a: $9e
    sub l                                         ; $7f6b: $95
    ld a, [de]                                    ; $7f6c: $1a
    add e                                         ; $7f6d: $83
    sbc e                                         ; $7f6e: $9b
    and a                                         ; $7f6f: $a7
    ld [hl], d                                    ; $7f70: $72
    ld b, h                                       ; $7f71: $44
    add $fa                                       ; $7f72: $c6 $fa
    jp hl                                         ; $7f74: $e9


    ld d, l                                       ; $7f75: $55
    sbc b                                         ; $7f76: $98
    db $fd                                        ; $7f77: $fd
    or h                                          ; $7f78: $b4
    dec e                                         ; $7f79: $1d
    scf                                           ; $7f7a: $37
    ld b, a                                       ; $7f7b: $47
    sbc [hl]                                      ; $7f7c: $9e
    sub l                                         ; $7f7d: $95
    ld a, [de]                                    ; $7f7e: $1a
    add e                                         ; $7f7f: $83
    sbc e                                         ; $7f80: $9b
    and a                                         ; $7f81: $a7
    ld [hl], d                                    ; $7f82: $72
    call z, $c7e8                                 ; $7f83: $cc $e8 $c7
    ld [$cbd9], a                                 ; $7f86: $ea $d9 $cb
    ld a, [de]                                    ; $7f89: $1a
    ld l, l                                       ; $7f8a: $6d
    ld a, [c]                                     ; $7f8b: $f2
    cp b                                          ; $7f8c: $b8
    add l                                         ; $7f8d: $85
    db $ed                                        ; $7f8e: $ed
    nop                                           ; $7f8f: $00
    scf                                           ; $7f90: $37
    ld b, a                                       ; $7f91: $47
    sbc [hl]                                      ; $7f92: $9e
    sub l                                         ; $7f93: $95
    ld a, [de]                                    ; $7f94: $1a
    add e                                         ; $7f95: $83
    dec hl                                        ; $7f96: $2b
    ld a, [de]                                    ; $7f97: $1a
    ld b, e                                       ; $7f98: $43
    dec a                                         ; $7f99: $3d
    ld a, e                                       ; $7f9a: $7b
    ld [hl], l                                    ; $7f9b: $75
    ld c, [hl]                                    ; $7f9c: $4e
    ccf                                           ; $7f9d: $3f
    jp nz, Jump_06f_6ea2                          ; $7f9e: $c2 $a2 $6e

    rlca                                          ; $7fa1: $07
    scf                                           ; $7fa2: $37
    ld b, a                                       ; $7fa3: $47
    sbc [hl]                                      ; $7fa4: $9e
    sub l                                         ; $7fa5: $95
    ld a, [de]                                    ; $7fa6: $1a
    add e                                         ; $7fa7: $83
    dec hl                                        ; $7fa8: $2b
    ld a, [de]                                    ; $7fa9: $1a
    ld b, e                                       ; $7faa: $43
    dec a                                         ; $7fab: $3d
    ld a, e                                       ; $7fac: $7b
    ld [hl], l                                    ; $7fad: $75
    ld c, [hl]                                    ; $7fae: $4e
    ccf                                           ; $7faf: $3f
    jp nz, Jump_06f_6ea2                          ; $7fb0: $c2 $a2 $6e

Call_06f_7fb3:
    rlca                                          ; $7fb3: $07
    scf                                           ; $7fb4: $37
    ld b, a                                       ; $7fb5: $47
    sbc [hl]                                      ; $7fb6: $9e
    sub l                                         ; $7fb7: $95
    ld a, [de]                                    ; $7fb8: $1a
    add e                                         ; $7fb9: $83
    dec hl                                        ; $7fba: $2b
    ld a, [de]                                    ; $7fbb: $1a
    ld b, e                                       ; $7fbc: $43
    dec a                                         ; $7fbd: $3d
    ld a, e                                       ; $7fbe: $7b
    ld [hl], l                                    ; $7fbf: $75
    ld c, [hl]                                    ; $7fc0: $4e
    ccf                                           ; $7fc1: $3f
    jp nz, Jump_06f_6ea2                          ; $7fc2: $c2 $a2 $6e

    rlca                                          ; $7fc5: $07
    scf                                           ; $7fc6: $37
    ld b, a                                       ; $7fc7: $47
    sbc [hl]                                      ; $7fc8: $9e
    sub l                                         ; $7fc9: $95
    ld a, [de]                                    ; $7fca: $1a
    add e                                         ; $7fcb: $83
    dec hl                                        ; $7fcc: $2b
    ld a, [de]                                    ; $7fcd: $1a
    ld b, e                                       ; $7fce: $43
    dec a                                         ; $7fcf: $3d
    ld a, [hl+]                                   ; $7fd0: $2a
    ld hl, $4644                                  ; $7fd1: $21 $44 $46
    db $fd                                        ; $7fd4: $fd
    db $f4                                        ; $7fd5: $f4
    ld a, [hl+]                                   ; $7fd6: $2a
    ld c, [hl]                                    ; $7fd7: $4e
    or [hl]                                       ; $7fd8: $b6
    db $fc                                        ; $7fd9: $fc
    halt                                          ; $7fda: $76
    nop                                           ; $7fdb: $00
    scf                                           ; $7fdc: $37
    ld b, a                                       ; $7fdd: $47
    sbc [hl]                                      ; $7fde: $9e
    sub l                                         ; $7fdf: $95
    ld a, [de]                                    ; $7fe0: $1a
    add e                                         ; $7fe1: $83
    sbc e                                         ; $7fe2: $9b
    ld d, c                                       ; $7fe3: $51
    push bc                                       ; $7fe4: $c5
    adc [hl]                                      ; $7fe5: $8e
    ld a, [$95e9]                                 ; $7fe6: $fa $e9 $95
    dec a                                         ; $7fe9: $3d
    add hl, bc                                    ; $7fea: $09
    ld e, c                                       ; $7feb: $59
    rst $08                                       ; $7fec: $cf
    ld a, [hl]                                    ; $7fed: $7e
    ld h, [hl]                                    ; $7fee: $66
    inc hl                                        ; $7fef: $23
    ld d, c                                       ; $7ff0: $51
    rst $08                                       ; $7ff1: $cf
    ld e, [hl]                                    ; $7ff2: $5e
    add c                                         ; $7ff3: $81
    ld b, l                                       ; $7ff4: $45
    add sp, $76                                   ; $7ff5: $e8 $76
    nop                                           ; $7ff7: $00
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
