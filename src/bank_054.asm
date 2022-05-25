; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $054", ROMX[$4000], BANK[$54]

    ld d, h                                       ; $4000: $54
    or a                                          ; $4001: $b7
    call nc, $9d1b                                ; $4002: $d4 $1b $9d
    ld l, e                                       ; $4005: $6b
    ld [hl], a                                    ; $4006: $77
    cp a                                          ; $4007: $bf
    ld b, [hl]                                    ; $4008: $46
    ccf                                           ; $4009: $3f
    add hl, bc                                    ; $400a: $09
    ld a, e                                       ; $400b: $7b
    cp h                                          ; $400c: $bc
    rra                                           ; $400d: $1f
    and e                                         ; $400e: $a3
    rst $10                                       ; $400f: $d7
    ld [hl], c                                    ; $4010: $71
    ld e, b                                       ; $4011: $58
    ld a, [c]                                     ; $4012: $f2
    ld l, d                                       ; $4013: $6a
    add h                                         ; $4014: $84
    dec hl                                        ; $4015: $2b
    push af                                       ; $4016: $f5
    cp d                                          ; $4017: $ba
    db $eb                                        ; $4018: $eb
    rst $00                                       ; $4019: $c7
    jr c, jr_054_4081                             ; $401a: $38 $65

    ld de, $c80f                                  ; $401c: $11 $0f $c8
    rrca                                          ; $401f: $0f
    pop bc                                        ; $4020: $c1
    ld [bc], a                                    ; $4021: $02
    add $4d                                       ; $4022: $c6 $4d
    ld e, l                                       ; $4024: $5d
    add d                                         ; $4025: $82
    ld a, a                                       ; $4026: $7f
    inc a                                         ; $4027: $3c
    xor h                                         ; $4028: $ac
    sub a                                         ; $4029: $97
    ld b, l                                       ; $402a: $45
    cp e                                          ; $402b: $bb
    ld b, e                                       ; $402c: $43
    dec l                                         ; $402d: $2d
    ld d, b                                       ; $402e: $50
    or l                                          ; $402f: $b5
    inc h                                         ; $4030: $24
    adc e                                         ; $4031: $8b
    ld h, d                                       ; $4032: $62
    adc e                                         ; $4033: $8b
    sub a                                         ; $4034: $97
    inc de                                        ; $4035: $13
    rla                                           ; $4036: $17
    ld b, h                                       ; $4037: $44
    add hl, hl                                    ; $4038: $29
    sub h                                         ; $4039: $94
    ret z                                         ; $403a: $c8

    ld c, [hl]                                    ; $403b: $4e
    ld a, h                                       ; $403c: $7c
    ld l, l                                       ; $403d: $6d
    jp hl                                         ; $403e: $e9


    xor [hl]                                      ; $403f: $ae
    sub $5c                                       ; $4040: $d6 $5c
    ld c, e                                       ; $4042: $4b
    sbc e                                         ; $4043: $9b
    ld a, b                                       ; $4044: $78
    and d                                         ; $4045: $a2
    sbc d                                         ; $4046: $9a
    ld c, a                                       ; $4047: $4f
    ld l, d                                       ; $4048: $6a

jr_054_4049:
    inc b                                         ; $4049: $04
    or a                                          ; $404a: $b7
    ld a, a                                       ; $404b: $7f
    pop hl                                        ; $404c: $e1
    dec [hl]                                      ; $404d: $35
    daa                                           ; $404e: $27
    ld l, $d6                                     ; $404f: $2e $d6
    xor [hl]                                      ; $4051: $ae
    rst $20                                       ; $4052: $e7
    ld d, l                                       ; $4053: $55
    ld l, c                                       ; $4054: $69
    jr nz, jr_054_4059                            ; $4055: $20 $02

    add b                                         ; $4057: $80
    ld [hl], e                                    ; $4058: $73

jr_054_4059:
    ld d, e                                       ; $4059: $53
    daa                                           ; $405a: $27
    ld h, e                                       ; $405b: $63
    ld e, $ff                                     ; $405c: $1e $ff
    or [hl]                                       ; $405e: $b6
    jp $e114                                      ; $405f: $c3 $14 $e1


    ccf                                           ; $4062: $3f
    ld a, [hl-]                                   ; $4063: $3a
    rst $10                                       ; $4064: $d7
    jp c, Jump_054_5e67                           ; $4065: $da $67 $5e

    ret z                                         ; $4068: $c8

    ld [$881f], a                                 ; $4069: $ea $1f $88
    nop                                           ; $406c: $00
    cp l                                          ; $406d: $bd
    or e                                          ; $406e: $b3
    ld [c], a                                     ; $406f: $e2
    add l                                         ; $4070: $85
    ld c, [hl]                                    ; $4071: $4e
    ld l, $d6                                     ; $4072: $2e $d6
    xor [hl]                                      ; $4074: $ae
    rst $20                                       ; $4075: $e7
    ld d, l                                       ; $4076: $55
    ld l, c                                       ; $4077: $69
    or h                                          ; $4078: $b4
    ld d, e                                       ; $4079: $53
    xor [hl]                                      ; $407a: $ae
    pop de                                        ; $407b: $d1
    ccf                                           ; $407c: $3f
    add $11                                       ; $407d: $c6 $11
    ld c, a                                       ; $407f: $4f
    halt                                          ; $4080: $76

jr_054_4081:
    ld [hl-], a                                   ; $4081: $32
    ld e, $9d                                     ; $4082: $1e $9d
    adc e                                         ; $4084: $8b
    dec sp                                        ; $4085: $3b
    ld d, $86                                     ; $4086: $16 $86
    ld [$50f7], sp                                ; $4088: $08 $f7 $50
    ld c, e                                       ; $408b: $4b
    or a                                          ; $408c: $b7
    ld e, a                                       ; $408d: $5f
    inc hl                                        ; $408e: $23
    sbc [hl]                                      ; $408f: $9e
    db $ec                                        ; $4090: $ec
    db $fc                                        ; $4091: $fc
    jr jr_054_40f1                                ; $4092: $18 $5d

    inc a                                         ; $4094: $3c
    adc e                                         ; $4095: $8b
    ld a, d                                       ; $4096: $7a
    ld c, e                                       ; $4097: $4b
    ld e, h                                       ; $4098: $5c
    ld h, l                                       ; $4099: $65
    db $ed                                        ; $409a: $ed
    ld [hl], d                                    ; $409b: $72
    sbc b                                         ; $409c: $98
    ld [hl-], a                                   ; $409d: $32
    rst $08                                       ; $409e: $cf
    dec [hl]                                      ; $409f: $35
    push af                                       ; $40a0: $f5
    ld h, l                                       ; $40a1: $65
    daa                                           ; $40a2: $27
    ld l, d                                       ; $40a3: $6a
    sbc d                                         ; $40a4: $9a
    ld c, d                                       ; $40a5: $4a
    adc l                                         ; $40a6: $8d
    nop                                           ; $40a7: $00
    ld [hl], a                                    ; $40a8: $77
    ld a, $39                                     ; $40a9: $3e $39
    or c                                          ; $40ab: $b1
    db $e3                                        ; $40ac: $e3
    add hl, hl                                    ; $40ad: $29
    ld a, l                                       ; $40ae: $7d
    ccf                                           ; $40af: $3f
    ld b, [hl]                                    ; $40b0: $46
    rst $08                                       ; $40b1: $cf
    dec [hl]                                      ; $40b2: $35

jr_054_40b3:
    jp nz, Jump_054_778d                          ; $40b3: $c2 $8d $77

    jr z, jr_054_4049                             ; $40b6: $28 $91

    sbc l                                         ; $40b8: $9d
    adc h                                         ; $40b9: $8c
    and a                                         ; $40ba: $a7
    cp h                                          ; $40bb: $bc
    di                                            ; $40bc: $f3
    ld e, l                                       ; $40bd: $5d
    db $10                                        ; $40be: $10
    ld bc, $7300                                  ; $40bf: $01 $00 $73
    jr nc, jr_054_40b3                            ; $40c2: $30 $ef

    ld c, c                                       ; $40c4: $49
    call z, $bb18                                 ; $40c5: $cc $18 $bb
    ld h, $d4                                     ; $40c8: $26 $d4
    ld a, d                                       ; $40ca: $7a
    cp a                                          ; $40cb: $bf
    add $49                                       ; $40cc: $c6 $49
    ld l, $86                                     ; $40ce: $2e $86
    inc bc                                        ; $40d0: $03
    ld l, h                                       ; $40d1: $6c
    sub c                                         ; $40d2: $91
    or $c3                                        ; $40d3: $f6 $c3
    pop hl                                        ; $40d5: $e1
    sbc l                                         ; $40d6: $9d
    ld hl, sp+$69                                 ; $40d7: $f8 $69
    ld e, $ff                                     ; $40d9: $1e $ff
    or [hl]                                       ; $40db: $b6
    sbc $af                                       ; $40dc: $de $af
    ld [hl], c                                    ; $40de: $71
    sub d                                         ; $40df: $92
    adc e                                         ; $40e0: $8b
    cpl                                           ; $40e1: $2f
    adc c                                         ; $40e2: $89
    ld a, [hl-]                                   ; $40e3: $3a
    or e                                          ; $40e4: $b3
    ld l, e                                       ; $40e5: $6b
    ld [hl], h                                    ; $40e6: $74
    ld d, a                                       ; $40e7: $57
    ld c, l                                       ; $40e8: $4d
    cp c                                          ; $40e9: $b9
    inc a                                         ; $40ea: $3c
    ld a, [hl-]                                   ; $40eb: $3a

jr_054_40ec:
    ld d, a                                       ; $40ec: $57
    ld a, e                                       ; $40ed: $7b
    db $ec                                        ; $40ee: $ec
    ld a, [de]                                    ; $40ef: $1a
    rst $20                                       ; $40f0: $e7

jr_054_40f1:
    ld h, b                                       ; $40f1: $60
    add [hl]                                      ; $40f2: $86
    ld [$b737], sp                                ; $40f3: $08 $37 $b7
    and $9d                                       ; $40f6: $e6 $9d
    add a                                         ; $40f8: $87
    or c                                          ; $40f9: $b1
    ld h, l                                       ; $40fa: $65
    add h                                         ; $40fb: $84
    dec hl                                        ; $40fc: $2b
    daa                                           ; $40fd: $27
    ld l, $88                                     ; $40fe: $2e $88
    nop                                           ; $4100: $00
    add b                                         ; $4101: $80
    rst $38                                       ; $4102: $ff
    adc [hl]                                      ; $4103: $8e
    ld a, a                                       ; $4104: $7f
    ld [hl], e                                    ; $4105: $73
    db $ed                                        ; $4106: $ed
    cpl                                           ; $4107: $2f
    ld c, l                                       ; $4108: $4d
    or c                                          ; $4109: $b1
    ld l, e                                       ; $410a: $6b
    add h                                         ; $410b: $84

jr_054_410c:
    adc e                                         ; $410c: $8b
    xor [hl]                                      ; $410d: $ae
    or a                                          ; $410e: $b7
    sbc h                                         ; $410f: $9c
    cp b                                          ; $4110: $b8
    halt                                          ; $4111: $76
    ld a, [hl-]                                   ; $4112: $3a
    ld e, l                                       ; $4113: $5d
    sub [hl]                                      ; $4114: $96
    pop af                                        ; $4115: $f1
    ld l, a                                       ; $4116: $6f
    db $eb                                        ; $4117: $eb
    db $fd                                        ; $4118: $fd
    ld a, [de]                                    ; $4119: $1a
    daa                                           ; $411a: $27
    cp c                                          ; $411b: $b9
    jr jr_054_410c                                ; $411c: $18 $ee

    cp [hl]                                       ; $411e: $be
    ld [hl], a                                    ; $411f: $77
    adc $48                                       ; $4120: $ce $48
    ld l, d                                       ; $4122: $6a
    call nc, $dc88                                ; $4123: $d4 $88 $dc
    sub h                                         ; $4126: $94
    ld b, a                                       ; $4127: $47
    ld a, a                                       ; $4128: $7f
    add hl, bc                                    ; $4129: $09
    ld l, a                                       ; $412a: $6f
    add hl, sp                                    ; $412b: $39
    inc l                                         ; $412c: $2c
    db $ed                                        ; $412d: $ed
    cpl                                           ; $412e: $2f
    ld l, a                                       ; $412f: $6f
    sbc c                                         ; $4130: $99
    inc h                                         ; $4131: $24
    rst $38                                       ; $4132: $ff
    jp nc, Jump_054_5b14                          ; $4133: $d2 $14 $5b

    or h                                          ; $4136: $b4
    bit 4, c                                      ; $4137: $cb $61
    ccf                                           ; $4139: $3f
    ld b, [hl]                                    ; $413a: $46
    rst $28                                       ; $413b: $ef
    ldh a, [$8f]                                  ; $413c: $f0 $8f
    ld [hl], c                                    ; $413e: $71
    ld e, h                                       ; $413f: $5c
    sbc d                                         ; $4140: $9a
    sub $7c                                       ; $4141: $d6 $7c
    ld hl, sp+$25                                 ; $4143: $f8 $25
    sub [hl]                                      ; $4145: $96
    db $fd                                        ; $4146: $fd
    dec h                                         ; $4147: $25
    ld c, a                                       ; $4148: $4f
    call nz, Call_054_770c                        ; $4149: $c4 $0c $77
    ld l, a                                       ; $414c: $6f
    jr jr_054_40ec                                ; $414d: $18 $9d

    xor e                                         ; $414f: $ab
    ld a, h                                       ; $4150: $7c
    ret c                                         ; $4151: $d8

    and d                                         ; $4152: $a2
    dec e                                         ; $4153: $1d
    ld sp, hl                                     ; $4154: $f9
    adc $99                                       ; $4155: $ce $99
    ld [hl], d                                    ; $4157: $72
    ld a, c                                       ; $4158: $79
    ld [hl], h                                    ; $4159: $74
    xor [hl]                                      ; $415a: $ae
    push bc                                       ; $415b: $c5
    adc [hl]                                      ; $415c: $8e
    ld sp, $74e9                                  ; $415d: $31 $e9 $74
    ld [hl], e                                    ; $4160: $73
    adc h                                         ; $4161: $8c
    add a                                         ; $4162: $87
    inc l                                         ; $4163: $2c
    sbc l                                         ; $4164: $9d
    dec l                                         ; $4165: $2d
    bit 4, c                                      ; $4166: $cb $61
    ld c, a                                       ; $4168: $4f
    ld d, h                                       ; $4169: $54
    ld a, c                                       ; $416a: $79
    ld [$f287], a                                 ; $416b: $ea $87 $f2
    ld [hl], b                                    ; $416e: $70
    sub [hl]                                      ; $416f: $96
    jp $8865                                      ; $4170: $c3 $65 $88


    nop                                           ; $4173: $00
    db $dd                                        ; $4174: $dd
    ccf                                           ; $4175: $3f
    sub h                                         ; $4176: $94
    add a                                         ; $4177: $87
    or e                                          ; $4178: $b3
    inc e                                         ; $4179: $1c
    ld l, $f7                                     ; $417a: $2e $f7
    ld b, d                                       ; $417c: $42
    ld a, l                                       ; $417d: $7d
    inc e                                         ; $417e: $1c
    halt                                          ; $417f: $76
    and d                                         ; $4180: $a2
    sbc $ff                                       ; $4181: $de $ff
    cp d                                          ; $4183: $ba
    db $e4                                        ; $4184: $e4
    ld b, h                                       ; $4185: $44
    xor a                                         ; $4186: $af
    db $e3                                        ; $4187: $e3
    or b                                          ; $4188: $b0
    xor b                                         ; $4189: $a8
    adc e                                         ; $418a: $8b
    ld a, b                                       ; $418b: $78
    sub d                                         ; $418c: $92
    dec l                                         ; $418d: $2d
    db $e3                                        ; $418e: $e3
    jp nc, Jump_054_66b4                          ; $418f: $d2 $b4 $66

    ld a, [hl-]                                   ; $4192: $3a
    rla                                           ; $4193: $17
    ld l, [hl]                                    ; $4194: $6e
    ld l, $88                                     ; $4195: $2e $88
    nop                                           ; $4197: $00
    rst $30                                       ; $4198: $f7
    add [hl]                                      ; $4199: $86
    dec e                                         ; $419a: $1d
    ld l, d                                       ; $419b: $6a
    ret                                           ; $419c: $c9


    xor e                                         ; $419d: $ab
    add hl, hl                                    ; $419e: $29
    di                                            ; $419f: $f3
    call nz, $bfb5                                ; $41a0: $c4 $b5 $bf
    inc [hl]                                      ; $41a3: $34
    push bc                                       ; $41a4: $c5
    ld d, $6b                                     ; $41a5: $16 $6b
    rst $30                                       ; $41a7: $f7
    ld e, d                                       ; $41a8: $5a
    inc sp                                        ; $41a9: $33
    ld b, h                                       ; $41aa: $44
    add b                                         ; $41ab: $80
    db $dd                                        ; $41ac: $dd
    or h                                          ; $41ad: $b4
    ld d, e                                       ; $41ae: $53
    and $25                                       ; $41af: $e6 $25
    xor a                                         ; $41b1: $af
    ld b, [hl]                                    ; $41b2: $46
    rst $20                                       ; $41b3: $e7
    and d                                         ; $41b4: $a2
    db $eb                                        ; $41b5: $eb
    sbc a                                         ; $41b6: $9f
    ld l, b                                       ; $41b7: $68
    ld d, c                                       ; $41b8: $51
    ld a, $70                                     ; $41b9: $3e $70
    cp l                                          ; $41bb: $bd
    or e                                          ; $41bc: $b3
    ld [c], a                                     ; $41bd: $e2
    add l                                         ; $41be: $85
    ld c, [hl]                                    ; $41bf: $4e
    ld l, $d6                                     ; $41c0: $2e $d6
    xor [hl]                                      ; $41c2: $ae
    rst $20                                       ; $41c3: $e7
    ld d, l                                       ; $41c4: $55
    ld l, c                                       ; $41c5: $69
    jr nz, jr_054_41ca                            ; $41c6: $20 $02

    ld a, l                                       ; $41c8: $7d
    inc e                                         ; $41c9: $1c

jr_054_41ca:
    sub [hl]                                      ; $41ca: $96
    ld a, [hl]                                    ; $41cb: $7e
    ld h, l                                       ; $41cc: $65
    ld [$5f61], sp                                ; $41cd: $08 $61 $5f
    inc b                                         ; $41d0: $04
    add h                                         ; $41d1: $84
    sub b                                         ; $41d2: $90
    ld e, a                                       ; $41d3: $5f
    adc h                                         ; $41d4: $8c
    db $10                                        ; $41d5: $10
    ld bc, $86f7                                  ; $41d6: $01 $f7 $86
    dec e                                         ; $41d9: $1d
    ld c, d                                       ; $41da: $4a
    dec sp                                        ; $41db: $3b
    set 5, b                                      ; $41dc: $cb $e8
    ld a, [$ae27]                                 ; $41de: $fa $27 $ae
    ld a, l                                       ; $41e1: $7d
    or [hl]                                       ; $41e2: $b6
    adc h                                         ; $41e3: $8c
    push af                                       ; $41e4: $f5
    ld e, d                                       ; $41e5: $5a
    add sp, $58                                   ; $41e6: $e8 $58
    inc h                                         ; $41e8: $24
    db $e3                                        ; $41e9: $e3
    pop de                                        ; $41ea: $d1
    ld c, a                                       ; $41eb: $4f
    add d                                         ; $41ec: $82
    ld h, e                                       ; $41ed: $63
    rst $00                                       ; $41ee: $c7
    xor l                                         ; $41ef: $ad
    cp c                                          ; $41f0: $b9
    inc l                                         ; $41f1: $2c
    bit 4, c                                      ; $41f2: $cb $61
    sbc c                                         ; $41f4: $99
    inc h                                         ; $41f5: $24
    rst $00                                       ; $41f6: $c7
    cp a                                          ; $41f7: $bf
    xor l                                         ; $41f8: $ad
    rst $30                                       ; $41f9: $f7
    ld l, e                                       ; $41fa: $6b
    sbc h                                         ; $41fb: $9c
    db $e4                                        ; $41fc: $e4
    ld h, d                                       ; $41fd: $62
    adc b                                         ; $41fe: $88
    nop                                           ; $41ff: $00
    db $dd                                        ; $4200: $dd

Jump_054_4201:
    ld a, [$4b94]                                 ; $4201: $fa $94 $4b
    dec sp                                        ; $4204: $3b
    ld a, [$4f09]                                 ; $4205: $fa $09 $4f
    jp hl                                         ; $4208: $e9


    inc hl                                        ; $4209: $23
    sbc a                                         ; $420a: $9f
    ld d, d                                       ; $420b: $52
    ld l, a                                       ; $420c: $6f
    ld [$42f7], a                                 ; $420d: $ea $f7 $42

Jump_054_4210:
    ld a, l                                       ; $4210: $7d
    sbc [hl]                                      ; $4211: $9e
    halt                                          ; $4212: $76
    dec e                                         ; $4213: $1d
    add a                                         ; $4214: $87
    ld de, $06af                                  ; $4215: $11 $af $06

Jump_054_4218:
    or b                                          ; $4218: $b0
    cp $e1                                        ; $4219: $fe $e1
    daa                                           ; $421b: $27
    inc hl                                        ; $421c: $23
    ld e, h                                       ; $421d: $5c
    db $10                                        ; $421e: $10
    ld bc, $d4b7                                  ; $421f: $01 $b7 $d4
    add e                                         ; $4222: $83
    cp e                                          ; $4223: $bb
    add a                                         ; $4224: $87
    ld e, d                                       ; $4225: $5a
    add sp, -$48                                  ; $4226: $e8 $b8
    xor c                                         ; $4228: $a9
    inc sp                                        ; $4229: $33

jr_054_422a:
    ld h, l                                       ; $422a: $65
    sbc $e3                                       ; $422b: $de $e3
    add hl, hl                                    ; $422d: $29
    sub a                                         ; $422e: $97
    ld b, a                                       ; $422f: $47
    db $e4                                        ; $4230: $e4
    and [hl]                                      ; $4231: $a6
    ld e, h                                       ; $4232: $5c
    ld d, e                                       ; $4233: $53
    ld l, $8f                                     ; $4234: $2e $8f
    call $2fbc                                    ; $4236: $cd $bc $2f
    jp nz, Jump_000_0dbf                          ; $4239: $c2 $bf $0d

    dec sp                                        ; $423c: $3b
    inc l                                         ; $423d: $2c
    add a                                         ; $423e: $87
    db $fd                                        ; $423f: $fd
    jr @+$3f                                      ; $4240: $18 $3d

    sub $5b                                       ; $4242: $d6 $5b
    ld [hl], e                                    ; $4244: $73
    ld c, l                                       ; $4245: $4d
    cp c                                          ; $4246: $b9
    cp h                                          ; $4247: $bc
    ld [hl], h                                    ; $4248: $74
    ld l, $be                                     ; $4249: $2e $be
    ld [hl], c                                    ; $424b: $71
    ld b, h                                       ; $424c: $44
    ld a, [c]                                     ; $424d: $f2
    rst $08                                       ; $424e: $cf
    sub h                                         ; $424f: $94
    res 1, e                                      ; $4250: $cb $8b
    add hl, de                                    ; $4252: $19
    ld h, e                                       ; $4253: $63
    rst $10                                       ; $4254: $d7
    jp nc, Jump_054_78b9                          ; $4255: $d2 $b9 $78

    ld [hl], h                                    ; $4258: $74
    cp l                                          ; $4259: $bd
    dec e                                         ; $425a: $1d
    cp $96                                        ; $425b: $fe $96
    ld de, $ed2e                                  ; $425d: $11 $2e $ed
    ld [c], a                                     ; $4260: $e2
    sub e                                         ; $4261: $93
    add hl, hl                                    ; $4262: $29
    sub a                                         ; $4263: $97
    ld [hl], a                                    ; $4264: $77
    cp b                                          ; $4265: $b8
    adc e                                         ; $4266: $8b
    dec a                                         ; $4267: $3d
    sub d                                         ; $4268: $92
    sbc d                                         ; $4269: $9a
    ld h, h                                       ; $426a: $64
    set 3, b                                      ; $426b: $cb $d8
    jr jr_054_422a                                ; $426d: $18 $bb

    db $fd                                        ; $426f: $fd
    or b                                          ; $4270: $b0
    inc de                                        ; $4271: $13
    ld [hl], l                                    ; $4272: $75
    call c, $9d3c                                 ; $4273: $dc $3c $9d
    dec [hl]                                      ; $4276: $35
    daa                                           ; $4277: $27
    cp d                                          ; $4278: $ba
    ldh [$ba], a                                  ; $4279: $e0 $ba
    call $a9a3                                    ; $427b: $cd $a3 $a9
    jp c, $96a1                                   ; $427e: $da $a1 $96

    db $f4                                        ; $4281: $f4
    ld d, l                                       ; $4282: $55
    ld l, a                                       ; $4283: $6f
    adc a                                         ; $4284: $8f
    and a                                         ; $4285: $a7
    call z, $4f8b                                 ; $4286: $cc $8b $4f
    sub [hl]                                      ; $4289: $96
    db $f4                                        ; $428a: $f4
    ld d, l                                       ; $428b: $55
    sbc $89                                       ; $428c: $de $89
    dec e                                         ; $428e: $1d
    cp l                                          ; $428f: $bd
    or c                                          ; $4290: $b1
    ld [hl], a                                    ; $4291: $77
    ld [c], a                                     ; $4292: $e2
    ld h, e                                       ; $4293: $63
    halt                                          ; $4294: $76
    xor l                                         ; $4295: $ad
    sbc a                                         ; $4296: $9f
    or b                                          ; $4297: $b0
    ccf                                           ; $4298: $3f
    ret                                           ; $4299: $c9


    sub [hl]                                      ; $429a: $96
    cp l                                          ; $429b: $bd
    ld h, h                                       ; $429c: $64
    rst $20                                       ; $429d: $e7
    dec hl                                        ; $429e: $2b
    add a                                         ; $429f: $87
    daa                                           ; $42a0: $27
    pop bc                                        ; $42a1: $c1
    ld h, d                                       ; $42a2: $62
    cp b                                          ; $42a3: $b8
    ld a, e                                       ; $42a4: $7b
    rst $28                                       ; $42a5: $ef
    call nc, Call_054_50ee                        ; $42a6: $d4 $ee $50
    dec bc                                        ; $42a9: $0b
    ld d, h                                       ; $42aa: $54
    dec l                                         ; $42ab: $2d
    ld sp, hl                                     ; $42ac: $f9
    db $10                                        ; $42ad: $10
    ld bc, $aedd                                  ; $42ae: $01 $dd $ae
    ld de, $96af                                  ; $42b1: $11 $af $96
    db $fc                                        ; $42b4: $fc
    add hl, hl                                    ; $42b5: $29
    add a                                         ; $42b6: $87
    call nc, $afbb                                ; $42b7: $d4 $bb $af
    cp d                                          ; $42ba: $ba
    sub d                                         ; $42bb: $92
    ld d, c                                       ; $42bc: $51
    inc hl                                        ; $42bd: $23
    ld [hl], d                                    ; $42be: $72
    ld d, e                                       ; $42bf: $53
    and e                                         ; $42c0: $a3
    cp e                                          ; $42c1: $bb
    ld e, d                                       ; $42c2: $5a
    ld [hl], b                                    ; $42c3: $70
    ld l, d                                       ; $42c4: $6a
    inc b                                         ; $42c5: $04
    db $dd                                        ; $42c6: $dd
    and $b9                                       ; $42c7: $e6 $b9
    ld a, [$1e8f]                                 ; $42c9: $fa $8f $1e
    sub a                                         ; $42cc: $97
    ld h, $f0                                     ; $42cd: $26 $f0
    xor b                                         ; $42cf: $a8
    pop de                                        ; $42d0: $d1
    cp c                                          ; $42d1: $b9
    sub d                                         ; $42d2: $92
    rst $18                                       ; $42d3: $df
    sbc d                                         ; $42d4: $9a
    ld [hl], a                                    ; $42d5: $77
    inc e                                         ; $42d6: $1c
    or $9a                                        ; $42d7: $f6 $9a
    cp a                                          ; $42d9: $bf
    ld e, b                                       ; $42da: $58
    cp e                                          ; $42db: $bb
    sbc [hl]                                      ; $42dc: $9e
    ld d, a                                       ; $42dd: $57
    and l                                         ; $42de: $a5
    add c                                         ; $42df: $81
    ld [$b93d], sp                                ; $42e0: $08 $3d $b9
    xor c                                         ; $42e3: $a9
    pop de                                        ; $42e4: $d1
    xor a                                         ; $42e5: $af
    ld hl, sp+$69                                 ; $42e6: $f8 $69
    rst $10                                       ; $42e8: $d7
    ld [hl], c                                    ; $42e9: $71
    ld e, b                                       ; $42ea: $58
    ld a, [c]                                     ; $42eb: $f2
    ld e, e                                       ; $42ec: $5b
    rst $38                                       ; $42ed: $ff
    pop de                                        ; $42ee: $d1
    ld c, e                                       ; $42ef: $4b

jr_054_42f0:
    or a                                          ; $42f0: $b7
    ccf                                           ; $42f1: $3f
    jp hl                                         ; $42f2: $e9


    ld d, d                                       ; $42f3: $52

Jump_054_42f4:
    inc a                                         ; $42f4: $3c
    cp $6d                                        ; $42f5: $fe $6d
    call nc, Call_000_3502                        ; $42f7: $d4 $02 $35
    cp $2d                                        ; $42fa: $fe $2d
    db $fd                                        ; $42fc: $fd
    ld [$31ec], a                                 ; $42fd: $ea $ec $31
    rst $08                                       ; $4300: $cf
    call z, $99ae                                 ; $4301: $cc $ae $99
    reti                                          ; $4304: $d9


    dec h                                         ; $4305: $25
    ld e, l                                       ; $4306: $5d
    call $8865                                    ; $4307: $cd $65 $88
    nop                                           ; $430a: $00
    ld a, l                                       ; $430b: $7d
    inc e                                         ; $430c: $1c
    sub [hl]                                      ; $430d: $96
    cp h                                          ; $430e: $bc
    ld e, d                                       ; $430f: $5a
    ei                                            ; $4310: $fb
    call z, $3b4b                                 ; $4311: $cc $4b $3b
    ld l, d                                       ; $4314: $6a
    ld [hl], b                                    ; $4315: $70
    cp l                                          ; $4316: $bd
    pop de                                        ; $4317: $d1
    cp c                                          ; $4318: $b9
    and [hl]                                      ; $4319: $a6
    inc e                                         ; $431a: $1c
    or h                                          ; $431b: $b4
    db $eb                                        ; $431c: $eb
    ld a, c                                       ; $431d: $79
    ld d, l                                       ; $431e: $55
    ld a, [de]                                    ; $431f: $1a
    adc b                                         ; $4320: $88
    nop                                           ; $4321: $00
    db $dd                                        ; $4322: $dd
    and $b9                                       ; $4323: $e6 $b9
    ld a, [$1e8f]                                 ; $4325: $fa $8f $1e
    ld l, c                                       ; $4328: $69
    pop hl                                        ; $4329: $e1
    cp l                                          ; $432a: $bd
    ld h, h                                       ; $432b: $64
    jp z, $d461                                   ; $432c: $ca $61 $d4

    ld c, $ff                                     ; $432f: $0e $ff
    jr jr_054_42f0                                ; $4331: $18 $bd

    sub a                                         ; $4333: $97
    inc l                                         ; $4334: $2c
    add a                                         ; $4335: $87
    add l                                         ; $4336: $85
    ld c, [hl]                                    ; $4337: $4e
    ld d, a                                       ; $4338: $57
    cp l                                          ; $4339: $bd
    add l                                         ; $433a: $85
    add a                                         ; $433b: $87
    sbc e                                         ; $433c: $9b
    rst $10                                       ; $433d: $d7
    ld e, e                                       ; $433e: $5b
    inc de                                        ; $433f: $13
    ld [$a5ab], a                                 ; $4340: $ea $ab $a5
    dec e                                         ; $4343: $1d
    dec [hl]                                      ; $4344: $35
    cp b                                          ; $4345: $b8
    sbc [hl]                                      ; $4346: $9e
    halt                                          ; $4347: $76
    dec a                                         ; $4348: $3d
    xor a                                         ; $4349: $af
    ld c, d                                       ; $434a: $4a
    inc bc                                        ; $434b: $03
    ld de, $b737                                  ; $434c: $11 $37 $b7
    and $3d                                       ; $434f: $e6 $3d
    ld d, c                                       ; $4351: $51
    push hl                                       ; $4352: $e5
    cp c                                          ; $4353: $b9
    or $45                                        ; $4354: $f6 $45
    ld e, $9d                                     ; $4356: $1e $9d
    ld l, e                                       ; $4358: $6b
    xor a                                         ; $4359: $af
    ld sp, $dd44                                  ; $435a: $31 $44 $dd
    ld a, [$eb5c]                                 ; $435d: $fa $5c $eb
    db $e4                                        ; $4360: $e4
    dec h                                         ; $4361: $25
    xor [hl]                                      ; $4362: $ae
    ld a, [c]                                     ; $4363: $f2
    ld hl, sp-$49                                 ; $4364: $f8 $b7
    ld d, c                                       ; $4366: $51
    and e                                         ; $4367: $a3
    ld [hl], e                                    ; $4368: $73
    sbc l                                         ; $4369: $9d
    db $e4                                        ; $436a: $e4
    adc e                                         ; $436b: $8b
    ld a, b                                       ; $436c: $78
    ld d, $19                                     ; $436d: $16 $19
    ld sp, hl                                     ; $436f: $f9
    sub h                                         ; $4370: $94
    ld a, d                                       ; $4371: $7a
    db $e3                                        ; $4372: $e3
    rst $18                                       ; $4373: $df
    halt                                          ; $4374: $76
    rst $08                                       ; $4375: $cf
    ld l, a                                       ; $4376: $6f
    ld a, [$4ed1]                                 ; $4377: $fa $d1 $4e
    jp hl                                         ; $437a: $e9


    jp c, $bcf5                                   ; $437b: $da $f5 $bc

    ld a, [hl+]                                   ; $437e: $2a
    ld c, l                                       ; $437f: $4d
    ld l, d                                       ; $4380: $6a
    inc b                                         ; $4381: $04
    rst $30                                       ; $4382: $f7
    ld d, b                                       ; $4383: $50
    ld [hl], e                                    ; $4384: $73
    dec l                                         ; $4385: $2d
    ld sp, hl                                     ; $4386: $f9
    ld d, e                                       ; $4387: $53
    xor [hl]                                      ; $4388: $ae
    dec e                                         ; $4389: $1d
    ld a, c                                       ; $438a: $79
    push bc                                       ; $438b: $c5
    db $10                                        ; $438c: $10
    ld b, d                                       ; $438d: $42
    ld [hl+], a                                   ; $438e: $22
    ld sp, hl                                     ; $438f: $f9
    ld h, a                                       ; $4390: $67
    xor a                                         ; $4391: $af
    dec [hl]                                      ; $4392: $35
    adc a                                         ; $4393: $8f
    ret z                                         ; $4394: $c8

    ld c, l                                       ; $4395: $4d
    cp c                                          ; $4396: $b9
    ld b, [hl]                                    ; $4397: $46
    ld [hl], a                                    ; $4398: $77
    or l                                          ; $4399: $b5
    ld h, b                                       ; $439a: $60
    adc b                                         ; $439b: $88
    nop                                           ; $439c: $00
    ld [hl], a                                    ; $439d: $77
    call nz, $9de8                                ; $439e: $c4 $e8 $9d
    ld h, [hl]                                    ; $43a1: $66
    ld [hl], d                                    ; $43a2: $72
    ret c                                         ; $43a3: $d8

    ld l, d                                       ; $43a4: $6a
    ld l, c                                       ; $43a5: $69
    ld a, a                                       ; $43a6: $7f
    ld a, c                                       ; $43a7: $79
    db $10                                        ; $43a8: $10
    ld b, d                                       ; $43a9: $42
    ret                                           ; $43aa: $c9


    ld e, [hl]                                    ; $43ab: $5e
    call nc, Call_000_3c45                        ; $43ac: $d4 $45 $3c
    ld a, [hl]                                    ; $43af: $7e
    db $e3                                        ; $43b0: $e3
    rla                                           ; $43b1: $17
    rst $30                                       ; $43b2: $f7
    and a                                         ; $43b3: $a7
    adc h                                         ; $43b4: $8c
    ld hl, $b702                                  ; $43b5: $21 $02 $b7
    cp h                                          ; $43b8: $bc
    ld a, [c]                                     ; $43b9: $f2
    ld [hl-], a                                   ; $43ba: $32

Call_054_43bb:
    ld c, c                                       ; $43bb: $49

Jump_054_43bc:
    adc [hl]                                      ; $43bc: $8e
    db $eb                                        ; $43bd: $eb
    sub c                                         ; $43be: $91
    db $e4                                        ; $43bf: $e4
    dec de                                        ; $43c0: $1b
    pop hl                                        ; $43c1: $e1
    sbc d                                         ; $43c2: $9a
    ld d, b                                       ; $43c3: $50
    jp c, Jump_054_6a1d                           ; $43c4: $da $1d $6a

    xor [hl]                                      ; $43c7: $ae
    dec h                                         ; $43c8: $25
    ld a, a                                       ; $43c9: $7f
    ld e, a                                       ; $43ca: $5f
    call nz, $a923                                ; $43cb: $c4 $23 $a9
    push af                                       ; $43ce: $f5
    ld a, [hl]                                    ; $43cf: $7e
    adc l                                         ; $43d0: $8d
    sub e                                         ; $43d1: $93
    ld e, h                                       ; $43d2: $5c
    inc c                                         ; $43d3: $0c
    ld de, $ae3d                                  ; $43d4: $11 $3d $ae
    cp c                                          ; $43d7: $b9
    ld b, [hl]                                    ; $43d8: $46
    ld [hl], a                                    ; $43d9: $77
    push de                                       ; $43da: $d5
    ld h, c                                       ; $43db: $61
    rst $00                                       ; $43dc: $c7

Jump_054_43dd:
    or $ce                                        ; $43dd: $f6 $ce
    ld sp, hl                                     ; $43df: $f9
    ld [de], a                                    ; $43e0: $12
    sbc [hl]                                      ; $43e1: $9e
    halt                                          ; $43e2: $76
    ld h, h                                       ; $43e3: $64
    ld h, l                                       ; $43e4: $65
    jp c, $e4e7                                   ; $43e5: $da $e7 $e4

    jp c, $a0dd                                   ; $43e8: $da $dd $a0

    ld d, e                                       ; $43eb: $53
    ld b, h                                       ; $43ec: $44
    cpl                                           ; $43ed: $2f
    ld [de], a                                    ; $43ee: $12
    ld [hl+], a                                   ; $43ef: $22
    add b                                         ; $43f0: $80
    db $dd                                        ; $43f1: $dd
    ld h, d                                       ; $43f2: $62
    add $d8                                       ; $43f3: $c6 $d8
    ld [hl-], a                                   ; $43f5: $32
    cp $6d                                        ; $43f6: $fe $6d
    cp l                                          ; $43f8: $bd
    ld e, a                                       ; $43f9: $5f
    db $e3                                        ; $43fa: $e3
    inc h                                         ; $43fb: $24
    rla                                           ; $43fc: $17
    jp $c8a5                                      ; $43fd: $c3 $a5 $c8


    dec hl                                        ; $4400: $2b
    ld e, [hl]                                    ; $4401: $5e
    jp c, Jump_000_2341                           ; $4402: $da $41 $23

    ld [c], a                                     ; $4405: $e2
    ld a, [de]                                    ; $4406: $1a
    ldh [$d7], a                                  ; $4407: $e0 $d7
    jp nz, Jump_000_1971                          ; $4409: $c2 $71 $19

    ld h, a                                       ; $440c: $67
    ld sp, hl                                     ; $440d: $f9
    ld d, $ed                                     ; $440e: $16 $ed
    adc b                                         ; $4410: $88
    inc h                                         ; $4411: $24
    rst $10                                       ; $4412: $d7
    sub h                                         ; $4413: $94
    bit 1, e                                      ; $4414: $cb $4b
    or a                                          ; $4416: $b7
    ld e, a                                       ; $4417: $5f
    and e                                         ; $4418: $a3
    ld [hl], e                                    ; $4419: $73
    add hl, hl                                    ; $441a: $29
    scf                                           ; $441b: $37
    ld e, $76                                     ; $441c: $1e $76
    ld l, e                                       ; $441e: $6b
    add hl, de                                    ; $441f: $19
    ld c, a                                       ; $4420: $4f
    ld a, c                                       ; $4421: $79
    db $f4                                        ; $4422: $f4
    cpl                                           ; $4423: $2f
    adc a                                         ; $4424: $8f
    ret nc                                        ; $4425: $d0

    adc a                                         ; $4426: $8f
    push bc                                       ; $4427: $c5
    scf                                           ; $4428: $37
    xor h                                         ; $4429: $ac
    ld [hl], a                                    ; $442a: $77
    ld a, l                                       ; $442b: $7d
    sbc d                                         ; $442c: $9a
    cp $12                                        ; $442d: $fe $12
    or h                                          ; $442f: $b4
    db $eb                                        ; $4430: $eb
    and c                                         ; $4431: $a1
    ld c, [hl]                                    ; $4432: $4e
    cp d                                          ; $4433: $ba
    ld d, c                                       ; $4434: $51
    ld b, a                                       ; $4435: $47
    dec sp                                        ; $4436: $3b
    nop                                           ; $4437: $00
    cpl                                           ; $4438: $2f
    sub c                                         ; $4439: $91
    ret c                                         ; $443a: $d8

    ld a, [c]                                     ; $443b: $f2
    call c, Call_054_6b9a                         ; $443c: $dc $9a $6b

Jump_054_443f:
    add hl, hl                                    ; $443f: $29
    ld e, b                                       ; $4440: $58
    inc de                                        ; $4441: $13
    ld e, [hl]                                    ; $4442: $5e
    add hl, hl                                    ; $4443: $29
    cp b                                          ; $4444: $b8
    ld l, [hl]                                    ; $4445: $6e
    di                                            ; $4446: $f3
    ld e, h                                       ; $4447: $5c
    ei                                            ; $4448: $fb
    ld d, e                                       ; $4449: $53
    ld h, [hl]                                    ; $444a: $66
    or $08                                        ; $444b: $f6 $08
    db $fd                                        ; $444d: $fd
    sbc b                                         ; $444e: $98
    and a                                         ; $444f: $a7
    ld e, h                                       ; $4450: $5c
    sbc $89                                       ; $4451: $de $89
    xor a                                         ; $4453: $af
    dec l                                         ; $4454: $2d
    sbc l                                         ; $4455: $9d
    sub a                                         ; $4456: $97
    jp $a55e                                      ; $4457: $c3 $5e $a5


    db $fd                                        ; $445a: $fd
    sub l                                         ; $445b: $95
    pop hl                                        ; $445c: $e1
    xor $0d                                       ; $445d: $ee $0d
    ld d, e                                       ; $445f: $53
    ld l, $2f                                     ; $4460: $2e $2f
    ld a, $19                                     ; $4462: $3e $19
    ld [hl], a                                    ; $4464: $77
    inc l                                         ; $4465: $2c
    ld e, [hl]                                    ; $4466: $5e
    ld h, $c9                                     ; $4467: $26 $c9
    ld de, $21fa                                  ; $4469: $11 $fa $21
    or e                                          ; $446c: $b3

Jump_054_446d:
    dec h                                         ; $446d: $25
    inc l                                         ; $446e: $2c
    add a                                         ; $446f: $87
    and l                                         ; $4470: $a5
    cp a                                          ; $4471: $bf
    xor d                                         ; $4472: $aa
    scf                                           ; $4473: $37
    cp $6d                                        ; $4474: $fe $6d
    call nc, Call_000_2f92                        ; $4476: $d4 $92 $2f
    ld [c], a                                     ; $4479: $e2
    ld de, $21fa                                  ; $447a: $11 $fa $21
    ld [hl], e                                    ; $447d: $73
    ld a, h                                       ; $447e: $7c
    call $1102                                    ; $447f: $cd $02 $11
    rst $30                                       ; $4482: $f7
    sbc l                                         ; $4483: $9d
    jp Jump_054_4210                              ; $4484: $c3 $10 $42


    ld [hl+], a                                   ; $4487: $22
    ld a, c                                       ; $4488: $79
    ld [hl], e                                    ; $4489: $73
    adc l                                         ; $448a: $8d
    ret nc                                        ; $448b: $d0

    rrca                                          ; $448c: $0f
    sbc c                                         ; $448d: $99
    dec l                                         ; $448e: $2d
    ld h, c                                       ; $448f: $61
    ld [hl], h                                    ; $4490: $74
    xor [hl]                                      ; $4491: $ae
    ld c, c                                       ; $4492: $49
    halt                                          ; $4493: $76
    cpl                                           ; $4494: $2f
    inc b                                         ; $4495: $04
    db $dd                                        ; $4496: $dd
    and $b9                                       ; $4497: $e6 $b9
    ld b, [hl]                                    ; $4499: $46
    ld h, [hl]                                    ; $449a: $66
    ld c, e                                       ; $449b: $4b
    sbc b                                         ; $449c: $98
    jp nc, Jump_054_7c97                          ; $449d: $d2 $97 $7c

    ld de, $88d7                                  ; $44a0: $11 $d7 $88
    db $e4                                        ; $44a3: $e4
    sbc a                                         ; $44a4: $9f
    add hl, hl                                    ; $44a5: $29
    ld a, l                                       ; $44a6: $7d
    and c                                         ; $44a7: $a1
    db $d3                                        ; $44a8: $d3
    ld d, l                                       ; $44a9: $55
    sub e                                         ; $44aa: $93
    db $ec                                        ; $44ab: $ec
    and l                                         ; $44ac: $a5
    db $eb                                        ; $44ad: $eb
    ld l, c                                       ; $44ae: $69
    rst $20                                       ; $44af: $e7
    sub $5c                                       ; $44b0: $d6 $5c
    jp $b0ff                                      ; $44b2: $c3 $ff $b0


    ld l, e                                       ; $44b5: $6b
    ld b, h                                       ; $44b6: $44
    ld a, [c]                                     ; $44b7: $f2
    rst $08                                       ; $44b8: $cf
    sub h                                         ; $44b9: $94
    cp [hl]                                       ; $44ba: $be
    ld [hl], h                                    ; $44bb: $74
    ld l, c                                       ; $44bc: $69
    ret c                                         ; $44bd: $d8

    dec [hl]                                      ; $44be: $35
    set 1, d                                      ; $44bf: $cb $ca
    pop bc                                        ; $44c1: $c1
    dec c                                         ; $44c2: $0d
    xor $3e                                       ; $44c3: $ee $3e
    ld l, d                                       ; $44c5: $6a
    and a                                         ; $44c6: $a7
    jp hl                                         ; $44c7: $e9


    call z, $bd96                                 ; $44c8: $cc $96 $bd
    ld h, h                                       ; $44cb: $64
    ld d, h                                       ; $44cc: $54
    sbc c                                         ; $44cd: $99
    sub a                                         ; $44ce: $97
    ld l, [hl]                                    ; $44cf: $6e
    cp a                                          ; $44d0: $bf

Jump_054_44d1:
    ld b, [hl]                                    ; $44d1: $46
    ld h, [hl]                                    ; $44d2: $66
    ld c, e                                       ; $44d3: $4b
    or b                                          ; $44d4: $b0
    ld a, b                                       ; $44d5: $78
    ld b, a                                       ; $44d6: $47
    rst $00                                       ; $44d7: $c7
    ret c                                         ; $44d8: $d8

    push bc                                       ; $44d9: $c5
    sla h                                         ; $44da: $cb $24
    xor c                                         ; $44dc: $a9
    ld e, l                                       ; $44dd: $5d
    ld c, $53                                     ; $44de: $0e $53
    and $11                                       ; $44e0: $e6 $11
    ld a, [$ef31]                                 ; $44e2: $fa $31 $ef
    ld h, h                                       ; $44e5: $64
    inc a                                         ; $44e6: $3c
    ld [c], a                                     ; $44e7: $e2
    push de                                       ; $44e8: $d5
    add sp, -$1a                                  ; $44e9: $e8 $e6
    jp $25da                                      ; $44eb: $c3 $da $25


    ld e, a                                       ; $44ee: $5f
    call nz, Call_000_3235                        ; $44ef: $c4 $35 $32
    rst $00                                       ; $44f2: $c7
    rst $10                                       ; $44f3: $d7
    inc l                                         ; $44f4: $2c
    db $10                                        ; $44f5: $10
    ld bc, $493d                                  ; $44f6: $01 $3d $49
    ld l, $f5                                     ; $44f9: $2e $f5
    ld h, h                                       ; $44fb: $64
    jp hl                                         ; $44fc: $e9


    or $6b                                        ; $44fd: $f6 $6b
    ret                                           ; $44ff: $c9


    ld e, a                                       ; $4500: $5f
    rst $38                                       ; $4501: $ff
    ret                                           ; $4502: $c9


    ld l, e                                       ; $4503: $6b
    add c                                         ; $4504: $81
    ei                                            ; $4505: $fb
    rst $28                                       ; $4506: $ef
    add l                                         ; $4507: $85
    nop                                           ; $4508: $00
    ld a, l                                       ; $4509: $7d
    inc e                                         ; $450a: $1c
    add $95                                       ; $450b: $c6 $95
    ld l, e                                       ; $450d: $6b
    ret                                           ; $450e: $c9


    rra                                           ; $450f: $1f
    and [hl]                                      ; $4510: $a6
    halt                                          ; $4511: $76
    ld a, [de]                                    ; $4512: $1a
    ld [hl], l                                    ; $4513: $75
    adc $b0                                       ; $4514: $ce $b0
    push de                                       ; $4516: $d5
    call z, $cae3                                 ; $4517: $cc $e3 $ca
    xor l                                         ; $451a: $ad
    ld b, c                                       ; $451b: $41
    inc b                                         ; $451c: $04
    add b                                         ; $451d: $80
    dec l                                         ; $451e: $2d
    jp nc, Jump_000_387e                          ; $451f: $d2 $7e $38

    inc a                                         ; $4522: $3c
    cp d                                          ; $4523: $ba
    xor e                                         ; $4524: $ab
    add l                                         ; $4525: $85
    ld h, c                                       ; $4526: $61
    rlca                                          ; $4527: $07
    adc b                                         ; $4528: $88
    nop                                           ; $4529: $00
    ld a, l                                       ; $452a: $7d
    inc e                                         ; $452b: $1c
    ld b, [hl]                                    ; $452c: $46
    ld d, b                                       ; $452d: $50
    and h                                         ; $452e: $a4
    ld l, e                                       ; $452f: $6b
    ret                                           ; $4530: $c9


    ld e, a                                       ; $4531: $5f
    call z, $bb18                                 ; $4532: $cc $18 $bb
    or $77                                        ; $4535: $f6 $77
    ld e, $c6                                     ; $4537: $1e $c6
    ld e, $a1                                     ; $4539: $1e $a1
    rra                                           ; $453b: $1f
    db $ed                                        ; $453c: $ed
    ld [hl], d                                    ; $453d: $72
    ret c                                         ; $453e: $d8

    dec e                                         ; $453f: $1d
    ld [hl], a                                    ; $4540: $77
    sbc $79                                       ; $4541: $de $79
    db $db                                        ; $4543: $db
    ld d, d                                       ; $4544: $52
    or b                                          ; $4545: $b0
    ld h, $bc                                     ; $4546: $26 $bc
    ld d, d                                       ; $4548: $52
    ld [hl], b                                    ; $4549: $70
    ld [hl], a                                    ; $454a: $77
    call nz, Call_000_3de8                        ; $454b: $c4 $e8 $3d
    sbc $6b                                       ; $454e: $de $6b
    call $ed73                                    ; $4550: $cd $73 $ed
    inc [hl]                                      ; $4553: $34
    ld h, e                                       ; $4554: $63
    ld l, h                                       ; $4555: $6c
    db $ed                                        ; $4556: $ed
    or b                                          ; $4557: $b0
    ld h, l                                       ; $4558: $65
    jp z, $d73c                                   ; $4559: $ca $3c $d7

    ld a, [hl]                                    ; $455c: $7e
    adc h                                         ; $455d: $8c
    sbc $a1                                       ; $455e: $de $a1
    ld b, [hl]                                    ; $4560: $46
    ld d, e                                       ; $4561: $53
    ld [hl], e                                    ; $4562: $73
    ld l, h                                       ; $4563: $6c
    ld e, $6b                                     ; $4564: $1e $6b
    ld c, b                                       ; $4566: $48
    rst $10                                       ; $4567: $d7
    sub h                                         ; $4568: $94
    dec bc                                        ; $4569: $0b
    ld [hl+], a                                   ; $456a: $22
    add b                                         ; $456b: $80
    ei                                            ; $456c: $fb
    xor d                                         ; $456d: $aa
    ld de, $1dbf                                  ; $456e: $11 $bf $1d
    or e                                          ; $4571: $b3
    halt                                          ; $4572: $76
    ld [hl], h                                    ; $4573: $74
    ld d, a                                       ; $4574: $57
    dec e                                         ; $4575: $1d
    halt                                          ; $4576: $76
    ld l, h                                       ; $4577: $6c
    rst $28                                       ; $4578: $ef
    sbc h                                         ; $4579: $9c
    cpl                                           ; $457a: $2f
    pop bc                                        ; $457b: $c1
    dec b                                         ; $457c: $05
    rst $10                                       ; $457d: $d7
    rst $00                                       ; $457e: $c7
    ld h, c                                       ; $457f: $61
    add h                                         ; $4580: $84
    reti                                          ; $4581: $d9


    or l                                          ; $4582: $b5
    sbc e                                         ; $4583: $9b
    ld e, e                                       ; $4584: $5b
    ld e, d                                       ; $4585: $5a
    ccf                                           ; $4586: $3f
    db $eb                                        ; $4587: $eb
    pop de                                        ; $4588: $d1
    ld [hl], c                                    ; $4589: $71
    di                                            ; $458a: $f3
    ld de, $6abd                                  ; $458b: $11 $bd $6a
    add hl, sp                                    ; $458e: $39
    call z, Call_054_72b5                         ; $458f: $cc $b5 $72
    db $e4                                        ; $4592: $e4
    ld e, h                                       ; $4593: $5c
    inc hl                                        ; $4594: $23
    ld e, h                                       ; $4595: $5c
    inc hl                                        ; $4596: $23
    xor c                                         ; $4597: $a9
    push af                                       ; $4598: $f5
    ld a, [hl]                                    ; $4599: $7e
    adc l                                         ; $459a: $8d
    sub e                                         ; $459b: $93
    ld e, h                                       ; $459c: $5c
    inc c                                         ; $459d: $0c
    rlca                                          ; $459e: $07
    cp b                                          ; $459f: $b8
    xor a                                         ; $45a0: $af
    jp c, $df91                                   ; $45a1: $da $91 $df

    jp c, $f1a8                                   ; $45a4: $da $a8 $f1

    dec de                                        ; $45a7: $1b
    reti                                          ; $45a8: $d9


    sbc $39                                       ; $45a9: $de $39
    ld c, e                                       ; $45ab: $4b
    xor h                                         ; $45ac: $ac
    and [hl]                                      ; $45ad: $a6
    call z, Call_000_332b                         ; $45ae: $cc $2b $33
    ld a, e                                       ; $45b1: $7b
    jp hl                                         ; $45b2: $e9


    ld e, h                                       ; $45b3: $5c
    jp z, Jump_054_43bc                           ; $45b4: $ca $bc $43

    db $ed                                        ; $45b7: $ed
    ret z                                         ; $45b8: $c8

    dec hl                                        ; $45b9: $2b
    sbc [hl]                                      ; $45ba: $9e
    ld [hl], d                                    ; $45bb: $72
    ld a, c                                       ; $45bc: $79
    xor [hl]                                      ; $45bd: $ae
    and l                                         ; $45be: $a5
    db $db                                        ; $45bf: $db
    ld h, a                                       ; $45c0: $67
    ld e, [hl]                                    ; $45c1: $5e
    ld a, [c]                                     ; $45c2: $f2
    ld e, d                                       ; $45c3: $5a
    ldh [$f1], a                                  ; $45c4: $e0 $f1
    ld l, a                                       ; $45c6: $6f
    inc sp                                        ; $45c7: $33
    adc a                                         ; $45c8: $8f
    ret nc                                        ; $45c9: $d0

    rrca                                          ; $45ca: $0f
    ld b, h                                       ; $45cb: $44
    rla                                           ; $45cc: $17

jr_054_45cd:
    inc e                                         ; $45cd: $1c
    adc l                                         ; $45ce: $8d
    inc b                                         ; $45cf: $04
    rst $10                                       ; $45d0: $d7
    add l                                         ; $45d1: $85
    inc bc                                        ; $45d2: $03
    dec b                                         ; $45d3: $05
    ldh a, [rKEY1]                                ; $45d4: $f0 $4d
    ld a, l                                       ; $45d6: $7d
    ld e, c                                       ; $45d7: $59
    ld a, [hl-]                                   ; $45d8: $3a

jr_054_45d9:
    add e                                         ; $45d9: $83
    ld l, c                                       ; $45da: $69
    xor [hl]                                      ; $45db: $ae
    push hl                                       ; $45dc: $e5
    jr nc, jr_054_45d9                            ; $45dd: $30 $fa

    rst $00                                       ; $45df: $c7
    db $e3                                        ; $45e0: $e3
    pop de                                        ; $45e1: $d1
    dec l                                         ; $45e2: $2d
    sbc a                                         ; $45e3: $9f
    ld b, e                                       ; $45e4: $43
    inc a                                         ; $45e5: $3c
    ld h, [hl]                                    ; $45e6: $66
    dec l                                         ; $45e7: $2d
    ld [bc], a                                    ; $45e8: $02
    rst $00                                       ; $45e9: $c7
    call z, $9653                                 ; $45ea: $cc $53 $96
    cp l                                          ; $45ed: $bd
    and [hl]                                      ; $45ee: $a6
    ld [$50ef], a                                 ; $45ef: $ea $ef $50
    adc e                                         ; $45f2: $8b
    dec e                                         ; $45f3: $1d
    ld b, a                                       ; $45f4: $47
    ld e, $49                                     ; $45f5: $1e $49
    db $ed                                        ; $45f7: $ed
    adc b                                         ; $45f8: $88
    rst $38                                       ; $45f9: $ff
    dec c                                         ; $45fa: $0d
    ld [$1c7d], sp                                ; $45fb: $08 $7d $1c
    and $5a                                       ; $45fe: $e6 $5a
    rst $28                                       ; $4600: $ef
    rst $10                                       ; $4601: $d7
    jr c, jr_054_45cd                             ; $4602: $38 $c9

    push bc                                       ; $4604: $c5
    ld h, a                                       ; $4605: $67
    pop hl                                        ; $4606: $e1
    pop hl                                        ; $4607: $e1
    and $01                                       ; $4608: $e6 $01
    ld a, [hl]                                    ; $460a: $7e
    dec l                                         ; $460b: $2d
    db $10                                        ; $460c: $10
    adc a                                         ; $460d: $8f
    ld e, c                                       ; $460e: $59
    adc e                                         ; $460f: $8b
    nop                                           ; $4610: $00
    add hl, sp                                    ; $4611: $39
    ld c, h                                       ; $4612: $4c
    ld a, c                                       ; $4613: $79
    db $fc                                        ; $4614: $fc
    ld l, d                                       ; $4615: $6a
    call nz, $b663                                ; $4616: $c4 $63 $b6
    db $ec                                        ; $4619: $ec
    dec h                                         ; $461a: $25
    and e                                         ; $461b: $a3
    ld [hl], e                                    ; $461c: $73
    dec c                                         ; $461d: $0d
    dec sp                                        ; $461e: $3b
    ld b, b                                       ; $461f: $40
    inc b                                         ; $4620: $04
    db $dd                                        ; $4621: $dd
    ld a, [$5788]                                 ; $4622: $fa $88 $57
    ei                                            ; $4625: $fb
    ld [de], a                                    ; $4626: $12
    inc l                                         ; $4627: $2c
    db $fc                                        ; $4628: $fc
    dec h                                         ; $4629: $25
    db $ec                                        ; $462a: $ec
    call nz, $de8e                                ; $462b: $c4 $8e $de
    ld a, b                                       ; $462e: $78
    ld a, a                                       ; $462f: $7f
    ld [$8f33], a                                 ; $4630: $ea $33 $8f
    ret z                                         ; $4633: $c8

    jp z, Jump_000_2708                           ; $4634: $ca $08 $27

    db $e3                                        ; $4637: $e3
    ld bc, $2d7e                                  ; $4638: $01 $7e $2d
    db $10                                        ; $463b: $10
    adc a                                         ; $463c: $8f
    reti                                          ; $463d: $d9


    or d                                          ; $463e: $b2
    rra                                           ; $463f: $1f
    and e                                         ; $4640: $a3
    rla                                           ; $4641: $17
    sbc a                                         ; $4642: $9f
    db $ec                                        ; $4643: $ec
    jr @+$24                                      ; $4644: $18 $22

    nop                                           ; $4646: $00
    rst $18                                       ; $4647: $df
    or b                                          ; $4648: $b0
    jp Jump_054_4a48                              ; $4649: $c3 $48 $4a


    cp e                                          ; $464c: $bb
    inc e                                         ; $464d: $1c
    sub [hl]                                      ; $464e: $96
    ld a, h                                       ; $464f: $7c
    ld a, [c]                                     ; $4650: $f2
    and h                                         ; $4651: $a4
    sbc $89                                       ; $4652: $de $89
    xor a                                         ; $4654: $af
    xor l                                         ; $4655: $ad
    db $e3                                        ; $4656: $e3
    or b                                          ; $4657: $b0
    di                                            ; $4658: $f3
    and a                                         ; $4659: $a7
    inc e                                         ; $465a: $1c
    db $10                                        ; $465b: $10
    ld b, h                                       ; $465c: $44
    sub d                                         ; $465d: $92
    ld l, e                                       ; $465e: $6b
    ld c, d                                       ; $465f: $4a
    rra                                           ; $4660: $1f
    ld sp, hl                                     ; $4661: $f9
    adc $71                                       ; $4662: $ce $71
    ld l, c                                       ; $4664: $69
    ld b, a                                       ; $4665: $47
    cp e                                          ; $4666: $bb
    call nc, $c30f                                ; $4667: $d4 $0f $c3
    ld d, [hl]                                    ; $466a: $56
    ld d, e                                       ; $466b: $53
    ld h, [hl]                                    ; $466c: $66
    ret c                                         ; $466d: $d8

    ccf                                           ; $466e: $3f
    ld [bc], a                                    ; $466f: $02
    cp l                                          ; $4670: $bd
    db $eb                                        ; $4671: $eb
    ld c, c                                       ; $4672: $49
    ret nc                                        ; $4673: $d0

    xor [hl]                                      ; $4674: $ae
    rst $00                                       ; $4675: $c7
    add l                                         ; $4676: $85
    cp a                                          ; $4677: $bf
    jr c, @+$37                                   ; $4678: $38 $35

    ld [bc], a                                    ; $467a: $02
    cp l                                          ; $467b: $bd
    db $eb                                        ; $467c: $eb
    db $d3                                        ; $467d: $d3
    db $f4                                        ; $467e: $f4
    sub a                                         ; $467f: $97
    sub b                                         ; $4680: $90
    ld a, [de]                                    ; $4681: $1a
    ld bc, $65f7                                  ; $4682: $01 $f7 $65
    ld h, [hl]                                    ; $4685: $66
    sub a                                         ; $4686: $97
    halt                                          ; $4687: $76
    dec a                                         ; $4688: $3d
    xor a                                         ; $4689: $af
    ld c, d                                       ; $468a: $4a
    sub e                                         ; $468b: $93
    ld a, [de]                                    ; $468c: $1a
    ld bc, $c477                                  ; $468d: $01 $77 $c4
    add sp, -$5b                                  ; $4690: $e8 $a5
    ld h, b                                       ; $4692: $60
    ld c, l                                       ; $4693: $4d
    ld a, b                                       ; $4694: $78
    and l                                         ; $4695: $a5
    or h                                          ; $4696: $b4
    ei                                            ; $4697: $fb
    ld sp, $297a                                  ; $4698: $31 $7a $29
    ld e, b                                       ; $469b: $58
    inc de                                        ; $469c: $13
    ld e, [hl]                                    ; $469d: $5e
    add hl, hl                                    ; $469e: $29
    ld [$0221], sp                                ; $469f: $08 $21 $02
    add b                                         ; $46a2: $80
    db $dd                                        ; $46a3: $dd
    or h                                          ; $46a4: $b4
    inc hl                                        ; $46a5: $23
    sub d                                         ; $46a6: $92
    ld a, a                                       ; $46a7: $7f

jr_054_46a8:
    and [hl]                                      ; $46a8: $a6
    db $f4                                        ; $46a9: $f4
    cp c                                          ; $46aa: $b9
    ld b, [hl]                                    ; $46ab: $46
    cp b                                          ; $46ac: $b8
    pop af                                        ; $46ad: $f1
    adc $8f                                       ; $46ae: $ce $8f
    pop de                                        ; $46b0: $d1
    and l                                         ; $46b1: $a5
    db $dd                                        ; $46b2: $dd
    and c                                         ; $46b3: $a1
    jr nz, @-$7a                                  ; $46b4: $20 $84

    ld [$a68d], a                                 ; $46b6: $ea $8d $a6
    ld l, d                                       ; $46b9: $6a
    jp z, $74bc                                   ; $46ba: $ca $bc $74

    ei                                            ; $46bd: $fb
    db $eb                                        ; $46be: $eb
    dec c                                         ; $46bf: $0d
    ldh [$8e], a                                  ; $46c0: $e0 $8e
    db $db                                        ; $46c2: $db
    ld l, a                                       ; $46c3: $6f
    cp a                                          ; $46c4: $bf
    db $e3                                        ; $46c5: $e3
    sbc [hl]                                      ; $46c6: $9e
    sbc $10                                       ; $46c7: $de $10
    ld bc, $ebbd                                  ; $46c9: $01 $bd $eb
    db $d3                                        ; $46cc: $d3
    db $f4                                        ; $46cd: $f4
    sub a                                         ; $46ce: $97
    jr nc, jr_054_46a8                            ; $46cf: $30 $d7

    sub h                                         ; $46d1: $94
    ld a, c                                       ; $46d2: $79
    ld h, l                                       ; $46d3: $65
    ld h, [hl]                                    ; $46d4: $66
    adc a                                         ; $46d5: $8f
    ret nc                                        ; $46d6: $d0

Call_054_46d7:
    adc a                                         ; $46d7: $8f
    ld a, c                                       ; $46d8: $79
    ld [hl], h                                    ; $46d9: $74
    xor [hl]                                      ; $46da: $ae
    add hl, hl                                    ; $46db: $29
    rlca                                          ; $46dc: $07
    db $ed                                        ; $46dd: $ed
    ld a, d                                       ; $46de: $7a
    ld e, [hl]                                    ; $46df: $5e
    sub l                                         ; $46e0: $95
    ld b, $ee                                     ; $46e1: $06 $ee
    ld d, $1f                                     ; $46e3: $16 $1f
    sbc [hl]                                      ; $46e5: $9e
    jp nc, $a817                                  ; $46e6: $d2 $17 $a8

    ld e, d                                       ; $46e9: $5a
    ld c, $a3                                     ; $46ea: $0e $a3
    cp a                                          ; $46ec: $bf
    adc b                                         ; $46ed: $88
    ld l, e                                       ; $46ee: $6b
    jp hl                                         ; $46ef: $e9


    ld e, h                                       ; $46f0: $5c
    jp z, $f53c                                   ; $46f1: $ca $3c $f5

    sbc c                                         ; $46f4: $99
    ld hl, $b702                                  ; $46f5: $21 $02 $b7
    ld a, a                                       ; $46f8: $7f
    sub c                                         ; $46f9: $91
    and l                                         ; $46fa: $a5
    ld [hl], e                                    ; $46fb: $73
    add hl, hl                                    ; $46fc: $29
    di                                            ; $46fd: $f3
    call nc, $d667                                ; $46fe: $d4 $67 $d6
    xor $be                                       ; $4701: $ee $be
    call z, $d2ec                                 ; $4703: $cc $ec $d2
    adc $ad                                       ; $4706: $ce $ad
    cp c                                          ; $4708: $b9
    sub [hl]                                      ; $4709: $96
    db $fc                                        ; $470a: $fc
    ld [hl], $a5                                  ; $470b: $36 $a5
    rrca                                          ; $470d: $0f
    rst $38                                       ; $470e: $ff
    jp $991e                                      ; $470f: $c3 $1e $99


    dec l                                         ; $4712: $2d
    ld h, c                                       ; $4713: $61
    xor a                                         ; $4714: $af

Call_054_4715:
    dec [hl]                                      ; $4715: $35
    sub a                                         ; $4716: $97
    sub l                                         ; $4717: $95
    daa                                           ; $4718: $27
    ld d, h                                       ; $4719: $54
    cpl                                           ; $471a: $2f
    inc b                                         ; $471b: $04
    db $fd                                        ; $471c: $fd
    ld d, d                                       ; $471d: $52
    inc d                                         ; $471e: $14
    add h                                         ; $471f: $84
    sub b                                         ; $4720: $90
    ret z                                         ; $4721: $c8

    jp z, $fc3c                                   ; $4722: $ca $3c $fc

    sbc c                                         ; $4725: $99
    ld hl, $0884                                  ; $4726: $21 $84 $08
    or a                                          ; $4729: $b7
    ld a, a                                       ; $472a: $7f
    sub c                                         ; $472b: $91
    and l                                         ; $472c: $a5
    ld [hl], e                                    ; $472d: $73
    add hl, hl                                    ; $472e: $29
    di                                            ; $472f: $f3
    call nc, $d667                                ; $4730: $d4 $67 $d6
    xor [hl]                                      ; $4733: $ae
    rst $20                                       ; $4734: $e7
    ld d, l                                       ; $4735: $55
    ld l, c                                       ; $4736: $69
    or h                                          ; $4737: $b4
    db $eb                                        ; $4738: $eb
    jr c, jr_054_4747                             ; $4739: $38 $0c

    ld d, e                                       ; $473b: $53
    and e                                         ; $473c: $a3
    cp e                                          ; $473d: $bb
    ld e, d                                       ; $473e: $5a
    ldh a, [$b0]                                  ; $473f: $f0 $b0
    push de                                       ; $4741: $d5
    ld c, b                                       ; $4742: $48
    ld l, d                                       ; $4743: $6a
    rst $00                                       ; $4744: $c7
    ld h, l                                       ; $4745: $65
    sbc h                                         ; $4746: $9c

jr_054_4747:
    push hl                                       ; $4747: $e5
    ld e, e                                       ; $4748: $5b
    jr nz, jr_054_474d                            ; $4749: $20 $02

    or a                                          ; $474b: $b7
    ld e, h                                       ; $474c: $5c

jr_054_474d:
    sub d                                         ; $474d: $92
    cp [hl]                                       ; $474e: $be
    inc h                                         ; $474f: $24
    db $ed                                        ; $4750: $ed
    jp $fa53                                      ; $4751: $c3 $53 $fa


    add sp, $7f                                   ; $4754: $e8 $7f
    add hl, bc                                    ; $4756: $09
    db $fd                                        ; $4757: $fd
    ld b, l                                       ; $4758: $45
    ld e, h                                       ; $4759: $5c
    ld c, e                                       ; $475a: $4b
    rst $20                                       ; $475b: $e7
    ld c, e                                       ; $475c: $4b
    jp nc, $92f9                                  ; $475d: $d2 $f9 $92

    ld [hl], h                                    ; $4760: $74
    ld l, $65                                     ; $4761: $2e $65
    sbc [hl]                                      ; $4763: $9e
    ld a, [$10cc]                                 ; $4764: $fa $cc $10
    ld b, d                                       ; $4767: $42
    and l                                         ; $4768: $a5
    cpl                                           ; $4769: $2f
    ld sp, $35ef                                  ; $476a: $31 $ef $35
    ld d, l                                       ; $476d: $55
    ld a, a                                       ; $476e: $7f
    ld b, h                                       ; $476f: $44
    ld h, d                                       ; $4770: $62
    cp h                                          ; $4771: $bc
    sub e                                         ; $4772: $93
    pop af                                        ; $4773: $f1
    adc b                                         ; $4774: $88
    call c, Call_054_6b94                         ; $4775: $dc $94 $6b
    ld e, l                                       ; $4778: $5d
    ld a, [de]                                    ; $4779: $1a
    rrca                                          ; $477a: $0f
    ld e, e                                       ; $477b: $5b
    ld c, l                                       ; $477c: $4d
    add hl, sp                                    ; $477d: $39
    ld b, b                                       ; $477e: $40
    inc b                                         ; $477f: $04
    add b                                         ; $4780: $80
    rst $38                                       ; $4781: $ff
    add hl, sp                                    ; $4782: $39
    sbc $61                                       ; $4783: $de $61
    dec hl                                        ; $4785: $2b
    rst $10                                       ; $4786: $d7
    ld c, b                                       ; $4787: $48
    ld l, d                                       ; $4788: $6a
    cp l                                          ; $4789: $bd
    ld e, a                                       ; $478a: $5f
    db $e3                                        ; $478b: $e3
    inc h                                         ; $478c: $24
    rla                                           ; $478d: $17
    rst $08                                       ; $478e: $cf
    dec [hl]                                      ; $478f: $35
    ld a, [hl-]                                   ; $4790: $3a
    rla                                           ; $4791: $17
    sbc a                                         ; $4792: $9f
    rst $00                                       ; $4793: $c7
    inc a                                         ; $4794: $3c
    ld a, [hl-]                                   ; $4795: $3a
    ld d, a                                       ; $4796: $57
    ld e, d                                       ; $4797: $5a
    ld d, a                                       ; $4798: $57
    cp h                                          ; $4799: $bc
    adc h                                         ; $479a: $8c
    adc e                                         ; $479b: $8b
    ld d, d                                       ; $479c: $52
    sub $ae                                       ; $479d: $d6 $ae
    rst $20                                       ; $479f: $e7
    ld d, l                                       ; $47a0: $55
    ld l, c                                       ; $47a1: $69
    jr nz, jr_054_47a6                            ; $47a2: $20 $02

    or a                                          ; $47a4: $b7

Jump_054_47a5:
    push de                                       ; $47a5: $d5

jr_054_47a6:
    sub h                                         ; $47a6: $94
    sbc c                                         ; $47a7: $99
    cp l                                          ; $47a8: $bd
    sbc $f5                                       ; $47a9: $de $f5
    ld l, c                                       ; $47ab: $69
    ld a, [$b84b]                                 ; $47ac: $fa $4b $b8
    inc h                                         ; $47af: $24
    sbc l                                         ; $47b0: $9d
    ld c, e                                       ; $47b1: $4b
    sbc c                                         ; $47b2: $99
    ld a, e                                       ; $47b3: $7b
    ld hl, $f8f7                                  ; $47b4: $21 $f7 $f8
    ld l, e                                       ; $47b7: $6b
    sub a                                         ; $47b8: $97
    db $fc                                        ; $47b9: $fc
    cp c                                          ; $47ba: $b9
    or $d7                                        ; $47bb: $f6 $d7
    ld b, e                                       ; $47bd: $43
    sbc l                                         ; $47be: $9d
    ld [hl], h                                    ; $47bf: $74
    and e                                         ; $47c0: $a3
    ld c, $44                                     ; $47c1: $0e $44
    dec a                                         ; $47c3: $3d
    call nc, $3749                                ; $47c4: $d4 $49 $37
    ld [$b5cc], a                                 ; $47c7: $ea $cc $b5
    or h                                          ; $47ca: $b4
    rrca                                          ; $47cb: $0f
    and a                                         ; $47cc: $a7
    ld b, [hl]                                    ; $47cd: $46
    db $dd                                        ; $47ce: $dd
    ld a, $27                                     ; $47cf: $3e $27
    ld [hl], c                                    ; $47d1: $71
    sub l                                         ; $47d2: $95
    or l                                          ; $47d3: $b5
    ld d, e                                       ; $47d4: $53
    ld h, [hl]                                    ; $47d5: $66
    or $5c                                        ; $47d6: $f6 $5c
    inc bc                                        ; $47d8: $03
    ldh a, [rNR12]                                ; $47d9: $f0 $12
    adc c                                         ; $47db: $89
    dec l                                         ; $47dc: $2d
    ld b, e                                       ; $47dd: $43
    inc b                                         ; $47de: $04
    ld [hl], a                                    ; $47df: $77
    ld c, b                                       ; $47e0: $48
    or b                                          ; $47e1: $b0
    db $ec                                        ; $47e2: $ec
    inc [hl]                                      ; $47e3: $34
    xor d                                         ; $47e4: $aa
    ld b, $e0                                     ; $47e5: $06 $e0
    dec h                                         ; $47e7: $25
    ld [de], a                                    ; $47e8: $12
    ld e, e                                       ; $47e9: $5b
    ld c, [hl]                                    ; $47ea: $4e
    adc l                                         ; $47eb: $8d
    nop                                           ; $47ec: $00

jr_054_47ed:
    or a                                          ; $47ed: $b7
    push de                                       ; $47ee: $d5
    ld [$98fd], sp                                ; $47ef: $08 $fd $98
    rst $10                                       ; $47f2: $d7
    ld a, [hl]                                    ; $47f3: $7e
    db $f4                                        ; $47f4: $f4
    ld a, [hl+]                                   ; $47f5: $2a
    or e                                          ; $47f6: $b3
    reti                                          ; $47f7: $d9


    dec sp                                        ; $47f8: $3b
    add hl, de                                    ; $47f9: $19
    ld c, a                                       ; $47fa: $4f
    sbc c                                         ; $47fb: $99
    reti                                          ; $47fc: $d9


    ld c, e                                       ; $47fd: $4b
    rst $20                                       ; $47fe: $e7
    ld d, d                                       ; $47ff: $52
    and $5e                                       ; $4800: $e6 $5e
    ld [$66dd], sp                                ; $4802: $08 $dd $66
    or $5c                                        ; $4805: $f6 $5c
    ld c, e                                       ; $4807: $4b
    pop bc                                        ; $4808: $c1
    sbc d                                         ; $4809: $9a
    ldh a, [rWY]                                  ; $480a: $f0 $4a
    and l                                         ; $480c: $a5
    ld b, [hl]                                    ; $480d: $46
    add hl, hl                                    ; $480e: $29
    ld e, b                                       ; $480f: $58
    inc de                                        ; $4810: $13
    ld e, [hl]                                    ; $4811: $5e
    xor c                                         ; $4812: $a9
    push hl                                       ; $4813: $e5
    call nz, $d7b5                                ; $4814: $c4 $b5 $d7
    sbc d                                         ; $4817: $9a
    ld d, e                                       ; $4818: $53
    inc hl                                        ; $4819: $23
    db $dd                                        ; $481a: $dd
    and $b9                                       ; $481b: $e6 $b9
    ld b, [hl]                                    ; $481d: $46
    inc a                                         ; $481e: $3c
    xor h                                         ; $481f: $ac
    sbc l                                         ; $4820: $9d
    ld [hl-], a                                   ; $4821: $32
    rst $08                                       ; $4822: $cf
    or l                                          ; $4823: $b5
    sbc [hl]                                      ; $4824: $9e
    ld d, a                                       ; $4825: $57
    and l                                         ; $4826: $a5
    reti                                          ; $4827: $d9


    ld a, l                                       ; $4828: $7d
    sbc c                                         ; $4829: $99
    reti                                          ; $482a: $d9


    sub l                                         ; $482b: $95
    ld a, [de]                                    ; $482c: $1a
    ld bc, $1a29                                  ; $482d: $01 $29 $1a
    ld d, c                                       ; $4830: $51
    ld d, e                                       ; $4831: $53
    and $fd                                       ; $4832: $e6 $fd
    jr jr_054_4873                                ; $4834: $18 $3d

    rst $10                                       ; $4836: $d7
    inc h                                         ; $4837: $24
    ld a, e                                       ; $4838: $7b
    ld hl, $d263                                  ; $4839: $21 $63 $d2
    jp hl                                         ; $483c: $e9


    ld e, h                                       ; $483d: $5c
    ld l, d                                       ; $483e: $6a
    db $fc                                        ; $483f: $fc
    db $db                                        ; $4840: $db
    sub h                                         ; $4841: $94
    add e                                         ; $4842: $83
    halt                                          ; $4843: $76
    rst $30                                       ; $4844: $f7
    ld h, l                                       ; $4845: $65
    ld h, [hl]                                    ; $4846: $66
    rla                                           ; $4847: $17
    ld b, h                                       ; $4848: $44
    add hl, hl                                    ; $4849: $29
    cp a                                          ; $484a: $bf
    halt                                          ; $484b: $76
    rst $08                                       ; $484c: $cf
    adc a                                         ; $484d: $8f
    cp c                                          ; $484e: $b9
    cp l                                          ; $484f: $bd
    inc sp                                        ; $4850: $33
    push hl                                       ; $4851: $e5
    db $dd                                        ; $4852: $dd
    db $fd                                        ; $4853: $fd
    pop af                                        ; $4854: $f1
    pop de                                        ; $4855: $d1

jr_054_4856:
    ld e, h                                       ; $4856: $5c
    ld [bc], a                                    ; $4857: $02
    jr nc, jr_054_47ed                            ; $4858: $30 $93

    db $e4                                        ; $485a: $e4
    sub a                                         ; $485b: $97
    ret nz                                        ; $485c: $c0

    ld e, c                                       ; $485d: $59
    or h                                          ; $485e: $b4
    inc hl                                        ; $485f: $23
    db $f4                                        ; $4860: $f4
    ld [hl], e                                    ; $4861: $73
    ret z                                         ; $4862: $c8

    xor [hl]                                      ; $4863: $ae
    add sp, $76                                   ; $4864: $e8 $76
    cp h                                          ; $4866: $bc
    cp a                                          ; $4867: $bf
    sbc $f5                                       ; $4868: $de $f5
    ld l, c                                       ; $486a: $69
    ld a, [$604b]                                 ; $486b: $fa $4b $60
    xor d                                         ; $486e: $aa
    call nz, $1dac                                ; $486f: $c4 $ac $1d
    rst $38                                       ; $4872: $ff

jr_054_4873:
    ld [hl], $ee                                  ; $4873: $36 $ee
    ld e, b                                       ; $4875: $58
    ld a, h                                       ; $4876: $7c
    ret c                                         ; $4877: $d8

    xor c                                         ; $4878: $a9
    ld de, $de7d                                  ; $4879: $11 $7d $de
    sub d                                         ; $487c: $92
    ld a, a                                       ; $487d: $7f
    ld c, $c3                                     ; $487e: $0e $c3
    push af                                       ; $4880: $f5
    ld l, [hl]                                    ; $4881: $6e
    ld c, a                                       ; $4882: $4f
    adc l                                         ; $4883: $8d
    adc $35                                       ; $4884: $ce $35
    ld l, d                                       ; $4886: $6a
    inc [hl]                                      ; $4887: $34
    dec [hl]                                      ; $4888: $35
    push hl                                       ; $4889: $e5
    jr nc, jr_054_48f8                            ; $488a: $30 $6c

    dec [hl]                                      ; $488c: $35
    sub d                                         ; $488d: $92
    ld e, d                                       ; $488e: $5a
    ld a, e                                       ; $488f: $7b
    pop bc                                        ; $4890: $c1
    inc c                                         ; $4891: $0c
    ld de, $4210                                  ; $4892: $11 $10 $42
    inc b                                         ; $4895: $04
    db $dd                                        ; $4896: $dd
    ld a, [$6b8e]                                 ; $4897: $fa $8e $6b
    ret c                                         ; $489a: $d8

    ld h, c                                       ; $489b: $61
    ld a, [hl-]                                   ; $489c: $3a
    rst $28                                       ; $489d: $ef
    ld h, h                                       ; $489e: $64
    inc a                                         ; $489f: $3c
    bit 4, d                                      ; $48a0: $cb $62
    rst $00                                       ; $48a2: $c7
    ld sp, $a76a                                  ; $48a3: $31 $6a $a7
    ld c, e                                       ; $48a6: $4b
    jr jr_054_4856                                ; $48a7: $18 $ad

    add hl, hl                                    ; $48a9: $29
    db $ed                                        ; $48aa: $ed
    or b                                          ; $48ab: $b0
    ld h, l                                       ; $48ac: $65
    jp z, $9ecc                                   ; $48ad: $ca $cc $9e

    ld l, e                                       ; $48b0: $6b
    ccf                                           ; $48b1: $3f
    ld b, [hl]                                    ; $48b2: $46
    ld c, a                                       ; $48b3: $4f
    ld a, l                                       ; $48b4: $7d
    and $a5                                       ; $48b5: $e6 $a5
    ld [hl], e                                    ; $48b7: $73
    add hl, hl                                    ; $48b8: $29
    adc b                                         ; $48b9: $88
    nop                                           ; $48ba: $00
    ld [hl], a                                    ; $48bb: $77
    call nz, $a9e8                                ; $48bc: $c4 $e8 $a9
    rst $08                                       ; $48bf: $cf
    cp h                                          ; $48c0: $bc
    ld [hl], h                                    ; $48c1: $74
    ld l, $05                                     ; $48c2: $2e $05
    ld hl, $d43c                                  ; $48c4: $21 $3c $d4
    cp b                                          ; $48c7: $b8
    cp $61                                        ; $48c8: $fe $61
    ld [$0221], sp                                ; $48ca: $08 $21 $02
    ld a, l                                       ; $48cd: $7d
    ld e, [hl]                                    ; $48ce: $5e
    ld [$fe01], a                                 ; $48cf: $ea $01 $fe
    ld [hl], e                                    ; $48d2: $73
    dec l                                         ; $48d3: $2d
    ld [hl], c                                    ; $48d4: $71
    ld d, e                                       ; $48d5: $53
    ccf                                           ; $48d6: $3f
    inc l                                         ; $48d7: $2c
    or h                                          ; $48d8: $b4
    and a                                         ; $48d9: $a7
    ld b, [hl]                                    ; $48da: $46
    rst $20                                       ; $48db: $e7
    jp c, $29e3                                   ; $48dc: $da $e3 $29

    ld a, l                                       ; $48df: $7d
    jp hl                                         ; $48e0: $e9


    and $59                                       ; $48e1: $e6 $59
    or $92                                        ; $48e3: $f6 $92
    push hl                                       ; $48e5: $e5
    ld [hl], e                                    ; $48e6: $73
    ld d, d                                       ; $48e7: $52
    inc hl                                        ; $48e8: $23
    dec a                                         ; $48e9: $3d
    xor a                                         ; $48ea: $af
    ld c, d                                       ; $48eb: $4a
    sub e                                         ; $48ec: $93
    ld a, d                                       ; $48ed: $7a
    dec a                                         ; $48ee: $3d
    xor [hl]                                      ; $48ef: $ae
    sbc h                                         ; $48f0: $9c
    cp b                                          ; $48f1: $b8
    ld d, d                                       ; $48f2: $52
    inc hl                                        ; $48f3: $23
    nop                                           ; $48f4: $00
    ld e, a                                       ; $48f5: $5f
    adc h                                         ; $48f6: $8c
    ld [hl], b                                    ; $48f7: $70

jr_054_48f8:
    ld a, l                                       ; $48f8: $7d
    inc e                                         ; $48f9: $1c
    ld b, [hl]                                    ; $48fa: $46
    ld [hl], a                                    ; $48fb: $77
    dec [hl]                                      ; $48fc: $35
    or $b0                                        ; $48fd: $f6 $b0
    jp Jump_054_67da                              ; $48ff: $c3 $da $67


    ld e, [hl]                                    ; $4902: $5e
    ld a, [hl-]                                   ; $4903: $3a
    rla                                           ; $4904: $17
    rst $00                                       ; $4905: $c7
    adc h                                         ; $4906: $8c
    or c                                          ; $4907: $b1
    dec b                                         ; $4908: $05
    ld [hl+], a                                   ; $4909: $22
    dec a                                         ; $490a: $3d
    adc c                                         ; $490b: $89
    pop af                                        ; $490c: $f1
    ld e, h                                       ; $490d: $5c
    ld d, e                                       ; $490e: $53
    sub [hl]                                      ; $490f: $96
    pop hl                                        ; $4910: $e1
    daa                                           ; $4911: $27
    ld h, d                                       ; $4912: $62
    sbc c                                         ; $4913: $99
    ld [hl], d                                    ; $4914: $72
    dec l                                         ; $4915: $2d
    sub e                                         ; $4916: $93
    and h                                         ; $4917: $a4
    add a                                         ; $4918: $87
    xor l                                         ; $4919: $ad
    and [hl]                                      ; $491a: $a6
    call z, $f13b                                 ; $491b: $cc $3b $f1
    dec d                                         ; $491e: $15
    jp hl                                         ; $491f: $e9


    pop de                                        ; $4920: $d1
    dec e                                         ; $4921: $1d
    rra                                           ; $4922: $1f
    ld [hl], e                                    ; $4923: $73
    xor a                                         ; $4924: $af
    push af                                       ; $4925: $f5
    inc a                                         ; $4926: $3c
    reti                                          ; $4927: $d9


    ld [hl], c                                    ; $4928: $71
    ld c, l                                       ; $4929: $4d
    rst $20                                       ; $492a: $e7
    sbc l                                         ; $492b: $9d
    adc h                                         ; $492c: $8c
    ld b, a                                       ; $492d: $47
    inc a                                         ; $492e: $3c
    add hl, de                                    ; $492f: $19
    pop af                                        ; $4930: $f1
    ret c                                         ; $4931: $d8

Call_054_4932:
    dec [hl]                                      ; $4932: $35
    db $ec                                        ; $4933: $ec
    nop                                           ; $4934: $00
    ld de, $e6dd                                  ; $4935: $11 $dd $e6
    cp c                                          ; $4938: $b9
    sub [hl]                                      ; $4939: $96
    jp nc, $82f4                                  ; $493a: $d2 $f4 $82

    db $eb                                        ; $493d: $eb
    ld a, c                                       ; $493e: $79
    ld [hl-], a                                   ; $493f: $32
    rst $10                                       ; $4940: $d7
    ld e, d                                       ; $4941: $5a
    ld e, a                                       ; $4942: $5f
    push hl                                       ; $4943: $e5
    jp c, Jump_054_6ddf                           ; $4944: $da $df $6d

    db $ed                                        ; $4947: $ed
    rst $00                                       ; $4948: $c7
    di                                            ; $4949: $f3
    res 6, l                                      ; $494a: $cb $b5
    inc e                                         ; $494c: $1c
    ld b, [hl]                                    ; $494d: $46
    add sp, -$19                                  ; $494e: $e8 $e7
    or b                                          ; $4950: $b0
    and [hl]                                      ; $4951: $a6
    ld e, h                                       ; $4952: $5c
    ei                                            ; $4953: $fb
    ld c, e                                       ; $4954: $4b
    pop bc                                        ; $4955: $c1
    sbc d                                         ; $4956: $9a
    ldh a, [rWY]                                  ; $4957: $f0 $4a
    pop bc                                        ; $4959: $c1
    db $dd                                        ; $495a: $dd
    rst $30                                       ; $495b: $f7
    adc $99                                       ; $495c: $ce $99
    ld [hl], d                                    ; $495e: $72
    jr @-$61                                      ; $495f: $18 $9d

    ld l, e                                       ; $4961: $6b
    call nz, Call_054_70c3                        ; $4962: $c4 $c3 $70
    dec a                                         ; $4965: $3d
    ld c, a                                       ; $4966: $4f
    or $c7                                        ; $4967: $f6 $c7
    ld a, d                                       ; $4969: $7a
    and l                                         ; $496a: $a5
    sbc a                                         ; $496b: $9f
    ld e, b                                       ; $496c: $58
    and $da                                       ; $496d: $e6 $da
    sbc l                                         ; $496f: $9d
    ld h, l                                       ; $4970: $65
    add hl, bc                                    ; $4971: $09
    call $8e37                                    ; $4972: $cd $37 $8e
    ld a, b                                       ; $4975: $78
    ld [hl-], a                                   ; $4976: $32
    ld e, l                                       ; $4977: $5d
    sub h                                         ; $4978: $94
    dec hl                                        ; $4979: $2b
    ld sp, hl                                     ; $497a: $f9
    rst $00                                       ; $497b: $c7
    or l                                          ; $497c: $b5
    cp a                                          ; $497d: $bf
    db $db                                        ; $497e: $db
    ld [hl], e                                    ; $497f: $73
    sbc l                                         ; $4980: $9d
    db $e4                                        ; $4981: $e4
    push de                                       ; $4982: $d5
    ld [hl], b                                    ; $4983: $70
    and $9d                                       ; $4984: $e6 $9d
    db $e4                                        ; $4986: $e4
    dec d                                         ; $4987: $15
    dec sp                                        ; $4988: $3b
    ld [$d872], a                                 ; $4989: $ea $72 $d8
    dec b                                         ; $498c: $05
    rst $10                                       ; $498d: $d7
    db $ed                                        ; $498e: $ed
    sbc l                                         ; $498f: $9d
    rst $28                                       ; $4990: $ef
    jp c, $a5e3                                   ; $4991: $da $e3 $a5

jr_054_4994:
    inc [hl]                                      ; $4994: $34
    cp l                                          ; $4995: $bd
    and $9a                                       ; $4996: $e6 $9a
    adc $9e                                       ; $4998: $ce $9e
    sbc c                                         ; $499a: $99
    ld e, l                                       ; $499b: $5d
    db $eb                                        ; $499c: $eb
    db $e4                                        ; $499d: $e4
    ld [hl], h                                    ; $499e: $74
    jp c, $e232                                   ; $499f: $da $32 $e2

    ret                                           ; $49a2: $c9


    add c                                         ; $49a3: $81
    ld [$1c7d], sp                                ; $49a4: $08 $7d $1c
    sub [hl]                                      ; $49a7: $96
    ld l, [hl]                                    ; $49a8: $6e
    ld e, [hl]                                    ; $49a9: $5e
    ld a, [c]                                     ; $49aa: $f2
    ld e, d                                       ; $49ab: $5a
    ldh [$f1], a                                  ; $49ac: $e0 $f1
    ld l, a                                       ; $49ae: $6f
    db $eb                                        ; $49af: $eb
    ld e, l                                       ; $49b0: $5d
    sbc a                                         ; $49b1: $9f
    and [hl]                                      ; $49b2: $a6
    cp a                                          ; $49b3: $bf
    add h                                         ; $49b4: $84
    call nc, $b708                                ; $49b5: $d4 $08 $b7
    or a                                          ; $49b8: $b7
    call z, $1dac                                 ; $49b9: $cc $ac $1d
    add b                                         ; $49bc: $80
    inc l                                         ; $49bd: $2c
    and d                                         ; $49be: $a2
    ld c, c                                       ; $49bf: $49
    adc l                                         ; $49c0: $8d
    nop                                           ; $49c1: $00
    db $dd                                        ; $49c2: $dd
    ld l, a                                       ; $49c3: $6f
    ld sp, $ec63                                  ; $49c4: $31 $63 $ec
    sbc d                                         ; $49c7: $9a
    jp nc, $1e77                                  ; $49c8: $d2 $77 $1e

    add $96                                       ; $49cb: $c6 $96
    ld h, c                                       ; $49cd: $61
    xor e                                         ; $49ce: $ab
    cp l                                          ; $49cf: $bd
    sub $bc                                       ; $49d0: $d6 $bc
    ld a, h                                       ; $49d2: $7c
    adc $9e                                       ; $49d3: $ce $9e
    xor b                                         ; $49d5: $a8
    ld [hl], d                                    ; $49d6: $72
    ld l, d                                       ; $49d7: $6a
    inc b                                         ; $49d8: $04
    scf                                           ; $49d9: $37
    or a                                          ; $49da: $b7
    and $5e                                       ; $49db: $e6 $5e
    inc bc                                        ; $49dd: $03
    db $ec                                        ; $49de: $ec
    ld b, $21                                     ; $49df: $06 $21
    db $ec                                        ; $49e1: $ec
    adc e                                         ; $49e2: $8b
    add b                                         ; $49e3: $80
    db $10                                        ; $49e4: $10
    ld b, d                                       ; $49e5: $42
    ld [bc], a                                    ; $49e6: $02
    ld h, e                                       ; $49e7: $63
    ld [$0221], sp                                ; $49e8: $08 $21 $02

Call_054_49eb:
    db $dd                                        ; $49eb: $dd
    ld l, a                                       ; $49ec: $6f

Jump_054_49ed:
    xor [hl]                                      ; $49ed: $ae
    dec h                                         ; $49ee: $25
    xor a                                         ; $49ef: $af
    dec b                                         ; $49f0: $05
    adc e                                         ; $49f1: $8b
    sub a                                         ; $49f2: $97
    inc de                                        ; $49f3: $13
    rst $10                                       ; $49f4: $d7
    ld h, c                                       ; $49f5: $61
    adc d                                         ; $49f6: $8a
    add hl, de                                    ; $49f7: $19
    ld c, $b0                                     ; $49f8: $0e $b0
    ld e, e                                       ; $49fa: $5b
    call z, $5b18                                 ; $49fb: $cc $18 $5b
    add $bf                                       ; $49fe: $c6 $bf
    call $d13c                                    ; $4a00: $cd $3c $d1
    jr nc, jr_054_4994                            ; $4a03: $30 $8f

    xor d                                         ; $4a05: $aa
    sub c                                         ; $4a06: $91
    call nc, $bf7a                                ; $4a07: $d4 $7a $bf
    add $49                                       ; $4a0a: $c6 $49
    ld l, $4e                                     ; $4a0c: $2e $4e
    cp l                                          ; $4a0e: $bd
    cp e                                          ; $4a0f: $bb
    sbc $d2                                       ; $4a10: $de $d2
    ld c, a                                       ; $4a12: $4f
    and d                                         ; $4a13: $a2
    sbc c                                         ; $4a14: $99
    dec l                                         ; $4a15: $2d
    ld c, e                                       ; $4a16: $4b
    dec sp                                        ; $4a17: $3b
    ld l, b                                       ; $4a18: $68
    ld b, h                                       ; $4a19: $44
    sbc h                                         ; $4a1a: $9c
    ld a, [de]                                    ; $4a1b: $1a
    ld bc, $5129                                  ; $4a1c: $01 $29 $51
    inc hl                                        ; $4a1f: $23

jr_054_4a20:
    ld l, d                                       ; $4a20: $6a
    jp z, $5f61                                   ; $4a21: $ca $61 $5f

    ld h, h                                       ; $4a24: $64
    ld a, a                                       ; $4a25: $7f
    add hl, hl                                    ; $4a26: $29
    sbc h                                         ; $4a27: $9c
    db $eb                                        ; $4a28: $eb
    cp h                                          ; $4a29: $bc
    ld h, [hl]                                    ; $4a2a: $66
    pop de                                        ; $4a2b: $d1
    adc $ad                                       ; $4a2c: $ce $ad
    cp c                                          ; $4a2e: $b9
    adc $d2                                       ; $4a2f: $ce $d2
    db $ed                                        ; $4a31: $ed
    rst $10                                       ; $4a32: $d7
    sub h                                         ; $4a33: $94
    cp [hl]                                       ; $4a34: $be
    rra                                           ; $4a35: $1f
    and e                                         ; $4a36: $a3
    sub a                                         ; $4a37: $97
    cp h                                          ; $4a38: $bc
    ld d, $38                                     ; $4a39: $16 $38
    dec [hl]                                      ; $4a3b: $35
    ld [bc], a                                    ; $4a3c: $02
    dec a                                         ; $4a3d: $3d
    xor a                                         ; $4a3e: $af
    or $63                                        ; $4a3f: $f6 $63
    db $f4                                        ; $4a41: $f4
    ld hl, sp-$55                                 ; $4a42: $f8 $ab
    pop af                                        ; $4a44: $f1
    ld l, a                                       ; $4a45: $6f
    and e                                         ; $4a46: $a3
    halt                                          ; $4a47: $76

Jump_054_4a48:
    db $e4                                        ; $4a48: $e4
    push bc                                       ; $4a49: $c5
    add sp, $09                                   ; $4a4a: $e8 $09
    and l                                         ; $4a4c: $a5
    ld e, l                                       ; $4a4d: $5d
    rst $00                                       ; $4a4e: $c7
    ld h, c                                       ; $4a4f: $61
    sbc b                                         ; $4a50: $98
    jp c, $1a89                                   ; $4a51: $da $89 $1a

    ld d, c                                       ; $4a54: $51
    ld e, $76                                     ; $4a55: $1e $76
    ld e, b                                       ; $4a57: $58
    ld c, $4b                                     ; $4a58: $0e $4b
    or a                                          ; $4a5a: $b7
    cp a                                          ; $4a5b: $bf
    db $e4                                        ; $4a5c: $e4
    or l                                          ; $4a5d: $b5
    ret nz                                        ; $4a5e: $c0

    db $10                                        ; $4a5f: $10
    ld bc, $e6dd                                  ; $4a60: $01 $dd $e6
    cp c                                          ; $4a63: $b9
    or $25                                        ; $4a64: $f6 $25
    ld e, b                                       ; $4a66: $58
    ld hl, sp+$4b                                 ; $4a67: $f8 $4b
    jr jr_054_4a20                                ; $4a69: $18 $b5

    ret nc                                        ; $4a6b: $d0

    jp hl                                         ; $4a6c: $e9


    ld a, [hl+]                                   ; $4a6d: $2a
    adc a                                         ; $4a6e: $8f
    ld [hl], b                                    ; $4a6f: $70
    ld c, l                                       ; $4a70: $4d
    ld h, a                                       ; $4a71: $67
    jp Jump_054_43dd                              ; $4a72: $c3 $dd $43


    adc l                                         ; $4a75: $8d
    adc $e5                                       ; $4a76: $ce $e5
    ld b, b                                       ; $4a78: $40
    push de                                       ; $4a79: $d5
    ld e, [hl]                                    ; $4a7a: $5e
    db $e3                                        ; $4a7b: $e3
    ld a, l                                       ; $4a7c: $7d
    ld de, $2fef                                  ; $4a7d: $11 $ef $2f
    add l                                         ; $4a80: $85
    ld [hl], e                                    ; $4a81: $73
    sbc l                                         ; $4a82: $9d
    rst $10                                       ; $4a83: $d7
    inc l                                         ; $4a84: $2c
    db $10                                        ; $4a85: $10
    ld bc, $c93d                                  ; $4a86: $01 $3d $c9
    ccf                                           ; $4a89: $3f
    ld d, e                                       ; $4a8a: $53
    ld a, [$b530]                                 ; $4a8b: $fa $30 $b5
    ld c, h                                       ; $4a8e: $4c
    sub d                                         ; $4a8f: $92
    ei                                            ; $4a90: $fb
    dec sp                                        ; $4a91: $3b
    dec e                                         ; $4a92: $1d
    inc sp                                        ; $4a93: $33
    ld a, e                                       ; $4a94: $7b
    and $77                                       ; $4a95: $e6 $77
    ld a, [hl-]                                   ; $4a97: $3a
    sbc $9f                                       ; $4a98: $de $9f
    ld h, l                                       ; $4a9a: $65
    db $f4                                        ; $4a9b: $f4
    dec hl                                        ; $4a9c: $2b
    sub $ce                                       ; $4a9d: $d6 $ce
    dec [hl]                                      ; $4a9f: $35
    ld h, l                                       ; $4aa0: $65
    sbc [hl]                                      ; $4aa1: $9e
    ld h, l                                       ; $4aa2: $65
    ld hl, sp-$7b                                 ; $4aa3: $f8 $85
    ld a, a                                       ; $4aa5: $7f
    ld [c], a                                     ; $4aa6: $e2
    ld d, h                                       ; $4aa7: $54
    ld d, a                                       ; $4aa8: $57
    db $ed                                        ; $4aa9: $ed
    adc a                                         ; $4aaa: $8f
    ld a, b                                       ; $4aab: $78
    xor l                                         ; $4aac: $ad
    ld e, c                                       ; $4aad: $59
    ld b, [hl]                                    ; $4aae: $46
    cp b                                          ; $4aaf: $b8
    halt                                          ; $4ab0: $76
    ld [hl-], a                                   ; $4ab1: $32
    ld e, $dd                                     ; $4ab2: $1e $dd
    ld d, l                                       ; $4ab4: $55
    xor [hl]                                      ; $4ab5: $ae
    add hl, hl                                    ; $4ab6: $29
    add a                                         ; $4ab7: $87
    xor c                                         ; $4ab8: $a9
    rst $08                                       ; $4ab9: $cf
    db $10                                        ; $4aba: $10
    ld bc, $e6dd                                  ; $4abb: $01 $dd $e6
    dec h                                         ; $4abe: $25
    cp a                                          ; $4abf: $bf
    and d                                         ; $4ac0: $a2
    ld l, e                                       ; $4ac1: $6b
    daa                                           ; $4ac2: $27
    db $e3                                        ; $4ac3: $e3
    and l                                         ; $4ac4: $a5
    inc [hl]                                      ; $4ac5: $34
    cp l                                          ; $4ac6: $bd
    and $5a                                       ; $4ac7: $e6 $5a
    ld c, [hl]                                    ; $4ac9: $4e
    ld e, h                                       ; $4aca: $5c
    xor a                                         ; $4acb: $af
    or c                                          ; $4acc: $b1
    halt                                          ; $4acd: $76
    ld [hl], h                                    ; $4ace: $74
    ld l, $f5                                     ; $4acf: $2e $f5
    ld b, a                                       ; $4ad1: $47
    inc a                                         ; $4ad2: $3c
    ld e, c                                       ; $4ad3: $59
    ld h, d                                       ; $4ad4: $62
    ld e, $91                                     ; $4ad5: $1e $91
    db $e4                                        ; $4ad7: $e4
    jp c, $cd6b                                   ; $4ad8: $da $6b $cd

    ld d, e                                       ; $4adb: $53
    ld e, $7e                                     ; $4adc: $1e $7e
    pop hl                                        ; $4ade: $e1
    sbc a                                         ; $4adf: $9f
    add sp, -$57                                  ; $4ae0: $e8 $a9
    xor [hl]                                      ; $4ae2: $ae
    or d                                          ; $4ae3: $b2
    ld a, b                                       ; $4ae4: $78
    ld l, $b8                                     ; $4ae5: $2e $b8
    ld l, [hl]                                    ; $4ae7: $6e
    di                                            ; $4ae8: $f3
    ld e, h                                       ; $4ae9: $5c
    ld d, e                                       ; $4aea: $53
    ld d, $f1                                     ; $4aeb: $16 $f1
    cp $88                                        ; $4aed: $fe $88
    rst $10                                       ; $4aef: $d7
    sbc d                                         ; $4af0: $9a
    ld h, l                                       ; $4af1: $65
    call nz, $a593                                ; $4af2: $c4 $93 $a5
    ld c, e                                       ; $4af5: $4b
    adc a                                         ; $4af6: $8f
    xor [hl]                                      ; $4af7: $ae
    ld h, c                                       ; $4af8: $61
    rra                                           ; $4af9: $1f
    add [hl]                                      ; $4afa: $86
    ld [$4d29], sp                                ; $4afb: $08 $29 $4d
    xor a                                         ; $4afe: $af
    or e                                          ; $4aff: $b3
    ret c                                         ; $4b00: $d8

    sbc $39                                       ; $4b01: $de $39
    xor [hl]                                      ; $4b03: $ae
    adc h                                         ; $4b04: $8c
    sub a                                         ; $4b05: $97
    jp $1662                                      ; $4b06: $c3 $62 $16


    adc $35                                       ; $4b09: $ce $35

jr_054_4b0b:
    rst $10                                       ; $4b0b: $d7
    ld [$c4d7], sp                                ; $4b0c: $08 $d7 $c4
    jp z, Jump_000_3d70                           ; $4b0f: $ca $70 $3d

    ld c, a                                       ; $4b12: $4f
    and $9a                                       ; $4b13: $e6 $9a
    or d                                          ; $4b15: $b2
    ld c, h                                       ; $4b16: $4c
    ld a, $7d                                     ; $4b17: $3e $7d
    ld a, h                                       ; $4b19: $7c
    ret c                                         ; $4b1a: $d8

    ld l, e                                       ; $4b1b: $6b
    ld a, l                                       ; $4b1c: $7d
    sub l                                         ; $4b1d: $95
    swap d                                        ; $4b1e: $cb $32
    jp nz, $1105                                  ; $4b20: $c2 $05 $11

    ld [hl], a                                    ; $4b23: $77
    add e                                         ; $4b24: $83
    ld c, [hl]                                    ; $4b25: $4e
    ld de, $c8bd                                  ; $4b26: $11 $bd $c8
    or e                                          ; $4b29: $b3
    sbc b                                         ; $4b2a: $98
    add l                                         ; $4b2b: $85
    ld [hl], e                                    ; $4b2c: $73
    call Call_000_3fb5                            ; $4b2d: $cd $b5 $3f
    ld h, l                                       ; $4b30: $65
    ld de, $fccf                                  ; $4b31: $11 $cf $fc
    ld c, [hl]                                    ; $4b34: $4e
    rst $00                                       ; $4b35: $c7
    ld [bc], a                                    ; $4b36: $02
    rlca                                          ; $4b37: $07
    ldh a, [$63]                                  ; $4b38: $f0 $63
    adc e                                         ; $4b3a: $8b
    ld b, a                                       ; $4b3b: $47
    ld e, b                                       ; $4b3c: $58
    call nz, $e967                                ; $4b3d: $c4 $67 $e9
    xor [hl]                                      ; $4b40: $ae
    sbc d                                         ; $4b41: $9a
    jp nc, $b847                                  ; $4b42: $d2 $47 $b8

    dec e                                         ; $4b45: $1d
    sbc $8f                                       ; $4b46: $de $8f
    pop de                                        ; $4b48: $d1
    adc e                                         ; $4b49: $8b
    add hl, de                                    ; $4b4a: $19
    ld h, e                                       ; $4b4b: $63
    adc a                                         ; $4b4c: $8f
    adc $b5                                       ; $4b4d: $ce $b5
    ld h, e                                       ; $4b4f: $63
    pop hl                                        ; $4b50: $e1
    pop af                                        ; $4b51: $f1
    ld l, a                                       ; $4b52: $6f
    xor c                                         ; $4b53: $a9
    ld de, $fb80                                  ; $4b54: $11 $80 $fb
    xor d                                         ; $4b57: $aa
    pop de                                        ; $4b58: $d1
    cp c                                          ; $4b59: $b9
    adc $8f                                       ; $4b5a: $ce $8f
    db $fc                                        ; $4b5c: $fc
    inc bc                                        ; $4b5d: $03
    ld e, h                                       ; $4b5e: $5c
    or a                                          ; $4b5f: $b7
    ld a, c                                       ; $4b60: $79
    add h                                         ; $4b61: $84
    ld b, l                                       ; $4b62: $45
    cp c                                          ; $4b63: $b9
    or $78                                        ; $4b64: $f6 $78
    sbc h                                         ; $4b66: $9c
    ld sp, $62f6                                  ; $4b67: $31 $f6 $62
    ld a, e                                       ; $4b6a: $7b
    rst $20                                       ; $4b6b: $e7
    cp b                                          ; $4b6c: $b8
    ld [hl-], a                                   ; $4b6d: $32
    ld e, [hl]                                    ; $4b6e: $5e
    ld c, $8b                                     ; $4b6f: $0e $8b
    ld e, c                                       ; $4b71: $59
    jr c, jr_054_4b0b                             ; $4b72: $38 $97

    ld l, e                                       ; $4b74: $6b
    pop af                                        ; $4b75: $f1
    ret                                           ; $4b76: $c9


    ld c, [hl]                                    ; $4b77: $4e
    db $ec                                        ; $4b78: $ec
    add sp, -$33                                  ; $4b79: $e8 $cd
    dec bc                                        ; $4b7b: $0b
    ld c, a                                       ; $4b7c: $4f
    ld c, [hl]                                    ; $4b7d: $4e
    db $f4                                        ; $4b7e: $f4
    db $e4                                        ; $4b7f: $e4
    db $d3                                        ; $4b80: $d3
    rst $00                                       ; $4b81: $c7
    db $e3                                        ; $4b82: $e3
    cpl                                           ; $4b83: $2f
    ld bc, $f722                                  ; $4b84: $01 $22 $f7
    ld d, b                                       ; $4b87: $50
    or l                                          ; $4b88: $b5
    adc [hl]                                      ; $4b89: $8e
    jp Jump_054_6b8e                              ; $4b8a: $c3 $8e $6b


    inc h                                         ; $4b8d: $24
    dec [hl]                                      ; $4b8e: $35
    cp $d8                                        ; $4b8f: $fe $d8
    and c                                         ; $4b91: $a1
    cp l                                          ; $4b92: $bd
    ld [hl], e                                    ; $4b93: $73
    inc l                                         ; $4b94: $2c
    sub $ce                                       ; $4b95: $d6 $ce
    dec [hl]                                      ; $4b97: $35
    ld h, l                                       ; $4b98: $65
    sbc $8f                                       ; $4b99: $de $8f
    pop de                                        ; $4b9b: $d1
    ld c, e                                       ; $4b9c: $4b
    cp a                                          ; $4b9d: $bf
    ld a, [c]                                     ; $4b9e: $f2
    add sp, $5c                                   ; $4b9f: $e8 $5c
    and e                                         ; $4ba1: $a3
    halt                                          ; $4ba2: $76
    inc a                                         ; $4ba3: $3c
    ld [hl+], a                                   ; $4ba4: $22
    ld sp, hl                                     ; $4ba5: $f9
    dec l                                         ; $4ba6: $2d
    sbc d                                         ; $4ba7: $9a
    ld b, a                                       ; $4ba8: $47
    add sp, $67                                   ; $4ba9: $e8 $67
    daa                                           ; $4bab: $27
    db $e3                                        ; $4bac: $e3
    ld de, $46af                                  ; $4bad: $11 $af $46
    scf                                           ; $4bb0: $37
    rra                                           ; $4bb1: $1f
    ld e, $99                                     ; $4bb2: $1e $99
    dec l                                         ; $4bb4: $2d
    ld bc, $8fae                                  ; $4bb5: $01 $ae $8f
    jp Jump_054_6b8e                              ; $4bb8: $c3 $8e $6b


    inc h                                         ; $4bbb: $24
    dec [hl]                                      ; $4bbc: $35
    ld h, l                                       ; $4bbd: $65
    inc a                                         ; $4bbe: $3c
    ld a, [hl-]                                   ; $4bbf: $3a
    sub a                                         ; $4bc0: $97
    ld a, [$5e53]                                 ; $4bc1: $fa $53 $5e
    ld l, b                                       ; $4bc4: $68
    sbc a                                         ; $4bc5: $9f
    res 6, l                                      ; $4bc6: $cb $b5
    ld b, e                                       ; $4bc8: $43
    adc l                                         ; $4bc9: $8d
    cp $c2                                        ; $4bca: $fe $c2
    db $10                                        ; $4bcc: $10
    ld bc, $e6dd                                  ; $4bcd: $01 $dd $e6
    cp c                                          ; $4bd0: $b9
    ld h, $d9                                     ; $4bd1: $26 $d9
    jp $c39a                                      ; $4bd3: $c3 $9a $c3


    rst $38                                       ; $4bd6: $ff
    call nz, Call_054_5625                        ; $4bd7: $c4 $25 $56
    ld d, e                                       ; $4bda: $53
    and $a5                                       ; $4bdb: $e6 $a5
    cp e                                          ; $4bdd: $bb
    sbc b                                         ; $4bde: $98
    dec e                                         ; $4bdf: $1d
    inc sp                                        ; $4be0: $33
    or e                                          ; $4be1: $b3
    ld a, c                                       ; $4be2: $79
    db $fc                                        ; $4be3: $fc
    db $db                                        ; $4be4: $db
    xor $79                                       ; $4be5: $ee $79
    daa                                           ; $4be7: $27
    jp nz, Jump_054_71f5                          ; $4be8: $c2 $f5 $71

    ret c                                         ; $4beb: $d8

    ld [hl], c                                    ; $4bec: $71
    db $ed                                        ; $4bed: $ed
    pop af                                        ; $4bee: $f1
    adc b                                         ; $4bef: $88
    daa                                           ; $4bf0: $27
    dec bc                                        ; $4bf1: $0b
    ld d, h                                       ; $4bf2: $54
    db $ed                                        ; $4bf3: $ed
    adc e                                         ; $4bf4: $8b
    ld c, h                                       ; $4bf5: $4c
    cp c                                          ; $4bf6: $b9
    or h                                          ; $4bf7: $b4
    jp $bd96                                      ; $4bf8: $c3 $96 $bd


    and [hl]                                      ; $4bfb: $a6
    ld [$f1ef], a                                 ; $4bfc: $ea $ef $f1
    adc b                                         ; $4bff: $88
    daa                                           ; $4c00: $27
    adc e                                         ; $4c01: $8b
    add hl, de                                    ; $4c02: $19
    ld h, e                                       ; $4c03: $63
    rst $10                                       ; $4c04: $d7
    ld [hl], h                                    ; $4c05: $74
    add [hl]                                      ; $4c06: $86
    ld [$ec29], sp                                ; $4c07: $08 $29 $ec
    cpl                                           ; $4c0a: $2f
    jr c, @-$33                                   ; $4c0b: $38 $cb

    pop hl                                        ; $4c0d: $e1
    or d                                          ; $4c0e: $b2
    ld a, b                                       ; $4c0f: $78
    ld a, [hl-]                                   ; $4c10: $3a
    ld e, e                                       ; $4c11: $5b
    add sp, $5c                                   ; $4c12: $e8 $5c
    ld l, e                                       ; $4c14: $6b
    ld a, l                                       ; $4c15: $7d
    sub l                                         ; $4c16: $95
    dec hl                                        ; $4c17: $2b
    jp hl                                         ; $4c18: $e9


    xor e                                         ; $4c19: $ab
    call c, Call_054_798e                         ; $4c1a: $dc $8e $79
    ld c, c                                       ; $4c1d: $49
    adc [hl]                                      ; $4c1e: $8e
    db $ec                                        ; $4c1f: $ec
    sbc d                                         ; $4c20: $9a
    ld [$37aa], a                                 ; $4c21: $ea $aa $37
    jp nz, Jump_054_53cd                          ; $4c24: $c2 $cd $53

    cpl                                           ; $4c27: $2f
    ld e, b                                       ; $4c28: $58
    or h                                          ; $4c29: $b4
    jp $6596                                      ; $4c2a: $c3 $96 $65


    inc a                                         ; $4c2d: $3c
    ld a, c                                       ; $4c2e: $79
    call z, Call_000_276f                         ; $4c2f: $cc $6f $27
    daa                                           ; $4c32: $27
    xor [hl]                                      ; $4c33: $ae
    add hl, hl                                    ; $4c34: $29
    ld b, e                                       ; $4c35: $43
    inc b                                         ; $4c36: $04
    db $dd                                        ; $4c37: $dd
    and $9d                                       ; $4c38: $e6 $9d
    ld hl, sp-$26                                 ; $4c3a: $f8 $da
    sub d                                         ; $4c3c: $92
    ld a, a                                       ; $4c3d: $7f
    ld c, $4b                                     ; $4c3e: $0e $4b
    adc [hl]                                      ; $4c40: $8e
    ld c, e                                       ; $4c41: $4b
    ld a, [$cf2a]                                 ; $4c42: $fa $2a $cf
    ld [hl-], a                                   ; $4c45: $32
    jp nz, $bb18                                  ; $4c46: $c2 $18 $bb

    db $fd                                        ; $4c49: $fd
    jr nc, @-$50                                  ; $4c4a: $30 $ae

    ld b, a                                       ; $4c4c: $47
    sub d                                         ; $4c4d: $92
    db $e3                                        ; $4c4e: $e3
    rst $18                                       ; $4c4f: $df
    ld b, [hl]                                    ; $4c50: $46
    dec de                                        ; $4c51: $1b
    or e                                          ; $4c52: $b3
    ld h, a                                       ; $4c53: $67
    ld a, [hl]                                    ; $4c54: $7e
    and a                                         ; $4c55: $a7
    db $e3                                        ; $4c56: $e3
    ld de, $fdae                                  ; $4c57: $11 $ae $fd
    add l                                         ; $4c5a: $85
    daa                                           ; $4c5b: $27
    pop bc                                        ; $4c5c: $c1
    and d                                         ; $4c5d: $a2
    dec e                                         ; $4c5e: $1d
    or [hl]                                       ; $4c5f: $b6
    xor h                                         ; $4c60: $ac
    db $e3                                        ; $4c61: $e3
    or b                                          ; $4c62: $b0
    call nz, Call_000_1fbc                        ; $4c63: $c4 $bc $1f
    and e                                         ; $4c66: $a3
    ld b, a                                       ; $4c67: $47
    inc h                                         ; $4c68: $24
    ld l, a                                       ; $4c69: $6f
    jp z, $13b2                                   ; $4c6a: $ca $b2 $13

    dec sp                                        ; $4c6d: $3b
    ld a, d                                       ; $4c6e: $7a
    ld [hl], e                                    ; $4c6f: $73
    db $ed                                        ; $4c70: $ed
    jr c, jr_054_4c9f                             ; $4c71: $38 $2c

    db $fd                                        ; $4c73: $fd
    ld [hl+], a                                   ; $4c74: $22
    ld b, h                                       ; $4c75: $44
    rst $30                                       ; $4c76: $f7
    cp l                                          ; $4c77: $bd
    ld [hl], e                                    ; $4c78: $73
    sub [hl]                                      ; $4c79: $96
    ld c, c                                       ; $4c7a: $49
    ld [hl], d                                    ; $4c7b: $72
    ld b, h                                       ; $4c7c: $44
    ld a, [c]                                     ; $4c7d: $f2
    rst $08                                       ; $4c7e: $cf
    sub h                                         ; $4c7f: $94
    ld a, $e2                                     ; $4c80: $3e $e2
    push de                                       ; $4c82: $d5
    ret c                                         ; $4c83: $d8

    ld [de], a                                    ; $4c84: $12
    ld a, c                                       ; $4c85: $79
    jp z, $5f61                                   ; $4c86: $ca $61 $5f

    ld h, h                                       ; $4c89: $64
    inc h                                         ; $4c8a: $24
    or l                                          ; $4c8b: $b5
    ei                                            ; $4c8c: $fb
    ld a, [hl]                                    ; $4c8d: $7e
    sub l                                         ; $4c8e: $95
    sub e                                         ; $4c8f: $93
    adc a                                         ; $4c90: $8f
    ret                                           ; $4c91: $c9


    or e                                          ; $4c92: $b3
    sbc b                                         ; $4c93: $98
    add l                                         ; $4c94: $85
    ld [hl], e                                    ; $4c95: $73
    db $dd                                        ; $4c96: $dd
    jr c, jr_054_4cfe                             ; $4c97: $38 $65

    ld e, [hl]                                    ; $4c99: $5e
    and b                                         ; $4c9a: $a0
    ld l, d                                       ; $4c9b: $6a
    sub [hl]                                      ; $4c9c: $96
    pop de                                        ; $4c9d: $d1
    xor a                                         ; $4c9e: $af

jr_054_4c9f:
    or l                                          ; $4c9f: $b5
    db $d3                                        ; $4ca0: $d3
    ld a, c                                       ; $4ca1: $79
    sub c                                         ; $4ca2: $91
    ld b, a                                       ; $4ca3: $47
    rst $10                                       ; $4ca4: $d7
    dec de                                        ; $4ca5: $1b
    db $dd                                        ; $4ca6: $dd
    ld [hl], c                                    ; $4ca7: $71
    add hl, hl                                    ; $4ca8: $29
    rst $08                                       ; $4ca9: $cf
    db $fc                                        ; $4caa: $fc
    ld c, [hl]                                    ; $4cab: $4e
    rst $00                                       ; $4cac: $c7
    dec hl                                        ; $4cad: $2b
    inc sp                                        ; $4cae: $33
    cpl                                           ; $4caf: $2f
    or c                                          ; $4cb0: $b1
    jp c, $eaf9                                   ; $4cb1: $da $f9 $ea

    db $ed                                        ; $4cb4: $ed
    dec h                                         ; $4cb5: $25
    ld d, e                                       ; $4cb6: $53
    ld e, l                                       ; $4cb7: $5d
    push af                                       ; $4cb8: $f5
    ld b, [hl]                                    ; $4cb9: $46
    inc a                                         ; $4cba: $3c
    add hl, sp                                    ; $4cbb: $39

Jump_054_4cbc:
    db $10                                        ; $4cbc: $10
    ld bc, $c9b7                                  ; $4cbd: $01 $b7 $c9
    ld e, [hl]                                    ; $4cc0: $5e
    ld [hl-], a                                   ; $4cc1: $32
    push af                                       ; $4cc2: $f5
    rst $08                                       ; $4cc3: $cf
    pop af                                        ; $4cc4: $f1
    ld b, d                                       ; $4cc5: $42
    ld a, l                                       ; $4cc6: $7d
    sbc d                                         ; $4cc7: $9a
    cp [hl]                                       ; $4cc8: $be
    db $e4                                        ; $4cc9: $e4
    ldh a, [$63]                                  ; $4cca: $f0 $63
    db $dd                                        ; $4ccc: $dd
    ld [c], a                                     ; $4ccd: $e2
    sbc l                                         ; $4cce: $9d
    ld hl, sp-$26                                 ; $4ccf: $f8 $da
    sub d                                         ; $4cd1: $92
    ld a, a                                       ; $4cd2: $7f
    ld c, $8f                                     ; $4cd3: $0e $8f
    xor $2a                                       ; $4cd5: $ee $2a
    adc a                                         ; $4cd7: $8f
    ld a, a                                       ; $4cd8: $7f
    sbc e                                         ; $4cd9: $9b
    ld h, l                                       ; $4cda: $65
    add h                                         ; $4cdb: $84
    dec de                                        ; $4cdc: $1b
    rst $28                                       ; $4cdd: $ef
    adc c                                         ; $4cde: $89
    ld e, b                                       ; $4cdf: $58
    ld d, $9e                                     ; $4ce0: $16 $9e
    inc b                                         ; $4ce2: $04
    adc b                                         ; $4ce3: $88
    nop                                           ; $4ce4: $00
    or a                                          ; $4ce5: $b7
    ret                                           ; $4ce6: $c9


    ld e, [hl]                                    ; $4ce7: $5e
    or d                                          ; $4ce8: $b2
    ld d, b                                       ; $4ce9: $50
    sbc a                                         ; $4cea: $9f
    and [hl]                                      ; $4ceb: $a6
    dec l                                         ; $4cec: $2d
    ld e, [hl]                                    ; $4ced: $5e
    ld a, h                                       ; $4cee: $7c
    ld [hl-], a                                   ; $4cef: $32
    cp d                                          ; $4cf0: $ba
    ld l, c                                       ; $4cf1: $69
    and [hl]                                      ; $4cf2: $a6
    inc e                                         ; $4cf3: $1c
    add $bf                                       ; $4cf4: $c6 $bf
    call $27b2                                    ; $4cf6: $cd $b2 $27
    ld h, d                                       ; $4cf9: $62
    sbc c                                         ; $4cfa: $99
    ld sp, hl                                     ; $4cfb: $f9
    sbc l                                         ; $4cfc: $9d
    adc [hl]                                      ; $4cfd: $8e

jr_054_4cfe:
    ld hl, $8484                                  ; $4cfe: $21 $84 $84
    dec de                                        ; $4d01: $1b
    ld c, a                                       ; $4d02: $4f
    ld h, a                                       ; $4d03: $67
    rr [hl]                                       ; $4d04: $cb $1e
    ld c, a                                       ; $4d06: $4f
    ld e, c                                       ; $4d07: $59
    ld d, [hl]                                    ; $4d08: $56
    ld e, l                                       ; $4d09: $5d
    push hl                                       ; $4d0a: $e5
    jp c, $8071                                   ; $4d0b: $da $71 $80

    ld [$1c7d], sp                                ; $4d0e: $08 $7d $1c
    ld b, [hl]                                    ; $4d11: $46
    cp h                                          ; $4d12: $bc
    jp c, $aa6b                                   ; $4d13: $da $6b $aa

    cp $8e                                        ; $4d16: $fe $8e
    sbc c                                         ; $4d18: $99
    daa                                           ; $4d19: $27
    reti                                          ; $4d1a: $d9


    or d                                          ; $4d1b: $b2
    ld b, b                                       ; $4d1c: $40
    db $ed                                        ; $4d1d: $ed
    adc e                                         ; $4d1e: $8b
    db $ec                                        ; $4d1f: $ec
    dec h                                         ; $4d20: $25
    ld d, e                                       ; $4d21: $53
    sub [hl]                                      ; $4d22: $96
    dec [hl]                                      ; $4d23: $35
    ld [$a7b0], a                                 ; $4d24: $ea $b0 $a7
    cp d                                          ; $4d27: $ba
    ld [$b12d], a                                 ; $4d28: $ea $2d $b1
    sbc d                                         ; $4d2b: $9a
    ld a, d                                       ; $4d2c: $7a
    jr jr_054_4d8a                                ; $4d2d: $18 $5b

    and [hl]                                      ; $4d2f: $a6
    ld e, h                                       ; $4d30: $5c
    db $10                                        ; $4d31: $10
    ld bc, $bdf7                                  ; $4d32: $01 $f7 $bd
    ld [hl], e                                    ; $4d35: $73
    and [hl]                                      ; $4d36: $a6
    inc e                                         ; $4d37: $1c
    ld b, [hl]                                    ; $4d38: $46
    rst $20                                       ; $4d39: $e7
    ld a, [de]                                    ; $4d3a: $1a
    or l                                          ; $4d3b: $b5
    ld [hl], h                                    ; $4d3c: $74
    cp l                                          ; $4d3d: $bd
    db $e3                                        ; $4d3e: $e3
    ld a, l                                       ; $4d3f: $7d
    sub c                                         ; $4d40: $91
    db $fd                                        ; $4d41: $fd
    dec a                                         ; $4d42: $3d
    ld d, c                                       ; $4d43: $51
    push hl                                       ; $4d44: $e5
    inc sp                                        ; $4d45: $33
    cp $d8                                        ; $4d46: $fe $d8
    dec b                                         ; $4d48: $05
    rst $10                                       ; $4d49: $d7
    db $ed                                        ; $4d4a: $ed
    pop de                                        ; $4d4b: $d1
    call $bd87                                    ; $4d4c: $cd $87 $bd
    sub a                                         ; $4d4f: $97
    xor h                                         ; $4d50: $ac
    push af                                       ; $4d51: $f5
    ld d, l                                       ; $4d52: $55
    ld l, $f1                                     ; $4d53: $2e $f1
    jp nz, Jump_000_29af                          ; $4d55: $c2 $af $29

    add a                                         ; $4d58: $87
    pop hl                                        ; $4d59: $e1
    cpl                                           ; $4d5a: $2f
    ld a, [$b321]                                 ; $4d5b: $fa $21 $b3
    dec h                                         ; $4d5e: $25
    adc h                                         ; $4d5f: $8c
    ld c, b                                       ; $4d60: $48
    cp $99                                        ; $4d61: $fe $99
    jp nc, $92f7                                  ; $4d63: $d2 $f7 $92

    ld [hl], h                                    ; $4d66: $74
    ld l, c                                       ; $4d67: $69
    ret c                                         ; $4d68: $d8

    dec [hl]                                      ; $4d69: $35
    ld e, l                                       ; $4d6a: $5d
    sub h                                         ; $4d6b: $94
    dec hl                                        ; $4d6c: $2b
    ld sp, hl                                     ; $4d6d: $f9
    ld b, a                                       ; $4d6e: $47
    cp [hl]                                       ; $4d6f: $be
    inc b                                         ; $4d70: $04
    res 2, h                                      ; $4d71: $cb $94
    rlc a                                         ; $4d73: $cb $07
    ld [hl+], a                                   ; $4d75: $22
    db $dd                                        ; $4d76: $dd
    sub [hl]                                      ; $4d77: $96
    ld de, $d8c6                                  ; $4d78: $11 $c6 $d8

jr_054_4d7b:
    db $ed                                        ; $4d7b: $ed
    rlca                                          ; $4d7c: $07
    adc a                                         ; $4d7d: $8f
    ld a, [hl]                                    ; $4d7e: $7e
    xor l                                         ; $4d7f: $ad
    sbc l                                         ; $4d80: $9d
    adc $8b                                       ; $4d81: $ce $8b
    ld l, h                                       ; $4d83: $6c
    reti                                          ; $4d84: $d9


    sbc a                                         ; $4d85: $9f
    ld b, l                                       ; $4d86: $45
    ld e, c                                       ; $4d87: $59
    or $92                                        ; $4d88: $f6 $92

jr_054_4d8a:
    add l                                         ; $4d8a: $85
    daa                                           ; $4d8b: $27
    pop bc                                        ; $4d8c: $c1
    ld [hl-], a                                   ; $4d8d: $32
    rst $10                                       ; $4d8e: $d7
    inc l                                         ; $4d8f: $2c
    dec sp                                        ; $4d90: $3b
    ld a, [c]                                     ; $4d91: $f2
    ld a, [hl+]                                   ; $4d92: $2a
    pop af                                        ; $4d93: $f1
    sbc a                                         ; $4d94: $9f
    ld e, b                                       ; $4d95: $58
    adc l                                         ; $4d96: $8d
    ld a, a                                       ; $4d97: $7f
    dec de                                        ; $4d98: $1b
    sub a                                         ; $4d99: $97
    ld d, l                                       ; $4d9a: $55
    rst $00                                       ; $4d9b: $c7
    inc sp                                        ; $4d9c: $33
    cp a                                          ; $4d9d: $bf
    db $d3                                        ; $4d9e: $d3
    ld sp, $8044                                  ; $4d9f: $31 $44 $80
    ei                                            ; $4da2: $fb
    xor d                                         ; $4da3: $aa
    pop de                                        ; $4da4: $d1
    cp c                                          ; $4da5: $b9
    adc $8f                                       ; $4da6: $ce $8f
    db $fc                                        ; $4da8: $fc
    jp Jump_000_24fe                              ; $4da9: $c3 $fe $24


    sub a                                         ; $4dac: $97
    or d                                          ; $4dad: $b2
    jr z, jr_054_4d7b                             ; $4dae: $28 $cb

    ld e, [hl]                                    ; $4db0: $5e
    or d                                          ; $4db1: $b2
    ldh a, [rNR50]                                ; $4db2: $f0 $24
    ld e, b                                       ; $4db4: $58
    ld b, [hl]                                    ; $4db5: $46
    cp b                                          ; $4db6: $b8
    ldh [$7a], a                                  ; $4db7: $e0 $7a
    sub d                                         ; $4db9: $92
    ld a, a                                       ; $4dba: $7f
    and [hl]                                      ; $4dbb: $a6
    db $f4                                        ; $4dbc: $f4
    db $fd                                        ; $4dbd: $fd
    jr @+$3f                                      ; $4dbe: $18 $3d

    ld a, [c]                                     ; $4dc0: $f2
    sbc l                                         ; $4dc1: $9d
    db $e3                                        ; $4dc2: $e3
    sbc d                                         ; $4dc3: $9a
    ld [hl], d                                    ; $4dc4: $72
    ret nc                                        ; $4dc5: $d0

    ld l, $3e                                     ; $4dc6: $2e $3e
    sbc c                                         ; $4dc8: $99
    jp nc, $bc47                                  ; $4dc9: $d2 $47 $bc

    ld b, h                                       ; $4dcc: $44
    cp h                                          ; $4dcd: $bc
    ccf                                           ; $4dce: $3f
    rrc b                                         ; $4dcf: $cb $08
    scf                                           ; $4dd1: $37
    sbc $13                                       ; $4dd2: $de $13
    or c                                          ; $4dd4: $b1
    call z, Call_054_4efc                         ; $4dd5: $cc $fc $4e
    rst $00                                       ; $4dd8: $c7
    db $10                                        ; $4dd9: $10
    ld bc, $bdf7                                  ; $4dda: $01 $f7 $bd
    ld [hl], e                                    ; $4ddd: $73
    sub [hl]                                      ; $4dde: $96
    ld c, c                                       ; $4ddf: $49
    ld [hl], d                                    ; $4de0: $72
    ld [hl], h                                    ; $4de1: $74
    xor [hl]                                      ; $4de2: $ae
    push bc                                       ; $4de3: $c5
    call z, $f16c                                 ; $4de4: $cc $6c $f1
    ld c, d                                       ; $4de7: $4a
    rla                                           ; $4de8: $17
    push bc                                       ; $4de9: $c5
    bit 7, b                                      ; $4dea: $cb $78
    inc h                                         ; $4dec: $24
    or l                                          ; $4ded: $b5
    inc de                                        ; $4dee: $13
    ld [hl], e                                    ; $4def: $73
    or e                                          ; $4df0: $b3
    ret nz                                        ; $4df1: $c0

    ld [hl], l                                    ; $4df2: $75
    cp e                                          ; $4df3: $bb
    or $45                                        ; $4df4: $f6 $45
    inc a                                         ; $4df6: $3c
    ld [c], a                                     ; $4df7: $e2
    push de                                       ; $4df8: $d5
    call c, $b89c                                 ; $4df9: $dc $9c $b8
    ld d, $3a                                     ; $4dfc: $16 $3a
    add $bc                                       ; $4dfe: $c6 $bc
    di                                            ; $4e00: $f3
    and d                                         ; $4e01: $a2
    ld l, e                                       ; $4e02: $6b
    add hl, sp                                    ; $4e03: $39
    adc h                                         ; $4e04: $8c
    cp a                                          ; $4e05: $bf
    add h                                         ; $4e06: $84
    dec e                                         ; $4e07: $1d
    ld l, d                                       ; $4e08: $6a
    call $bc12                                    ; $4e09: $cd $12 $bc
    sbc $af                                       ; $4e0c: $de $af
    ld [hl], c                                    ; $4e0e: $71
    sub d                                         ; $4e0f: $92
    adc e                                         ; $4e10: $8b
    ld b, a                                       ; $4e11: $47
    cp h                                          ; $4e12: $bc
    sbc d                                         ; $4e13: $9a
    db $e3                                        ; $4e14: $e3
    ld sp, hl                                     ; $4e15: $f9
    add a                                         ; $4e16: $87
    ld e, l                                       ; $4e17: $5d
    inc c                                         ; $4e18: $0c
    ld de, $1c7d                                  ; $4e19: $11 $7d $1c
    sub $f4                                       ; $4e1c: $d6 $f4
    ld [hl], d                                    ; $4e1e: $72
    adc l                                         ; $4e1f: $8d
    and h                                         ; $4e20: $a4
    ld b, [hl]                                    ; $4e21: $46
    inc h                                         ; $4e22: $24
    ld l, a                                       ; $4e23: $6f
    daa                                           ; $4e24: $27
    db $e3                                        ; $4e25: $e3
    cp c                                          ; $4e26: $b9
    or $a7                                        ; $4e27: $f6 $a7
    inc l                                         ; $4e29: $2c
    dec bc                                        ; $4e2a: $0b
    ld c, a                                       ; $4e2b: $4f
    add d                                         ; $4e2c: $82
    ld h, l                                       ; $4e2d: $65
    daa                                           ; $4e2e: $27
    db $e3                                        ; $4e2f: $e3
    push af                                       ; $4e30: $f5
    add sp, -$48                                  ; $4e31: $e8 $b8
    ld sp, hl                                     ; $4e33: $f9
    adc b                                         ; $4e34: $88
    ld e, [hl]                                    ; $4e35: $5e
    or l                                          ; $4e36: $b5
    di                                            ; $4e37: $f3
    sub [hl]                                      ; $4e38: $96
    db $fc                                        ; $4e39: $fc
    ld h, c                                       ; $4e3a: $61
    adc d                                         ; $4e3b: $8a
    reti                                          ; $4e3c: $d9


    inc hl                                        ; $4e3d: $23
    ld [hl], d                                    ; $4e3e: $72
    ld d, e                                       ; $4e3f: $53
    ld e, [hl]                                    ; $4e40: $5e
    ld a, $67                                     ; $4e41: $3e $67
    cp d                                          ; $4e43: $ba
    ret z                                         ; $4e44: $c8

    db $eb                                        ; $4e45: $eb
    add l                                         ; $4e46: $85
    nop                                           ; $4e47: $00
    ld [hl], a                                    ; $4e48: $77
    sub [hl]                                      ; $4e49: $96
    dec h                                         ; $4e4a: $25
    inc [hl]                                      ; $4e4b: $34
    cpl                                           ; $4e4c: $2f
    sub e                                         ; $4e4d: $93
    inc h                                         ; $4e4e: $24
    db $dd                                        ; $4e4f: $dd
    ld d, l                                       ; $4e50: $55
    xor [hl]                                      ; $4e51: $ae
    dec e                                         ; $4e52: $1d
    add a                                         ; $4e53: $87
    sbc l                                         ; $4e54: $9d
    adc h                                         ; $4e55: $8c
    sub a                                         ; $4e56: $97
    pop af                                        ; $4e57: $f1
    adc b                                         ; $4e58: $88
    daa                                           ; $4e59: $27
    ld [hl], e                                    ; $4e5a: $73
    xor l                                         ; $4e5b: $ad
    xor h                                         ; $4e5c: $ac
    call nc, Call_054_5ce8                        ; $4e5d: $d4 $e8 $5c
    ld a, e                                       ; $4e60: $7b
    adc l                                         ; $4e61: $8d
    add a                                         ; $4e62: $87
    push af                                       ; $4e63: $f5
    or $03                                        ; $4e64: $f6 $03
    call c, $96dd                                 ; $4e66: $dc $dd $96
    ld [hl], l                                    ; $4e69: $75
    inc e                                         ; $4e6a: $1c
    sub [hl]                                      ; $4e6b: $96
    cp h                                          ; $4e6c: $bc
    ld a, [de]                                    ; $4e6d: $1a
    ld c, c                                       ; $4e6e: $49
    dec l                                         ; $4e6f: $2d
    ld h, [hl]                                    ; $4e70: $66
    pop hl                                        ; $4e71: $e1
    ld e, h                                       ; $4e72: $5c
    and $11                                       ; $4e73: $e6 $11
    ld c, a                                       ; $4e75: $4f
    adc $2c                                       ; $4e76: $ce $2c
    dec bc                                        ; $4e78: $0b
    ld c, a                                       ; $4e79: $4f
    add d                                         ; $4e7a: $82
    halt                                          ; $4e7b: $76
    add hl, sp                                    ; $4e7c: $39
    ld c, h                                       ; $4e7d: $4c
    cp l                                          ; $4e7e: $bd
    and l                                         ; $4e7f: $a5
    sbc e                                         ; $4e80: $9b
    rst $10                                       ; $4e81: $d7
    rst $20                                       ; $4e82: $e7
    or [hl]                                       ; $4e83: $b6
    sbc $2b                                       ; $4e84: $de $2b
    dec hl                                        ; $4e86: $2b
    dec b                                         ; $4e87: $05
    ld de, $af3d                                  ; $4e88: $11 $3d $af
    and [hl]                                      ; $4e8b: $a6
    db $f4                                        ; $4e8c: $f4
    dec h                                         ; $4e8d: $25
    ld a, l                                       ; $4e8e: $7d
    dec d                                         ; $4e8f: $15
    adc a                                         ; $4e90: $8f
    and h                                         ; $4e91: $a4
    ld b, $b0                                     ; $4e92: $06 $b0
    ld [hl-], a                                   ; $4e94: $32
    db $dd                                        ; $4e95: $dd
    ld [hl], a                                    ; $4e96: $77
    ld h, l                                       ; $4e97: $65
    adc h                                         ; $4e98: $8c
    call $6c93                                    ; $4e99: $cd $93 $6c
    ld e, c                                       ; $4e9c: $59
    ld a, b                                       ; $4e9d: $78
    ld [de], a                                    ; $4e9e: $12
    ld a, d                                       ; $4e9f: $7a
    xor l                                         ; $4ea0: $ad
    ld e, e                                       ; $4ea1: $5b
    ld e, a                                       ; $4ea2: $5f
    call nc, $bc45                                ; $4ea3: $d4 $45 $bc
    sub e                                         ; $4ea6: $93
    cp b                                          ; $4ea7: $b8
    add d                                         ; $4ea8: $82
    ld b, a                                       ; $4ea9: $47
    ld d, d                                       ; $4eaa: $52
    ld a, e                                       ; $4eab: $7b
    cp h                                          ; $4eac: $bc
    jp nc, $cb0f                                  ; $4ead: $d2 $0f $cb

    sub a                                         ; $4eb0: $97
    ld h, b                                       ; $4eb1: $60
    pop af                                        ; $4eb2: $f1
    sub h                                         ; $4eb3: $94
    ld l, e                                       ; $4eb4: $6b
    ld l, c                                       ; $4eb5: $69
    daa                                           ; $4eb6: $27
    ld c, $ae                                     ; $4eb7: $0e $ae
    dec e                                         ; $4eb9: $1d
    add a                                         ; $4eba: $87
    add hl, bc                                    ; $4ebb: $09
    ld d, l                                       ; $4ebc: $55
    ld d, e                                       ; $4ebd: $53
    ld a, [$8c7e]                                 ; $4ebe: $fa $7e $8c
    sbc $71                                       ; $4ec1: $de $71
    adc l                                         ; $4ec3: $8d
    and h                                         ; $4ec4: $a4
    and [hl]                                      ; $4ec5: $a6
    adc h                                         ; $4ec6: $8c
    ld hl, $dd02                                  ; $4ec7: $21 $02 $dd
    and $05                                       ; $4eca: $e6 $05
    xor d                                         ; $4ecc: $aa
    ld h, [hl]                                    ; $4ecd: $66
    reti                                          ; $4ece: $d9


    sub c                                         ; $4ecf: $91
    ld d, a                                       ; $4ed0: $57
    adc c                                         ; $4ed1: $89
    rst $38                                       ; $4ed2: $ff
    ld hl, sp-$49                                 ; $4ed3: $f8 $b7
    ld d, c                                       ; $4ed5: $51
    call z, $e516                                 ; $4ed6: $cc $16 $e5
    sbc c                                         ; $4ed9: $99
    rst $18                                       ; $4eda: $df
    jp hl                                         ; $4edb: $e9


    ld a, b                                       ; $4edc: $78
    ld a, a                                       ; $4edd: $7f
    ld d, $65                                     ; $4ede: $16 $65
    reti                                          ; $4ee0: $d9


    ld c, e                                       ; $4ee1: $4b
    and [hl]                                      ; $4ee2: $a6
    inc l                                         ; $4ee3: $2c
    ld [c], a                                     ; $4ee4: $e2
    add l                                         ; $4ee5: $85
    daa                                           ; $4ee6: $27
    pop bc                                        ; $4ee7: $c1
    ld [bc], a                                    ; $4ee8: $02
    ld de, $96dd                                  ; $4ee9: $11 $dd $96
    push de                                       ; $4eec: $d5
    dec sp                                        ; $4eed: $3b
    pop de                                        ; $4eee: $d1
    add a                                         ; $4eef: $87
    cp l                                          ; $4ef0: $bd
    call nz, $32df                                ; $4ef1: $c4 $df $32
    jp nz, $d745                                  ; $4ef4: $c2 $45 $d7

    dec de                                        ; $4ef7: $1b
    rst $38                                       ; $4ef8: $ff
    or [hl]                                       ; $4ef9: $b6
    sbc $f5                                       ; $4efa: $de $f5

Call_054_4efc:
    ld l, c                                       ; $4efc: $69
    ld a, [$984b]                                 ; $4efd: $fa $4b $98
    ld l, e                                       ; $4f00: $6b
    and c                                         ; $4f01: $a1
    ld h, e                                       ; $4f02: $63
    sub c                                         ; $4f03: $91
    adc h                                         ; $4f04: $8c
    and a                                         ; $4f05: $a7
    inc l                                         ; $4f06: $2c
    jp $fc2f                                      ; $4f07: $c3 $2f $fc


    inc de                                        ; $4f0a: $13

Call_054_4f0b:
    dec a                                         ; $4f0b: $3d
    push de                                       ; $4f0c: $d5
    ld d, l                                       ; $4f0d: $55
    ld l, a                                       ; $4f0e: $6f
    ld a, a                                       ; $4f0f: $7f
    ld d, $65                                     ; $4f10: $16 $65
    reti                                          ; $4f12: $d9


    ld c, e                                       ; $4f13: $4b
    ld d, $9e                                     ; $4f14: $16 $9e
    inc b                                         ; $4f16: $04
    dec bc                                        ; $4f17: $0b
    ld b, h                                       ; $4f18: $44
    ld a, l                                       ; $4f19: $7d
    inc e                                         ; $4f1a: $1c
    ld b, [hl]                                    ; $4f1b: $46
    cp h                                          ; $4f1c: $bc
    ld a, [de]                                    ; $4f1d: $1a

Call_054_4f1e:
    pop de                                        ; $4f1e: $d1
    ld d, l                                       ; $4f1f: $55
    cp h                                          ; $4f20: $bc
    rst $00                                       ; $4f21: $c7
    ld d, e                                       ; $4f22: $53
    and $05                                       ; $4f23: $e6 $05
    xor d                                         ; $4f25: $aa
    ld h, [hl]                                    ; $4f26: $66
    reti                                          ; $4f27: $d9


    sub c                                         ; $4f28: $91
    ld d, a                                       ; $4f29: $57
    adc c                                         ; $4f2a: $89
    rst $38                                       ; $4f2b: $ff
    ld hl, sp-$49                                 ; $4f2c: $f8 $b7
    sbc l                                         ; $4f2e: $9d
    adc [hl]                                      ; $4f2f: $8e
    ld l, [hl]                                    ; $4f30: $6e
    ld d, c                                       ; $4f31: $51
    sbc [hl]                                      ; $4f32: $9e
    ld sp, hl                                     ; $4f33: $f9
    sbc l                                         ; $4f34: $9d
    adc [hl]                                      ; $4f35: $8e
    ld b, a                                       ; $4f36: $47
    ld d, d                                       ; $4f37: $52
    db $eb                                        ; $4f38: $eb
    ld a, [hl-]                                   ; $4f39: $3a
    ld a, h                                       ; $4f3a: $7c
    cp [hl]                                       ; $4f3b: $be
    ld a, d                                       ; $4f3c: $7a
    ld a, e                                       ; $4f3d: $7b
    ret                                           ; $4f3e: $c9


    sub h                                         ; $4f3f: $94
    ld b, l                                       ; $4f40: $45
    cp h                                          ; $4f41: $bc
    ldh a, [rNR50]                                ; $4f42: $f0 $24
    ld e, b                                       ; $4f44: $58
    jr nz, jr_054_4f49                            ; $4f45: $20 $02

    add hl, hl                                    ; $4f47: $29

Call_054_4f48:
    and h                                         ; $4f48: $a4

jr_054_4f49:
    ld a, a                                       ; $4f49: $7f
    inc sp                                        ; $4f4a: $33
    cpl                                           ; $4f4b: $2f
    or c                                          ; $4f4c: $b1
    sbc d                                         ; $4f4d: $9a
    ld [$37aa], a                                 ; $4f4e: $ea $aa $37
    cp $6d                                        ; $4f51: $fe $6d
    ld b, a                                       ; $4f53: $47
    inc de                                        ; $4f54: $13
    ld a, l                                       ; $4f55: $7d
    ld e, b                                       ; $4f56: $58
    ld a, a                                       ; $4f57: $7f
    dec sp                                        ; $4f58: $3b
    pop af                                        ; $4f59: $f1
    or l                                          ; $4f5a: $b5
    dec h                                         ; $4f5b: $25
    rst $38                                       ; $4f5c: $ff
    inc e                                         ; $4f5d: $1c
    sub [hl]                                      ; $4f5e: $96
    inc e                                         ; $4f5f: $1c
    ld b, a                                       ; $4f60: $47
    ld [hl], a                                    ; $4f61: $77
    sub l                                         ; $4f62: $95
    ld h, a                                       ; $4f63: $67
    ld a, $6c                                     ; $4f64: $3e $6c
    ld [hl], l                                    ; $4f66: $75
    jr nz, jr_054_4f6b                            ; $4f67: $20 $02

    or a                                          ; $4f69: $b7
    cp a                                          ; $4f6a: $bf

jr_054_4f6b:
    or d                                          ; $4f6b: $b2
    inc c                                         ; $4f6c: $0c
    ld a, a                                       ; $4f6d: $7f
    add hl, de                                    ; $4f6e: $19
    sbc l                                         ; $4f6f: $9d
    adc e                                         ; $4f70: $8b
    ld e, a                                       ; $4f71: $5f
    ld h, e                                       ; $4f72: $63
    rrca                                          ; $4f73: $0f
    dec sp                                        ; $4f74: $3b
    db $ec                                        ; $4f75: $ec
    pop af                                        ; $4f76: $f1
    ld c, b                                       ; $4f77: $48
    ld l, d                                       ; $4f78: $6a
    call nz, Call_000_3393                        ; $4f79: $c4 $93 $33
    cp $6a                                        ; $4f7c: $fe $6a
    ret                                           ; $4f7e: $c9


    xor e                                         ; $4f7f: $ab
    add hl, hl                                    ; $4f80: $29
    di                                            ; $4f81: $f3
    inc l                                         ; $4f82: $2c
    inc hl                                        ; $4f83: $23
    adc h                                         ; $4f84: $8c
    or c                                          ; $4f85: $b1
    db $db                                        ; $4f86: $db
    rrca                                          ; $4f87: $0f
    dec bc                                        ; $4f88: $0b
    ld c, a                                       ; $4f89: $4f
    jp nz, Jump_000_2fd2                          ; $4f8a: $c2 $d2 $2f

    xor $90                                       ; $4f8d: $ee $90
    cp $cd                                        ; $4f8f: $fe $cd
    cp h                                          ; $4f91: $bc
    ccf                                           ; $4f92: $3f
    and d                                         ; $4f93: $a2
    db $d3                                        ; $4f94: $d3
    ld d, l                                       ; $4f95: $55
    ld h, d                                       ; $4f96: $62
    sbc $9f                                       ; $4f97: $de $9f
    or d                                          ; $4f99: $b2
    adc b                                         ; $4f9a: $88
    rla                                           ; $4f9b: $17
    sbc [hl]                                      ; $4f9c: $9e
    inc b                                         ; $4f9d: $04
    dec bc                                        ; $4f9e: $0b
    ld b, h                                       ; $4f9f: $44
    ld [hl], a                                    ; $4fa0: $77
    ld c, h                                       ; $4fa1: $4c
    ld e, c                                       ; $4fa2: $59
    call nz, $bf33                                ; $4fa3: $c4 $33 $bf
    db $d3                                        ; $4fa6: $d3
    or c                                          ; $4fa7: $b1
    ld c, h                                       ; $4fa8: $4c
    rla                                           ; $4fa9: $17
    push hl                                       ; $4faa: $e5
    ld c, d                                       ; $4fab: $4a
    cp $71                                        ; $4fac: $fe $71
    db $ed                                        ; $4fae: $ed
    adc $7f                                       ; $4faf: $ce $7f
    ret c                                         ; $4fb1: $d8

    ei                                            ; $4fb2: $fb
    cp e                                          ; $4fb3: $bb
    ei                                            ; $4fb4: $fb
    add l                                         ; $4fb5: $85
    ld c, a                                       ; $4fb6: $4f
    db $fc                                        ; $4fb7: $fc
    jp $beb9                                      ; $4fb8: $c3 $b9 $be


    ld hl, $4484                                  ; $4fbb: $21 $84 $44
    ld a, [c]                                     ; $4fbe: $f2
    rst $08                                       ; $4fbf: $cf
    inc l                                         ; $4fc0: $2c
    adc e                                         ; $4fc1: $8b
    ld c, a                                       ; $4fc2: $4f
    ld d, $5f                                     ; $4fc3: $16 $5f
    ld l, e                                       ; $4fc5: $6b
    sbc [hl]                                      ; $4fc6: $9e
    ld [hl-], a                                   ; $4fc7: $32
    adc a                                         ; $4fc8: $8f
    sbc d                                         ; $4fc9: $9a
    ld l, $ca                                     ; $4fca: $2e $ca
    sub l                                         ; $4fcc: $95
    db $fc                                        ; $4fcd: $fc
    ld h, e                                       ; $4fce: $63
    db $ed                                        ; $4fcf: $ed
    call nc, Call_000_0883                        ; $4fd0: $d4 $83 $08
    ld [hl], a                                    ; $4fd3: $77
    cp $c3                                        ; $4fd4: $fe $c3
    ld e, $f1                                     ; $4fd6: $1e $f1
    sub h                                         ; $4fd8: $94
    ld a, [c]                                     ; $4fd9: $f2
    sub d                                         ; $4fda: $92
    ld a, a                                       ; $4fdb: $7f
    ld c, $2f                                     ; $4fdc: $0e $2f
    ld h, [hl]                                    ; $4fde: $66
    pop hl                                        ; $4fdf: $e1
    ld e, h                                       ; $4fe0: $5c
    ei                                            ; $4fe1: $fb
    ld d, e                                       ; $4fe2: $53
    ld d, $f1                                     ; $4fe3: $16 $f1
    call z, Call_054_74ef                         ; $4fe5: $cc $ef $74
    inc l                                         ; $4fe8: $2c
    and e                                         ; $4fe9: $a3
    cp e                                          ; $4fea: $bb
    ld l, d                                       ; $4feb: $6a
    call nz, $a993                                ; $4fec: $c4 $93 $a9
    ld l, $e5                                     ; $4fef: $2e $e5
    push hl                                       ; $4ff1: $e5
    or b                                          ; $4ff2: $b0
    or h                                          ; $4ff3: $b4
    add e                                         ; $4ff4: $83
    ld b, [hl]                                    ; $4ff5: $46
    ret c                                         ; $4ff6: $d8

    and e                                         ; $4ff7: $a3
    add $bf                                       ; $4ff8: $c6 $bf
    and l                                         ; $4ffa: $a5
    db $eb                                        ; $4ffb: $eb
    ld c, e                                       ; $4ffc: $4b
    ldh a, [$5e]                                  ; $4ffd: $f0 $5e
    ld l, e                                       ; $4fff: $6b
    dec sp                                        ; $5000: $3b
    ld e, a                                       ; $5001: $5f
    add $5f                                       ; $5002: $c6 $5f
    adc l                                         ; $5004: $8d
    and h                                         ; $5005: $a4
    sub $fa                                       ; $5006: $d6 $fa
    ld a, [hl+]                                   ; $5008: $2a
    ld d, a                                       ; $5009: $57
    jp nc, $b957                                  ; $500a: $d2 $57 $b9

    dec e                                         ; $500d: $1d
    inc sp                                        ; $500e: $33
    ld b, h                                       ; $500f: $44
    add hl, hl                                    ; $5010: $29
    sbc d                                         ; $5011: $9a
    add sp, -$3d                                  ; $5012: $e8 $c3
    ld a, [$6b9b]                                 ; $5014: $fa $9b $6b
    ld a, a                                       ; $5017: $7f
    jp z, $9e22                                   ; $5018: $ca $22 $9e

    ld sp, hl                                     ; $501b: $f9
    sbc l                                         ; $501c: $9d
    adc [hl]                                      ; $501d: $8e
    dec b                                         ; $501e: $05
    xor [hl]                                      ; $501f: $ae
    adc a                                         ; $5020: $8f
    jp $2b12                                      ; $5021: $c3 $12 $2b


    push hl                                       ; $5024: $e5
    ld a, [de]                                    ; $5025: $1a
    ld c, c                                       ; $5026: $49
    db $ed                                        ; $5027: $ed
    pop af                                        ; $5028: $f1
    ldh a, [rHDMA3]                               ; $5029: $f0 $53
    rrca                                          ; $502b: $0f
    rst $28                                       ; $502c: $ef
    cp [hl]                                       ; $502d: $be
    adc h                                         ; $502e: $8c
    jp hl                                         ; $502f: $e9


    ld a, [$e23c]                                 ; $5030: $fa $3c $e2
    push de                                       ; $5033: $d5
    ldh a, [$3b]                                  ; $5034: $f0 $3b
    rst $00                                       ; $5036: $c7
    ret                                           ; $5037: $c9


    ccf                                           ; $5038: $3f
    ld a, e                                       ; $5039: $7b
    ret                                           ; $503a: $c9


    sbc d                                         ; $503b: $9a
    add e                                         ; $503c: $83
    ld b, l                                       ; $503d: $45
    ld a, c                                       ; $503e: $79
    ld b, b                                       ; $503f: $40
    ld a, [hl]                                    ; $5040: $7e
    ld [$3016], sp                                ; $5041: $08 $16 $30
    ld l, [hl]                                    ; $5044: $6e
    ld [$fc12], a                                 ; $5045: $ea $12 $fc
    db $e3                                        ; $5048: $e3
    ld h, c                                       ; $5049: $61
    cp l                                          ; $504a: $bd
    and [hl]                                      ; $504b: $a6
    ld e, h                                       ; $504c: $5c
    ei                                            ; $504d: $fb
    ld [hl+], a                                   ; $504e: $22
    add [hl]                                      ; $504f: $86

jr_054_5050:
    ld [$4c77], sp                                ; $5050: $08 $77 $4c
    ld e, c                                       ; $5053: $59
    call nz, Call_054_4f0b                        ; $5054: $c4 $0b $4f
    add d                                         ; $5057: $82
    ld h, l                                       ; $5058: $65
    xor [hl]                                      ; $5059: $ae
    add hl, hl                                    ; $505a: $29
    di                                            ; $505b: $f3
    inc l                                         ; $505c: $2c
    jp $fc2f                                      ; $505d: $c3 $2f $fc


    inc de                                        ; $5060: $13
    and a                                         ; $5061: $a7
    cp d                                          ; $5062: $ba
    ld l, d                                       ; $5063: $6a
    daa                                           ; $5064: $27
    db $e3                                        ; $5065: $e3
    pop de                                        ; $5066: $d1
    ld e, l                                       ; $5067: $5d
    push hl                                       ; $5068: $e5
    ld a, [de]                                    ; $5069: $1a
    pop hl                                        ; $506a: $e1
    add $13                                       ; $506b: $c6 $13
    xor e                                         ; $506d: $ab
    pop af                                        ; $506e: $f1
    ld l, a                                       ; $506f: $6f
    and e                                         ; $5070: $a3
    sbc a                                         ; $5071: $9f
    inc b                                         ; $5072: $04
    rst $00                                       ; $5073: $c7
    adc [hl]                                      ; $5074: $8e
    ld e, e                                       ; $5075: $5b
    ld [hl], e                                    ; $5076: $73
    ld e, c                                       ; $5077: $59
    ldh [rP1], a                                  ; $5078: $e0 $00
    cp e                                          ; $507a: $bb
    xor c                                         ; $507b: $a9
    rra                                           ; $507c: $1f
    ld b, [hl]                                    ; $507d: $46
    sub $8b                                       ; $507e: $d6 $8b
    db $fc                                        ; $5080: $fc
    ld c, a                                       ; $5081: $4f
    inc e                                         ; $5082: $1c
    sub c                                         ; $5083: $91
    db $fc                                        ; $5084: $fc
    inc sp                                        ; $5085: $33
    and l                                         ; $5086: $a5
    rst $08                                       ; $5087: $cf
    or l                                          ; $5088: $b5
    ld h, e                                       ; $5089: $63
    pop hl                                        ; $508a: $e1
    jp hl                                         ; $508b: $e9


    db $ec                                        ; $508c: $ec
    pop af                                        ; $508d: $f1
    ld l, a                                       ; $508e: $6f
    ld c, e                                       ; $508f: $4b
    ld l, c                                       ; $5090: $69
    ld a, d                                       ; $5091: $7a
    sbc l                                         ; $5092: $9d
    pop af                                        ; $5093: $f1
    rst $00                                       ; $5094: $c7
    ld l, $88                                     ; $5095: $2e $88
    nop                                           ; $5097: $00
    scf                                           ; $5098: $37
    or a                                          ; $5099: $b7
    and $85                                       ; $509a: $e6 $85
    adc h                                         ; $509c: $8c
    ret                                           ; $509d: $c9


    call c, $f872                                 ; $509e: $dc $72 $f8
    db $fc                                        ; $50a1: $fc
    or c                                          ; $50a2: $b1
    push bc                                       ; $50a3: $c5
    ld [hl], e                                    ; $50a4: $73
    db $ed                                        ; $50a5: $ed
    ld c, a                                       ; $50a6: $4f
    ld e, c                                       ; $50a7: $59
    call nz, $bf33                                ; $50a8: $c4 $33 $bf
    db $d3                                        ; $50ab: $d3
    or c                                          ; $50ac: $b1
    ld l, b                                       ; $50ad: $68
    rst $00                                       ; $50ae: $c7
    ld c, $f2                                     ; $50af: $0e $f2
    dec h                                         ; $50b1: $25
    inc l                                         ; $50b2: $2c
    add a                                         ; $50b3: $87
    ld h, c                                       ; $50b4: $61
    db $fd                                        ; $50b5: $fd
    db $fc                                        ; $50b6: $fc
    jr jr_054_5050                                ; $50b7: $18 $97

    jp Jump_000_20a1                              ; $50b9: $c3 $a1 $20


Jump_054_50bc:
    ld [bc], a                                    ; $50bc: $02
    ld [hl], a                                    ; $50bd: $77
    ld c, h                                       ; $50be: $4c
    ld e, c                                       ; $50bf: $59
    call nz, Call_054_4f0b                        ; $50c0: $c4 $0b $4f
    add d                                         ; $50c3: $82
    ld h, l                                       ; $50c4: $65
    xor [hl]                                      ; $50c5: $ae
    add hl, hl                                    ; $50c6: $29
    di                                            ; $50c7: $f3
    inc l                                         ; $50c8: $2c
    jp $fc2f                                      ; $50c9: $c3 $2f $fc


    inc de                                        ; $50cc: $13
    and a                                         ; $50cd: $a7
    cp d                                          ; $50ce: $ba
    ld l, d                                       ; $50cf: $6a
    daa                                           ; $50d0: $27
    db $e3                                        ; $50d1: $e3
    pop de                                        ; $50d2: $d1
    ld e, l                                       ; $50d3: $5d
    push hl                                       ; $50d4: $e5
    sbc d                                         ; $50d5: $9a
    ld [hl], d                                    ; $50d6: $72
    sbc b                                         ; $50d7: $98
    ld hl, sp-$50                                 ; $50d8: $f8 $b0
    ld h, l                                       ; $50da: $65
    ld h, l                                       ; $50db: $65
    and $f1                                       ; $50dc: $e6 $f1
    ld l, a                                       ; $50de: $6f
    cp e                                          ; $50df: $bb
    rst $28                                       ; $50e0: $ef
    ld d, a                                       ; $50e1: $57
    add hl, sp                                    ; $50e2: $39
    ld sp, hl                                     ; $50e3: $f9
    sbc b                                         ; $50e4: $98
    inc a                                         ; $50e5: $3c
    adc e                                         ; $50e6: $8b
    db $ed                                        ; $50e7: $ed
    sbc l                                         ; $50e8: $9d
    db $e3                                        ; $50e9: $e3
    jp z, $2218                                   ; $50ea: $ca $18 $22

    rst $30                                       ; $50ed: $f7

Call_054_50ee:
Jump_054_50ee:
    cp l                                          ; $50ee: $bd
    ld [hl], e                                    ; $50ef: $73
    ld b, [hl]                                    ; $50f0: $46
    ld d, d                                       ; $50f1: $52
    inc hl                                        ; $50f2: $23
    sub d                                         ; $50f3: $92
    ld a, a                                       ; $50f4: $7f
    and [hl]                                      ; $50f5: $a6
    db $f4                                        ; $50f6: $f4
    dec b                                         ; $50f7: $05
    xor d                                         ; $50f8: $aa
    or $45                                        ; $50f9: $f6 $45
    or $67                                        ; $50fb: $f6 $67
    ld e, $67                                     ; $50fd: $1e $67
    call z, $ed8b                                 ; $50ff: $cc $8b $ed
    sbc l                                         ; $5102: $9d
    db $e3                                        ; $5103: $e3
    jp z, Jump_054_4218                           ; $5104: $ca $18 $42

    jr c, jr_054_516e                             ; $5107: $38 $65

    ld e, [hl]                                    ; $5109: $5e
    ld a, h                                       ; $510a: $7c
    or d                                          ; $510b: $b2
    ret nc                                        ; $510c: $d0

    ld sp, $dec6                                  ; $510d: $31 $c6 $de
    ld [hl], c                                    ; $5110: $71
    sbc b                                         ; $5111: $98
    ld h, h                                       ; $5112: $64
    rst $28                                       ; $5113: $ef
    ld b, h                                       ; $5114: $44
    dec e                                         ; $5115: $1d
    ld h, e                                       ; $5116: $63
    scf                                           ; $5117: $37
    sbc [hl]                                      ; $5118: $9e
    ld [hl], d                                    ; $5119: $72
    ld b, c                                       ; $511a: $41
    inc b                                         ; $511b: $04
    or a                                          ; $511c: $b7
    cp b                                          ; $511d: $b8
    cp d                                          ; $511e: $ba
    jr nc, @+$7d                                  ; $511f: $30 $7b

    add h                                         ; $5121: $84
    db $e3                                        ; $5122: $e3
    ld [hl], c                                    ; $5123: $71
    dec l                                         ; $5124: $2d
    add a                                         ; $5125: $87
    ld [hl], c                                    ; $5126: $71
    push hl                                       ; $5127: $e5
    sub $b0                                       ; $5128: $d6 $b0
    ld b, l                                       ; $512a: $45
    ld l, $89                                     ; $512b: $2e $89
    ld c, l                                       ; $512d: $4d
    ld c, a                                       ; $512e: $4f
    and a                                         ; $512f: $a7
    dec l                                         ; $5130: $2d
    ld [hl], e                                    ; $5131: $73
    call $74bc                                    ; $5132: $cd $bc $74
    cp l                                          ; $5135: $bd
    dec e                                         ; $5136: $1d
    or [hl]                                       ; $5137: $b6
    ld a, [de]                                    ; $5138: $1a
    dec [hl]                                      ; $5139: $35
    or d                                          ; $513a: $b2
    cp d                                          ; $513b: $ba
    ld [de], a                                    ; $513c: $12

Jump_054_513d:
    ld c, a                                       ; $513d: $4f
    rst $20                                       ; $513e: $e7
    push bc                                       ; $513f: $c5
    ld e, h                                       ; $5140: $5c
    ld a, h                                       ; $5141: $7c
    ld c, c                                       ; $5142: $49
    call z, $fd38                                 ; $5143: $cc $38 $fd
    push hl                                       ; $5146: $e5
    sbc l                                         ; $5147: $9d
    ld c, [hl]                                    ; $5148: $4e
    ld d, $17                                     ; $5149: $16 $17
    ld b, h                                       ; $514b: $44
    or a                                          ; $514c: $b7
    sub h                                         ; $514d: $94
    ld e, $a7                                     ; $514e: $1e $a7
    inc l                                         ; $5150: $2c
    jp $fc2f                                      ; $5151: $c3 $2f $fc


    inc de                                        ; $5154: $13
    dec a                                         ; $5155: $3d
    push de                                       ; $5156: $d5
    ld d, l                                       ; $5157: $55
    ld l, a                                       ; $5158: $6f
    ld a, a                                       ; $5159: $7f
    ld e, l                                       ; $515a: $5d
    add a                                         ; $515b: $87
    inc de                                        ; $515c: $13
    add a                                         ; $515d: $87

jr_054_515e:
    ld h, b                                       ; $515e: $60
    add hl, de                                    ; $515f: $19
    sub c                                         ; $5160: $91
    db $fc                                        ; $5161: $fc
    inc sp                                        ; $5162: $33
    and l                                         ; $5163: $a5
    cpl                                           ; $5164: $2f
    ld sp, hl                                     ; $5165: $f9
    ld l, l                                       ; $5166: $6d
    db $fc                                        ; $5167: $fc
    db $db                                        ; $5168: $db
    ld l, b                                       ; $5169: $68
    ld h, e                                       ; $516a: $63
    or $cc                                        ; $516b: $f6 $cc
    rst $28                                       ; $516d: $ef

jr_054_516e:
    ld [hl], h                                    ; $516e: $74
    inc c                                         ; $516f: $0c
    rst $10                                       ; $5170: $d7
    ld l, l                                       ; $5171: $6d
    sbc [hl]                                      ; $5172: $9e
    ld l, e                                       ; $5173: $6b
    jp z, Jump_054_7ab2                           ; $5174: $ca $b2 $7a

    daa                                           ; $5177: $27
    ld a, [$97b0]                                 ; $5178: $fa $b0 $97
    ld hl, sp+$5b                                 ; $517b: $f8 $5b
    add $bf                                       ; $517d: $c6 $bf
    db $ed                                        ; $517f: $ed
    ld l, b                                       ; $5180: $68
    and d                                         ; $5181: $a2
    rrca                                          ; $5182: $0f
    db $eb                                        ; $5183: $eb
    ld l, a                                       ; $5184: $6f
    ld b, h                                       ; $5185: $44
    ld a, [c]                                     ; $5186: $f2
    rst $08                                       ; $5187: $cf
    sub h                                         ; $5188: $94
    ld a, $d7                                     ; $5189: $3e $d7
    ld c, [hl]                                    ; $518b: $4e
    ld a, h                                       ; $518c: $7c
    ld c, d                                       ; $518d: $4a
    ld b, c                                       ; $518e: $41
    inc b                                         ; $518f: $04
    rst $30                                       ; $5190: $f7
    cp h                                          ; $5191: $bc
    inc de                                        ; $5192: $13
    rla                                           ; $5193: $17
    inc sp                                        ; $5194: $33
    add $ae                                       ; $5195: $c6 $ae
    dec e                                         ; $5197: $1d
    add a                                         ; $5198: $87
    dec h                                         ; $5199: $25
    ld l, [hl]                                    ; $519a: $6e
    ld [$d187], a                                 ; $519b: $ea $87 $d1
    cp c                                          ; $519e: $b9
    ld a, b                                       ; $519f: $78
    ld [hl], h                                    ; $51a0: $74
    cp l                                          ; $51a1: $bd
    pop de                                        ; $51a2: $d1
    ld e, l                                       ; $51a3: $5d
    ld [hl], l                                    ; $51a4: $75
    ret c                                         ; $51a5: $d8

    inc sp                                        ; $51a6: $33
    cp a                                          ; $51a7: $bf
    db $d3                                        ; $51a8: $d3
    pop af                                        ; $51a9: $f1
    ld hl, sp-$49                                 ; $51aa: $f8 $b7
    add hl, hl                                    ; $51ac: $29
    adc e                                         ; $51ad: $8b
    jr jr_054_515e                                ; $51ae: $18 $ae

    adc a                                         ; $51b0: $8f
    jp $72b8                                      ; $51b1: $c3 $b8 $72


    adc l                                         ; $51b4: $8d
    ld a, b                                       ; $51b5: $78
    ld [hl-], a                                   ; $51b6: $32
    ld [c], a                                     ; $51b7: $e2
    push de                                       ; $51b8: $d5
    inc l                                         ; $51b9: $2c
    jp $fc2f                                      ; $51ba: $c3 $2f $fc


    inc de                                        ; $51bd: $13
    and a                                         ; $51be: $a7
    cp d                                          ; $51bf: $ba
    ld l, d                                       ; $51c0: $6a
    inc h                                         ; $51c1: $24
    or l                                          ; $51c2: $b5
    sbc b                                         ; $51c3: $98
    add l                                         ; $51c4: $85
    ld [hl], e                                    ; $51c5: $73
    sbc c                                         ; $51c6: $99
    rst $20                                       ; $51c7: $e7
    sub $5c                                       ; $51c8: $d6 $5c
    ei                                            ; $51ca: $fb
    ld c, e                                       ; $51cb: $4b
    ld [hl], a                                    ; $51cc: $77
    ld sp, $663b                                  ; $51cd: $31 $3b $66
    ld h, [hl]                                    ; $51d0: $66
    di                                            ; $51d1: $f3
    adc $67                                       ; $51d2: $ce $67
    sbc $c9                                       ; $51d4: $de $c9
    ld a, b                                       ; $51d6: $78
    ld [hl], h                                    ; $51d7: $74
    ld d, a                                       ; $51d8: $57
    cp c                                          ; $51d9: $b9
    ld b, [hl]                                    ; $51da: $46
    ld a, h                                       ; $51db: $7c
    ld e, [hl]                                    ; $51dc: $5e
    ld h, $49                                     ; $51dd: $26 $49
    adc b                                         ; $51df: $88
    nop                                           ; $51e0: $00
    dec a                                         ; $51e1: $3d
    ret                                           ; $51e2: $c9


    ccf                                           ; $51e3: $3f
    ld d, e                                       ; $51e4: $53
    ld a, [$df92]                                 ; $51e5: $fa $92 $df
    add $bf                                       ; $51e8: $c6 $bf
    adc l                                         ; $51ea: $8d
    ld [hl], $66                                  ; $51eb: $36 $66
    rst $08                                       ; $51ed: $cf
    db $fc                                        ; $51ee: $fc
    ld c, [hl]                                    ; $51ef: $4e
    rst $00                                       ; $51f0: $c7
    ei                                            ; $51f1: $fb
    or e                                          ; $51f2: $b3
    adc h                                         ; $51f3: $8c
    ld a, [hl]                                    ; $51f4: $7e
    push bc                                       ; $51f5: $c5
    jp c, $7d25                                   ; $51f6: $da $25 $7d

    push de                                       ; $51f9: $d5
    ld [hl], d                                    ; $51fa: $72
    ld a, [$a48c]                                 ; $51fb: $fa $8c $a4
    add $f5                                       ; $51fe: $c6 $f5
    ld c, b                                       ; $5200: $48
    ld a, [c]                                     ; $5201: $f2
    db $ed                                        ; $5202: $ed
    rst $28                                       ; $5203: $ef
    ld [hl], h                                    ; $5204: $74
    sub l                                         ; $5205: $95
    ld b, l                                       ; $5206: $45
    ld e, c                                       ; $5207: $59
    or $92                                        ; $5208: $f6 $92
    add l                                         ; $520a: $85
    daa                                           ; $520b: $27
    pop bc                                        ; $520c: $c1
    ld [bc], a                                    ; $520d: $02
    ld de, $bcf7                                  ; $520e: $11 $f7 $bc
    inc de                                        ; $5211: $13
    ld b, a                                       ; $5212: $47
    cp h                                          ; $5213: $bc
    ld e, d                                       ; $5214: $5a
    ld a, e                                       ; $5215: $7b
    pop bc                                        ; $5216: $c1
    ld h, l                                       ; $5217: $65
    sbc $f9                                       ; $5218: $de $f9
    call z, Call_054_53fb                         ; $521a: $cc $fb $53
    ld d, $f1                                     ; $521d: $16 $f1
    call z, Call_054_74ef                         ; $521f: $cc $ef $74
    inc l                                         ; $5222: $2c
    ld [hl], b                                    ; $5223: $70
    db $dd                                        ; $5224: $dd
    sbc $f9                                       ; $5225: $de $f9
    xor [hl]                                      ; $5227: $ae
    ld de, $464f                                  ; $5228: $11 $4f $46
    cp h                                          ; $522b: $bc
    sbc d                                         ; $522c: $9a
    ld h, h                                       ; $522d: $64
    rr h                                          ; $522e: $cb $1c
    sbc e                                         ; $5230: $9b
    sub a                                         ; $5231: $97
    inc de                                        ; $5232: $13
    ld d, a                                       ; $5233: $57
    cp l                                          ; $5234: $bd
    inc de                                        ; $5235: $13
    db $dd                                        ; $5236: $dd
    adc [hl]                                      ; $5237: $8e
    ld l, e                                       ; $5238: $6b
    inc h                                         ; $5239: $24
    or l                                          ; $523a: $b5
    and [hl]                                      ; $523b: $a6
    rst $10                                       ; $523c: $d7
    sub h                                         ; $523d: $94
    ld l, e                                       ; $523e: $6b
    ld e, a                                       ; $523f: $5f
    call nz, $0110                                ; $5240: $c4 $10 $01
    or a                                          ; $5243: $b7
    db $e4                                        ; $5244: $e4
    ld h, d                                       ; $5245: $62

jr_054_5246:
    rst $28                                       ; $5246: $ef
    adc a                                         ; $5247: $8f
    add sp, $74                                   ; $5248: $e8 $74
    sub l                                         ; $524a: $95
    sbc b                                         ; $524b: $98
    rst $20                                       ; $524c: $e7
    sbc d                                         ; $524d: $9a
    ld [hl-], a                                   ; $524e: $32
    rst $08                                       ; $524f: $cf
    cp h                                          ; $5250: $bc
    inc de                                        ; $5251: $13
    rra                                           ; $5252: $1f
    add hl, sp                                    ; $5253: $39
    ld l, h                                       ; $5254: $6c
    or l                                          ; $5255: $b5
    inc de                                        ; $5256: $13

jr_054_5257:
    db $eb                                        ; $5257: $eb
    daa                                           ; $5258: $27
    ld a, $2f                                     ; $5259: $3e $2f
    cp d                                          ; $525b: $ba
    ldh [$6e], a                                  ; $525c: $e0 $6e
    sub e                                         ; $525e: $93
    add l                                         ; $525f: $85
    daa                                           ; $5260: $27
    ld h, c                                       ; $5261: $61
    ld b, h                                       ; $5262: $44
    ld d, a                                       ; $5263: $57
    or c                                          ; $5264: $b1
    rst $10                                       ; $5265: $d7
    ld [hl], c                                    ; $5266: $71
    sbc b                                         ; $5267: $98
    ld h, h                                       ; $5268: $64
    res 6, b                                      ; $5269: $cb $b0
    dec hl                                        ; $526b: $2b
    cp d                                          ; $526c: $ba
    db $fd                                        ; $526d: $fd
    ldh [$35], a                                  ; $526e: $e0 $35
    adc l                                         ; $5270: $8d
    ld [hl], d                                    ; $5271: $72
    adc l                                         ; $5272: $8d
    xor [hl]                                      ; $5273: $ae
    scf                                           ; $5274: $37
    ld h, l                                       ; $5275: $65
    add [hl]                                      ; $5276: $86
    ld [$1c7d], sp                                ; $5277: $08 $7d $1c
    ld d, $9a                                     ; $527a: $16 $9a
    sub l                                         ; $527c: $95
    ld l, e                                       ; $527d: $6b
    ret c                                         ; $527e: $d8

    ld h, c                                       ; $527f: $61
    add a                                         ; $5280: $87
    ld [de], a                                    ; $5281: $12
    add hl, de                                    ; $5282: $19
    rst $38                                       ; $5283: $ff
    or [hl]                                       ; $5284: $b6
    db $e4                                        ; $5285: $e4
    cpl                                           ; $5286: $2f
    db $ed                                        ; $5287: $ed
    and b                                         ; $5288: $a0
    ld de, $0d71                                  ; $5289: $11 $71 $0d
    ld e, e                                       ; $528c: $5b
    db $ed                                        ; $528d: $ed
    dec e                                         ; $528e: $1d
    xor [hl]                                      ; $528f: $ae
    inc l                                         ; $5290: $2c
    add hl, de                                    ; $5291: $19
    ld a, a                                       ; $5292: $7f
    cp b                                          ; $5293: $b8
    xor $ae                                       ; $5294: $ee $ae
    ld a, d                                       ; $5296: $7a
    db $e3                                        ; $5297: $e3
    rst $18                                       ; $5298: $df
    or $0e                                        ; $5299: $f6 $0e
    ld d, a                                       ; $529b: $57
    sub [hl]                                      ; $529c: $96
    adc h                                         ; $529d: $8c
    ccf                                           ; $529e: $3f
    ld d, e                                       ; $529f: $53
    dec h                                         ; $52a0: $25
    and $29                                       ; $52a1: $e6 $29
    rst $10                                       ; $52a3: $d7
    jp nc, $d8b9                                  ; $52a4: $d2 $b9 $d8

    ld [hl], e                                    ; $52a7: $73
    db $ed                                        ; $52a8: $ed
    ld d, b                                       ; $52a9: $50
    and e                                         ; $52aa: $a3
    db $eb                                        ; $52ab: $eb
    rra                                           ; $52ac: $1f
    or [hl]                                       ; $52ad: $b6
    jr z, jr_054_52f3                             ; $52ae: $28 $43

    inc b                                         ; $52b0: $04
    db $dd                                        ; $52b1: $dd
    and $91                                       ; $52b2: $e6 $91
    cp c                                          ; $52b4: $b9
    cp b                                          ; $52b5: $b8
    call z, $1e6c                                 ; $52b6: $cc $6c $1e
    ld c, c                                       ; $52b9: $49
    ld c, l                                       ; $52ba: $4d
    ld [hl], d                                    ; $52bb: $72
    xor c                                         ; $52bc: $a9
    call nz, $5821                                ; $52bd: $c4 $21 $58
    jr nz, jr_054_5246                            ; $52c0: $20 $84

    ccf                                           ; $52c2: $3f
    db $dd                                        ; $52c3: $dd
    sbc [hl]                                      ; $52c4: $9e
    ldh a, [$88]                                  ; $52c5: $f0 $88
    ld d, a                                       ; $52c7: $57
    db $eb                                        ; $52c8: $eb
    jr c, jr_054_5257                             ; $52c9: $38 $8c

    add sp, $2a                                   ; $52cb: $e8 $2a
    sbc $e3                                       ; $52cd: $de $e3
    add hl, hl                                    ; $52cf: $29
    di                                            ; $52d0: $f3
    or b                                          ; $52d1: $b0
    adc [hl]                                      ; $52d2: $8e
    sbc e                                         ; $52d3: $9b
    ld l, e                                       ; $52d4: $6b
    ld [hl], h                                    ; $52d5: $74
    xor [hl]                                      ; $52d6: $ae
    dec e                                         ; $52d7: $1d
    add a                                         ; $52d8: $87
    dec e                                         ; $52d9: $1d
    or a                                          ; $52da: $b7
    inc b                                         ; $52db: $04
    ld [hl+], a                                   ; $52dc: $22
    ld a, l                                       ; $52dd: $7d
    inc e                                         ; $52de: $1c
    ld d, $5a                                     ; $52df: $16 $5a
    xor [hl]                                      ; $52e1: $ae
    push hl                                       ; $52e2: $e5
    or b                                          ; $52e3: $b0
    ret nc                                        ; $52e4: $d0

    ld [hl], d                                    ; $52e5: $72
    db $ed                                        ; $52e6: $ed
    ld c, a                                       ; $52e7: $4f
    ld e, c                                       ; $52e8: $59
    halt                                          ; $52e9: $76
    sub d                                         ; $52ea: $92
    cp [hl]                                       ; $52eb: $be
    jp z, $a58b                                   ; $52ec: $ca $8b $a5

    add hl, sp                                    ; $52ef: $39
    db $fc                                        ; $52f0: $fc
    ld e, d                                       ; $52f1: $5a
    adc e                                         ; $52f2: $8b

jr_054_52f3:
    ld a, d                                       ; $52f3: $7a
    ld a, e                                       ; $52f4: $7b
    jp c, $cb61                                   ; $52f5: $da $61 $cb

    ld a, [hl]                                    ; $52f8: $7e
    adc h                                         ; $52f9: $8c
    sbc $91                                       ; $52fa: $de $91
    rla                                           ; $52fc: $17
    db $e3                                        ; $52fd: $e3
    ld [hl-], a                                   ; $52fe: $32
    sbc $e3                                       ; $52ff: $de $e3
    ld [hl], l                                    ; $5301: $75
    inc e                                         ; $5302: $1c
    halt                                          ; $5303: $76
    ld e, h                                       ; $5304: $5c
    sub e                                         ; $5305: $93
    db $ec                                        ; $5306: $ec
    cp l                                          ; $5307: $bd
    ld h, h                                       ; $5308: $64
    ld [hl], h                                    ; $5309: $74
    dec a                                         ; $530a: $3d
    call z, Call_000_3d5f                         ; $530b: $cc $5f $3d
    adc b                                         ; $530e: $88
    nop                                           ; $530f: $00
    ld a, l                                       ; $5310: $7d
    inc e                                         ; $5311: $1c
    ld b, [hl]                                    ; $5312: $46
    ld d, b                                       ; $5313: $50
    and h                                         ; $5314: $a4
    ld l, e                                       ; $5315: $6b
    jp z, $bde5                                   ; $5316: $ca $e5 $bd

    sub $3c                                       ; $5319: $d6 $3c
    ld [c], a                                     ; $531b: $e2
    push de                                       ; $531c: $d5
    ld b, h                                       ; $531d: $44
    jp $c4bc                                      ; $531e: $c3 $bc $c4


    dec l                                         ; $5321: $2d

jr_054_5322:
    ld h, [hl]                                    ; $5322: $66

jr_054_5323:
    ld a, h                                       ; $5323: $7c
    jr c, jr_054_5323                             ; $5324: $38 $fd

    inc h                                         ; $5326: $24
    sbc d                                         ; $5327: $9a
    reti                                          ; $5328: $d9


    ld [bc], a                                    ; $5329: $02
    ld [hl], a                                    ; $532a: $77
    ld l, a                                       ; $532b: $6f
    sbc b                                         ; $532c: $98
    ld d, b                                       ; $532d: $50
    cp e                                          ; $532e: $bb
    ld h, h                                       ; $532f: $64
    cpl                                           ; $5330: $2f
    reti                                          ; $5331: $d9


    ld h, c                                       ; $5332: $61
    xor e                                         ; $5333: $ab
    ld h, c                                       ; $5334: $61
    xor e                                         ; $5335: $ab
    add hl, hl                                    ; $5336: $29
    sub a                                         ; $5337: $97
    sub a                                         ; $5338: $97
    jp Jump_000_2fe8                              ; $5339: $c3 $e8 $2f


    ld [hl-], a                                   ; $533c: $32
    ld b, d                                       ; $533d: $42
    ccf                                           ; $533e: $3f
    ld d, $4f                                     ; $533f: $16 $4f
    cp c                                          ; $5341: $b9
    ld a, h                                       ; $5342: $7c
    ld d, d                                       ; $5343: $52
    inc hl                                        ; $5344: $23
    dec a                                         ; $5345: $3d
    ld c, c                                       ; $5346: $49
    xor [hl]                                      ; $5347: $ae
    cp c                                          ; $5348: $b9
    sub $bb                                       ; $5349: $d6 $bb
    ld a, $4d                                     ; $534b: $3e $4d

jr_054_534d:
    ld a, a                                       ; $534d: $7f
    add hl, bc                                    ; $534e: $09
    cp l                                          ; $534f: $bd
    db $10                                        ; $5350: $10
    rst $30                                       ; $5351: $f7
    ld d, c                                       ; $5352: $51
    dec sp                                        ; $5353: $3b
    rst $38                                       ; $5354: $ff
    or b                                          ; $5355: $b0
    ret                                           ; $5356: $c9


    or $ce                                        ; $5357: $f6 $ce
    reti                                          ; $5359: $d9


    ld l, e                                       ; $535a: $6b
    xor h                                         ; $535b: $ac
    ld e, l                                       ; $535c: $5d
    add $eb                                       ; $535d: $c6 $eb
    jr c, jr_054_534d                             ; $535f: $38 $ec

    rst $00                                       ; $5361: $c7
    add sp, -$0f                                  ; $5362: $e8 $f1
    xor e                                         ; $5364: $ab
    pop de                                        ; $5365: $d1
    cp $0d                                        ; $5366: $fe $0d
    ld [hl+], a                                   ; $5368: $22
    or a                                          ; $5369: $b7
    jr c, jr_054_5322                             ; $536a: $38 $b6

    rla                                           ; $536c: $17
    ld e, h                                       ; $536d: $5c
    jp c, Jump_000_18fd                           ; $536e: $da $fd $18

    dec a                                         ; $5371: $3d
    db $fc                                        ; $5372: $fc
    sbc c                                         ; $5373: $99
    ld b, a                                       ; $5374: $47
    add sp, $07                                   ; $5375: $e8 $07
    ld [hl+], a                                   ; $5377: $22
    add b                                         ; $5378: $80
    ld b, h                                       ; $5379: $44
    ld c, [hl]                                    ; $537a: $4e
    call nc, $a534                                ; $537b: $d4 $34 $a5
    dec e                                         ; $537e: $1d

jr_054_537f:
    ld e, c                                       ; $537f: $59
    sbc c                                         ; $5380: $99
    or $39                                        ; $5381: $f6 $39
    cp c                                          ; $5383: $b9
    or h                                          ; $5384: $b4
    jp Jump_000_1196                              ; $5385: $c3 $96 $11


    ld c, c                                       ; $5388: $49
    xor [hl]                                      ; $5389: $ae
    cp c                                          ; $538a: $b9
    sub $bb                                       ; $538b: $d6 $bb
    ld a, $4d                                     ; $538d: $3e $4d
    ld a, a                                       ; $538f: $7f
    add hl, bc                                    ; $5390: $09
    cp l                                          ; $5391: $bd
    db $10                                        ; $5392: $10
    or a                                          ; $5393: $b7
    ld hl, sp-$10                                 ; $5394: $f8 $f0
    add sp, $5c                                   ; $5396: $e8 $5c
    ld d, e                                       ; $5398: $53
    ld c, $cb                                     ; $5399: $0e $cb
    ld a, b                                       ; $539b: $78
    ld c, d                                       ; $539c: $4a
    rra                                           ; $539d: $1f
    db $fd                                        ; $539e: $fd
    ld b, l                                       ; $539f: $45
    ld e, h                                       ; $53a0: $5c
    ld d, e                                       ; $53a1: $53
    and $e9                                       ; $53a2: $e6 $e9
    inc a                                         ; $53a4: $3c
    cp d                                          ; $53a5: $ba
    xor e                                         ; $53a6: $ab
    sub $34                                       ; $53a7: $d6 $34
    rst $00                                       ; $53a9: $c7
    cp h                                          ; $53aa: $bc
    ld [hl], h                                    ; $53ab: $74
    ei                                            ; $53ac: $fb
    or l                                          ; $53ad: $b5
    db $d3                                        ; $53ae: $d3
    db $f4                                        ; $53af: $f4
    jr jr_054_537f                                ; $53b0: $18 $cd

    jp c, $97dd                                   ; $53b2: $da $dd $97

    sbc c                                         ; $53b5: $99
    ld e, l                                       ; $53b6: $5d
    db $10                                        ; $53b7: $10
    ld bc, $1c7d                                  ; $53b8: $01 $7d $1c
    sub [hl]                                      ; $53bb: $96
    sbc b                                         ; $53bc: $98
    rst $30                                       ; $53bd: $f7
    ld h, e                                       ; $53be: $63
    inc [hl]                                      ; $53bf: $34
    ld b, h                                       ; $53c0: $44
    db $dd                                        ; $53c1: $dd
    and $c5                                       ; $53c2: $e6 $c5
    daa                                           ; $53c4: $27
    ld c, e                                       ; $53c5: $4b
    ld a, [$8f2a]                                 ; $53c6: $fa $2a $8f
    ld c, b                                       ; $53c9: $48
    ld [hl], d                                    ; $53ca: $72
    db $ed                                        ; $53cb: $ed
    ld h, h                                       ; $53cc: $64

Jump_054_53cd:
    inc a                                         ; $53cd: $3c
    jp nz, $30ed                                  ; $53ce: $c2 $ed $30

    ld b, h                                       ; $53d1: $44
    ld [hl], a                                    ; $53d2: $77
    rst $38                                       ; $53d3: $ff
    and a                                         ; $53d4: $a7
    db $eb                                        ; $53d5: $eb
    db $10                                        ; $53d6: $10
    ld bc, $c477                                  ; $53d7: $01 $77 $c4
    add sp, -$6f                                  ; $53da: $e8 $91
    db $ed                                        ; $53dc: $ed
    add l                                         ; $53dd: $85
    dec e                                         ; $53de: $1d
    ld a, [hl]                                    ; $53df: $7e
    ld sp, $3abe                                  ; $53e0: $31 $be $3a
    dec bc                                        ; $53e3: $0b
    rrca                                          ; $53e4: $0f
    scf                                           ; $53e5: $37
    rst $28                                       ; $53e6: $ef
    or $d2                                        ; $53e7: $f6 $d2
    rst $10                                       ; $53e9: $d7
    di                                            ; $53ea: $f3
    db $e4                                        ; $53eb: $e4
    ld e, b                                       ; $53ec: $58
    ld d, d                                       ; $53ed: $52
    xor a                                         ; $53ee: $af
    adc a                                         ; $53ef: $8f
    jp $dc88                                      ; $53f0: $c3 $88 $dc


    sub h                                         ; $53f3: $94
    ld l, e                                       ; $53f4: $6b
    sub d                                         ; $53f5: $92
    db $e3                                        ; $53f6: $e3
    cp d                                          ; $53f7: $ba
    inc [hl]                                      ; $53f8: $34
    ld e, $b6                                     ; $53f9: $1e $b6

Call_054_53fb:
    sbc d                                         ; $53fb: $9a
    ld [hl], d                                    ; $53fc: $72
    add hl, sp                                    ; $53fd: $39
    dec [hl]                                      ; $53fe: $35
    ld [bc], a                                    ; $53ff: $02
    rst $30                                       ; $5400: $f7
    ld hl, sp+$63                                 ; $5401: $f8 $63
    swap d                                        ; $5403: $cb $32
    ld e, [hl]                                    ; $5405: $5e
    rst $00                                       ; $5406: $c7
    ld h, c                                       ; $5407: $61
    adc c                                         ; $5408: $89
    add hl, de                                    ; $5409: $19
    ld b, d                                       ; $540a: $42
    adc b                                         ; $540b: $88
    dec l                                         ; $540c: $2d
    inc hl                                        ; $540d: $23
    cp d                                          ; $540e: $ba
    inc [hl]                                      ; $540f: $34
    ld l, $2f                                     ; $5410: $2e $2f
    sub e                                         ; $5412: $93
    and h                                         ; $5413: $a4
    ld h, a                                       ; $5414: $67
    sub c                                         ; $5415: $91
    add hl, hl                                    ; $5416: $29
    inc sp                                        ; $5417: $33
    ld e, e                                       ; $5418: $5b
    cp e                                          ; $5419: $bb
    rst $38                                       ; $541a: $ff
    ld e, d                                       ; $541b: $5a
    and e                                         ; $541c: $a3
    ld e, a                                       ; $541d: $5f
    ld l, e                                       ; $541e: $6b
    db $10                                        ; $541f: $10
    ld b, d                                       ; $5420: $42
    adc b                                         ; $5421: $88
    nop                                           ; $5422: $00
    rst $30                                       ; $5423: $f7
    and $9c                                       ; $5424: $e6 $9c
    or l                                          ; $5426: $b5
    ld l, e                                       ; $5427: $6b
    cp a                                          ; $5428: $bf
    dec [hl]                                      ; $5429: $35
    and a                                         ; $542a: $a7
    ccf                                           ; $542b: $3f
    or e                                          ; $542c: $b3
    ld b, a                                       ; $542d: $47
    ld [hl], a                                    ; $542e: $77
    push de                                       ; $542f: $d5
    ld h, c                                       ; $5430: $61
    rst $00                                       ; $5431: $c7
    or $ce                                        ; $5432: $f6 $ce
    ld sp, hl                                     ; $5434: $f9
    ld c, l                                       ; $5435: $4d
    ccf                                           ; $5436: $3f
    pop de                                        ; $5437: $d1
    and l                                         ; $5438: $a5
    db $dd                                        ; $5439: $dd
    and c                                         ; $543a: $a1
    sub $9e                                       ; $543b: $d6 $9e
    inc b                                         ; $543d: $04
    ld e, [hl]                                    ; $543e: $5e
    sub a                                         ; $543f: $97
    add $3c                                       ; $5440: $c6 $3c
    and c                                         ; $5442: $a1
    ld a, [bc]                                    ; $5443: $0a
    ld [hl+], a                                   ; $5444: $22
    rst $30                                       ; $5445: $f7
    sub d                                         ; $5446: $92
    inc h                                         ; $5447: $24
    db $dd                                        ; $5448: $dd
    ld d, l                                       ; $5449: $55
    ld d, e                                       ; $544a: $53
    ld c, $3b                                     ; $544b: $0e $3b
    pop af                                        ; $544d: $f1
    rst $00                                       ; $544e: $c7
    add sp, -$0a                                  ; $544f: $e8 $f6
    add e                                         ; $5451: $83
    halt                                          ; $5452: $76
    cp l                                          ; $5453: $bd
    push hl                                       ; $5454: $e5
    dec h                                         ; $5455: $25
    db $10                                        ; $5456: $10
    ld b, d                                       ; $5457: $42
    or a                                          ; $5458: $b7
    and $3a                                       ; $5459: $e6 $3a
    db $e3                                        ; $545b: $e3
    rst $18                                       ; $545c: $df
    ld [c], a                                     ; $545d: $e2
    ld l, e                                       ; $545e: $6b
    call $8eb5                                    ; $545f: $cd $b5 $8e
    jp Jump_054_696e                              ; $5462: $c3 $6e $69


    ld e, c                                       ; $5465: $59
    and l                                         ; $5466: $a5
    ld e, a                                       ; $5467: $5f
    ld h, l                                       ; $5468: $65
    or c                                          ; $5469: $b1
    and h                                         ; $546a: $a4
    ld b, [hl]                                    ; $546b: $46
    rst $30                                       ; $546c: $f7
    ld d, l                                       ; $546d: $55
    ld d, a                                       ; $546e: $57
    and d                                         ; $546f: $a2
    cp h                                          ; $5470: $bc
    db $f4                                        ; $5471: $f4
    dec hl                                        ; $5472: $2b
    adc a                                         ; $5473: $8f
    ld a, [de]                                    ; $5474: $1a
    pop af                                        ; $5475: $f1
    and [hl]                                      ; $5476: $a6
    call z, $9f6b                                 ; $5477: $cc $6b $9f
    ld a, c                                       ; $547a: $79
    and c                                         ; $547b: $a1
    ld c, e                                       ; $547c: $4b
    inc bc                                        ; $547d: $03
    ld hl, $3d44                                  ; $547e: $21 $44 $3d
    adc c                                         ; $5481: $89
    pop af                                        ; $5482: $f1
    sub d                                         ; $5483: $92
    ld d, a                                       ; $5484: $57
    ld d, e                                       ; $5485: $53
    and $5e                                       ; $5486: $e6 $5e
    ld [$e5f7], sp                                ; $5488: $08 $f7 $e5
    add $ae                                       ; $548b: $c6 $ae
    ldh [$7f], a                                  ; $548d: $e0 $7f
    ret c                                         ; $548f: $d8

    or d                                          ; $5490: $b2
    sbc $f2                                       ; $5491: $de $f2
    ld [de], a                                    ; $5493: $12
    cp b                                          ; $5494: $b8

jr_054_5495:
    ei                                            ; $5495: $fb
    sbc $39                                       ; $5496: $de $39
    ld d, e                                       ; $5498: $53
    ld c, $a3                                     ; $5499: $0e $a3
    ld [hl], e                                    ; $549b: $73
    adc l                                         ; $549c: $8d
    ld a, b                                       ; $549d: $78
    jr c, jr_054_5495                             ; $549e: $38 $f5

    ld l, [hl]                                    ; $54a0: $6e
    ld l, c                                       ; $54a1: $69
    ld e, c                                       ; $54a2: $59
    and l                                         ; $54a3: $a5
    ld e, a                                       ; $54a4: $5f
    ld h, l                                       ; $54a5: $65
    or c                                          ; $54a6: $b1
    ld l, b                                       ; $54a7: $68
    ld b, a                                       ; $54a8: $47
    add sp, -$19                                  ; $54a9: $e8 $e7
    sub b                                         ; $54ab: $90
    ld e, l                                       ; $54ac: $5d
    pop de                                        ; $54ad: $d1
    db $ed                                        ; $54ae: $ed
    sbc b                                         ; $54af: $98
    rst $30                                       ; $54b0: $f7
    sub a                                         ; $54b1: $97
    add d                                         ; $54b2: $82
    dec [hl]                                      ; $54b3: $35
    pop hl                                        ; $54b4: $e1
    sub l                                         ; $54b5: $95
    jp nc, Jump_000_35ce                          ; $54b6: $d2 $ce $35

    ld h, l                                       ; $54b9: $65
    sbc c                                         ; $54ba: $99
    push bc                                       ; $54bb: $c5
    add a                                         ; $54bc: $87
    cp l                                          ; $54bd: $bd
    sub e                                         ; $54be: $93
    pop af                                        ; $54bf: $f1
    adc b                                         ; $54c0: $88
    ld d, a                                       ; $54c1: $57
    adc e                                         ; $54c2: $8b
    ld e, c                                       ; $54c3: $59
    cp b                                          ; $54c4: $b8
    ld [hl], d                                    ; $54c5: $72
    ld l, e                                       ; $54c6: $6b
    jp Jump_000_2356                              ; $54c7: $c3 $56 $23


    ld e, $86                                     ; $54ca: $1e $86
    ld [$9e29], sp                                ; $54cc: $08 $29 $9e
    sbc c                                         ; $54cf: $99
    ld e, l                                       ; $54d0: $5d
    or e                                          ; $54d1: $b3
    adc h                                         ; $54d2: $8c
    db $eb                                        ; $54d3: $eb
    adc e                                         ; $54d4: $8b
    ld c, h                                       ; $54d5: $4c
    dec a                                         ; $54d6: $3d
    db $ec                                        ; $54d7: $ec
    db $fd                                        ; $54d8: $fd
    ld d, l                                       ; $54d9: $55
    ld a, $6f                                     ; $54da: $3e $6f
    or c                                          ; $54dc: $b1
    sub e                                         ; $54dd: $93
    sbc e                                         ; $54de: $9b
    ld hl, $ca84                                  ; $54df: $21 $84 $ca
    inc a                                         ; $54e2: $3c
    rst $10                                       ; $54e3: $d7
    ld e, [hl]                                    ; $54e4: $5e
    db $e3                                        ; $54e5: $e3
    ld [hl], l                                    ; $54e6: $75
    inc e                                         ; $54e7: $1c
    sub [hl]                                      ; $54e8: $96
    sbc b                                         ; $54e9: $98
    ld hl, $dd02                                  ; $54ea: $21 $02 $dd
    and $9d                                       ; $54ed: $e6 $9d
    ld hl, sp-$26                                 ; $54ef: $f8 $da
    sub d                                         ; $54f1: $92
    ld a, a                                       ; $54f2: $7f
    ld c, $2f                                     ; $54f3: $0e $2f
    jp hl                                         ; $54f5: $e9


    xor e                                         ; $54f6: $ab
    cp h                                          ; $54f7: $bc
    ccf                                           ; $54f8: $3f
    di                                            ; $54f9: $f3
    sbc b                                         ; $54fa: $98
    ld a, [hl+]                                   ; $54fb: $2a
    add c                                         ; $54fc: $81
    db $eb                                        ; $54fd: $eb
    sub $97                                       ; $54fe: $d6 $97
    sub $4b                                       ; $5500: $d6 $4b
    ld a, c                                       ; $5502: $79
    pop af                                        ; $5503: $f1
    ret                                           ; $5504: $c9


    adc c                                         ; $5505: $89
    dec e                                         ; $5506: $1d
    xor a                                         ; $5507: $af
    sbc c                                         ; $5508: $99
    cp l                                          ; $5509: $bd
    ld c, h                                       ; $550a: $4c
    sub d                                         ; $550b: $92
    add hl, sp                                    ; $550c: $39
    ld [hl], c                                    ; $550d: $71
    db $ed                                        ; $550e: $ed
    rst $08                                       ; $550f: $cf
    db $fc                                        ; $5510: $fc
    ld c, [hl]                                    ; $5511: $4e
    rst $00                                       ; $5512: $c7
    ld h, d                                       ; $5513: $62
    adc b                                         ; $5514: $88
    nop                                           ; $5515: $00
    add hl, hl                                    ; $5516: $29
    ld e, [hl]                                    ; $5517: $5e
    ld h, $49                                     ; $5518: $26 $49
    db $ed                                        ; $551a: $ed
    ld a, [hl]                                    ; $551b: $7e
    adc h                                         ; $551c: $8c
    sbc [hl]                                      ; $551d: $9e
    ld e, b                                       ; $551e: $58
    ld b, c                                       ; $551f: $41
    inc b                                         ; $5520: $04
    ld a, l                                       ; $5521: $7d
    inc e                                         ; $5522: $1c
    ld b, [hl]                                    ; $5523: $46
    cp h                                          ; $5524: $bc
    ld a, [de]                                    ; $5525: $1a
    pop de                                        ; $5526: $d1
    ld d, l                                       ; $5527: $55
    inc a                                         ; $5528: $3c
    ld h, l                                       ; $5529: $65
    sbc $89                                       ; $552a: $de $89
    xor a                                         ; $552c: $af
    dec l                                         ; $552d: $2d
    jp hl                                         ; $552e: $e9


    xor e                                         ; $552f: $ab
    cp h                                          ; $5530: $bc
    or $a3                                        ; $5531: $f6 $a3
    sub a                                         ; $5533: $97
    ld e, b                                       ; $5534: $58
    call $c3b2                                    ; $5535: $cd $b2 $c3
    cp c                                          ; $5538: $b9
    sub [hl]                                      ; $5539: $96
    ld a, [hl]                                    ; $553a: $7e
    xor l                                         ; $553b: $ad
    ld b, c                                       ; $553c: $41

jr_054_553d:
    inc b                                         ; $553d: $04
    ld [hl], a                                    ; $553e: $77
    ld a, $39                                     ; $553f: $3e $39
    or c                                          ; $5541: $b1
    db $e3                                        ; $5542: $e3
    add hl, hl                                    ; $5543: $29
    di                                            ; $5544: $f3
    ld e, h                                       ; $5545: $5c
    ld c, e                                       ; $5546: $4b
    cp a                                          ; $5547: $bf
    jr c, jr_054_553d                             ; $5548: $38 $f3

    jp nc, Jump_000_29bf                          ; $554a: $d2 $bf $29

    ld b, e                                       ; $554d: $43
    inc b                                         ; $554e: $04
    ld [hl], a                                    ; $554f: $77
    call nz, $b5e8                                ; $5550: $c4 $e8 $b5
    daa                                           ; $5553: $27
    add c                                         ; $5554: $81
    and a                                         ; $5555: $a7
    adc e                                         ; $5556: $8b
    inc a                                         ; $5557: $3c
    ld [$69e1], sp                                ; $5558: $08 $e1 $69
    ld h, [hl]                                    ; $555b: $66
    sbc $8f                                       ; $555c: $de $8f
    pop de                                        ; $555e: $d1
    ld l, e                                       ; $555f: $6b

jr_054_5560:
    ld c, a                                       ; $5560: $4f
    ld [bc], a                                    ; $5561: $02
    ld b, e                                       ; $5562: $43
    inc b                                         ; $5563: $04
    ld [hl], a                                    ; $5564: $77
    ld a, $99                                     ; $5565: $3e $99
    jp nc, $e477                                  ; $5567: $d2 $77 $e4

    push bc                                       ; $556a: $c5
    add sp, $5e                                   ; $556b: $e8 $5e
    ld [$493d], sp                                ; $556d: $08 $3d $49
    ld l, $3a                                     ; $5570: $2e $3a
    rst $10                                       ; $5572: $d7
    ld c, [hl]                                    ; $5573: $4e
    call nc, $f35b                                ; $5574: $d4 $5b $f3
    ld a, [hl-]                                   ; $5577: $3a
    ld c, $fb                                     ; $5578: $0e $fb
    ld sp, $517a                                  ; $557a: $31 $7a $51
    rla                                           ; $557d: $17
    pop af                                        ; $557e: $f1
    adc [hl]                                      ; $557f: $8e
    cp h                                          ; $5580: $bc
    jr jr_054_5560                                ; $5581: $18 $dd

    dec bc                                        ; $5583: $0b
    ld bc, $cd80                                  ; $5584: $01 $80 $cd
    ld d, e                                       ; $5587: $53
    ld a, [$2488]                                 ; $5588: $fa $88 $24
    rst $10                                       ; $558b: $d7
    ld a, d                                       ; $558c: $7a
    rst $10                                       ; $558d: $d7
    and a                                         ; $558e: $a7
    jp hl                                         ; $558f: $e9


    cpl                                           ; $5590: $2f
    ld h, c                                       ; $5591: $61
    xor [hl]                                      ; $5592: $ae
    ld e, [hl]                                    ; $5593: $5e
    ld [$ff80], sp                                ; $5594: $08 $80 $ff
    add hl, sp                                    ; $5597: $39
    cp h                                          ; $5598: $bc
    ret nc                                        ; $5599: $d0

    jp hl                                         ; $559a: $e9


    xor d                                         ; $559b: $aa
    ld [hl], l                                    ; $559c: $75
    inc e                                         ; $559d: $1c
    halt                                          ; $559e: $76
    jr z, @-$46                                   ; $559f: $28 $b8

    ld l, [hl]                                    ; $55a1: $6e
    di                                            ; $55a2: $f3
    ld e, h                                       ; $55a3: $5c
    db $eb                                        ; $55a4: $eb
    db $e4                                        ; $55a5: $e4
    ld h, c                                       ; $55a6: $61
    add a                                         ; $55a7: $87
    sbc l                                         ; $55a8: $9d
    adc h                                         ; $55a9: $8c
    sub a                                         ; $55aa: $97

jr_054_55ab:
    db $e4                                        ; $55ab: $e4
    ret z                                         ; $55ac: $c8

    xor [hl]                                      ; $55ad: $ae
    push af                                       ; $55ae: $f5
    xor [hl]                                      ; $55af: $ae
    ld c, a                                       ; $55b0: $4f
    db $d3                                        ; $55b1: $d3
    ld e, a                                       ; $55b2: $5f
    ld [bc], a                                    ; $55b3: $02
    ld b, h                                       ; $55b4: $44
    dec a                                         ; $55b5: $3d
    ld c, c                                       ; $55b6: $49
    ld l, $f5                                     ; $55b7: $2e $f5
    ld h, h                                       ; $55b9: $64
    ld sp, $ec63                                  ; $55ba: $31 $63 $ec
    ld e, d                                       ; $55bd: $5a
    rst $00                                       ; $55be: $c7
    ld h, c                                       ; $55bf: $61
    ld e, a                                       ; $55c0: $5f
    and h                                         ; $55c1: $a4
    rla                                           ; $55c2: $17
    ld [bc], a                                    ; $55c3: $02
    add b                                         ; $55c4: $80
    xor l                                         ; $55c5: $ad
    ld b, [hl]                                    ; $55c6: $46
    dec l                                         ; $55c7: $2d
    db $fc                                        ; $55c8: $fc
    ld h, c                                       ; $55c9: $61
    add a                                         ; $55ca: $87
    add hl, hl                                    ; $55cb: $29
    di                                            ; $55cc: $f3
    ld [$ec63], sp                                ; $55cd: $08 $63 $ec
    or $83                                        ; $55d0: $f6 $83
    ld b, a                                       ; $55d2: $47
    cp [hl]                                       ; $55d3: $be
    ld [hl], e                                    ; $55d4: $73
    ld [hl], d                                    ; $55d5: $72
    add hl, hl                                    ; $55d6: $29
    inc sp                                        ; $55d7: $33
    ld b, h                                       ; $55d8: $44
    ld [hl], a                                    ; $55d9: $77
    ld e, e                                       ; $55da: $5b
    ld b, [hl]                                    ; $55db: $46
    inc h                                         ; $55dc: $24
    ld l, a                                       ; $55dd: $6f
    or a                                          ; $55de: $b7
    ld bc, $3298                                  ; $55df: $01 $98 $32
    adc a                                         ; $55e2: $8f
    jr nc, jr_054_55ab                            ; $55e3: $30 $c6

    ld l, [hl]                                    ; $55e5: $6e
    ccf                                           ; $55e6: $3f
    ld a, b                                       ; $55e7: $78
    db $e4                                        ; $55e8: $e4
    dec sp                                        ; $55e9: $3b
    daa                                           ; $55ea: $27
    sub a                                         ; $55eb: $97
    ld [hl-], a                                   ; $55ec: $32
    rst $30                                       ; $55ed: $f7
    ld b, d                                       ; $55ee: $42
    dec a                                         ; $55ef: $3d
    ret                                           ; $55f0: $c9


    ccf                                           ; $55f1: $3f
    db $eb                                        ; $55f2: $eb
    jr c, @-$12                                   ; $55f3: $38 $ec

    cp h                                          ; $55f5: $bc
    add hl, hl                                    ; $55f6: $29
    or e                                          ; $55f7: $b3
    halt                                          ; $55f8: $76
    add a                                         ; $55f9: $87
    ld a, [de]                                    ; $55fa: $1a
    pop af                                        ; $55fb: $f1
    sub h                                         ; $55fc: $94
    ld a, [c]                                     ; $55fd: $f2
    sub h                                         ; $55fe: $94
    ld a, c                                       ; $55ff: $79
    ccf                                           ; $5600: $3f
    ld b, [hl]                                    ; $5601: $46
    cpl                                           ; $5602: $2f
    jp hl                                         ; $5603: $e9


    xor e                                         ; $5604: $ab
    ld a, b                                       ; $5605: $78
    ld e, b                                       ; $5606: $58
    db $e3                                        ; $5607: $e3
    ld de, $d8c6                                  ; $5608: $11 $c6 $d8
    db $ed                                        ; $560b: $ed
    rlca                                          ; $560c: $07
    db $ed                                        ; $560d: $ed
    adc b                                         ; $560e: $88
    db $e4                                        ; $560f: $e4
    push af                                       ; $5610: $f5
    ld e, d                                       ; $5611: $5a
    ld a, [bc]                                    ; $5612: $0a
    dec [hl]                                      ; $5613: $35
    ld h, l                                       ; $5614: $65
    ld e, $a6                                     ; $5615: $1e $a6
    and [hl]                                      ; $5617: $a6
    db $f4                                        ; $5618: $f4
    pop de                                        ; $5619: $d1
    ld e, a                                       ; $561a: $5f
    call nz, $79d3                                ; $561b: $c4 $d3 $79
    rst $00                                       ; $561e: $c7
    dec l                                         ; $561f: $2d
    add c                                         ; $5620: $81
    ld [$3e77], sp                                ; $5621: $08 $77 $3e
    sbc c                                         ; $5624: $99

Call_054_5625:
    jp nc, $be47                                  ; $5625: $d2 $47 $be

    ld [hl], e                                    ; $5628: $73
    ld [hl], d                                    ; $5629: $72
    add hl, hl                                    ; $562a: $29
    di                                            ; $562b: $f3
    ld hl, sp-$49                                 ; $562c: $f8 $b7
    push af                                       ; $562e: $f5
    xor [hl]                                      ; $562f: $ae
    ld c, a                                       ; $5630: $4f
    db $d3                                        ; $5631: $d3
    ld e, a                                       ; $5632: $5f
    ld b, d                                       ; $5633: $42
    cpl                                           ; $5634: $2f
    inc b                                         ; $5635: $04
    add hl, hl                                    ; $5636: $29
    ld h, h                                       ; $5637: $64
    ld d, a                                       ; $5638: $57
    ld c, l                                       ; $5639: $4d
    or d                                          ; $563a: $b2
    ld h, l                                       ; $563b: $65
    ld [hl], h                                    ; $563c: $74
    cp l                                          ; $563d: $bd
    push af                                       ; $563e: $f5
    xor [hl]                                      ; $563f: $ae
    ld c, a                                       ; $5640: $4f
    db $d3                                        ; $5641: $d3
    ld e, a                                       ; $5642: $5f
    ld [bc], a                                    ; $5643: $02
    ld b, h                                       ; $5644: $44
    ld a, l                                       ; $5645: $7d
    inc e                                         ; $5646: $1c

Jump_054_5647:
    ld d, $9f                                     ; $5647: $16 $9f
    db $ec                                        ; $5649: $ec
    rst $00                                       ; $564a: $c7
    add sp, -$1f                                  ; $564b: $e8 $e1
    rst $08                                       ; $564d: $cf
    inc a                                         ; $564e: $3c
    rlca                                          ; $564f: $07
    di                                            ; $5650: $f3
    ret z                                         ; $5651: $c8

    ld [hl], a                                    ; $5652: $77
    ld c, [hl]                                    ; $5653: $4e
    ld l, $35                                     ; $5654: $2e $35
    ld c, e                                       ; $5656: $4b
    ld a, b                                       ; $5657: $78
    ld [de], a                                    ; $5658: $12
    jr nz, @+$04                                  ; $5659: $20 $02

    ld [hl], a                                    ; $565b: $77
    ld a, $99                                     ; $565c: $3e $99
    jp nc, $be47                                  ; $565e: $d2 $47 $be

    ld [hl], e                                    ; $5661: $73
    ld [hl], d                                    ; $5662: $72
    add hl, hl                                    ; $5663: $29
    di                                            ; $5664: $f3
    add sp, $5c                                   ; $5665: $e8 $5c
    and e                                         ; $5667: $a3
    ld d, $33                                     ; $5668: $16 $33
    add $de                                       ; $566a: $c6 $de
    rla                                           ; $566c: $17
    reti                                          ; $566d: $d9


    ld e, a                                       ; $566e: $5f
    rst $28                                       ; $566f: $ef
    ld a, [$fd34]                                 ; $5670: $fa $34 $fd
    dec h                                         ; $5673: $25
    db $f4                                        ; $5674: $f4
    ld b, d                                       ; $5675: $42
    ld a, l                                       ; $5676: $7d
    inc e                                         ; $5677: $1c
    ld b, [hl]                                    ; $5678: $46
    inc a                                         ; $5679: $3c
    and l                                         ; $567a: $a5
    cp h                                          ; $567b: $bc
    call nz, $3f6d                                ; $567c: $c4 $6d $3f
    ld b, [hl]                                    ; $567f: $46
    cpl                                           ; $5680: $2f

jr_054_5681:
    jp hl                                         ; $5681: $e9


    xor e                                         ; $5682: $ab
    ld a, b                                       ; $5683: $78
    add a                                         ; $5684: $87
    ld [hl], e                                    ; $5685: $73
    pop af                                        ; $5686: $f1
    ld hl, sp-$49                                 ; $5687: $f8 $b7
    ld de, $39fa                                  ; $5689: $11 $fa $39
    ld h, h                                       ; $568c: $64
    ld d, a                                       ; $568d: $57
    ld [hl], h                                    ; $568e: $74
    dec sp                                        ; $568f: $3b
    ld e, [hl]                                    ; $5690: $5e
    add $eb                                       ; $5691: $c6 $eb
    jr c, jr_054_5681                             ; $5693: $38 $ec

    rst $00                                       ; $5695: $c7
    add sp, $25                                   ; $5696: $e8 $25
    rst $38                                       ; $5698: $ff
    inc e                                         ; $5699: $1c
    or $94                                        ; $569a: $f6 $94
    add hl, sp                                    ; $569c: $39
    dec [hl]                                      ; $569d: $35
    ld [bc], a                                    ; $569e: $02
    dec a                                         ; $569f: $3d
    ret                                           ; $56a0: $c9


    sbc e                                         ; $56a1: $9b
    ld l, e                                       ; $56a2: $6b
    jp z, $9dac                                   ; $56a3: $ca $ac $9d

    ld a, d                                       ; $56a6: $7a
    cp l                                          ; $56a7: $bd
    db $10                                        ; $56a8: $10
    or a                                          ; $56a9: $b7
    ld [hl], a                                    ; $56aa: $77
    push de                                       ; $56ab: $d5
    ld h, c                                       ; $56ac: $61
    ld [$a2e1], sp                                ; $56ad: $08 $e1 $a2
    ld l, $e2                                     ; $56b0: $2e $e2
    add hl, hl                                    ; $56b2: $29
    ld a, l                                       ; $56b3: $7d
    pop af                                        ; $56b4: $f1
    ret                                           ; $56b5: $c9


    adc c                                         ; $56b6: $89
    dec e                                         ; $56b7: $1d
    cpl                                           ; $56b8: $2f
    ld [hl], h                                    ; $56b9: $74
    cp d                                          ; $56ba: $ba
    jp z, $0ec3                                   ; $56bb: $ca $c3 $0e

    or e                                          ; $56be: $b3
    adc h                                         ; $56bf: $8c
    dec sp                                        ; $56c0: $3b
    ld d, $1f                                     ; $56c1: $16 $1f
    ld [hl], $84                                  ; $56c3: $36 $84
    db $10                                        ; $56c5: $10
    ld bc, $c93d                                  ; $56c6: $01 $3d $c9
    db $db                                        ; $56c9: $db
    ld l, c                                       ; $56ca: $69
    cpl                                           ; $56cb: $2f
    sbc h                                         ; $56cc: $9c
    ld [hl], c                                    ; $56cd: $71
    rst $00                                       ; $56ce: $c7
    ld [c], a                                     ; $56cf: $e2
    jp $85ee                                      ; $56d0: $c3 $ee $85


    nop                                           ; $56d3: $00
    db $dd                                        ; $56d4: $dd
    rst $38                                       ; $56d5: $ff
    inc e                                         ; $56d6: $1c
    cpl                                           ; $56d7: $2f
    inc a                                         ; $56d8: $3c
    add hl, bc                                    ; $56d9: $09
    ld d, $2f                                     ; $56da: $16 $2f
    ld a, $59                                     ; $56dc: $3e $59
    cp d                                          ; $56de: $ba
    db $fd                                        ; $56df: $fd
    or c                                          ; $56e0: $b1
    ld sp, $fb76                                  ; $56e1: $31 $76 $fb
    ld h, c                                       ; $56e4: $61
    ld e, h                                       ; $56e5: $5c
    adc [hl]                                      ; $56e6: $8e
    sub c                                         ; $56e7: $91
    sub $5b                                       ; $56e8: $d6 $5b
    di                                            ; $56ea: $f3
    jr nz, @-$7a                                  ; $56eb: $20 $84

    rst $30                                       ; $56ed: $f7
    dec [hl]                                      ; $56ee: $35
    sbc l                                         ; $56ef: $9d
    adc a                                         ; $56f0: $8f
    db $db                                        ; $56f1: $db
    rrca                                          ; $56f2: $0f
    adc e                                         ; $56f3: $8b
    ld c, a                                       ; $56f4: $4f
    ld b, [hl]                                    ; $56f5: $46
    ld h, h                                       ; $56f6: $64
    ld h, l                                       ; $56f7: $65
    ld e, [hl]                                    ; $56f8: $5e
    cp d                                          ; $56f9: $ba
    db $fd                                        ; $56fa: $fd
    and l                                         ; $56fb: $a5
    dec de                                        ; $56fc: $1b
    ld [hl], l                                    ; $56fd: $75
    ld a, b                                       ; $56fe: $78
    add hl, sp                                    ; $56ff: $39
    ld [hl], c                                    ; $5700: $71
    ld e, c                                       ; $5701: $59
    sub h                                         ; $5702: $94
    daa                                           ; $5703: $27
    ld d, h                                       ; $5704: $54
    call $fc32                                    ; $5705: $cd $32 $fc
    push hl                                       ; $5708: $e5
    ldh a, [rNR12]                                ; $5709: $f0 $12
    dec bc                                        ; $570b: $0b
    cp e                                          ; $570c: $bb
    and [hl]                                      ; $570d: $a6
    call z, $0110                                 ; $570e: $cc $10 $01
    ld [hl], a                                    ; $5711: $77
    ld a, $39                                     ; $5712: $3e $39
    or c                                          ; $5714: $b1
    db $e3                                        ; $5715: $e3
    add hl, hl                                    ; $5716: $29
    ld a, l                                       ; $5717: $7d
    ld d, c                                       ; $5718: $51
    rla                                           ; $5719: $17
    pop af                                        ; $571a: $f1
    add sp, $2f                                   ; $571b: $e8 $2f
    ld [c], a                                     ; $571d: $e2
    ld c, c                                       ; $571e: $49
    or $4e                                        ; $571f: $f6 $4e
    add $23                                       ; $5721: $c6 $23
    ld [hl], d                                    ; $5723: $72
    ld d, e                                       ; $5724: $53
    inc a                                         ; $5725: $3c
    ld h, l                                       ; $5726: $65
    ld e, $49                                     ; $5727: $1e $49
    adc l                                         ; $5729: $8d
    ld l, h                                       ; $572a: $6c
    rst $28                                       ; $572b: $ef
    inc e                                         ; $572c: $1c
    adc b                                         ; $572d: $88
    nop                                           ; $572e: $00
    dec a                                         ; $572f: $3d
    ret                                           ; $5730: $c9


    sbc e                                         ; $5731: $9b
    ld a, d                                       ; $5732: $7a
    jp c, $b9d1                                   ; $5733: $da $d1 $b9

    and $78                                       ; $5736: $e6 $78
    adc h                                         ; $5738: $8c
    ld c, c                                       ; $5739: $49
    or a                                          ; $573a: $b7
    ld e, [hl]                                    ; $573b: $5e
    ld [$f1b7], sp                                ; $573c: $08 $b7 $f1
    ld c, [hl]                                    ; $573f: $4e
    call z, $a7cd                                 ; $5740: $cc $cd $a7
    ld a, l                                       ; $5743: $7d
    ld a, [c]                                     ; $5744: $f2
    adc h                                         ; $5745: $8c
    ld a, b                                       ; $5746: $78
    ld c, d                                       ; $5747: $4a
    ld a, c                                       ; $5748: $79
    ld c, c                                       ; $5749: $49
    ld e, a                                       ; $574a: $5f
    push bc                                       ; $574b: $c5
    ld a, e                                       ; $574c: $7b
    ld sp, $f5ea                                  ; $574d: $31 $ea $f5
    ld a, b                                       ; $5750: $78
    db $fc                                        ; $5751: $fc
    dec h                                         ; $5752: $25
    ld e, b                                       ; $5753: $58
    jr nz, jr_054_5758                            ; $5754: $20 $02

    ld a, l                                       ; $5756: $7d
    inc e                                         ; $5757: $1c

jr_054_5758:
    ld b, [hl]                                    ; $5758: $46
    cp h                                          ; $5759: $bc
    sbc d                                         ; $575a: $9a
    ld a, c                                       ; $575b: $79
    xor a                                         ; $575c: $af
    ld [hl], c                                    ; $575d: $71
    ld l, d                                       ; $575e: $6a
    inc b                                         ; $575f: $04
    cp l                                          ; $5760: $bd
    db $db                                        ; $5761: $db
    rst $00                                       ; $5762: $c7
    ld h, l                                       ; $5763: $65
    ld d, c                                       ; $5764: $51
    ld c, [hl]                                    ; $5765: $4e
    cp l                                          ; $5766: $bd
    ld l, [hl]                                    ; $5767: $6e
    di                                            ; $5768: $f3
    ld c, [hl]                                    ; $5769: $4e
    ld a, h                                       ; $576a: $7c
    ld l, l                                       ; $576b: $6d
    sub d                                         ; $576c: $92
    db $e3                                        ; $576d: $e3
    adc b                                         ; $576e: $88
    call c, $2794                                 ; $576f: $dc $94 $27
    ld e, l                                       ; $5772: $5d
    call z, Call_000_246f                         ; $5773: $cc $6f $24
    dec [hl]                                      ; $5776: $35
    or d                                          ; $5777: $b2
    cp l                                          ; $5778: $bd
    ld [hl], e                                    ; $5779: $73
    ld d, d                                       ; $577a: $52
    rst $28                                       ; $577b: $ef
    cp [hl]                                       ; $577c: $be
    ld [hl], a                                    ; $577d: $77
    ld c, [hl]                                    ; $577e: $4e
    ld l, $65                                     ; $577f: $2e $65
    sbc [hl]                                      ; $5781: $9e
    ld l, e                                       ; $5782: $6b
    db $fd                                        ; $5783: $fd
    rst $18                                       ; $5784: $df
    ld a, [$9d48]                                 ; $5785: $fa $48 $9d

Jump_054_5788:
    rst $10                                       ; $5788: $d7
    ld e, l                                       ; $5789: $5d
    rrca                                          ; $578a: $0f
    ld [hl], h                                    ; $578b: $74
    sub [hl]                                      ; $578c: $96
    ld a, a                                       ; $578d: $7f
    ld a, [$4b87]                                 ; $578e: $fa $87 $4b
    ld [hl], c                                    ; $5791: $71

Call_054_5792:
    ld c, l                                       ; $5792: $4d
    add hl, sp                                    ; $5793: $39
    db $ec                                        ; $5794: $ec
    ld a, h                                       ; $5795: $7c
    ld h, l                                       ; $5796: $65
    ld c, c                                       ; $5797: $49
    adc l                                         ; $5798: $8d
    nop                                           ; $5799: $00
    dec a                                         ; $579a: $3d
    ld c, c                                       ; $579b: $49
    xor [hl]                                      ; $579c: $ae
    sbc l                                         ; $579d: $9d
    xor b                                         ; $579e: $a8
    or a                                          ; $579f: $b7
    and $75                                       ; $57a0: $e6 $75
    inc e                                         ; $57a2: $1c
    ld b, [hl]                                    ; $57a3: $46
    ld a, a                                       ; $57a4: $7f
    ld de, $b24f                                  ; $57a5: $11 $4f $b2
    ld [hl], a                                    ; $57a8: $77
    jp c, $dc8f                                   ; $57a9: $da $8f $dc

    dec bc                                        ; $57ac: $0b
    ld bc, $1c7d                                  ; $57ad: $01 $7d $1c
    halt                                          ; $57b0: $76
    inc [hl]                                      ; $57b1: $34
    ld [c], a                                     ; $57b2: $e2
    or e                                          ; $57b3: $b3
    adc [hl]                                      ; $57b4: $8e
    jp $350e                                      ; $57b5: $c3 $0e $35


    di                                            ; $57b8: $f3
    cp $be                                        ; $57b9: $fe $be
    ld c, b                                       ; $57bb: $48
    ld a, b                                       ; $57bc: $78
    ld [de], a                                    ; $57bd: $12
    ld c, $f1                                     ; $57be: $0e $f1
    ld e, d                                       ; $57c0: $5a
    or e                                          ; $57c1: $b3
    ld b, b                                       ; $57c2: $40
    inc b                                         ; $57c3: $04
    add b                                         ; $57c4: $80
    ld e, a                                       ; $57c5: $5f
    ld c, l                                       ; $57c6: $4d
    sbc c                                         ; $57c7: $99
    ld h, a                                       ; $57c8: $67
    sbc $69                                       ; $57c9: $de $69
    ccf                                           ; $57cb: $3f
    ld a, [c]                                     ; $57cc: $f2
    ld c, [hl]                                    ; $57cd: $4e
    ei                                            ; $57ce: $fb
    db $e4                                        ; $57cf: $e4
    sbc c                                         ; $57d0: $99
    jp nc, $fc97                                  ; $57d1: $d2 $97 $fc

    sub $3c                                       ; $57d4: $d6 $3c
    ld [c], a                                     ; $57d6: $e2
    push af                                       ; $57d7: $f5
    ld b, d                                       ; $57d8: $42
    ld a, l                                       ; $57d9: $7d
    inc e                                         ; $57da: $1c
    ld b, [hl]                                    ; $57db: $46
    ccf                                           ; $57dc: $3f
    pop hl                                        ; $57dd: $e1
    db $fd                                        ; $57de: $fd
    jr jr_054_581e                                ; $57df: $18 $3d

    ret                                           ; $57e1: $c9


    add [hl]                                      ; $57e2: $86
    ld [$d429], sp                                ; $57e3: $08 $29 $d4
    sub h                                         ; $57e6: $94

jr_054_57e7:
    cp [hl]                                       ; $57e7: $be
    cp a                                          ; $57e8: $bf
    cpl                                           ; $57e9: $2f
    ld [de], a                                    ; $57ea: $12
    sbc [hl]                                      ; $57eb: $9e
    add h                                         ; $57ec: $84
    ld b, e                                       ; $57ed: $43
    cp h                                          ; $57ee: $bc
    sub $2c                                       ; $57ef: $d6 $2c
    cp l                                          ; $57f1: $bd
    sub $c7                                       ; $57f2: $d6 $c7
    ld h, c                                       ; $57f4: $61
    ld b, a                                       ; $57f5: $47
    inc hl                                        ; $57f6: $23
    ld a, $eb                                     ; $57f7: $3e $eb
    jr c, jr_054_57e7                             ; $57f9: $38 $ec

    ld d, b                                       ; $57fb: $50
    ld a, e                                       ; $57fc: $7b
    inc a                                         ; $57fd: $3c
    di                                            ; $57fe: $f3
    ld c, $fb                                     ; $57ff: $0e $fb
    dec bc                                        ; $5801: $0b
    adc $72                                       ; $5802: $ce $72
    ret c                                         ; $5804: $d8

    dec [hl]                                      ; $5805: $35
    ld [c], a                                     ; $5806: $e2
    add hl, hl                                    ; $5807: $29
    push hl                                       ; $5808: $e5
    sub c                                         ; $5809: $91
    call nc, $c38e                                ; $580a: $d4 $8e $c3
    inc h                                         ; $580d: $24
    ld a, e                                       ; $580e: $7b
    daa                                           ; $580f: $27
    db $e3                                        ; $5810: $e3
    and l                                         ; $5811: $a5
    ld a, l                                       ; $5812: $7d
    ret c                                         ; $5813: $d8

    sbc b                                         ; $5814: $98
    ld [hl], a                                    ; $5815: $77
    xor b                                         ; $5816: $a8
    jp hl                                         ; $5817: $e9


    cp h                                          ; $5818: $bc
    sub e                                         ; $5819: $93
    pop af                                        ; $581a: $f1
    call z, $ed3b                                 ; $581b: $cc $3b $ed

jr_054_581e:
    sub e                                         ; $581e: $93
    rlca                                          ; $581f: $07
    xor $ce                                       ; $5820: $ee $ce
    daa                                           ; $5822: $27
    daa                                           ; $5823: $27
    halt                                          ; $5824: $76
    inc a                                         ; $5825: $3c
    and l                                         ; $5826: $a5
    rst $28                                       ; $5827: $ef
    ld b, h                                       ; $5828: $44
    cp l                                          ; $5829: $bd
    dec [hl]                                      ; $582a: $35
    rst $28                                       ; $582b: $ef
    ld a, b                                       ; $582c: $78
    ld h, [hl]                                    ; $582d: $66
    halt                                          ; $582e: $76
    call $f0b2                                    ; $582f: $cd $b2 $f0
    inc h                                         ; $5832: $24
    adc h                                         ; $5833: $8c
    ld a, a                                       ; $5834: $7f
    add e                                         ; $5835: $83
    ld [$c93d], sp                                ; $5836: $08 $3d $c9
    sbc e                                         ; $5839: $9b
    ld l, e                                       ; $583a: $6b
    and $81                                       ; $583b: $e6 $81
    ld [hl+], a                                   ; $583d: $22
    rst $18                                       ; $583e: $df
    add hl, sp                                    ; $583f: $39
    cp c                                          ; $5840: $b9
    ld d, h                                       ; $5841: $54
    rst $38                                       ; $5842: $ff
    cp l                                          ; $5843: $bd
    db $10                                        ; $5844: $10
    ld a, l                                       ; $5845: $7d

jr_054_5846:
    inc e                                         ; $5846: $1c
    ld d, $9f                                     ; $5847: $16 $9f
    inc c                                         ; $5849: $0c
    ld a, a                                       ; $584a: $7f
    ld h, [hl]                                    ; $584b: $66
    db $ed                                        ; $584c: $ed
    or b                                          ; $584d: $b0
    ld h, l                                       ; $584e: $65
    ccf                                           ; $584f: $3f
    ld b, [hl]                                    ; $5850: $46
    ld c, a                                       ; $5851: $4f
    ld a, l                                       ; $5852: $7d
    ld h, [hl]                                    ; $5853: $66
    adc b                                         ; $5854: $88
    nop                                           ; $5855: $00
    rst $30                                       ; $5856: $f7
    ld hl, sp+$6b                                 ; $5857: $f8 $6b
    sub a                                         ; $5859: $97
    halt                                          ; $585a: $76
    ld l, h                                       ; $585b: $6c
    cpl                                           ; $585c: $2f
    cp b                                          ; $585d: $b8
    jr nz, jr_054_5862                            ; $585e: $20 $02

    scf                                           ; $5860: $37
    adc e                                         ; $5861: $8b

jr_054_5862:
    ld l, e                                       ; $5862: $6b
    ccf                                           ; $5863: $3f
    ld b, [hl]                                    ; $5864: $46
    ld b, e                                       ; $5865: $43
    inc b                                         ; $5866: $04
    rst $30                                       ; $5867: $f7
    ld d, l                                       ; $5868: $55
    ld d, a                                       ; $5869: $57
    ld [hl-], a                                   ; $586a: $32
    ld d, b                                       ; $586b: $50
    add b                                         ; $586c: $80
    ld b, h                                       ; $586d: $44
    cp c                                          ; $586e: $b9
    jr nc, jr_054_5846                            ; $586f: $30 $d5

    ld c, [hl]                                    ; $5871: $4e
    rst $38                                       ; $5872: $ff
    ld [hl], b                                    ; $5873: $70
    db $dd                                        ; $5874: $dd
    and $b9                                       ; $5875: $e6 $b9
    or $5f                                        ; $5877: $f6 $5f
    ld l, e                                       ; $5879: $6b
    db $f4                                        ; $587a: $f4
    ld l, e                                       ; $587b: $6b
    ld l, l                                       ; $587c: $6d
    and $e5                                       ; $587d: $e6 $e5
    ld d, d                                       ; $587f: $52
    dec sp                                        ; $5880: $3b
    add hl, de                                    ; $5881: $19
    adc a                                         ; $5882: $8f
    ld a, h                                       ; $5883: $7c
    rst $20                                       ; $5884: $e7
    cp b                                          ; $5885: $b8
    jr nz, @+$04                                  ; $5886: $20 $02

    rst $30                                       ; $5888: $f7
    ld hl, sp+$63                                 ; $5889: $f8 $63
    swap d                                        ; $588b: $cb $32
    ld e, [hl]                                    ; $588d: $5e
    rst $00                                       ; $588e: $c7
    ld h, c                                       ; $588f: $61
    adc c                                         ; $5890: $89
    add hl, de                                    ; $5891: $19
    ld [hl+], a                                   ; $5892: $22
    dec a                                         ; $5893: $3d
    cp $fb                                        ; $5894: $fe $fb
    and c                                         ; $5896: $a1
    ld h, e                                       ; $5897: $63
    add c                                         ; $5898: $81
    ld [$3eb7], sp                                ; $5899: $08 $b7 $3e
    ld d, d                                       ; $589c: $52
    rst $20                                       ; $589d: $e7
    ld [hl], l                                    ; $589e: $75
    rst $10                                       ; $589f: $d7
    inc bc                                        ; $58a0: $03
    sbc l                                         ; $58a1: $9d
    push hl                                       ; $58a2: $e5
    sbc a                                         ; $58a3: $9f
    call nc, $8008                                ; $58a4: $d4 $08 $80
    db $dd                                        ; $58a7: $dd
    ld h, d                                       ; $58a8: $62
    add $d8                                       ; $58a9: $c6 $d8
    ld [hl-], a                                   ; $58ab: $32
    cp $6d                                        ; $58ac: $fe $6d
    cp l                                          ; $58ae: $bd
    db $eb                                        ; $58af: $eb
    db $d3                                        ; $58b0: $d3
    db $f4                                        ; $58b1: $f4
    sub a                                         ; $58b2: $97
    and b                                         ; $58b3: $a0
    ld e, l                                       ; $58b4: $5d
    ld h, d                                       ; $58b5: $62
    ld de, $f0cb                                  ; $58b6: $11 $cb $f0
    rla                                           ; $58b9: $17
    cp b                                          ; $58ba: $b8
    inc d                                         ; $58bb: $14
    cp $61                                        ; $58bc: $fe $61
    inc h                                         ; $58be: $24
    dec b                                         ; $58bf: $05
    ld de, $af3d                                  ; $58c0: $11 $3d $af
    or l                                          ; $58c3: $b5
    inc a                                         ; $58c4: $3c
    push hl                                       ; $58c5: $e5
    add d                                         ; $58c6: $82
    ld [$dd80], sp                                ; $58c7: $08 $80 $dd
    ld h, d                                       ; $58ca: $62

jr_054_58cb:
    add $d8                                       ; $58cb: $c6 $d8
    ld [hl-], a                                   ; $58cd: $32
    cp $6d                                        ; $58ce: $fe $6d
    add h                                         ; $58d0: $84
    ld a, [hl]                                    ; $58d1: $7e
    call z, $5deb                                 ; $58d2: $cc $eb $5d
    sbc a                                         ; $58d5: $9f
    and [hl]                                      ; $58d6: $a6
    cp a                                          ; $58d7: $bf
    inc b                                         ; $58d8: $04
    cp b                                          ; $58d9: $b8
    inc d                                         ; $58da: $14
    cp $61                                        ; $58db: $fe $61
    inc h                                         ; $58dd: $24
    and l                                         ; $58de: $a5
    ld e, l                                       ; $58df: $5d
    ld h, d                                       ; $58e0: $62
    ld de, $f0cb                                  ; $58e1: $11 $cb $f0
    rla                                           ; $58e4: $17
    adc b                                         ; $58e5: $88
    nop                                           ; $58e6: $00
    ld [hl], a                                    ; $58e7: $77
    call nz, $85e8                                ; $58e8: $c4 $e8 $85
    ld h, [hl]                                    ; $58eb: $66
    cp h                                          ; $58ec: $bc
    rst $00                                       ; $58ed: $c7
    inc hl                                        ; $58ee: $23
    rst $18                                       ; $58ef: $df
    add hl, sp                                    ; $58f0: $39
    cp c                                          ; $58f1: $b9
    sub h                                         ; $58f2: $94
    ld a, c                                       ; $58f3: $79
    xor [hl]                                      ; $58f4: $ae
    push af                                       ; $58f5: $f5
    ld a, a                                       ; $58f6: $7f
    db $eb                                        ; $58f7: $eb
    inc hl                                        ; $58f8: $23
    ld [hl], l                                    ; $58f9: $75
    ld e, [hl]                                    ; $58fa: $5e
    ld [hl], a                                    ; $58fb: $77
    dec a                                         ; $58fc: $3d
    ret nc                                        ; $58fd: $d0

    ld e, c                                       ; $58fe: $59
    cp $e9                                        ; $58ff: $fe $e9
    rra                                           ; $5901: $1f
    ld [hl+], a                                   ; $5902: $22
    add b                                         ; $5903: $80
    ei                                            ; $5904: $fb
    xor d                                         ; $5905: $aa
    inc de                                        ; $5906: $13
    or d                                          ; $5907: $b2
    jp c, Jump_000_1fe1                           ; $5908: $da $e1 $1f

    ld b, [hl]                                    ; $590b: $46
    ld d, d                                       ; $590c: $52
    jp c, $1625                                   ; $590d: $da $25 $16

    or c                                          ; $5910: $b1
    inc c                                         ; $5911: $0c
    ld a, a                                       ; $5912: $7f
    add c                                         ; $5913: $81
    ld [$dd80], sp                                ; $5914: $08 $80 $dd
    ld h, d                                       ; $5917: $62
    add $d8                                       ; $5918: $c6 $d8
    ld [hl-], a                                   ; $591a: $32
    cp $6d                                        ; $591b: $fe $6d
    cp l                                          ; $591d: $bd
    db $eb                                        ; $591e: $eb
    db $d3                                        ; $591f: $d3
    db $f4                                        ; $5920: $f4
    sub a                                         ; $5921: $97
    and b                                         ; $5922: $a0
    ld e, l                                       ; $5923: $5d
    rst $08                                       ; $5924: $cf
    xor e                                         ; $5925: $ab
    jp nc, $dea4                                  ; $5926: $d2 $a4 $de

    dec l                                         ; $5929: $2d
    xor a                                         ; $592a: $af
    inc a                                         ; $592b: $3c
    ld a, [hl]                                    ; $592c: $7e
    or e                                          ; $592d: $b3
    adc h                                         ; $592e: $8c
    ccf                                           ; $592f: $3f
    di                                            ; $5930: $f3
    ld c, d                                       ; $5931: $4a
    rla                                           ; $5932: $17
    push bc                                       ; $5933: $c5
    db $10                                        ; $5934: $10
    ld bc, $1c7d                                  ; $5935: $01 $7d $1c
    and $5a                                       ; $5938: $e6 $5a
    ld l, b                                       ; $593a: $68
    ld c, a                                       ; $593b: $4f
    xor l                                         ; $593c: $ad
    db $e3                                        ; $593d: $e3
    jr nc, jr_054_58cb                            ; $593e: $30 $8b

    ld [hl], d                                    ; $5940: $72
    ei                                            ; $5941: $fb
    ld h, c                                       ; $5942: $61
    xor [hl]                                      ; $5943: $ae
    ld de, $882e                                  ; $5944: $11 $2e $88
    nop                                           ; $5947: $00
    dec a                                         ; $5948: $3d
    ld c, c                                       ; $5949: $49
    xor [hl]                                      ; $594a: $ae

jr_054_594b:
    ld de, $a6af                                  ; $594b: $11 $af $a6
    db $f4                                        ; $594e: $f4
    or c                                          ; $594f: $b1
    dec h                                         ; $5950: $25
    ld a, [c]                                     ; $5951: $f2
    sub h                                         ; $5952: $94
    ld b, e                                       ; $5953: $43
    xor a                                         ; $5954: $af
    ld [hl], l                                    ; $5955: $75
    ld e, e                                       ; $5956: $5b
    sub [hl]                                      ; $5957: $96
    ld hl, sp+$5b                                 ; $5958: $f8 $5b
    and $5a                                       ; $595a: $e6 $5a
    rst $00                                       ; $595c: $c7
    jp nz, $9f16                                  ; $595d: $c2 $16 $9f

    sbc l                                         ; $5960: $9d
    sbc h                                         ; $5961: $9c
    ld hl, sp-$44                                 ; $5962: $f8 $bc
    sub [hl]                                      ; $5964: $96
    ld a, d                                       ; $5965: $7a
    db $dd                                        ; $5966: $dd
    xor [hl]                                      ; $5967: $ae
    ld de, $16af                                  ; $5968: $11 $af $16
    ld [hl], h                                    ; $596b: $74
    ld h, [hl]                                    ; $596c: $66
    rst $10                                       ; $596d: $d7
    ld l, [hl]                                    ; $596e: $6e
    cp [hl]                                       ; $596f: $be
    xor e                                         ; $5970: $ab
    dec de                                        ; $5971: $1b
    ret nz                                        ; $5972: $c0

    dec e                                         ; $5973: $1d
    ld a, e                                       ; $5974: $7b
    ld a, [hl+]                                   ; $5975: $2a
    inc a                                         ; $5976: $3c
    add hl, bc                                    ; $5977: $09
    xor c                                         ; $5978: $a9
    ld de, $fa3d                                  ; $5979: $11 $3d $fa
    adc c                                         ; $597c: $89
    and e                                         ; $597d: $a3
    ld b, [hl]                                    ; $597e: $46
    ld [hl], a                                    ; $597f: $77
    or l                                          ; $5980: $b5
    ldh [$61], a                                  ; $5981: $e0 $61
    xor e                                         ; $5983: $ab
    sub c                                         ; $5984: $91
    call nc, Call_054_4932                        ; $5985: $d4 $32 $49
    sbc [hl]                                      ; $5988: $9e
    or $c2                                        ; $5989: $f6 $c2
    pop hl                                        ; $598b: $e1
    sub a                                         ; $598c: $97
    or h                                          ; $598d: $b4
    rlca                                          ; $598e: $07
    ld de, $fadd                                  ; $598f: $11 $dd $fa
    ld [c], a                                     ; $5992: $e2

Call_054_5993:
    sub e                                         ; $5993: $93
    pop de                                        ; $5994: $d1
    call nc, $fc4e                                ; $5995: $d4 $4e $fc
    ld sp, $fdba                                  ; $5998: $31 $ba $fd
    jr nc, jr_054_594b                            ; $599b: $30 $ae

    xor [hl]                                      ; $599d: $ae
    ld [hl], h                                    ; $599e: $74
    jp c, Jump_054_446d                           ; $599f: $da $6d $44

    ld a, [c]                                     ; $59a2: $f2
    rst $08                                       ; $59a3: $cf
    sub h                                         ; $59a4: $94
    cp [hl]                                       ; $59a5: $be
    ld b, b                                       ; $59a6: $40
    push de                                       ; $59a7: $d5
    ld [hl], h                                    ; $59a8: $74
    ld e, $5d                                     ; $59a9: $1e $5d
    ld l, a                                       ; $59ab: $6f
    cp l                                          ; $59ac: $bd
    db $eb                                        ; $59ad: $eb
    db $d3                                        ; $59ae: $d3
    db $f4                                        ; $59af: $f4
    sub a                                         ; $59b0: $97
    or b                                          ; $59b1: $b0
    adc h                                         ; $59b2: $8c
    daa                                           ; $59b3: $27
    adc a                                         ; $59b4: $8f
    ld sp, hl                                     ; $59b5: $f9
    ld b, c                                       ; $59b6: $41
    ld [$65b1], sp                                ; $59b7: $08 $b1 $65
    jp hl                                         ; $59ba: $e9


    ld d, a                                       ; $59bb: $57
    ld e, $91                                     ; $59bc: $1e $91
    db $fc                                        ; $59be: $fc
    inc sp                                        ; $59bf: $33
    and l                                         ; $59c0: $a5
    cpl                                           ; $59c1: $2f
    db $dd                                        ; $59c2: $dd
    ld a, [hl]                                    ; $59c3: $7e
    adc l                                         ; $59c4: $8d
    rra                                           ; $59c5: $1f
    inc sp                                        ; $59c6: $33
    ld b, h                                       ; $59c7: $44
    ld a, l                                       ; $59c8: $7d
    inc e                                         ; $59c9: $1c
    ld b, [hl]                                    ; $59ca: $46
    ld d, b                                       ; $59cb: $50
    and h                                         ; $59cc: $a4
    ld l, e                                       ; $59cd: $6b
    ret                                           ; $59ce: $c9


    ld e, a                                       ; $59cf: $5f
    ld a, [c]                                     ; $59d0: $f2
    ld b, l                                       ; $59d1: $45
    ld e, h                                       ; $59d2: $5c
    inc hl                                        ; $59d3: $23
    db $f4                                        ; $59d4: $f4
    ld b, e                                       ; $59d5: $43
    and $f8                                       ; $59d6: $e6 $f8
    sbc d                                         ; $59d8: $9a
    ld h, l                                       ; $59d9: $65
    ld a, a                                       ; $59da: $7f
    ld d, h                                       ; $59db: $54
    pop bc                                        ; $59dc: $c1
    and l                                         ; $59dd: $a5
    ld h, b                                       ; $59de: $60
    ld c, l                                       ; $59df: $4d
    ld a, b                                       ; $59e0: $78
    and l                                         ; $59e1: $a5
    ld b, [hl]                                    ; $59e2: $46
    cp h                                          ; $59e3: $bc
    ld e, d                                       ; $59e4: $5a
    and d                                         ; $59e5: $a2

Jump_054_59e6:
    adc e                                         ; $59e6: $8b
    sbc b                                         ; $59e7: $98
    ld [hl], a                                    ; $59e8: $77
    inc e                                         ; $59e9: $1c
    rst $08                                       ; $59ea: $cf
    xor b                                         ; $59eb: $a8
    ld a, [de]                                    ; $59ec: $1a
    ld c, c                                       ; $59ed: $49
    xor l                                         ; $59ee: $ad
    sbc [hl]                                      ; $59ef: $9e
    ld c, d                                       ; $59f0: $4a
    adc l                                         ; $59f1: $8d
    nop                                           ; $59f2: $00
    db $dd                                        ; $59f3: $dd
    ld a, [$93e2]                                 ; $59f4: $fa $e2 $93
    sbc l                                         ; $59f7: $9d
    adc [hl]                                      ; $59f8: $8e
    ld h, e                                       ; $59f9: $63
    db $f4                                        ; $59fa: $f4
    ret z                                         ; $59fb: $c8

    ld l, h                                       ; $59fc: $6c
    add hl, bc                                    ; $59fd: $09
    add a                                         ; $59fe: $87
    ld a, a                                       ; $59ff: $7f
    ld l, e                                       ; $5a00: $6b
    ld e, a                                       ; $5a01: $5f
    add d                                         ; $5a02: $82
    ld h, l                                       ; $5a03: $65
    add h                                         ; $5a04: $84
    ld a, [hl]                                    ; $5a05: $7e
    inc l                                         ; $5a06: $2c
    sbc $c7                                       ; $5a07: $de $c7
    ld l, [hl]                                    ; $5a09: $6e
    dec l                                         ; $5a0a: $2d
    db $e3                                        ; $5a0b: $e3
    dec h                                         ; $5a0c: $25
    ld d, [hl]                                    ; $5a0d: $56
    and e                                         ; $5a0e: $a3
    ld d, $7f                                     ; $5a0f: $16 $7f
    adc h                                         ; $5a11: $8c
    ld e, $49                                     ; $5a12: $1e $49
    adc l                                         ; $5a14: $8d
    ccf                                           ; $5a15: $3f
    halt                                          ; $5a16: $76
    ld l, b                                       ; $5a17: $68

jr_054_5a18:
    rst $28                                       ; $5a18: $ef
    inc e                                         ; $5a19: $1c
    adc e                                         ; $5a1a: $8b
    rst $30                                       ; $5a1b: $f7
    rst $30                                       ; $5a1c: $f7
    ld b, l                                       ; $5a1d: $45
    jp nz, $7093                                  ; $5a1e: $c2 $93 $70

    adc b                                         ; $5a21: $88
    rst $10                                       ; $5a22: $d7
    sbc d                                         ; $5a23: $9a
    dec b                                         ; $5a24: $05
    ld [hl+], a                                   ; $5a25: $22
    db $dd                                        ; $5a26: $dd
    and $9d                                       ; $5a27: $e6 $9d
    ld hl, sp-$26                                 ; $5a29: $f8 $da
    sub d                                         ; $5a2b: $92
    ld a, a                                       ; $5a2c: $7f
    ld c, $2f                                     ; $5a2d: $0e $2f
    jp hl                                         ; $5a2f: $e9


    xor e                                         ; $5a30: $ab
    inc a                                         ; $5a31: $3c
    set 6, b                                      ; $5a32: $cb $f0
    dec sp                                        ; $5a34: $3b
    rst $00                                       ; $5a35: $c7
    adc e                                         ; $5a36: $8b
    ld e, c                                       ; $5a37: $59
    add sp, $7f                                   ; $5a38: $e8 $7f
    and d                                         ; $5a3a: $a2
    adc e                                         ; $5a3b: $8b
    dec a                                         ; $5a3c: $3d
    cp $12                                        ; $5a3d: $fe $12
    ld b, [hl]                                    ; $5a3f: $46
    ld d, d                                       ; $5a40: $52
    ld l, e                                       ; $5a41: $6b
    ld a, l                                       ; $5a42: $7d
    sub l                                         ; $5a43: $95
    dec hl                                        ; $5a44: $2b
    jp hl                                         ; $5a45: $e9


    xor e                                         ; $5a46: $ab
    call c, $198e                                 ; $5a47: $dc $8e $19
    xor [hl]                                      ; $5a4a: $ae
    adc a                                         ; $5a4b: $8f
    jp $2b12                                      ; $5a4c: $c3 $12 $2b


    push hl                                       ; $5a4f: $e5
    ld a, [de]                                    ; $5a50: $1a
    ld c, c                                       ; $5a51: $49
    db $ed                                        ; $5a52: $ed
    pop af                                        ; $5a53: $f1
    sub h                                         ; $5a54: $94
    ld b, a                                       ; $5a55: $47
    cp h                                          ; $5a56: $bc
    sbc d                                         ; $5a57: $9a
    ld h, h                                       ; $5a58: $64
    set 3, b                                      ; $5a59: $cb $d8
    jr jr_054_5a18                                ; $5a5b: $18 $bb

    db $fd                                        ; $5a5d: $fd
    or b                                          ; $5a5e: $b0
    xor b                                         ; $5a5f: $a8
    scf                                           ; $5a60: $37
    cpl                                           ; $5a61: $2f
    sub h                                         ; $5a62: $94
    cp a                                          ; $5a63: $bf
    ld l, e                                       ; $5a64: $6b
    jp z, $1105                                   ; $5a65: $ca $05 $11

    ld [hl], a                                    ; $5a68: $77
    adc h                                         ; $5a69: $8c
    xor $aa                                       ; $5a6a: $ee $aa
    jp Jump_054_7f1e                              ; $5a6c: $c3 $1e $7f


    db $ec                                        ; $5a6f: $ec
    ld de, $96af                                  ; $5a70: $11 $af $96
    db $fc                                        ; $5a73: $fc
    db $dd                                        ; $5a74: $dd
    sub $7e                                       ; $5a75: $d6 $7e
    inc a                                         ; $5a77: $3c
    cp a                                          ; $5a78: $bf
    ld e, h                                       ; $5a79: $5c
    jp Jump_000_2356                              ; $5a7a: $c3 $56 $23


    dec hl                                        ; $5a7d: $2b
    db $d3                                        ; $5a7e: $d3
    ld a, $27                                     ; $5a7f: $3e $27
    rst $10                                       ; $5a81: $d7
    ld d, d                                       ; $5a82: $52
    sbc d                                         ; $5a83: $9a
    ld e, [hl]                                    ; $5a84: $5e
    db $10                                        ; $5a85: $10
    jp nz, Jump_054_761c                          ; $5a86: $c2 $1c $76

    or b                                          ; $5a89: $b0
    ld h, $bc                                     ; $5a8a: $26 $bc
    ld d, d                                       ; $5a8c: $52
    ld e, a                                       ; $5a8d: $5f
    add d                                         ; $5a8e: $82
    push bc                                       ; $5a8f: $c5
    xor c                                         ; $5a90: $a9
    ld de, $b3bd                                  ; $5a91: $11 $bd $b3
    ld a, [$fc67]                                 ; $5a94: $fa $67 $fc
    db $db                                        ; $5a97: $db
    adc $6b                                       ; $5a98: $ce $6b
    pop hl                                        ; $5a9a: $e1
    ret nz                                        ; $5a9b: $c0

    ld bc, $d8f8                                  ; $5a9c: $01 $f8 $d8
    db $ed                                        ; $5a9f: $ed
    rlca                                          ; $5aa0: $07
    adc a                                         ; $5aa1: $8f
    xor h                                         ; $5aa2: $ac
    ld a, a                                       ; $5aa3: $7f
    ld e, h                                       ; $5aa4: $5c
    ld [hl], b                                    ; $5aa5: $70
    rla                                           ; $5aa6: $17
    ld d, l                                       ; $5aa7: $55
    cp d                                          ; $5aa8: $ba
    ld c, e                                       ; $5aa9: $4b
    db $fd                                        ; $5aaa: $fd
    ld [hl], b                                    ; $5aab: $70
    ld a, b                                       ; $5aac: $78
    or a                                          ; $5aad: $b7
    sub a                                         ; $5aae: $97
    push de                                       ; $5aaf: $d5
    sbc [hl]                                      ; $5ab0: $9e
    xor b                                         ; $5ab1: $a8
    db $dd                                        ; $5ab2: $dd
    ld e, [hl]                                    ; $5ab3: $5e
    ld c, a                                       ; $5ab4: $4f
    ld [c], a                                     ; $5ab5: $e2
    add b                                         ; $5ab6: $80
    db $fc                                        ; $5ab7: $fc
    add $ae                                       ; $5ab8: $c6 $ae
    ld h, e                                       ; $5aba: $63
    add c                                         ; $5abb: $81
    ld [$5f80], sp                                ; $5abc: $08 $80 $5f
    ld h, h                                       ; $5abf: $64
    db $ec                                        ; $5ac0: $ec
    jp $ddae                                      ; $5ac1: $c3 $ae $dd


    di                                            ; $5ac4: $f3
    ld c, [hl]                                    ; $5ac5: $4e
    ld e, h                                       ; $5ac6: $5c
    ld a, [c]                                     ; $5ac7: $f2
    db $db                                        ; $5ac8: $db
    cp [hl]                                       ; $5ac9: $be
    ret z                                         ; $5aca: $c8

    adc c                                         ; $5acb: $89
    dec e                                         ; $5acc: $1d
    rla                                           ; $5acd: $17
    jp hl                                         ; $5ace: $e9


    dec a                                         ; $5acf: $3d
    sbc $97                                       ; $5ad0: $de $97
    ld h, b                                       ; $5ad2: $60
    add hl, de                                    ; $5ad3: $19
    and [hl]                                      ; $5ad4: $a6
    sub [hl]                                      ; $5ad5: $96
    ld l, $3d                                     ; $5ad6: $2e $3d
    ld a, d                                       ; $5ad8: $7a
    ld hl, sp-$7b                                 ; $5ad9: $f8 $85
    cp a                                          ; $5adb: $bf
    cp a                                          ; $5adc: $bf
    ldh a, [rNR50]                                ; $5add: $f0 $24
    ld e, b                                       ; $5adf: $58
    cp h                                          ; $5ae0: $bc
    ccf                                           ; $5ae1: $3f
    cp d                                          ; $5ae2: $ba
    ld a, $fe                                     ; $5ae3: $3e $fe
    and d                                         ; $5ae5: $a2
    inc sp                                        ; $5ae6: $33
    ld e, e                                       ; $5ae7: $5b
    inc c                                         ; $5ae8: $0c
    ld [hl], a                                    ; $5ae9: $77
    ld l, a                                       ; $5aea: $6f
    ld [c], a                                     ; $5aeb: $e2
    ld [c], a                                     ; $5aec: $e2
    or d                                          ; $5aed: $b2
    ld [hl], d                                    ; $5aee: $72
    dec sp                                        ; $5aef: $3b
    ld e, [hl]                                    ; $5af0: $5e
    cp d                                          ; $5af1: $ba
    db $fd                                        ; $5af2: $fd
    jp c, Jump_054_7ae1                           ; $5af3: $da $e1 $7a

    inc [hl]                                      ; $5af6: $34
    ld l, l                                       ; $5af7: $6d
    ld e, $b6                                     ; $5af8: $1e $b6
    ld a, [de]                                    ; $5afa: $1a
    cp $a2                                        ; $5afb: $fe $a2
    rra                                           ; $5afd: $1f
    ld [hl-], a                                   ; $5afe: $32
    ld e, e                                       ; $5aff: $5b
    ld [bc], a                                    ; $5b00: $02
    ld b, h                                       ; $5b01: $44
    add hl, hl                                    ; $5b02: $29
    ld sp, $cb07                                  ; $5b03: $31 $07 $cb
    ld [hl], h                                    ; $5b06: $74
    or [hl]                                       ; $5b07: $b6
    ret nc                                        ; $5b08: $d0

    cp c                                          ; $5b09: $b9
    halt                                          ; $5b0a: $76
    ld h, d                                       ; $5b0b: $62
    ld l, [hl]                                    ; $5b0c: $6e
    sub [hl]                                      ; $5b0d: $96
    cp c                                          ; $5b0e: $b9
    ld b, [hl]                                    ; $5b0f: $46
    rst $20                                       ; $5b10: $e7
    ld c, d                                       ; $5b11: $4a
    db $eb                                        ; $5b12: $eb
    adc d                                         ; $5b13: $8a

Jump_054_5b14:
    sub a                                         ; $5b14: $97
    ld [hl], c                                    ; $5b15: $71
    ld d, c                                       ; $5b16: $51
    jp z, Jump_054_73a3                           ; $5b17: $ca $a3 $73

    db $ed                                        ; $5b1a: $ed
    or l                                          ; $5b1b: $b5
    and $b9                                       ; $5b1c: $e6 $b9
    add hl, sp                                    ; $5b1e: $39

Jump_054_5b1f:
    ld [hl], c                                    ; $5b1f: $71
    adc l                                         ; $5b20: $8d
    ld a, a                                       ; $5b21: $7f
    sbc e                                         ; $5b22: $9b
    add l                                         ; $5b23: $85
    ld c, b                                       ; $5b24: $48
    ld e, h                                       ; $5b25: $5c
    db $e3                                        ; $5b26: $e3
    xor a                                         ; $5b27: $af
    jr nz, jr_054_5b2c                            ; $5b28: $20 $02

    cp l                                          ; $5b2a: $bd
    sbc a                                         ; $5b2b: $9f

jr_054_5b2c:
    inc b                                         ; $5b2c: $04
    set 7, [hl]                                   ; $5b2d: $cb $fe
    add sp, -$72                                  ; $5b2f: $e8 $8e
    ld c, e                                       ; $5b31: $4b
    ld a, c                                       ; $5b32: $79
    and $77                                       ; $5b33: $e6 $77
    ld a, [hl-]                                   ; $5b35: $3a
    ld e, $ff                                     ; $5b36: $1e $ff
    ld [hl], $a2                                  ; $5b38: $36 $a2
    ld c, e                                       ; $5b3a: $4b
    ld d, e                                       ; $5b3b: $53
    sbc [hl]                                      ; $5b3c: $9e
    ld l, e                                       ; $5b3d: $6b
    ld [hl], h                                    ; $5b3e: $74
    xor [hl]                                      ; $5b3f: $ae
    or h                                          ; $5b40: $b4
    xor [hl]                                      ; $5b41: $ae
    ld a, b                                       ; $5b42: $78
    add hl, de                                    ; $5b43: $19
    rla                                           ; $5b44: $17
    and l                                         ; $5b45: $a5
    inc a                                         ; $5b46: $3c
    ld a, [hl-]                                   ; $5b47: $3a
    rst $10                                       ; $5b48: $d7
    inc l                                         ; $5b49: $2c
    ld b, h                                       ; $5b4a: $44
    ld [c], a                                     ; $5b4b: $e2
    jp c, Jump_054_78c9                           ; $5b4c: $da $c9 $78

    ccf                                           ; $5b4f: $3f
    ld b, [hl]                                    ; $5b50: $46
    xor a                                         ; $5b51: $af
    ld c, e                                       ; $5b52: $4b
    ld c, [hl]                                    ; $5b53: $4e
    ld [hl], h                                    ; $5b54: $74
    adc l                                         ; $5b55: $8d
    sbc d                                         ; $5b56: $9a
    ld [$659a], a                                 ; $5b57: $ea $9a $65
    ld a, d                                       ; $5b5a: $7a
    ld a, [c]                                     ; $5b5b: $f2
    and h                                         ; $5b5c: $a4
    db $fd                                        ; $5b5d: $fd
    or b                                          ; $5b5e: $b0
    add e                                         ; $5b5f: $83
    ld e, l                                       ; $5b60: $5d
    ld l, h                                       ; $5b61: $6c
    ld e, d                                       ; $5b62: $5a
    ld l, a                                       ; $5b63: $6f
    ld l, l                                       ; $5b64: $6d
    xor d                                         ; $5b65: $aa
    ld c, e                                       ; $5b66: $4b
    pop bc                                        ; $5b67: $c1
    push af                                       ; $5b68: $f5

jr_054_5b69:
    db $fc                                        ; $5b69: $fc
    halt                                          ; $5b6a: $76
    inc l                                         ; $5b6b: $2c
    cp e                                          ; $5b6c: $bb
    cp c                                          ; $5b6d: $b9
    and l                                         ; $5b6e: $a5
    push af                                       ; $5b6f: $f5
    or e                                          ; $5b70: $b3
    ld e, $1d                                     ; $5b71: $1e $1d
    scf                                           ; $5b73: $37
    rra                                           ; $5b74: $1f
    pop de                                        ; $5b75: $d1
    xor e                                         ; $5b76: $ab
    jr nz, jr_054_5b7b                            ; $5b77: $20 $02

    rst $30                                       ; $5b79: $f7
    cp l                                          ; $5b7a: $bd

jr_054_5b7b:
    ld [hl], e                                    ; $5b7b: $73
    ld [hl], d                                    ; $5b7c: $72
    add hl, hl                                    ; $5b7d: $29
    di                                            ; $5b7e: $f3
    dec c                                         ; $5b7f: $0d
    cp e                                          ; $5b80: $bb
    push af                                       ; $5b81: $f5
    sub c                                         ; $5b82: $91
    ld a, [hl-]                                   ; $5b83: $3a
    xor a                                         ; $5b84: $af
    cp e                                          ; $5b85: $bb
    ld e, $e8                                     ; $5b86: $1e $e8
    inc l                                         ; $5b88: $2c
    rst $38                                       ; $5b89: $ff
    jr nz, jr_054_5b69                            ; $5b8a: $20 $dd

    and $b9                                       ; $5b8c: $e6 $b9

Jump_054_5b8e:
    ld d, $74                                     ; $5b8e: $16 $74
    ld h, [hl]                                    ; $5b90: $66
    adc e                                         ; $5b91: $8b
    rst $08                                       ; $5b92: $cf
    ld c, [hl]                                    ; $5b93: $4e
    ld c, [hl]                                    ; $5b94: $4e
    ld a, h                                       ; $5b95: $7c
    ld e, [hl]                                    ; $5b96: $5e
    add e                                         ; $5b97: $83
    cp e                                          ; $5b98: $bb
    cp l                                          ; $5b99: $bd
    xor e                                         ; $5b9a: $ab
    ld c, $3b                                     ; $5b9b: $0e $3b
    or [hl]                                       ; $5b9d: $b6
    ld [hl], a                                    ; $5b9e: $77
    adc $97                                       ; $5b9f: $ce $97
    ld h, b                                       ; $5ba1: $60
    pop af                                        ; $5ba2: $f1
    ld c, [hl]                                    ; $5ba3: $4e
    ld c, [hl]                                    ; $5ba4: $4e
    ld e, h                                       ; $5ba5: $5c
    inc hl                                        ; $5ba6: $23
    xor c                                         ; $5ba7: $a9
    pop de                                        ; $5ba8: $d1
    ld e, l                                       ; $5ba9: $5d
    ld [hl], l                                    ; $5baa: $75
    ret c                                         ; $5bab: $d8

    inc hl                                        ; $5bac: $23
    db $db                                        ; $5bad: $db
    inc de                                        ; $5bae: $13
    adc b                                         ; $5baf: $88
    nop                                           ; $5bb0: $00
    or a                                          ; $5bb1: $b7
    ld sp, $e8bb                                  ; $5bb2: $31 $bb $e8
    ld e, h                                       ; $5bb5: $5c
    daa                                           ; $5bb6: $27
    jp z, Jump_000_3097                           ; $5bb7: $ca $97 $30

    sub d                                         ; $5bba: $92
    ld a, [bc]                                    ; $5bbb: $0a
    ld d, h                                       ; $5bbc: $54
    adc l                                         ; $5bbd: $8d
    adc $c5                                       ; $5bbe: $ce $c5
    rst $20                                       ; $5bc0: $e7
    ld sp, $8fef                                  ; $5bc1: $31 $ef $8f
    adc $95                                       ; $5bc4: $ce $95
    cp $a2                                        ; $5bc6: $fe $a2
    call c, $878e                                 ; $5bc8: $dc $8e $87
    xor l                                         ; $5bcb: $ad
    or $45                                        ; $5bcc: $f6 $45
    jp nc, $2ba5                                  ; $5bce: $d2 $a5 $2b

    ld h, l                                       ; $5bd1: $65
    sbc $df                                       ; $5bd2: $de $df
    db $ed                                        ; $5bd4: $ed
    db $ed                                        ; $5bd5: $ed
    ld d, a                                       ; $5bd6: $57
    ret z                                         ; $5bd7: $c8

    call z, $9dda                                 ; $5bd8: $cc $da $9d
    adc h                                         ; $5bdb: $8c
    ld [hl], a                                    ; $5bdc: $77
    sub d                                         ; $5bdd: $92
    ld d, a                                       ; $5bde: $57
    db $ec                                        ; $5bdf: $ec
    ld [hl], c                                    ; $5be0: $71
    push hl                                       ; $5be1: $e5
    sub $b0                                       ; $5be2: $d6 $b0
    ld b, l                                       ; $5be4: $45
    and $d6                                       ; $5be5: $e6 $d6
    ld e, h                                       ; $5be7: $5c
    inc hl                                        ; $5be8: $23
    inc e                                         ; $5be9: $1c

Jump_054_5bea:
    adc a                                         ; $5bea: $8f
    ld l, e                                       ; $5beb: $6b
    ld c, a                                       ; $5bec: $4f
    ld hl, sp-$63                                 ; $5bed: $f8 $9d
    ld d, c                                       ; $5bef: $51
    dec sp                                        ; $5bf0: $3b
    ld c, h                                       ; $5bf1: $4c
    dec l                                         ; $5bf2: $2d
    db $fd                                        ; $5bf3: $fd
    ld [hl+], a                                   ; $5bf4: $22
    db $dc, $1d, $12                              ; $5bf5: $dc $1d $12
    inc l                                         ; $5bf8: $2c
    db $fc                                        ; $5bf9: $fc
    dec h                                         ; $5bfa: $25
    inc l                                         ; $5bfb: $2c
    db $dd                                        ; $5bfc: $dd
    cp h                                          ; $5bfd: $bc
    jp $aa1d                                      ; $5bfe: $c3 $1d $aa


    sbc c                                         ; $5c01: $99
    pop hl                                        ; $5c02: $e1
    ld a, d                                       ; $5c03: $7a
    ld [de], a                                    ; $5c04: $12
    or a                                          ; $5c05: $b7
    call nz, $223c                                ; $5c06: $c4 $3c $22
    ret                                           ; $5c09: $c9


    or l                                          ; $5c0a: $b5
    cpl                                           ; $5c0b: $2f
    sub d                                         ; $5c0c: $92
    ld l, $5d                                     ; $5c0d: $2e $5d
    add hl, hl                                    ; $5c0f: $29
    di                                            ; $5c10: $f3
    ld c, [hl]                                    ; $5c11: $4e
    db $ec                                        ; $5c12: $ec
    ld e, b                                       ; $5c13: $58
    add hl, hl                                    ; $5c14: $29
    cpl                                           ; $5c15: $2f
    ld a, c                                       ; $5c16: $79
    or l                                          ; $5c17: $b5
    ld [hl], h                                    ; $5c18: $74
    ei                                            ; $5c19: $fb
    call z, Call_000_2ee3                         ; $5c1a: $cc $e3 $2e
    call z, Call_054_73a3                         ; $5c1d: $cc $a3 $73
    dec l                                         ; $5c20: $2d
    ld [hl], c                                    ; $5c21: $71
    xor c                                         ; $5c22: $a9
    ld a, a                                       ; $5c23: $7f
    ld e, [hl]                                    ; $5c24: $5e

jr_054_5c25:
    ld [hl], h                                    ; $5c25: $74
    adc l                                         ; $5c26: $8d
    cp a                                          ; $5c27: $bf
    ld l, d                                       ; $5c28: $6a
    ccf                                           ; $5c29: $3f
    cp b                                          ; $5c2a: $b8
    cp h                                          ; $5c2b: $bc
    di                                            ; $5c2c: $f3
    jr nc, jr_054_5c25                            ; $5c2d: $30 $f6

    call nc, $700b                                ; $5c2f: $d4 $0b $70
    db $fd                                        ; $5c32: $fd
    rst $18                                       ; $5c33: $df
    ld l, l                                       ; $5c34: $6d
    ld e, c                                       ; $5c35: $59
    ld a, [c]                                     ; $5c36: $f2
    sub a                                         ; $5c37: $97
    db $fc                                        ; $5c38: $fc
    or [hl]                                       ; $5c39: $b6
    rra                                           ; $5c3a: $1f
    and e                                         ; $5c3b: $a3
    ld [hl], a                                    ; $5c3c: $77
    cp $88                                        ; $5c3d: $fe $88
    db $e4                                        ; $5c3f: $e4
    db $ed                                        ; $5c40: $ed
    ld h, h                                       ; $5c41: $64
    cp h                                          ; $5c42: $bc
    db $e4                                        ; $5c43: $e4
    push de                                       ; $5c44: $d5
    sub h                                         ; $5c45: $94
    ld c, e                                       ; $5c46: $4b
    cp e                                          ; $5c47: $bb
    ld b, e                                       ; $5c48: $43
    db $ed                                        ; $5c49: $ed
    rst $00                                       ; $5c4a: $c7
    add sp, $1d                                   ; $5c4b: $e8 $1d
    cp $31                                        ; $5c4d: $fe $31
    ld c, [hl]                                    ; $5c4f: $4e
    ld a, h                                       ; $5c50: $7c
    sbc $fe                                       ; $5c51: $de $fe
    sub h                                         ; $5c53: $94
    ld a, c                                       ; $5c54: $79
    ld b, h                                       ; $5c55: $44
    ld a, [c]                                     ; $5c56: $f2
    rst $08                                       ; $5c57: $cf
    sub h                                         ; $5c58: $94
    ld a, $e2                                     ; $5c59: $3e $e2
    push de                                       ; $5c5b: $d5
    sub h                                         ; $5c5c: $94
    ld h, l                                       ; $5c5d: $65
    or c                                          ; $5c5e: $b1
    db $d3                                        ; $5c5f: $d3
    ld d, a                                       ; $5c60: $57
    ld l, c                                       ; $5c61: $69
    ei                                            ; $5c62: $fb
    sbc a                                         ; $5c63: $9f
    adc $fc                                       ; $5c64: $ce $fc
    ld a, [de]                                    ; $5c66: $1a
    ld a, e                                       ; $5c67: $7b
    sub [hl]                                      ; $5c68: $96
    pop af                                        ; $5c69: $f1
    ld l, e                                       ; $5c6a: $6b
    daa                                           ; $5c6b: $27
    ld c, b                                       ; $5c6c: $48
    add $a3                                       ; $5c6d: $c6 $a3
    ld [hl], e                                    ; $5c6f: $73
    db $ed                                        ; $5c70: $ed
    or $f6                                        ; $5c71: $f6 $f6
    dec hl                                        ; $5c73: $2b
    ld h, h                                       ; $5c74: $64
    ld h, [hl]                                    ; $5c75: $66
    inc b                                         ; $5c76: $04
    or a                                          ; $5c77: $b7
    ld hl, sp-$10                                 ; $5c78: $f8 $f0
    sub d                                         ; $5c7a: $92
    cp a                                          ; $5c7b: $bf
    sbc b                                         ; $5c7c: $98
    ld sp, $2d76                                  ; $5c7d: $31 $76 $2d
    sbc a                                         ; $5c80: $9f
    inc sp                                        ; $5c81: $33
    cp $6d                                        ; $5c82: $fe $6d
    or c                                          ; $5c84: $b1
    ld c, e                                       ; $5c85: $4b
    ld [hl], e                                    ; $5c86: $73
    halt                                          ; $5c87: $76
    db $e4                                        ; $5c88: $e4
    dec d                                         ; $5c89: $15
    ld l, e                                       ; $5c8a: $6b
    rst $10                                       ; $5c8b: $d7
    di                                            ; $5c8c: $f3
    xor d                                         ; $5c8d: $aa
    inc [hl]                                      ; $5c8e: $34
    ld [hl], b                                    ; $5c8f: $70
    db $dd                                        ; $5c90: $dd
    and $a5                                       ; $5c91: $e6 $a5
    db $db                                        ; $5c93: $db
    xor a                                         ; $5c94: $af
    or l                                          ; $5c95: $b5
    rst $08                                       ; $5c96: $cf
    cp h                                          ; $5c97: $bc
    sub a                                         ; $5c98: $97
    call z, $f532                                 ; $5c99: $cc $32 $f5
    jp nz, Jump_054_70fe                          ; $5c9c: $c2 $fe $70

    xor [hl]                                      ; $5c9f: $ae
    ld a, d                                       ; $5ca0: $7a
    db $10                                        ; $5ca1: $10
    ld bc, $1c7d                                  ; $5ca2: $01 $7d $1c
    and $1a                                       ; $5ca5: $e6 $1a
    sbc l                                         ; $5ca7: $9d
    ld l, e                                       ; $5ca8: $6b
    ld e, h                                       ; $5ca9: $5c
    ld e, l                                       ; $5caa: $5d
    call z, $dfe3                                 ; $5cab: $cc $e3 $df
    ld b, [hl]                                    ; $5cae: $46
    adc l                                         ; $5caf: $8d
    xor h                                         ; $5cb0: $ac
    rst $00                                       ; $5cb1: $c7
    ld e, $76                                     ; $5cb2: $1e $76
    ld b, c                                       ; $5cb4: $41
    inc b                                         ; $5cb5: $04
    nop                                           ; $5cb6: $00
    db $eb                                        ; $5cb7: $eb
    rra                                           ; $5cb8: $1f
    ld a, [hl]                                    ; $5cb9: $7e
    or d                                          ; $5cba: $b2
    inc e                                         ; $5cbb: $1c
    sub $71                                       ; $5cbc: $d6 $71
    ld e, b                                       ; $5cbe: $58
    and b                                         ; $5cbf: $a0
    ld l, d                                       ; $5cc0: $6a
    add hl, sp                                    ; $5cc1: $39
    xor h                                         ; $5cc2: $ac
    add hl, sp                                    ; $5cc3: $39
    inc b                                         ; $5cc4: $04
    rst $10                                       ; $5cc5: $d7
    ld a, [c]                                     ; $5cc6: $f2
    add hl, sp                                    ; $5cc7: $39
    jp c, Jump_000_18fd                           ; $5cc8: $da $fd $18

    cp l                                          ; $5ccb: $bd
    di                                            ; $5ccc: $f3
    add h                                         ; $5ccd: $84
    or l                                          ; $5cce: $b5
    inc bc                                        ; $5ccf: $03
    ld e, b                                       ; $5cd0: $58
    rst $38                                       ; $5cd1: $ff
    ldh a, [$93]                                  ; $5cd2: $f0 $93
    ld e, [hl]                                    ; $5cd4: $5e
    inc bc                                        ; $5cd5: $03
    ld e, b                                       ; $5cd6: $58
    rst $38                                       ; $5cd7: $ff
    ldh a, [rNR13]                                ; $5cd8: $f0 $13
    ld [$2f61], sp                                ; $5cda: $08 $61 $2f
    inc b                                         ; $5cdd: $04
    cp l                                          ; $5cde: $bd
    or e                                          ; $5cdf: $b3
    sbc d                                         ; $5ce0: $9a
    inc a                                         ; $5ce1: $3c
    ld h, [hl]                                    ; $5ce2: $66
    db $ed                                        ; $5ce3: $ed
    ld a, d                                       ; $5ce4: $7a
    ld e, [hl]                                    ; $5ce5: $5e
    sub l                                         ; $5ce6: $95
    ld b, [hl]                                    ; $5ce7: $46

Call_054_5ce8:
Jump_054_5ce8:
    cp e                                          ; $5ce8: $bb
    ld l, [hl]                                    ; $5ce9: $6e
    di                                            ; $5cea: $f3
    ld e, h                                       ; $5ceb: $5c
    or e                                          ; $5cec: $b3
    xor h                                         ; $5ced: $ac
    xor a                                         ; $5cee: $af
    ld a, [c]                                     ; $5cef: $f2
    xor b                                         ; $5cf0: $a8
    dec h                                         ; $5cf1: $25
    ld a, l                                       ; $5cf2: $7d
    sub l                                         ; $5cf3: $95
    rst $30                                       ; $5cf4: $f7
    ld [hl], a                                    ; $5cf5: $77
    ld e, $c6                                     ; $5cf6: $1e $c6
    ld e, $a1                                     ; $5cf8: $1e $a1
    sbc a                                         ; $5cfa: $9f
    sbc l                                         ; $5cfb: $9d
    adc h                                         ; $5cfc: $8c
    and a                                         ; $5cfd: $a7
    inc e                                         ; $5cfe: $1c
    jr nz, jr_054_5d03                            ; $5cff: $20 $02

    or a                                          ; $5d01: $b7
    rst $20                                       ; $5d02: $e7

jr_054_5d03:
    ld a, [de]                                    ; $5d03: $1a
    ld d, a                                       ; $5d04: $57
    rla                                           ; $5d05: $17
    di                                            ; $5d06: $f3
    ld hl, sp-$49                                 ; $5d07: $f8 $b7
    ld d, c                                       ; $5d09: $51
    dec sp                                        ; $5d0a: $3b
    ld a, [c]                                     ; $5d0b: $f2
    ld h, d                                       ; $5d0c: $62
    inc [hl]                                      ; $5d0d: $34
    call c, $8f3d                                 ; $5d0e: $dc $3d $8f
    cp c                                          ; $5d11: $b9
    rst $38                                       ; $5d12: $ff
    rlca                                          ; $5d13: $07
    ld de, $b3bd                                  ; $5d14: $11 $bd $b3
    sbc d                                         ; $5d17: $9a
    inc a                                         ; $5d18: $3c
    ld h, [hl]                                    ; $5d19: $66
    db $ed                                        ; $5d1a: $ed
    ld a, d                                       ; $5d1b: $7a
    ld e, [hl]                                    ; $5d1c: $5e
    sub l                                         ; $5d1d: $95
    ld b, $22                                     ; $5d1e: $06 $22
    add hl, hl                                    ; $5d20: $29
    ld d, c                                       ; $5d21: $51
    inc hl                                        ; $5d22: $23
    ld l, d                                       ; $5d23: $6a
    jp z, $bb41                                   ; $5d24: $ca $41 $bb

    sbc [hl]                                      ; $5d27: $9e
    ld d, a                                       ; $5d28: $57
    and l                                         ; $5d29: $a5
    add c                                         ; $5d2a: $81
    inc bc                                        ; $5d2b: $03
    db $fc                                        ; $5d2c: $fc
    add a                                         ; $5d2d: $87
    xor c                                         ; $5d2e: $a9
    sub l                                         ; $5d2f: $95
    ld h, e                                       ; $5d30: $63
    db $f4                                        ; $5d31: $f4
    call c, $3c7e                                 ; $5d32: $dc $7e $3c
    cp a                                          ; $5d35: $bf
    ld hl, sp+$63                                 ; $5d36: $f8 $63
    ld c, e                                       ; $5d38: $4b
    ld [$34a5], a                                 ; $5d39: $ea $a5 $34
    cp l                                          ; $5d3c: $bd

Jump_054_5d3d:
    sub $7e                                       ; $5d3d: $d6 $7e
    ld [hl], h                                    ; $5d3f: $74
    db $ed                                        ; $5d40: $ed
    rst $00                                       ; $5d41: $c7
    add sp, $3d                                   ; $5d42: $e8 $3d
    ld e, [hl]                                    ; $5d44: $5e
    ld a, [c]                                     ; $5d45: $f2
    rla                                           ; $5d46: $17
    inc sp                                        ; $5d47: $33
    add $ae                                       ; $5d48: $c6 $ae
    pop de                                        ; $5d4a: $d1
    cp c                                          ; $5d4b: $b9
    halt                                          ; $5d4c: $76
    inc l                                         ; $5d4d: $2c
    sbc h                                         ; $5d4e: $9c
    ld a, [de]                                    ; $5d4f: $1a
    ld bc, $5177                                  ; $5d50: $01 $77 $51
    add a                                         ; $5d53: $87
    ld hl, $3d02                                  ; $5d54: $21 $02 $3d
    ld c, c                                       ; $5d57: $49
    xor [hl]                                      ; $5d58: $ae
    cp c                                          ; $5d59: $b9
    halt                                          ; $5d5a: $76
    ld e, e                                       ; $5d5b: $5b
    ei                                            ; $5d5c: $fb
    pop af                                        ; $5d5d: $f1
    db $fc                                        ; $5d5e: $fc
    ld a, [hl-]                                   ; $5d5f: $3a
    xor a                                         ; $5d60: $af
    ld e, c                                       ; $5d61: $59
    ld a, d                                       ; $5d62: $7a
    ld hl, $d429                                  ; $5d63: $21 $29 $d4
    jp c, $c093                                   ; $5d66: $da $93 $c0

    inc hl                                        ; $5d69: $23
    ld e, h                                       ; $5d6a: $5c

Jump_054_5d6b:
    ld [hl], h                                    ; $5d6b: $74
    cp l                                          ; $5d6c: $bd
    sbc l                                         ; $5d6d: $9d
    adc h                                         ; $5d6e: $8c
    and a                                         ; $5d6f: $a7
    db $f4                                        ; $5d70: $f4
    push bc                                       ; $5d71: $c5
    daa                                           ; $5d72: $27
    adc e                                         ; $5d73: $8b
    add hl, de                                    ; $5d74: $19
    ld h, e                                       ; $5d75: $63
    cpl                                           ; $5d76: $2f
    add a                                         ; $5d77: $87
    or l                                          ; $5d78: $b5
    rra                                           ; $5d79: $1f
    sbc l                                         ; $5d7a: $9d
    cp b                                          ; $5d7b: $b8
    dec l                                         ; $5d7c: $2d
    jp hl                                         ; $5d7d: $e9


    xor e                                         ; $5d7e: $ab
    cp h                                          ; $5d7f: $bc
    cp a                                          ; $5d80: $bf
    ld [hl], h                                    ; $5d81: $74
    xor [hl]                                      ; $5d82: $ae
    ld h, b                                       ; $5d83: $60
    add c                                         ; $5d84: $81
    db $eb                                        ; $5d85: $eb
    ld [hl], $8f                                  ; $5d86: $36 $8f
    cp $72                                        ; $5d88: $fe $72
    add [hl]                                      ; $5d8a: $86
    add hl, hl                                    ; $5d8b: $29
    halt                                          ; $5d8c: $76
    adc l                                         ; $5d8d: $8d
    ld e, d                                       ; $5d8e: $5a
    call z, Call_054_7b18                         ; $5d8f: $cc $18 $7b
    ld [hl], h                                    ; $5d92: $74
    ld l, $76                                     ; $5d93: $2e $76
    ld a, c                                       ; $5d95: $79
    ld [$48f3], a                                 ; $5d96: $ea $f3 $48
    ld c, d                                       ; $5d99: $4a
    dec sp                                        ; $5d9a: $3b

jr_054_5d9b:
    ld [hl+], a                                   ; $5d9b: $22
    ld sp, hl                                     ; $5d9c: $f9
    ld h, a                                       ; $5d9d: $67
    ld c, d                                       ; $5d9e: $4a
    rst $18                                       ; $5d9f: $df
    ld [hl], c                                    ; $5da0: $71
    dec l                                         ; $5da1: $2d
    ld h, h                                       ; $5da2: $64
    push bc                                       ; $5da3: $c5
    inc sp                                        ; $5da4: $33
    or e                                          ; $5da5: $b3
    dec bc                                        ; $5da6: $0b
    ld [hl+], a                                   ; $5da7: $22
    or a                                          ; $5da8: $b7
    pop af                                        ; $5da9: $f1
    sub h                                         ; $5daa: $94
    add [hl]                                      ; $5dab: $86

Jump_054_5dac:
    ld h, h                                       ; $5dac: $64
    db $ed                                        ; $5dad: $ed
    ld [hl], b                                    ; $5dae: $70
    ld d, a                                       ; $5daf: $57
    ld b, l                                       ; $5db0: $45

jr_054_5db1:
    sub $ae                                       ; $5db1: $d6 $ae
    jr z, jr_054_5d9b                             ; $5db3: $28 $e6

    dec e                                         ; $5db5: $1d
    or [hl]                                       ; $5db6: $b6
    add d                                         ; $5db7: $82
    db $10                                        ; $5db8: $10
    cp [hl]                                       ; $5db9: $be
    jr jr_054_5db1                                ; $5dba: $18 $f5

    ld a, d                                       ; $5dbc: $7a
    inc a                                         ; $5dbd: $3c
    ret                                           ; $5dbe: $c9


    ld e, $9d                                     ; $5dbf: $1e $9d
    ld l, e                                       ; $5dc1: $6b
    add hl, hl                                    ; $5dc2: $29
    ld c, l                                       ; $5dc3: $4d
    cpl                                           ; $5dc4: $2f
    adc b                                         ; $5dc5: $88
    nop                                           ; $5dc6: $00
    db $fd                                        ; $5dc7: $fd
    rst $18                                       ; $5dc8: $df
    sub $7e                                       ; $5dc9: $d6 $7e
    inc a                                         ; $5dcb: $3c
    cp a                                          ; $5dcc: $bf
    ret z                                         ; $5dcd: $c8

    ld a, [$35c7]                                 ; $5dce: $fa $c7 $35
    sub d                                         ; $5dd1: $92
    ld e, d                                       ; $5dd2: $5a
    ld [c], a                                     ; $5dd3: $e2
    ccf                                           ; $5dd4: $3f
    or c                                          ; $5dd5: $b1
    jp nc, $3e2e                                  ; $5dd6: $d2 $2e $3e

    add hl, sp                                    ; $5dd9: $39
    or c                                          ; $5dda: $b1
    db $e3                                        ; $5ddb: $e3
    ld de, $3c6e                                  ; $5ddc: $11 $6e $3c
    cp $6d                                        ; $5ddf: $fe $6d
    db $f4                                        ; $5de1: $f4
    sub e                                         ; $5de2: $93
    ldh [$d8], a                                  ; $5de3: $e0 $d8
    ld [hl], c                                    ; $5de5: $71
    ld l, e                                       ; $5de6: $6b
    ld l, $4b                                     ; $5de7: $2e $4b
    rst $38                                       ; $5de9: $ff
    ld [$fadd], sp                                ; $5dea: $08 $dd $fa
    adc b                                         ; $5ded: $88
    ld d, a                                       ; $5dee: $57
    ld l, e                                       ; $5def: $6b
    ld c, a                                       ; $5df0: $4f
    ld [bc], a                                    ; $5df1: $02
    rst $28                                       ; $5df2: $ef
    add a                                         ; $5df3: $87
    adc [hl]                                      ; $5df4: $8e
    dec b                                         ; $5df5: $05
    ld [hl+], a                                   ; $5df6: $22
    ld a, l                                       ; $5df7: $7d
    inc e                                         ; $5df8: $1c
    ld b, [hl]                                    ; $5df9: $46
    ld d, [hl]                                    ; $5dfa: $56
    ld d, a                                       ; $5dfb: $57
    ld [c], a                                     ; $5dfc: $e2
    ld a, [de]                                    ; $5dfd: $1a
    dec [hl]                                      ; $5dfe: $35
    ld a, [$788b]                                 ; $5dff: $fa $8b $78
    ld b, a                                       ; $5e02: $47
    inc de                                        ; $5e03: $13
    ld a, l                                       ; $5e04: $7d
    ld e, b                                       ; $5e05: $58
    ld a, a                                       ; $5e06: $7f
    db $10                                        ; $5e07: $10
    jp nz, $0e3e                                  ; $5e08: $c2 $3e $0e

    dec sp                                        ; $5e0b: $3b
    db $e4                                        ; $5e0c: $e4
    ccf                                           ; $5e0d: $3f
    db $ec                                        ; $5e0e: $ec
    pop de                                        ; $5e0f: $d1
    cp c                                          ; $5e10: $b9
    add [hl]                                      ; $5e11: $86
    dec [hl]                                      ; $5e12: $35
    sbc $5f                                       ; $5e13: $de $5f
    and b                                         ; $5e15: $a0
    ld a, [bc]                                    ; $5e16: $0a
    ld [hl+], a                                   ; $5e17: $22
    or a                                          ; $5e18: $b7
    cp h                                          ; $5e19: $bc
    ld a, [c]                                     ; $5e1a: $f2
    sub h                                         ; $5e1b: $94
    cp [hl]                                       ; $5e1c: $be
    rra                                           ; $5e1d: $1f
    and e                                         ; $5e1e: $a3
    rla                                           ; $5e1f: $17
    xor b                                         ; $5e20: $a8

Jump_054_5e21:
    ld e, d                                       ; $5e21: $5a
    ld h, $c9                                     ; $5e22: $26 $c9
    sbc h                                         ; $5e24: $9c
    cp b                                          ; $5e25: $b8
    and $d6                                       ; $5e26: $e6 $d6
    ld e, h                                       ; $5e28: $5c
    dec sp                                        ; $5e29: $3b
    ld c, h                                       ; $5e2a: $4c
    push de                                       ; $5e2b: $d5
    ld c, $ff                                     ; $5e2c: $0e $ff
    sub $ac                                       ; $5e2e: $d6 $ac
    ld e, l                                       ; $5e30: $5d
    and b                                         ; $5e31: $a0
    ld l, d                                       ; $5e32: $6a
    ld c, d                                       ; $5e33: $4a
    rst $18                                       ; $5e34: $df
    ld e, a                                       ; $5e35: $5f
    db $fd                                        ; $5e36: $fd
    ret z                                         ; $5e37: $c8

    ccf                                           ; $5e38: $3f
    xor h                                         ; $5e39: $ac
    call z, Call_000_25f2                         ; $5e3a: $cc $f2 $25
    ld b, b                                       ; $5e3d: $40
    inc b                                         ; $5e3e: $04
    ld a, l                                       ; $5e3f: $7d
    inc e                                         ; $5e40: $1c
    ld b, [hl]                                    ; $5e41: $46
    cp h                                          ; $5e42: $bc
    ld a, [de]                                    ; $5e43: $1a
    cp $32                                        ; $5e44: $fe $32
    rlca                                          ; $5e46: $07
    set 7, b                                      ; $5e47: $cb $f8
    ld h, e                                       ; $5e49: $63
    sub e                                         ; $5e4a: $93
    db $ed                                        ; $5e4b: $ed
    ret                                           ; $5e4c: $c9


    xor b                                         ; $5e4d: $a8
    or c                                          ; $5e4e: $b1
    dec h                                         ; $5e4f: $25
    ld a, d                                       ; $5e50: $7a
    inc h                                         ; $5e51: $24
    sub l                                         ; $5e52: $95
    ld a, [de]                                    ; $5e53: $1a
    ld bc, $4d29                                  ; $5e54: $01 $29 $4d
    xor a                                         ; $5e57: $af
    or e                                          ; $5e58: $b3
    sbc b                                         ; $5e59: $98
    add l                                         ; $5e5a: $85
    ld [hl], e                                    ; $5e5b: $73
    call Call_000_3fb5                            ; $5e5c: $cd $b5 $3f
    ld a, [$7049]                                 ; $5e5f: $fa $49 $70
    db $ec                                        ; $5e62: $ec
    cp b                                          ; $5e63: $b8
    dec [hl]                                      ; $5e64: $35
    sub a                                         ; $5e65: $97
    dec b                                         ; $5e66: $05

Jump_054_5e67:
    xor $ce                                       ; $5e67: $ee $ce
    or $ce                                        ; $5e69: $f6 $ce
    ld [hl], c                                    ; $5e6b: $71
    ld h, l                                       ; $5e6c: $65
    adc h                                         ; $5e6d: $8c
    call $9e23                                    ; $5e6e: $cd $23 $9e
    sbc h                                         ; $5e71: $9c
    cp c                                          ; $5e72: $b9
    halt                                          ; $5e73: $76
    ld a, [hl]                                    ; $5e74: $7e
    adc h                                         ; $5e75: $8c
    ld l, $de                                     ; $5e76: $2e $de
    sbc a                                         ; $5e78: $9f
    db $f4                                        ; $5e79: $f4
    ld d, l                                       ; $5e7a: $55
    add h                                         ; $5e7b: $84
    reti                                          ; $5e7c: $d9


    ld [bc], a                                    ; $5e7d: $02
    ld de, $c737                                  ; $5e7e: $11 $37 $c7
    xor b                                         ; $5e81: $a8
    rst $10                                       ; $5e82: $d7
    db $e3                                        ; $5e83: $e3
    or l                                          ; $5e84: $b5
    rra                                           ; $5e85: $1f
    ld a, c                                       ; $5e86: $79
    sub [hl]                                      ; $5e87: $96
    add l                                         ; $5e88: $85
    ld a, [$fd34]                                 ; $5e89: $fa $34 $fd
    dec h                                         ; $5e8c: $25
    adc h                                         ; $5e8d: $8c
    ld e, d                                       ; $5e8e: $5a
    and b                                         ; $5e8f: $a0
    halt                                          ; $5e90: $76
    inc e                                         ; $5e91: $1c
    sub [hl]                                      ; $5e92: $96
    adc $c5                                       ; $5e93: $ce $c5
    xor c                                         ; $5e95: $a9
    ld de, $7add                                  ; $5e96: $11 $dd $7a
    ld [$24f5], a                                 ; $5e99: $ea $f5 $24
    cp c                                          ; $5e9c: $b9
    add sp, $5c                                   ; $5e9d: $e8 $5c
    ld [hl], e                                    ; $5e9f: $73
    ld c, l                                       ; $5ea0: $4d
    jp hl                                         ; $5ea1: $e9


Call_054_5ea2:
    ei                                            ; $5ea2: $fb
    ld sp, $397a                                  ; $5ea3: $31 $7a $39
    adc h                                         ; $5ea6: $8c
    ld a, b                                       ; $5ea7: $78
    dec [hl]                                      ; $5ea8: $35
    cp $d8                                        ; $5ea9: $fe $d8
    cp l                                          ; $5eab: $bd
    db $10                                        ; $5eac: $10
    ld a, l                                       ; $5ead: $7d
    inc e                                         ; $5eae: $1c
    ld b, [hl]                                    ; $5eaf: $46
    ld d, [hl]                                    ; $5eb0: $56
    ld d, a                                       ; $5eb1: $57
    ld [c], a                                     ; $5eb2: $e2
    ld a, [de]                                    ; $5eb3: $1a
    dec [hl]                                      ; $5eb4: $35
    ld a, [$788b]                                 ; $5eb5: $fa $8b $78
    or a                                          ; $5eb8: $b7
    or l                                          ; $5eb9: $b5
    rra                                           ; $5eba: $1f
    rst $08                                       ; $5ebb: $cf
    xor a                                         ; $5ebc: $af
    di                                            ; $5ebd: $f3
    sbc d                                         ; $5ebe: $9a
    dec b                                         ; $5ebf: $05
    ld [hl+], a                                   ; $5ec0: $22
    db $dd                                        ; $5ec1: $dd
    sub [hl]                                      ; $5ec2: $96
    cp c                                          ; $5ec3: $b9
    or $47                                        ; $5ec4: $f6 $47
    ccf                                           ; $5ec6: $3f
    add hl, bc                                    ; $5ec7: $09
    adc [hl]                                      ; $5ec8: $8e
    dec e                                         ; $5ec9: $1d
    or a                                          ; $5eca: $b7
    and $b2                                       ; $5ecb: $e6 $b2
    and h                                         ; $5ecd: $a4
    ld e, [hl]                                    ; $5ece: $5e
    adc d                                         ; $5ecf: $8a
    ld e, e                                       ; $5ed0: $5b
    ld [hl-], a                                   ; $5ed1: $32
    set 5, b                                      ; $5ed2: $cb $e8
    xor [hl]                                      ; $5ed4: $ae
    ld a, [hl-]                                   ; $5ed5: $3a
    db $ec                                        ; $5ed6: $ec
    ret c                                         ; $5ed7: $d8

    sbc $39                                       ; $5ed8: $de $39
    ld e, a                                       ; $5eda: $5f
    jp nz, Jump_054_7ad2                          ; $5edb: $c2 $d2 $7a

    add hl, hl                                    ; $5ede: $29
    cpl                                           ; $5edf: $2f
    ld sp, hl                                     ; $5ee0: $f9
    db $ec                                        ; $5ee1: $ec
    dec e                                         ; $5ee2: $1d
    ld l, d                                       ; $5ee3: $6a
    db $e4                                        ; $5ee4: $e4
    dec sp                                        ; $5ee5: $3b
    daa                                           ; $5ee6: $27
    dec [hl]                                      ; $5ee7: $35
    ld [bc], a                                    ; $5ee8: $02
    ld [hl], a                                    ; $5ee9: $77
    ld h, [hl]                                    ; $5eea: $66
    inc a                                         ; $5eeb: $3c
    push hl                                       ; $5eec: $e5

jr_054_5eed:
    jr nc, jr_054_5eed                            ; $5eed: $30 $fe

    ld l, l                                       ; $5eef: $6d
    db $fc                                        ; $5ef0: $fc
    or c                                          ; $5ef1: $b1
    ld b, l                                       ; $5ef2: $45
    cp e                                          ; $5ef3: $bb
    ei                                            ; $5ef4: $fb
    ld [hl-], a                                   ; $5ef5: $32
    or e                                          ; $5ef6: $b3
    dec hl                                        ; $5ef7: $2b
    dec [hl]                                      ; $5ef8: $35
    ld [bc], a                                    ; $5ef9: $02
    ld a, l                                       ; $5efa: $7d
    sbc $a1                                       ; $5efb: $de $a1
    or h                                          ; $5efd: $b4
    db $eb                                        ; $5efe: $eb
    ld a, c                                       ; $5eff: $79
    ld d, l                                       ; $5f00: $55
    sbc d                                         ; $5f01: $9a
    db $dd                                        ; $5f02: $dd
    sub a                                         ; $5f03: $97
    sbc c                                         ; $5f04: $99
    ld e, l                                       ; $5f05: $5d
    ld [hl], b                                    ; $5f06: $70
    add b                                         ; $5f07: $80
    xor c                                         ; $5f08: $a9
    sbc d                                         ; $5f09: $9a

jr_054_5f0a:
    ld l, b                                       ; $5f0a: $68
    inc c                                         ; $5f0b: $0c
    ld hl, $bb4c                                  ; $5f0c: $21 $4c $bb
    cp d                                          ; $5f0f: $ba
    jr nc, jr_054_5f25                            ; $5f10: $30 $13

    ld h, [hl]                                    ; $5f12: $66
    cp b                                          ; $5f13: $b8
    db $db                                        ; $5f14: $db
    cp a                                          ; $5f15: $bf
    ret z                                         ; $5f16: $c8

    sub h                                         ; $5f17: $94
    jp Jump_000_232c                              ; $5f18: $c3 $2c $23


    db $db                                        ; $5f1b: $db
    dec sp                                        ; $5f1c: $3b
    rlca                                          ; $5f1d: $07
    ld [hl+], a                                   ; $5f1e: $22
    rst $30                                       ; $5f1f: $f7
    ld h, l                                       ; $5f20: $65
    ld h, [hl]                                    ; $5f21: $66
    sub a                                         ; $5f22: $97
    halt                                          ; $5f23: $76
    ld b, h                                       ; $5f24: $44

jr_054_5f25:
    sub d                                         ; $5f25: $92
    ld l, e                                       ; $5f26: $6b
    ret                                           ; $5f27: $c9


    ld l, a                                       ; $5f28: $6f
    call $fa53                                    ; $5f29: $cd $53 $fa
    sbc d                                         ; $5f2c: $9a
    reti                                          ; $5f2d: $d9


    inc hl                                        ; $5f2e: $23
    sub d                                         ; $5f2f: $92
    ld a, a                                       ; $5f30: $7f
    sub $71                                       ; $5f31: $d6 $71
    ld e, b                                       ; $5f33: $58
    ld a, [$394d]                                 ; $5f34: $fa $4d $39
    adc h                                         ; $5f37: $8c
    cp $22                                        ; $5f38: $fe $22
    sbc [hl]                                      ; $5f3a: $9e
    ld h, l                                       ; $5f3b: $65
    ld l, c                                       ; $5f3c: $69
    add e                                         ; $5f3d: $83
    res 5, a                                      ; $5f3e: $cb $af
    ld l, $39                                     ; $5f40: $2e $39
    db $ec                                        ; $5f42: $ec
    cpl                                           ; $5f43: $2f
    cp l                                          ; $5f44: $bd
    db $10                                        ; $5f45: $10
    ld a, l                                       ; $5f46: $7d
    inc e                                         ; $5f47: $1c
    sub [hl]                                      ; $5f48: $96
    sbc b                                         ; $5f49: $98
    and a                                         ; $5f4a: $a7
    call z, Call_054_75da                         ; $5f4b: $cc $da $75
    inc e                                         ; $5f4e: $1c
    sub [hl]                                      ; $5f4f: $96
    sbc b                                         ; $5f50: $98
    and a                                         ; $5f51: $a7
    call z, Call_000_11a9                         ; $5f52: $cc $a9 $11
    ld a, l                                       ; $5f55: $7d
    inc e                                         ; $5f56: $1c
    sub [hl]                                      ; $5f57: $96
    sbc b                                         ; $5f58: $98
    rst $30                                       ; $5f59: $f7
    ld h, e                                       ; $5f5a: $63
    or h                                          ; $5f5b: $b4
    halt                                          ; $5f5c: $76
    ld h, h                                       ; $5f5d: $64
    ld h, l                                       ; $5f5e: $65
    jp c, $e4e7                                   ; $5f5f: $da $e7 $e4

    add d                                         ; $5f62: $82
    cp e                                          ; $5f63: $bb
    di                                            ; $5f64: $f3
    ret                                           ; $5f65: $c9


    adc c                                         ; $5f66: $89
    dec e                                         ; $5f67: $1d
    ld c, a                                       ; $5f68: $4f
    jp hl                                         ; $5f69: $e9


jr_054_5f6a:
    inc hl                                        ; $5f6a: $23
    call c, Call_054_6b9a                         ; $5f6b: $dc $9a $6b
    daa                                           ; $5f6e: $27
    ld [$79ad], a                                 ; $5f6f: $ea $ad $79
    add a                                         ; $5f72: $87
    db $ec                                        ; $5f73: $ec
    xor d                                         ; $5f74: $aa
    ld a, [c]                                     ; $5f75: $f2
    ld a, d                                       ; $5f76: $7a
    ld e, h                                       ; $5f77: $5c
    ld hl, sp-$75                                 ; $5f78: $f8 $8b
    or l                                          ; $5f7a: $b5
    db $eb                                        ; $5f7b: $eb
    jr c, jr_054_5f0a                             ; $5f7c: $38 $8c

    dec hl                                        ; $5f7e: $2b
    rst $10                                       ; $5f7f: $d7
    ld [$965d], sp                                ; $5f80: $08 $5d $96
    sbc b                                         ; $5f83: $98
    and a                                         ; $5f84: $a7
    call z, $0110                                 ; $5f85: $cc $10 $01
    or a                                          ; $5f88: $b7
    ld sp, $7f0f                                  ; $5f89: $31 $0f $7f
    pop de                                        ; $5f8c: $d1
    rrca                                          ; $5f8d: $0f
    sbc c                                         ; $5f8e: $99
    dec l                                         ; $5f8f: $2d
    ld h, c                                       ; $5f90: $61
    db $fc                                        ; $5f91: $fc
    db $db                                        ; $5f92: $db
    ld a, d                                       ; $5f93: $7a
    rst $10                                       ; $5f94: $d7
    and a                                         ; $5f95: $a7
    jp hl                                         ; $5f96: $e9


    cpl                                           ; $5f97: $2f
    ld b, c                                       ; $5f98: $41
    cp e                                          ; $5f99: $bb
    ei                                            ; $5f9a: $fb
    ld [hl-], a                                   ; $5f9b: $32
    or e                                          ; $5f9c: $b3
    dec bc                                        ; $5f9d: $0b
    ld [hl+], a                                   ; $5f9e: $22
    scf                                           ; $5f9f: $37
    db $eb                                        ; $5fa0: $eb
    jp c, Jump_054_5d3d                           ; $5fa1: $da $3d $5d

    cp e                                          ; $5fa4: $bb
    and a                                         ; $5fa5: $a7
    and a                                         ; $5fa6: $a7
    ld b, [hl]                                    ; $5fa7: $46
    db $dd                                        ; $5fa8: $dd
    ld e, a                                       ; $5fa9: $5f
    sub [hl]                                      ; $5faa: $96
    ld e, b                                       ; $5fab: $58
    ld h, h                                       ; $5fac: $64
    ld [hl], a                                    ; $5fad: $77
    dec a                                         ; $5fae: $3d
    add hl, bc                                    ; $5faf: $09
    jp hl                                         ; $5fb0: $e9


    rst $10                                       ; $5fb1: $d7
    sbc d                                         ; $5fb2: $9a
    ld b, a                                       ; $5fb3: $47
    cp h                                          ; $5fb4: $bc
    ld e, d                                       ; $5fb5: $5a
    ld a, [c]                                     ; $5fb6: $f2
    rst $08                                       ; $5fb7: $cf
    pop hl                                        ; $5fb8: $e1
    sbc l                                         ; $5fb9: $9d
    ld hl, sp-$6c                                 ; $5fba: $f8 $94
    ld a, c                                       ; $5fbc: $79
    rst $00                                       ; $5fbd: $c7
    ld bc, $8fae                                  ; $5fbe: $01 $ae $8f
    jp Jump_054_7c4e                              ; $5fc1: $c3 $4e $7c


    ld l, l                                       ; $5fc4: $6d
    db $ed                                        ; $5fc5: $ed
    ld c, l                                       ; $5fc6: $4d
    add hl, sp                                    ; $5fc7: $39
    db $ec                                        ; $5fc8: $ec
    inc a                                         ; $5fc9: $3c
    call c, $2fbc                                 ; $5fca: $dc $bc $2f
    and c                                         ; $5fcd: $a1
    xor h                                         ; $5fce: $ac
    cp [hl]                                       ; $5fcf: $be
    push hl                                       ; $5fd0: $e5
    ld e, b                                       ; $5fd1: $58
    inc a                                         ; $5fd2: $3c
    cp $6d                                        ; $5fd3: $fe $6d
    call nc, Call_054_5ea2                        ; $5fd5: $d4 $a2 $5e
    ld l, $8f                                     ; $5fd8: $2e $8f
    ld a, b                                       ; $5fda: $78
    ld e, b                                       ; $5fdb: $58
    cp e                                          ; $5fdc: $bb
    ei                                            ; $5fdd: $fb
    ld [hl-], a                                   ; $5fde: $32
    or e                                          ; $5fdf: $b3
    dec bc                                        ; $5fe0: $0b
    ld [hl+], a                                   ; $5fe1: $22
    ld [hl], a                                    ; $5fe2: $77
    ld e, e                                       ; $5fe3: $5b
    jr nz, jr_054_5f6a                            ; $5fe4: $20 $84

    ld [$2edd], sp                                ; $5fe6: $08 $dd $2e
    rst $28                                       ; $5fe9: $ef
    call nz, Call_054_46d7                        ; $5fea: $c4 $d7 $46
    ld a, a                                       ; $5fed: $7f
    ld de, $8aef                                  ; $5fee: $11 $ef $8a
    sub c                                         ; $5ff1: $91
    cp c                                          ; $5ff2: $b9
    ld c, [hl]                                    ; $5ff3: $4e
    daa                                           ; $5ff4: $27
    adc e                                         ; $5ff5: $8b
    ld l, e                                       ; $5ff6: $6b
    jp hl                                         ; $5ff7: $e9


    rst $18                                       ; $5ff8: $df
    sbc d                                         ; $5ff9: $9a
    cp e                                          ; $5ffa: $bb
    inc [hl]                                      ; $5ffb: $34
    ld h, d                                       ; $5ffc: $62
    db $ed                                        ; $5ffd: $ed
    ld l, $1f                                     ; $5ffe: $2e $1f
    sbc c                                         ; $6000: $99
    db $eb                                        ; $6001: $eb
    ld [hl], h                                    ; $6002: $74
    or d                                          ; $6003: $b2
    db $ec                                        ; $6004: $ec
    or h                                          ; $6005: $b4
    daa                                           ; $6006: $27
    pop bc                                        ; $6007: $c1
    ld l, h                                       ; $6008: $6c
    ld de, $72d7                                  ; $6009: $11 $d7 $72
    ret c                                         ; $600c: $d8

    push hl                                       ; $600d: $e5
    inc hl                                        ; $600e: $23
    ld [hl], e                                    ; $600f: $73
    sbc l                                         ; $6010: $9d
    ld c, [hl]                                    ; $6011: $4e
    sub [hl]                                      ; $6012: $96
    and l                                         ; $6013: $a5
    ld [hl], e                                    ; $6014: $73
    add $a7                                       ; $6015: $c6 $a7
    dec a                                         ; $6017: $3d
    add hl, bc                                    ; $6018: $09
    ld a, $f1                                     ; $6019: $3e $f1
    adc e                                         ; $601b: $8b
    ret nz                                        ; $601c: $c0

    db $ed                                        ; $601d: $ed
    ld l, $f3                                     ; $601e: $2e $f3
    call z, $9aec                                 ; $6020: $cc $ec $9a
    ld [hl-], a                                   ; $6023: $32
    ld e, $49                                     ; $6024: $1e $49
    dec l                                         ; $6026: $2d
    add a                                         ; $6027: $87
    sub l                                         ; $6028: $95
    ld l, $8a                                     ; $6029: $2e $8a
    rst $10                                       ; $602b: $d7
    ei                                            ; $602c: $fb
    dec [hl]                                      ; $602d: $35
    ld c, [hl]                                    ; $602e: $4e
    ld [hl], d                                    ; $602f: $72
    ld sp, $eedc                                  ; $6030: $31 $dc $ee
    ld a, h                                       ; $6033: $7c
    ld [hl], d                                    ; $6034: $72
    ld h, d                                       ; $6035: $62
    rst $00                                       ; $6036: $c7
    ld d, e                                       ; $6037: $53
    ld l, $ef                                     ; $6038: $2e $ef
    ld b, h                                       ; $603a: $44
    cp l                                          ; $603b: $bd
    dec [hl]                                      ; $603c: $35
    rst $28                                       ; $603d: $ef
    ret z                                         ; $603e: $c8

    adc e                                         ; $603f: $8b
    pop de                                        ; $6040: $d1
    jp $3b56                                      ; $6041: $c3 $56 $3b


    ld sp, $2487                                  ; $6044: $31 $87 $24
    ld b, a                                       ; $6047: $47
    halt                                          ; $6048: $76
    ld e, c                                       ; $6049: $59
    or h                                          ; $604a: $b4
    db $eb                                        ; $604b: $eb
    xor l                                         ; $604c: $ad
    add hl, bc                                    ; $604d: $09
    push af                                       ; $604e: $f5
    sub l                                         ; $604f: $95
    halt                                          ; $6050: $76
    add hl, de                                    ; $6051: $19
    adc a                                         ; $6052: $8f
    ld c, b                                       ; $6053: $48
    ld [hl], d                                    ; $6054: $72
    ld c, l                                       ; $6055: $4d
    sbc c                                         ; $6056: $99
    rst $10                                       ; $6057: $d7
    cp d                                          ; $6058: $ba
    ld b, h                                       ; $6059: $44
    ld e, h                                       ; $605a: $5c
    dec sp                                        ; $605b: $3b
    ld c, $a3                                     ; $605c: $0e $a3
    sub $cc                                       ; $605e: $d6 $cc
    add [hl]                                      ; $6060: $86
    cp e                                          ; $6061: $bb
    scf                                           ; $6062: $37
    xor h                                         ; $6063: $ac
    ld a, l                                       ; $6064: $7d
    and $c5                                       ; $6065: $e6 $c5
    db $e4                                        ; $6067: $e4
    ld b, a                                       ; $6068: $47
    sub $8e                                       ; $6069: $d6 $8e
    ld e, a                                       ; $606b: $5f
    adc h                                         ; $606c: $8c
    ld [hl], b                                    ; $606d: $70
    db $eb                                        ; $606e: $eb
    db $e3                                        ; $606f: $e3
    or b                                          ; $6070: $b0
    ldh a, [rOCPD]                                ; $6071: $f0 $6b
    ld hl, sp-$75                                 ; $6073: $f8 $8b
    ld a, [hl]                                    ; $6075: $7e
    ret z                                         ; $6076: $c8

    ld l, h                                       ; $6077: $6c
    add hl, bc                                    ; $6078: $09
    and e                                         ; $6079: $a3
    ld [hl], e                                    ; $607a: $73
    db $ed                                        ; $607b: $ed
    ld h, h                                       ; $607c: $64
    adc h                                         ; $607d: $8c
    db $dd                                        ; $607e: $dd
    jr nz, jr_054_6083                            ; $607f: $20 $02

    add hl, hl                                    ; $6081: $29
    ld d, c                                       ; $6082: $51

jr_054_6083:
    inc hl                                        ; $6083: $23
    ld l, d                                       ; $6084: $6a
    jp z, $bb41                                   ; $6085: $ca $41 $bb

    sbc [hl]                                      ; $6088: $9e
    ld d, a                                       ; $6089: $57
    and l                                         ; $608a: $a5
    add c                                         ; $608b: $81
    db $10                                        ; $608c: $10
    ld [hl+], a                                   ; $608d: $22
    db $10                                        ; $608e: $10
    ld b, d                                       ; $608f: $42
    ld h, l                                       ; $6090: $65
    ld e, [hl]                                    ; $6091: $5e
    add sp, $74                                   ; $6092: $e8 $74
    push de                                       ; $6094: $d5
    ld c, $b5                                     ; $6095: $0e $b5
    inc h                                         ; $6097: $24
    adc e                                         ; $6098: $8b
    ld [c], a                                     ; $6099: $e2
    call nc, $dd08                                ; $609a: $d4 $08 $dd
    ld a, [$2fe8]                                 ; $609d: $fa $e8 $2f
    ld [c], a                                     ; $60a0: $e2
    jp c, $d18f                                   ; $60a1: $da $8f $d1

    ld d, e                                       ; $60a4: $53
    and $29                                       ; $60a5: $e6 $29
    ld a, l                                       ; $60a7: $7d
    call $9aec                                    ; $60a8: $cd $ec $9a
    sbc c                                         ; $60ab: $99
    ld e, l                                       ; $60ac: $5d
    inc hl                                        ; $60ad: $23
    ld e, h                                       ; $60ae: $5c
    ei                                            ; $60af: $fb
    ld [hl+], a                                   ; $60b0: $22
    sub $ee                                       ; $60b1: $d6 $ee
    cp [hl]                                       ; $60b3: $be
    call z, $82ec                                 ; $60b4: $cc $ec $82
    ld [$e6dd], sp                                ; $60b7: $08 $dd $e6
    ld d, l                                       ; $60ba: $55
    add $d8                                       ; $60bb: $c6 $d8
    inc a                                         ; $60bd: $3c
    rst $10                                       ; $60be: $d7
    ld l, [hl]                                    ; $60bf: $6e
    cp c                                          ; $60c0: $b9
    add hl, de                                    ; $60c1: $19
    ret nz                                        ; $60c2: $c0

    ld l, l                                       ; $60c3: $6d
    and e                                         ; $60c4: $a3
    ld [hl], e                                    ; $60c5: $73
    dec l                                         ; $60c6: $2d
    ld sp, hl                                     ; $60c7: $f9
    jp z, $98e5                                   ; $60c8: $ca $e5 $98

    or c                                          ; $60cb: $b1
    ld a, b                                       ; $60cc: $78
    ld l, [hl]                                    ; $60cd: $6e
    ld c, [hl]                                    ; $60ce: $4e
    ld e, h                                       ; $60cf: $5c
    jp c, $97dd                                   ; $60d0: $da $dd $97

    sbc c                                         ; $60d3: $99
    ld e, l                                       ; $60d4: $5d
    db $10                                        ; $60d5: $10
    ld bc, $af3d                                  ; $60d6: $01 $3d $af
    ld c, d                                       ; $60d9: $4a
    and e                                         ; $60da: $a3
    dec e                                         ; $60db: $1d
    sub c                                         ; $60dc: $91
    db $e4                                        ; $60dd: $e4
    and d                                         ; $60de: $a2
    ld [hl], e                                    ; $60df: $73
    call $a535                                    ; $60e0: $cd $35 $a5
    rst $28                                       ; $60e3: $ef
    rst $00                                       ; $60e4: $c7
    add sp, $7d                                   ; $60e5: $e8 $7d
    ld de, $872f                                  ; $60e7: $11 $2f $87
    ld de, $c6af                                  ; $60ea: $11 $af $c6
    rra                                           ; $60ed: $1f
    cp e                                          ; $60ee: $bb
    rst $10                                       ; $60ef: $d7
    ld a, [$cc38]                                 ; $60f0: $fa $38 $cc
    dec [hl]                                      ; $60f3: $35
    or d                                          ; $60f4: $b2
    ld c, h                                       ; $60f5: $4c
    dec sp                                        ; $60f6: $3b
    or d                                          ; $60f7: $b2
    halt                                          ; $60f8: $76
    add a                                         ; $60f9: $87
    ld e, d                                       ; $60fa: $5a
    rst $00                                       ; $60fb: $c7
    ld h, c                                       ; $60fc: $61
    xor [hl]                                      ; $60fd: $ae
    ld c, c                                       ; $60fe: $49
    sub a                                         ; $60ff: $97
    ld [c], a                                     ; $6100: $e2
    pop af                                        ; $6101: $f1
    ld l, a                                       ; $6102: $6f
    and e                                         ; $6103: $a3
    halt                                          ; $6104: $76
    ret z                                         ; $6105: $c8

    xor [hl]                                      ; $6106: $ae
    ld a, [hl+]                                   ; $6107: $2a
    ld b, e                                       ; $6108: $43
    inc b                                         ; $6109: $04
    rst $30                                       ; $610a: $f7
    db $fc                                        ; $610b: $fc
    and [hl]                                      ; $610c: $a6
    sbc a                                         ; $610d: $9f
    ld de, $294f                                  ; $610e: $11 $4f $29
    rst $08                                       ; $6111: $cf
    inc a                                         ; $6112: $3c
    sbc l                                         ; $6113: $9d
    ld [hl], b                                    ; $6114: $70
    ld l, e                                       ; $6115: $6b
    bit 4, c                                      ; $6116: $cb $61
    jp hl                                         ; $6118: $e9


    and $9d                                       ; $6119: $e6 $9d

Call_054_611b:
    ld hl, sp-$6c                                 ; $611b: $f8 $94
    jp nc, Jump_054_50ee                          ; $611d: $d2 $ee $50

    ld c, e                                       ; $6120: $4b
    ld l, c                                       ; $6121: $69
    ld a, d                                       ; $6122: $7a
    db $ed                                        ; $6123: $ed
    ld e, b                                       ; $6124: $58
    inc d                                         ; $6125: $14
    ld a, e                                       ; $6126: $7b
    ret c                                         ; $6127: $d8

    ld h, c                                       ; $6128: $61
    ld a, [hl-]                                   ; $6129: $3a
    adc a                                         ; $612a: $8f
    adc $35                                       ; $612b: $ce $35
    ld l, d                                       ; $612d: $6a
    db $f4                                        ; $612e: $f4
    rla                                           ; $612f: $17
    pop af                                        ; $6130: $f1
    call c, $3c7e                                 ; $6131: $dc $7e $3c
    cp a                                          ; $6134: $bf
    ld l, $f9                                     ; $6135: $2e $f9
    ld [de], a                                    ; $6137: $12
    jp z, Jump_054_5bea                           ; $6138: $ca $ea $5b

    adc [hl]                                      ; $613b: $8e
    ld l, e                                       ; $613c: $6b
    add hl, sp                                    ; $613d: $39
    inc l                                         ; $613e: $2c
    ld [$f2e5], a                                 ; $613f: $ea $e5 $f2
    adc b                                         ; $6142: $88
    add a                                         ; $6143: $87
    ld hl, $2902                                  ; $6144: $21 $02 $29
    ld a, [c]                                     ; $6147: $f2
    ld h, d                                       ; $6148: $62
    inc e                                         ; $6149: $1c
    or [hl]                                       ; $614a: $b6
    ld e, d                                       ; $614b: $5a
    ld l, a                                       ; $614c: $6f
    ld c, l                                       ; $614d: $4d
    xor b                                         ; $614e: $a8
    xor a                                         ; $614f: $af
    ldh [$7a], a                                  ; $6150: $e0 $7a
    sbc [hl]                                      ; $6152: $9e
    inc l                                         ; $6153: $2c
    ld sp, $64ef                                  ; $6154: $31 $ef $64
    cp h                                          ; $6157: $bc
    ld c, h                                       ; $6158: $4c
    or e                                          ; $6159: $b3
    rrca                                          ; $615a: $0f
    adc a                                         ; $615b: $8f
    ld c, b                                       ; $615c: $48
    sbc $4e                                       ; $615d: $de $4e
    add $6b                                       ; $615f: $c6 $6b
    ccf                                           ; $6161: $3f
    inc b                                         ; $6162: $04
    rst $10                                       ; $6163: $d7
    ld [$72d7], sp                                ; $6164: $08 $d7 $72
    sbc b                                         ; $6167: $98
    ld [hl], d                                    ; $6168: $72
    ld b, c                                       ; $6169: $41
    inc b                                         ; $616a: $04
    db $fd                                        ; $616b: $fd
    jp nc, Jump_054_6bb4                          ; $616c: $d2 $b4 $6b

    xor [hl]                                      ; $616f: $ae
    add hl, hl                                    ; $6170: $29
    ld a, l                                       ; $6171: $7d
    add h                                         ; $6172: $84
    ld l, e                                       ; $6173: $6b
    ld a, [hl-]                                   ; $6174: $3a
    ld a, e                                       ; $6175: $7b
    ld hl, sp+$2b                                 ; $6176: $f8 $2b
    sbc $df                                       ; $6178: $de $df
    adc c                                         ; $617a: $89
    cp c                                          ; $617b: $b9
    sbc c                                         ; $617c: $99
    cp a                                          ; $617d: $bf
    ld a, d                                       ; $617e: $7a
    jp c, $bcf5                                   ; $617f: $da $f5 $bc

    ld a, [hl+]                                   ; $6182: $2a
    ld c, l                                       ; $6183: $4d
    cpl                                           ; $6184: $2f
    inc b                                         ; $6185: $04
    rst $30                                       ; $6186: $f7
    ld d, l                                       ; $6187: $55
    and [hl]                                      ; $6188: $a6
    ld a, l                                       ; $6189: $7d
    ld c, [hl]                                    ; $618a: $4e
    xor [hl]                                      ; $618b: $ae
    and l                                         ; $618c: $a5
    inc [hl]                                      ; $618d: $34
    cp l                                          ; $618e: $bd
    halt                                          ; $618f: $76
    inc l                                         ; $6190: $2c
    adc d                                         ; $6191: $8a
    dec a                                         ; $6192: $3d
    db $ec                                        ; $6193: $ec
    jr nc, jr_054_61d0                            ; $6194: $30 $3a

    rst $10                                       ; $6196: $d7
    xor b                                         ; $6197: $a8
    dec [hl]                                      ; $6198: $35
    or e                                          ; $6199: $b3
    ld h, a                                       ; $619a: $67
    ld h, [hl]                                    ; $619b: $66
    rst $10                                       ; $619c: $d7
    call c, $3c7e                                 ; $619d: $dc $7e $3c
    cp a                                          ; $61a0: $bf
    ld l, $f9                                     ; $61a1: $2e $f9
    ld [de], a                                    ; $61a3: $12
    jp z, Jump_054_5bea                           ; $61a4: $ca $ea $5b

    adc [hl]                                      ; $61a7: $8e
    db $eb                                        ; $61a8: $eb
    add [hl]                                      ; $61a9: $86
    and l                                         ; $61aa: $a5
    ld a, a                                       ; $61ab: $7f
    ld l, e                                       ; $61ac: $6b
    xor $d2                                       ; $61ad: $ee $d2
    adc b                                         ; $61af: $88
    or l                                          ; $61b0: $b5
    ld c, e                                       ; $61b1: $4b
    rst $20                                       ; $61b2: $e7
    adc h                                         ; $61b3: $8c
    ld c, a                                       ; $61b4: $4f
    ld a, e                                       ; $61b5: $7b
    ld [de], a                                    ; $61b6: $12
    ld a, h                                       ; $61b7: $7c
    ld [c], a                                     ; $61b8: $e2
    rla                                           ; $61b9: $17
    ld e, c                                       ; $61ba: $59
    ld c, $3b                                     ; $61bb: $0e $3b

Call_054_61bd:
    db $ed                                        ; $61bd: $ed
    ld c, c                                       ; $61be: $49
    jr nc, jr_054_621c                            ; $61bf: $30 $5b

    call nz, $1105                                ; $61c1: $c4 $05 $11
    db $dd                                        ; $61c4: $dd
    and $11                                       ; $61c5: $e6 $11
    ld d, $e5                                     ; $61c7: $16 $e5
    jp c, Jump_000_1de3                           ; $61c9: $da $e3 $1d

    ld c, d                                       ; $61cc: $4a
    ld a, b                                       ; $61cd: $78
    db $ed                                        ; $61ce: $ed
    add a                                         ; $61cf: $87

jr_054_61d0:
    ldh [$5a], a                                  ; $61d0: $e0 $5a
    jp hl                                         ; $61d2: $e9


    and d                                         ; $61d3: $a2
    ld a, b                                       ; $61d4: $78
    inc h                                         ; $61d5: $24
    or l                                          ; $61d6: $b5
    inc de                                        ; $61d7: $13
    ld [hl], e                                    ; $61d8: $73
    ld [hl], e                                    ; $61d9: $73
    add $45                                       ; $61da: $c6 $45
    add hl, hl                                    ; $61dc: $29
    inc sp                                        ; $61dd: $33
    call c, Call_000_0dee                         ; $61de: $dc $ee $0d
    ld d, e                                       ; $61e1: $53
    and $a5                                       ; $61e2: $e6 $a5
    ld [hl], e                                    ; $61e4: $73
    add $a7                                       ; $61e5: $c6 $a7
    dec a                                         ; $61e7: $3d

Call_054_61e8:
    add hl, bc                                    ; $61e8: $09
    ld a, $f1                                     ; $61e9: $3e $f1
    adc e                                         ; $61eb: $8b
    sbc b                                         ; $61ec: $98
    ld [hl], a                                    ; $61ed: $77
    ret                                           ; $61ee: $c9


    sub h                                         ; $61ef: $94
    ld a, c                                       ; $61f0: $79
    daa                                           ; $61f1: $27
    ld [$c7fd], a                                 ; $61f2: $ea $fd $c7
    add sp, -$2f                                  ; $61f5: $e8 $d1
    cp c                                          ; $61f7: $b9
    ld [hl], h                                    ; $61f8: $74
    ld d, c                                       ; $61f9: $51
    push hl                                       ; $61fa: $e5
    ld h, c                                       ; $61fb: $61
    add a                                         ; $61fc: $87
    ld h, l                                       ; $61fd: $65
    cp h                                          ; $61fe: $bc
    sub h                                         ; $61ff: $94
    and [hl]                                      ; $6200: $a6
    rst $10                                       ; $6201: $d7
    adc b                                         ; $6202: $88
    ld d, a                                       ; $6203: $57
    ld l, e                                       ; $6204: $6b
    sbc a                                         ; $6205: $9f
    ld a, c                                       ; $6206: $79
    inc h                                         ; $6207: $24
    or l                                          ; $6208: $b5
    sbc b                                         ; $6209: $98
    add l                                         ; $620a: $85
    ld [hl], e                                    ; $620b: $73
    sbc c                                         ; $620c: $99
    ld [hl], a                                    ; $620d: $77
    ld a, $b3                                     ; $620e: $3e $b3
    halt                                          ; $6210: $76
    add a                                         ; $6211: $87
    ld e, d                                       ; $6212: $5a
    ld l, b                                       ; $6213: $68
    ld c, a                                       ; $6214: $4f
    db $ed                                        ; $6215: $ed
    ld h, h                                       ; $6216: $64
    call c, $ccbf                                 ; $6217: $dc $bf $cc
    or l                                          ; $621a: $b5
    cp a                                          ; $621b: $bf

jr_054_621c:
    db $d3                                        ; $621c: $d3
    sbc [hl]                                      ; $621d: $9e
    inc b                                         ; $621e: $04
    rst $10                                       ; $621f: $d7
    ld [hl], d                                    ; $6220: $72
    ret c                                         ; $6221: $d8

    and c                                         ; $6222: $a1
    add h                                         ; $6223: $84
    ld hl, $dd02                                  ; $6224: $21 $02 $dd
    ld a, [$925e]                                 ; $6227: $fa $5e $92
    ld l, $0d                                     ; $622a: $2e $0d
    cp e                                          ; $622c: $bb
    ld h, [hl]                                    ; $622d: $66
    reti                                          ; $622e: $d9


    adc c                                         ; $622f: $89
    cp c                                          ; $6230: $b9
    sbc c                                         ; $6231: $99
    ccf                                           ; $6232: $3f
    halt                                          ; $6233: $76
    ld [$9b75], a                                 ; $6234: $ea $75 $9b
    sub a                                         ; $6237: $97
    ld l, [hl]                                    ; $6238: $6e
    cp a                                          ; $6239: $bf
    halt                                          ; $623a: $76
    push af                                       ; $623b: $f5
    ldh a, [rNR22]                                ; $623c: $f0 $17
    db $fd                                        ; $623e: $fd
    sub b                                         ; $623f: $90
    reti                                          ; $6240: $d9


    ld [de], a                                    ; $6241: $12
    add $bf                                       ; $6242: $c6 $bf
    xor l                                         ; $6244: $ad
    ld [hl], a                                    ; $6245: $77
    ld a, l                                       ; $6246: $7d
    sbc d                                         ; $6247: $9a
    cp $12                                        ; $6248: $fe $12
    ld d, d                                       ; $624a: $52
    inc hl                                        ; $624b: $23
    add b                                         ; $624c: $80
    dec l                                         ; $624d: $2d
    cp h                                          ; $624e: $bc
    or $99                                        ; $624f: $f6 $99
    ld hl, $3b84                                  ; $6251: $21 $84 $3b
    ld l, a                                       ; $6254: $6f
    ccf                                           ; $6255: $3f
    ld b, [hl]                                    ; $6256: $46
    xor a                                         ; $6257: $af
    or a                                          ; $6258: $b7
    ld h, $d4                                     ; $6259: $26 $d4
    ld d, a                                       ; $625b: $57
    ld a, e                                       ; $625c: $7b
    inc a                                         ; $625d: $3c
    ld [c], a                                     ; $625e: $e2
    ret                                           ; $625f: $c9


    ld c, $59                                     ; $6260: $0e $59
    ld e, l                                       ; $6262: $5d
    ld a, [de]                                    ; $6263: $1a
    ld [hl], $2f                                  ; $6264: $36 $2f
    db $fd                                        ; $6266: $fd
    ld e, e                                       ; $6267: $5b
    ld [hl], e                                    ; $6268: $73
    dec l                                         ; $6269: $2d
    db $fd                                        ; $626a: $fd
    ld h, d                                       ; $626b: $62
    add $23                                       ; $626c: $c6 $23
    ld e, h                                       ; $626e: $5c
    cp l                                          ; $626f: $bd
    db $10                                        ; $6270: $10
    db $dd                                        ; $6271: $dd
    ld h, [hl]                                    ; $6272: $66
    or $5c                                        ; $6273: $f6 $5c
    ld c, e                                       ; $6275: $4b
    rst $38                                       ; $6276: $ff
    sub $dc                                       ; $6277: $d6 $dc
    and l                                         ; $6279: $a5
    ld de, $a76b                                  ; $627a: $11 $6b $a7
    call z, $ed73                                 ; $627d: $cc $73 $ed
    db $fc                                        ; $6280: $fc
    jr @+$5f                                      ; $6281: $18 $5d

    sbc h                                         ; $6283: $9c
    ld a, [de]                                    ; $6284: $1a
    ld bc, $66dd                                  ; $6285: $01 $dd $66
    or $8e                                        ; $6288: $f6 $8e
    ld l, e                                       ; $628a: $6b
    ld a, [hl-]                                   ; $628b: $3a
    rst $28                                       ; $628c: $ef
    ld h, h                                       ; $628d: $64
    cp h                                          ; $628e: $bc
    cpl                                           ; $628f: $2f
    rst $00                                       ; $6290: $c7
    sub c                                         ; $6291: $91
    cp e                                          ; $6292: $bb
    inc [hl]                                      ; $6293: $34
    ld h, d                                       ; $6294: $62
    ld [$5d21], sp                                ; $6295: $08 $21 $5d
    ld l, a                                       ; $6298: $6f
    jp hl                                         ; $6299: $e9


    rst $18                                       ; $629a: $df
    sbc d                                         ; $629b: $9a
    dec hl                                        ; $629c: $2b
    dec [hl]                                      ; $629d: $35
    ld [bc], a                                    ; $629e: $02
    ld [hl], a                                    ; $629f: $77
    ld a, l                                       ; $62a0: $7d
    and $bd                                       ; $62a1: $e6 $bd
    ld h, h                                       ; $62a3: $64
    sub [hl]                                      ; $62a4: $96
    sbc l                                         ; $62a5: $9d
    or $24                                        ; $62a6: $f6 $24
    ld a, b                                       ; $62a8: $78
    sub a                                         ; $62a9: $97
    inc c                                         ; $62aa: $0c
    ld e, e                                       ; $62ab: $5b
    and [hl]                                      ; $62ac: $a6
    inc l                                         ; $62ad: $2c
    dec sp                                        ; $62ae: $3b
    xor [hl]                                      ; $62af: $ae
    ld h, c                                       ; $62b0: $61
    ld d, a                                       ; $62b1: $57
    ld [hl], h                                    ; $62b2: $74
    ei                                            ; $62b3: $fb
    ld h, c                                       ; $62b4: $61
    ld a, [hl-]                                   ; $62b5: $3a
    ld b, e                                       ; $62b6: $43
    ld [$dd11], sp                                ; $62b7: $08 $11 $dd
    and $b9                                       ; $62ba: $e6 $b9
    and $c8                                       ; $62bc: $e6 $c8
    sbc $69                                       ; $62be: $de $69
    ld c, a                                       ; $62c0: $4f
    add d                                         ; $62c1: $82
    ld c, a                                       ; $62c2: $4f
    db $fc                                        ; $62c3: $fc
    ld [hl+], a                                   ; $62c4: $22
    ld [hl], b                                    ; $62c5: $70
    rst $30                                       ; $62c6: $f7
    add [hl]                                      ; $62c7: $86
    ld e, c                                       ; $62c8: $59
    sub [hl]                                      ; $62c9: $96
    adc $19                                       ; $62ca: $ce $19
    sbc a                                         ; $62cc: $9f
    or $24                                        ; $62cd: $f6 $24
    ld a, b                                       ; $62cf: $78
    xor [hl]                                      ; $62d0: $ae
    ld [hl], l                                    ; $62d1: $75
    ld a, [c]                                     ; $62d2: $f2
    inc l                                         ; $62d3: $2c
    dec sp                                        ; $62d4: $3b
    db $ed                                        ; $62d5: $ed
    ld c, c                                       ; $62d6: $49
    ld [hl], b                                    ; $62d7: $70
    ld l, d                                       ; $62d8: $6a
    inc b                                         ; $62d9: $04
    dec a                                         ; $62da: $3d
    ret                                           ; $62db: $c9


    sbc e                                         ; $62dc: $9b
    ld l, e                                       ; $62dd: $6b
    jp z, Jump_054_50bc                           ; $62de: $ca $bc $50

    sbc a                                         ; $62e1: $9f
    and [hl]                                      ; $62e2: $a6
    dec l                                         ; $62e3: $2d
    inc hl                                        ; $62e4: $23
    ld e, [hl]                                    ; $62e5: $5e
    dec c                                         ; $62e6: $0d
    cp e                                          ; $62e7: $bb
    or l                                          ; $62e8: $b5
    adc h                                         ; $62e9: $8c
    ld b, a                                       ; $62ea: $47
    rst $20                                       ; $62eb: $e7
    ld l, d                                       ; $62ec: $6a
    cpl                                           ; $62ed: $2f
    sbc l                                         ; $62ee: $9d
    or [hl]                                       ; $62ef: $b6
    cp b                                          ; $62f0: $b8
    rla                                           ; $62f1: $17
    ld [bc], a                                    ; $62f2: $02
    db $dd                                        ; $62f3: $dd
    ld h, [hl]                                    ; $62f4: $66
    or $30                                        ; $62f5: $f6 $30
    or l                                          ; $62f7: $b5
    and h                                         ; $62f8: $a4
    xor a                                         ; $62f9: $af
    ld a, [c]                                     ; $62fa: $f2
    ld c, [hl]                                    ; $62fb: $4e
    ld a, e                                       ; $62fc: $7b
    ld [de], a                                    ; $62fd: $12
    call z, Call_054_7116                         ; $62fe: $cc $16 $71
    pop bc                                        ; $6301: $c1
    push af                                       ; $6302: $f5
    ld [hl], c                                    ; $6303: $71
    jr jr_054_6347                                ; $6304: $18 $41

    sub c                                         ; $6306: $91
    xor [hl]                                      ; $6307: $ae
    add hl, hl                                    ; $6308: $29
    di                                            ; $6309: $f3
    ld e, h                                       ; $630a: $5c
    xor e                                         ; $630b: $ab
    rra                                           ; $630c: $1f
    ld sp, hl                                     ; $630d: $f9
    add a                                         ; $630e: $87
    sbc l                                         ; $630f: $9d
    or $c2                                        ; $6310: $f6 $c2
    add c                                         ; $6312: $81
    ld [$b93d], sp                                ; $6313: $08 $3d $b9
    add hl, hl                                    ; $6316: $29
    rst $10                                       ; $6317: $d7
    ld a, [hl]                                    ; $6318: $7e
    adc h                                         ; $6319: $8c
    add [hl]                                      ; $631a: $86
    cp e                                          ; $631b: $bb
    ld a, h                                       ; $631c: $7c
    ld hl, sp-$75                                 ; $631d: $f8 $8b
    ld a, [hl]                                    ; $631f: $7e
    ret z                                         ; $6320: $c8

    ld l, h                                       ; $6321: $6c
    add hl, bc                                    ; $6322: $09
    ld [hl], b                                    ; $6323: $70
    or a                                          ; $6324: $b7
    cp b                                          ; $6325: $b8
    cp d                                          ; $6326: $ba
    jr nc, jr_054_639f                            ; $6327: $30 $76

    dec sp                                        ; $6329: $3b
    sbc [hl]                                      ; $632a: $9e
    ld l, e                                       ; $632b: $6b
    ret                                           ; $632c: $c9


    ccf                                           ; $632d: $3f
    add a                                         ; $632e: $87
    rst $30                                       ; $632f: $f7
    ld h, e                                       ; $6330: $63
    db $f4                                        ; $6331: $f4
    ld e, [hl]                                    ; $6332: $5e
    db $e3                                        ; $6333: $e3
    ld de, $fdae                                  ; $6334: $11 $ae $fd
    dec h                                         ; $6337: $25
    ld l, $65                                     ; $6338: $2e $65
    add c                                         ; $633a: $81
    cp e                                          ; $633b: $bb
    dec a                                         ; $633c: $3d
    rla                                           ; $633d: $17
    rra                                           ; $633e: $1f
    inc sp                                        ; $633f: $33
    adc a                                         ; $6340: $8f
    ld e, d                                       ; $6341: $5a
    inc sp                                        ; $6342: $33
    dec de                                        ; $6343: $1b
    ld [hl+], a                                   ; $6344: $22
    add b                                         ; $6345: $80
    ld l, b                                       ; $6346: $68

jr_054_6347:
    sub a                                         ; $6347: $97
    ld a, [$6e01]                                 ; $6348: $fa $01 $6e
    sub a                                         ; $634b: $97
    rrca                                          ; $634c: $0f
    ld a, a                                       ; $634d: $7f
    pop de                                        ; $634e: $d1
    rrca                                          ; $634f: $0f
    sbc c                                         ; $6350: $99

jr_054_6351:
    dec l                                         ; $6351: $2d
    ld bc, $dd6e                                  ; $6352: $01 $6e $dd
    ld d, h                                       ; $6355: $54
    or l                                          ; $6356: $b5
    rra                                           ; $6357: $1f
    ld d, $3a                                     ; $6358: $16 $3a
    cp c                                          ; $635a: $b9
    ld a, b                                       ; $635b: $78
    jr c, jr_054_6351                             ; $635c: $38 $f3

    call nc, $2597                                ; $635e: $d4 $97 $25
    ld d, $d9                                     ; $6361: $16 $d9
    ld e, l                                       ; $6363: $5d
    ld c, a                                       ; $6364: $4f
    ld b, d                                       ; $6365: $42
    ld a, [$66b5]                                 ; $6366: $fa $b5 $66
    adc b                                         ; $6369: $88
    nop                                           ; $636a: $00
    or a                                          ; $636b: $b7
    rst $20                                       ; $636c: $e7
    ld a, [de]                                    ; $636d: $1a
    ld c, l                                       ; $636e: $4d
    db $ed                                        ; $636f: $ed
    ld c, e                                       ; $6370: $4b
    jr z, @-$53                                   ; $6371: $28 $ab

    ld l, a                                       ; $6373: $6f
    add hl, sp                                    ; $6374: $39
    ld l, $ed                                     ; $6375: $2e $ed
    xor $cb                                       ; $6377: $ee $cb
    call z, $b82e                                 ; $6379: $cc $2e $b8
    db $db                                        ; $637c: $db
    ld [hl], e                                    ; $637d: $73
    pop af                                        ; $637e: $f1
    ld sp, $a8f3                                  ; $637f: $31 $f3 $a8
    dec [hl]                                      ; $6382: $35
    or e                                          ; $6383: $b3
    ld hl, $dd02                                  ; $6384: $21 $02 $dd
    ld e, a                                       ; $6387: $5f
    sub [hl]                                      ; $6388: $96
    ld e, b                                       ; $6389: $58
    ld h, h                                       ; $638a: $64
    ld d, c                                       ; $638b: $51
    rla                                           ; $638c: $17
    pop af                                        ; $638d: $f1
    ld a, [hl]                                    ; $638e: $7e
    adc h                                         ; $638f: $8c
    ld e, [hl]                                    ; $6390: $5e
    ld h, d                                       ; $6391: $62
    ld h, c                                       ; $6392: $61
    ld l, e                                       ; $6393: $6b
    ld b, a                                       ; $6394: $47
    inc a                                         ; $6395: $3c
    add hl, de                                    ; $6396: $19
    and [hl]                                      ; $6397: $a6
    sbc b                                         ; $6398: $98
    dec a                                         ; $6399: $3d
    sub d                                         ; $639a: $92
    jp c, Jump_054_44d1                           ; $639b: $da $d1 $44

    rra                                           ; $639e: $1f

jr_054_639f:
    sub $1f                                       ; $639f: $d6 $1f
    call c, $a9ba                                 ; $63a1: $dc $ba $a9
    ld l, d                                       ; $63a4: $6a
    ccf                                           ; $63a5: $3f
    ld a, b                                       ; $63a6: $78
    and c                                         ; $63a7: $a1
    db $fc                                        ; $63a8: $fc
    ld e, l                                       ; $63a9: $5d
    jp c, $97dd                                   ; $63aa: $da $dd $97

    sbc c                                         ; $63ad: $99
    ld e, l                                       ; $63ae: $5d
    ld [hl], b                                    ; $63af: $70
    cp e                                          ; $63b0: $bb
    ld a, d                                       ; $63b1: $7a
    ld hl, sp-$75                                 ; $63b2: $f8 $8b
    ld a, [hl]                                    ; $63b4: $7e
    ret z                                         ; $63b5: $c8

    ld l, h                                       ; $63b6: $6c
    add hl, bc                                    ; $63b7: $09
    db $e3                                        ; $63b8: $e3
    rst $18                                       ; $63b9: $df
    sub $bb                                       ; $63ba: $d6 $bb
    ld a, $4d                                     ; $63bc: $3e $4d
    ld a, a                                       ; $63be: $7f
    add hl, bc                                    ; $63bf: $09
    ld [hl], b                                    ; $63c0: $70
    ld c, e                                       ; $63c1: $4b
    ld l, c                                       ; $63c2: $69
    ld a, [hl-]                                   ; $63c3: $3a
    di                                            ; $63c4: $f3
    ld c, b                                       ; $63c5: $48
    ld l, d                                       ; $63c6: $6a
    db $fc                                        ; $63c7: $fc
    or c                                          ; $63c8: $b1
    dec b                                         ; $63c9: $05
    ld [hl+], a                                   ; $63ca: $22
    add hl, hl                                    ; $63cb: $29
    sbc $a1                                       ; $63cc: $de $a1
    or h                                          ; $63ce: $b4
    ld d, e                                       ; $63cf: $53
    ld l, a                                       ; $63d0: $6f
    call nz, Call_054_75ab                        ; $63d1: $c4 $ab $75
    inc e                                         ; $63d4: $1c
    or $1a                                        ; $63d5: $f6 $1a
    jp $9b75                                      ; $63d7: $c3 $75 $9b


    ld [hl], a                                    ; $63da: $77
    ld [c], a                                     ; $63db: $e2
    ld l, e                                       ; $63dc: $6b
    ei                                            ; $63dd: $fb
    ld sp, $e97a                                  ; $63de: $31 $7a $e9
    or $d7                                        ; $63e1: $f6 $d7
    call z, Call_000_3a3c                         ; $63e3: $cc $3c $3a
    rst $10                                       ; $63e6: $d7
    ld d, d                                       ; $63e7: $52
    sbc d                                         ; $63e8: $9a
    ld e, [hl]                                    ; $63e9: $5e
    and e                                         ; $63ea: $a3
    ld d, $fe                                     ; $63eb: $16 $fe

Jump_054_63ed:
    or b                                          ; $63ed: $b0
    jp $d70e                                      ; $63ee: $c3 $0e $d7


    and e                                         ; $63f1: $a3
    ld l, c                                       ; $63f2: $69
    sub e                                         ; $63f3: $93
    reti                                          ; $63f4: $d9


    ld [de], a                                    ; $63f5: $12
    ld h, $54                                     ; $63f6: $26 $54
    ld l, d                                       ; $63f8: $6a
    inc b                                         ; $63f9: $04
    rst $10                                       ; $63fa: $d7
    adc h                                         ; $63fb: $8c
    call z, $3096                                 ; $63fc: $cc $96 $30
    ld a, [hl-]                                   ; $63ff: $3a
    rst $10                                       ; $6400: $d7
    xor b                                         ; $6401: $a8
    pop de                                        ; $6402: $d1
    ld e, a                                       ; $6403: $5f
    call nz, Call_000_12fb                        ; $6404: $c4 $fb $12
    jp z, Jump_054_5bea                           ; $6407: $ca $ea $5b

    adc [hl]                                      ; $640a: $8e
    push bc                                       ; $640b: $c5
    jp c, $cb61                                   ; $640c: $da $61 $cb

    ld a, [hl-]                                   ; $640f: $3a
    ld c, $e3                                     ; $6410: $0e $e3
    ld [hl], d                                    ; $6412: $72
    adc h                                         ; $6413: $8c
    xor [hl]                                      ; $6414: $ae
    ld e, l                                       ; $6415: $5d
    cp [hl]                                       ; $6416: $be
    di                                            ; $6417: $f3
    sub l                                         ; $6418: $95
    ld h, l                                       ; $6419: $65
    jp z, $ce3c                                   ; $641a: $ca $3c $ce

    ld [hl], c                                    ; $641d: $71
    add a                                         ; $641e: $87
    ld e, d                                       ; $641f: $5a
    ld a, e                                       ; $6420: $7b
    ld [de], a                                    ; $6421: $12
    add $5f                                       ; $6422: $c6 $5f
    pop bc                                        ; $6424: $c1
    dec l                                         ; $6425: $2d
    dec h                                         ; $6426: $25
    ld l, d                                       ; $6427: $6a
    ld b, h                                       ; $6428: $44
    ld c, l                                       ; $6429: $4d
    add hl, sp                                    ; $642a: $39
    adc h                                         ; $642b: $8c
    ld a, a                                       ; $642c: $7f
    sbc e                                         ; $642d: $9b
    ld hl, sp-$50                                 ; $642e: $f8 $b0
    rst $00                                       ; $6430: $c7
    rra                                           ; $6431: $1f
    ld a, e                                       ; $6432: $7b
    ld b, d                                       ; $6433: $42
    ld b, c                                       ; $6434: $41
    ld [$f197], sp                                ; $6435: $08 $97 $f1
    sub h                                         ; $6438: $94
    cp [hl]                                       ; $6439: $be
    rra                                           ; $643a: $1f
    and e                                         ; $643b: $a3
    sub a                                         ; $643c: $97
    db $fc                                        ; $643d: $fc
    ld [hl], $e2                                  ; $643e: $36 $e2
    adc l                                         ; $6440: $8d
    ld l, [hl]                                    ; $6441: $6e
    ld l, $0f                                     ; $6442: $2e $0f
    ld a, a                                       ; $6444: $7f
    pop de                                        ; $6445: $d1
    rrca                                          ; $6446: $0f
    sbc c                                         ; $6447: $99
    dec l                                         ; $6448: $2d
    ld bc, $3d22                                  ; $6449: $01 $22 $3d
    cp c                                          ; $644c: $b9
    xor c                                         ; $644d: $a9
    sbc c                                         ; $644e: $99
    rst $10                                       ; $644f: $d7
    and l                                         ; $6450: $a5
    pop af                                        ; $6451: $f1
    or b                                          ; $6452: $b0
    push de                                       ; $6453: $d5
    ld c, $fb                                     ; $6454: $0e $fb
    dec bc                                        ; $6456: $0b
    adc $72                                       ; $6457: $ce $72
    cp b                                          ; $6459: $b8
    inc l                                         ; $645a: $2c
    sbc $df                                       ; $645b: $de $df
    rla                                           ; $645d: $17
    add hl, bc                                    ; $645e: $09
    ld c, a                                       ; $645f: $4f
    jp nz, Jump_054_5e21                          ; $6460: $c2 $21 $5e

    ld l, e                                       ; $6463: $6b
    ld d, $b8                                     ; $6464: $16 $b8
    ld a, e                                       ; $6466: $7b
    or d                                          ; $6467: $b2
    ld h, l                                       ; $6468: $65
    ld c, a                                       ; $6469: $4f
    ld d, h                                       ; $646a: $54
    ld a, c                                       ; $646b: $79
    ld b, h                                       ; $646c: $44
    ld l, [hl]                                    ; $646d: $6e
    jp z, $1cb5                                   ; $646e: $ca $b5 $1c

    ld c, $b5                                     ; $6471: $0e $b5
    ld l, $8d                                     ; $6473: $2e $8d
    add a                                         ; $6475: $87
    xor l                                         ; $6476: $ad
    and [hl]                                      ; $6477: $a6
    adc h                                         ; $6478: $8c
    ld hl, $7702                                  ; $6479: $21 $02 $77
    sbc c                                         ; $647c: $99
    sub a                                         ; $647d: $97
    ld e, b                                       ; $647e: $58
    xor l                                         ; $647f: $ad
    or a                                          ; $6480: $b7
    ld h, $d4                                     ; $6481: $26 $d4
    ld d, a                                       ; $6483: $57
    ld h, a                                       ; $6484: $67
    add h                                         ; $6485: $84
    add [hl]                                      ; $6486: $86
    reti                                          ; $6487: $d9


    ld [hl], b                                    ; $6488: $70
    ld a, l                                       ; $6489: $7d
    inc e                                         ; $648a: $1c
    ld b, [hl]                                    ; $648b: $46
    cp h                                          ; $648c: $bc
    ld a, [de]                                    ; $648d: $1a
    xor l                                         ; $648e: $ad
    adc e                                         ; $648f: $8b
    sbc b                                         ; $6490: $98
    rst $30                                       ; $6491: $f7
    dec h                                         ; $6492: $25
    sub h                                         ; $6493: $94
    push de                                       ; $6494: $d5
    or a                                          ; $6495: $b7
    inc e                                         ; $6496: $1c
    rst $10                                       ; $6497: $d7
    cp $88                                        ; $6498: $fe $88
    rla                                           ; $649a: $17
    inc l                                         ; $649b: $2c
    inc hl                                        ; $649c: $23
    sbc [hl]                                      ; $649d: $9e
    sbc h                                         ; $649e: $9c
    pop de                                        ; $649f: $d1
    ld e, l                                       ; $64a0: $5d
    dec b                                         ; $64a1: $05
    ld de, $1c7d                                  ; $64a2: $11 $7d $1c
    halt                                          ; $64a5: $76
    inc [hl]                                      ; $64a6: $34
    ld [c], a                                     ; $64a7: $e2
    or e                                          ; $64a8: $b3
    adc [hl]                                      ; $64a9: $8e
    jp $350e                                      ; $64aa: $c3 $0e $35


    ret                                           ; $64ad: $c9


    sub [hl]                                      ; $64ae: $96
    cp l                                          ; $64af: $bd
    ld h, h                                       ; $64b0: $64
    jp z, Jump_054_5d6b                           ; $64b1: $ca $6b $5d

    adc c                                         ; $64b4: $89
    db $d3                                        ; $64b5: $d3
    cp $87                                        ; $64b6: $fe $87
    dec l                                         ; $64b8: $2d
    ld e, $b6                                     ; $64b9: $1e $b6
    ld e, d                                       ; $64bb: $5a
    ld d, a                                       ; $64bc: $57
    adc c                                         ; $64bd: $89
    adc c                                         ; $64be: $89
    xor h                                         ; $64bf: $ac
    cp h                                          ; $64c0: $bc
    ccf                                           ; $64c1: $3f
    ld l, $ab                                     ; $64c2: $2e $ab
    adc [hl]                                      ; $64c4: $8e
    ld h, a                                       ; $64c5: $67
    ld a, [hl]                                    ; $64c6: $7e
    and a                                         ; $64c7: $a7
    ld h, e                                       ; $64c8: $63
    adc b                                         ; $64c9: $88
    nop                                           ; $64ca: $00
    add hl, hl                                    ; $64cb: $29
    ld c, l                                       ; $64cc: $4d
    xor a                                         ; $64cd: $af
    sub c                                         ; $64ce: $91
    call $35df                                    ; $64cf: $cd $df $35
    ld l, d                                       ; $64d2: $6a
    call nz, $97db                                ; $64d3: $c4 $db $97
    ld d, b                                       ; $64d6: $50
    ld d, [hl]                                    ; $64d7: $56
    rst $18                                       ; $64d8: $df
    ld [hl], d                                    ; $64d9: $72
    ld e, h                                       ; $64da: $5c
    inc hl                                        ; $64db: $23
    xor c                                         ; $64dc: $a9
    push bc                                       ; $64dd: $c5
    inc l                                         ; $64de: $2c
    sbc h                                         ; $64df: $9c
    res 7, h                                      ; $64e0: $cb $bc
    di                                            ; $64e2: $f3
    sbc c                                         ; $64e3: $99
    pop hl                                        ; $64e4: $e1
    cp d                                          ; $64e5: $ba
    cp l                                          ; $64e6: $bd
    ld hl, sp+$64                                 ; $64e7: $f8 $64
    ld c, c                                       ; $64e9: $49
    ld e, a                                       ; $64ea: $5f
    push hl                                       ; $64eb: $e5
    ld de, $ae49                                  ; $64ec: $11 $49 $ae
    sbc l                                         ; $64ef: $9d
    adc h                                         ; $64f0: $8c
    ld b, a                                       ; $64f1: $47
    cp b                                          ; $64f2: $b8
    dec e                                         ; $64f3: $1d
    sbc $25                                       ; $64f4: $de $25
    db $e3                                        ; $64f6: $e3
    rst $18                                       ; $64f7: $df
    sub [hl]                                      ; $64f8: $96
    jp $d5b0                                      ; $64f9: $c3 $b0 $d5


    ld c, b                                       ; $64fc: $48
    ld l, d                                       ; $64fd: $6a
    adc c                                         ; $64fe: $89
    ld b, e                                       ; $64ff: $43
    or b                                          ; $6500: $b0
    jr jr_054_6525                                ; $6501: $18 $22

    dec a                                         ; $6503: $3d
    xor a                                         ; $6504: $af
    and [hl]                                      ; $6505: $a6
    db $f4                                        ; $6506: $f4
    dec e                                         ; $6507: $1d
    inc sp                                        ; $6508: $33
    ld c, a                                       ; $6509: $4f
    or d                                          ; $650a: $b2
    ld h, l                                       ; $650b: $65
    ld l, [hl]                                    ; $650c: $6e
    ccf                                           ; $650d: $3f
    sbc [hl]                                      ; $650e: $9e
    ld e, a                                       ; $650f: $5f
    sub a                                         ; $6510: $97
    ld a, h                                       ; $6511: $7c
    add hl, bc                                    ; $6512: $09
    ld h, l                                       ; $6513: $65
    push af                                       ; $6514: $f5
    dec l                                         ; $6515: $2d
    rst $20                                       ; $6516: $e7
    cp b                                          ; $6517: $b8
    ld h, $d9                                     ; $6518: $26 $d9
    dec sp                                        ; $651a: $3b
    ld l, h                                       ; $651b: $6c
    push de                                       ; $651c: $d5
    dec bc                                        ; $651d: $0b
    ld bc, $4877                                  ; $651e: $01 $77 $48
    or b                                          ; $6521: $b0
    call z, $c7ed                                 ; $6522: $cc $ed $c7

jr_054_6525:
    di                                            ; $6525: $f3
    ld l, e                                       ; $6526: $6b
    pop af                                        ; $6527: $f1
    ret                                           ; $6528: $c9


    and d                                         ; $6529: $a2
    ld e, [hl]                                    ; $652a: $5e
    ld l, $ef                                     ; $652b: $2e $ef
    pop af                                        ; $652d: $f1
    sub h                                         ; $652e: $94
    ld a, $d7                                     ; $652f: $3e $d7
    ld c, [hl]                                    ; $6531: $4e
    add $53                                       ; $6532: $c6 $53
    ld a, [$da5c]                                 ; $6534: $fa $5c $da
    db $dd                                        ; $6537: $dd
    sub a                                         ; $6538: $97
    sbc c                                         ; $6539: $99
    ld e, l                                       ; $653a: $5d
    db $10                                        ; $653b: $10

Call_054_653c:
    ld bc, $bdf7                                  ; $653c: $01 $f7 $bd
    ld [hl], e                                    ; $653f: $73
    and [hl]                                      ; $6540: $a6
    inc e                                         ; $6541: $1c
    halt                                          ; $6542: $76
    xor b                                         ; $6543: $a8
    add hl, hl                                    ; $6544: $29
    ld a, l                                       ; $6545: $7d
    ccf                                           ; $6546: $3f
    ld b, [hl]                                    ; $6547: $46
    xor a                                         ; $6548: $af
    ld a, a                                       ; $6549: $7f
    ld a, [$e6b5]                                 ; $654a: $fa $b5 $e6
    ld [$997f], a                                 ; $654d: $ea $7f $99
    inc h                                         ; $6550: $24
    rst $38                                       ; $6551: $ff
    inc l                                         ; $6552: $2c
    inc hl                                        ; $6553: $23
    inc e                                         ; $6554: $1c
    adc a                                         ; $6555: $8f
    ld h, e                                       ; $6556: $63
    rst $00                                       ; $6557: $c7
    ld c, l                                       ; $6558: $4d
    cp e                                          ; $6559: $bb
    ei                                            ; $655a: $fb
    ld [hl-], a                                   ; $655b: $32
    or e                                          ; $655c: $b3
    dec bc                                        ; $655d: $0b
    ld [hl+], a                                   ; $655e: $22
    db $dd                                        ; $655f: $dd
    sbc $f9                                       ; $6560: $de $f9
    xor [hl]                                      ; $6562: $ae
    and l                                         ; $6563: $a5
    inc [hl]                                      ; $6564: $34
    cp l                                          ; $6565: $bd
    or $63                                        ; $6566: $f6 $63
    db $f4                                        ; $6568: $f4
    jp c, $ae8f                                   ; $6569: $da $8f $ae

    dec a                                         ; $656c: $3d
    ld d, c                                       ; $656d: $51
    push hl                                       ; $656e: $e5
    ld e, c                                       ; $656f: $59
    ld h, h                                       ; $6570: $64
    rlca                                          ; $6571: $07
    ld l, e                                       ; $6572: $6b
    jp nz, $f52b                                  ; $6573: $c2 $2b $f5

    dec h                                         ; $6576: $25
    cp b                                          ; $6577: $b8
    or h                                          ; $6578: $b4
    dec sp                                        ; $6579: $3b
    ld e, a                                       ; $657a: $5f
    ld e, c                                       ; $657b: $59
    ld b, [hl]                                    ; $657c: $46
    inc a                                         ; $657d: $3c
    sbc c                                         ; $657e: $99
    ld l, e                                       ; $657f: $6b
    add h                                         ; $6580: $84
    ld a, [hl]                                    ; $6581: $7e
    ld c, $6b                                     ; $6582: $0e $6b
    jp z, $e535                                   ; $6584: $ca $35 $e5

    add d                                         ; $6587: $82
    ld [$4d29], sp                                ; $6588: $08 $29 $4d
    xor a                                         ; $658b: $af
    add l                                         ; $658c: $85
    ld e, a                                       ; $658d: $5f

Call_054_658e:
    jp Jump_054_7b0e                              ; $658e: $c3 $0e $7b


    ld c, l                                       ; $6591: $4d
    cp c                                          ; $6592: $b9
    ld sp, hl                                     ; $6593: $f9
    adc h                                         ; $6594: $8c
    ld l, $cd                                     ; $6595: $2e $cd
    sub c                                         ; $6597: $91
    cpl                                           ; $6598: $2f
    pop bc                                        ; $6599: $c1
    dec b                                         ; $659a: $05
    ld de, $1c7d                                  ; $659b: $11 $7d $1c
    halt                                          ; $659e: $76
    and d                                         ; $659f: $a2
    sbc $9a                                       ; $65a0: $de $9a
    rla                                           ; $65a2: $17
    ld a, [hl-]                                   ; $65a3: $3a
    ld l, $f1                                     ; $65a4: $2e $f1
    ld e, d                                       ; $65a6: $5a
    ld e, a                                       ; $65a7: $5f
    push bc                                       ; $65a8: $c5
    and e                                         ; $65a9: $a3
    sub $5e                                       ; $65aa: $d6 $5e
    ldh a, [$d2]                                  ; $65ac: $f0 $d2
    and l                                         ; $65ae: $a5
    rra                                           ; $65af: $1f
    adc b                                         ; $65b0: $88
    nop                                           ; $65b1: $00
    db $dd                                        ; $65b2: $dd
    and $35                                       ; $65b3: $e6 $35
    dec a                                         ; $65b5: $3d
    or d                                          ; $65b6: $b2
    ld l, e                                       ; $65b7: $6b
    ld b, l                                       ; $65b8: $45
    or c                                          ; $65b9: $b1
    ld a, b                                       ; $65ba: $78
    ld c, $61                                     ; $65bb: $0e $61
    add h                                         ; $65bd: $84
    ld l, e                                       ; $65be: $6b
    ld e, a                                       ; $65bf: $5f
    call nz, $0110                                ; $65c0: $c4 $10 $01
    or a                                          ; $65c3: $b7
    ld d, h                                       ; $65c4: $54
    ld l, $cb                                     ; $65c5: $2e $cb
    ldh a, [$97]                                  ; $65c7: $f0 $97
    sbc l                                         ; $65c9: $9d
    or a                                          ; $65ca: $b7
    rst $00                                       ; $65cb: $c7
    inc hl                                        ; $65cc: $23
    sub d                                         ; $65cd: $92
    ld a, a                                       ; $65ce: $7f
    sub $71                                       ; $65cf: $d6 $71
    ld e, b                                       ; $65d1: $58
    db $fd                                        ; $65d2: $fd
    jp $91ae                                      ; $65d3: $c3 $ae $91


    call nc, $a32c                                ; $65d6: $d4 $2c $a3
    push af                                       ; $65d9: $f5
    sub $46                                       ; $65da: $d6 $46
    or a                                          ; $65dc: $b7
    ld [hl], a                                    ; $65dd: $77
    and d                                         ; $65de: $a2
    add a                                         ; $65df: $87
    xor l                                         ; $65e0: $ad
    and $f6                                       ; $65e1: $e6 $f6
    db $e3                                        ; $65e3: $e3
    ld sp, hl                                     ; $65e4: $f9
    and l                                         ; $65e5: $a5
    db $dd                                        ; $65e6: $dd
    adc c                                         ; $65e7: $89
    dec e                                         ; $65e8: $1d
    rst $10                                       ; $65e9: $d7
    sub h                                         ; $65ea: $94
    ld a, c                                       ; $65eb: $79
    sub d                                         ; $65ec: $92
    cp l                                          ; $65ed: $bd
    ret nc                                        ; $65ee: $d0

    and l                                         ; $65ef: $a5
    add c                                         ; $65f0: $81
    ld [$1c7d], sp                                ; $65f1: $08 $7d $1c
    halt                                          ; $65f4: $76
    and d                                         ; $65f5: $a2
    sbc $9a                                       ; $65f6: $de $9a
    rla                                           ; $65f8: $17
    ld a, [hl-]                                   ; $65f9: $3a
    ld l, $f1                                     ; $65fa: $2e $f1
    ld e, d                                       ; $65fc: $5a
    ld e, a                                       ; $65fd: $5f
    push bc                                       ; $65fe: $c5
    and e                                         ; $65ff: $a3
    sub $5e                                       ; $6600: $d6 $5e
    ldh a, [$2c]                                  ; $6602: $f0 $2c
    ld l, e                                       ; $6604: $6b
    ld c, $16                                     ; $6605: $0e $16
    push hl                                       ; $6607: $e5
    cp c                                          ; $6608: $b9
    db $fd                                        ; $6609: $fd
    ld a, b                                       ; $660a: $78
    ld a, [hl]                                    ; $660b: $7e

jr_054_660c:
    ld l, c                                       ; $660c: $69
    ld b, a                                       ; $660d: $47
    rst $20                                       ; $660e: $e7
    jp c, $9ac1                                   ; $660f: $da $c1 $9a

    ldh a, [rWY]                                  ; $6612: $f0 $4a
    ld a, l                                       ; $6614: $7d
    add hl, bc                                    ; $6615: $09
    ld d, $ef                                     ; $6616: $16 $ef
    sub b                                         ; $6618: $90
    ld d, $71                                     ; $6619: $16 $71
    db $ed                                        ; $661b: $ed
    or l                                          ; $661c: $b5
    add $5f                                       ; $661d: $c6 $5f
    dec l                                         ; $661f: $2d
    db $ed                                        ; $6620: $ed
    cpl                                           ; $6621: $2f
    and e                                         ; $6622: $a3
    ld [hl], e                                    ; $6623: $73
    dec c                                         ; $6624: $0d
    dec sp                                        ; $6625: $3b
    db $ec                                        ; $6626: $ec
    cpl                                           ; $6627: $2f
    inc a                                         ; $6628: $3c
    add hl, bc                                    ; $6629: $09
    ld d, $43                                     ; $662a: $16 $43
    inc b                                         ; $662c: $04
    rst $30                                       ; $662d: $f7
    ld d, l                                       ; $662e: $55
    ld d, a                                       ; $662f: $57
    ld [hl-], a                                   ; $6630: $32
    ld l, d                                       ; $6631: $6a
    ccf                                           ; $6632: $3f
    ld b, [hl]                                    ; $6633: $46
    rst $28                                       ; $6634: $ef
    ld [hl], h                                    ; $6635: $74
    or l                                          ; $6636: $b5
    pop de                                        ; $6637: $d1
    cp c                                          ; $6638: $b9
    add [hl]                                      ; $6639: $86
    dec [hl]                                      ; $663a: $35
    sbc [hl]                                      ; $663b: $9e
    ld a, d                                       ; $663c: $7a
    jp c, $97dd                                   ; $663d: $da $dd $97

    sbc c                                         ; $6640: $99
    ld e, l                                       ; $6641: $5d
    db $10                                        ; $6642: $10
    ld bc, $1c7d                                  ; $6643: $01 $7d $1c
    ld b, [hl]                                    ; $6646: $46
    ld d, b                                       ; $6647: $50
    and h                                         ; $6648: $a4
    ld l, e                                       ; $6649: $6b
    dec e                                         ; $664a: $1d
    add a                                         ; $664b: $87
    db $fd                                        ; $664c: $fd
    jr jr_054_660c                                ; $664d: $18 $bd

    db $d3                                        ; $664f: $d3
    push de                                       ; $6650: $d5
    ld e, h                                       ; $6651: $5c
    db $d3                                        ; $6652: $d3
    ld a, c                                       ; $6653: $79
    sub d                                         ; $6654: $92
    xor l                                         ; $6655: $ad
    db $dd                                        ; $6656: $dd
    and c                                         ; $6657: $a1
    ld b, h                                       ; $6658: $44
    halt                                          ; $6659: $76
    ld [hl-], a                                   ; $665a: $32
    ld e, [hl]                                    ; $665b: $5e
    rst $00                                       ; $665c: $c7
    ld h, c                                       ; $665d: $61
    ld h, h                                       ; $665e: $64
    di                                            ; $665f: $f3
    ld [hl], a                                    ; $6660: $77
    ld b, c                                       ; $6661: $41
    inc b                                         ; $6662: $04
    dec a                                         ; $6663: $3d
    adc [hl]                                      ; $6664: $8e
    rst $00                                       ; $6665: $c7
    or c                                          ; $6666: $b1
    db $e3                                        ; $6667: $e3
    ld h, [hl]                                    ; $6668: $66
    add hl, de                                    ; $6669: $19
    cp $32                                        ; $666a: $fe $32
    rst $10                                       ; $666c: $d7
    jp nc, Jump_054_49ed                          ; $666d: $d2 $ed $49

    ld [hl], h                                    ; $6670: $74
    ld a, c                                       ; $6671: $79
    ld d, $99                                     ; $6672: $16 $99
    ld h, h                                       ; $6674: $64
    bit 3, [hl]                                   ; $6675: $cb $5e
    ld [hl-], a                                   ; $6677: $32
    push hl                                       ; $6678: $e5
    dec a                                         ; $6679: $3d
    ld d, c                                       ; $667a: $51
    push hl                                       ; $667b: $e5
    inc bc                                        ; $667c: $03
    rst $10                                       ; $667d: $d7
    db $ed                                        ; $667e: $ed
    ld a, [c]                                     ; $667f: $f2
    jp nc, Jump_000_297a                          ; $6680: $d2 $7a $29

    adc a                                         ; $6683: $8f
    call z, $e5cd                                 ; $6684: $cc $cd $e5
    add hl, hl                                    ; $6687: $29
    sub a                                         ; $6688: $97
    rst $08                                       ; $6689: $cf
    ld [hl], d                                    ; $668a: $72
    jr c, jr_054_66a1                             ; $668b: $38 $14

    ld b, h                                       ; $668d: $44

Call_054_668e:
    or a                                          ; $668e: $b7
    ld d, h                                       ; $668f: $54
    sub a                                         ; $6690: $97
    ld a, [hl+]                                   ; $6691: $2a
    adc e                                         ; $6692: $8b
    add a                                         ; $6693: $87
    cp a                                          ; $6694: $bf
    ld a, b                                       ; $6695: $78
    rst $20                                       ; $6696: $e7
    cp e                                          ; $6697: $bb
    or $78                                        ; $6698: $f6 $78
    add hl, hl                                    ; $669a: $29
    ld c, l                                       ; $669b: $4d
    xor a                                         ; $669c: $af
    cp c                                          ; $669d: $b9
    sub $7e                                       ; $669e: $d6 $7e
    db $f4                                        ; $66a0: $f4

jr_054_66a1:
    jp nz, $f9a7                                  ; $66a1: $c2 $a7 $f9

    add a                                         ; $66a4: $87
    sbc l                                         ; $66a5: $9d
    adc h                                         ; $66a6: $8c
    ld b, a                                       ; $66a7: $47
    inc a                                         ; $66a8: $3c
    reti                                          ; $66a9: $d9


    ld [hl], c                                    ; $66aa: $71
    ld c, l                                       ; $66ab: $4d
    rst $20                                       ; $66ac: $e7
    pop af                                        ; $66ad: $f1
    ld l, a                                       ; $66ae: $6f
    db $10                                        ; $66af: $10
    ld bc, $bfb7                                  ; $66b0: $01 $b7 $bf
    or b                                          ; $66b3: $b0

Jump_054_66b4:
jr_054_66b4:
    ccf                                           ; $66b4: $3f
    cp d                                          ; $66b5: $ba
    xor e                                         ; $66b6: $ab
    ld c, $7b                                     ; $66b7: $0e $7b
    or c                                          ; $66b9: $b1
    cp l                                          ; $66ba: $bd
    ld [hl], e                                    ; $66bb: $73
    ld a, h                                       ; $66bc: $7c
    jp $d600                                      ; $66bd: $c3 $00 $d6


    sub e                                         ; $66c0: $93
    ld b, e                                       ; $66c1: $43
    rst $38                                       ; $66c2: $ff
    and b                                         ; $66c3: $a0
    rst $10                                       ; $66c4: $d7
    dec sp                                        ; $66c5: $3b
    sbc l                                         ; $66c6: $9d
    inc l                                         ; $66c7: $2c
    jp c, $d6dd                                   ; $66c8: $da $dd $d6

    ld a, [hl]                                    ; $66cb: $7e
    inc a                                         ; $66cc: $3c
    cp a                                          ; $66cd: $bf
    ld e, h                                       ; $66ce: $5c
    jp c, $9edd                                   ; $66cf: $da $dd $9e

    dec bc                                        ; $66d2: $0b
    scf                                           ; $66d3: $37
    sub a                                         ; $66d4: $97
    halt                                          ; $66d5: $76
    ld [hl], a                                    ; $66d6: $77
    cp a                                          ; $66d7: $bf
    ldh a, [$89]                                  ; $66d8: $f0 $89
    ld a, a                                       ; $66da: $7f
    jr c, jr_054_66b4                             ; $66db: $38 $d7

    or a                                          ; $66dd: $b7
    halt                                          ; $66de: $76
    add b                                         ; $66df: $80
    adc d                                         ; $66e0: $8a
    ld [hl], e                                    ; $66e1: $73
    set 4, c                                      ; $66e2: $cb $e1
    ld l, e                                       ; $66e4: $6b
    ld [hl], a                                    ; $66e5: $77
    ld a, e                                       ; $66e6: $7b
    xor [hl]                                      ; $66e7: $ae
    sub e                                         ; $66e8: $93
    cp h                                          ; $66e9: $bc
    ld a, [de]                                    ; $66ea: $1a
    adc $bc                                       ; $66eb: $ce $bc
    sub e                                         ; $66ed: $93
    cp h                                          ; $66ee: $bc
    ld h, d                                       ; $66ef: $62
    ld b, a                                       ; $66f0: $47
    ld e, l                                       ; $66f1: $5d
    ld c, $bb                                     ; $66f2: $0e $bb
    halt                                          ; $66f4: $76
    ld e, $e6                                     ; $66f5: $1e $e6
    db $dd                                        ; $66f7: $dd
    sbc $34                                       ; $66f8: $de $34
    ld e, a                                       ; $66fa: $5f
    ld [bc], a                                    ; $66fb: $02
    ld b, h                                       ; $66fc: $44
    add hl, hl                                    ; $66fd: $29
    ld d, c                                       ; $66fe: $51
    inc hl                                        ; $66ff: $23
    ld l, d                                       ; $6700: $6a
    jp z, Jump_000_3961                           ; $6701: $ca $61 $39

    adc h                                         ; $6704: $8c
    cp $22                                        ; $6705: $fe $22
    ld d, e                                       ; $6707: $53
    sub [hl]                                      ; $6708: $96
    adc c                                         ; $6709: $89
    rrca                                          ; $670a: $0f
    ld a, e                                       ; $670b: $7b
    db $fc                                        ; $670c: $fc
    or c                                          ; $670d: $b1
    dec b                                         ; $670e: $05
    ld [hl+], a                                   ; $670f: $22
    dec a                                         ; $6710: $3d
    ret                                           ; $6711: $c9


    ccf                                           ; $6712: $3f
    ld d, e                                       ; $6713: $53
    ld a, [$8c7e]                                 ; $6714: $fa $7e $8c
    ld e, [hl]                                    ; $6717: $5e
    ld h, d                                       ; $6718: $62
    ld e, $91                                     ; $6719: $1e $91
    db $fc                                        ; $671b: $fc
    ld d, $3d                                     ; $671c: $16 $3d
    ld a, [$2985]                                 ; $671e: $fa $85 $29
    ld a, l                                       ; $6721: $7d
    call nz, $ed2b                                ; $6722: $c4 $2b $ed
    ld c, [hl]                                    ; $6725: $4e
    rst $00                                       ; $6726: $c7
    ld sp, $a48e                                  ; $6727: $31 $8e $a4
    sub [hl]                                      ; $672a: $96
    ld c, c                                       ; $672b: $49
    ld a, [c]                                     ; $672c: $f2
    or h                                          ; $672d: $b4
    rla                                           ; $672e: $17
    ld c, $bf                                     ; $672f: $0e $bf
    and h                                         ; $6731: $a4
    cp l                                          ; $6732: $bd
    db $fd                                        ; $6733: $fd
    ld h, l                                       ; $6734: $65
    sub d                                         ; $6735: $92
    inc h                                         ; $6736: $24
    ld [hl], d                                    ; $6737: $72
    ld d, e                                       ; $6738: $53
    and a                                         ; $6739: $a7
    ld [hl-], a                                   ; $673a: $32
    add $e6                                       ; $673b: $c6 $e6
    db $fd                                        ; $673d: $fd
    ld de, $31fa                                  ; $673e: $11 $fa $31
    ld c, a                                       ; $6741: $4f
    ld a, l                                       ; $6742: $7d
    ld h, [hl]                                    ; $6743: $66
    adc b                                         ; $6744: $88
    nop                                           ; $6745: $00
    ld a, l                                       ; $6746: $7d
    inc e                                         ; $6747: $1c
    and $1a                                       ; $6748: $e6 $1a
    ld c, c                                       ; $674a: $49
    dec l                                         ; $674b: $2d
    pop af                                        ; $674c: $f1
    rra                                           ; $674d: $1f
    rst $38                                       ; $674e: $ff
    ld [hl], $40                                  ; $674f: $36 $40
    push bc                                       ; $6751: $c5
    cp c                                          ; $6752: $b9
    push hl                                       ; $6753: $e5
    ldh a, [$f9]                                  ; $6754: $f0 $f9
    ld h, e                                       ; $6756: $63
    dec bc                                        ; $6757: $0b
    inc e                                         ; $6758: $1c
    jr nz, jr_054_67ac                            ; $6759: $20 $51

    xor [hl]                                      ; $675b: $ae
    db $e4                                        ; $675c: $e4
    rra                                           ; $675d: $1f
    ld sp, hl                                     ; $675e: $f9
    ld [de], a                                    ; $675f: $12
    inc l                                         ; $6760: $2c
    and e                                         ; $6761: $a3
    ld [hl], e                                    ; $6762: $73
    add hl, sp                                    ; $6763: $39
    ld d, b                                       ; $6764: $50
    dec [hl]                                      ; $6765: $35
    sbc l                                         ; $6766: $9d
    cp l                                          ; $6767: $bd
    ccf                                           ; $6768: $3f
    ld d, l                                       ; $6769: $55
    ccf                                           ; $676a: $3f
    ld hl, $63f4                                  ; $676b: $21 $f4 $63
    ld sp, $7d44                                  ; $676e: $31 $44 $7d
    inc e                                         ; $6771: $1c
    sub $cc                                       ; $6772: $d6 $cc
    xor [hl]                                      ; $6774: $ae
    sbc c                                         ; $6775: $99
    reti                                          ; $6776: $d9


    or l                                          ; $6777: $b5
    db $db                                        ; $6778: $db
    ld [hl], e                                    ; $6779: $73
    ld h, c                                       ; $677a: $61
    or a                                          ; $677b: $b7
    di                                            ; $677c: $f3
    sbc d                                         ; $677d: $9a
    dec b                                         ; $677e: $05
    xor [hl]                                      ; $677f: $ae
    adc a                                         ; $6780: $8f
    jp $72b8                                      ; $6781: $c3 $b8 $72


    ld c, l                                       ; $6784: $4d
    ld e, c                                       ; $6785: $59
    halt                                          ; $6786: $76
    ld [c], a                                     ; $6787: $e2
    ld l, e                                       ; $6788: $6b
    ld c, e                                       ; $6789: $4b
    ld a, [$ef2a]                                 ; $678a: $fa $2a $ef
    adc a                                         ; $678d: $8f
    res 5, d                                      ; $678e: $cb $aa
    db $e3                                        ; $6790: $e3
    sbc c                                         ; $6791: $99
    rst $18                                       ; $6792: $df
    jp hl                                         ; $6793: $e9


    jr jr_054_67b8                                ; $6794: $18 $22

    or a                                          ; $6796: $b7
    rst $20                                       ; $6797: $e7
    ld a, [hl-]                                   ; $6798: $3a
    ret                                           ; $6799: $c9


    xor e                                         ; $679a: $ab
    pop hl                                        ; $679b: $e1
    call z, $c93b                                 ; $679c: $cc $3b $c9
    dec hl                                        ; $679f: $2b
    halt                                          ; $67a0: $76
    call nc, $b0e5                                ; $67a1: $d4 $e5 $b0
    ld l, e                                       ; $67a4: $6b
    sub a                                         ; $67a5: $97
    ld c, h                                       ; $67a6: $4c
    sbc c                                         ; $67a7: $99
    rst $10                                       ; $67a8: $d7
    jr z, jr_054_6821                             ; $67a9: $28 $76

    db $ed                                        ; $67ab: $ed

jr_054_67ac:
    ld b, h                                       ; $67ac: $44
    dec e                                         ; $67ad: $1d
    ld h, e                                       ; $67ae: $63
    scf                                           ; $67af: $37
    add [hl]                                      ; $67b0: $86
    cp e                                          ; $67b1: $bb
    or e                                          ; $67b2: $b3
    cp l                                          ; $67b3: $bd
    ld [hl], e                                    ; $67b4: $73
    ld e, h                                       ; $67b5: $5c
    add hl, de                                    ; $67b6: $19
    ld h, e                                       ; $67b7: $63

jr_054_67b8:
    di                                            ; $67b8: $f3
    ld e, h                                       ; $67b9: $5c
    ei                                            ; $67ba: $fb
    and e                                         ; $67bb: $a3
    dec sp                                        ; $67bc: $3b
    ld l, $e5                                     ; $67bd: $2e $e5
    sbc c                                         ; $67bf: $99
    rst $18                                       ; $67c0: $df
    jp hl                                         ; $67c1: $e9


    jr jr_054_67e6                                ; $67c2: $18 $22

    db $dd                                        ; $67c4: $dd
    and $b9                                       ; $67c5: $e6 $b9
    or $25                                        ; $67c7: $f6 $25
    ld e, b                                       ; $67c9: $58
    and [hl]                                      ; $67ca: $a6
    adc e                                         ; $67cb: $8b
    ld [hl], d                                    ; $67cc: $72
    dec h                                         ; $67cd: $25
    rst $38                                       ; $67ce: $ff
    ret z                                         ; $67cf: $c8

    sub a                                         ; $67d0: $97
    or b                                          ; $67d1: $b0
    ccf                                           ; $67d2: $3f
    cp d                                          ; $67d3: $ba
    xor e                                         ; $67d4: $ab
    ld c, $7b                                     ; $67d5: $0e $7b
    and $77                                       ; $67d7: $e6 $77
    ld a, [hl-]                                   ; $67d9: $3a

Jump_054_67da:
    add [hl]                                      ; $67da: $86
    ld [$fadd], sp                                ; $67db: $08 $dd $fa
    add sp, $2f                                   ; $67de: $e8 $2f
    ld [c], a                                     ; $67e0: $e2
    ld a, [de]                                    ; $67e1: $1a
    db $fd                                        ; $67e2: $fd
    add d                                         ; $67e3: $82
    push bc                                       ; $67e4: $c5
    and e                                         ; $67e5: $a3

jr_054_67e6:
    ld [hl], e                                    ; $67e6: $73
    adc l                                         ; $67e7: $8d
    xor $aa                                       ; $67e8: $ee $aa
    jp Jump_054_6c5e                              ; $67ea: $c3 $5e $6c


    rst $28                                       ; $67ed: $ef
    inc e                                         ; $67ee: $1c
    adc a                                         ; $67ef: $8f
    and h                                         ; $67f0: $a4
    sub [hl]                                      ; $67f1: $96
    ld c, c                                       ; $67f2: $49
    ld a, [c]                                     ; $67f3: $f2
    or h                                          ; $67f4: $b4
    rla                                           ; $67f5: $17
    ld c, $bf                                     ; $67f6: $0e $bf
    and h                                         ; $67f8: $a4
    cp l                                          ; $67f9: $bd
    db $fd                                        ; $67fa: $fd
    add l                                         ; $67fb: $85
    ld a, [$fd34]                                 ; $67fc: $fa $34 $fd
    dec h                                         ; $67ff: $25
    ld e, b                                       ; $6800: $58
    ld a, h                                       ; $6801: $7c
    sub [hl]                                      ; $6802: $96
    ld c, c                                       ; $6803: $49
    sub d                                         ; $6804: $92
    ret z                                         ; $6805: $c8

    ld c, l                                       ; $6806: $4d
    sbc l                                         ; $6807: $9d
    jp z, $2218                                   ; $6808: $ca $18 $22

    or a                                          ; $680b: $b7
    or l                                          ; $680c: $b5
    rra                                           ; $680d: $1f
    rst $08                                       ; $680e: $cf
    cpl                                           ; $680f: $2f
    rst $10                                       ; $6810: $d7
    ld e, h                                       ; $6811: $5c
    ld d, e                                       ; $6812: $53
    and $59                                       ; $6813: $e6 $59
    ld a, h                                       ; $6815: $7c
    ret c                                         ; $6816: $d8

    and e                                         ; $6817: $a3
    ld e, a                                       ; $6818: $5f
    jr nc, jr_054_684a                            ; $6819: $30 $2f

    ld sp, hl                                     ; $681b: $f9
    inc hl                                        ; $681c: $23
    ld e, [hl]                                    ; $681d: $5e
    adc l                                         ; $681e: $8d
    ld [hl], b                                    ; $681f: $70
    ld c, l                                       ; $6820: $4d

jr_054_6821:
    xor h                                         ; $6821: $ac
    inc c                                         ; $6822: $0c
    ld de, $1c7d                                  ; $6823: $11 $7d $1c
    halt                                          ; $6826: $76
    and d                                         ; $6827: $a2
    sbc $9a                                       ; $6828: $de $9a
    rst $10                                       ; $682a: $d7
    dec h                                         ; $682b: $25
    daa                                           ; $682c: $27
    ld a, d                                       ; $682d: $7a
    ret                                           ; $682e: $c9


    rra                                           ; $682f: $1f
    pop af                                        ; $6830: $f1
    sub h                                         ; $6831: $94
    ld a, [c]                                     ; $6832: $f2
    or b                                          ; $6833: $b0
    ld l, e                                       ; $6834: $6b
    ld d, $99                                     ; $6835: $16 $99
    ld [hl-], a                                   ; $6837: $32
    rst $08                                       ; $6838: $cf
    ld [c], a                                     ; $6839: $e2
    pop de                                        ; $683a: $d1
    cpl                                           ; $683b: $2f
    sbc b                                         ; $683c: $98
    daa                                           ; $683d: $27
    ld d, [hl]                                    ; $683e: $56
    sbc $1f                                       ; $683f: $de $1f
    db $fd                                        ; $6841: $fd
    inc h                                         ; $6842: $24
    jr c, jr_054_68bb                             ; $6843: $38 $76

    call c, $cb9a                                 ; $6845: $dc $9a $cb
    ld [bc], a                                    ; $6848: $02
    rst $10                                       ; $6849: $d7

jr_054_684a:
    ld l, l                                       ; $684a: $6d
    sbc [hl]                                      ; $684b: $9e
    ld l, e                                       ; $684c: $6b
    sbc l                                         ; $684d: $9d
    cp h                                          ; $684e: $bc
    or $a3                                        ; $684f: $f6 $a3
    rst $30                                       ; $6851: $f7
    daa                                           ; $6852: $27
    ld a, l                                       ; $6853: $7d
    dec d                                         ; $6854: $15
    ld h, c                                       ; $6855: $61
    or [hl]                                       ; $6856: $b6
    db $ec                                        ; $6857: $ec
    dec h                                         ; $6858: $25
    inc hl                                        ; $6859: $23
    db $f4                                        ; $685a: $f4
    ld h, e                                       ; $685b: $63
    ld e, $fe                                     ; $685c: $1e $fe
    call z, $0110                                 ; $685e: $cc $10 $01
    db $dd                                        ; $6861: $dd
    and $b9                                       ; $6862: $e6 $b9
    or $25                                        ; $6864: $f6 $25
    ld e, b                                       ; $6866: $58
    and [hl]                                      ; $6867: $a6
    adc e                                         ; $6868: $8b
    ld [hl], d                                    ; $6869: $72
    dec h                                         ; $686a: $25
    rst $38                                       ; $686b: $ff
    ret z                                         ; $686c: $c8

    sub a                                         ; $686d: $97
    or b                                          ; $686e: $b0
    ccf                                           ; $686f: $3f
    ld h, l                                       ; $6870: $65
    ld de, $fccf                                  ; $6871: $11 $cf $fc
    ld c, [hl]                                    ; $6874: $4e
    rst $00                                       ; $6875: $c7
    ld [bc], a                                    ; $6876: $02
    ld de, $e6dd                                  ; $6877: $11 $dd $e6
    ld h, c                                       ; $687a: $61
    rra                                           ; $687b: $1f
    or $5e                                        ; $687c: $f6 $5e
    ld [hl-], a                                   ; $687e: $32
    ld e, l                                       ; $687f: $5d
    sub h                                         ; $6880: $94
    dec hl                                        ; $6881: $2b
    ld sp, hl                                     ; $6882: $f9
    ld b, a                                       ; $6883: $47
    cp [hl]                                       ; $6884: $be
    inc b                                         ; $6885: $04
    set 7, [hl]                                   ; $6886: $cb $fe
    add sp, -$52                                  ; $6888: $e8 $ae
    ld a, [hl-]                                   ; $688a: $3a
    db $ec                                        ; $688b: $ec
    push bc                                       ; $688c: $c5
    or $ce                                        ; $688d: $f6 $ce
    pop af                                        ; $688f: $f1
    ld c, [hl]                                    ; $6890: $4e
    db $ec                                        ; $6891: $ec
    cp b                                          ; $6892: $b8
    or $a7                                        ; $6893: $f6 $a7
    cp h                                          ; $6895: $bc
    xor [hl]                                      ; $6896: $ae
    and h                                         ; $6897: $a4
    inc a                                         ; $6898: $3c
    di                                            ; $6899: $f3
    dec sp                                        ; $689a: $3b
    dec e                                         ; $689b: $1d
    adc e                                         ; $689c: $8b
    or l                                          ; $689d: $b5
    ld c, e                                       ; $689e: $4b
    rst $20                                       ; $689f: $e7
    ld [c], a                                     ; $68a0: $e2
    ld h, e                                       ; $68a1: $63
    and $d1                                       ; $68a2: $e6 $d1
    push af                                       ; $68a4: $f5
    halt                                          ; $68a5: $76
    ld e, e                                       ; $68a6: $5b
    ei                                            ; $68a7: $fb
    pop af                                        ; $68a8: $f1
    db $fc                                        ; $68a9: $fc
    ld [hl], d                                    ; $68aa: $72
    dec l                                         ; $68ab: $2d
    add a                                         ; $68ac: $87
    ld bc, $ce2a                                  ; $68ad: $01 $2a $ce
    dec l                                         ; $68b0: $2d
    add a                                         ; $68b1: $87
    rrca                                          ; $68b2: $0f
    ld de, $f577                                  ; $68b3: $11 $77 $f5
    ld d, l                                       ; $68b6: $55
    xor [hl]                                      ; $68b7: $ae
    and h                                         ; $68b8: $a4
    xor a                                         ; $68b9: $af
    ld [hl], d                                    ; $68ba: $72

jr_054_68bb:
    dec sp                                        ; $68bb: $3b
    and $b9                                       ; $68bc: $e6 $b9
    or $a7                                        ; $68be: $f6 $a7
    inc l                                         ; $68c0: $2c
    ld [c], a                                     ; $68c1: $e2
    sbc c                                         ; $68c2: $99
    rst $18                                       ; $68c3: $df
    jp hl                                         ; $68c4: $e9


    ld e, b                                       ; $68c5: $58
    or h                                          ; $68c6: $b4
    jp Jump_000_2996                              ; $68c7: $c3 $96 $29


    di                                            ; $68ca: $f3
    ld e, h                                       ; $68cb: $5c
    ei                                            ; $68cc: $fb
    ld [de], a                                    ; $68cd: $12
    inc l                                         ; $68ce: $2c
    adc e                                         ; $68cf: $8b
    db $ed                                        ; $68d0: $ed
    sbc l                                         ; $68d1: $9d
    db $e3                                        ; $68d2: $e3
    jp z, $8478                                   ; $68d3: $ca $78 $84

    dec bc                                        ; $68d6: $0b
    ld [hl+], a                                   ; $68d7: $22
    ld a, l                                       ; $68d8: $7d
    inc e                                         ; $68d9: $1c
    sub [hl]                                      ; $68da: $96
    sbc b                                         ; $68db: $98
    rst $30                                       ; $68dc: $f7
    ld h, e                                       ; $68dd: $63
    db $f4                                        ; $68de: $f4
    adc b                                         ; $68df: $88
    inc h                                         ; $68e0: $24
    rst $10                                       ; $68e1: $d7
    ld a, [hl-]                                   ; $68e2: $3a
    ld c, $3b                                     ; $68e3: $0e $3b
    pop af                                        ; $68e5: $f1
    dec [hl]                                      ; $68e6: $35
    adc b                                         ; $68e7: $88
    nop                                           ; $68e8: $00
    or a                                          ; $68e9: $b7
    push de                                       ; $68ea: $d5
    cp b                                          ; $68eb: $b8
    sbc [hl]                                      ; $68ec: $9e
    inc e                                         ; $68ed: $1c
    ld a, [$bd07]                                 ; $68ee: $fa $07 $bd
    sbc $e9                                       ; $68f1: $de $e9
    ld h, h                                       ; $68f3: $64
    add hl, sp                                    ; $68f4: $39
    rst $20                                       ; $68f5: $e7
    dec [hl]                                      ; $68f6: $35
    set 7, [hl]                                   ; $68f7: $cb $fe
    sub h                                         ; $68f9: $94
    ld b, l                                       ; $68fa: $45
    inc a                                         ; $68fb: $3c
    di                                            ; $68fc: $f3
    dec sp                                        ; $68fd: $3b
    dec e                                         ; $68fe: $1d
    ld c, e                                       ; $68ff: $4b
    cpl                                           ; $6900: $2f
    inc b                                         ; $6901: $04
    rst $30                                       ; $6902: $f7
    ld d, l                                       ; $6903: $55
    and [hl]                                      ; $6904: $a6
    ld a, l                                       ; $6905: $7d
    ld c, [hl]                                    ; $6906: $4e
    xor [hl]                                      ; $6907: $ae
    db $dd                                        ; $6908: $dd
    dec c                                         ; $6909: $0d
    ld a, [hl-]                                   ; $690a: $3a
    ld b, l                                       ; $690b: $45
    db $f4                                        ; $690c: $f4
    ld [hl+], a                                   ; $690d: $22
    ld b, a                                       ; $690e: $47
    cp h                                          ; $690f: $bc
    ld a, [de]                                    ; $6910: $1a
    ret nz                                        ; $6911: $c0

    ld a, d                                       ; $6912: $7a
    ld [hl], d                                    ; $6913: $72
    add sp, $1f                                   ; $6914: $e8 $1f
    db $f4                                        ; $6916: $f4
    cp d                                          ; $6917: $ba
    db $e4                                        ; $6918: $e4
    sbc l                                         ; $6919: $9d
    ld c, [hl]                                    ; $691a: $4e
    sub [hl]                                      ; $691b: $96
    jp Jump_054_5b1f                              ; $691c: $c3 $1f $5b


    cp h                                          ; $691f: $bc
    di                                            ; $6920: $f3
    push bc                                       ; $6921: $c5
    inc hl                                        ; $6922: $23
    ld e, h                                       ; $6923: $5c
    inc sp                                        ; $6924: $33
    rra                                           ; $6925: $1f
    or [hl]                                       ; $6926: $b6
    ld a, [hl-]                                   ; $6927: $3a
    db $10                                        ; $6928: $10
    ld bc, $1c7d                                  ; $6929: $01 $7d $1c
    sub $f4                                       ; $692c: $d6 $f4
    ld [hl], d                                    ; $692e: $72
    adc l                                         ; $692f: $8d
    and h                                         ; $6930: $a4
    ld b, [hl]                                    ; $6931: $46
    inc h                                         ; $6932: $24
    cp c                                          ; $6933: $b9
    add [hl]                                      ; $6934: $86
    sbc a                                         ; $6935: $9f
    inc b                                         ; $6936: $04
    rst $08                                       ; $6937: $cf
    call Call_054_6b89                            ; $6938: $cd $89 $6b
    daa                                           ; $693b: $27
    db $e3                                        ; $693c: $e3
    cp c                                          ; $693d: $b9
    ld b, [hl]                                    ; $693e: $46
    rst $10                                       ; $693f: $d7
    ld e, e                                       ; $6940: $5b
    ret z                                         ; $6941: $c8

    sbc b                                         ; $6942: $98
    inc [hl]                                      ; $6943: $34
    db $fd                                        ; $6944: $fd
    ldh a, [$6f]                                  ; $6945: $f0 $6f
    rst $18                                       ; $6947: $df
    dec b                                         ; $6948: $05
    ld de, $c93d                                  ; $6949: $11 $3d $c9
    ccf                                           ; $694c: $3f
    ld d, e                                       ; $694d: $53
    and $b9                                       ; $694e: $e6 $b9
    halt                                          ; $6950: $76
    ld a, e                                       ; $6951: $7b
    ld l, $ec                                     ; $6952: $2e $ec
    halt                                          ; $6954: $76
    ld e, [hl]                                    ; $6955: $5e
    or e                                          ; $6956: $b3
    ld c, h                                       ; $6957: $4c
    jp hl                                         ; $6958: $e9


    ld l, e                                       ; $6959: $6b
    ld h, [hl]                                    ; $695a: $66
    rst $10                                       ; $695b: $d7
    call z, $d2ec                                 ; $695c: $cc $ec $d2
    adc $35                                       ; $695f: $ce $35
    ld h, l                                       ; $6961: $65
    reti                                          ; $6962: $d9


    sbc a                                         ; $6963: $9f
    db $e4                                        ; $6964: $e4
    ld d, d                                       ; $6965: $52
    ld d, $65                                     ; $6966: $16 $65
    reti                                          ; $6968: $d9


    ld c, e                                       ; $6969: $4b
    and [hl]                                      ; $696a: $a6
    inc l                                         ; $696b: $2c
    ld [c], a                                     ; $696c: $e2
    add l                                         ; $696d: $85

Jump_054_696e:
    daa                                           ; $696e: $27
    pop bc                                        ; $696f: $c1
    ld [bc], a                                    ; $6970: $02
    ld de, $4c77                                  ; $6971: $11 $77 $4c
    ld e, c                                       ; $6974: $59
    call nz, $bf33                                ; $6975: $c4 $33 $bf
    db $d3                                        ; $6978: $d3
    or c                                          ; $6979: $b1
    call z, $6535                                 ; $697a: $cc $35 $65
    sbc [hl]                                      ; $697d: $9e
    ld a, c                                       ; $697e: $79
    ld [$1707], a                                 ; $697f: $ea $07 $17
    xor a                                         ; $6982: $af
    ld [hl-], a                                   ; $6983: $32
    ld e, $ad                                     ; $6984: $1e $ad
    or a                                          ; $6986: $b7
    add $7b                                       ; $6987: $c6 $7b
    ret                                           ; $6989: $c9


    jp nc, $d15d                                  ; $698a: $d2 $5d $d1

    dec b                                         ; $698d: $05
    rst $10                                       ; $698e: $d7
    rst $00                                       ; $698f: $c7
    ld h, c                                       ; $6990: $61
    adc c                                         ; $6991: $89
    sub l                                         ; $6992: $95
    ld [hl], d                                    ; $6993: $72
    adc l                                         ; $6994: $8d
    and h                                         ; $6995: $a4
    or $78                                        ; $6996: $f6 $78
    jp z, $d73c                                   ; $6998: $ca $3c $d7

    jp nc, $dd3f                                  ; $699b: $d2 $3f $dd

    ld a, [hl]                                    ; $699e: $7e
    ld h, [hl]                                    ; $699f: $66
    ld b, a                                       ; $69a0: $47
    inc sp                                        ; $69a1: $33
    ld b, h                                       ; $69a2: $44
    or a                                          ; $69a3: $b7
    rst $20                                       ; $69a4: $e7
    jp nz, $e76e                                  ; $69a5: $c2 $6e $e7

    dec [hl]                                      ; $69a8: $35
    set 3, d                                      ; $69a9: $cb $da
    rrca                                          ; $69ab: $0f
    pop bc                                        ; $69ac: $c1
    dec [hl]                                      ; $69ad: $35
    db $ec                                        ; $69ae: $ec
    sub $32                                       ; $69af: $d6 $32
    sbc [hl]                                      ; $69b1: $9e
    ld a, [c]                                     ; $69b2: $f2
    jr c, @+$31                                   ; $69b3: $38 $2f

    ld [hl], c                                    ; $69b5: $71
    ld [$926c], sp                                ; $69b6: $08 $6c $92
    or h                                          ; $69b9: $b4
    ld a, b                                       ; $69ba: $78
    jp hl                                         ; $69bb: $e9


    ld e, h                                       ; $69bc: $5c
    db $ec                                        ; $69bd: $ec
    ld a, [hl-]                                   ; $69be: $3a
    cp h                                          ; $69bf: $bc
    cp a                                          ; $69c0: $bf
    ldh a, [rNR50]                                ; $69c1: $f0 $24
    ld e, b                                       ; $69c3: $58
    jr nz, jr_054_69c8                            ; $69c4: $20 $02

    add b                                         ; $69c6: $80
    ld b, h                                       ; $69c7: $44

jr_054_69c8:
    cp c                                          ; $69c8: $b9
    sub d                                         ; $69c9: $92
    ld a, a                                       ; $69ca: $7f
    db $e4                                        ; $69cb: $e4
    ld c, e                                       ; $69cc: $4b
    or b                                          ; $69cd: $b0
    db $ec                                        ; $69ce: $ec
    rst $28                                       ; $69cf: $ef
    or $5c                                        ; $69d0: $f6 $5c
    daa                                           ; $69d2: $27
    ld a, c                                       ; $69d3: $79
    dec [hl]                                      ; $69d4: $35
    sbc h                                         ; $69d5: $9c
    ld a, c                                       ; $69d6: $79
    daa                                           ; $69d7: $27
    ld a, c                                       ; $69d8: $79
    push bc                                       ; $69d9: $c5
    adc [hl]                                      ; $69da: $8e
    cp d                                          ; $69db: $ba
    inc e                                         ; $69dc: $1c
    halt                                          ; $69dd: $76
    db $ed                                        ; $69de: $ed
    call nz, Call_054_6b8e                        ; $69df: $c4 $8e $6b
    ld a, a                                       ; $69e2: $7f
    jp z, $9e22                                   ; $69e3: $ca $22 $9e

    ld sp, hl                                     ; $69e6: $f9
    sbc l                                         ; $69e7: $9d
    adc [hl]                                      ; $69e8: $8e
    dec b                                         ; $69e9: $05
    ld [hl+], a                                   ; $69ea: $22
    rst $30                                       ; $69eb: $f7
    ld d, l                                       ; $69ec: $55
    and [hl]                                      ; $69ed: $a6
    ld a, l                                       ; $69ee: $7d
    ld c, [hl]                                    ; $69ef: $4e
    xor [hl]                                      ; $69f0: $ae
    db $dd                                        ; $69f1: $dd
    ld e, c                                       ; $69f2: $59
    sub [hl]                                      ; $69f3: $96
    ret nc                                        ; $69f4: $d0

    ld a, h                                       ; $69f5: $7c
    ld d, $b3                                     ; $69f6: $16 $b3
    ld [hl], b                                    ; $69f8: $70
    xor [hl]                                      ; $69f9: $ae
    cp c                                          ; $69fa: $b9
    and [hl]                                      ; $69fb: $a6
    ld e, h                                       ; $69fc: $5c
    ld c, e                                       ; $69fd: $4b
    rst $20                                       ; $69fe: $e7
    ld h, d                                       ; $69ff: $62
    ld l, e                                       ; $6a00: $6b
    ld [hl], a                                    ; $6a01: $77
    xor b                                         ; $6a02: $a8
    push bc                                       ; $6a03: $c5
    or $ce                                        ; $6a04: $f6 $ce
    ld [hl], c                                    ; $6a06: $71
    ld h, l                                       ; $6a07: $65
    adc h                                         ; $6a08: $8c
    call $bbfb                                    ; $6a09: $cd $fb $bb
    dec a                                         ; $6a0c: $3d
    rst $10                                       ; $6a0d: $d7
    ld c, c                                       ; $6a0e: $49
    ld e, [hl]                                    ; $6a0f: $5e
    dec c                                         ; $6a10: $0d
    ld h, a                                       ; $6a11: $67
    sbc $49                                       ; $6a12: $de $49
    ld e, [hl]                                    ; $6a14: $5e
    or c                                          ; $6a15: $b1
    and e                                         ; $6a16: $a3
    ld l, $87                                     ; $6a17: $2e $87
    ld e, l                                       ; $6a19: $5d
    ld [hl], e                                    ; $6a1a: $73
    db $ed                                        ; $6a1b: $ed
    db $fc                                        ; $6a1c: $fc

Jump_054_6a1d:
    jr @+$5f                                      ; $6a1d: $18 $5d

    cp h                                          ; $6a1f: $bc
    ccf                                           ; $6a20: $3f
    jp hl                                         ; $6a21: $e9


    xor e                                         ; $6a22: $ab
    ld [$05b3], sp                                ; $6a23: $08 $b3 $05
    ld [hl+], a                                   ; $6a26: $22
    db $dd                                        ; $6a27: $dd
    ld e, l                                       ; $6a28: $5d
    push af                                       ; $6a29: $f5
    add $bf                                       ; $6a2a: $c6 $bf
    xor l                                         ; $6a2c: $ad
    dec hl                                        ; $6a2d: $2b
    add hl, hl                                    ; $6a2e: $29
    cpl                                           ; $6a2f: $2f
    cp h                                          ; $6a30: $bc
    sub $5c                                       ; $6a31: $d6 $5c
    ld a, a                                       ; $6a33: $7f
    ld a, a                                       ; $6a34: $7f
    jp hl                                         ; $6a35: $e9


    sbc a                                         ; $6a36: $9f
    ld l, [hl]                                    ; $6a37: $6e
    ccf                                           ; $6a38: $3f
    or e                                          ; $6a39: $b3
    and e                                         ; $6a3a: $a3
    ld a, c                                       ; $6a3b: $79
    xor [hl]                                      ; $6a3c: $ae
    ld [hl], c                                    ; $6a3d: $71
    ld [c], a                                     ; $6a3e: $e2
    ld a, [hl-]                                   ; $6a3f: $3a
    res 1, c                                      ; $6a40: $cb $89
    ld l, e                                       ; $6a42: $6b
    pop hl                                        ; $6a43: $e1
    ld c, c                                       ; $6a44: $49
    or b                                          ; $6a45: $b0
    adc h                                         ; $6a46: $8c
    adc $35                                       ; $6a47: $ce $35
    push de                                       ; $6a49: $d5
    ld d, l                                       ; $6a4a: $55
    ld l, a                                       ; $6a4b: $6f
    db $fc                                        ; $6a4c: $fc
    db $db                                        ; $6a4d: $db
    ld l, [hl]                                    ; $6a4e: $6e
    rst $08                                       ; $6a4f: $cf
    ld [hl], l                                    ; $6a50: $75
    sub d                                         ; $6a51: $92
    ld d, a                                       ; $6a52: $57
    jp Jump_054_7799                              ; $6a53: $c3 $99 $77


    sub d                                         ; $6a56: $92
    ld d, a                                       ; $6a57: $57
    db $ec                                        ; $6a58: $ec
    xor b                                         ; $6a59: $a8
    bit 4, c                                      ; $6a5a: $cb $61
    rla                                           ; $6a5c: $17
    ld b, h                                       ; $6a5d: $44
    dec a                                         ; $6a5e: $3d
    ld c, c                                       ; $6a5f: $49
    ld l, $3a                                     ; $6a60: $2e $3a
    rst $10                                       ; $6a62: $d7
    ld c, [hl]                                    ; $6a63: $4e
    call nc, $f35b                                ; $6a64: $d4 $5b $f3
    ld a, [hl-]                                   ; $6a67: $3a
    ld c, $23                                     ; $6a68: $0e $23
    ld [hl], d                                    ; $6a6a: $72
    ld d, e                                       ; $6a6b: $53
    ld e, $76                                     ; $6a6c: $1e $76
    ld e, b                                       ; $6a6e: $58
    ld b, d                                       ; $6a6f: $42
    ld b, l                                       ; $6a70: $45
    set 7, [hl]                                   ; $6a71: $cb $fe
    xor $7e                                       ; $6a73: $ee $7e
    pop hl                                        ; $6a75: $e1
    inc de                                        ; $6a76: $13
    rst $38                                       ; $6a77: $ff
    ld [hl], b                                    ; $6a78: $70
    xor [hl]                                      ; $6a79: $ae
    ld l, a                                       ; $6a7a: $6f
    cp $d8                                        ; $6a7b: $fe $d8
    ld [c], a                                     ; $6a7d: $e2
    add hl, bc                                    ; $6a7e: $09
    ld d, l                                       ; $6a7f: $55
    ld l, e                                       ; $6a80: $6b
    ld a, l                                       ; $6a81: $7d
    sub l                                         ; $6a82: $95
    res 6, d                                      ; $6a83: $cb $b2
    db $e3                                        ; $6a85: $e3
    sub [hl]                                      ; $6a86: $96
    db $ec                                        ; $6a87: $ec
    db $e4                                        ; $6a88: $e4
    ld b, h                                       ; $6a89: $44
    ld e, h                                       ; $6a8a: $5c
    dec sp                                        ; $6a8b: $3b
    call nc, $cd32                                ; $6a8c: $d4 $32 $cd
    xor $85                                       ; $6a8f: $ee $85
    nop                                           ; $6a91: $00
    dec a                                         ; $6a92: $3d
    ret                                           ; $6a93: $c9


    ccf                                           ; $6a94: $3f
    ld d, e                                       ; $6a95: $53
    and $b9                                       ; $6a96: $e6 $b9
    halt                                          ; $6a98: $76
    rst $30                                       ; $6a99: $f7
    dec bc                                        ; $6a9a: $0b
    sbc a                                         ; $6a9b: $9f
    ld hl, sp-$79                                 ; $6a9c: $f8 $87
    ld [hl], e                                    ; $6a9e: $73
    ld a, l                                       ; $6a9f: $7d
    ld c, a                                       ; $6aa0: $4f
    jp hl                                         ; $6aa1: $e9


    dec sp                                        ; $6aa2: $3b
    xor [hl]                                      ; $6aa3: $ae
    sbc c                                         ; $6aa4: $99
    reti                                          ; $6aa5: $d9


    and l                                         ; $6aa6: $a5
    sbc l                                         ; $6aa7: $9d
    ld l, e                                       ; $6aa8: $6b
    jp z, Jump_000_3fbc                           ; $6aa9: $ca $bc $3f

    ld h, l                                       ; $6aac: $65
    ld de, $fccf                                  ; $6aad: $11 $cf $fc
    ld c, [hl]                                    ; $6ab0: $4e
    rst $00                                       ; $6ab1: $c7
    ld [bc], a                                    ; $6ab2: $02
    ld de, $64f7                                  ; $6ab3: $11 $f7 $64
    set 3, h                                      ; $6ab6: $cb $dc
    ld d, h                                       ; $6ab8: $54
    ld a, c                                       ; $6ab9: $79
    ld l, [hl]                                    ; $6aba: $6e
    ld c, [hl]                                    ; $6abb: $4e
    ld e, h                                       ; $6abc: $5c
    dec sp                                        ; $6abd: $3b
    ld l, a                                       ; $6abe: $6f
    dec e                                         ; $6abf: $1d
    add a                                         ; $6ac0: $87
    sbc l                                         ; $6ac1: $9d
    xor b                                         ; $6ac2: $a8
    or a                                          ; $6ac3: $b7
    and $c5                                       ; $6ac4: $e6 $c5
    adc h                                         ; $6ac6: $8c
    or c                                          ; $6ac7: $b1
    daa                                           ; $6ac8: $27
    ld d, [hl]                                    ; $6ac9: $56
    inc hl                                        ; $6aca: $23
    ld a, $c3                                     ; $6acb: $3e $c3
    push af                                       ; $6acd: $f5
    inc h                                         ; $6ace: $24
    ld l, a                                       ; $6acf: $6f
    ld b, d                                       ; $6ad0: $42
    push af                                       ; $6ad1: $f5
    ld b, d                                       ; $6ad2: $42
    dec a                                         ; $6ad3: $3d
    xor [hl]                                      ; $6ad4: $ae
    ld h, l                                       ; $6ad5: $65
    sub d                                         ; $6ad6: $92
    db $f4                                        ; $6ad7: $f4
    adc b                                         ; $6ad8: $88
    ld d, a                                       ; $6ad9: $57
    ei                                            ; $6ada: $fb
    ld sp, $747a                                  ; $6adb: $31 $7a $74
    ld d, a                                       ; $6ade: $57
    dec e                                         ; $6adf: $1d
    or $62                                        ; $6ae0: $f6 $62
    ld a, e                                       ; $6ae2: $7b
    rst $20                                       ; $6ae3: $e7
    ld a, b                                       ; $6ae4: $78
    sub d                                         ; $6ae5: $92
    dec l                                         ; $6ae6: $2d
    db $d3                                        ; $6ae7: $d3
    ld b, l                                       ; $6ae8: $45
    cp c                                          ; $6ae9: $b9
    sub d                                         ; $6aea: $92
    ld a, a                                       ; $6aeb: $7f
    db $e4                                        ; $6aec: $e4
    ld c, e                                       ; $6aed: $4b
    ld e, b                                       ; $6aee: $58
    ld c, [hl]                                    ; $6aef: $4e
    ld e, h                                       ; $6af0: $5c
    ld b, h                                       ; $6af1: $44
    ld d, [hl]                                    ; $6af2: $56
    ld h, [hl]                                    ; $6af3: $66
    adc b                                         ; $6af4: $88
    nop                                           ; $6af5: $00
    ld [hl], a                                    ; $6af6: $77
    ld c, b                                       ; $6af7: $48
    or b                                          ; $6af8: $b0
    db $ec                                        ; $6af9: $ec
    dec h                                         ; $6afa: $25
    and e                                         ; $6afb: $a3
    ld e, a                                       ; $6afc: $5f
    or b                                          ; $6afd: $b0
    ld a, b                                       ; $6afe: $78
    ld a, a                                       ; $6aff: $7f
    jp z, $9e22                                   ; $6b00: $ca $22 $9e

    ld sp, hl                                     ; $6b03: $f9
    sbc l                                         ; $6b04: $9d
    adc [hl]                                      ; $6b05: $8e
    ld h, l                                       ; $6b06: $65

jr_054_6b07:
    add a                                         ; $6b07: $87
    xor c                                         ; $6b08: $a9
    ld a, [de]                                    ; $6b09: $1a
    ld c, c                                       ; $6b0a: $49
    dec c                                         ; $6b0b: $0d
    ld a, a                                       ; $6b0c: $7f
    add hl, de                                    ; $6b0d: $19
    ld a, a                                       ; $6b0e: $7f
    ld l, h                                       ; $6b0f: $6c
    or d                                          ; $6b10: $b2
    dec a                                         ; $6b11: $3d
    add c                                         ; $6b12: $81
    ld [$64f7], sp                                ; $6b13: $08 $f7 $64
    set 5, b                                      ; $6b16: $cb $e8
    ld e, h                                       ; $6b18: $5c
    db $fc                                        ; $6b19: $fc
    ld a, [de]                                    ; $6b1a: $1a
    ld a, e                                       ; $6b1b: $7b
    ret c                                         ; $6b1c: $d8

    ld h, c                                       ; $6b1d: $61
    adc a                                         ; $6b1e: $8f
    rst $30                                       ; $6b1f: $f7
    ld e, d                                       ; $6b20: $5a
    sbc e                                         ; $6b21: $9b
    ld l, $ca                                     ; $6b22: $2e $ca
    sub l                                         ; $6b24: $95
    db $fc                                        ; $6b25: $fc
    inc hl                                        ; $6b26: $23
    ld e, a                                       ; $6b27: $5f
    jp nz, Jump_054_5ce8                          ; $6b28: $c2 $e8 $5c

    and e                                         ; $6b2b: $a3
    cp e                                          ; $6b2c: $bb
    ld [$17b0], a                                 ; $6b2d: $ea $b0 $17
    db $db                                        ; $6b30: $db
    dec sp                                        ; $6b31: $3b
    rst $00                                       ; $6b32: $c7
    and e                                         ; $6b33: $a3
    ld [hl], e                                    ; $6b34: $73
    add hl, sp                                    ; $6b35: $39
    ld d, b                                       ; $6b36: $50
    dec [hl]                                      ; $6b37: $35
    cp d                                          ; $6b38: $ba
    sbc $68                                       ; $6b39: $de $68
    ld h, e                                       ; $6b3b: $63
    or $cc                                        ; $6b3c: $f6 $cc
    rst $28                                       ; $6b3e: $ef
    ld [hl], h                                    ; $6b3f: $74
    cp h                                          ; $6b40: $bc
    inc e                                         ; $6b41: $1c
    ld h, $56                                     ; $6b42: $26 $56
    add hl, sp                                    ; $6b44: $39
    ld [hl], c                                    ; $6b45: $71
    ld b, c                                       ; $6b46: $41
    inc b                                         ; $6b47: $04
    scf                                           ; $6b48: $37
    or a                                          ; $6b49: $b7
    ld [hl], $5d                                  ; $6b4a: $36 $5d
    sub h                                         ; $6b4c: $94
    dec hl                                        ; $6b4d: $2b
    ld sp, hl                                     ; $6b4e: $f9
    ld b, a                                       ; $6b4f: $47
    cp [hl]                                       ; $6b50: $be
    add h                                         ; $6b51: $84
    pop de                                        ; $6b52: $d1
    cp c                                          ; $6b53: $b9
    ld b, [hl]                                    ; $6b54: $46
    ld [hl], a                                    ; $6b55: $77
    push de                                       ; $6b56: $d5
    ld h, c                                       ; $6b57: $61
    cpl                                           ; $6b58: $2f
    or [hl]                                       ; $6b59: $b6
    ld [hl], a                                    ; $6b5a: $77
    adc [hl]                                      ; $6b5b: $8e
    ld [hl], a                                    ; $6b5c: $77
    ld h, d                                       ; $6b5d: $62
    rst $00                                       ; $6b5e: $c7
    or l                                          ; $6b5f: $b5
    ccf                                           ; $6b60: $3f
    push hl                                       ; $6b61: $e5
    adc c                                         ; $6b62: $89
    ld d, l                                       ; $6b63: $55
    ld a, c                                       ; $6b64: $79
    and $77                                       ; $6b65: $e6 $77
    ld a, [hl-]                                   ; $6b67: $3a
    ld d, $43                                     ; $6b68: $16 $43
    inc b                                         ; $6b6a: $04
    ld a, l                                       ; $6b6b: $7d
    inc e                                         ; $6b6c: $1c
    ld b, [hl]                                    ; $6b6d: $46
    ccf                                           ; $6b6e: $3f
    pop hl                                        ; $6b6f: $e1
    jp hl                                         ; $6b70: $e9


    inc a                                         ; $6b71: $3c
    ld [hl+], a                                   ; $6b72: $22
    ld sp, hl                                     ; $6b73: $f9
    dec l                                         ; $6b74: $2d
    ld a, d                                       ; $6b75: $7a
    db $f4                                        ; $6b76: $f4
    dec bc                                        ; $6b77: $0b
    db $eb                                        ; $6b78: $eb
    jr c, jr_054_6b07                             ; $6b79: $38 $8c

    ld a, b                                       ; $6b7b: $78
    ld c, d                                       ; $6b7c: $4a
    ld a, c                                       ; $6b7d: $79
    adc c                                         ; $6b7e: $89
    push de                                       ; $6b7f: $d5
    xor b                                         ; $6b80: $a8
    dec e                                         ; $6b81: $1d
    adc a                                         ; $6b82: $8f
    and h                                         ; $6b83: $a4
    sub [hl]                                      ; $6b84: $96
    ld c, c                                       ; $6b85: $49
    ld a, [c]                                     ; $6b86: $f2
    or h                                          ; $6b87: $b4
    rla                                           ; $6b88: $17

Call_054_6b89:
    ld c, $bf                                     ; $6b89: $0e $bf
    and h                                         ; $6b8b: $a4
    cp l                                          ; $6b8c: $bd
    sub c                                         ; $6b8d: $91

Call_054_6b8e:
Jump_054_6b8e:
    call nc, Call_054_4932                        ; $6b8e: $d4 $32 $49
    ld [de], a                                    ; $6b91: $12
    cp c                                          ; $6b92: $b9
    xor c                                         ; $6b93: $a9

Call_054_6b94:
    ld d, e                                       ; $6b94: $53
    add hl, de                                    ; $6b95: $19
    ld h, e                                       ; $6b96: $63
    di                                            ; $6b97: $f3
    cp $08                                        ; $6b98: $fe $08

Call_054_6b9a:
    db $fd                                        ; $6b9a: $fd
    sbc b                                         ; $6b9b: $98
    add a                                         ; $6b9c: $87
    ccf                                           ; $6b9d: $3f
    inc sp                                        ; $6b9e: $33
    ld b, h                                       ; $6b9f: $44
    ld [hl], a                                    ; $6ba0: $77
    ld c, b                                       ; $6ba1: $48
    or b                                          ; $6ba2: $b0
    db $ec                                        ; $6ba3: $ec
    dec h                                         ; $6ba4: $25
    and e                                         ; $6ba5: $a3
    ld e, a                                       ; $6ba6: $5f
    or b                                          ; $6ba7: $b0
    ld a, b                                       ; $6ba8: $78
    ld a, a                                       ; $6ba9: $7f
    jp z, $9e22                                   ; $6baa: $ca $22 $9e

    ld sp, hl                                     ; $6bad: $f9
    sbc l                                         ; $6bae: $9d
    adc [hl]                                      ; $6baf: $8e
    ld h, l                                       ; $6bb0: $65
    ld c, l                                       ; $6bb1: $4d
    and e                                         ; $6bb2: $a3
    ld e, h                                       ; $6bb3: $5c

Jump_054_6bb4:
    adc e                                         ; $6bb4: $8b
    dec e                                         ; $6bb5: $1d
    dec bc                                        ; $6bb6: $0b
    dec de                                        ; $6bb7: $1b
    ld [hl+], a                                   ; $6bb8: $22
    or a                                          ; $6bb9: $b7
    ld [hl], a                                    ; $6bba: $77
    push de                                       ; $6bbb: $d5
    ld h, c                                       ; $6bbc: $61
    cpl                                           ; $6bbd: $2f
    or [hl]                                       ; $6bbe: $b6
    ld [hl], a                                    ; $6bbf: $77
    adc [hl]                                      ; $6bc0: $8e
    ld b, a                                       ; $6bc1: $47
    cp h                                          ; $6bc2: $bc
    ld e, d                                       ; $6bc3: $5a
    ld [c], a                                     ; $6bc4: $e2
    or [hl]                                       ; $6bc5: $b6
    cpl                                           ; $6bc6: $2f
    pop bc                                        ; $6bc7: $c1
    ld [hl-], a                                   ; $6bc8: $32
    ld e, l                                       ; $6bc9: $5d
    sub h                                         ; $6bca: $94
    dec hl                                        ; $6bcb: $2b
    ld sp, hl                                     ; $6bcc: $f9
    ld b, a                                       ; $6bcd: $47
    cp [hl]                                       ; $6bce: $be
    add h                                         ; $6bcf: $84
    ld de, $65ae                                  ; $6bd0: $11 $ae $65
    sub d                                         ; $6bd3: $92
    or h                                          ; $6bd4: $b4
    halt                                          ; $6bd5: $76
    ld b, h                                       ; $6bd6: $44
    ld a, [c]                                     ; $6bd7: $f2
    ld a, d                                       ; $6bd8: $7a
    ld hl, $fa3d                                  ; $6bd9: $21 $3d $fa
    ld hl, $b4cb                                  ; $6bdc: $21 $cb $b4
    inc hl                                        ; $6bdf: $23
    ld e, e                                       ; $6be0: $5b
    sub [hl]                                      ; $6be1: $96
    ld d, b                                       ; $6be2: $50
    or l                                          ; $6be3: $b5
    di                                            ; $6be4: $f3
    sub [hl]                                      ; $6be5: $96
    db $fc                                        ; $6be6: $fc
    sbc l                                         ; $6be7: $9d
    xor b                                         ; $6be8: $a8
    or a                                          ; $6be9: $b7
    and $05                                       ; $6bea: $e6 $05
    ld l, d                                       ; $6bec: $6a
    ld h, d                                       ; $6bed: $62
    dec [hl]                                      ; $6bee: $35
    cp $6d                                        ; $6bef: $fe $6d
    db $fc                                        ; $6bf1: $fc
    or c                                          ; $6bf2: $b1
    dec b                                         ; $6bf3: $05
    xor [hl]                                      ; $6bf4: $ae
    db $db                                        ; $6bf5: $db
    inc a                                         ; $6bf6: $3c
    ld c, h                                       ; $6bf7: $4c
    xor l                                         ; $6bf8: $ad
    sub e                                         ; $6bf9: $93
    sub a                                         ; $6bfa: $97
    ld [hl], $6b                                  ; $6bfb: $36 $6b
    add $bf                                       ; $6bfd: $c6 $bf
    call Call_054_4efc                            ; $6bff: $cd $fc $4e
    rst $00                                       ; $6c02: $c7
    ld [c], a                                     ; $6c03: $e2
    jp hl                                         ; $6c04: $e9


    and d                                         ; $6c05: $a2
    ld e, h                                       ; $6c06: $5c
    db $10                                        ; $6c07: $10
    ld bc, $ff80                                  ; $6c08: $01 $80 $ff
    add sp, -$52                                  ; $6c0b: $e8 $ae
    ld a, [hl-]                                   ; $6c0d: $3a
    db $ec                                        ; $6c0e: $ec
    ret c                                         ; $6c0f: $d8

    sbc $39                                       ; $6c10: $de $39
    ld e, a                                       ; $6c12: $5f
    add d                                         ; $6c13: $82
    ld l, e                                       ; $6c14: $6b
    ld sp, $ec63                                  ; $6c15: $31 $63 $ec
    jp c, $d18f                                   ; $6c18: $da $8f $d1

    db $e3                                        ; $6c1b: $e3
    rst $18                                       ; $6c1c: $df
    ld b, [hl]                                    ; $6c1d: $46
    adc l                                         ; $6c1e: $8d
    ld a, b                                       ; $6c1f: $78
    db $e3                                        ; $6c20: $e3
    adc a                                         ; $6c21: $8f
    ld e, l                                       ; $6c22: $5d
    ei                                            ; $6c23: $fb
    ld d, e                                       ; $6c24: $53
    ld d, $f1                                     ; $6c25: $16 $f1
    call z, Call_054_74ef                         ; $6c27: $cc $ef $74

jr_054_6c2a:
    inc l                                         ; $6c2a: $2c
    inc hl                                        ; $6c2b: $23
    xor c                                         ; $6c2c: $a9
    dec [hl]                                      ; $6c2d: $35
    ld c, e                                       ; $6c2e: $4b
    jr nc, jr_054_6c75                            ; $6c2f: $30 $44

    ld [hl], a                                    ; $6c31: $77
    ld c, h                                       ; $6c32: $4c
    ccf                                           ; $6c33: $3f
    db $fc                                        ; $6c34: $fc
    ld b, h                                       ; $6c35: $44
    ld b, c                                       ; $6c36: $41
    inc b                                         ; $6c37: $04
    rst $30                                       ; $6c38: $f7
    and $9c                                       ; $6c39: $e6 $9c
    or l                                          ; $6c3b: $b5
    or e                                          ; $6c3c: $b3
    inc l                                         ; $6c3d: $2c
    db $fd                                        ; $6c3e: $fd
    sbc c                                         ; $6c3f: $99
    db $dd                                        ; $6c40: $dd
    ld a, $5b                                     ; $6c41: $3e $5b
    ld b, [hl]                                    ; $6c43: $46
    ld [hl], a                                    ; $6c44: $77
    push de                                       ; $6c45: $d5
    ld h, c                                       ; $6c46: $61
    rst $00                                       ; $6c47: $c7
    or $ce                                        ; $6c48: $f6 $ce
    ld sp, hl                                     ; $6c4a: $f9
    ld c, l                                       ; $6c4b: $4d
    ccf                                           ; $6c4c: $3f
    ld [hl], c                                    ; $6c4d: $71
    inc h                                         ; $6c4e: $24
    or l                                          ; $6c4f: $b5
    call nz, $fc7f                                ; $6c50: $c4 $7f $fc
    db $db                                        ; $6c53: $db
    ld hl, sp+$63                                 ; $6c54: $f8 $63
    ld c, e                                       ; $6c56: $4b
    ld [$1bdd], a                                 ; $6c57: $ea $dd $1b
    ld b, [hl]                                    ; $6c5a: $46
    inc h                                         ; $6c5b: $24
    cp c                                          ; $6c5c: $b9
    ld b, [hl]                                    ; $6c5d: $46

Jump_054_6c5e:
    cp h                                          ; $6c5e: $bc
    ld a, [de]                                    ; $6c5f: $1a
    pop af                                        ; $6c60: $f1
    ld h, h                                       ; $6c61: $64
    ld l, h                                       ; $6c62: $6c
    adc c                                         ; $6c63: $89
    cp h                                          ; $6c64: $bc
    db $e3                                        ; $6c65: $e3
    jr nc, jr_054_6c2a                            ; $6c66: $30 $c2

    and d                                         ; $6c68: $a2
    sbc l                                         ; $6c69: $9d
    ld a, d                                       ; $6c6a: $7a
    cp l                                          ; $6c6b: $bd
    db $10                                        ; $6c6c: $10
    ld a, l                                       ; $6c6d: $7d
    inc e                                         ; $6c6e: $1c
    sub [hl]                                      ; $6c6f: $96
    inc de                                        ; $6c70: $13
    rst $10                                       ; $6c71: $d7
    ld [hl], c                                    ; $6c72: $71
    ld c, l                                       ; $6c73: $4d
    add hl, sp                                    ; $6c74: $39

jr_054_6c75:
    ld l, b                                       ; $6c75: $68
    rst $10                                       ; $6c76: $d7
    ld e, e                                       ; $6c77: $5b
    ld e, [hl]                                    ; $6c78: $5e
    ld [bc], a                                    ; $6c79: $02
    ld de, $3e77                                  ; $6c7a: $11 $77 $3e
    add hl, sp                                    ; $6c7d: $39
    or c                                          ; $6c7e: $b1
    db $e3                                        ; $6c7f: $e3
    add hl, hl                                    ; $6c80: $29
    ld a, l                                       ; $6c81: $7d
    daa                                           ; $6c82: $27
    ld [$79ad], a                                 ; $6c83: $ea $ad $79
    inc [hl]                                      ; $6c86: $34
    dec [hl]                                      ; $6c87: $35
    ret                                           ; $6c88: $c9


    sbc [hl]                                      ; $6c89: $9e
    jp nc, $63f7                                  ; $6c8a: $d2 $f7 $63

    db $f4                                        ; $6c8d: $f4
    ld [c], a                                     ; $6c8e: $e2
    sub e                                         ; $6c8f: $93
    push hl                                       ; $6c90: $e5
    call nz, $ac75                                ; $6c91: $c4 $75 $ac
    sbc l                                         ; $6c94: $9d
    ld a, d                                       ; $6c95: $7a
    db $10                                        ; $6c96: $10
    ld bc, $f337                                  ; $6c97: $01 $37 $f3
    jp hl                                         ; $6c9a: $e9


    db $e4                                        ; $6c9b: $e4
    inc c                                         ; $6c9c: $0c
    ld hl, $69dc                                  ; $6c9d: $21 $dc $69
    ld a, d                                       ; $6ca0: $7a
    pop de                                        ; $6ca1: $d1
    db $10                                        ; $6ca2: $10
    jp nz, $3e3d                                  ; $6ca3: $c2 $3d $3e

    sbc l                                         ; $6ca6: $9d
    sbc h                                         ; $6ca7: $9c
    ld hl, $0884                                  ; $6ca8: $21 $84 $08
    dec a                                         ; $6cab: $3d
    ld a, a                                       ; $6cac: $7f
    call nz, $f11f                                ; $6cad: $c4 $1f $f1
    ld b, a                                       ; $6cb0: $47
    ld a, h                                       ; $6cb1: $7c
    ld [$4421], sp                                ; $6cb2: $08 $21 $44
    scf                                           ; $6cb5: $37
    di                                            ; $6cb6: $f3
    jp hl                                         ; $6cb7: $e9


    db $e4                                        ; $6cb8: $e4
    xor h                                         ; $6cb9: $ac
    db $dd                                        ; $6cba: $dd
    sub c                                         ; $6cbb: $91
    ld l, $9a                                     ; $6cbc: $2e $9a
    or l                                          ; $6cbe: $b5
    dec sp                                        ; $6cbf: $3b
    jp nc, $3345                                  ; $6cc0: $d2 $45 $33

    add h                                         ; $6cc3: $84
    db $10                                        ; $6cc4: $10
    ld bc, $5df7                                  ; $6cc5: $01 $f7 $5d
    ld [hl], d                                    ; $6cc8: $72
    rst $18                                       ; $6cc9: $df
    dec h                                         ; $6cca: $25
    rst $30                                       ; $6ccb: $f7
    ld h, l                                       ; $6ccc: $65
    ld h, [hl]                                    ; $6ccd: $66
    sub a                                         ; $6cce: $97
    halt                                          ; $6ccf: $76
    xor [hl]                                      ; $6cd0: $ae
    add hl, hl                                    ; $6cd1: $29
    ld a, l                                       ; $6cd2: $7d
    ld b, a                                       ; $6cd3: $47
    inc de                                        ; $6cd4: $13
    ld a, e                                       ; $6cd5: $7b
    ld hl, $f8f7                                  ; $6cd6: $21 $f7 $f8
    ld l, e                                       ; $6cd9: $6b
    and a                                         ; $6cda: $a7
    call z, Call_000_2d73                         ; $6cdb: $cc $73 $2d
    db $fd                                        ; $6cde: $fd
    jp z, Jump_000_2deb                           ; $6cdf: $ca $eb $2d

    cpl                                           ; $6ce2: $2f
    reti                                          ; $6ce3: $d9


    ret                                           ; $6ce4: $c9


    ld a, b                                       ; $6ce5: $78
    ld h, d                                       ; $6ce6: $62
    and $4c                                       ; $6ce7: $e6 $4c
    sub d                                         ; $6ce9: $92
    inc hl                                        ; $6cea: $23
    ld e, [hl]                                    ; $6ceb: $5e
    dec l                                         ; $6cec: $2d
    cp [hl]                                       ; $6ced: $be
    jp Jump_054_59e6                              ; $6cee: $c3 $e6 $59


    sub [hl]                                      ; $6cf1: $96
    ld d, b                                       ; $6cf2: $50
    jp z, $a923                                   ; $6cf3: $ca $23 $a9

    ld h, c                                       ; $6cf6: $61
    rlca                                          ; $6cf7: $07
    cp b                                          ; $6cf8: $b8
    sbc e                                         ; $6cf9: $9b
    ld sp, hl                                     ; $6cfa: $f9
    ld [hl], h                                    ; $6cfb: $74
    ld [hl], d                                    ; $6cfc: $72
    sub $ee                                       ; $6cfd: $d6 $ee
    adc b                                         ; $6cff: $88
    ld c, [hl]                                    ; $6d00: $4e
    rra                                           ; $6d01: $1f
    ld [$0221], sp                                ; $6d02: $08 $21 $02
    or a                                          ; $6d05: $b7
    ld e, l                                       ; $6d06: $5d
    ld h, d                                       ; $6d07: $62
    ld h, [hl]                                    ; $6d08: $66
    rst $10                                       ; $6d09: $d7
    adc [hl]                                      ; $6d0a: $8e
    ld b, $5f                                     ; $6d0b: $06 $5f
    ld [hl], d                                    ; $6d0d: $72
    inc [hl]                                      ; $6d0e: $34
    sbc b                                         ; $6d0f: $98
    db $e4                                        ; $6d10: $e4
    adc h                                         ; $6d11: $8c
    dec l                                         ; $6d12: $2d
    ld e, $35                                     ; $6d13: $1e $35
    push de                                       ; $6d15: $d5
    add l                                         ; $6d16: $85
    or c                                          ; $6d17: $b1
    or l                                          ; $6d18: $b5
    ld c, e                                       ; $6d19: $4b
    ld a, [hl]                                    ; $6d1a: $7e
    ld l, e                                       ; $6d1b: $6b
    ld e, [hl]                                    ; $6d1c: $5e
    rst $00                                       ; $6d1d: $c7
    ld h, c                                       ; $6d1e: $61
    rst $20                                       ; $6d1f: $e7
    rst $28                                       ; $6d20: $ef
    pop af                                        ; $6d21: $f1
    sub d                                         ; $6d22: $92
    ccf                                           ; $6d23: $3f
    jp nz, $e3b5                                  ; $6d24: $c2 $b5 $e3

    ld e, d                                       ; $6d27: $5a
    ld a, [c]                                     ; $6d28: $f2
    cpl                                           ; $6d29: $2f
    ld c, c                                       ; $6d2a: $49
    ld a, [hl]                                    ; $6d2b: $7e
    ld b, l                                       ; $6d2c: $45
    ld sp, hl                                     ; $6d2d: $f9
    ld [de], a                                    ; $6d2e: $12
    inc l                                         ; $6d2f: $2c
    sbc $4b                                       ; $6d30: $de $4b
    halt                                          ; $6d32: $76
    ld h, a                                       ; $6d33: $67
    db $d3                                        ; $6d34: $d3
    inc e                                         ; $6d35: $1c
    db $fd                                        ; $6d36: $fd
    db $ec                                        ; $6d37: $ec
    xor c                                         ; $6d38: $a9
    ret                                           ; $6d39: $c9


    db $d3                                        ; $6d3a: $d3
    adc a                                         ; $6d3b: $8f
    rra                                           ; $6d3c: $1f
    add [hl]                                      ; $6d3d: $86
    db $10                                        ; $6d3e: $10
    sbc $a2                                       ; $6d3f: $de $a2
    ld e, a                                       ; $6d41: $5f
    ld [hl], d                                    ; $6d42: $72
    adc e                                         ; $6d43: $8b
    ld a, [hl]                                    ; $6d44: $7e
    ld c, h                                       ; $6d45: $4c
    rst $20                                       ; $6d46: $e7
    ld c, d                                       ; $6d47: $4a
    ccf                                           ; $6d48: $3f
    ld de, $63b7                                  ; $6d49: $11 $b7 $63
    ld c, c                                       ; $6d4c: $49
    adc l                                         ; $6d4d: $8d
    nop                                           ; $6d4e: $00
    add hl, hl                                    ; $6d4f: $29
    ld c, l                                       ; $6d50: $4d
    cpl                                           ; $6d51: $2f
    ld a, [hl-]                                   ; $6d52: $3a
    dec [hl]                                      ; $6d53: $35
    ld [bc], a                                    ; $6d54: $02
    rst $30                                       ; $6d55: $f7
    sbc b                                         ; $6d56: $98
    add hl, sp                                    ; $6d57: $39
    sub e                                         ; $6d58: $93
    inc h                                         ; $6d59: $24
    call c, $b26d                                 ; $6d5a: $dc $6d $b2
    ld b, e                                       ; $6d5d: $43
    db $ed                                        ; $6d5e: $ed
    sub b                                         ; $6d5f: $90
    cp [hl]                                       ; $6d60: $be
    db $e4                                        ; $6d61: $e4
    sub b                                         ; $6d62: $90
    ld a, $df                                     ; $6d63: $3e $df
    xor l                                         ; $6d65: $ad
    dec l                                         ; $6d66: $2d
    sub e                                         ; $6d67: $93
    ld h, h                                       ; $6d68: $64
    ld a, b                                       ; $6d69: $78
    adc c                                         ; $6d6a: $89
    sub a                                         ; $6d6b: $97
    db $fc                                        ; $6d6c: $fc
    ld c, e                                       ; $6d6d: $4b
    sub d                                         ; $6d6e: $92
    rst $18                                       ; $6d6f: $df
    sbc d                                         ; $6d70: $9a
    rst $10                                       ; $6d71: $d7
    ld [hl], c                                    ; $6d72: $71
    sbc b                                         ; $6d73: $98
    db $e4                                        ; $6d74: $e4
    jp nz, $f1af                                  ; $6d75: $c2 $af $f1

    jp nc, $bcaf                                  ; $6d78: $d2 $af $bc

    ldh a, [$99]                                  ; $6d7b: $f0 $99
    rst $00                                       ; $6d7d: $c7
    cp a                                          ; $6d7e: $bf
    call $e4b2                                    ; $6d7f: $cd $b2 $e4
    ld e, a                                       ; $6d82: $5f
    sub d                                         ; $6d83: $92
    db $fc                                        ; $6d84: $fc
    ld c, e                                       ; $6d85: $4b
    sub d                                         ; $6d86: $92
    xor a                                         ; $6d87: $af
    ld e, h                                       ; $6d88: $5c
    adc [hl]                                      ; $6d89: $8e
    add hl, de                                    ; $6d8a: $19
    ld h, e                                       ; $6d8b: $63
    set 3, h                                      ; $6d8c: $cb $dc
    sbc h                                         ; $6d8e: $9c
    ld l, b                                       ; $6d8f: $68
    add a                                         ; $6d90: $87
    dec l                                         ; $6d91: $2d
    dec sp                                        ; $6d92: $3b
    ld e, a                                       ; $6d93: $5f
    ld e, c                                       ; $6d94: $59
    and [hl]                                      ; $6d95: $a6
    db $f4                                        ; $6d96: $f4
    cp c                                          ; $6d97: $b9
    sub $f3                                       ; $6d98: $d6 $f3
    ld l, $e9                                     ; $6d9a: $2e $e9
    ld a, c                                       ; $6d9c: $79
    sub a                                         ; $6d9d: $97
    db $f4                                        ; $6d9e: $f4
    cp h                                          ; $6d9f: $bc
    ld a, [hl+]                                   ; $6da0: $2a
    call $cbee                                    ; $6da1: $cd $ee $cb
    call z, Call_000_082e                         ; $6da4: $cc $2e $08
    ld hl, $3d02                                  ; $6da7: $21 $02 $3d
    ret                                           ; $6daa: $c9


    sbc e                                         ; $6dab: $9b
    ld l, e                                       ; $6dac: $6b
    jp z, $f53c                                   ; $6dad: $ca $3c $f5

    ld a, d                                       ; $6db0: $7a
    dec l                                         ; $6db1: $2d
    ld b, l                                       ; $6db2: $45
    ld [hl], h                                    ; $6db3: $74
    ld a, [$0440]                                 ; $6db4: $fa $40 $04
    or a                                          ; $6db7: $b7
    ld a, a                                       ; $6db8: $7f
    sub c                                         ; $6db9: $91
    pop hl                                        ; $6dba: $e1

jr_054_6dbb:
    ld a, h                                       ; $6dbb: $7c
    add hl, bc                                    ; $6dbc: $09
    adc $4c                                       ; $6dbd: $ce $4c
    rst $20                                       ; $6dbf: $e7
    ld c, d                                       ; $6dc0: $4a
    cp a                                          ; $6dc1: $bf
    ld c, e                                       ; $6dc2: $4b
    jp nc, $c44f                                  ; $6dc3: $d2 $4f $c4

    db $ed                                        ; $6dc6: $ed
    ld e, b                                       ; $6dc7: $58
    ldh [$ee], a                                  ; $6dc8: $e0 $ee
    dec c                                         ; $6dca: $0d
    dec sp                                        ; $6dcb: $3b
    ld d, c                                       ; $6dcc: $51
    inc hl                                        ; $6dcd: $23
    ld l, d                                       ; $6dce: $6a
    jp z, Jump_054_4201                           ; $6dcf: $ca $01 $42

    ld a, b                                       ; $6dd2: $78
    adc e                                         ; $6dd3: $8b
    ld a, [hl]                                    ; $6dd4: $7e
    ld c, h                                       ; $6dd5: $4c
    rst $20                                       ; $6dd6: $e7
    cp d                                          ; $6dd7: $ba
    inc h                                         ; $6dd8: $24
    db $fd                                        ; $6dd9: $fd
    ld b, h                                       ; $6dda: $44
    call c, Call_054_658e                         ; $6ddb: $dc $8e $65
    and c                                         ; $6dde: $a1

Jump_054_6ddf:
    db $d3                                        ; $6ddf: $d3
    ld d, l                                       ; $6de0: $55
    ld d, e                                       ; $6de1: $53
    ld c, $3b                                     ; $6de2: $0e $3b
    ret                                           ; $6de4: $c9


    cp e                                          ; $6de5: $bb
    db $e4                                        ; $6de6: $e4
    inc h                                         ; $6de7: $24
    cpl                                           ; $6de8: $2f
    cp d                                          ; $6de9: $ba
    cp h                                          ; $6dea: $bc
    inc e                                         ; $6deb: $1c
    halt                                          ; $6dec: $76
    sub d                                         ; $6ded: $92
    rla                                           ; $6dee: $17
    ld e, l                                       ; $6def: $5d
    ld e, $ff                                     ; $6df0: $1e $ff
    ld [hl], $65                                  ; $6df2: $36 $65
    sbc $8f                                       ; $6df4: $de $8f
    pop de                                        ; $6df6: $d1
    ld [hl], e                                    ; $6df7: $73
    db $ed                                        ; $6df8: $ed
    adc c                                         ; $6df9: $89
    sbc b                                         ; $6dfa: $98
    ld b, a                                       ; $6dfb: $47
    dec l                                         ; $6dfc: $2d
    ld [hl], h                                    ; $6dfd: $74
    cp d                                          ; $6dfe: $ba
    jp z, $c8b3                                   ; $6dff: $ca $b3 $c8

    xor b                                         ; $6e02: $a8
    pop de                                        ; $6e03: $d1
    call nc, Call_000_3425                        ; $6e04: $d4 $25 $34
    ld [hl], l                                    ; $6e07: $75
    add hl, bc                                    ; $6e08: $09
    ld c, l                                       ; $6e09: $4d
    ld c, l                                       ; $6e0a: $4d
    add hl, sp                                    ; $6e0b: $39
    db $ec                                        ; $6e0c: $ec
    rst $28                                       ; $6e0d: $ef
    ld e, b                                       ; $6e0e: $58
    ld [bc], a                                    ; $6e0f: $02
    ld b, h                                       ; $6e10: $44
    db $dd                                        ; $6e11: $dd
    ld a, [$2fe8]                                 ; $6e12: $fa $e8 $2f
    ld [c], a                                     ; $6e15: $e2
    jp c, $d18f                                   ; $6e16: $da $8f $d1

    jp $e999                                      ; $6e19: $c3 $99 $e9


    ld e, h                                       ; $6e1c: $5c
    jp hl                                         ; $6e1d: $e9


    ld [hl], a                                    ; $6e1e: $77
    ld c, c                                       ; $6e1f: $49
    ld a, [$925d]                                 ; $6e20: $fa $5d $92
    ld a, [hl]                                    ; $6e23: $7e
    ld [hl+], a                                   ; $6e24: $22
    ld l, [hl]                                    ; $6e25: $6e
    rst $00                                       ; $6e26: $c7
    ld [hl-], a                                   ; $6e27: $32
    jp nz, Jump_000_2fb5                          ; $6e28: $c2 $b5 $2f

    ld h, d                                       ; $6e2b: $62
    db $ed                                        ; $6e2c: $ed
    ld a, d                                       ; $6e2d: $7a
    ld e, [hl]                                    ; $6e2e: $5e
    sub l                                         ; $6e2f: $95
    ld h, $35                                     ; $6e30: $26 $35
    ld [bc], a                                    ; $6e32: $02
    ld a, l                                       ; $6e33: $7d
    inc e                                         ; $6e34: $1c
    jr nz, jr_054_6dbb                            ; $6e35: $20 $84

    ld [hl], h                                    ; $6e37: $74
    ld d, a                                       ; $6e38: $57
    ld [hl], e                                    ; $6e39: $73
    dec c                                         ; $6e3a: $0d
    dec sp                                        ; $6e3b: $3b
    db $ec                                        ; $6e3c: $ec
    rst $00                                       ; $6e3d: $c7
    ld l, b                                       ; $6e3e: $68
    ld [$a1e1], sp                                ; $6e3f: $08 $e1 $a1
    sub [hl]                                      ; $6e42: $96
    xor [hl]                                      ; $6e43: $ae
    rlca                                          ; $6e44: $07
    ld hl, $b744                                  ; $6e45: $21 $44 $b7
    ld [hl], a                                    ; $6e48: $77
    dec [hl]                                      ; $6e49: $35
    rst $10                                       ; $6e4a: $d7
    sub h                                         ; $6e4b: $94
    ld a, $e5                                     ; $6e4c: $3e $e5
    or b                                          ; $6e4e: $b0
    or h                                          ; $6e4f: $b4
    ld d, l                                       ; $6e50: $55
    ld a, c                                       ; $6e51: $79
    ld b, d                                       ; $6e52: $42
    push af                                       ; $6e53: $f5
    ld e, d                                       ; $6e54: $5a
    or a                                          ; $6e55: $b7
    cp [hl]                                       ; $6e56: $be
    ld b, e                                       ; $6e57: $43
    adc l                                         ; $6e58: $8d
    adc l                                         ; $6e59: $8d
    or c                                          ; $6e5a: $b1
    db $db                                        ; $6e5b: $db
    rrca                                          ; $6e5c: $0f
    ld d, e                                       ; $6e5d: $53
    ld d, h                                       ; $6e5e: $54
    or l                                          ; $6e5f: $b5
    rra                                           ; $6e60: $1f
    and [hl]                                      ; $6e61: $a6
    di                                            ; $6e62: $f3
    call nc, $d29b                                ; $6e63: $d4 $9b $d2
    sub a                                         ; $6e66: $97
    ld l, [hl]                                    ; $6e67: $6e
    sbc $17                                       ; $6e68: $de $17
    ld l, c                                       ; $6e6a: $69
    cpl                                           ; $6e6b: $2f
    jr nc, jr_054_6eb2                            ; $6e6c: $30 $44

    ld a, l                                       ; $6e6e: $7d
    inc e                                         ; $6e6f: $1c
    ld b, [hl]                                    ; $6e70: $46
    cp h                                          ; $6e71: $bc
    ld a, [de]                                    ; $6e72: $1a
    ld c, l                                       ; $6e73: $4d
    ld sp, $16ef                                  ; $6e74: $31 $ef $16
    db $fd                                        ; $6e77: $fd
    sbc b                                         ; $6e78: $98
    adc $95                                       ; $6e79: $ce $95
    ld a, [hl]                                    ; $6e7b: $7e
    ld [hl+], a                                   ; $6e7c: $22
    ld l, [hl]                                    ; $6e7d: $6e
    rst $00                                       ; $6e7e: $c7
    ld [bc], a                                    ; $6e7f: $02
    sub a                                         ; $6e80: $97
    ld [hl+], a                                   ; $6e81: $22
    ld a, [hl-]                                   ; $6e82: $3a
    ld a, l                                       ; $6e83: $7d
    ldh [$ee], a                                  ; $6e84: $e0 $ee
    xor e                                         ; $6e86: $ab
    ld c, h                                       ; $6e87: $4c
    ei                                            ; $6e88: $fb
    sbc h                                         ; $6e89: $9c
    ld e, h                                       ; $6e8a: $5c
    cp e                                          ; $6e8b: $bb
    or e                                          ; $6e8c: $b3
    inc l                                         ; $6e8d: $2c
    and c                                         ; $6e8e: $a1
    ld a, c                                       ; $6e8f: $79
    rst $00                                       ; $6e90: $c7
    and d                                         ; $6e91: $a2
    ret c                                         ; $6e92: $d8

    jp $d30e                                      ; $6e93: $c3 $0e $d3


    ld a, c                                       ; $6e96: $79
    ld [hl], h                                    ; $6e97: $74
    xor [hl]                                      ; $6e98: $ae
    ld d, c                                       ; $6e99: $51
    and e                                         ; $6e9a: $a3
    cp a                                          ; $6e9b: $bf
    adc b                                         ; $6e9c: $88
    ld h, a                                       ; $6e9d: $67
    add hl, de                                    ; $6e9e: $19
    adc $4c                                       ; $6e9f: $ce $4c
    rst $20                                       ; $6ea1: $e7
    ld c, d                                       ; $6ea2: $4a
    ccf                                           ; $6ea3: $3f
    ld de, $63b7                                  ; $6ea4: $11 $b7 $63
    cp b                                          ; $6ea7: $b8
    sub h                                         ; $6ea8: $94
    and [hl]                                      ; $6ea9: $a6
    rla                                           ; $6eaa: $17
    dec c                                         ; $6eab: $0d
    ld [hl], a                                    ; $6eac: $77
    rst $20                                       ; $6ead: $e7
    sub e                                         ; $6eae: $93
    add hl, hl                                    ; $6eaf: $29
    ld a, l                                       ; $6eb0: $7d
    ld b, h                                       ; $6eb1: $44

jr_054_6eb2:
    rst $00                                       ; $6eb2: $c7
    adc l                                         ; $6eb3: $8d
    db $f4                                        ; $6eb4: $f4
    or b                                          ; $6eb5: $b0
    ld b, e                                       ; $6eb6: $43
    cpl                                           ; $6eb7: $2f
    inc b                                         ; $6eb8: $04
    nop                                           ; $6eb9: $00
    rst $18                                       ; $6eba: $df
    sub h                                         ; $6ebb: $94
    ld b, l                                       ; $6ebc: $45
    inc a                                         ; $6ebd: $3c
    jr nz, jr_054_6eff                            ; $6ebe: $20 $3f

    inc b                                         ; $6ec0: $04
    dec bc                                        ; $6ec1: $0b
    jr jr_054_6efb                                ; $6ec2: $18 $37

    ld [hl], l                                    ; $6ec4: $75
    add hl, bc                                    ; $6ec5: $09
    cp $f1                                        ; $6ec6: $fe $f1
    or b                                          ; $6ec8: $b0
    ld e, [hl]                                    ; $6ec9: $5e
    sub [hl]                                      ; $6eca: $96
    dec de                                        ; $6ecb: $1b
    and a                                         ; $6ecc: $a7
    inc l                                         ; $6ecd: $2c
    and e                                         ; $6ece: $a3
    dec sp                                        ; $6ecf: $3b
    ld l, $71                                     ; $6ed0: $2e $71
    db $ed                                        ; $6ed2: $ed
    rst $00                                       ; $6ed3: $c7
    add sp, -$2f                                  ; $6ed4: $e8 $d1
    cp c                                          ; $6ed6: $b9
    jp nc, $c44f                                  ; $6ed7: $d2 $4f $c4

    db $ed                                        ; $6eda: $ed
    ld e, b                                       ; $6edb: $58
    or h                                          ; $6edc: $b4
    jp Jump_000_2996                              ; $6edd: $c3 $96 $29


    ld a, l                                       ; $6ee0: $7d
    ld [hl], h                                    ; $6ee1: $74
    ld d, a                                       ; $6ee2: $57
    ld [hl], e                                    ; $6ee3: $73
    ld c, l                                       ; $6ee4: $4d
    add hl, sp                                    ; $6ee5: $39
    db $ec                                        ; $6ee6: $ec
    cp a                                          ; $6ee7: $bf
    sub $e8                                       ; $6ee8: $d6 $e8
    rst $10                                       ; $6eea: $d7
    jp c, $56d2                                   ; $6eeb: $da $d2 $56

    ld h, l                                       ; $6eee: $65
    adc b                                         ; $6eef: $88
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    ld e, a                                       ; $6ef2: $5f
    adc h                                         ; $6ef3: $8c
    jp c, $a7e1                                   ; $6ef4: $da $e1 $a7

    ld e, $de                                     ; $6ef7: $1e $de
    ld a, l                                       ; $6ef9: $7d
    add hl, de                                    ; $6efa: $19

jr_054_6efb:
    db $d3                                        ; $6efb: $d3
    push af                                       ; $6efc: $f5
    add hl, de                                    ; $6efd: $19
    ld [hl+], a                                   ; $6efe: $22

jr_054_6eff:
    ld a, l                                       ; $6eff: $7d

jr_054_6f00:
    inc e                                         ; $6f00: $1c
    halt                                          ; $6f01: $76
    sbc $3a                                       ; $6f02: $de $3a
    ld a, c                                       ; $6f04: $79
    adc a                                         ; $6f05: $8f
    and a                                         ; $6f06: $a7
    call z, Call_000_198b                         ; $6f07: $cc $8b $19
    adc a                                         ; $6f0a: $8f
    ld a, a                                       ; $6f0b: $7f
    dec de                                        ; $6f0c: $1b
    or l                                          ; $6f0d: $b5
    ld b, b                                       ; $6f0e: $40
    db $ed                                        ; $6f0f: $ed
    ld d, b                                       ; $6f10: $50
    ld [hl+], a                                   ; $6f11: $22
    db $10                                        ; $6f12: $10
    ld bc, $cd80                                  ; $6f13: $01 $80 $cd
    ld d, e                                       ; $6f16: $53
    ld a, [$2488]                                 ; $6f17: $fa $88 $24
    sub a                                         ; $6f1a: $97
    ld a, d                                       ; $6f1b: $7a
    or d                                          ; $6f1c: $b2
    adc [hl]                                      ; $6f1d: $8e
    jp $93e2                                      ; $6f1e: $c3 $e2 $93


    pop de                                        ; $6f21: $d1
    dec e                                         ; $6f22: $1d
    sub a                                         ; $6f23: $97
    ld a, b                                       ; $6f24: $78
    sub [hl]                                      ; $6f25: $96
    pop de                                        ; $6f26: $d1
    cp c                                          ; $6f27: $b9
    jp nc, $c44f                                  ; $6f28: $d2 $4f $c4

    db $ed                                        ; $6f2b: $ed
    cp b                                          ; $6f2c: $b8
    rla                                           ; $6f2d: $17
    ld [bc], a                                    ; $6f2e: $02
    db $dd                                        ; $6f2f: $dd
    ld a, [$036e]                                 ; $6f30: $fa $6e $03
    jr nc, jr_054_6f00                            ; $6f33: $30 $cb

    add sp, $5c                                   ; $6f35: $e8 $5c
    jp hl                                         ; $6f37: $e9


    daa                                           ; $6f38: $27
    ld [c], a                                     ; $6f39: $e2
    halt                                          ; $6f3a: $76
    xor h                                         ; $6f3b: $ac
    db $dd                                        ; $6f3c: $dd
    ld a, l                                       ; $6f3d: $7d
    sbc c                                         ; $6f3e: $99
    reti                                          ; $6f3f: $d9


    and l                                         ; $6f40: $a5
    ld e, l                                       ; $6f41: $5d
    ld c, $eb                                     ; $6f42: $0e $eb
    jr c, @-$12                                   ; $6f44: $38 $ec

    ld b, h                                       ; $6f46: $44
    cp l                                          ; $6f47: $bd
    dec [hl]                                      ; $6f48: $35
    xor a                                         ; $6f49: $af
    ld c, e                                       ; $6f4a: $4b
    ld c, [hl]                                    ; $6f4b: $4e
    db $f4                                        ; $6f4c: $f4
    ld a, [hl-]                                   ; $6f4d: $3a
    ld c, $4b                                     ; $6f4e: $0e $4b
    cp $39                                        ; $6f50: $fe $39
    db $ec                                        ; $6f52: $ec
    ld de, $2e49                                  ; $6f53: $11 $49 $2e
    push af                                       ; $6f56: $f5
    ld h, h                                       ; $6f57: $64
    dec e                                         ; $6f58: $1d
    add a                                         ; $6f59: $87
    ld b, l                                       ; $6f5a: $45
    ld e, l                                       ; $6f5b: $5d
    call nz, $3ba3                                ; $6f5c: $c4 $a3 $3b
    ld l, $f1                                     ; $6f5f: $2e $f1
    sub h                                         ; $6f61: $94
    inc bc                                        ; $6f62: $03
    ld b, h                                       ; $6f63: $44
    db $dd                                        ; $6f64: $dd
    ld a, [$4b5c]                                 ; $6f65: $fa $5c $4b
    or a                                          ; $6f68: $b7
    rst $08                                       ; $6f69: $cf
    inc a                                         ; $6f6a: $3c
    cp d                                          ; $6f6b: $ba
    xor a                                         ; $6f6c: $af
    ld [hl], $fe                                  ; $6f6d: $36 $fe
    ld l, l                                       ; $6f6f: $6d
    call nc, $d44e                                ; $6f70: $d4 $4e $d4
    ld e, e                                       ; $6f73: $5b
    db $f4                                        ; $6f74: $f4
    ld hl, sp+$63                                 ; $6f75: $f8 $63
    adc e                                         ; $6f77: $8b
    or l                                          ; $6f78: $b5
    db $eb                                        ; $6f79: $eb
    ld a, c                                       ; $6f7a: $79
    ld d, l                                       ; $6f7b: $55
    ld a, [de]                                    ; $6f7c: $1a
    adc b                                         ; $6f7d: $88
    nop                                           ; $6f7e: $00
    ld a, l                                       ; $6f7f: $7d
    inc e                                         ; $6f80: $1c
    and $5a                                       ; $6f81: $e6 $5a
    cp d                                          ; $6f83: $ba
    ld a, l                                       ; $6f84: $7d
    and $d1                                       ; $6f85: $e6 $d1
    cp c                                          ; $6f87: $b9
    jp nc, $c44f                                  ; $6f88: $d2 $4f $c4

    xor h                                         ; $6f8b: $ac
    db $dd                                        ; $6f8c: $dd
    ld de, $3e9d                                  ; $6f8d: $11 $9d $3e
    db $10                                        ; $6f90: $10
    ld bc, $893d                                  ; $6f91: $01 $3d $89
    pop af                                        ; $6f94: $f1
    add sp, $5c                                   ; $6f95: $e8 $5c
    jp hl                                         ; $6f97: $e9


    daa                                           ; $6f98: $27
    ld h, d                                       ; $6f99: $62
    sbc [hl]                                      ; $6f9a: $9e
    ld [hl], d                                    ; $6f9b: $72
    add sp, -$7b                                  ; $6f9c: $e8 $85
    nop                                           ; $6f9e: $00
    cp l                                          ; $6f9f: $bd
    push hl                                       ; $6fa0: $e5
    dec h                                         ; $6fa1: $25
    ld [hl], b                                    ; $6fa2: $70
    dec a                                         ; $6fa3: $3d
    ld c, a                                       ; $6fa4: $4f
    halt                                          ; $6fa5: $76
    ld e, $b3                                     ; $6fa6: $1e $b3
    ld [hl], a                                    ; $6fa8: $77
    adc e                                         ; $6fa9: $8b
    ld a, [hl]                                    ; $6faa: $7e
    ld c, h                                       ; $6fab: $4c
    rst $20                                       ; $6fac: $e7
    ld c, d                                       ; $6fad: $4a
    ccf                                           ; $6fae: $3f
    ld de, $63b7                                  ; $6faf: $11 $b7 $63
    add hl, de                                    ; $6fb2: $19
    ld c, c                                       ; $6fb3: $49
    dec c                                         ; $6fb4: $0d
    dec sp                                        ; $6fb5: $3b
    ld l, b                                       ; $6fb6: $68

jr_054_6fb7:
    sub a                                         ; $6fb7: $97
    jp $2cee                                      ; $6fb8: $c3 $ee $2c


    ld c, e                                       ; $6fbb: $4b
    ld l, b                                       ; $6fbc: $68
    sbc $b1                                       ; $6fbd: $de $b1
    jr z, jr_054_6fb7                             ; $6fbf: $28 $f6

    or b                                          ; $6fc1: $b0
    jp Jump_000_1e74                              ; $6fc2: $c3 $74 $1e


    sbc l                                         ; $6fc5: $9d
    ld l, e                                       ; $6fc6: $6b
    call nc, Call_000_2fe8                        ; $6fc7: $d4 $e8 $2f
    ld [c], a                                     ; $6fca: $e2
    ld e, c                                       ; $6fcb: $59
    ld d, $f5                                     ; $6fcc: $16 $f5
    add d                                         ; $6fce: $82
    ld c, e                                       ; $6fcf: $4b
    sub c                                         ; $6fd0: $91
    ld l, $9a                                     ; $6fd1: $2e $9a
    ld hl, $dd02                                  ; $6fd3: $21 $02 $dd
    sub [hl]                                      ; $6fd6: $96
    pop de                                        ; $6fd7: $d1
    cp c                                          ; $6fd8: $b9
    jp nc, $c44f                                  ; $6fd9: $d2 $4f $c4

    db $ed                                        ; $6fdc: $ed
    ld e, b                                       ; $6fdd: $58
    ld d, $3a                                     ; $6fde: $16 $3a
    ld e, l                                       ; $6fe0: $5d
    dec [hl]                                      ; $6fe1: $35
    push hl                                       ; $6fe2: $e5
    or b                                          ; $6fe3: $b0
    sub e                                         ; $6fe4: $93
    cp h                                          ; $6fe5: $bc
    add sp, -$0e                                  ; $6fe6: $e8 $f2
    ld [hl], d                                    ; $6fe8: $72
    ret c                                         ; $6fe9: $d8

    ld c, c                                       ; $6fea: $49
    ld e, [hl]                                    ; $6feb: $5e
    ld [hl], h                                    ; $6fec: $74
    add hl, de                                    ; $6fed: $19
    xor [hl]                                      ; $6fee: $ae
    adc a                                         ; $6fef: $8f
    jp $2b12                                      ; $6ff0: $c3 $12 $2b


    push hl                                       ; $6ff3: $e5
    ld a, [de]                                    ; $6ff4: $1a
    ld c, c                                       ; $6ff5: $49
    db $ed                                        ; $6ff6: $ed
    pop af                                        ; $6ff7: $f1
    sub h                                         ; $6ff8: $94
    ld b, a                                       ; $6ff9: $47
    cp h                                          ; $6ffa: $bc
    sbc d                                         ; $6ffb: $9a
    ld h, h                                       ; $6ffc: $64
    adc a                                         ; $6ffd: $8f
    and h                                         ; $6ffe: $a4
    sub [hl]                                      ; $6fff: $96
    cp $e9                                        ; $7000: $fe $e9
    or $33                                        ; $7002: $f6 $33
    dec sp                                        ; $7004: $3b
    sbc d                                         ; $7005: $9a
    ld [hl], a                                    ; $7006: $77
    ld [hl-], a                                   ; $7007: $32
    ld e, [hl]                                    ; $7008: $5e
    call nc, Call_000_3c45                        ; $7009: $d4 $45 $3c
    and d                                         ; $700c: $a2
    db $e3                                        ; $700d: $e3
    ld b, [hl]                                    ; $700e: $46
    ld a, d                                       ; $700f: $7a
    jp z, $2201                                   ; $7010: $ca $01 $22

    dec a                                         ; $7013: $3d
    xor a                                         ; $7014: $af
    ld c, d                                       ; $7015: $4a
    sub e                                         ; $7016: $93
    ld a, d                                       ; $7017: $7a
    dec a                                         ; $7018: $3d

jr_054_7019:
    ld c, c                                       ; $7019: $49
    ld l, $3a                                     ; $701a: $2e $3a
    rst $10                                       ; $701c: $d7
    ld e, h                                       ; $701d: $5c
    ld d, e                                       ; $701e: $53
    ld a, [$8c7e]                                 ; $701f: $fa $7e $8c
    sbc $17                                       ; $7022: $de $17
    pop af                                        ; $7024: $f1
    ld [hl], d                                    ; $7025: $72
    jr jr_054_7019                                ; $7026: $18 $f1

    ld l, d                                       ; $7028: $6a
    db $fc                                        ; $7029: $fc
    or c                                          ; $702a: $b1
    ld a, e                                       ; $702b: $7b
    ld hl, $55f7                                  ; $702c: $21 $f7 $55
    and [hl]                                      ; $702f: $a6
    ld a, l                                       ; $7030: $7d
    ld c, [hl]                                    ; $7031: $4e
    xor [hl]                                      ; $7032: $ae
    db $dd                                        ; $7033: $dd
    ld e, c                                       ; $7034: $59
    sub [hl]                                      ; $7035: $96
    ret nc                                        ; $7036: $d0

    cp h                                          ; $7037: $bc
    ld h, e                                       ; $7038: $63
    ld d, c                                       ; $7039: $51
    db $ec                                        ; $703a: $ec
    ld h, c                                       ; $703b: $61
    add a                                         ; $703c: $87
    pop de                                        ; $703d: $d1
    cp c                                          ; $703e: $b9
    ld b, [hl]                                    ; $703f: $46
    adc l                                         ; $7040: $8d
    cp $22                                        ; $7041: $fe $22
    sbc [hl]                                      ; $7043: $9e
    adc $23                                       ; $7044: $ce $23
    sub d                                         ; $7046: $92
    ld e, h                                       ; $7047: $5c
    ld [$3ac9], a                                 ; $7048: $ea $c9 $3a
    ld c, $8b                                     ; $704b: $0e $8b
    ld c, a                                       ; $704d: $4f
    ld b, [hl]                                    ; $704e: $46
    ld [hl], a                                    ; $704f: $77
    ld e, h                                       ; $7050: $5c
    ld [c], a                                     ; $7051: $e2
    pop de                                        ; $7052: $d1
    cp c                                          ; $7053: $b9
    jp nc, $c44f                                  ; $7054: $d2 $4f $c4

    db $ed                                        ; $7057: $ed
    ld e, b                                       ; $7058: $58
    sub [hl]                                      ; $7059: $96
    inc de                                        ; $705a: $13
    rst $10                                       ; $705b: $d7
    or b                                          ; $705c: $b0
    inc bc                                        ; $705d: $03
    ld e, h                                       ; $705e: $5c
    ld c, d                                       ; $705f: $4a
    db $d3                                        ; $7060: $d3
    adc e                                         ; $7061: $8b
    add [hl]                                      ; $7062: $86
    ld [$6429], sp                                ; $7063: $08 $29 $64
    ld d, a                                       ; $7066: $57
    dec c                                         ; $7067: $0d
    ccf                                           ; $7068: $3f
    push af                                       ; $7069: $f5
    ldh a, [$ee]                                  ; $706a: $f0 $ee
    sub h                                         ; $706c: $94
    ld c, a                                       ; $706d: $4f
    ld a, d                                       ; $706e: $7a
    inc h                                         ; $706f: $24
    or l                                          ; $7070: $b5
    db $f4                                        ; $7071: $f4
    ld c, a                                       ; $7072: $4f
    or a                                          ; $7073: $b7
    sbc a                                         ; $7074: $9f
    reti                                          ; $7075: $d9


    pop de                                        ; $7076: $d1
    inc c                                         ; $7077: $0c
    sub a                                         ; $7078: $97
    ld [c], a                                     ; $7079: $e2
    ld a, b                                       ; $707a: $78
    ld a, [hl-]                                   ; $707b: $3a
    ld e, c                                       ; $707c: $59
    inc l                                         ; $707d: $2c
    and e                                         ; $707e: $a3
    ld [hl], e                                    ; $707f: $73
    dec l                                         ; $7080: $2d
    sub e                                         ; $7081: $93
    db $e4                                        ; $7082: $e4
    ld l, c                                       ; $7083: $69
    cpl                                           ; $7084: $2f
    sbc h                                         ; $7085: $9c
    call nz, Call_054_4715                        ; $7086: $c4 $15 $47
    cp h                                          ; $7089: $bc
    ld e, d                                       ; $708a: $5a
    ld a, b                                       ; $708b: $78
    ld [hl], d                                    ; $708c: $72
    and d                                         ; $708d: $a2
    sub a                                         ; $708e: $97
    xor [hl]                                      ; $708f: $ae
    scf                                           ; $7090: $37
    push hl                                       ; $7091: $e5
    jr z, @+$61                                   ; $7092: $28 $5f

    jp nz, Jump_000_325e                          ; $7094: $c2 $5e $32

    sbc h                                         ; $7097: $9c
    sbc c                                         ; $7098: $99
    adc $95                                       ; $7099: $ce $95
    ld a, [hl]                                    ; $709b: $7e
    ld [hl+], a                                   ; $709c: $22
    ld l, [hl]                                    ; $709d: $6e
    rst $00                                       ; $709e: $c7
    dec b                                         ; $709f: $05
    ld de, $cd80                                  ; $70a0: $11 $80 $cd
    ld d, e                                       ; $70a3: $53
    ld a, [$2488]                                 ; $70a4: $fa $88 $24
    sub a                                         ; $70a7: $97
    ld a, d                                       ; $70a8: $7a
    or d                                          ; $70a9: $b2
    adc [hl]                                      ; $70aa: $8e
    jp $93e2                                      ; $70ab: $c3 $e2 $93


    pop de                                        ; $70ae: $d1
    dec e                                         ; $70af: $1d
    sub a                                         ; $70b0: $97
    ld a, b                                       ; $70b1: $78
    sub [hl]                                      ; $70b2: $96
    pop de                                        ; $70b3: $d1
    cp c                                          ; $70b4: $b9
    jp nc, $c44f                                  ; $70b5: $d2 $4f $c4

    db $ed                                        ; $70b8: $ed
    cp b                                          ; $70b9: $b8
    rla                                           ; $70ba: $17
    ld [bc], a                                    ; $70bb: $02
    rst $30                                       ; $70bc: $f7
    ld hl, sp-$3d                                 ; $70bd: $f8 $c3
    db $dd                                        ; $70bf: $dd
    dec de                                        ; $70c0: $1b
    or $63                                        ; $70c1: $f6 $63

Call_054_70c3:
    db $f4                                        ; $70c3: $f4
    ld h, d                                       ; $70c4: $62
    add $e3                                       ; $70c5: $c6 $e3
    rst $18                                       ; $70c7: $df
    jp nc, Jump_054_7a2f                          ; $70c8: $d2 $2f $7a

    db $fc                                        ; $70cb: $fc
    db $db                                        ; $70cc: $db
    ld a, d                                       ; $70cd: $7a
    rst $10                                       ; $70ce: $d7
    and a                                         ; $70cf: $a7
    jp hl                                         ; $70d0: $e9


    cpl                                           ; $70d1: $2f
    ld h, c                                       ; $70d2: $61
    ret c                                         ; $70d3: $d8

    ld l, d                                       ; $70d4: $6a
    jp z, $9da2                                   ; $70d5: $ca $a2 $9d

    ld l, e                                       ; $70d8: $6b
    ld c, d                                       ; $70d9: $4a
    rst $18                                       ; $70da: $df
    sub c                                         ; $70db: $91
    rst $18                                       ; $70dc: $df
    ld a, [de]                                    ; $70dd: $1a
    ld b, h                                       ; $70de: $44
    rst $30                                       ; $70df: $f7
    ld hl, sp+$6b                                 ; $70e0: $f8 $6b
    and a                                         ; $70e2: $a7
    call z, $5e23                                 ; $70e3: $cc $23 $5e
    dec l                                         ; $70e6: $2d
    ld sp, hl                                     ; $70e7: $f9
    ei                                            ; $70e8: $fb
    ld sp, $ad7a                                  ; $70e9: $31 $7a $ad
    xor a                                         ; $70ec: $af
    ld [c], a                                     ; $70ed: $e2
    ld e, c                                       ; $70ee: $59
    add h                                         ; $70ef: $84
    add d                                         ; $70f0: $82
    ld [$6880], sp                                ; $70f1: $08 $80 $68
    ld a, d                                       ; $70f4: $7a
    ld [$f5c1], a                                 ; $70f5: $ea $c1 $f5
    inc h                                         ; $70f8: $24
    rst $38                                       ; $70f9: $ff
    ld c, h                                       ; $70fa: $4c
    jp hl                                         ; $70fb: $e9


    ld [hl], e                                    ; $70fc: $73
    adc l                                         ; $70fd: $8d

Jump_054_70fe:
    adc $95                                       ; $70fe: $ce $95
    ld a, [hl]                                    ; $7100: $7e
    ld [hl+], a                                   ; $7101: $22
    ld h, [hl]                                    ; $7102: $66
    db $ed                                        ; $7103: $ed
    ld c, $35                                     ; $7104: $0e $35
    ld [hl+], a                                   ; $7106: $22
    scf                                           ; $7107: $37
    dec [hl]                                      ; $7108: $35
    push hl                                       ; $7109: $e5
    jr nc, jr_054_7169                            ; $710a: $30 $5d

    db $e4                                        ; $710c: $e4
    dec c                                         ; $710d: $0d
    dec sp                                        ; $710e: $3b
    and h                                         ; $710f: $a4
    ld b, [hl]                                    ; $7110: $46
    ld [hl], a                                    ; $7111: $77
    ld e, e                                       ; $7112: $5b
    call $9c32                                    ; $7113: $cd $32 $9c

Call_054_7116:
    sbc c                                         ; $7116: $99
    adc $95                                       ; $7117: $ce $95
    ld a, [hl]                                    ; $7119: $7e
    ld [hl+], a                                   ; $711a: $22
    ld l, [hl]                                    ; $711b: $6e
    rst $00                                       ; $711c: $c7
    jp c, Jump_054_6a1d                           ; $711d: $da $1d $6a

    or c                                          ; $7120: $b1
    cp l                                          ; $7121: $bd
    ld h, d                                       ; $7122: $62
    adc b                                         ; $7123: $88
    nop                                           ; $7124: $00
    rst $30                                       ; $7125: $f7
    ld d, l                                       ; $7126: $55
    and [hl]                                      ; $7127: $a6
    ld a, l                                       ; $7128: $7d
    ld c, [hl]                                    ; $7129: $4e
    xor [hl]                                      ; $712a: $ae
    db $dd                                        ; $712b: $dd
    ld e, c                                       ; $712c: $59
    sub [hl]                                      ; $712d: $96
    ret nc                                        ; $712e: $d0

    cp h                                          ; $712f: $bc
    call nz, Call_054_653c                        ; $7130: $c4 $3c $65
    sbc $f9                                       ; $7133: $de $f9
    ld sp, $18ba                                  ; $7135: $31 $ba $18
    ld [hl+], a                                   ; $7138: $22
    add hl, hl                                    ; $7139: $29
    ld e, $49                                     ; $713a: $1e $49
    dec l                                         ; $713c: $2d
    db $fd                                        ; $713d: $fd
    db $d3                                        ; $713e: $d3
    db $ed                                        ; $713f: $ed
    ld h, a                                       ; $7140: $67
    halt                                          ; $7141: $76
    inc [hl]                                      ; $7142: $34
    jp Jump_054_7b75                              ; $7143: $c3 $75 $7b


    call nz, $a5ab                                ; $7146: $c4 $ab $a5
    cp e                                          ; $7149: $bb
    and d                                         ; $714a: $a2
    ld l, e                                       ; $714b: $6b
    add hl, de                                    ; $714c: $19
    rst $28                                       ; $714d: $ef
    dec [hl]                                      ; $714e: $35
    add [hl]                                      ; $714f: $86
    ld [$1c7d], sp                                ; $7150: $08 $7d $1c
    ld d, $33                                     ; $7153: $16 $33
    add $ae                                       ; $7155: $c6 $ae
    pop de                                        ; $7157: $d1
    cp c                                          ; $7158: $b9
    ld b, [hl]                                    ; $7159: $46
    db $ed                                        ; $715a: $ed
    inc [hl]                                      ; $715b: $34
    ld l, d                                       ; $715c: $6a
    sbc c                                         ; $715d: $99
    inc h                                         ; $715e: $24
    ld b, a                                       ; $715f: $47
    inc h                                         ; $7160: $24
    cp c                                          ; $7161: $b9
    call nc, Call_054_5993                        ; $7162: $d4 $93 $59
    ld b, [hl]                                    ; $7165: $46
    ld [hl], a                                    ; $7166: $77
    ld e, h                                       ; $7167: $5c
    ld [c], a                                     ; $7168: $e2

jr_054_7169:
    sbc d                                         ; $7169: $9a
    ld h, l                                       ; $716a: $65
    ld [hl], h                                    ; $716b: $74
    xor [hl]                                      ; $716c: $ae
    db $f4                                        ; $716d: $f4
    inc de                                        ; $716e: $13
    ld [hl], c                                    ; $716f: $71
    dec sp                                        ; $7170: $3b
    add [hl]                                      ; $7171: $86
    ld c, e                                       ; $7172: $4b
    ld de, $3e9d                                  ; $7173: $11 $9d $3e
    db $10                                        ; $7176: $10
    ld bc, $6fdd                                  ; $7177: $01 $dd $6f
    ret                                           ; $717a: $c9


    ld l, a                                       ; $717b: $6f
    call Call_000_38eb                            ; $717c: $cd $eb $38
    ld c, h                                       ; $717f: $4c
    ld [hl], d                                    ; $7180: $72
    pop hl                                        ; $7181: $e1
    rst $10                                       ; $7182: $d7
    ld a, b                                       ; $7183: $78
    call nz, Call_054_611b                        ; $7184: $c4 $1b $61
    ld c, c                                       ; $7187: $49
    cp $e1                                        ; $7188: $fe $e1
    add hl, hl                                    ; $718a: $29
    add a                                         ; $718b: $87
    pop af                                        ; $718c: $f1
    ld l, a                                       ; $718d: $6f
    db $eb                                        ; $718e: $eb
    and c                                         ; $718f: $a1
    ld b, h                                       ; $7190: $44
    and l                                         ; $7191: $a5
    ld [hl], e                                    ; $7192: $73
    ld e, h                                       ; $7193: $5c
    add $c3                                       ; $7194: $c6 $c3
    sbc c                                         ; $7196: $99
    jp hl                                         ; $7197: $e9


    ld e, h                                       ; $7198: $5c
    jp hl                                         ; $7199: $e9


    daa                                           ; $719a: $27
    ld [c], a                                     ; $719b: $e2
    halt                                          ; $719c: $76
    ld e, h                                       ; $719d: $5c
    jp c, Jump_054_513d                           ; $719e: $da $3d $51

    push hl                                       ; $71a1: $e5
    cp l                                          ; $71a2: $bd
    ld c, [hl]                                    ; $71a3: $4e
    sub $8b                                       ; $71a4: $d6 $8b
    xor $2a                                       ; $71a6: $ee $2a
    or $72                                        ; $71a8: $f6 $72
    ld e, b                                       ; $71aa: $58
    add hl, sp                                    ; $71ab: $39
    ld sp, hl                                     ; $71ac: $f9
    jp z, $9ec5                                   ; $71ad: $ca $c5 $9e

    adc $e1                                       ; $71b0: $ce $e1
    dec h                                         ; $71b2: $25
    sub $0e                                       ; $71b3: $d6 $0e
    ld e, e                                       ; $71b5: $5b
    and [hl]                                      ; $71b6: $a6
    inc l                                         ; $71b7: $2c
    inc hl                                        ; $71b8: $23
    ld e, [hl]                                    ; $71b9: $5e
    dec l                                         ; $71ba: $2d
    jp hl                                         ; $71bb: $e9


    xor e                                         ; $71bc: $ab
    ld a, b                                       ; $71bd: $78
    jp hl                                         ; $71be: $e9


    ld e, h                                       ; $71bf: $5c
    db $ec                                        ; $71c0: $ec
    pop de                                        ; $71c1: $d1
    push af                                       ; $71c2: $f5
    ld b, [hl]                                    ; $71c3: $46
    ld l, b                                       ; $71c4: $68
    ld e, d                                       ; $71c5: $5a
    or e                                          ; $71c6: $b3
    ld a, b                                       ; $71c7: $78
    sub [hl]                                      ; $71c8: $96
    dec e                                         ; $71c9: $1d
    sub $45                                       ; $71ca: $d6 $45
    ld b, c                                       ; $71cc: $41
    inc b                                         ; $71cd: $04
    dec a                                         ; $71ce: $3d
    adc c                                         ; $71cf: $89
    pop af                                        ; $71d0: $f1
    adc b                                         ; $71d1: $88
    ld d, a                                       ; $71d2: $57
    ld l, e                                       ; $71d3: $6b
    sub h                                         ; $71d4: $94
    ldh a, [$94]                                  ; $71d5: $f0 $94
    and l                                         ; $71d7: $a5
    rst $10                                       ; $71d8: $d7
    ld d, d                                       ; $71d9: $52
    sbc d                                         ; $71da: $9a
    ld e, [hl]                                    ; $71db: $5e
    inc [hl]                                      ; $71dc: $34
    ld b, h                                       ; $71dd: $44
    ld [hl], a                                    ; $71de: $77
    ld c, b                                       ; $71df: $48
    or b                                          ; $71e0: $b0
    ret nz                                        ; $71e1: $c0

    db $dd                                        ; $71e2: $dd
    ld h, $6c                                     ; $71e3: $26 $6c
    sbc c                                         ; $71e5: $99
    ld l, e                                       ; $71e6: $6b
    jp z, $c3b2                                   ; $71e7: $ca $b2 $c3

    dec e                                         ; $71ea: $1d
    xor d                                         ; $71eb: $aa
    sbc c                                         ; $71ec: $99
    or l                                          ; $71ed: $b5
    ld [hl], e                                    ; $71ee: $73
    ld l, e                                       ; $71ef: $6b
    xor [hl]                                      ; $71f0: $ae
    ld c, c                                       ; $71f1: $49
    or [hl]                                       ; $71f2: $b6
    adc h                                         ; $71f3: $8c
    ld a, b                                       ; $71f4: $78

Jump_054_71f5:
    or l                                          ; $71f5: $b5
    ret nc                                        ; $71f6: $d0

    ret                                           ; $71f7: $c9


    push bc                                       ; $71f8: $c5
    ld d, e                                       ; $71f9: $53
    and $d1                                       ; $71fa: $e6 $d1
    cp c                                          ; $71fc: $b9
    add [hl]                                      ; $71fd: $86
    ld [hl], e                                    ; $71fe: $73
    push hl                                       ; $71ff: $e5
    sbc l                                         ; $7200: $9d
    xor b                                         ; $7201: $a8
    ld l, c                                       ; $7202: $69
    ld a, [bc]                                    ; $7203: $0a
    xor [hl]                                      ; $7204: $ae
    adc a                                         ; $7205: $8f
    jp Jump_054_5788                              ; $7206: $c3 $88 $57


    db $e3                                        ; $7209: $e3
    rst $18                                       ; $720a: $df
    sub [hl]                                      ; $720b: $96
    jp $d5b0                                      ; $720c: $c3 $b0 $d5


    ld [hl], h                                    ; $720f: $74
    ld l, [hl]                                    ; $7210: $6e
    add hl, sp                                    ; $7211: $39
    ld d, c                                       ; $7212: $51
    or e                                          ; $7213: $b3
    inc l                                         ; $7214: $2c
    db $ed                                        ; $7215: $ed
    sub $25                                       ; $7216: $d6 $25
    ld a, [c]                                     ; $7218: $f2
    dec h                                         ; $7219: $25
    adc h                                         ; $721a: $8c
    adc $35                                       ; $721b: $ce $35
    ld l, d                                       ; $721d: $6a
    inc [hl]                                      ; $721e: $34
    dec [hl]                                      ; $721f: $35
    ld h, l                                       ; $7220: $65
    reti                                          ; $7221: $d9


    rrca                                          ; $7222: $0f
    dec e                                         ; $7223: $1d
    dec bc                                        ; $7224: $0b
    call c, Call_054_61bd                         ; $7225: $dc $bd $61
    ld e, a                                       ; $7228: $5f
    add d                                         ; $7229: $82
    ld h, l                                       ; $722a: $65
    and a                                         ; $722b: $a7
    jp hl                                         ; $722c: $e9


    ld b, l                                       ; $722d: $45
    ld a, a                                       ; $722e: $7f
    add hl, bc                                    ; $722f: $09
    inc hl                                        ; $7230: $23
    xor c                                         ; $7231: $a9
    and l                                         ; $7232: $a5
    ld a, a                                       ; $7233: $7f
    cp d                                          ; $7234: $ba
    db $fd                                        ; $7235: $fd
    call z, Call_054_668e                         ; $7236: $cc $8e $66
    db $ed                                        ; $7239: $ed
    ld hl, sp-$3b                                 ; $723a: $f8 $c5
    ld [$f711], sp                                ; $723c: $08 $11 $f7
    sbc $a9                                       ; $723f: $de $a9
    ld e, l                                       ; $7241: $5d
    ld l, a                                       ; $7242: $6f
    ld a, c                                       ; $7243: $79
    adc c                                         ; $7244: $89
    halt                                          ; $7245: $76
    ld b, d                                       ; $7246: $42
    adc l                                         ; $7247: $8d
    ld a, b                                       ; $7248: $78
    dec [hl]                                      ; $7249: $35
    and l                                         ; $724a: $a5
    adc a                                         ; $724b: $8f
    ld a, b                                       ; $724c: $78
    call z, $b9c3                                 ; $724d: $cc $c3 $b9
    ld a, [c]                                     ; $7250: $f2
    sbc e                                         ; $7251: $9b
    ld a, [$e0bb]                                 ; $7252: $fa $bb $e0
    ld c, b                                       ; $7255: $48
    rla                                           ; $7256: $17
    call $c217                                    ; $7257: $cd $17 $c2
    db $dd                                        ; $725a: $dd
    sbc [hl]                                      ; $725b: $9e
    adc e                                         ; $725c: $8b
    db $dd                                        ; $725d: $dd

Jump_054_725e:
    jp c, $c3b0                                   ; $725e: $da $b0 $c3

    add h                                         ; $7261: $84
    ld a, [de]                                    ; $7262: $1a
    sub c                                         ; $7263: $91
    db $e4                                        ; $7264: $e4
    ld d, d                                       ; $7265: $52
    ld c, a                                       ; $7266: $4f
    sub $71                                       ; $7267: $d6 $71
    ld e, b                                       ; $7269: $58
    cp d                                          ; $726a: $ba
    db $fd                                        ; $726b: $fd
    ld e, d                                       ; $726c: $5a
    ld c, h                                       ; $726d: $4c
    ld a, $f3                                     ; $726e: $3e $f3
    sub h                                         ; $7270: $94
    ld b, l                                       ; $7271: $45
    inc a                                         ; $7272: $3c
    ld a, [hl-]                                   ; $7273: $3a
    ld d, a                                       ; $7274: $57
    ld a, [$b889]                                 ; $7275: $fa $89 $b8
    dec e                                         ; $7278: $1d
    ld c, e                                       ; $7279: $4b
    cpl                                           ; $727a: $2f
    inc b                                         ; $727b: $04
    dec a                                         ; $727c: $3d
    xor a                                         ; $727d: $af
    and [hl]                                      ; $727e: $a6
    inc l                                         ; $727f: $2c
    ld l, e                                       ; $7280: $6b
    cp a                                          ; $7281: $bf
    dec [hl]                                      ; $7282: $35
    and a                                         ; $7283: $a7
    ccf                                           ; $7284: $3f
    or e                                          ; $7285: $b3
    ld b, a                                       ; $7286: $47
    ld [hl], a                                    ; $7287: $77
    push de                                       ; $7288: $d5
    ld h, c                                       ; $7289: $61
    rst $00                                       ; $728a: $c7
    or $ce                                        ; $728b: $f6 $ce
    ld sp, hl                                     ; $728d: $f9
    ld c, l                                       ; $728e: $4d
    ccf                                           ; $728f: $3f
    pop de                                        ; $7290: $d1
    or d                                          ; $7291: $b2
    ld h, e                                       ; $7292: $63
    and $91                                       ; $7293: $e6 $91
    call nc, Call_000_3fd2                        ; $7295: $d4 $d2 $3f
    db $dd                                        ; $7298: $dd
    ld a, [hl]                                    ; $7299: $7e
    ld h, [hl]                                    ; $729a: $66
    ld b, a                                       ; $729b: $47
    ld [hl], e                                    ; $729c: $73
    cpl                                           ; $729d: $2f
    inc b                                         ; $729e: $04
    ld a, l                                       ; $729f: $7d
    sbc [hl]                                      ; $72a0: $9e
    halt                                          ; $72a1: $76
    jp z, $f6b2                                   ; $72a2: $ca $b2 $f6

    ld e, e                                       ; $72a5: $5b
    ld [hl], e                                    ; $72a6: $73
    ld a, [$92ef]                                 ; $72a7: $fa $ef $92
    push af                                       ; $72aa: $f5
    ld b, l                                       ; $72ab: $45
    ld l, b                                       ; $72ac: $68
    rst $10                                       ; $72ad: $d7
    ld a, c                                       ; $72ae: $79
    jp c, $1c75                                   ; $72af: $da $75 $1c

    ld b, [hl]                                    ; $72b2: $46
    cp h                                          ; $72b3: $bc
    sbc d                                         ; $72b4: $9a

Call_054_72b5:
    ld [hl-], a                                   ; $72b5: $32
    jp $6ddd                                      ; $72b6: $c3 $dd $6d


    sbc c                                         ; $72b9: $99
    or d                                          ; $72ba: $b2
    xor h                                         ; $72bb: $ac
    ld a, [hl]                                    ; $72bc: $7e
    db $e4                                        ; $72bd: $e4
    rra                                           ; $72be: $1f
    cp h                                          ; $72bf: $bc
    ld [hl], h                                    ; $72c0: $74
    adc [hl]                                      ; $72c1: $8e
    ld l, a                                       ; $72c2: $6f
    xor [hl]                                      ; $72c3: $ae
    db $fd                                        ; $72c4: $fd
    jr jr_054_7304                                ; $72c5: $18 $3d

    push hl                                       ; $72c7: $e5
    add d                                         ; $72c8: $82
    cp e                                          ; $72c9: $bb
    sbc c                                         ; $72ca: $99
    ld c, a                                       ; $72cb: $4f
    daa                                           ; $72cc: $27
    rst $20                                       ; $72cd: $e7
    call nc, Call_054_7d08                        ; $72ce: $d4 $08 $7d
    inc e                                         ; $72d1: $1c
    ld b, [hl]                                    ; $72d2: $46
    cp h                                          ; $72d3: $bc
    sbc d                                         ; $72d4: $9a
    or d                                          ; $72d5: $b2
    db $ec                                        ; $72d6: $ec
    rst $00                                       ; $72d7: $c7
    ld l, b                                       ; $72d8: $68
    cp b                                          ; $72d9: $b8
    dec sp                                        ; $72da: $3b
    ld h, d                                       ; $72db: $62
    db $f4                                        ; $72dc: $f4
    ld e, [hl]                                    ; $72dd: $5e
    adc h                                         ; $72de: $8c
    ld a, d                                       ; $72df: $7a
    dec a                                         ; $72e0: $3d
    sbc [hl]                                      ; $72e1: $9e
    ld d, b                                       ; $72e2: $50
    jp c, $d7fd                                   ; $72e3: $da $fd $d7

    ld a, [de]                                    ; $72e6: $1a
    db $fd                                        ; $72e7: $fd
    ld e, d                                       ; $72e8: $5a
    add e                                         ; $72e9: $83
    db $eb                                        ; $72ea: $eb
    ld c, c                                       ; $72eb: $49
    ld [hl], d                                    ; $72ec: $72
    dec l                                         ; $72ed: $2d
    ld a, $99                                     ; $72ee: $3e $99
    or d                                          ; $72f0: $b2
    inc l                                         ; $72f1: $2c
    jp hl                                         ; $72f2: $e9


    xor e                                         ; $72f3: $ab
    call c, Call_054_776b                         ; $72f4: $dc $6b $77
    ld a, $39                                     ; $72f7: $3e $39
    or c                                          ; $72f9: $b1
    db $e3                                        ; $72fa: $e3
    ld e, c                                       ; $72fb: $59
    ld d, $32                                     ; $72fc: $16 $32
    ld h, $d7                                     ; $72fe: $26 $d7
    ld a, h                                       ; $7300: $7c
    ld e, h                                       ; $7301: $5c
    ei                                            ; $7302: $fb
    ld d, e                                       ; $7303: $53

jr_054_7304:
    ld d, $08                                     ; $7304: $16 $08
    ld hl, $7d02                                  ; $7306: $21 $02 $7d
    inc e                                         ; $7309: $1c
    ld b, [hl]                                    ; $730a: $46
    cp h                                          ; $730b: $bc
    ld a, [de]                                    ; $730c: $1a
    ld c, l                                       ; $730d: $4d
    ld sp, $16ef                                  ; $730e: $31 $ef $16
    db $fd                                        ; $7311: $fd
    sbc b                                         ; $7312: $98
    adc $95                                       ; $7313: $ce $95
    ld a, [hl]                                    ; $7315: $7e
    ld [hl+], a                                   ; $7316: $22
    ld l, [hl]                                    ; $7317: $6e
    rst $00                                       ; $7318: $c7
    ld [bc], a                                    ; $7319: $02
    sub a                                         ; $731a: $97
    ld [hl+], a                                   ; $731b: $22
    ld a, [hl-]                                   ; $731c: $3a
    ld a, l                                       ; $731d: $7d
    ldh [$ee], a                                  ; $731e: $e0 $ee
    xor e                                         ; $7320: $ab
    ld c, h                                       ; $7321: $4c
    ei                                            ; $7322: $fb
    sbc h                                         ; $7323: $9c
    ld e, h                                       ; $7324: $5c
    cp e                                          ; $7325: $bb
    or e                                          ; $7326: $b3
    inc l                                         ; $7327: $2c
    and c                                         ; $7328: $a1
    ld a, c                                       ; $7329: $79
    rst $00                                       ; $732a: $c7
    and d                                         ; $732b: $a2
    ret c                                         ; $732c: $d8

    jp $d30e                                      ; $732d: $c3 $0e $d3


    ld a, c                                       ; $7330: $79
    ld [hl], h                                    ; $7331: $74
    xor [hl]                                      ; $7332: $ae
    ld d, c                                       ; $7333: $51
    and e                                         ; $7334: $a3
    cp a                                          ; $7335: $bf
    adc b                                         ; $7336: $88
    ld h, a                                       ; $7337: $67
    add hl, de                                    ; $7338: $19
    adc $4c                                       ; $7339: $ce $4c
    rst $20                                       ; $733b: $e7
    ld c, d                                       ; $733c: $4a
    ccf                                           ; $733d: $3f
    ld de, $63b7                                  ; $733e: $11 $b7 $63
    cp b                                          ; $7341: $b8
    sub h                                         ; $7342: $94
    and [hl]                                      ; $7343: $a6
    rla                                           ; $7344: $17
    dec c                                         ; $7345: $0d
    ld [hl], a                                    ; $7346: $77
    rst $20                                       ; $7347: $e7
    sub e                                         ; $7348: $93
    add hl, hl                                    ; $7349: $29
    ld a, l                                       ; $734a: $7d
    ld b, h                                       ; $734b: $44
    rst $00                                       ; $734c: $c7
    adc l                                         ; $734d: $8d
    db $f4                                        ; $734e: $f4
    or b                                          ; $734f: $b0
    ld b, e                                       ; $7350: $43
    cpl                                           ; $7351: $2f
    inc b                                         ; $7352: $04
    rst $30                                       ; $7353: $f7
    cp l                                          ; $7354: $bd
    ld [hl], e                                    ; $7355: $73
    and [hl]                                      ; $7356: $a6
    inc e                                         ; $7357: $1c
    ld b, [hl]                                    ; $7358: $46
    rst $20                                       ; $7359: $e7
    ld e, d                                       ; $735a: $5a
    rst $28                                       ; $735b: $ef
    adc h                                         ; $735c: $8c
    ret                                           ; $735d: $c9


    call c, $f872                                 ; $735e: $dc $72 $f8
    rst $20                                       ; $7361: $e7
    dec [hl]                                      ; $7362: $35
    dec bc                                        ; $7363: $0b
    ld e, h                                       ; $7364: $5c
    ld l, a                                       ; $7365: $6f
    ld a, c                                       ; $7366: $79
    ret                                           ; $7367: $c9


    add sp, -$5a                                  ; $7368: $e8 $a6
    xor c                                         ; $736a: $a9
    jp hl                                         ; $736b: $e9


    add a                                         ; $736c: $87
    sbc a                                         ; $736d: $9f
    inc e                                         ; $736e: $1c
    or a                                          ; $736f: $b7
    rra                                           ; $7370: $1f
    and [hl]                                      ; $7371: $a6
    di                                            ; $7372: $f3
    ld [hl], d                                    ; $7373: $72
    ret c                                         ; $7374: $d8

    rla                                           ; $7375: $17
    sbc c                                         ; $7376: $99
    ld [hl], d                                    ; $7377: $72
    db $ed                                        ; $7378: $ed
    ld c, a                                       ; $7379: $4f
    sbc c                                         ; $737a: $99
    ld [hl], a                                    ; $737b: $77
    cp $61                                        ; $737c: $fe $61
    ld l, e                                       ; $737e: $6b
    ld b, a                                       ; $737f: $47
    cp h                                          ; $7380: $bc
    ld e, d                                       ; $7381: $5a
    rst $00                                       ; $7382: $c7
    ld h, c                                       ; $7383: $61
    rst $00                                       ; $7384: $c7
    call z, $0110                                 ; $7385: $cc $10 $01
    ld [hl], a                                    ; $7388: $77
    sbc c                                         ; $7389: $99
    ld e, l                                       ; $738a: $5d
    ld d, e                                       ; $738b: $53
    ld a, [$eccc]                                 ; $738c: $fa $cc $ec
    ld e, d                                       ; $738f: $5a
    ei                                            ; $7390: $fb
    call z, Call_000_3e6b                         ; $7391: $cc $6b $3e
    ld a, $9c                                     ; $7394: $3e $9c
    ld l, c                                       ; $7396: $69
    cp d                                          ; $7397: $ba
    rla                                           ; $7398: $17
    ld [bc], a                                    ; $7399: $02
    dec a                                         ; $739a: $3d
    ld c, c                                       ; $739b: $49
    xor [hl]                                      ; $739c: $ae
    cp c                                          ; $739d: $b9
    sub [hl]                                      ; $739e: $96
    adc $f1                                       ; $739f: $ce $f1
    ld l, c                                       ; $73a1: $69
    rst $10                                       ; $73a2: $d7

Call_054_73a3:
Jump_054_73a3:
    ld e, e                                       ; $73a3: $5b
    ld e, [hl]                                    ; $73a4: $5e
    jp nc, $010b                                  ; $73a5: $d2 $0b $01

    db $fd                                        ; $73a8: $fd
    xor [hl]                                      ; $73a9: $ae
    ld sp, hl                                     ; $73aa: $f9
    ld a, b                                       ; $73ab: $78
    xor [hl]                                      ; $73ac: $ae
    dec e                                         ; $73ad: $1d
    ld l, d                                       ; $73ae: $6a
    or c                                          ; $73af: $b1
    ld h, e                                       ; $73b0: $63
    push hl                                       ; $73b1: $e5
    or $03                                        ; $73b2: $f6 $03
    call c, $d57d                                 ; $73b4: $dc $7d $d5
    sub l                                         ; $73b7: $95

jr_054_73b8:
    inc c                                         ; $73b8: $0c
    ld e, e                                       ; $73b9: $5b
    xor l                                         ; $73ba: $ad
    ld a, l                                       ; $73bb: $7d
    and $01                                       ; $73bc: $e6 $01
    inc b                                         ; $73be: $04
    cp h                                          ; $73bf: $bc
    ld a, a                                       ; $73c0: $7f
    ret c                                         ; $73c1: $d8

    jp z, $1102                                   ; $73c2: $ca $02 $11

    add hl, hl                                    ; $73c5: $29
    sbc $a1                                       ; $73c6: $de $a1
    or h                                          ; $73c8: $b4
    db $eb                                        ; $73c9: $eb
    ld a, c                                       ; $73ca: $79
    ld d, l                                       ; $73cb: $55
    ld a, [de]                                    ; $73cc: $1a
    db $ed                                        ; $73cd: $ed
    call nz, Call_000_2d87                        ; $73ce: $c4 $87 $2d
    ld l, e                                       ; $73d1: $6b
    ccf                                           ; $73d2: $3f
    ld a, d                                       ; $73d3: $7a
    ld hl, $9dab                                  ; $73d4: $21 $ab $9d
    adc h                                         ; $73d7: $8c
    daa                                           ; $73d8: $27
    ld a, [de]                                    ; $73d9: $1a
    adc b                                         ; $73da: $88
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    ld e, a                                       ; $73dd: $5f
    adc h                                         ; $73de: $8c
    ld [hl], b                                    ; $73df: $70
    add hl, hl                                    ; $73e0: $29
    ld c, l                                       ; $73e1: $4d
    cpl                                           ; $73e2: $2f
    ld a, [de]                                    ; $73e3: $1a
    ld [hl+], a                                   ; $73e4: $22
    add hl, hl                                    ; $73e5: $29
    add hl, de                                    ; $73e6: $19
    xor a                                         ; $73e7: $af
    db $e3                                        ; $73e8: $e3
    or b                                          ; $73e9: $b0
    di                                            ; $73ea: $f3
    or h                                          ; $73eb: $b4
    db $eb                                        ; $73ec: $eb
    ld e, a                                       ; $73ed: $5f
    ld a, h                                       ; $73ee: $7c
    ret c                                         ; $73ef: $d8

    jp nc, Jump_054_443f                          ; $73f0: $d2 $3f $44

    dec a                                         ; $73f3: $3d
    xor a                                         ; $73f4: $af
    or l                                          ; $73f5: $b5
    xor h                                         ; $73f6: $ac
    ld e, l                                       ; $73f7: $5d
    rst $08                                       ; $73f8: $cf
    xor e                                         ; $73f9: $ab
    jp nc, $ddc0                                  ; $73fa: $d2 $c0 $dd

    sbc $d5                                       ; $73fd: $de $d5
    ld e, h                                       ; $73ff: $5c
    ld d, e                                       ; $7400: $53
    ld a, [$c394]                                 ; $7401: $fa $94 $c3
    jp nc, $e556                                  ; $7404: $d2 $56 $e5

    ld e, [hl]                                    ; $7407: $5e
    ld [$327d], sp                                ; $7408: $08 $7d $32
    ld e, h                                       ; $740b: $5c
    adc d                                         ; $740c: $8a
    ld [hl], h                                    ; $740d: $74
    pop de                                        ; $740e: $d1
    inc c                                         ; $740f: $0c
    ld [hl], a                                    ; $7410: $77
    or a                                          ; $7411: $b7
    ld h, l                                       ; $7412: $65
    ccf                                           ; $7413: $3f
    ld b, [hl]                                    ; $7414: $46
    adc a                                         ; $7415: $8f
    ld [hl], b                                    ; $7416: $70
    ld h, e                                       ; $7417: $63
    adc b                                         ; $7418: $88
    nop                                           ; $7419: $00
    scf                                           ; $741a: $37
    inc de                                        ; $741b: $13
    jp c, $f329                                   ; $741c: $da $29 $f3

    ld h, d                                       ; $741f: $62
    rst $00                                       ; $7420: $c7
    ld [hl+], a                                   ; $7421: $22
    ld a, $4b                                     ; $7422: $3e $4b
    ld e, e                                       ; $7424: $5b
    sub l                                         ; $7425: $95
    pop hl                                        ; $7426: $e1
    xor $0d                                       ; $7427: $ee $0d
    db $eb                                        ; $7429: $eb
    jr c, jr_054_73b8                             ; $742a: $38 $8c

    dec hl                                        ; $742c: $2b
    rst $10                                       ; $742d: $d7
    add sp, $17                                   ; $742e: $e8 $17
    ld sp, hl                                     ; $7430: $f9
    sbc a                                         ; $7431: $9f
    cp b                                          ; $7432: $b8
    adc [hl]                                      ; $7433: $8e
    jp $fd08                                      ; $7434: $c3 $08 $fd


    ld b, h                                       ; $7437: $44
    rst $10                                       ; $7438: $d7
    sub h                                         ; $7439: $94
    ld b, l                                       ; $743a: $45
    inc a                                         ; $743b: $3c
    ld a, [hl-]                                   ; $743c: $3a
    rla                                           ; $743d: $17
    halt                                          ; $743e: $76
    or e                                          ; $743f: $b3
    ld b, b                                       ; $7440: $40
    inc b                                         ; $7441: $04
    ld a, l                                       ; $7442: $7d
    inc e                                         ; $7443: $1c
    ld b, [hl]                                    ; $7444: $46
    ccf                                           ; $7445: $3f
    pop hl                                        ; $7446: $e1
    pop hl                                        ; $7447: $e1
    call z, $ae74                                 ; $7448: $cc $74 $ae
    db $f4                                        ; $744b: $f4
    inc de                                        ; $744c: $13
    ld [hl], c                                    ; $744d: $71
    dec sp                                        ; $744e: $3b
    ld a, $e9                                     ; $744f: $3e $e9
    inc e                                         ; $7451: $1c
    rra                                           ; $7452: $1f
    ld b, h                                       ; $7453: $44
    dec a                                         ; $7454: $3d
    ld c, c                                       ; $7455: $49
    xor [hl]                                      ; $7456: $ae
    db $fd                                        ; $7457: $fd
    cp l                                          ; $7458: $bd
    sub $96                                       ; $7459: $d6 $96
    cp b                                          ; $745b: $b8
    sub h                                         ; $745c: $94
    ld h, l                                       ; $745d: $65
    db $f4                                        ; $745e: $f4
    inc de                                        ; $745f: $13
    sbc [hl]                                      ; $7460: $9e
    jp nc, Jump_000_2ca7                          ; $7461: $d2 $a7 $2c

    cp l                                          ; $7464: $bd
    db $10                                        ; $7465: $10
    cp l                                          ; $7466: $bd
    push hl                                       ; $7467: $e5
    dec h                                         ; $7468: $25
    inc hl                                        ; $7469: $23
    sbc [hl]                                      ; $746a: $9e
    ld d, d                                       ; $746b: $52
    ld e, [hl]                                    ; $746c: $5e
    add sp, $18                                   ; $746d: $e8 $18
    di                                            ; $746f: $f3
    sub h                                         ; $7470: $94
    ld h, l                                       ; $7471: $65
    ld a, a                                       ; $7472: $7f
    cp l                                          ; $7473: $bd
    inc sp                                        ; $7474: $33
    ld h, $73                                     ; $7475: $26 $73
    set 4, c                                      ; $7477: $cb $e1
    sbc a                                         ; $7479: $9f
    rst $10                                       ; $747a: $d7
    inc l                                         ; $747b: $2c
    db $10                                        ; $747c: $10
    ld bc, $1c7d                                  ; $747d: $01 $7d $1c
    sub [hl]                                      ; $7480: $96
    sub $4b                                       ; $7481: $d6 $4b
    ld a, c                                       ; $7483: $79
    daa                                           ; $7484: $27
    halt                                          ; $7485: $76
    cp d                                          ; $7486: $ba
    add h                                         ; $7487: $84
    rst $30                                       ; $7488: $f7
    ld a, b                                       ; $7489: $78
    jp z, $e4bc                                   ; $748a: $ca $bc $e4

    push de                                       ; $748d: $d5
    ld a, d                                       ; $748e: $7a
    bit 1, e                                      ; $748f: $cb $4b
    ldh [$ae], a                                  ; $7491: $e0 $ae
    cp b                                          ; $7493: $b8
    ld a, d                                       ; $7494: $7a
    ld h, h                                       ; $7495: $64
    or [hl]                                       ; $7496: $b6
    add h                                         ; $7497: $84
    pop af                                        ; $7498: $f1
    ld l, a                                       ; $7499: $6f
    db $eb                                        ; $749a: $eb
    ld e, l                                       ; $749b: $5d
    sbc a                                         ; $749c: $9f
    and [hl]                                      ; $749d: $a6
    cp a                                          ; $749e: $bf
    add h                                         ; $749f: $84
    pop de                                        ; $74a0: $d1
    cp c                                          ; $74a1: $b9
    or $78                                        ; $74a2: $f6 $78
    ld c, d                                       ; $74a4: $4a
    rra                                           ; $74a5: $1f
    db $fd                                        ; $74a6: $fd
    add h                                         ; $74a7: $84
    sub a                                         ; $74a8: $97
    jp $acca                                      ; $74a9: $c3 $ca $ac


    sub a                                         ; $74ac: $97
    cp b                                          ; $74ad: $b8
    ret c                                         ; $74ae: $d8

    ld c, e                                       ; $74af: $4b
    rst $38                                       ; $74b0: $ff
    ld [hl], h                                    ; $74b1: $74
    ei                                            ; $74b2: $fb
    sbc c                                         ; $74b3: $99
    dec e                                         ; $74b4: $1d
    call $fe67                                    ; $74b5: $cd $67 $fe
    ld d, $95                                     ; $74b8: $16 $95
    ld sp, $3ddc                                  ; $74ba: $31 $dc $3d
    call nc, $93e2                                ; $74bd: $d4 $e2 $93
    add hl, hl                                    ; $74c0: $29
    ld a, l                                       ; $74c1: $7d
    add c                                         ; $74c2: $81
    ld a, [de]                                    ; $74c3: $1a
    rst $38                                       ; $74c4: $ff
    sub [hl]                                      ; $74c5: $96
    ld a, [hl]                                    ; $74c6: $7e
    pop de                                        ; $74c7: $d1
    db $e3                                        ; $74c8: $e3
    rst $18                                       ; $74c9: $df
    halt                                          ; $74ca: $76
    ld a, e                                       ; $74cb: $7b
    xor [hl]                                      ; $74cc: $ae
    sub e                                         ; $74cd: $93
    cp h                                          ; $74ce: $bc
    ld a, [de]                                    ; $74cf: $1a
    adc $bc                                       ; $74d0: $ce $bc
    sub e                                         ; $74d2: $93
    cp h                                          ; $74d3: $bc
    ld h, d                                       ; $74d4: $62
    ld b, a                                       ; $74d5: $47
    ld e, l                                       ; $74d6: $5d
    ld c, $bb                                     ; $74d7: $0e $bb
    sub [hl]                                      ; $74d9: $96
    jp Jump_054_725e                              ; $74da: $c3 $5e $72


    sbc d                                         ; $74dd: $9a
    adc $ec                                       ; $74de: $ce $ec
    ld h, l                                       ; $74e0: $65
    sub d                                         ; $74e1: $92
    inc c                                         ; $74e2: $0c
    cpl                                           ; $74e3: $2f
    or c                                          ; $74e4: $b1
    ld b, b                                       ; $74e5: $40
    inc b                                         ; $74e6: $04
    or a                                          ; $74e7: $b7
    ld [hl], a                                    ; $74e8: $77
    dec [hl]                                      ; $74e9: $35
    rst $10                                       ; $74ea: $d7
    sub h                                         ; $74eb: $94
    ld a, $e5                                     ; $74ec: $3e $e5
    or b                                          ; $74ee: $b0

Call_054_74ef:
    or h                                          ; $74ef: $b4
    ld d, l                                       ; $74f0: $55
    ld e, c                                       ; $74f1: $59
    cp e                                          ; $74f2: $bb
    sbc [hl]                                      ; $74f3: $9e
    ld d, a                                       ; $74f4: $57
    and l                                         ; $74f5: $a5
    jp hl                                         ; $74f6: $e9


    add l                                         ; $74f7: $85
    nop                                           ; $74f8: $00
    ld a, l                                       ; $74f9: $7d
    sbc [hl]                                      ; $74fa: $9e
    halt                                          ; $74fb: $76
    dec e                                         ; $74fc: $1d
    add a                                         ; $74fd: $87
    pop de                                        ; $74fe: $d1
    ld c, a                                       ; $74ff: $4f
    ld a, b                                       ; $7500: $78
    sbc c                                         ; $7501: $99
    inc h                                         ; $7502: $24
    ld c, a                                       ; $7503: $4f
    xor h                                         ; $7504: $ac
    ld c, a                                       ; $7505: $4f
    or e                                          ; $7506: $b3
    ld h, l                                       ; $7507: $65
    inc h                                         ; $7508: $24
    dec [hl]                                      ; $7509: $35
    sbc h                                         ; $750a: $9c
    sbc c                                         ; $750b: $99
    adc $95                                       ; $750c: $ce $95
    ld a, [hl]                                    ; $750e: $7e
    ld [hl+], a                                   ; $750f: $22
    ld l, [hl]                                    ; $7510: $6e
    rst $00                                       ; $7511: $c7
    ld [bc], a                                    ; $7512: $02
    ld de, $b3bd                                  ; $7513: $11 $bd $b3
    ld [c], a                                     ; $7516: $e2

Jump_054_7517:
    add l                                         ; $7517: $85
    ld c, [hl]                                    ; $7518: $4e
    ld l, $d6                                     ; $7519: $2e $d6
    xor [hl]                                      ; $751b: $ae
    rst $20                                       ; $751c: $e7
    ld d, l                                       ; $751d: $55
    ld l, c                                       ; $751e: $69
    ldh [$ee], a                                  ; $751f: $e0 $ee
    ld a, [hl]                                    ; $7521: $7e
    ld [$dde1], a                                 ; $7522: $ea $e1 $dd
    add hl, hl                                    ; $7525: $29
    sbc a                                         ; $7526: $9f
    db $f4                                        ; $7527: $f4
    jp nc, $d7ed                                  ; $7528: $d2 $ed $d7

    inc h                                         ; $752b: $24
    rst $00                                       ; $752c: $c7
    add l                                         ; $752d: $85
    or $d4                                        ; $752e: $f6 $d4
    add sp, $5c                                   ; $7530: $e8 $5c
    and e                                         ; $7532: $a3
    ld b, [hl]                                    ; $7533: $46
    ld d, e                                       ; $7534: $53
    ld d, e                                       ; $7535: $53
    sub [hl]                                      ; $7536: $96
    and l                                         ; $7537: $a5
    ld [hl], e                                    ; $7538: $73
    ld a, h                                       ; $7539: $7c
    db $e3                                        ; $753a: $e3
    rst $18                                       ; $753b: $df
    jp nc, Jump_054_7a2f                          ; $753c: $d2 $2f $7a

    ld a, a                                       ; $753f: $7f
    add h                                         ; $7540: $84
    and [hl]                                      ; $7541: $a6
    dec [hl]                                      ; $7542: $35
    adc e                                         ; $7543: $8b
    ld [hl], a                                    ; $7544: $77
    cp [hl]                                       ; $7545: $be
    jr jr_054_756a                                ; $7546: $18 $22

    dec a                                         ; $7548: $3d
    xor a                                         ; $7549: $af
    ld c, d                                       ; $754a: $4a
    sub e                                         ; $754b: $93
    ld a, d                                       ; $754c: $7a
    ld [hl], a                                    ; $754d: $77
    call nz, Call_054_61e8                        ; $754e: $c4 $e8 $61
    rst $10                                       ; $7551: $d7
    ld c, [hl]                                    ; $7552: $4e
    db $d3                                        ; $7553: $d3
    cpl                                           ; $7554: $2f
    add hl, sp                                    ; $7555: $39
    ld c, l                                       ; $7556: $4d
    cpl                                           ; $7557: $2f
    ld a, [$d04b]                                 ; $7558: $fa $4b $d0
    xor $b8                                       ; $755b: $ee $b8
    sub $71                                       ; $755d: $d6 $71
    add b                                         ; $755f: $80
    ld [$1c7d], sp                                ; $7560: $08 $7d $1c
    ld b, [hl]                                    ; $7563: $46
    ccf                                           ; $7564: $3f
    pop hl                                        ; $7565: $e1
    add hl, hl                                    ; $7566: $29
    set 5, d                                      ; $7567: $cb $ea
    ld b, a                                       ; $7569: $47

jr_054_756a:
    cp $c1                                        ; $756a: $fe $c1
    ld c, e                                       ; $756c: $4b
    rst $20                                       ; $756d: $e7
    ld hl, sp-$7a                                 ; $756e: $f8 $86
    xor l                                         ; $7570: $ad
    and [hl]                                      ; $7571: $a6
    inc l                                         ; $7572: $2c
    xor e                                         ; $7573: $ab
    rra                                           ; $7574: $1f
    ld sp, hl                                     ; $7575: $f9
    rlca                                          ; $7576: $07
    rrca                                          ; $7577: $0f
    ld h, a                                       ; $7578: $67
    and [hl]                                      ; $7579: $a6
    ld [hl], e                                    ; $757a: $73
    and l                                         ; $757b: $a5
    sbc a                                         ; $757c: $9f
    adc b                                         ; $757d: $88
    db $db                                        ; $757e: $db
    or c                                          ; $757f: $b1
    ld b, b                                       ; $7580: $40
    ld [$5873], sp                                ; $7581: $08 $73 $58
    ld [hl], e                                    ; $7584: $73
    ld [c], a                                     ; $7585: $e2
    ld h, d                                       ; $7586: $62
    ld c, a                                       ; $7587: $4f
    ld e, c                                       ; $7588: $59
    add $bf                                       ; $7589: $c6 $bf
    and l                                         ; $758b: $a5
    ld e, a                                       ; $758c: $5f
    db $f4                                        ; $758d: $f4
    ld hl, sp-$49                                 ; $758e: $f8 $b7
    and l                                         ; $7590: $a5
    ld a, a                                       ; $7591: $7f
    cp d                                          ; $7592: $ba
    db $fd                                        ; $7593: $fd
    call z, Call_054_668e                         ; $7594: $cc $8e $66
    adc b                                         ; $7597: $88
    nop                                           ; $7598: $00
    cp l                                          ; $7599: $bd
    cpl                                           ; $759a: $2f
    add hl, bc                                    ; $759b: $09
    sub a                                         ; $759c: $97
    add h                                         ; $759d: $84
    or $71                                        ; $759e: $f6 $71
    ld e, c                                       ; $75a0: $59
    sub h                                         ; $75a1: $94
    or l                                          ; $75a2: $b5
    db $eb                                        ; $75a3: $eb
    ld a, c                                       ; $75a4: $79
    ld d, l                                       ; $75a5: $55
    ld a, [de]                                    ; $75a6: $1a
    db $ed                                        ; $75a7: $ed
    ld e, [hl]                                    ; $75a8: $5e
    adc h                                         ; $75a9: $8c
    ld a, d                                       ; $75aa: $7a

Call_054_75ab:
    dec a                                         ; $75ab: $3d
    sbc $c9                                       ; $75ac: $de $c9
    ld a, b                                       ; $75ae: $78
    dec e                                         ; $75af: $1d
    add a                                         ; $75b0: $87
    dec h                                         ; $75b1: $25
    ld d, $36                                     ; $75b2: $16 $36
    jp $7e5d                                      ; $75b4: $c3 $5d $7e


    reti                                          ; $75b7: $d9


    ret z                                         ; $75b8: $c8

    ld l, h                                       ; $75b9: $6c
    add hl, bc                                    ; $75ba: $09
    db $e3                                        ; $75bb: $e3
    rst $18                                       ; $75bc: $df
    sub $bb                                       ; $75bd: $d6 $bb
    ld l, $e9                                     ; $75bf: $2e $e9
    ld e, l                                       ; $75c1: $5d
    sub a                                         ; $75c2: $97
    db $f4                                        ; $75c3: $f4
    xor [hl]                                      ; $75c4: $ae
    ld c, a                                       ; $75c5: $4f
    db $d3                                        ; $75c6: $d3
    ld e, a                                       ; $75c7: $5f
    ld [bc], a                                    ; $75c8: $02
    ld b, h                                       ; $75c9: $44
    ld a, l                                       ; $75ca: $7d
    inc e                                         ; $75cb: $1c
    ld b, [hl]                                    ; $75cc: $46
    ccf                                           ; $75cd: $3f
    pop hl                                        ; $75ce: $e1
    add hl, hl                                    ; $75cf: $29
    set 5, d                                      ; $75d0: $cb $ea
    ld b, a                                       ; $75d2: $47
    cp $c1                                        ; $75d3: $fe $c1
    ld c, e                                       ; $75d5: $4b
    rst $20                                       ; $75d6: $e7
    ld hl, sp-$7a                                 ; $75d7: $f8 $86
    xor l                                         ; $75d9: $ad

Call_054_75da:
    and [hl]                                      ; $75da: $a6
    inc l                                         ; $75db: $2c
    xor e                                         ; $75dc: $ab
    rra                                           ; $75dd: $1f
    ld sp, hl                                     ; $75de: $f9
    rlca                                          ; $75df: $07
    rrca                                          ; $75e0: $0f
    ld h, a                                       ; $75e1: $67
    and [hl]                                      ; $75e2: $a6
    ld [hl], e                                    ; $75e3: $73
    and l                                         ; $75e4: $a5
    sbc a                                         ; $75e5: $9f
    adc b                                         ; $75e6: $88
    db $db                                        ; $75e7: $db
    or c                                          ; $75e8: $b1
    ld b, b                                       ; $75e9: $40
    inc b                                         ; $75ea: $04
    cp l                                          ; $75eb: $bd
    cpl                                           ; $75ec: $2f
    add hl, bc                                    ; $75ed: $09
    sub a                                         ; $75ee: $97
    add h                                         ; $75ef: $84
    or $71                                        ; $75f0: $f6 $71
    ld e, c                                       ; $75f2: $59
    sub h                                         ; $75f3: $94
    or l                                          ; $75f4: $b5
    db $eb                                        ; $75f5: $eb
    ld a, c                                       ; $75f6: $79
    ld d, l                                       ; $75f7: $55
    ld a, [de]                                    ; $75f8: $1a
    db $ed                                        ; $75f9: $ed
    ld e, [hl]                                    ; $75fa: $5e
    adc h                                         ; $75fb: $8c
    ld a, d                                       ; $75fc: $7a
    dec a                                         ; $75fd: $3d
    sbc $c9                                       ; $75fe: $de $c9
    ld a, b                                       ; $7600: $78
    dec e                                         ; $7601: $1d
    add a                                         ; $7602: $87
    dec h                                         ; $7603: $25
    ld d, $36                                     ; $7604: $16 $36
    jp $7e5d                                      ; $7606: $c3 $5d $7e


    reti                                          ; $7609: $d9


    ret z                                         ; $760a: $c8

    ld l, h                                       ; $760b: $6c
    add hl, bc                                    ; $760c: $09
    db $e3                                        ; $760d: $e3
    rst $18                                       ; $760e: $df
    sub $bb                                       ; $760f: $d6 $bb
    ld l, $e9                                     ; $7611: $2e $e9
    ld e, l                                       ; $7613: $5d
    sub a                                         ; $7614: $97
    db $f4                                        ; $7615: $f4
    xor [hl]                                      ; $7616: $ae
    ld c, a                                       ; $7617: $4f
    db $d3                                        ; $7618: $d3
    ld e, a                                       ; $7619: $5f
    ld [bc], a                                    ; $761a: $02
    ld e, h                                       ; $761b: $5c

Jump_054_761c:
    rst $28                                       ; $761c: $ef
    ccf                                           ; $761d: $3f
    db $ec                                        ; $761e: $ec
    or b                                          ; $761f: $b0
    ld [hl], h                                    ; $7620: $74
    cp [hl]                                       ; $7621: $be
    inc h                                         ; $7622: $24
    sbc l                                         ; $7623: $9d
    cpl                                           ; $7624: $2f
    ld c, c                                       ; $7625: $49
    rst $20                                       ; $7626: $e7
    ld hl, sp-$4c                                 ; $7627: $f8 $b4
    dec sp                                        ; $7629: $3b
    call nc, Call_054_7c4e                        ; $762a: $d4 $4e $7c
    ld l, l                                       ; $762d: $6d
    dec e                                         ; $762e: $1d
    add a                                         ; $762f: $87
    sub l                                         ; $7630: $95
    ld e, c                                       ; $7631: $59
    cpl                                           ; $7632: $2f
    ld [hl], c                                    ; $7633: $71
    ld a, c                                       ; $7634: $79
    jp z, $fe32                                   ; $7635: $ca $32 $fe

    ld l, l                                       ; $7638: $6d
    ld hl, sp-$57                                 ; $7639: $f8 $a9
    add a                                         ; $763b: $87
    ld [hl], a                                    ; $763c: $77
    and a                                         ; $763d: $a7
    ld a, h                                       ; $763e: $7c
    jp nc, $0110                                  ; $763f: $d2 $10 $01

    dec a                                         ; $7642: $3d
    xor [hl]                                      ; $7643: $ae
    cp c                                          ; $7644: $b9
    and [hl]                                      ; $7645: $a6
    inc l                                         ; $7646: $2c
    db $10                                        ; $7647: $10
    ld bc, $493d                                  ; $7648: $01 $3d $49
    ld l, $f5                                     ; $764b: $2e $f5
    ld h, h                                       ; $764d: $64
    add c                                         ; $764e: $81
    xor d                                         ; $764f: $aa
    add hl, hl                                    ; $7650: $29
    di                                            ; $7651: $f3
    or b                                          ; $7652: $b0
    push de                                       ; $7653: $d5
    ret z                                         ; $7654: $c8

    cp d                                          ; $7655: $ba
    add h                                         ; $7656: $84
    xor h                                         ; $7657: $ac
    ld c, e                                       ; $7658: $4b
    ret z                                         ; $7659: $c8

    jp z, $e3a7                                   ; $765a: $ca $a7 $e3

    ret z                                         ; $765d: $c8

    and $a9                                       ; $765e: $e6 $a9
    rst $08                                       ; $7660: $cf
    xor h                                         ; $7661: $ac
    ld e, l                                       ; $7662: $5d
    rst $08                                       ; $7663: $cf
    xor e                                         ; $7664: $ab
    jp nc, Jump_054_42f4                          ; $7665: $d2 $f4 $42

    add hl, hl                                    ; $7668: $29
    jp nc, $b345                                  ; $7669: $d2 $45 $b3

    halt                                          ; $766c: $76
    adc a                                         ; $766d: $8f
    ld c, a                                       ; $766e: $4f
    daa                                           ; $766f: $27
    ld h, a                                       ; $7670: $67
    ld [$0221], sp                                ; $7671: $08 $21 $02
    or a                                          ; $7674: $b7
    ld hl, sp-$10                                 ; $7675: $f8 $f0
    sub h                                         ; $7677: $94
    ld a, $9a                                     ; $7678: $3e $9a
    cp d                                          ; $767a: $ba
    add h                                         ; $767b: $84
    and [hl]                                      ; $767c: $a6
    ld l, $a1                                     ; $767d: $2e $a1
    xor c                                         ; $767f: $a9
    ld e, d                                       ; $7680: $5a
    ei                                            ; $7681: $fb
    call z, $5fa3                                 ; $7682: $cc $a3 $5f
    pop af                                        ; $7685: $f1
    ld c, b                                       ; $7686: $48
    ld l, d                                       ; $7687: $6a
    jp z, $d861                                   ; $7688: $ca $61 $d8

    ld l, d                                       ; $768b: $6a
    jp z, Jump_054_5dac                           ; $768c: $ca $ac $5d

    rst $08                                       ; $768f: $cf
    xor e                                         ; $7690: $ab
    jp nc, Jump_000_0440                          ; $7691: $d2 $40 $04

    db $dd                                        ; $7694: $dd
    ld a, [$5788]                                 ; $7695: $fa $88 $57
    and e                                         ; $7698: $a3
    ld [hl], e                                    ; $7699: $73
    dec e                                         ; $769a: $1d
    sub $54                                       ; $769b: $d6 $54
    sbc c                                         ; $769d: $99
    and a                                         ; $769e: $a7
    adc e                                         ; $769f: $8b
    ld [hl], d                                    ; $76a0: $72
    dec h                                         ; $76a1: $25
    rst $38                                       ; $76a2: $ff
    ret z                                         ; $76a3: $c8

    sub a                                         ; $76a4: $97
    ld h, b                                       ; $76a5: $60
    add hl, de                                    ; $76a6: $19
    cp $92                                        ; $76a7: $fe $92
    ld a, d                                       ; $76a9: $7a
    db $dd                                        ; $76aa: $dd
    and $a5                                       ; $76ab: $e6 $a5
    db $db                                        ; $76ad: $db
    xor a                                         ; $76ae: $af
    ld e, l                                       ; $76af: $5d
    dec a                                         ; $76b0: $3d
    db $fc                                        ; $76b1: $fc
    ld b, l                                       ; $76b2: $45
    ccf                                           ; $76b3: $3f
    ld h, h                                       ; $76b4: $64
    or [hl]                                       ; $76b5: $b6
    add h                                         ; $76b6: $84
    db $fd                                        ; $76b7: $fd
    and l                                         ; $76b8: $a5
    inc sp                                        ; $76b9: $33
    and a                                         ; $76ba: $a7
    ld b, [hl]                                    ; $76bb: $46
    db $10                                        ; $76bc: $10
    ld b, d                                       ; $76bd: $42
    ld e, l                                       ; $76be: $5d
    sub h                                         ; $76bf: $94
    ld l, e                                       ; $76c0: $6b
    jp z, $e4b2                                   ; $76c1: $ca $b2 $e4

    or a                                          ; $76c4: $b7
    and $d1                                       ; $76c5: $e6 $d1
    cpl                                           ; $76c7: $2f
    db $ed                                        ; $76c8: $ed
    and [hl]                                      ; $76c9: $a6
    inc [hl]                                      ; $76ca: $34
    ld [hl], l                                    ; $76cb: $75
    cp b                                          ; $76cc: $b8
    db $fc                                        ; $76cd: $fc
    and e                                         ; $76ce: $a3
    ld h, l                                       ; $76cf: $65
    ld a, a                                       ; $76d0: $7f
    sub a                                         ; $76d1: $97
    ld e, a                                       ; $76d2: $5f
    ld a, a                                       ; $76d3: $7f
    ld sp, hl                                     ; $76d4: $f9
    push hl                                       ; $76d5: $e5
    jp c, Jump_000_37a9                           ; $76d6: $da $a9 $37

    push hl                                       ; $76d9: $e5
    dec h                                         ; $76da: $25
    cp a                                          ; $76db: $bf
    dec [hl]                                      ; $76dc: $35
    rra                                           ; $76dd: $1f
    or $92                                        ; $76de: $f6 $92
    daa                                           ; $76e0: $27
    xor h                                         ; $76e1: $ac
    ld e, l                                       ; $76e2: $5d
    ld c, $83                                     ; $76e3: $0e $83
    db $10                                        ; $76e5: $10
    ld [hl+], a                                   ; $76e6: $22
    ld a, l                                       ; $76e7: $7d
    inc e                                         ; $76e8: $1c
    ld b, [hl]                                    ; $76e9: $46
    ld d, b                                       ; $76ea: $50
    and h                                         ; $76eb: $a4
    ld l, e                                       ; $76ec: $6b
    ld c, d                                       ; $76ed: $4a
    sbc a                                         ; $76ee: $9f
    ld l, b                                       ; $76ef: $68
    ret c                                         ; $76f0: $d8

    dec [hl]                                      ; $76f1: $35
    push hl                                       ; $76f2: $e5
    ld e, l                                       ; $76f3: $5d
    dec a                                         ; $76f4: $3d
    db $fc                                        ; $76f5: $fc
    ld b, l                                       ; $76f6: $45
    ccf                                           ; $76f7: $3f
    ld h, h                                       ; $76f8: $64
    or [hl]                                       ; $76f9: $b6
    add h                                         ; $76fa: $84
    add hl, hl                                    ; $76fb: $29
    ld a, l                                       ; $76fc: $7d
    inc [hl]                                      ; $76fd: $34
    ld d, l                                       ; $76fe: $55
    and e                                         ; $76ff: $a3
    ld [hl], e                                    ; $7700: $73
    adc l                                         ; $7701: $8d
    ld a, [de]                                    ; $7702: $1a
    pop af                                        ; $7703: $f1
    or $92                                        ; $7704: $f6 $92
    ld [hl], h                                    ; $7706: $74
    jp hl                                         ; $7707: $e9


    call z, $0ec3                                 ; $7708: $cc $c3 $0e
    ei                                            ; $770b: $fb

Call_054_770c:
    db $e3                                        ; $770c: $e3
    adc a                                         ; $770d: $8f
    dec l                                         ; $770e: $2d
    jp c, $97dd                                   ; $770f: $da $dd $97

    sbc c                                         ; $7712: $99
    ld e, l                                       ; $7713: $5d
    xor c                                         ; $7714: $a9
    ld de, $0f57                                  ; $7715: $11 $57 $0f
    ld a, a                                       ; $7718: $7f
    pop de                                        ; $7719: $d1
    rrca                                          ; $771a: $0f
    sbc c                                         ; $771b: $99
    dec l                                         ; $771c: $2d
    ld b, c                                       ; $771d: $41
    cp e                                          ; $771e: $bb
    ei                                            ; $771f: $fb
    ld [hl-], a                                   ; $7720: $32
    or e                                          ; $7721: $b3
    ld c, e                                       ; $7722: $4b
    dec sp                                        ; $7723: $3b
    ld a, [hl-]                                   ; $7724: $3a
    rst $10                                       ; $7725: $d7
    xor b                                         ; $7726: $a8
    or l                                          ; $7727: $b5
    daa                                           ; $7728: $27
    jp z, $a923                                   ; $7729: $ca $23 $a9

    pop hl                                        ; $772c: $e1
    cpl                                           ; $772d: $2f
    ld c, e                                       ; $772e: $4b
    ccf                                           ; $772f: $3f
    ld [hl], c                                    ; $7730: $71
    ld l, d                                       ; $7731: $6a
    inc b                                         ; $7732: $04
    add hl, hl                                    ; $7733: $29
    ld a, a                                       ; $7734: $7f
    add h                                         ; $7735: $84
    rst $38                                       ; $7736: $ff
    ld hl, sp-$49                                 ; $7737: $f8 $b7
    push af                                       ; $7739: $f5
    cp h                                          ; $773a: $bc
    ld a, [hl+]                                   ; $773b: $2a
    adc l                                         ; $773c: $8d
    halt                                          ; $773d: $76
    xor a                                         ; $773e: $af
    dec [hl]                                      ; $773f: $35
    rst $28                                       ; $7740: $ef
    inc a                                         ; $7741: $3c
    adc h                                         ; $7742: $8c
    dec l                                         ; $7743: $2d
    ld [hl], b                                    ; $7744: $70
    add hl, hl                                    ; $7745: $29
    ld a, a                                       ; $7746: $7f
    ld c, a                                       ; $7747: $4f
    ld [hl], l                                    ; $7748: $75
    cp d                                          ; $7749: $ba
    add $bf                                       ; $774a: $c6 $bf
    db $ed                                        ; $774c: $ed
    ld [$d991], a                                 ; $774d: $ea $91 $d9
    ld [de], a                                    ; $7750: $12
    or h                                          ; $7751: $b4
    db $eb                                        ; $7752: $eb
    ld a, c                                       ; $7753: $79
    ld d, l                                       ; $7754: $55
    ld a, [de]                                    ; $7755: $1a
    db $ed                                        ; $7756: $ed
    add sp, $5c                                   ; $7757: $e8 $5c
    and e                                         ; $7759: $a3
    or $92                                        ; $775a: $f6 $92
    ld [hl], h                                    ; $775c: $74
    ld l, c                                       ; $775d: $69
    ret c                                         ; $775e: $d8

    jp $fb0e                                      ; $775f: $c3 $0e $fb


    db $e3                                        ; $7762: $e3
    adc a                                         ; $7763: $8f
    dec l                                         ; $7764: $2d
    db $10                                        ; $7765: $10
    ld bc, $fadd                                  ; $7766: $01 $dd $fa
    adc [hl]                                      ; $7769: $8e
    ld l, e                                       ; $776a: $6b

Call_054_776b:
    db $ed                                        ; $776b: $ed
    inc sp                                        ; $776c: $33
    cpl                                           ; $776d: $2f
    ld d, h                                       ; $776e: $54
    sub a                                         ; $776f: $97
    ret z                                         ; $7770: $c8

    ld [hl], h                                    ; $7771: $74
    sub $ae                                       ; $7772: $d6 $ae
    rst $20                                       ; $7774: $e7
    ld d, l                                       ; $7775: $55
    ld l, c                                       ; $7776: $69
    jr nz, jr_054_777b                            ; $7777: $20 $02

    dec a                                         ; $7779: $3d
    xor a                                         ; $777a: $af

jr_054_777b:
    and [hl]                                      ; $777b: $a6
    db $f4                                        ; $777c: $f4
    add hl, hl                                    ; $777d: $29
    di                                            ; $777e: $f3
    ld [$5e37], sp                                ; $777f: $08 $37 $5e
    cp d                                          ; $7782: $ba
    sbc [hl]                                      ; $7783: $9e
    halt                                          ; $7784: $76
    dec a                                         ; $7785: $3d
    xor a                                         ; $7786: $af
    ld c, d                                       ; $7787: $4a
    db $d3                                        ; $7788: $d3
    dec bc                                        ; $7789: $0b
    ld bc, $e7b7                                  ; $778a: $01 $b7 $e7

Jump_054_778d:
    ld c, d                                       ; $778d: $4a
    ccf                                           ; $778e: $3f
    ld de, $63b7                                  ; $778f: $11 $b7 $63
    sbc c                                         ; $7792: $99
    ld l, e                                       ; $7793: $6b
    add h                                         ; $7794: $84
    inc de                                        ; $7795: $13
    ld [hl], e                                    ; $7796: $73
    ld l, d                                       ; $7797: $6a
    inc b                                         ; $7798: $04

Jump_054_7799:
    or a                                          ; $7799: $b7
    ld [hl], a                                    ; $779a: $77
    dec [hl]                                      ; $779b: $35
    rst $10                                       ; $779c: $d7
    sub h                                         ; $779d: $94
    ld a, $e5                                     ; $779e: $3e $e5
    or b                                          ; $77a0: $b0
    rra                                           ; $77a1: $1f
    and e                                         ; $77a2: $a3
    ld b, a                                       ; $77a3: $47
    cp b                                          ; $77a4: $b8
    pop af                                        ; $77a5: $f1
    jp nc, $b4f5                                  ; $77a6: $d2 $f5 $b4

    db $eb                                        ; $77a9: $eb
    ld a, c                                       ; $77aa: $79
    ld d, l                                       ; $77ab: $55
    sbc d                                         ; $77ac: $9a
    ld e, [hl]                                    ; $77ad: $5e
    ld [$f27d], sp                                ; $77ae: $08 $7d $f2
    call nc, $eed3                                ; $77b1: $d4 $d3 $ee
    adc b                                         ; $77b4: $88
    ld c, [hl]                                    ; $77b5: $4e
    sbc a                                         ; $77b6: $9f
    dec e                                         ; $77b7: $1d
    jp hl                                         ; $77b8: $e9


    and d                                         ; $77b9: $a2
    add hl, de                                    ; $77ba: $19
    xor [hl]                                      ; $77bb: $ae
    db $db                                        ; $77bc: $db
    inc a                                         ; $77bd: $3c
    rst $10                                       ; $77be: $d7
    jp nc, $bcaf                                  ; $77bf: $d2 $af $bc

    sbc $f2                                       ; $77c2: $de $f2
    sub d                                         ; $77c4: $92
    sbc l                                         ; $77c5: $9d
    adc h                                         ; $77c6: $8c
    ld b, a                                       ; $77c7: $47
    cp h                                          ; $77c8: $bc
    ld a, [de]                                    ; $77c9: $1a
    sbc l                                         ; $77ca: $9d
    adc e                                         ; $77cb: $8b
    ld [hl], b                                    ; $77cc: $70
    inc a                                         ; $77cd: $3c
    and $61                                       ; $77ce: $e6 $61
    add a                                         ; $77d0: $87
    dec e                                         ; $77d1: $1d
    ld l, d                                       ; $77d2: $6a
    dec e                                         ; $77d3: $1d
    add a                                         ; $77d4: $87
    and l                                         ; $77d5: $a5
    sbc e                                         ; $77d6: $9b
    and a                                         ; $77d7: $a7
    xor b                                         ; $77d8: $a8
    ld l, d                                       ; $77d9: $6a
    ccf                                           ; $77da: $3f
    ld b, b                                       ; $77db: $40
    inc b                                         ; $77dc: $04
    dec a                                         ; $77dd: $3d
    adc c                                         ; $77de: $89
    pop af                                        ; $77df: $f1
    ld c, [hl]                                    ; $77e0: $4e
    add $23                                       ; $77e1: $c6 $23
    call c, $2f0e                                 ; $77e3: $dc $0e $2f
    ld a, $59                                     ; $77e6: $3e $59
    cp d                                          ; $77e8: $ba
    db $fd                                        ; $77e9: $fd
    add hl, hl                                    ; $77ea: $29
    xor d                                         ; $77eb: $aa
    jp c, Jump_054_7b0f                           ; $77ec: $da $0f $7b

    ret                                           ; $77ef: $c9


    adc b                                         ; $77f0: $88
    add a                                         ; $77f1: $87
    pop hl                                        ; $77f2: $e1
    cp d                                          ; $77f3: $ba
    call Call_000_1a6b                            ; $77f4: $cd $6b $1a
    push hl                                       ; $77f7: $e5
    jp c, Jump_054_78c9                           ; $77f8: $da $c9 $78

    sub [hl]                                      ; $77fb: $96
    pop de                                        ; $77fc: $d1
    cp c                                          ; $77fd: $b9
    jp nc, $c44f                                  ; $77fe: $d2 $4f $c4

    db $ed                                        ; $7801: $ed
    ld e, b                                       ; $7802: $58
    cp e                                          ; $7803: $bb
    ld b, e                                       ; $7804: $43
    halt                                          ; $7805: $76
    push de                                       ; $7806: $d5
    sub h                                         ; $7807: $94
    ld a, $ec                                     ; $7808: $3e $ec
    nop                                           ; $780a: $00
    rst $10                                       ; $780b: $d7
    sbc e                                         ; $780c: $9b
    ld e, d                                       ; $780d: $5a
    ld h, $c9                                     ; $780e: $26 $c9
    db $fd                                        ; $7810: $fd
    pop de                                        ; $7811: $d1
    dec e                                         ; $7812: $1d
    sub a                                         ; $7813: $97
    ld a, [c]                                     ; $7814: $f2
    call z, Call_054_74ef                         ; $7815: $cc $ef $74
    cp h                                          ; $7818: $bc
    inc e                                         ; $7819: $1c
    halt                                          ; $781a: $76
    db $e4                                        ; $781b: $e4
    push bc                                       ; $781c: $c5
    jr c, @+$6e                                   ; $781d: $38 $6c

    dec [hl]                                      ; $781f: $35
    or d                                          ; $7820: $b2
    ld [hl-], a                                   ; $7821: $32
    db $ed                                        ; $7822: $ed
    ld [hl], e                                    ; $7823: $73
    ld [hl], d                                    ; $7824: $72

jr_054_7825:
    db $ed                                        ; $7825: $ed
    adc $b2                                       ; $7826: $ce $b2
    add h                                         ; $7828: $84
    ld h, [hl]                                    ; $7829: $66
    cp b                                          ; $782a: $b8
    ld l, [hl]                                    ; $782b: $6e
    di                                            ; $782c: $f3
    ld e, h                                       ; $782d: $5c
    inc hl                                        ; $782e: $23
    sbc [hl]                                      ; $782f: $9e
    db $ec                                        ; $7830: $ec
    ld h, h                                       ; $7831: $64
    inc a                                         ; $7832: $3c
    rst $10                                       ; $7833: $d7
    inc e                                         ; $7834: $1c
    rrca                                          ; $7835: $0f
    jp hl                                         ; $7836: $e9


    ld h, d                                       ; $7837: $62
    rrc b                                         ; $7838: $cb $08
    rst $10                                       ; $783a: $d7
    ld c, b                                       ; $783b: $48
    ld l, d                                       ; $783c: $6a
    ld [hl], h                                    ; $783d: $74
    xor [hl]                                      ; $783e: $ae
    db $f4                                        ; $783f: $f4
    inc de                                        ; $7840: $13
    ld [hl], c                                    ; $7841: $71
    dec sp                                        ; $7842: $3b
    ld l, $88                                     ; $7843: $2e $88
    nop                                           ; $7845: $00
    cp l                                          ; $7846: $bd
    xor c                                         ; $7847: $a9
    ld h, l                                       ; $7848: $65
    sub d                                         ; $7849: $92
    call c, $dd1f                                 ; $784a: $dc $1f $dd
    ld [hl], c                                    ; $784d: $71
    add hl, hl                                    ; $784e: $29
    rst $08                                       ; $784f: $cf
    db $fc                                        ; $7850: $fc
    ld c, [hl]                                    ; $7851: $4e
    rst $00                                       ; $7852: $c7
    bit 4, c                                      ; $7853: $cb $61
    ld b, a                                       ; $7855: $47
    ld e, [hl]                                    ; $7856: $5e
    adc h                                         ; $7857: $8c
    add $56                                       ; $7858: $c6 $56
    inc hl                                        ; $785a: $23
    dec hl                                        ; $785b: $2b
    db $d3                                        ; $785c: $d3
    ld a, $27                                     ; $785d: $3e $27
    rst $10                                       ; $785f: $d7
    xor $2c                                       ; $7860: $ee $2c
    ld c, e                                       ; $7862: $4b
    ld l, b                                       ; $7863: $68
    add [hl]                                      ; $7864: $86
    db $eb                                        ; $7865: $eb
    ld [hl], $cf                                  ; $7866: $36 $cf
    dec [hl]                                      ; $7868: $35
    ld [c], a                                     ; $7869: $e2
    ret                                           ; $786a: $c9


    ld c, [hl]                                    ; $786b: $4e
    add $73                                       ; $786c: $c6 $73
    call $90f1                                    ; $786e: $cd $f1 $90
    ld l, $b6                                     ; $7871: $2e $b6
    adc h                                         ; $7873: $8c
    ld [hl], b                                    ; $7874: $70
    adc l                                         ; $7875: $8d
    and h                                         ; $7876: $a4
    ld b, [hl]                                    ; $7877: $46
    rst $20                                       ; $7878: $e7
    ld c, d                                       ; $7879: $4a
    ccf                                           ; $787a: $3f
    ld de, $e3b7                                  ; $787b: $11 $b7 $e3
    add d                                         ; $787e: $82
    ld [$ff80], sp                                ; $787f: $08 $80 $ff
    adc b                                         ; $7882: $88
    and a                                         ; $7883: $a7
    sub h                                         ; $7884: $94
    ld b, a                                       ; $7885: $47
    rst $20                                       ; $7886: $e7
    jp nz, $c25f                                  ; $7887: $c2 $5f $c2

    call nc, $c75b                                ; $788a: $d4 $5b $c7
    ld h, c                                       ; $788d: $61

jr_054_788e:
    ret                                           ; $788e: $c9


    xor e                                         ; $788f: $ab
    pop hl                                        ; $7890: $e1
    cpl                                           ; $7891: $2f
    xor d                                         ; $7892: $aa
    xor h                                         ; $7893: $ac
    ld e, l                                       ; $7894: $5d
    ld c, $eb                                     ; $7895: $0e $eb
    jr c, jr_054_7825                             ; $7897: $38 $8c

    dec hl                                        ; $7899: $2b
    dec hl                                        ; $789a: $2b
    push hl                                       ; $789b: $e5
    pop de                                        ; $789c: $d1
    cp c                                          ; $789d: $b9
    ld [hl], b                                    ; $789e: $70
    ld [hl], e                                    ; $789f: $73
    dec l                                         ; $78a0: $2d
    ld a, c                                       ; $78a1: $79
    dec [hl]                                      ; $78a2: $35
    db $ec                                        ; $78a3: $ec
    jp c, $a64b                                   ; $78a4: $da $4b $a6

    call z, Call_000_0f3b                         ; $78a7: $cc $3b $0f
    ld h, e                                       ; $78aa: $63
    ld b, e                                       ; $78ab: $43
    inc b                                         ; $78ac: $04
    ld [hl], a                                    ; $78ad: $77
    ccf                                           ; $78ae: $3f
    adc h                                         ; $78af: $8c
    rst $18                                       ; $78b0: $df
    adc $77                                       ; $78b1: $ce $77
    xor l                                         ; $78b3: $ad
    db $e3                                        ; $78b4: $e3
    jr nc, jr_054_788e                            ; $78b5: $30 $d7

    ld c, $35                                     ; $78b7: $0e $35

Jump_054_78b9:
    ld a, [hl-]                                   ; $78b9: $3a
    rla                                           ; $78ba: $17
    sub a                                         ; $78bb: $97
    and [hl]                                      ; $78bc: $a6
    dec [hl]                                      ; $78bd: $35
    adc e                                         ; $78be: $8b
    or d                                          ; $78bf: $b2
    halt                                          ; $78c0: $76
    ret c                                         ; $78c1: $d8

    or d                                          ; $78c2: $b2
    adc [hl]                                      ; $78c3: $8e
    jp $72b8                                      ; $78c4: $c3 $b8 $72


    db $ed                                        ; $78c7: $ed
    rst $00                                       ; $78c8: $c7

Jump_054_78c9:
    add sp, $29                                   ; $78c9: $e8 $29
    di                                            ; $78cb: $f3
    adc b                                         ; $78cc: $88
    adc [hl]                                      ; $78cd: $8e
    dec de                                        ; $78ce: $1b
    jp hl                                         ; $78cf: $e9


    jp c, $329f                                   ; $78d0: $da $9f $32

    or e                                          ; $78d3: $b3
    ld b, a                                       ; $78d4: $47
    cp a                                          ; $78d5: $bf
    ld h, b                                       ; $78d6: $60
    add [hl]                                      ; $78d7: $86
    ld [$fadd], sp                                ; $78d8: $08 $dd $fa
    jp nc, Jump_054_47a5                          ; $78db: $d2 $a5 $47

    or $7e                                        ; $78de: $f6 $7e
    adc h                                         ; $78e0: $8c
    ld e, [hl]                                    ; $78e1: $5e
    ld a, [hl-]                                   ; $78e2: $3a
    rst $00                                       ; $78e3: $c7
    scf                                           ; $78e4: $37
    cp $6d                                        ; $78e5: $fe $6d
    call nc, $8ee8                                ; $78e7: $d4 $e8 $8e
    ld c, e                                       ; $78ea: $4b
    inc a                                         ; $78eb: $3c
    ld a, [hl-]                                   ; $78ec: $3a
    ld d, a                                       ; $78ed: $57
    ld a, [$b889]                                 ; $78ee: $fa $89 $b8
    dec e                                         ; $78f1: $1d
    adc e                                         ; $78f2: $8b
    halt                                          ; $78f3: $76
    rst $00                                       ; $78f4: $c7
    or l                                          ; $78f5: $b5
    adc [hl]                                      ; $78f6: $8e
    inc bc                                        ; $78f7: $03
    ld e, h                                       ; $78f8: $5c
    rra                                           ; $78f9: $1f
    add a                                         ; $78fa: $87
    sbc l                                         ; $78fb: $9d
    ld hl, sp-$26                                 ; $78fc: $f8 $da
    add sp, -$72                                  ; $78fe: $e8 $8e
    ld c, e                                       ; $7900: $4b
    inc a                                         ; $7901: $3c
    ld h, l                                       ; $7902: $65
    add hl, de                                    ; $7903: $19
    sbc l                                         ; $7904: $9d
    ld l, e                                       ; $7905: $6b
    jp z, $2201                                   ; $7906: $ca $01 $22

    rst $30                                       ; $7909: $f7
    ld hl, sp-$3d                                 ; $790a: $f8 $c3
    db $dd                                        ; $790c: $dd
    dec de                                        ; $790d: $1b
    or $63                                        ; $790e: $f6 $63
    db $f4                                        ; $7910: $f4
    ld h, d                                       ; $7911: $62
    add $e3                                       ; $7912: $c6 $e3
    rst $18                                       ; $7914: $df
    jp nc, Jump_054_7a2f                          ; $7915: $d2 $2f $7a

    db $fc                                        ; $7918: $fc
    db $db                                        ; $7919: $db
    ld a, d                                       ; $791a: $7a
    rst $10                                       ; $791b: $d7
    and a                                         ; $791c: $a7
    jp hl                                         ; $791d: $e9


    cpl                                           ; $791e: $2f
    ld h, c                                       ; $791f: $61
    ret c                                         ; $7920: $d8

    ld l, d                                       ; $7921: $6a
    jp z, $1102                                   ; $7922: $ca $02 $11

    db $dd                                        ; $7925: $dd
    and $1d                                       ; $7926: $e6 $1d
    or d                                          ; $7928: $b2
    xor e                                         ; $7929: $ab
    ld c, $a6                                     ; $792a: $0e $a6
    sbc d                                         ; $792c: $9a
    ld a, c                                       ; $792d: $79
    ld l, c                                       ; $792e: $69
    cp l                                          ; $792f: $bd
    sub h                                         ; $7930: $94
    and a                                         ; $7931: $a7
    db $f4                                        ; $7932: $f4
    dec h                                         ; $7933: $25
    ld l, [hl]                                    ; $7934: $6e
    inc hl                                        ; $7935: $23
    call c, Call_054_6b9a                         ; $7936: $dc $9a $6b
    add a                                         ; $7939: $87
    ld a, a                                       ; $793a: $7f
    ld l, e                                       ; $793b: $6b
    sbc [hl]                                      ; $793c: $9e
    ld h, l                                       ; $793d: $65
    xor l                                         ; $793e: $ad
    xor a                                         ; $793f: $af
    ld [hl], d                                    ; $7940: $72
    ld b, c                                       ; $7941: $41
    inc b                                         ; $7942: $04
    add hl, hl                                    ; $7943: $29
    ld c, h                                       ; $7944: $4c
    db $ed                                        ; $7945: $ed
    rrca                                          ; $7946: $0f
    ld d, e                                       ; $7947: $53
    ld [c], a                                     ; $7948: $e2
    inc de                                        ; $7949: $13
    cp a                                          ; $794a: $bf
    ret z                                         ; $794b: $c8

    or b                                          ; $794c: $b0
    push de                                       ; $794d: $d5
    sub h                                         ; $794e: $94
    dec b                                         ; $794f: $05
    xor $1e                                       ; $7950: $ee $1e
    ld a, a                                       ; $7952: $7f
    db $ed                                        ; $7953: $ed
    ld [de], a                                    ; $7954: $12
    dec bc                                        ; $7955: $0b
    ld l, e                                       ; $7956: $6b
    and a                                         ; $7957: $a7
    call z, $ad73                                 ; $7958: $cc $73 $ad
    sub e                                         ; $795b: $93
    daa                                           ; $795c: $27
    ld d, h                                       ; $795d: $54
    ld c, l                                       ; $795e: $4d
    jp hl                                         ; $795f: $e9


    dec sp                                        ; $7960: $3b
    pop af                                        ; $7961: $f1
    or l                                          ; $7962: $b5
    pop de                                        ; $7963: $d1

jr_054_7964:
    dec e                                         ; $7964: $1d
    sub a                                         ; $7965: $97
    ld a, b                                       ; $7966: $78
    ld c, c                                       ; $7967: $49
    ld l, $76                                     ; $7968: $2e $76
    ld l, c                                       ; $796a: $69
    and a                                         ; $796b: $a7
    call z, $0110                                 ; $796c: $cc $10 $01
    db $dd                                        ; $796f: $dd
    ld a, $27                                     ; $7970: $3e $27
    ld [hl], c                                    ; $7972: $71
    sub l                                         ; $7973: $95
    or l                                          ; $7974: $b5
    db $eb                                        ; $7975: $eb
    jr c, jr_054_7964                             ; $7976: $38 $ec

    ld b, h                                       ; $7978: $44
    cp l                                          ; $7979: $bd
    dec [hl]                                      ; $797a: $35
    xor a                                         ; $797b: $af
    ld c, e                                       ; $797c: $4b
    ld c, [hl]                                    ; $797d: $4e
    db $f4                                        ; $797e: $f4
    ld a, [hl-]                                   ; $797f: $3a
    ld c, $8b                                     ; $7980: $0e $8b
    cp d                                          ; $7982: $ba
    adc b                                         ; $7983: $88
    ld b, a                                       ; $7984: $47
    ld [hl], h                                    ; $7985: $74
    call c, Call_054_4f48                         ; $7986: $dc $48 $4f
    add hl, sp                                    ; $7989: $39
    ld b, b                                       ; $798a: $40
    inc b                                         ; $798b: $04
    scf                                           ; $798c: $37
    adc e                                         ; $798d: $8b

Call_054_798e:
    ld l, e                                       ; $798e: $6b
    ccf                                           ; $798f: $3f
    ld b, [hl]                                    ; $7990: $46
    ld b, e                                       ; $7991: $43
    inc b                                         ; $7992: $04
    dec a                                         ; $7993: $3d
    xor a                                         ; $7994: $af
    and [hl]                                      ; $7995: $a6
    db $f4                                        ; $7996: $f4
    sub c                                         ; $7997: $91
    push de                                       ; $7998: $d5
    sub l                                         ; $7999: $95
    xor b                                         ; $799a: $a8
    ld h, c                                       ; $799b: $61
    xor e                                         ; $799c: $ab
    dec e                                         ; $799d: $1d
    adc d                                         ; $799e: $8a
    db $f4                                        ; $799f: $f4
    ld [hl], d                                    ; $79a0: $72
    ld e, b                                       ; $79a1: $58
    ld a, [c]                                     ; $79a2: $f2
    ld b, h                                       ; $79a3: $44
    ld a, d                                       ; $79a4: $7a
    ld hl, $f8f7                                  ; $79a5: $21 $f7 $f8
    jp $bcf5                                      ; $79a8: $c3 $f5 $bc


    sbc d                                         ; $79ab: $9a
    jp nc, Jump_054_5647                          ; $79ac: $d2 $47 $56

    ld d, a                                       ; $79af: $57
    and d                                         ; $79b0: $a2
    ld b, [hl]                                    ; $79b1: $46
    db $ed                                        ; $79b2: $ed
    inc [hl]                                      ; $79b3: $34
    ld l, d                                       ; $79b4: $6a
    jp z, Jump_054_4cbc                           ; $79b5: $ca $bc $4c

    sub d                                         ; $79b8: $92
    cp l                                          ; $79b9: $bd
    db $10                                        ; $79ba: $10
    ld a, l                                       ; $79bb: $7d
    inc e                                         ; $79bc: $1c
    sub [hl]                                      ; $79bd: $96
    sbc b                                         ; $79be: $98
    rst $30                                       ; $79bf: $f7
    ld h, e                                       ; $79c0: $63
    db $f4                                        ; $79c1: $f4
    inc l                                         ; $79c2: $2c
    pop hl                                        ; $79c3: $e1
    ld c, c                                       ; $79c4: $49
    jr jr_054_7a3c                                ; $79c5: $18 $75

    adc [hl]                                      ; $79c7: $8e
    ld h, l                                       ; $79c8: $65
    sub [hl]                                      ; $79c9: $96
    pop de                                        ; $79ca: $d1
    dec e                                         ; $79cb: $1d
    sub a                                         ; $79cc: $97
    cp b                                          ; $79cd: $b8
    ld h, [hl]                                    ; $79ce: $66
    reti                                          ; $79cf: $d9


    pop de                                        ; $79d0: $d1
    inc [hl]                                      ; $79d1: $34
    ld [hl], $77                                  ; $79d2: $36 $77
    ld l, c                                       ; $79d4: $69
    add sp, -$1a                                  ; $79d5: $e8 $e6
    jr @+$23                                      ; $79d7: $18 $21

    ld [bc], a                                    ; $79d9: $02
    rla                                           ; $79da: $17
    sbc l                                         ; $79db: $9d
    ld c, $5c                                     ; $79dc: $0e $5c
    ld c, a                                       ; $79de: $4f
    ld a, [c]                                     ; $79df: $f2
    rst $08                                       ; $79e0: $cf
    sub h                                         ; $79e1: $94
    ld a, $d7                                     ; $79e2: $3e $d7
    add sp, $5c                                   ; $79e4: $e8 $5c
    jp hl                                         ; $79e6: $e9


    daa                                           ; $79e7: $27
    ld h, d                                       ; $79e8: $62
    sub $ee                                       ; $79e9: $d6 $ee
    ld d, b                                       ; $79eb: $50
    inc hl                                        ; $79ec: $23
    ld [hl], d                                    ; $79ed: $72
    ld d, e                                       ; $79ee: $53
    ld d, e                                       ; $79ef: $53
    ld c, $d3                                     ; $79f0: $0e $d3
    ld b, l                                       ; $79f2: $45
    sbc $b0                                       ; $79f3: $de $b0
    ld b, e                                       ; $79f5: $43
    ld l, d                                       ; $79f6: $6a
    inc b                                         ; $79f7: $04
    ld [hl], a                                    ; $79f8: $77
    ld a, $39                                     ; $79f9: $3e $39
    or c                                          ; $79fb: $b1
    db $e3                                        ; $79fc: $e3
    ld e, c                                       ; $79fd: $59
    ld d, $b2                                     ; $79fe: $16 $b2
    jp c, $a589                                   ; $7a00: $da $89 $a5

    and a                                         ; $7a03: $a7
    db $d3                                        ; $7a04: $d3
    ld e, a                                       ; $7a05: $5f
    jp nz, $93e2                                  ; $7a06: $c2 $e2 $93

    ld de, $371d                                  ; $7a09: $11 $1d $37
    jp nc, $0110                                  ; $7a0c: $d2 $10 $01

    or a                                          ; $7a0f: $b7
    rst $20                                       ; $7a10: $e7
    ld a, [de]                                    ; $7a11: $1a
    cp $32                                        ; $7a12: $fe $32
    push hl                                       ; $7a14: $e5
    ld [hl], $22                                  ; $7a15: $36 $22
    scf                                           ; $7a17: $37
    push hl                                       ; $7a18: $e5
    ld e, d                                       ; $7a19: $5a
    rst $00                                       ; $7a1a: $c7
    ld h, c                                       ; $7a1b: $61
    ret c                                         ; $7a1c: $d8

    ld h, c                                       ; $7a1d: $61
    cp d                                          ; $7a1e: $ba
    ret z                                         ; $7a1f: $c8

    dec de                                        ; $7a20: $1b
    sbc l                                         ; $7a21: $9d
    dec hl                                        ; $7a22: $2b
    db $fd                                        ; $7a23: $fd
    ld b, h                                       ; $7a24: $44
    call c, Call_000_0b8e                         ; $7a25: $dc $8e $0b
    ld [hl+], a                                   ; $7a28: $22
    rst $30                                       ; $7a29: $f7
    ld hl, sp+$6b                                 ; $7a2a: $f8 $6b
    add a                                         ; $7a2c: $87
    dec l                                         ; $7a2d: $2d
    db $eb                                        ; $7a2e: $eb

Jump_054_7a2f:
    jr c, jr_054_7a5d                             ; $7a2f: $38 $2c

    or c                                          ; $7a31: $b1
    ld d, d                                       ; $7a32: $52
    xor [hl]                                      ; $7a33: $ae
    sub c                                         ; $7a34: $91
    call nc, Call_054_4f1e                        ; $7a35: $d4 $1e $4f
    sbc c                                         ; $7a38: $99
    ld [hl], a                                    ; $7a39: $77
    sbc b                                         ; $7a3a: $98
    xor d                                         ; $7a3b: $aa

jr_054_7a3c:
    ld e, c                                       ; $7a3c: $59
    sub $ba                                       ; $7a3d: $d6 $ba
    adc [hl]                                      ; $7a3f: $8e
    ld a, h                                       ; $7a40: $7c
    add hl, bc                                    ; $7a41: $09
    ei                                            ; $7a42: $fb
    or e                                          ; $7a43: $b3
    call z, $b9ad                                 ; $7a44: $cc $ad $b9
    or $44                                        ; $7a47: $f6 $44
    inc l                                         ; $7a49: $2c
    ld c, e                                       ; $7a4a: $4b
    rst $20                                       ; $7a4b: $e7
    ld [$b711], sp                                ; $7a4c: $08 $11 $b7
    push de                                       ; $7a4f: $d5
    sub h                                         ; $7a50: $94
    ld a, $3a                                     ; $7a51: $3e $3a
    ld d, a                                       ; $7a53: $57
    ld a, [$9889]                                 ; $7a54: $fa $89 $98
    ld a, e                                       ; $7a57: $7b
    db $ed                                        ; $7a58: $ed
    halt                                          ; $7a59: $76
    ld h, e                                       ; $7a5a: $63
    bit 5, e                                      ; $7a5b: $cb $6b

jr_054_7a5d:
    sbc h                                         ; $7a5d: $9c
    ld a, d                                       ; $7a5e: $7a
    add hl, hl                                    ; $7a5f: $29
    ld d, c                                       ; $7a60: $51
    ld l, a                                       ; $7a61: $6f
    call $92eb                                    ; $7a62: $cd $eb $92
    inc de                                        ; $7a65: $13
    cp l                                          ; $7a66: $bd
    adc [hl]                                      ; $7a67: $8e
    jp $3872                                      ; $7a68: $c3 $72 $38


    call nc, Call_054_5792                        ; $7a6b: $d4 $92 $57
    ld d, e                                       ; $7a6e: $53
    and $d4                                       ; $7a6f: $e6 $d4
    ld [$f8f7], sp                                ; $7a71: $08 $f7 $f8
    ld l, e                                       ; $7a74: $6b
    and a                                         ; $7a75: $a7
    call z, $5fa3                                 ; $7a76: $cc $a3 $5f
    jr nc, @-$6f                                  ; $7a79: $30 $8f

    ld a, b                                       ; $7a7b: $78
    or l                                          ; $7a7c: $b5
    db $e4                                        ; $7a7d: $e4
    rst $28                                       ; $7a7e: $ef
    rst $00                                       ; $7a7f: $c7
    add sp, $11                                   ; $7a80: $e8 $11
    adc a                                         ; $7a82: $8f
    ld a, c                                       ; $7a83: $79
    ld d, $a1                                     ; $7a84: $16 $a1
    jr nz, jr_054_7a8a                            ; $7a86: $20 $02

    rst $30                                       ; $7a88: $f7
    ld c, d                                       ; $7a89: $4a

jr_054_7a8a:
    ld [hl], h                                    ; $7a8a: $74
    or e                                          ; $7a8b: $b3
    inc c                                         ; $7a8c: $0c
    ld a, a                                       ; $7a8d: $7f
    ld e, c                                       ; $7a8e: $59
    cp d                                          ; $7a8f: $ba
    ld a, c                                       ; $7a90: $79
    add hl, sp                                    ; $7a91: $39
    inc e                                         ; $7a92: $1c
    ld l, d                                       ; $7a93: $6a
    ld [hl], h                                    ; $7a94: $74
    xor [hl]                                      ; $7a95: $ae
    db $f4                                        ; $7a96: $f4
    inc de                                        ; $7a97: $13
    ld sp, $b2cf                                  ; $7a98: $31 $cf $b2
    ldh a, [rNR50]                                ; $7a9b: $f0 $24
    ret nz                                        ; $7a9d: $c0

    push af                                       ; $7a9e: $f5
    inc a                                         ; $7a9f: $3c
    ld e, c                                       ; $7aa0: $59
    cp d                                          ; $7aa1: $ba
    ld a, c                                       ; $7aa2: $79
    xor a                                         ; $7aa3: $af
    xor c                                         ; $7aa4: $a9
    ld a, [$c98b]                                 ; $7aa5: $fa $8b $c9
    ld h, a                                       ; $7aa8: $67
    sbc [hl]                                      ; $7aa9: $9e
    or d                                          ; $7aaa: $b2
    ld b, b                                       ; $7aab: $40
    inc b                                         ; $7aac: $04
    rst $30                                       ; $7aad: $f7
    ld hl, sp+$6b                                 ; $7aae: $f8 $6b
    ld b, a                                       ; $7ab0: $47
    rst $20                                       ; $7ab1: $e7

Jump_054_7ab2:
    ld c, d                                       ; $7ab2: $4a
    ccf                                           ; $7ab3: $3f
    ld de, $e3b7                                  ; $7ab4: $11 $b7 $e3
    ld e, d                                       ; $7ab7: $5a
    ld h, d                                       ; $7ab8: $62
    ld e, [hl]                                    ; $7ab9: $5e
    rst $00                                       ; $7aba: $c7
    ld h, c                                       ; $7abb: $61
    ld e, a                                       ; $7abc: $5f
    add d                                         ; $7abd: $82
    add l                                         ; $7abe: $85
    cp a                                          ; $7abf: $bf
    add h                                         ; $7ac0: $84
    ld h, l                                       ; $7ac1: $65
    inc c                                         ; $7ac2: $0c
    ld de, $55f7                                  ; $7ac3: $11 $f7 $55
    and [hl]                                      ; $7ac6: $a6
    ld a, l                                       ; $7ac7: $7d
    ld c, [hl]                                    ; $7ac8: $4e
    xor [hl]                                      ; $7ac9: $ae
    db $dd                                        ; $7aca: $dd
    ld e, c                                       ; $7acb: $59
    sub [hl]                                      ; $7acc: $96
    ret nc                                        ; $7acd: $d0

    cp h                                          ; $7ace: $bc
    call nz, Call_054_653c                        ; $7acf: $c4 $3c $65

Jump_054_7ad2:
    sbc $f9                                       ; $7ad2: $de $f9
    ld sp, $18ba                                  ; $7ad4: $31 $ba $18
    ld [hl+], a                                   ; $7ad7: $22
    db $dd                                        ; $7ad8: $dd
    push af                                       ; $7ad9: $f5
    ld b, [hl]                                    ; $7ada: $46
    and $18                                       ; $7adb: $e6 $18
    ld e, l                                       ; $7add: $5d
    ei                                            ; $7ade: $fb
    ld c, e                                       ; $7adf: $4b
    ld [hl], d                                    ; $7ae0: $72

Jump_054_7ae1:
    ld d, e                                       ; $7ae1: $53
    jp c, Jump_000_29a5                           ; $7ae2: $da $a5 $29

    push hl                                       ; $7ae5: $e5
    add hl, hl                                    ; $7ae6: $29
    ld a, l                                       ; $7ae7: $7d
    add hl, sp                                    ; $7ae8: $39
    adc h                                         ; $7ae9: $8c
    adc $95                                       ; $7aea: $ce $95
    ld a, [hl]                                    ; $7aec: $7e
    ld [hl+], a                                   ; $7aed: $22
    ld l, [hl]                                    ; $7aee: $6e
    rst $00                                       ; $7aef: $c7
    ld [hl-], a                                   ; $7af0: $32
    push af                                       ; $7af1: $f5
    dec h                                         ; $7af2: $25
    dec [hl]                                      ; $7af3: $35
    ld [bc], a                                    ; $7af4: $02
    ld a, l                                       ; $7af5: $7d
    inc e                                         ; $7af6: $1c
    sub [hl]                                      ; $7af7: $96
    sbc b                                         ; $7af8: $98
    rst $30                                       ; $7af9: $f7
    ld h, e                                       ; $7afa: $63
    db $f4                                        ; $7afb: $f4
    adc b                                         ; $7afc: $88
    inc h                                         ; $7afd: $24
    rst $10                                       ; $7afe: $d7
    ld a, [hl-]                                   ; $7aff: $3a
    ld c, $3b                                     ; $7b00: $0e $3b
    ld d, c                                       ; $7b02: $51
    ld l, a                                       ; $7b03: $6f
    call $3b4b                                    ; $7b04: $cd $4b $3b
    ld l, b                                       ; $7b07: $68
    ld b, h                                       ; $7b08: $44
    inc c                                         ; $7b09: $0c
    ld de, $3e77                                  ; $7b0a: $11 $77 $3e
    sbc c                                         ; $7b0d: $99

Jump_054_7b0e:
    ld a, [c]                                     ; $7b0e: $f2

Jump_054_7b0f:
    add sp, -$72                                  ; $7b0f: $e8 $8e
    ld c, e                                       ; $7b11: $4b
    ld a, h                                       ; $7b12: $7c
    or h                                          ; $7b13: $b4
    ld a, e                                       ; $7b14: $7b
    adc l                                         ; $7b15: $8d
    rrca                                          ; $7b16: $0f
    push de                                       ; $7b17: $d5

Call_054_7b18:
    ld l, e                                       ; $7b18: $6b
    db $dd                                        ; $7b19: $dd
    and $25                                       ; $7b1a: $e6 $25
    xor a                                         ; $7b1c: $af
    or $85                                        ; $7b1d: $f6 $85
    ld e, l                                       ; $7b1f: $5d
    ld a, $e7                                     ; $7b20: $3e $e7
    add hl, bc                                    ; $7b22: $09
    ld b, e                                       ; $7b23: $43
    inc b                                         ; $7b24: $04
    add hl, hl                                    ; $7b25: $29
    ld e, $49                                     ; $7b26: $1e $49
    dec l                                         ; $7b28: $2d
    db $fd                                        ; $7b29: $fd
    db $d3                                        ; $7b2a: $d3
    db $ed                                        ; $7b2b: $ed
    ld h, a                                       ; $7b2c: $67
    halt                                          ; $7b2d: $76
    inc [hl]                                      ; $7b2e: $34
    jp Jump_054_7b75                              ; $7b2f: $c3 $75 $7b


    call nz, $a5ab                                ; $7b32: $c4 $ab $a5
    cp e                                          ; $7b35: $bb
    and d                                         ; $7b36: $a2
    ld l, e                                       ; $7b37: $6b
    add hl, de                                    ; $7b38: $19
    rst $28                                       ; $7b39: $ef
    dec [hl]                                      ; $7b3a: $35
    add [hl]                                      ; $7b3b: $86
    ld [$fadd], sp                                ; $7b3c: $08 $dd $fa
    ld [c], a                                     ; $7b3f: $e2
    sub e                                         ; $7b40: $93
    ld [hl], l                                    ; $7b41: $75
    ld a, [c]                                     ; $7b42: $f2
    jp nc, Jump_000_1a0e                          ; $7b43: $d2 $0e $1a

    ld de, $5a8f                                  ; $7b46: $11 $8f $5a
    ld d, a                                       ; $7b49: $57
    ld [c], a                                     ; $7b4a: $e2
    add hl, hl                                    ; $7b4b: $29
    add a                                         ; $7b4c: $87
    ld h, c                                       ; $7b4d: $61
    xor e                                         ; $7b4e: $ab
    ld d, c                                       ; $7b4f: $51
    and e                                         ; $7b50: $a3
    dec sp                                        ; $7b51: $3b
    ld l, $f1                                     ; $7b52: $2e $f1
    sub h                                         ; $7b54: $94
    jp Jump_054_5b8e                              ; $7b55: $c3 $8e $5b


    ld [bc], a                                    ; $7b58: $02
    ld de, $c93d                                  ; $7b59: $11 $3d $c9
    ccf                                           ; $7b5c: $3f
    ld d, e                                       ; $7b5d: $53
    ld a, [$e272]                                 ; $7b5e: $fa $72 $e2
    ld a, [hl-]                                   ; $7b61: $3a
    xor [hl]                                      ; $7b62: $ae
    add hl, hl                                    ; $7b63: $29
    adc e                                         ; $7b64: $8b
    halt                                          ; $7b65: $76
    add a                                         ; $7b66: $87
    ld e, d                                       ; $7b67: $5a
    ld a, h                                       ; $7b68: $7c
    ld [hl], d                                    ; $7b69: $72
    ld h, d                                       ; $7b6a: $62
    rst $00                                       ; $7b6b: $c7
    ld d, e                                       ; $7b6c: $53
    sub [hl]                                      ; $7b6d: $96
    pop de                                        ; $7b6e: $d1
    cp c                                          ; $7b6f: $b9
    ld c, [hl]                                    ; $7b70: $4e
    ld a, [c]                                     ; $7b71: $f2
    ld b, l                                       ; $7b72: $45
    ld e, h                                       ; $7b73: $5c
    ld a, e                                       ; $7b74: $7b

Jump_054_7b75:
    ret                                           ; $7b75: $c9


    adc [hl]                                      ; $7b76: $8e
    jp Jump_054_5b8e                              ; $7b77: $c3 $8e $5b


    ld [bc], a                                    ; $7b7a: $02
    ld de, $1c7d                                  ; $7b7b: $11 $7d $1c
    ld b, [hl]                                    ; $7b7e: $46
    ld d, e                                       ; $7b7f: $53
    or l                                          ; $7b80: $b5
    rra                                           ; $7b81: $1f
    and e                                         ; $7b82: $a3
    rst $10                                       ; $7b83: $d7
    ld [hl], d                                    ; $7b84: $72
    ld [hl-], a                                   ; $7b85: $32
    ld l, d                                       ; $7b86: $6a
    jp hl                                         ; $7b87: $e9


    daa                                           ; $7b88: $27
    ld [c], a                                     ; $7b89: $e2
    cp l                                          ; $7b8a: $bd
    ld h, h                                       ; $7b8b: $64
    ld hl, sp+$61                                 ; $7b8c: $f8 $61
    db $fc                                        ; $7b8e: $fc
    sub [hl]                                      ; $7b8f: $96
    jp $47c8                                      ; $7b90: $c3 $c8 $47


    sub d                                         ; $7b93: $92
    ld c, a                                       ; $7b94: $4f
    cp e                                          ; $7b95: $bb
    ld b, e                                       ; $7b96: $43
    db $ed                                        ; $7b97: $ed
    ld d, b                                       ; $7b98: $50
    jp nz, $e27b                                  ; $7b99: $c2 $7b $e2

    ld e, d                                       ; $7b9c: $5a
    rst $00                                       ; $7b9d: $c7
    ld h, c                                       ; $7b9e: $61
    ccf                                           ; $7b9f: $3f
    ld b, [hl]                                    ; $7ba0: $46
    ld c, a                                       ; $7ba1: $4f
    or d                                          ; $7ba2: $b2
    sub a                                         ; $7ba3: $97
    ld sp, $f744                                  ; $7ba4: $31 $44 $f7
    ld hl, sp+$6b                                 ; $7ba7: $f8 $6b
    add a                                         ; $7ba9: $87
    dec l                                         ; $7baa: $2d
    db $eb                                        ; $7bab: $eb
    jr c, @-$12                                   ; $7bac: $38 $ec

    ld b, h                                       ; $7bae: $44
    cp l                                          ; $7baf: $bd
    dec [hl]                                      ; $7bb0: $35
    cpl                                           ; $7bb1: $2f
    ld [hl], h                                    ; $7bb2: $74
    ld e, h                                       ; $7bb3: $5c
    ld [c], a                                     ; $7bb4: $e2
    or l                                          ; $7bb5: $b5
    cp [hl]                                       ; $7bb6: $be
    adc d                                         ; $7bb7: $8a
    ld b, a                                       ; $7bb8: $47
    db $ed                                        ; $7bb9: $ed
    adc $9b                                       ; $7bba: $ce $9b
    ld d, e                                       ; $7bbc: $53
    nop                                           ; $7bbd: $00
    sbc $36                                       ; $7bbe: $de $36
    ld a, [hl-]                                   ; $7bc0: $3a
    ld d, a                                       ; $7bc1: $57
    ld a, [$b889]                                 ; $7bc2: $fa $89 $b8
    dec e                                         ; $7bc5: $1d
    rla                                           ; $7bc6: $17
    ld e, h                                       ; $7bc7: $5c
    or a                                          ; $7bc8: $b7
    ld a, c                                       ; $7bc9: $79
    call nz, $ca53                                ; $7bca: $c4 $53 $ca
    ld c, e                                       ; $7bcd: $4b
    ld a, [$5e2a]                                 ; $7bce: $fa $2a $5e
    cp d                                          ; $7bd1: $ba
    sbc $a2                                       ; $7bd2: $de $a2
    sbc $38                                       ; $7bd4: $de $38
    dec [hl]                                      ; $7bd6: $35
    ld [bc], a                                    ; $7bd7: $02
    add hl, hl                                    ; $7bd8: $29
    ld h, h                                       ; $7bd9: $64
    ld d, a                                       ; $7bda: $57
    dec c                                         ; $7bdb: $0d
    ccf                                           ; $7bdc: $3f
    push af                                       ; $7bdd: $f5
    ldh a, [$ee]                                  ; $7bde: $f0 $ee
    sub h                                         ; $7be0: $94
    ld c, a                                       ; $7be1: $4f
    ld a, d                                       ; $7be2: $7a
    inc h                                         ; $7be3: $24
    or l                                          ; $7be4: $b5
    db $f4                                        ; $7be5: $f4
    ld c, a                                       ; $7be6: $4f
    or a                                          ; $7be7: $b7
    sbc a                                         ; $7be8: $9f
    reti                                          ; $7be9: $d9


    pop de                                        ; $7bea: $d1
    inc c                                         ; $7beb: $0c
    rst $10                                       ; $7bec: $d7
    and e                                         ; $7bed: $a3
    set 4, d                                      ; $7bee: $cb $e2
    sub e                                         ; $7bf0: $93
    sbc l                                         ; $7bf1: $9d
    ccf                                           ; $7bf2: $3f
    push hl                                       ; $7bf3: $e5
    jr nc, jr_054_7c18                            ; $7bf4: $30 $22

    ret                                           ; $7bf6: $c9


    dec [hl]                                      ; $7bf7: $35
    and l                                         ; $7bf8: $a5
    rst $28                                       ; $7bf9: $ef
    call nz, $96d7                                ; $7bfa: $c4 $d7 $96

jr_054_7bfd:
    halt                                          ; $7bfd: $76
    ret nc                                        ; $7bfe: $d0

    adc b                                         ; $7bff: $88
    ld a, b                                       ; $7c00: $78
    call nc, $d99a                                ; $7c01: $d4 $9a $d9
    db $10                                        ; $7c04: $10
    ld bc, $e7b7                                  ; $7c05: $01 $b7 $e7
    ld [hl], d                                    ; $7c08: $72
    ld d, e                                       ; $7c09: $53
    ld h, l                                       ; $7c0a: $65
    pop af                                        ; $7c0b: $f1
    ldh a, [rNR22]                                ; $7c0c: $f0 $17
    adc a                                         ; $7c0e: $8f
    ld l, h                                       ; $7c0f: $6c
    cp $ca                                        ; $7c10: $fe $ca
    and e                                         ; $7c12: $a3
    halt                                          ; $7c13: $76
    cp $1e                                        ; $7c14: $fe $1e
    xor a                                         ; $7c16: $af
    rst $08                                       ; $7c17: $cf

jr_054_7c18:
    ld l, l                                       ; $7c18: $6d
    cp l                                          ; $7c19: $bd
    sub a                                         ; $7c1a: $97
    cp h                                          ; $7c1b: $bc
    sbc d                                         ; $7c1c: $9a
    ld h, l                                       ; $7c1d: $65
    ld [hl], h                                    ; $7c1e: $74
    xor [hl]                                      ; $7c1f: $ae
    db $f4                                        ; $7c20: $f4
    inc de                                        ; $7c21: $13
    ld [hl], c                                    ; $7c22: $71
    dec sp                                        ; $7c23: $3b
    add [hl]                                      ; $7c24: $86
    cp e                                          ; $7c25: $bb
    db $db                                        ; $7c26: $db
    ld h, c                                       ; $7c27: $61

jr_054_7c28:
    ld [hl], h                                    ; $7c28: $74
    rst $00                                       ; $7c29: $c7

jr_054_7c2a:
    dec h                                         ; $7c2a: $25
    and $29                                       ; $7c2b: $e6 $29
    cpl                                           ; $7c2d: $2f
    or c                                          ; $7c2e: $b1
    ld a, [de]                                    ; $7c2f: $1a
    or l                                          ; $7c30: $b5
    ld h, e                                       ; $7c31: $63
    ld d, c                                       ; $7c32: $51
    ld e, $76                                     ; $7c33: $1e $76
    jr jr_054_7c28                                ; $7c35: $18 $f1

    add hl, de                                    ; $7c37: $19
    ld [hl+], a                                   ; $7c38: $22
    rst $30                                       ; $7c39: $f7
    ld hl, sp+$6b                                 ; $7c3a: $f8 $6b
    rst $10                                       ; $7c3c: $d7
    ld [hl], c                                    ; $7c3d: $71
    ld e, b                                       ; $7c3e: $58
    and b                                         ; $7c3f: $a0
    ld l, d                                       ; $7c40: $6a
    ld a, a                                       ; $7c41: $7f
    ld [hl], h                                    ; $7c42: $74
    ld d, a                                       ; $7c43: $57
    dec e                                         ; $7c44: $1d
    or [hl]                                       ; $7c45: $b6

jr_054_7c46:
    halt                                          ; $7c46: $76
    dec e                                         ; $7c47: $1d
    add a                                         ; $7c48: $87
    push af                                       ; $7c49: $f5
    inc de                                        ; $7c4a: $13
    jr nz, @+$04                                  ; $7c4b: $20 $02

    rst $30                                       ; $7c4d: $f7

Call_054_7c4e:
Jump_054_7c4e:
    ld hl, sp+$6b                                 ; $7c4e: $f8 $6b
    and a                                         ; $7c50: $a7
    sbc $b8                                       ; $7c51: $de $b8
    ld [hl], d                                    ; $7c53: $72
    xor l                                         ; $7c54: $ad
    db $e3                                        ; $7c55: $e3
    jr nc, jr_054_7bfd                            ; $7c56: $30 $a5

    rrca                                          ; $7c58: $0f
    ld d, e                                       ; $7c59: $53
    ld d, e                                       ; $7c5a: $53
    push af                                       ; $7c5b: $f5
    inc de                                        ; $7c5c: $13
    cpl                                           ; $7c5d: $2f
    sub h                                         ; $7c5e: $94
    ld l, $ea                                     ; $7c5f: $2e $ea
    add a                                         ; $7c61: $87
    pop de                                        ; $7c62: $d1
    cp c                                          ; $7c63: $b9
    ld c, [hl]                                    ; $7c64: $4e
    sub h                                         ; $7c65: $94
    cpl                                           ; $7c66: $2f
    ld h, c                                       ; $7c67: $61
    ld [hl], h                                    ; $7c68: $74
    ld d, a                                       ; $7c69: $57
    dec e                                         ; $7c6a: $1d
    sub $2e                                       ; $7c6b: $d6 $2e
    ld a, h                                       ; $7c6d: $7c
    ld h, [hl]                                    ; $7c6e: $66
    adc b                                         ; $7c6f: $88
    nop                                           ; $7c70: $00
    or a                                          ; $7c71: $b7
    jr c, jr_054_7c2a                             ; $7c72: $38 $b6

    rla                                           ; $7c74: $17
    ld e, h                                       ; $7c75: $5c
    jp c, $7f25                                   ; $7c76: $da $25 $7f

    call nz, $fdab                                ; $7c79: $c4 $ab $fd
    jr @-$41                                      ; $7c7c: $18 $bd

    sbc b                                         ; $7c7e: $98
    ld sp, $8f36                                  ; $7c7f: $31 $36 $8f
    ld a, a                                       ; $7c82: $7f
    sbc e                                         ; $7c83: $9b
    ld [hl-], a                                   ; $7c84: $32
    cpl                                           ; $7c85: $2f
    ld a, $f2                                     ; $7c86: $3e $f2

Jump_054_7c88:
    ld [hl], e                                    ; $7c88: $73
    inc sp                                        ; $7c89: $33
    ld b, e                                       ; $7c8a: $43
    inc b                                         ; $7c8b: $04
    dec a                                         ; $7c8c: $3d
    ret                                           ; $7c8d: $c9


    dec de                                        ; $7c8e: $1b
    pop af                                        ; $7c8f: $f1
    ld l, d                                       ; $7c90: $6a
    ld c, d                                       ; $7c91: $4a
    sbc a                                         ; $7c92: $9f
    ld [hl], d                                    ; $7c93: $72
    ld l, c                                       ; $7c94: $69
    ld [hl], a                                    ; $7c95: $77
    rst $08                                       ; $7c96: $cf

Jump_054_7c97:
    ld l, a                                       ; $7c97: $6f
    ld a, [$85e9]                                 ; $7c98: $fa $e9 $85
    nop                                           ; $7c9b: $00
    or a                                          ; $7c9c: $b7
    ret                                           ; $7c9d: $c9


    ld l, [hl]                                    ; $7c9e: $6e
    rst $08                                       ; $7c9f: $cf
    dec d                                         ; $7ca0: $15
    sbc d                                         ; $7ca1: $9a
    or c                                          ; $7ca2: $b1
    rst $38                                       ; $7ca3: $ff
    ld c, [hl]                                    ; $7ca4: $4e
    add $4b                                       ; $7ca5: $c6 $4b
    ei                                            ; $7ca7: $fb
    or b                                          ; $7ca8: $b0
    ld [hl], c                                    ; $7ca9: $71
    xor [hl]                                      ; $7caa: $ae
    dec e                                         ; $7cab: $1d
    adc e                                         ; $7cac: $8b
    ld h, d                                       ; $7cad: $62
    rrca                                          ; $7cae: $0f
    dec sp                                        ; $7caf: $3b
    ret nz                                        ; $7cb0: $c0

    push af                                       ; $7cb1: $f5
    add sp, -$4e                                  ; $7cb2: $e8 $b2
    call nz, $c7bc                                ; $7cb4: $c4 $bc $c7
    db $eb                                        ; $7cb7: $eb
    jr c, jr_054_7c46                             ; $7cb8: $38 $8c

    ld a, b                                       ; $7cba: $78
    dec [hl]                                      ; $7cbb: $35
    ld h, l                                       ; $7cbc: $65
    ld e, $b6                                     ; $7cbd: $1e $b6
    ld a, [de]                                    ; $7cbf: $1a
    or l                                          ; $7cc0: $b5
    ret nc                                        ; $7cc1: $d0

    adc h                                         ; $7cc2: $8c
    or c                                          ; $7cc3: $b1
    rst $00                                       ; $7cc4: $c7
    ld e, a                                       ; $7cc5: $5f
    ld [bc], a                                    ; $7cc6: $02
    ld b, h                                       ; $7cc7: $44
    dec a                                         ; $7cc8: $3d
    ld l, [hl]                                    ; $7cc9: $6e
    ld e, [hl]                                    ; $7cca: $5e
    ld l, h                                       ; $7ccb: $6c
    rst $28                                       ; $7ccc: $ef
    inc e                                         ; $7ccd: $1c
    rrc [hl]                                      ; $7cce: $cb $0e
    rst $38                                       ; $7cd0: $ff
    sub $5c                                       ; $7cd1: $d6 $5c
    sla h                                         ; $7cd3: $cb $24
    cp c                                          ; $7cd5: $b9
    call nz, $e76a                                ; $7cd6: $c4 $6a $e7
    xor e                                         ; $7cd9: $ab
    or a                                          ; $7cda: $b7
    sub a                                         ; $7cdb: $97
    db $ec                                        ; $7cdc: $ec
    ld h, h                                       ; $7cdd: $64
    jp nc, Jump_054_63ed                          ; $7cde: $d2 $ed $63

    adc e                                         ; $7ce1: $8b
    ld [hl], a                                    ; $7ce2: $77
    cp [hl]                                       ; $7ce3: $be
    jr c, jr_054_7d1b                             ; $7ce4: $38 $35

    ld [bc], a                                    ; $7ce6: $02
    ld [hl], a                                    ; $7ce7: $77
    add hl, sp                                    ; $7ce8: $39
    add h                                         ; $7ce9: $84
    ld de, $9a5d                                  ; $7cea: $11 $5d $9a
    ld a, [c]                                     ; $7ced: $f2
    ld [$d44a], sp                                ; $7cee: $08 $4a $d4
    ld c, b                                       ; $7cf1: $48
    ld l, d                                       ; $7cf2: $6a
    db $ed                                        ; $7cf3: $ed
    ld h, e                                       ; $7cf4: $63
    bit 6, d                                      ; $7cf5: $cb $72
    ret c                                         ; $7cf7: $d8

    ld sp, hl                                     ; $7cf8: $f9
    db $eb                                        ; $7cf9: $eb
    rst $38                                       ; $7cfa: $ff
    ld e, [hl]                                    ; $7cfb: $5e
    sub d                                         ; $7cfc: $92
    db $ec                                        ; $7cfd: $ec
    ccf                                           ; $7cfe: $3f
    ld [hl], l                                    ; $7cff: $75
    rst $38                                       ; $7d00: $ff
    ld [$92f7], sp                                ; $7d01: $08 $f7 $92
    ld h, h                                       ; $7d04: $64
    ld l, d                                       ; $7d05: $6a
    inc b                                         ; $7d06: $04
    rst $30                                       ; $7d07: $f7

Call_054_7d08:
    sub d                                         ; $7d08: $92
    ld h, h                                       ; $7d09: $64
    ld l, d                                       ; $7d0a: $6a
    inc b                                         ; $7d0b: $04
    rst $30                                       ; $7d0c: $f7
    sub d                                         ; $7d0d: $92
    ld h, h                                       ; $7d0e: $64
    ld l, d                                       ; $7d0f: $6a
    inc b                                         ; $7d10: $04
    ld [hl], a                                    ; $7d11: $77
    ld h, [hl]                                    ; $7d12: $66

jr_054_7d13:
    inc a                                         ; $7d13: $3c
    or c                                          ; $7d14: $b1
    jp c, Jump_000_1d0f                           ; $7d15: $da $0f $1d

    rrc [hl]                                      ; $7d18: $cb $0e
    rst $10                                       ; $7d1a: $d7

jr_054_7d1b:
    adc e                                         ; $7d1b: $8b
    ld b, a                                       ; $7d1c: $47
    cp e                                          ; $7d1d: $bb
    and b                                         ; $7d1e: $a0
    inc sp                                        ; $7d1f: $33
    and a                                         ; $7d20: $a7
    ld b, [hl]                                    ; $7d21: $46
    add hl, hl                                    ; $7d22: $29
    call c, $0225                                 ; $7d23: $dc $25 $02
    ld hl, $1084                                  ; $7d26: $21 $84 $10
    ld bc, $ae29                                  ; $7d29: $01 $29 $ae
    jp hl                                         ; $7d2c: $e9


    cp h                                          ; $7d2d: $bc
    sub e                                         ; $7d2e: $93
    pop af                                        ; $7d2f: $f1
    call z, $974b                                 ; $7d30: $cc $4b $97
    xor [hl]                                      ; $7d33: $ae
    call nc, $6a48                                ; $7d34: $d4 $48 $6a
    inc b                                         ; $7d37: $04
    dec h                                         ; $7d38: $25
    xor d                                         ; $7d39: $aa
    ld e, c                                       ; $7d3a: $59
    add hl, hl                                    ; $7d3b: $29
    inc sp                                        ; $7d3c: $33
    db $dc, $1d, $12                              ; $7d3d: $dc $1d $12
    inc l                                         ; $7d40: $2c
    xor e                                         ; $7d41: $ab
    xor [hl]                                      ; $7d42: $ae
    ld [hl], d                                    ; $7d43: $72
    db $ed                                        ; $7d44: $ed
    jr c, jr_054_7d13                             ; $7d45: $38 $cc

    xor l                                         ; $7d47: $ad
    cp c                                          ; $7d48: $b9
    ld b, [hl]                                    ; $7d49: $46
    ld d, [hl]                                    ; $7d4a: $56
    ld d, a                                       ; $7d4b: $57
    ld [c], a                                     ; $7d4c: $e2
    ld a, [de]                                    ; $7d4d: $1a
    dec [hl]                                      ; $7d4e: $35
    cp d                                          ; $7d4f: $ba
    ld l, c                                       ; $7d50: $69
    add [hl]                                      ; $7d51: $86
    dec l                                         ; $7d52: $2d
    ld h, a                                       ; $7d53: $67
    dec e                                         ; $7d54: $1d
    add a                                         ; $7d55: $87
    pop de                                        ; $7d56: $d1
    ld e, l                                       ; $7d57: $5d
    dec l                                         ; $7d58: $2d
    cp b                                          ; $7d59: $b8
    and [hl]                                      ; $7d5a: $a6
    inc l                                         ; $7d5b: $2c
    ld [c], a                                     ; $7d5c: $e2
    dec b                                         ; $7d5d: $05
    sbc l                                         ; $7d5e: $9d
    reti                                          ; $7d5f: $d9


    or d                                          ; $7d60: $b2
    ld c, h                                       ; $7d61: $4c
    sub d                                         ; $7d62: $92
    inc hl                                        ; $7d63: $23
    xor c                                         ; $7d64: $a9
    dec e                                         ; $7d65: $1d
    ld c, l                                       ; $7d66: $4d
    db $f4                                        ; $7d67: $f4
    ld h, c                                       ; $7d68: $61
    db $fd                                        ; $7d69: $fd
    and l                                         ; $7d6a: $a5
    ld b, [hl]                                    ; $7d6b: $46
    dec a                                         ; $7d6c: $3d
    ld l, a                                       ; $7d6d: $6f
    call nz, $f11b                                ; $7d6e: $c4 $1b $f1
    ld d, d                                       ; $7d71: $52
    xor a                                         ; $7d72: $af
    db $db                                        ; $7d73: $db
    push hl                                       ; $7d74: $e5
    sbc l                                         ; $7d75: $9d
    xor b                                         ; $7d76: $a8
    or a                                          ; $7d77: $b7
    and $1d                                       ; $7d78: $e6 $1d
    inc sp                                        ; $7d7a: $33
    adc a                                         ; $7d7b: $8f
    xor $f8                                       ; $7d7c: $ee $f8
    sbc b                                         ; $7d7e: $98
    ld b, a                                       ; $7d7f: $47
    ld d, d                                       ; $7d80: $52
    ld d, e                                       ; $7d81: $53
    sub [hl]                                      ; $7d82: $96
    add hl, hl                                    ; $7d83: $29
    dec e                                         ; $7d84: $1d
    ld h, e                                       ; $7d85: $63
    cpl                                           ; $7d86: $2f
    or [hl]                                       ; $7d87: $b6
    and a                                         ; $7d88: $a7
    sub h                                         ; $7d89: $94
    dec h                                         ; $7d8a: $25
    dec [hl]                                      ; $7d8b: $35
    ld [bc], a                                    ; $7d8c: $02
    dec a                                         ; $7d8d: $3d
    cp c                                          ; $7d8e: $b9
    xor c                                         ; $7d8f: $a9
    dec e                                         ; $7d90: $1d
    ld a, c                                       ; $7d91: $79
    ld c, c                                       ; $7d92: $49
    ld a, e                                       ; $7d93: $7b
    jp c, $fddd                                   ; $7d94: $da $dd $fd

    ld a, [de]                                    ; $7d97: $1a
    db $fd                                        ; $7d98: $fd
    inc h                                         ; $7d99: $24
    and h                                         ; $7d9a: $a4
    ld b, [hl]                                    ; $7d9b: $46
    dec a                                         ; $7d9c: $3d
    ret                                           ; $7d9d: $c9


    sbc e                                         ; $7d9e: $9b
    ld l, e                                       ; $7d9f: $6b
    jp z, $eecc                                   ; $7da0: $ca $cc $ee

    add l                                         ; $7da3: $85
    nop                                           ; $7da4: $00
    db $dd                                        ; $7da5: $dd
    and $b9                                       ; $7da6: $e6 $b9
    sub $c9                                       ; $7da8: $d6 $c9
    ld d, e                                       ; $7daa: $53
    sub [hl]                                      ; $7dab: $96
    add hl, hl                                    ; $7dac: $29
    dec e                                         ; $7dad: $1d
    ld h, e                                       ; $7dae: $63
    adc a                                         ; $7daf: $8f
    cp a                                          ; $7db0: $bf
    inc b                                         ; $7db1: $04
    rra                                           ; $7db2: $1f
    or [hl]                                       ; $7db3: $b6
    db $ec                                        ; $7db4: $ec
    ld h, h                                       ; $7db5: $64
    cp h                                          ; $7db6: $bc
    cp e                                          ; $7db7: $bb
    sbc [hl]                                      ; $7db8: $9e
    add h                                         ; $7db9: $84
    db $f4                                        ; $7dba: $f4
    ld l, e                                       ; $7dbb: $6b
    call Call_054_7fa3                            ; $7dbc: $cd $a3 $7f
    adc h                                         ; $7dbf: $8c
    and e                                         ; $7dc0: $a3
    db $eb                                        ; $7dc1: $eb
    dec l                                         ; $7dc2: $2d
    db $ed                                        ; $7dc3: $ed
    jp $b9c6                                      ; $7dc4: $c3 $c6 $b9


    inc l                                         ; $7dc7: $2c
    dec sp                                        ; $7dc8: $3b
    ld e, a                                       ; $7dc9: $5f
    jr nz, @+$04                                  ; $7dca: $20 $02

    db $dd                                        ; $7dcc: $dd
    and $b9                                       ; $7dcd: $e6 $b9
    halt                                          ; $7dcf: $76
    ld a, e                                       ; $7dd0: $7b
    xor [hl]                                      ; $7dd1: $ae
    ret nc                                        ; $7dd2: $d0

    adc h                                         ; $7dd3: $8c
    db $fd                                        ; $7dd4: $fd
    dec l                                         ; $7dd5: $2d
    db $e3                                        ; $7dd6: $e3
    rst $18                                       ; $7dd7: $df
    halt                                          ; $7dd8: $76
    rst $08                                       ; $7dd9: $cf
    ld l, a                                       ; $7dda: $6f
    ld a, [$bd49]                                 ; $7ddb: $fa $49 $bd
    db $db                                        ; $7dde: $db
    xor c                                         ; $7ddf: $a9
    add hl, hl                                    ; $7de0: $29
    bit 7, [hl]                                   ; $7de1: $cb $7e
    add sp, $58                                   ; $7de3: $e8 $58
    ld d, d                                       ; $7de5: $52
    inc hl                                        ; $7de6: $23
    ld [hl], a                                    ; $7de7: $77
    ld h, [hl]                                    ; $7de8: $66
    cp h                                          ; $7de9: $bc
    inc e                                         ; $7dea: $1c
    add $6f                                       ; $7deb: $c6 $6f
    jp z, $dda2                                   ; $7ded: $ca $a2 $dd

    ld a, l                                       ; $7df0: $7d
    sbc c                                         ; $7df1: $99
    reti                                          ; $7df2: $d9


    sub l                                         ; $7df3: $95
    ld a, [de]                                    ; $7df4: $1a
    ld bc, $d4b7                                  ; $7df5: $01 $b7 $d4
    db $d3                                        ; $7df8: $d3
    xor [hl]                                      ; $7df9: $ae
    rst $20                                       ; $7dfa: $e7
    ld d, l                                       ; $7dfb: $55
    ld l, c                                       ; $7dfc: $69
    ld d, d                                       ; $7dfd: $52
    inc hl                                        ; $7dfe: $23
    dec a                                         ; $7dff: $3d
    xor a                                         ; $7e00: $af
    ld c, d                                       ; $7e01: $4a
    and e                                         ; $7e02: $a3
    sbc l                                         ; $7e03: $9d
    jp nc, Jump_054_7517                          ; $7e04: $d2 $17 $75

    ld de, $f92f                                  ; $7e07: $11 $2f $f9
    dec d                                         ; $7e0a: $15
    db $dd                                        ; $7e0b: $dd
    ld a, [hl]                                    ; $7e0c: $7e
    ret c                                         ; $7e0d: $d8

    adc c                                         ; $7e0e: $89
    adc a                                         ; $7e0f: $8f
    db $e4                                        ; $7e10: $e4
    sub c                                         ; $7e11: $91
    sub l                                         ; $7e12: $95
    db $d3                                        ; $7e13: $d3
    call Call_000_35d8                            ; $7e14: $cd $d8 $35
    ld a, [hl-]                                   ; $7e17: $3a
    rst $10                                       ; $7e18: $d7
    ld a, [c]                                     ; $7e19: $f2
    add hl, sp                                    ; $7e1a: $39
    ld a, e                                       ; $7e1b: $7b
    xor l                                         ; $7e1c: $ad
    add hl, sp                                    ; $7e1d: $39
    dec [hl]                                      ; $7e1e: $35
    ld [bc], a                                    ; $7e1f: $02
    rst $30                                       ; $7e20: $f7
    db $fc                                        ; $7e21: $fc
    and [hl]                                      ; $7e22: $a6
    sbc a                                         ; $7e23: $9f
    call nc, Call_054_49eb                        ; $7e24: $d4 $eb $49
    ld [hl], d                                    ; $7e27: $72
    xor c                                         ; $7e28: $a9
    daa                                           ; $7e29: $27
    dec bc                                        ; $7e2a: $0b
    ld d, h                                       ; $7e2b: $54
    ld c, l                                       ; $7e2c: $4d
    sbc c                                         ; $7e2d: $99
    add a                                         ; $7e2e: $87
    xor l                                         ; $7e2f: $ad
    and [hl]                                      ; $7e30: $a6
    inc e                                         ; $7e31: $1c
    ld a, d                                       ; $7e32: $7a
    ld hl, $3f77                                  ; $7e33: $21 $77 $3f
    push af                                       ; $7e36: $f5
    ldh a, [$ee]                                  ; $7e37: $f0 $ee
    res 3, b                                      ; $7e39: $cb $98
    xor [hl]                                      ; $7e3b: $ae
    rst $08                                       ; $7e3c: $cf
    inc hl                                        ; $7e3d: $23
    xor c                                         ; $7e3e: $a9
    dec e                                         ; $7e3f: $1d
    ld c, l                                       ; $7e40: $4d
    db $f4                                        ; $7e41: $f4
    ld h, c                                       ; $7e42: $61
    db $fd                                        ; $7e43: $fd
    adc l                                         ; $7e44: $8d
    cp $f1                                        ; $7e45: $fe $f1
    sbc b                                         ; $7e47: $98
    add a                                         ; $7e48: $87
    dec e                                         ; $7e49: $1d
    add [hl]                                      ; $7e4a: $86
    xor l                                         ; $7e4b: $ad
    and [hl]                                      ; $7e4c: $a6
    call z, Call_000_0f3b                         ; $7e4d: $cc $3b $0f
    ld h, e                                       ; $7e50: $63
    ld b, e                                       ; $7e51: $43
    inc b                                         ; $7e52: $04
    ld a, l                                       ; $7e53: $7d
    inc e                                         ; $7e54: $1c
    halt                                          ; $7e55: $76
    xor b                                         ; $7e56: $a8
    add hl, hl                                    ; $7e57: $29
    set 3, d                                      ; $7e58: $cb $da
    ld l, a                                       ; $7e5a: $6f
    call Call_000_24cb                            ; $7e5b: $cd $cb $24
    sbc c                                         ; $7e5e: $99
    db $fc                                        ; $7e5f: $fc
    inc hl                                        ; $7e60: $23
    ld e, a                                       ; $7e61: $5f
    add d                                         ; $7e62: $82
    ld h, l                                       ; $7e63: $65
    ld [$768b], a                                 ; $7e64: $ea $8b $76
    dec a                                         ; $7e67: $3d
    xor a                                         ; $7e68: $af
    ld c, d                                       ; $7e69: $4a
    or e                                          ; $7e6a: $b3
    ei                                            ; $7e6b: $fb
    ld [hl-], a                                   ; $7e6c: $32
    or e                                          ; $7e6d: $b3
    dec bc                                        ; $7e6e: $0b
    ld [hl+], a                                   ; $7e6f: $22
    rla                                           ; $7e70: $17
    ld de, $4218                                  ; $7e71: $11 $18 $42
    ret c                                         ; $7e74: $d8

    ld b, l                                       ; $7e75: $45
    ld b, b                                       ; $7e76: $40
    ld [$e35f], sp                                ; $7e77: $08 $5f $e3
    ld b, e                                       ; $7e7a: $43
    ld b, c                                       ; $7e7b: $41
    ld [$bd11], sp                                ; $7e7c: $08 $11 $bd
    dec sp                                        ; $7e7f: $3b
    ld e, l                                       ; $7e80: $5d
    or l                                          ; $7e81: $b5
    rst $10                                       ; $7e82: $d7
    ld d, h                                       ; $7e83: $54
    db $fd                                        ; $7e84: $fd
    ld c, c                                       ; $7e85: $49
    or $4e                                        ; $7e86: $f6 $4e
    ei                                            ; $7e88: $fb
    sub c                                         ; $7e89: $91
    ld h, a                                       ; $7e8a: $67
    ld e, c                                       ; $7e8b: $59
    ld a, b                                       ; $7e8c: $78
    ld [de], a                                    ; $7e8d: $12
    add $bf                                       ; $7e8e: $c6 $bf
    pop bc                                        ; $7e90: $c1
    ld bc, $3bfe                                  ; $7e91: $01 $fe $3b
    ld a, [c]                                     ; $7e94: $f2
    ld h, d                                       ; $7e95: $62
    ld [hl], h                                    ; $7e96: $74
    dec c                                         ; $7e97: $0d
    cp e                                          ; $7e98: $bb
    sub [hl]                                      ; $7e99: $96
    pop af                                        ; $7e9a: $f1
    sub h                                         ; $7e9b: $94
    sbc c                                         ; $7e9c: $99
    cp l                                          ; $7e9d: $bd
    ld h, e                                       ; $7e9e: $63
    ld [hl], c                                    ; $7e9f: $71
    add hl, de                                    ; $7ea0: $19
    ld l, $a5                                     ; $7ea1: $2e $a5
    jp hl                                         ; $7ea3: $e9


    call z, $a923                                 ; $7ea4: $cc $23 $a9
    pop af                                        ; $7ea7: $f1
    rst $00                                       ; $7ea8: $c7
    ld d, $88                                     ; $7ea9: $16 $88
    nop                                           ; $7eab: $00
    dec a                                         ; $7eac: $3d
    cp $da                                        ; $7ead: $fe $da
    ld bc, $22c8                                  ; $7eaf: $01 $c8 $22
    ld a, [de]                                    ; $7eb2: $1a
    adc b                                         ; $7eb3: $88
    nop                                           ; $7eb4: $00
    rst $30                                       ; $7eb5: $f7
    sbc l                                         ; $7eb6: $9d
    jp $c210                                      ; $7eb7: $c3 $10 $c2


    dec sp                                        ; $7eba: $3b
    ld h, d                                       ; $7ebb: $62
    db $f4                                        ; $7ebc: $f4
    adc [hl]                                      ; $7ebd: $8e
    sbc c                                         ; $7ebe: $99
    and a                                         ; $7ebf: $a7
    inc e                                         ; $7ec0: $1c
    ld b, [hl]                                    ; $7ec1: $46
    db $e4                                        ; $7ec2: $e4

jr_054_7ec3:
    or e                                          ; $7ec3: $b3
    ld e, $17                                     ; $7ec4: $1e $17
    cp $62                                        ; $7ec6: $fe $62
    db $ed                                        ; $7ec8: $ed
    ld [$e65d], sp                                ; $7ec9: $08 $5d $e6
    jp c, $44a1                                   ; $7ecc: $da $a1 $44

    or $5a                                        ; $7ecf: $f6 $5a
    ld c, e                                       ; $7ed1: $4b
    ld a, $bb                                     ; $7ed2: $3e $bb
    or $18                                        ; $7ed4: $f6 $18
    ld [hl+], a                                   ; $7ed6: $22
    rst $30                                       ; $7ed7: $f7
    ld d, b                                       ; $7ed8: $50
    ei                                            ; $7ed9: $fb
    and c                                         ; $7eda: $a1
    ld h, e                                       ; $7edb: $63
    jp hl                                         ; $7edc: $e9


    add l                                         ; $7edd: $85
    nop                                           ; $7ede: $00
    dec a                                         ; $7edf: $3d
    xor a                                         ; $7ee0: $af
    ld c, d                                       ; $7ee1: $4a
    and e                                         ; $7ee2: $a3
    db $dd                                        ; $7ee3: $dd
    ld sp, $94f3                                  ; $7ee4: $31 $f3 $94
    jp Jump_054_7c88                              ; $7ee7: $c3 $88 $7c


    add [hl]                                      ; $7eea: $86
    dec e                                         ; $7eeb: $1d
    ldh [$fa], a                                  ; $7eec: $e0 $fa
    jr c, jr_054_7f1c                             ; $7eee: $38 $2c

    ld sp, $35ef                                  ; $7ef0: $31 $ef $35
    ld e, [hl]                                    ; $7ef3: $5e
    add $03                                       ; $7ef4: $c6 $03
    ld d, h                                       ; $7ef6: $54
    sbc h                                         ; $7ef7: $9c
    ld e, e                                       ; $7ef8: $5b
    ld c, $1f                                     ; $7ef9: $0e $1f
    ld [hl+], a                                   ; $7efb: $22
    or a                                          ; $7efc: $b7
    ld a, a                                       ; $7efd: $7f
    sub c                                         ; $7efe: $91
    add hl, hl                                    ; $7eff: $29

jr_054_7f00:
    sub a                                         ; $7f00: $97
    ld h, a                                       ; $7f01: $67
    add hl, de                                    ; $7f02: $19
    reti                                          ; $7f03: $d9


    sbc $39                                       ; $7f04: $de $39
    jp c, $d6bd                                   ; $7f06: $da $bd $d6

    cp h                                          ; $7f09: $bc
    di                                            ; $7f0a: $f3
    jr nc, jr_054_7ec3                            ; $7f0b: $30 $b6

    ld b, b                                       ; $7f0d: $40
    inc b                                         ; $7f0e: $04
    rst $30                                       ; $7f0f: $f7
    ld de, $ed1a                                  ; $7f10: $11 $1a $ed
    sub h                                         ; $7f13: $94
    ld a, c                                       ; $7f14: $79
    ret                                           ; $7f15: $c9


    xor e                                         ; $7f16: $ab
    ld c, c                                       ; $7f17: $49
    ld e, a                                       ; $7f18: $5f
    push hl                                       ; $7f19: $e5
    sub c                                         ; $7f1a: $91
    inc d                                         ; $7f1b: $14

jr_054_7f1c:
    ld b, h                                       ; $7f1c: $44
    ld [hl], a                                    ; $7f1d: $77

Jump_054_7f1e:
    inc l                                         ; $7f1e: $2c
    and c                                         ; $7f1f: $a1
    ld l, d                                       ; $7f20: $6a
    ld [hl], h                                    ; $7f21: $74
    ld d, a                                       ; $7f22: $57
    dec e                                         ; $7f23: $1d
    or $00                                        ; $7f24: $f6 $00
    dec d                                         ; $7f26: $15
    rst $20                                       ; $7f27: $e7
    sub [hl]                                      ; $7f28: $96
    jp $8fe7                                      ; $7f29: $c3 $e7 $8f


    cp l                                          ; $7f2c: $bd
    inc de                                        ; $7f2d: $13
    ld e, a                                       ; $7f2e: $5f
    ld e, e                                       ; $7f2f: $5b
    ld a, [c]                                     ; $7f30: $f2
    rst $00                                       ; $7f31: $c7
    ld l, a                                       ; $7f32: $6f
    ld [hl], h                                    ; $7f33: $74
    xor [hl]                                      ; $7f34: $ae
    push hl                                       ; $7f35: $e5
    ld [hl], e                                    ; $7f36: $73
    ld b, [hl]                                    ; $7f37: $46
    inc h                                         ; $7f38: $24
    cp c                                          ; $7f39: $b9
    call nc, Call_054_5993                        ; $7f3a: $d4 $93 $59
    or $95                                        ; $7f3d: $f6 $95
    add l                                         ; $7f3f: $85
    ccf                                           ; $7f40: $3f
    db $fd                                        ; $7f41: $fd
    adc a                                         ; $7f42: $8f
    swap l                                        ; $7f43: $cb $35
    cp l                                          ; $7f45: $bd
    ret c                                         ; $7f46: $d8

    dec b                                         ; $7f47: $05
    rlca                                          ; $7f48: $07
    xor b                                         ; $7f49: $a8
    ret c                                         ; $7f4a: $d8

    dec [hl]                                      ; $7f4b: $35
    rst $10                                       ; $7f4c: $d7
    sub d                                         ; $7f4d: $92
    rra                                           ; $7f4e: $1f
    ld sp, hl                                     ; $7f4f: $f9
    rlca                                          ; $7f50: $07
    rst $28                                       ; $7f51: $ef
    ld c, e                                       ; $7f52: $4b
    jr z, jr_054_7f00                             ; $7f53: $28 $ab

    ld l, a                                       ; $7f55: $6f
    add hl, sp                                    ; $7f56: $39
    xor [hl]                                      ; $7f57: $ae
    db $fd                                        ; $7f58: $fd
    pop hl                                        ; $7f59: $e1
    daa                                           ; $7f5a: $27
    pop bc                                        ; $7f5b: $c1
    ld [hl], e                                    ; $7f5c: $73
    ei                                            ; $7f5d: $fb
    pop af                                        ; $7f5e: $f1
    db $fc                                        ; $7f5f: $fc
    jp z, $7924                                   ; $7f60: $ca $24 $79

    ld h, d                                       ; $7f63: $62
    ld a, l                                       ; $7f64: $7d
    sbc d                                         ; $7f65: $9a
    ld e, l                                       ; $7f66: $5d
    jp c, Jump_054_6a1d                           ; $7f67: $da $1d $6a

    jp z, $d73c                                   ; $7f6a: $ca $3c $d7

    sub d                                         ; $7f6d: $92
    rra                                           ; $7f6e: $1f
    ld sp, hl                                     ; $7f6f: $f9
    add a                                         ; $7f70: $87
    ld d, c                                       ; $7f71: $51
    dec sp                                        ; $7f72: $3b
    or c                                          ; $7f73: $b1
    db $e3                                        ; $7f74: $e3
    ld h, $9e                                     ; $7f75: $26 $9e
    ld [hl-], a                                   ; $7f77: $32
    ld e, $5d                                     ; $7f78: $1e $5d
    ld l, a                                       ; $7f7a: $6f
    ld b, h                                       ; $7f7b: $44
    ld [c], a                                     ; $7f7c: $e2
    ld a, d                                       ; $7f7d: $7a
    and d                                         ; $7f7e: $a2
    jp z, $0110                                   ; $7f7f: $ca $10 $01

    db $dd                                        ; $7f82: $dd
    and $25                                       ; $7f83: $e6 $25
    and $75                                       ; $7f85: $e6 $75
    inc e                                         ; $7f87: $1c
    or $1a                                        ; $7f88: $f6 $1a
    and a                                         ; $7f8a: $a7
    ld b, [hl]                                    ; $7f8b: $46
    add hl, hl                                    ; $7f8c: $29
    call c, $0225                                 ; $7f8d: $dc $25 $02
    ld de, $c737                                  ; $7f90: $11 $37 $c7
    xor b                                         ; $7f93: $a8
    rst $10                                       ; $7f94: $d7
    db $e3                                        ; $7f95: $e3
    or l                                          ; $7f96: $b5
    rra                                           ; $7f97: $1f
    ld a, c                                       ; $7f98: $79
    add h                                         ; $7f99: $84
    ld b, l                                       ; $7f9a: $45
    inc c                                         ; $7f9b: $0c
    ld de, $1c7d                                  ; $7f9c: $11 $7d $1c
    ld d, $7e                                     ; $7f9f: $16 $7e
    adc l                                         ; $7fa1: $8d
    ld c, b                                       ; $7fa2: $48

Call_054_7fa3:
    ld e, h                                       ; $7fa3: $5c
    ld a, e                                       ; $7fa4: $7b
    ret                                           ; $7fa5: $c9


    sub h                                         ; $7fa6: $94
    swap e                                        ; $7fa7: $cb $33
    ld c, a                                       ; $7fa9: $4f
    inc [hl]                                      ; $7faa: $34
    call z, Call_054_43bb                         ; $7fab: $cc $bb $43
    ld b, d                                       ; $7fae: $42
    ld e, c                                       ; $7faf: $59
    ld a, l                                       ; $7fb0: $7d
    bit 5, c                                      ; $7fb1: $cb $69
    adc [hl]                                      ; $7fb3: $8e
    rst $20                                       ; $7fb4: $e7
    rst $00                                       ; $7fb5: $c7
    inc l                                         ; $7fb6: $2c
    ld [hl], b                                    ; $7fb7: $70
    db $dd                                        ; $7fb8: $dd
    ld l, $2f                                     ; $7fb9: $2e $2f
    ld sp, hl                                     ; $7fbb: $f9
    ld l, l                                       ; $7fbc: $6d
    ld d, c                                       ; $7fbd: $51
    rla                                           ; $7fbe: $17
    pop af                                        ; $7fbf: $f1
    jp nc, Jump_054_47a5                          ; $7fc0: $d2 $a5 $47

    rst $28                                       ; $7fc3: $ef
    or a                                          ; $7fc4: $b7
    and [hl]                                      ; $7fc5: $a6
    rra                                           ; $7fc6: $1f
    xor [hl]                                      ; $7fc7: $ae
    ld [hl], a                                    ; $7fc8: $77
    ld a, [hl-]                                   ; $7fc9: $3a
    ld e, c                                       ; $7fca: $59
    inc l                                         ; $7fcb: $2c
    ld e, $ff                                     ; $7fcc: $1e $ff
    ld [hl], $6a                                  ; $7fce: $36 $6a
    ld e, a                                       ; $7fd0: $5f
    ld e, c                                       ; $7fd1: $59
    ld hl, sp-$2d                                 ; $7fd2: $f8 $d3
    rst $38                                       ; $7fd4: $ff
    cp b                                          ; $7fd5: $b8
    inc a                                         ; $7fd6: $3c
    dec bc                                        ; $7fd7: $0b
    sub c                                         ; $7fd8: $91
    cp b                                          ; $7fd9: $b8
    and [hl]                                      ; $7fda: $a6
    rla                                           ; $7fdb: $17
    ld b, e                                       ; $7fdc: $43
    inc b                                         ; $7fdd: $04
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
