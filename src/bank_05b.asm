; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $05b", ROMX[$4000], BANK[$5b]

    ld e, e                                       ; $4000: $5b
    ld l, [hl]                                    ; $4001: $6e
    ld d, a                                       ; $4002: $57
    ld a, l                                       ; $4003: $7d
    xor c                                         ; $4004: $a9
    or d                                          ; $4005: $b2
    ld d, [hl]                                    ; $4006: $56
    rst $00                                       ; $4007: $c7
    sbc [hl]                                      ; $4008: $9e
    inc de                                        ; $4009: $13
    sbc d                                         ; $400a: $9a
    cp a                                          ; $400b: $bf
    ld [hl], e                                    ; $400c: $73
    rst $08                                       ; $400d: $cf
    add hl, bc                                    ; $400e: $09
    db $fd                                        ; $400f: $fd
    ld d, [hl]                                    ; $4010: $56
    ret c                                         ; $4011: $d8

    ld e, h                                       ; $4012: $5c
    ld b, $7f                                     ; $4013: $06 $7f
    ld e, l                                       ; $4015: $5d
    ld [c], a                                     ; $4016: $e2
    adc h                                         ; $4017: $8c
    jp nc, $e3e7                                  ; $4018: $d2 $e7 $e3

    sbc h                                         ; $401b: $9c
    ld d, a                                       ; $401c: $57
    adc a                                         ; $401d: $8f
    xor d                                         ; $401e: $aa
    or l                                          ; $401f: $b5
    cp $ee                                        ; $4020: $fe $ee
    ret nc                                        ; $4022: $d0

    db $fc                                        ; $4023: $fc
    sbc l                                         ; $4024: $9d
    ld [hl], e                                    ; $4025: $73
    ld [hl], l                                    ; $4026: $75
    ld a, a                                       ; $4027: $7f
    ld a, [bc]                                    ; $4028: $0a
    pop bc                                        ; $4029: $c1
    ld [hl], e                                    ; $402a: $73
    sub $a2                                       ; $402b: $d6 $a2
    sub l                                         ; $402d: $95
    or c                                          ; $402e: $b1
    sbc $be                                       ; $402f: $de $be
    nop                                           ; $4031: $00
    ld e, $a1                                     ; $4032: $1e $a1
    jp hl                                         ; $4034: $e9


    ld [hl], b                                    ; $4035: $70
    ld h, l                                       ; $4036: $65
    db $10                                        ; $4037: $10
    ld [$650e], a                                 ; $4038: $ea $0e $65
    xor h                                         ; $403b: $ac
    or a                                          ; $403c: $b7
    call nc, $82bf                                ; $403d: $d4 $bf $82
    or c                                          ; $4040: $b1
    and $96                                       ; $4041: $e6 $96
    xor $31                                       ; $4043: $ee $31
    ld c, d                                       ; $4045: $4a
    cp a                                          ; $4046: $bf
    dec d                                         ; $4047: $15
    db $d3                                        ; $4048: $d3
    and d                                         ; $4049: $a2
    sub d                                         ; $404a: $92
    add d                                         ; $404b: $82
    or c                                          ; $404c: $b1
    ld e, a                                       ; $404d: $5f
    pop de                                        ; $404e: $d1
    dec e                                         ; $404f: $1d
    ld [$b551], a                                 ; $4050: $ea $51 $b5
    sub $9f                                       ; $4053: $d6 $9f
    sub h                                         ; $4055: $94
    rst $38                                       ; $4056: $ff
    ld e, e                                       ; $4057: $5b
    ccf                                           ; $4058: $3f
    rst $38                                       ; $4059: $ff
    ld h, l                                       ; $405a: $65
    and c                                         ; $405b: $a1
    cp c                                          ; $405c: $b9
    ld e, e                                       ; $405d: $5b
    or l                                          ; $405e: $b5
    sbc d                                         ; $405f: $9a
    set 4, b                                      ; $4060: $cb $e0
    rst $38                                       ; $4062: $ff
    xor d                                         ; $4063: $aa
    cp b                                          ; $4064: $b8
    call nz, $0cbb                                ; $4065: $c4 $bb $0c
    ld a, [hl]                                    ; $4068: $7e
    push af                                       ; $4069: $f5
    xor b                                         ; $406a: $a8
    ld e, d                                       ; $406b: $5a
    db $eb                                        ; $406c: $eb
    ld a, a                                       ; $406d: $7f
    pop bc                                        ; $406e: $c1
    xor a                                         ; $406f: $af
    di                                            ; $4070: $f3
    ldh a, [rPCM12]                               ; $4071: $f0 $76
    rst $00                                       ; $4073: $c7
    adc c                                         ; $4074: $89
    ld d, b                                       ; $4075: $50
    add $7a                                       ; $4076: $c6 $7a
    ei                                            ; $4078: $fb
    ld [de], a                                    ; $4079: $12
    ld b, a                                       ; $407a: $47
    rst $30                                       ; $407b: $f7
    rst $08                                       ; $407c: $cf
    ld a, a                                       ; $407d: $7f
    call $f065                                    ; $407e: $cd $65 $f0
    or a                                          ; $4081: $b7
    xor $31                                       ; $4082: $ee $31
    rst $38                                       ; $4084: $ff
    xor e                                         ; $4085: $ab
    ld b, d                                       ; $4086: $42
    ldh a, [$2b]                                  ; $4087: $f0 $2b
    jp c, Jump_000_1276                           ; $4089: $da $76 $12

    add hl, hl                                    ; $408c: $29
    ld h, e                                       ; $408d: $63
    db $dd                                        ; $408e: $dd
    ld bc, $2693                                  ; $408f: $01 $93 $26
    adc [hl]                                      ; $4092: $8e
    inc sp                                        ; $4093: $33
    ld c, d                                       ; $4094: $4a
    cp $a6                                        ; $4095: $fe $a6
    ld a, a                                       ; $4097: $7f
    ld a, [$392f]                                 ; $4098: $fa $2f $39
    halt                                          ; $409b: $76
    ld h, $91                                     ; $409c: $26 $91
    and $d8                                       ; $409e: $e6 $d8
    adc [hl]                                      ; $40a0: $8e
    sbc d                                         ; $40a1: $9a
    rst $38                                       ; $40a2: $ff
    and l                                         ; $40a3: $a5
    dec sp                                        ; $40a4: $3b
    ld l, d                                       ; $40a5: $6a
    ld [hl], d                                    ; $40a6: $72
    ld l, c                                       ; $40a7: $69
    ld l, [hl]                                    ; $40a8: $6e
    sbc h                                         ; $40a9: $9c
    inc de                                        ; $40aa: $13
    db $dd                                        ; $40ab: $dd
    ld e, c                                       ; $40ac: $59
    ld d, [hl]                                    ; $40ad: $56
    cp d                                          ; $40ae: $ba
    and e                                         ; $40af: $a3
    adc l                                         ; $40b0: $8d
    xor b                                         ; $40b1: $a8
    ld l, $79                                     ; $40b2: $2e $79
    db $f4                                        ; $40b4: $f4
    ld [$e671], a                                 ; $40b5: $ea $71 $e6
    cp a                                          ; $40b8: $bf
    ld a, [$afe7]                                 ; $40b9: $fa $e7 $af
    ld l, l                                       ; $40bc: $6d
    add hl, hl                                    ; $40bd: $29
    ld a, a                                       ; $40be: $7f
    db $eb                                        ; $40bf: $eb
    ld c, a                                       ; $40c0: $4f
    ld l, d                                       ; $40c1: $6a
    adc [hl]                                      ; $40c2: $8e
    ld d, d                                       ; $40c3: $52
    rst $00                                       ; $40c4: $c7
    sbc [hl]                                      ; $40c5: $9e
    ld b, e                                       ; $40c6: $43
    jp nz, Jump_05b_44d2                          ; $40c7: $c2 $d2 $44

    inc [hl]                                      ; $40ca: $34
    ld a, e                                       ; $40cb: $7b
    push hl                                       ; $40cc: $e5
    sub h                                         ; $40cd: $94
    ld l, [hl]                                    ; $40ce: $6e
    dec [hl]                                      ; $40cf: $35
    ld d, c                                       ; $40d0: $51
    ld l, c                                       ; $40d1: $69
    adc [hl]                                      ; $40d2: $8e
    ld h, c                                       ; $40d3: $61
    xor e                                         ; $40d4: $ab
    adc h                                         ; $40d5: $8c
    ld [hl], l                                    ; $40d6: $75
    cpl                                           ; $40d7: $2f
    jp hl                                         ; $40d8: $e9


    xor e                                         ; $40d9: $ab
    rst $38                                       ; $40da: $ff
    ld a, [hl]                                    ; $40db: $7e
    db $eb                                        ; $40dc: $eb
    xor a                                         ; $40dd: $af
    ld d, l                                       ; $40de: $55
    add $ba                                       ; $40df: $c6 $ba
    rst $30                                       ; $40e1: $f7
    adc h                                         ; $40e2: $8c
    add sp, -$72                                  ; $40e3: $e8 $8e
    add e                                         ; $40e5: $83
    sub $7f                                       ; $40e6: $d6 $7f
    ld bc, $a11e                                  ; $40e8: $01 $1e $a1
    add hl, hl                                    ; $40eb: $29
    db $fd                                        ; $40ec: $fd
    inc sp                                        ; $40ed: $33
    cp [hl]                                       ; $40ee: $be
    sub e                                         ; $40ef: $93
    jp z, Jump_05b_5b71                           ; $40f0: $ca $71 $5b

    ld d, $83                                     ; $40f3: $16 $83
    ld a, l                                       ; $40f5: $7d
    cp a                                          ; $40f6: $bf
    xor $ad                                       ; $40f7: $ee $ad
    pop af                                        ; $40f9: $f1
    sub a                                         ; $40fa: $97
    jr c, @-$12                                   ; $40fb: $38 $ec

    cp a                                          ; $40fd: $bf
    inc b                                         ; $40fe: $04
    and e                                         ; $40ff: $a3
    ld a, d                                       ; $4100: $7a
    ld d, h                                       ; $4101: $54
    xor l                                         ; $4102: $ad
    push af                                       ; $4103: $f5
    cp a                                          ; $4104: $bf
    xor $38                                       ; $4105: $ee $38
    inc sp                                        ; $4107: $33
    or [hl]                                       ; $4108: $b6
    inc [hl]                                      ; $4109: $34
    ld a, a                                       ; $410a: $7f
    rst $20                                       ; $410b: $e7
    ld e, h                                       ; $410c: $5c
    ld h, l                                       ; $410d: $65
    xor h                                         ; $410e: $ac
    or a                                          ; $410f: $b7
    cpl                                           ; $4110: $2f
    nop                                           ; $4111: $00
    ret nc                                        ; $4112: $d0

    xor e                                         ; $4113: $ab
    cp c                                          ; $4114: $b9
    db $db                                        ; $4115: $db
    ld l, b                                       ; $4116: $68
    ld c, c                                       ; $4117: $49
    db $dd                                        ; $4118: $dd
    ld e, e                                       ; $4119: $5b
    and e                                         ; $411a: $a3
    add h                                         ; $411b: $84
    and l                                         ; $411c: $a5
    db $fc                                        ; $411d: $fc
    reti                                          ; $411e: $d9


    db $fd                                        ; $411f: $fd
    ld e, a                                       ; $4120: $5f
    ld a, [c]                                     ; $4121: $f2
    sbc a                                         ; $4122: $9f
    cp l                                          ; $4123: $bd
    push af                                       ; $4124: $f5
    dec bc                                        ; $4125: $0b
    db $fd                                        ; $4126: $fd
    add sp, $38                                   ; $4127: $e8 $38
    rst $20                                       ; $4129: $e7
    ld d, l                                       ; $412a: $55
    and c                                         ; $412b: $a1
    ld l, l                                       ; $412c: $6d
    adc e                                         ; $412d: $8b
    dec bc                                        ; $412e: $0b
    nop                                           ; $412f: $00
    ld a, h                                       ; $4130: $7c
    ld h, e                                       ; $4131: $63
    xor l                                         ; $4132: $ad
    ld e, a                                       ; $4133: $5f
    ld sp, hl                                     ; $4134: $f9
    inc sp                                        ; $4135: $33
    ld a, h                                       ; $4136: $7c
    ld sp, hl                                     ; $4137: $f9
    cp e                                          ; $4138: $bb
    ld [hl], e                                    ; $4139: $73
    ld b, $4c                                     ; $413a: $06 $4c
    call c, Call_000_1e00                         ; $413c: $dc $00 $1e
    and [hl]                                      ; $413f: $a6
    ld e, a                                       ; $4140: $5f
    cp d                                          ; $4141: $ba
    or a                                          ; $4142: $b7
    and e                                         ; $4143: $a3
    sub h                                         ; $4144: $94
    rst $38                                       ; $4145: $ff
    rst $10                                       ; $4146: $d7
    dec b                                         ; $4147: $05
    nop                                           ; $4148: $00
    ld c, $28                                     ; $4149: $0e $28
    add l                                         ; $414b: $85
    db $10                                        ; $414c: $10
    sub l                                         ; $414d: $95
    xor $8c                                       ; $414e: $ee $8c
    dec hl                                        ; $4150: $2b
    adc l                                         ; $4151: $8d
    ei                                            ; $4152: $fb
    sbc $4a                                       ; $4153: $de $4a
    adc d                                         ; $4155: $8a
    rst $20                                       ; $4156: $e7
    add hl, de                                    ; $4157: $19
    sra [hl]                                      ; $4158: $cb $2e
    nop                                           ; $415a: $00
    ld a, h                                       ; $415b: $7c
    ld d, c                                       ; $415c: $51
    and c                                         ; $415d: $a1
    ld l, b                                       ; $415e: $68
    db $db                                        ; $415f: $db
    sbc e                                         ; $4160: $9b
    xor b                                         ; $4161: $a8
    inc [hl]                                      ; $4162: $34
    adc $c4                                       ; $4163: $ce $c4
    ld c, a                                       ; $4165: $4f
    adc d                                         ; $4166: $8a
    rst $20                                       ; $4167: $e7
    add hl, de                                    ; $4168: $19
    sra [hl]                                      ; $4169: $cb $2e
    nop                                           ; $416b: $00
    ret nc                                        ; $416c: $d0

    xor e                                         ; $416d: $ab
    ld h, $3a                                     ; $416e: $26 $3a
    add a                                         ; $4170: $87
    add h                                         ; $4171: $84
    daa                                           ; $4172: $27
    sub h                                         ; $4173: $94
    or c                                          ; $4174: $b1
    xor $80                                       ; $4175: $ee $80
    jp hl                                         ; $4177: $e9


    ld [bc], a                                    ; $4178: $02
    db $fc                                        ; $4179: $fc
    ld [hl], h                                    ; $417a: $74
    sub e                                         ; $417b: $93
    or b                                          ; $417c: $b0
    inc [hl]                                      ; $417d: $34
    adc $c4                                       ; $417e: $ce $c4
    ld a, d                                       ; $4180: $7a
    reti                                          ; $4181: $d9


    ld b, b                                       ; $4182: $40
    or [hl]                                       ; $4183: $b6
    dec e                                         ; $4184: $1d
    db $dd                                        ; $4185: $dd
    sbc a                                         ; $4186: $9f
    cp a                                          ; $4187: $bf
    jp nc, Jump_000_3067                          ; $4188: $d2 $67 $30

    ld l, [hl]                                    ; $418b: $6e
    rrca                                          ; $418c: $0f
    cp e                                          ; $418d: $bb
    nop                                           ; $418e: $00
    db $fc                                        ; $418f: $fc
    dec de                                        ; $4190: $1b
    db $10                                        ; $4191: $10
    ld [$a5c9], a                                 ; $4192: $ea $c9 $a5

Jump_05b_4195:
    ld a, e                                       ; $4195: $7b
    sbc e                                         ; $4196: $9b
    xor b                                         ; $4197: $a8
    sub h                                         ; $4198: $94
    ld h, [hl]                                    ; $4199: $66
    add hl, sp                                    ; $419a: $39
    sub c                                         ; $419b: $91
    db $fc                                        ; $419c: $fc
    rst $18                                       ; $419d: $df
    add hl, sp                                    ; $419e: $39
    rst $38                                       ; $419f: $ff
    sub e                                         ; $41a0: $93
    cp d                                          ; $41a1: $ba
    rst $10                                       ; $41a2: $d7
    sbc d                                         ; $41a3: $9a
    sub h                                         ; $41a4: $94
    db $e3                                        ; $41a5: $e3
    jp c, Jump_05b_70ea                           ; $41a6: $da $ea $70

    ld h, l                                       ; $41a9: $65
    ld c, l                                       ; $41aa: $4d
    and h                                         ; $41ab: $a4
    adc h                                         ; $41ac: $8c
    ld [hl], l                                    ; $41ad: $75
    rlca                                          ; $41ae: $07
    ld c, h                                       ; $41af: $4c
    ld d, b                                       ; $41b0: $50
    nop                                           ; $41b1: $00
    cp h                                          ; $41b2: $bc
    cp b                                          ; $41b3: $b8
    db $fd                                        ; $41b4: $fd
    ld a, [hl-]                                   ; $41b5: $3a
    ld e, h                                       ; $41b6: $5c
    ld e, c                                       ; $41b7: $59
    inc de                                        ; $41b8: $13
    add hl, hl                                    ; $41b9: $29
    ld a, h                                       ; $41ba: $7c
    ld [$ffcf], a                                 ; $41bb: $ea $cf $ff
    sbc h                                         ; $41be: $9c
    or l                                          ; $41bf: $b5
    jr z, jr_05b_41d7                             ; $41c0: $28 $15

    ld c, l                                       ; $41c2: $4d
    xor [hl]                                      ; $41c3: $ae
    or l                                          ; $41c4: $b5
    dec h                                         ; $41c5: $25
    or c                                          ; $41c6: $b1
    add c                                         ; $41c7: $81
    add hl, hl                                    ; $41c8: $29
    or $98                                        ; $41c9: $f6 $98
    inc de                                        ; $41cb: $13
    pop hl                                        ; $41cc: $e1
    cp a                                          ; $41cd: $bf
    db $e4                                        ; $41ce: $e4
    ld h, b                                       ; $41cf: $60
    rst $10                                       ; $41d0: $d7
    sbc d                                         ; $41d1: $9a
    ld [hl], h                                    ; $41d2: $74
    cp b                                          ; $41d3: $b8
    or d                                          ; $41d4: $b2
    adc $32                                       ; $41d5: $ce $32

jr_05b_41d7:
    ld h, l                                       ; $41d7: $65
    daa                                           ; $41d8: $27
    and d                                         ; $41d9: $a2
    adc h                                         ; $41da: $8c
    sub h                                         ; $41db: $94
    or c                                          ; $41dc: $b1
    xor $80                                       ; $41dd: $ee $80
    ld c, c                                       ; $41df: $49
    ldh a, [$eb]                                  ; $41e0: $f0 $eb
    ld e, $db                                     ; $41e2: $1e $db
    cpl                                           ; $41e4: $2f
    ld a, b                                       ; $41e5: $78
    ldh [$bd], a                                  ; $41e6: $e0 $bd
    ld d, c                                       ; $41e8: $51
    ld a, [$30ad]                                 ; $41e9: $fa $ad $30
    or h                                          ; $41ec: $b4
    db $fd                                        ; $41ed: $fd
    dec bc                                        ; $41ee: $0b
    nop                                           ; $41ef: $00
    ld a, h                                       ; $41f0: $7c
    ld h, e                                       ; $41f1: $63
    xor l                                         ; $41f2: $ad
    ld e, a                                       ; $41f3: $5f
    sub e                                         ; $41f4: $93
    or d                                          ; $41f5: $b2
    ld l, [hl]                                    ; $41f6: $6e
    ld [hl+], a                                   ; $41f7: $22
    dec e                                         ; $41f8: $1d
    ld c, h                                       ; $41f9: $4c
    ld [hl], a                                    ; $41fa: $77
    ld [de], a                                    ; $41fb: $12
    or c                                          ; $41fc: $b1
    dec sp                                        ; $41fd: $3b
    and d                                         ; $41fe: $a2
    ld [$f9d3], a                                 ; $41ff: $ea $d3 $f9
    ld l, e                                       ; $4202: $6b
    ei                                            ; $4203: $fb
    ld c, d                                       ; $4204: $4a
    cp a                                          ; $4205: $bf
    ld l, h                                       ; $4206: $6c

Jump_05b_4207:
    rst $20                                       ; $4207: $e7
    db $fc                                        ; $4208: $fc
    db $ed                                        ; $4209: $ed
    ld c, a                                       ; $420a: $4f
    ld l, d                                       ; $420b: $6a
    adc [hl]                                      ; $420c: $8e
    sub d                                         ; $420d: $92
    adc a                                         ; $420e: $8f
    ld a, e                                       ; $420f: $7b
    ld l, a                                       ; $4210: $6f
    dec hl                                        ; $4211: $2b
    ld h, e                                       ; $4212: $63
    db $dd                                        ; $4213: $dd
    ld bc, $25d3                                  ; $4214: $01 $d3 $25
    adc a                                         ; $4217: $8f
    or b                                          ; $4218: $b0
    rst $20                                       ; $4219: $e7
    ld l, b                                       ; $421a: $68
    push de                                       ; $421b: $d5
    xor [hl]                                      ; $421c: $ae
    dec [hl]                                      ; $421d: $35
    add hl, bc                                    ; $421e: $09
    di                                            ; $421f: $f3
    ld l, a                                       ; $4220: $6f
    db $fd                                        ; $4221: $fd
    adc $97                                       ; $4222: $ce $97
    cp a                                          ; $4224: $bf
    sub $94                                       ; $4225: $d6 $94
    cpl                                           ; $4227: $2f
    ld e, l                                       ; $4228: $5d
    nop                                           ; $4229: $00
    inc a                                         ; $422a: $3c
    sbc a                                         ; $422b: $9f
    db $10                                        ; $422c: $10
    ld e, e                                       ; $422d: $5b
    ld c, b                                       ; $422e: $48
    ld d, d                                       ; $422f: $52
    rst $30                                       ; $4230: $f7
    ld e, d                                       ; $4231: $5a
    sub e                                         ; $4232: $93
    and $57                                       ; $4233: $e6 $57
    ld a, l                                       ; $4235: $7d
    rst $30                                       ; $4236: $f7
    xor a                                         ; $4237: $af
    xor l                                         ; $4238: $ad
    ld c, $a5                                     ; $4239: $0e $a5
    dec e                                         ; $423b: $1d
    and h                                         ; $423c: $a4
    ld l, b                                       ; $423d: $68
    db $db                                        ; $423e: $db
    sbc e                                         ; $423f: $9b
    xor b                                         ; $4240: $a8
    sub h                                         ; $4241: $94
    or c                                          ; $4242: $b1
    xor $80                                       ; $4243: $ee $80
    add hl, bc                                    ; $4245: $09
    ld a, [bc]                                    ; $4246: $0a
    nop                                           ; $4247: $00
    ld l, [hl]                                    ; $4248: $6e
    ld l, a                                       ; $4249: $6f
    add l                                         ; $424a: $85
    call $f065                                    ; $424b: $cd $65 $f0
    rst $38                                       ; $424e: $ff
    ld b, h                                       ; $424f: $44
    ld d, e                                       ; $4250: $53
    ld d, e                                       ; $4251: $53
    sub $1d                                       ; $4252: $d6 $1d
    daa                                           ; $4254: $27
    ld a, [hl-]                                   ; $4255: $3a
    xor c                                         ; $4256: $a9
    db $fc                                        ; $4257: $fc
    rla                                           ; $4258: $17
    ld c, d                                       ; $4259: $4a
    sbc [hl]                                      ; $425a: $9e
    ld c, $4c                                     ; $425b: $0e $4c
    or c                                          ; $425d: $b1
    rst $00                                       ; $425e: $c7
    call nz, $feb5                                ; $425f: $c4 $b5 $fe
    db $f4                                        ; $4262: $f4
    ld c, e                                       ; $4263: $4b
    or l                                          ; $4264: $b5
    db $db                                        ; $4265: $db
    and h                                         ; $4266: $a4
    rst $18                                       ; $4267: $df
    adc d                                         ; $4268: $8a
    ld l, c                                       ; $4269: $69
    ei                                            ; $426a: $fb
    ld a, [hl-]                                   ; $426b: $3a
    ld e, h                                       ; $426c: $5c
    ld e, c                                       ; $426d: $59
    inc de                                        ; $426e: $13
    ld e, l                                       ; $426f: $5d
    ld [c], a                                     ; $4270: $e2
    daa                                           ; $4271: $27
    ld a, [hl-]                                   ; $4272: $3a
    add a                                         ; $4273: $87
    inc [hl]                                      ; $4274: $34
    rst $18                                       ; $4275: $df
    ld [hl], d                                    ; $4276: $72
    ld e, h                                       ; $4277: $5c
    push hl                                       ; $4278: $e5
    sub h                                         ; $4279: $94
    sub d                                         ; $427a: $92
    ld l, [hl]                                    ; $427b: $6e
    sbc d                                         ; $427c: $9a
    ld a, e                                       ; $427d: $7b
    rst $00                                       ; $427e: $c7
    or d                                          ; $427f: $b2
    cp a                                          ; $4280: $bf
    rst $30                                       ; $4281: $f7
    sub e                                         ; $4282: $93
    cp d                                          ; $4283: $ba
    ld b, a                                       ; $4284: $47
    ld l, e                                       ; $4285: $6b
    adc [hl]                                      ; $4286: $8e
    sub d                                         ; $4287: $92
    add l                                         ; $4288: $85
    db $ec                                        ; $4289: $ec
    ld e, a                                       ; $428a: $5f
    rlca                                          ; $428b: $07
    db $d3                                        ; $428c: $d3
    sbc l                                         ; $428d: $9d
    ld b, h                                       ; $428e: $44
    db $ec                                        ; $428f: $ec
    adc [hl]                                      ; $4290: $8e
    ld l, b                                       ; $4291: $68
    db $fd                                        ; $4292: $fd
    and $6f                                       ; $4293: $e6 $6f
    dec e                                         ; $4295: $1d
    daa                                           ; $4296: $27
    xor $ff                                       ; $4297: $ee $ff
    ld d, d                                       ; $4299: $52
    db $ed                                        ; $429a: $ed
    sub [hl]                                      ; $429b: $96
    and $f6                                       ; $429c: $e6 $f6
    call c, $8552                                 ; $429e: $dc $52 $85
    ld a, h                                       ; $42a1: $7c
    ld e, h                                       ; $42a2: $5c
    cp e                                          ; $42a3: $bb
    nop                                           ; $42a4: $00
    ld e, $63                                     ; $42a5: $1e $63
    cp d                                          ; $42a7: $ba
    sub e                                         ; $42a8: $93
    adc b                                         ; $42a9: $88
    db $dd                                        ; $42aa: $dd
    ld de, $050d                                  ; $42ab: $11 $0d $05
    nop                                           ; $42ae: $00
    sbc $a4                                       ; $42af: $de $a4
    rst $10                                       ; $42b1: $d7
    ld [hl], l                                    ; $42b2: $75
    ret                                           ; $42b3: $c9


    cp [hl]                                       ; $42b4: $be
    ld [hl], b                                    ; $42b5: $70
    ld l, e                                       ; $42b6: $6b
    and d                                         ; $42b7: $a2
    ld c, $a6                                     ; $42b8: $0e $a6
    dec sp                                        ; $42ba: $3b
    adc c                                         ; $42bb: $89
    ret c                                         ; $42bc: $d8

    dec e                                         ; $42bd: $1d
    pop de                                        ; $42be: $d1
    ld d, b                                       ; $42bf: $50
    ld [c], a                                     ; $42c0: $e2
    ld a, a                                       ; $42c1: $7f
    ld [hl], $b1                                  ; $42c2: $36 $b1
    or a                                          ; $42c4: $b7
    ld h, h                                       ; $42c5: $64
    cp e                                          ; $42c6: $bb
    and [hl]                                      ; $42c7: $a6
    ld a, e                                       ; $42c8: $7b
    sub h                                         ; $42c9: $94

Jump_05b_42ca:
    ld h, $2e                                     ; $42ca: $26 $2e
    ei                                            ; $42cc: $fb
    xor a                                         ; $42cd: $af
    dec d                                         ; $42ce: $15
    ccf                                           ; $42cf: $3f
    or d                                          ; $42d0: $b2
    rst $38                                       ; $42d1: $ff
    ld c, e                                       ; $42d2: $4b
    ld e, $0d                                     ; $42d3: $1e $0d
    ld l, e                                       ; $42d5: $6b
    push de                                       ; $42d6: $d5
    ld l, [hl]                                    ; $42d7: $6e
    ld e, l                                       ; $42d8: $5d
    rst $10                                       ; $42d9: $d7
    dec h                                         ; $42da: $25
    dec bc                                        ; $42db: $0b
    ld sp, hl                                     ; $42dc: $f9
    ld l, e                                       ; $42dd: $6b
    ld c, l                                       ; $42de: $4d
    inc h                                         ; $42df: $24
    ld a, [hl]                                    ; $42e0: $7e
    ld h, h                                       ; $42e1: $64
    ld e, a                                       ; $42e2: $5f
    ld a, [$dfcd]                                 ; $42e3: $fa $cd $df
    ld a, [hl-]                                   ; $42e6: $3a
    ld c, [hl]                                    ; $42e7: $4e
    ld b, h                                       ; $42e8: $44
    ld e, l                                       ; $42e9: $5d
    ld a, [c]                                     ; $42ea: $f2
    ld l, b                                       ; $42eb: $68
    ld [hl], h                                    ; $42ec: $74
    sbc h                                         ; $42ed: $9c
    di                                            ; $42ee: $f3
    ld e, a                                       ; $42ef: $5f
    cp d                                          ; $42f0: $ba
    inc sp                                        ; $42f1: $33
    xor [hl]                                      ; $42f2: $ae
    inc [hl]                                      ; $42f3: $34
    xor $7b                                       ; $42f4: $ee $7b
    dec hl                                        ; $42f6: $2b
    add hl, hl                                    ; $42f7: $29
    sbc [hl]                                      ; $42f8: $9e
    ld h, a                                       ; $42f9: $67
    inc l                                         ; $42fa: $2c
    cp e                                          ; $42fb: $bb
    nop                                           ; $42fc: $00
    inc a                                         ; $42fd: $3c
    or c                                          ; $42fe: $b1
    ld c, c                                       ; $42ff: $49
    pop af                                        ; $4300: $f1
    inc a                                         ; $4301: $3c
    ld h, e                                       ; $4302: $63
    ld e, c                                       ; $4303: $59
    ld d, d                                       ; $4304: $52
    rst $30                                       ; $4305: $f7
    ld c, [hl]                                    ; $4306: $4e
    sub d                                         ; $4307: $92
    ld l, l                                       ; $4308: $6d
    adc l                                         ; $4309: $8d
    ld [hl], e                                    ; $430a: $73
    ld e, [hl]                                    ; $430b: $5e
    or [hl]                                       ; $430c: $b6
    ld e, e                                       ; $430d: $5b
    inc h                                         ; $430e: $24
    inc l                                         ; $430f: $2c
    jr z, jr_05b_4312                             ; $4310: $28 $00

jr_05b_4312:
    sbc h                                         ; $4312: $9c
    ld hl, $dd2c                                  ; $4313: $21 $2c $dd
    ld e, e                                       ; $4316: $5b
    and e                                         ; $4317: $a3
    db $f4                                        ; $4318: $f4
    ld e, e                                       ; $4319: $5b
    ld h, c                                       ; $431a: $61
    ld [hl], e                                    ; $431b: $73
    add hl, de                                    ; $431c: $19
    db $fc                                        ; $431d: $fc
    or l                                          ; $431e: $b5
    ld c, c                                       ; $431f: $49
    reti                                          ; $4320: $d9


    ld l, a                                       ; $4321: $6f
    ret                                           ; $4322: $c9


    and d                                         ; $4323: $a2
    sub h                                         ; $4324: $94
    or c                                          ; $4325: $b1
    xor $ed                                       ; $4326: $ee $ed
    dec c                                         ; $4328: $0d
    ld [$7a96], sp                                ; $4329: $08 $96 $7a
    ld d, h                                       ; $432c: $54
    db $ed                                        ; $432d: $ed
    jp hl                                         ; $432e: $e9


    cp a                                          ; $432f: $bf
    nop                                           ; $4330: $00
    sbc [hl]                                      ; $4331: $9e
    rst $38                                       ; $4332: $ff
    ld a, [hl+]                                   ; $4333: $2a
    ld h, e                                       ; $4334: $63
    db $dd                                        ; $4335: $dd
    ld bc, $ee93                                  ; $4336: $01 $93 $ee
    ld l, b                                       ; $4339: $68
    inc hl                                        ; $433a: $23
    ld l, e                                       ; $433b: $6b
    cp d                                          ; $433c: $ba
    ret                                           ; $433d: $c9


    adc h                                         ; $433e: $8c
    ld l, $f1                                     ; $433f: $2e $f1
    ld a, [hl]                                    ; $4341: $7e
    push de                                       ; $4342: $d5
    ld [hl], a                                    ; $4343: $77
    rst $38                                       ; $4344: $ff
    jp c, Jump_05b_7f2a                           ; $4345: $da $2a $7f

    halt                                          ; $4348: $76
    rst $38                                       ; $4349: $ff
    sub a                                         ; $434a: $97
    ld l, h                                       ; $434b: $6c
    sub a                                         ; $434c: $97
    ld [hl], l                                    ; $434d: $75
    ld b, [hl]                                    ; $434e: $46
    ld a, [de]                                    ; $434f: $1a
    ld h, a                                       ; $4350: $67
    and d                                         ; $4351: $a2
    ccf                                           ; $4352: $3f
    ldh a, [$c4]                                  ; $4353: $f0 $c4
    add hl, sp                                    ; $4355: $39
    ld [hl], c                                    ; $4356: $71
    ld bc, $74fc                                  ; $4357: $01 $fc $74
    sub e                                         ; $435a: $93
    or b                                          ; $435b: $b0
    sub h                                         ; $435c: $94
    ccf                                           ; $435d: $3f
    cp e                                          ; $435e: $bb
    rst $18                                       ; $435f: $df
    ld a, d                                       ; $4360: $7a
    dec b                                         ; $4361: $05
    db $e3                                        ; $4362: $e3
    inc e                                         ; $4363: $1c
    xor d                                         ; $4364: $aa
    ld e, l                                       ; $4365: $5d
    ld l, e                                       ; $4366: $6b
    ld d, d                                       ; $4367: $52
    add $3a                                       ; $4368: $c6 $3a
    sub $9a                                       ; $436a: $d6 $9a
    ld l, $00                                     ; $436c: $2e $00
    inc e                                         ; $436e: $1c

Call_05b_436f:
    ld h, a                                       ; $436f: $67
    ld c, e                                       ; $4370: $4b
    cp b                                          ; $4371: $b8
    inc sp                                        ; $4372: $33
    sbc $ec                                       ; $4373: $de $ec
    xor a                                         ; $4375: $af
    db $eb                                        ; $4376: $eb
    sub d                                         ; $4377: $92
    add l                                         ; $4378: $85
    or b                                          ; $4379: $b0
    db $f4                                        ; $437a: $f4
    inc de                                        ; $437b: $13
    ld l, e                                       ; $437c: $6b
    rst $20                                       ; $437d: $e7
    cp b                                          ; $437e: $b8
    cpl                                           ; $437f: $2f
    nop                                           ; $4380: $00
    ld a, h                                       ; $4381: $7c
    db $db                                        ; $4382: $db
    sub h                                         ; $4383: $94
    ld d, d                                       ; $4384: $52
    ld l, c                                       ; $4385: $69
    ld l, $83                                     ; $4386: $2e $83
    ld e, a                                       ; $4388: $5f
    or $85                                        ; $4389: $f6 $85
    xor b                                         ; $438b: $a8
    ld h, $6b                                     ; $438c: $26 $6b
    add d                                         ; $438e: $82
    ld [bc], a                                    ; $438f: $02
    ld l, [hl]                                    ; $4390: $6e
    rrca                                          ; $4391: $0f
    ld l, [hl]                                    ; $4392: $6e
    ld e, c                                       ; $4393: $59
    ret z                                         ; $4394: $c8

    rst $00                                       ; $4395: $c7
    db $d3                                        ; $4396: $d3
    db $fd                                        ; $4397: $fd
    rst $08                                       ; $4398: $cf
    dec c                                         ; $4399: $0d
    nop                                           ; $439a: $00
    db $fc                                        ; $439b: $fc
    ld [hl], h                                    ; $439c: $74
    sub e                                         ; $439d: $93
    ld l, h                                       ; $439e: $6c
    rst $10                                       ; $439f: $d7
    add h                                         ; $43a0: $84

Call_05b_43a1:
    and l                                         ; $43a1: $a5
    sbc e                                         ; $43a2: $9b
    and $de                                       ; $43a3: $e6 $de
    or c                                          ; $43a5: $b1
    db $ec                                        ; $43a6: $ec
    rst $28                                       ; $43a7: $ef
    cp l                                          ; $43a8: $bd
    nop                                           ; $43a9: $00
    db $fc                                        ; $43aa: $fc
    cp a                                          ; $43ab: $bf
    sub b                                         ; $43ac: $90
    xor a                                         ; $43ad: $af
    cp c                                          ; $43ae: $b9

Jump_05b_43af:
    and l                                         ; $43af: $a5
    ld e, $d5                                     ; $43b0: $1e $d5
    pop af                                        ; $43b2: $f1
    ld l, d                                       ; $43b3: $6a
    cp d                                          ; $43b4: $ba
    xor c                                         ; $43b5: $a9
    ld l, $00                                     ; $43b6: $2e $00
    ld l, [hl]                                    ; $43b8: $6e
    adc a                                         ; $43b9: $8f
    or [hl]                                       ; $43ba: $b6
    and h                                         ; $43bb: $a4
    inc l                                         ; $43bc: $2c
    inc [hl]                                      ; $43bd: $34
    sub a                                         ; $43be: $97
    push hl                                       ; $43bf: $e5
    ld [hl], c                                    ; $43c0: $71
    ld [hl+], a                                   ; $43c1: $22
    ld l, $00                                     ; $43c2: $2e $00
    ld c, $70                                     ; $43c4: $0e $70
    ld c, [hl]                                    ; $43c6: $4e
    xor h                                         ; $43c7: $ac
    xor b                                         ; $43c8: $a8
    and h                                         ; $43c9: $a4
    ld l, d                                       ; $43ca: $6a
    or a                                          ; $43cb: $b7
    inc [hl]                                      ; $43cc: $34
    rst $00                                       ; $43cd: $c7
    sub [hl]                                      ; $43ce: $96
    sbc [hl]                                      ; $43cf: $9e
    push hl                                       ; $43d0: $e5
    ld [hl], c                                    ; $43d1: $71
    or [hl]                                       ; $43d2: $b6
    and $d6                                       ; $43d3: $e6 $d6
    dec h                                         ; $43d5: $25
    rst $30                                       ; $43d6: $f7
    ld b, $b3                                     ; $43d7: $06 $b3
    inc de                                        ; $43d9: $13
    ld e, c                                       ; $43da: $59
    ret                                           ; $43db: $c9


    rra                                           ; $43dc: $1f
    and e                                         ; $43dd: $a3
    sbc a                                         ; $43de: $9f
    and l                                         ; $43df: $a5
    cpl                                           ; $43e0: $2f
    inc a                                         ; $43e1: $3c
    xor e                                         ; $43e2: $ab
    jp c, Jump_05b_526d                           ; $43e3: $da $6d $52

    cp $a7                                        ; $43e6: $fe $a7
    ld [hl], c                                    ; $43e8: $71
    rst $28                                       ; $43e9: $ef
    xor b                                         ; $43ea: $a8
    rst $38                                       ; $43eb: $ff
    cp d                                          ; $43ec: $ba
    nop                                           ; $43ed: $00
    db $fc                                        ; $43ee: $fc
    ld [hl], h                                    ; $43ef: $74
    sub e                                         ; $43f0: $93
    adc d                                         ; $43f1: $8a
    or d                                          ; $43f2: $b2
    ld l, [hl]                                    ; $43f3: $6e
    ld [hl+], a                                   ; $43f4: $22
    pop hl                                        ; $43f5: $e1
    add b                                         ; $43f6: $80
    ldh [$e9], a                                  ; $43f7: $e0 $e9
    cp a                                          ; $43f9: $bf
    call nz, $93b7                                ; $43fa: $c4 $b7 $93
    ld d, d                                       ; $43fd: $52
    ld a, [hl+]                                   ; $43fe: $2a
    ld e, c                                       ; $43ff: $59
    ld [$0a0b], sp                                ; $4400: $08 $0b $0a
    nop                                           ; $4403: $00
    cp h                                          ; $4404: $bc
    set 4, b                                      ; $4405: $cb $e0
    cpl                                           ; $4407: $2f
    db $dd                                        ; $4408: $dd
    ld h, e                                       ; $4409: $63
    cp $97                                        ; $440a: $fe $97
    inc l                                         ; $440c: $2c
    add h                                         ; $440d: $84
    and l                                         ; $440e: $a5
    ccf                                           ; $440f: $3f
    ld l, h                                       ; $4410: $6c
    adc h                                         ; $4411: $8c
    ld a, [$000b]                                 ; $4412: $fa $0b $00
    sbc [hl]                                      ; $4415: $9e
    ld c, l                                       ; $4416: $4d
    xor h                                         ; $4417: $ac
    db $f4                                        ; $4418: $f4
    cp e                                          ; $4419: $bb
    rst $00                                       ; $441a: $c7
    dec h                                         ; $441b: $25
    cp $7f                                        ; $441c: $fe $7f
    db $d3                                        ; $441e: $d3
    pop hl                                        ; $441f: $e1
    jp z, Jump_05b_5b3a                           ; $4420: $ca $3a $5b

    ld h, l                                       ; $4423: $65
    db $d3                                        ; $4424: $d3
    or $02                                        ; $4425: $f6 $02
    cp h                                          ; $4427: $bc
    cp b                                          ; $4428: $b8
    ld l, h                                       ; $4429: $6c
    ld h, b                                       ; $442a: $60
    adc d                                         ; $442b: $8a
    sub a                                         ; $442c: $97
    ld a, b                                       ; $442d: $78
    sbc $6c                                       ; $442e: $de $6c
    xor b                                         ; $4430: $a8
    or $de                                        ; $4431: $f6 $de
    dec bc                                        ; $4433: $0b
    nop                                           ; $4434: $00
    db $fc                                        ; $4435: $fc
    ld [hl], h                                    ; $4436: $74
    sub e                                         ; $4437: $93
    adc d                                         ; $4438: $8a
    or d                                          ; $4439: $b2
    ld l, [hl]                                    ; $443a: $6e
    ld [hl+], a                                   ; $443b: $22
    ld l, l                                       ; $443c: $6d
    ld a, [$8ca5]                                 ; $443d: $fa $a5 $8c
    push af                                       ; $4440: $f5
    sbc [hl]                                      ; $4441: $9e
    and [hl]                                      ; $4442: $a6
    dec bc                                        ; $4443: $0b
    nop                                           ; $4444: $00
    sbc h                                         ; $4445: $9c
    ld hl, $2b3c                                  ; $4446: $21 $3c $2b
    db $db                                        ; $4449: $db
    dec [hl]                                      ; $444a: $35
    reti                                          ; $444b: $d9


    ret nz                                        ; $444c: $c0

    or e                                          ; $444d: $b3
    rlca                                          ; $444e: $07
    cp $0b                                        ; $444f: $fe $0b
    nop                                           ; $4451: $00
    db $fc                                        ; $4452: $fc
    ld h, h                                       ; $4453: $64
    ld b, [hl]                                    ; $4454: $46
    adc d                                         ; $4455: $8a

jr_05b_4456:
    dec d                                         ; $4456: $15
    sbc [hl]                                      ; $4457: $9e
    ld d, b                                       ; $4458: $50
    cp [hl]                                       ; $4459: $be
    ld [hl], c                                    ; $445a: $71
    ld c, b                                       ; $445b: $48
    db $fd                                        ; $445c: $fd
    call z, $988f                                 ; $445d: $cc $8f $98
    or [hl]                                       ; $4460: $b6
    ld c, c                                       ; $4461: $49
    pop af                                        ; $4462: $f1
    inc a                                         ; $4463: $3c
    ld h, e                                       ; $4464: $63
    reti                                          ; $4465: $d9


    dec h                                         ; $4466: $25
    cp [hl]                                       ; $4467: $be
    xor b                                         ; $4468: $a8
    ld d, b                                       ; $4469: $50
    rst $38                                       ; $446a: $ff
    db $fc                                        ; $446b: $fc
    or l                                          ; $446c: $b5
    dec l                                         ; $446d: $2d
    ld b, l                                       ; $446e: $45
    db $db                                        ; $446f: $db
    sbc $44                                       ; $4470: $de $44
    ld [hl], l                                    ; $4472: $75
    ld bc, $b13c                                  ; $4473: $01 $3c $b1
    ld [hl], e                                    ; $4476: $73
    and d                                         ; $4477: $a2
    ld l, h                                       ; $4478: $6c
    jr nz, jr_05b_4456                            ; $4479: $20 $db

    ld e, $96                                     ; $447b: $1e $96
    sub h                                         ; $447d: $94
    ld b, e                                       ; $447e: $43
    db $ec                                        ; $447f: $ec
    ld c, $76                                     ; $4480: $0e $76
    adc c                                         ; $4482: $89
    rst $38                                       ; $4483: $ff
    rst $20                                       ; $4484: $e7
    xor a                                         ; $4485: $af
    ld l, l                                       ; $4486: $6d
    add hl, hl                                    ; $4487: $29
    rst $38                                       ; $4488: $ff
    xor l                                         ; $4489: $ad
    dec bc                                        ; $448a: $0b
    nop                                           ; $448b: $00
    db $fc                                        ; $448c: $fc
    ld [hl], h                                    ; $448d: $74
    sub e                                         ; $448e: $93
    or b                                          ; $448f: $b0
    inc b                                         ; $4490: $04
    and e                                         ; $4491: $a3
    ld h, $9e                                     ; $4492: $26 $9e
    ei                                            ; $4494: $fb
    ld c, l                                       ; $4495: $4d
    inc sp                                        ; $4496: $33
    ld e, b                                       ; $4497: $58
    ld a, a                                       ; $4498: $7f
    ld d, d                                       ; $4499: $52
    ld [hl], e                                    ; $449a: $73
    sub h                                         ; $449b: $94
    db $fc                                        ; $449c: $fc
    ccf                                           ; $449d: $3f
    ccf                                           ; $449e: $3f
    ld a, [$335b]                                 ; $449f: $fa $5b $33
    ld l, h                                       ; $44a2: $6c
    ld b, [hl]                                    ; $44a3: $46
    dec b                                         ; $44a4: $05
    and e                                         ; $44a5: $a3
    or l                                          ; $44a6: $b5
    jr z, @+$77                                   ; $44a7: $28 $75

    and h                                         ; $44a9: $a4
    ld c, l                                       ; $44aa: $4d
    add hl, sp                                    ; $44ab: $39
    push de                                       ; $44ac: $d5
    dec h                                         ; $44ad: $25
    rst $08                                       ; $44ae: $cf
    add hl, hl                                    ; $44af: $29
    adc l                                         ; $44b0: $8d
    ld a, [hl+]                                   ; $44b1: $2a
    ld a, [hl+]                                   ; $44b2: $2a
    ld h, l                                       ; $44b3: $65
    add hl, hl                                    ; $44b4: $29
    inc h                                         ; $44b5: $24
    ld c, d                                       ; $44b6: $4a
    dec a                                         ; $44b7: $3d
    db $fc                                        ; $44b8: $fc
    rst $30                                       ; $44b9: $f7
    rst $10                                       ; $44ba: $d7
    ld a, [hl-]                                   ; $44bb: $3a
    and d                                         ; $44bc: $a2

jr_05b_44bd:
    db $f4                                        ; $44bd: $f4
    ld e, e                                       ; $44be: $5b
    sbc a                                         ; $44bf: $9f
    call nc, Call_000_251c                        ; $44c0: $d4 $1c $25
    rst $38                                       ; $44c3: $ff
    rst $08                                       ; $44c4: $cf
    ld a, a                                       ; $44c5: $7f
    xor e                                         ; $44c6: $ab
    xor c                                         ; $44c7: $a9
    ld a, [hl+]                                   ; $44c8: $2a
    or h                                          ; $44c9: $b4
    rst $20                                       ; $44ca: $e7
    cp $d2                                        ; $44cb: $fe $d2
    inc e                                         ; $44cd: $1c
    ld d, l                                       ; $44ce: $55
    ld a, b                                       ; $44cf: $78
    adc $cb                                       ; $44d0: $ce $cb

Jump_05b_44d2:
    ld b, $b2                                     ; $44d2: $06 $b2
    db $ed                                        ; $44d4: $ed
    add sp, $1e                                   ; $44d5: $e8 $1e
    xor a                                         ; $44d7: $af
    adc [hl]                                      ; $44d8: $8e
    or h                                          ; $44d9: $b4
    add hl, hl                                    ; $44da: $29
    daa                                           ; $44db: $27
    cp d                                          ; $44dc: $ba
    nop                                           ; $44dd: $00
    ld e, $e3                                     ; $44de: $1e $e3
    ld e, d                                       ; $44e0: $5a
    ld a, a                                       ; $44e1: $7f
    cp $9f                                        ; $44e2: $fe $9f
    inc d                                         ; $44e4: $14
    rst $08                                       ; $44e5: $cf
    inc sp                                        ; $44e6: $33
    sub [hl]                                      ; $44e7: $96
    ld e, l                                       ; $44e8: $5d
    ld [c], a                                     ; $44e9: $e2
    jr c, jr_05b_44bd                             ; $44ea: $38 $d1

    adc d                                         ; $44ec: $8a
    or d                                          ; $44ed: $b2
    cp l                                          ; $44ee: $bd
    ld l, a                                       ; $44ef: $6f
    jp c, Jump_05b_4a8a                           ; $44f0: $da $8a $4a

    ld a, [bc]                                    ; $44f3: $0a
    add $f9                                       ; $44f4: $c6 $f9

Jump_05b_44f6:
    or d                                          ; $44f6: $b2
    add c                                         ; $44f7: $81
    ld l, h                                       ; $44f8: $6c
    cp e                                          ; $44f9: $bb
    ld d, a                                       ; $44fa: $57
    dec e                                         ; $44fb: $1d
    ld l, c                                       ; $44fc: $69
    ld d, e                                       ; $44fd: $53
    ld c, [hl]                                    ; $44fe: $4e
    dec h                                         ; $44ff: $25
    xor h                                         ; $4500: $ac
    ld e, d                                       ; $4501: $5a
    db $eb                                        ; $4502: $eb
    ld d, c                                       ; $4503: $51
    ld de, $7bd6                                  ; $4504: $11 $d6 $7b
    adc c                                         ; $4507: $89
    di                                            ; $4508: $f3
    cp a                                          ; $4509: $bf
    push hl                                       ; $450a: $e5
    rst $38                                       ; $450b: $ff
    sbc c                                         ; $450c: $99
    ld e, e                                       ; $450d: $5b
    add l                                         ; $450e: $85
    db $d3                                        ; $450f: $d3
    ld d, [hl]                                    ; $4510: $56
    di                                            ; $4511: $f3
    ld d, e                                       ; $4512: $53
    ld c, b                                       ; $4513: $48
    sub h                                         ; $4514: $94
    ldh [$81], a                                  ; $4515: $e0 $81
    rst $30                                       ; $4517: $f7
    sub a                                         ; $4518: $97
    jr nc, @-$79                                  ; $4519: $30 $85

    inc hl                                        ; $451b: $23
    ld a, [$5f12]                                 ; $451c: $fa $12 $5f
    ld d, h                                       ; $451f: $54
    ret z                                         ; $4520: $c8

    ld h, a                                       ; $4521: $67
    sbc b                                         ; $4522: $98
    ld h, b                                       ; $4523: $60
    sbc b                                         ; $4524: $98
    ld hl, $f15b                                  ; $4525: $21 $5b $f1
    cp $99                                        ; $4528: $fe $99
    rst $08                                       ; $452a: $cf
    ld [hl], b                                    ; $452b: $70
    ld e, d                                       ; $452c: $5a
    sub h                                         ; $452d: $94
    adc $c0                                       ; $452e: $ce $c0
    ld l, c                                       ; $4530: $69
    ld hl, $35f8                                  ; $4531: $21 $f8 $35
    add e                                         ; $4534: $83
    ld sp, $bdd4                                  ; $4535: $31 $d4 $bd
    dec [hl]                                      ; $4538: $35
    ld c, [hl]                                    ; $4539: $4e
    cp a                                          ; $453a: $bf
    ld a, [hl-]                                   ; $453b: $3a
    ld e, b                                       ; $453c: $58
    ld e, $6b                                     ; $453d: $1e $6b
    ld c, e                                       ; $453f: $4b
    rla                                           ; $4540: $17
    nop                                           ; $4541: $00
    ld c, $19                                     ; $4542: $0e $19
    ld h, $18                                     ; $4544: $26 $18
    ld h, [hl]                                    ; $4546: $66
    ret z                                         ; $4547: $c8

    ld d, [hl]                                    ; $4548: $56
    cp h                                          ; $4549: $bc
    ld a, a                                       ; $454a: $7f
    and $33                                       ; $454b: $e6 $33
    sbc h                                         ; $454d: $9c
    ld d, $05                                     ; $454e: $16 $05
    push bc                                       ; $4550: $c5
    dec c                                         ; $4551: $0d
    nop                                           ; $4552: $00
    cp h                                          ; $4553: $bc
    ld h, e                                       ; $4554: $63
    cp [hl]                                       ; $4555: $be
    xor $31                                       ; $4556: $ee $31
    ld h, h                                       ; $4558: $64
    ld e, e                                       ; $4559: $5b
    db $e3                                        ; $455a: $e3
    sbc h                                         ; $455b: $9c
    db $10                                        ; $455c: $10
    ld a, [$fdd1]                                 ; $455d: $fa $d1 $fd
    ld l, e                                       ; $4560: $6b
    xor e                                         ; $4561: $ab
    cp $9d                                        ; $4562: $fe $9d
    rrca                                          ; $4564: $0f
    rrca                                          ; $4565: $0f
    cp h                                          ; $4566: $bc
    scf                                           ; $4567: $37
    ld c, d                                       ; $4568: $4a
    inc l                                         ; $4569: $2c
    inc l                                         ; $456a: $2c
    db $fc                                        ; $456b: $fc
    sbc $86                                       ; $456c: $de $86
    ld [de], a                                    ; $456e: $12
    rrca                                          ; $456f: $0f
    sub l                                         ; $4570: $95
    or b                                          ; $4571: $b0
    sub h                                         ; $4572: $94
    ccf                                           ; $4573: $3f
    cp e                                          ; $4574: $bb
    rst $18                                       ; $4575: $df
    ld a, d                                       ; $4576: $7a
    push de                                       ; $4577: $d5
    add hl, de                                    ; $4578: $19
    ld d, a                                       ; $4579: $57
    ld a, [hl-]                                   ; $457a: $3a
    or b                                          ; $457b: $b0
    ld [hl+], a                                   ; $457c: $22
    call z, Call_05b_4bfe                         ; $457d: $cc $fe $4b
    ld c, l                                       ; $4580: $4d
    add hl, hl                                    ; $4581: $29
    sub l                                         ; $4582: $95
    ld a, [hl]                                    ; $4583: $7e
    rst $20                                       ; $4584: $e7
    ld a, a                                       ; $4585: $7f
    ret                                           ; $4586: $c9


    and a                                         ; $4587: $a7
    call $9ac9                                    ; $4588: $cd $c9 $9a
    ld l, $00                                     ; $458b: $2e $00
    ld a, h                                       ; $458d: $7c
    db $db                                        ; $458e: $db
    and h                                         ; $458f: $a4
    db $f4                                        ; $4590: $f4
    rst $08                                       ; $4591: $cf
    ld hl, sp+$4e                                 ; $4592: $f8 $4e
    jp z, Jump_05b_7621                           ; $4594: $ca $21 $76

    rlca                                          ; $4597: $07
    add e                                         ; $4598: $83
    ld [bc], a                                    ; $4599: $02
    sbc h                                         ; $459a: $9c
    inc bc                                        ; $459b: $03
    reti                                          ; $459c: $d9


    or $96                                        ; $459d: $f6 $96
    ld [hl-], a                                   ; $459f: $32
    sub $bd                                       ; $45a0: $d6 $bd
    cp l                                          ; $45a2: $bd
    ld bc, $52c1                                  ; $45a3: $01 $c1 $52
    ld b, a                                       ; $45a6: $47
    jp c, Jump_05b_5394                           ; $45a7: $da $94 $53

    add hl, hl                                    ; $45aa: $29
    jp z, $bef6                                   ; $45ab: $ca $f6 $be

    ld l, c                                       ; $45ae: $69
    dec l                                         ; $45af: $2d
    adc d                                         ; $45b0: $8a
    inc b                                         ; $45b1: $04
    cp a                                          ; $45b2: $bf
    db $fc                                        ; $45b3: $fc
    ccf                                           ; $45b4: $3f
    ld [hl], e                                    ; $45b5: $73
    xor e                                         ; $45b6: $ab
    ld [hl], b                                    ; $45b7: $70
    jp c, Jump_05b_67ca                           ; $45b8: $da $ca $67

    sbc b                                         ; $45bb: $98
    ld h, b                                       ; $45bc: $60
    sbc b                                         ; $45bd: $98
    ld hl, $795b                                  ; $45be: $21 $5b $79
    ld e, $cc                                     ; $45c1: $1e $cc
    ld d, b                                       ; $45c3: $50
    add a                                         ; $45c4: $87
    jp nc, $5ee8                                  ; $45c5: $d2 $e8 $5e

    db $dd                                        ; $45c8: $dd
    ld e, e                                       ; $45c9: $5b
    and e                                         ; $45ca: $a3
    sub l                                         ; $45cb: $95
    cp $8c                                        ; $45cc: $fe $8c
    ei                                            ; $45ce: $fb
    cp a                                          ; $45cf: $bf
    inc [hl]                                      ; $45d0: $34
    ld a, a                                       ; $45d1: $7f
    jp c, Jump_05b_7faa                           ; $45d2: $da $aa $7f

    rst $20                                       ; $45d5: $e7
    jp $ef03                                      ; $45d6: $c3 $03 $ef


    ld h, a                                       ; $45d9: $67
    ld h, c                                       ; $45da: $61
    pop hl                                        ; $45db: $e1
    rst $30                                       ; $45dc: $f7
    jp nc, Jump_000_0005                          ; $45dd: $d2 $05 $00

    sbc [hl]                                      ; $45e0: $9e
    rlca                                          ; $45e1: $07

Call_05b_45e2:
    inc sp                                        ; $45e2: $33
    inc d                                         ; $45e3: $14
    sub [hl]                                      ; $45e4: $96
    ld a, [hl]                                    ; $45e5: $7e
    db $eb                                        ; $45e6: $eb
    add l                                         ; $45e7: $85
    rst $20                                       ; $45e8: $e7
    adc h                                         ; $45e9: $8c
    ld d, [hl]                                    ; $45ea: $56
    rrca                                          ; $45eb: $0f
    sub [hl]                                      ; $45ec: $96
    ld a, [hl]                                    ; $45ed: $7e
    jp hl                                         ; $45ee: $e9


    ld [hl], b                                    ; $45ef: $70
    ld h, l                                       ; $45f0: $65
    add hl, hl                                    ; $45f1: $29
    ld c, l                                       ; $45f2: $4d
    ld [$a8ad], a                                 ; $45f3: $ea $ad $a8
    ld c, e                                       ; $45f6: $4b
    ld c, $28                                     ; $45f7: $0e $28
    ld l, e                                       ; $45f9: $6b
    jp nc, Jump_000_065c                          ; $45fa: $d2 $5c $06

    rst $38                                       ; $45fd: $ff
    db $db                                        ; $45fe: $db
    ld h, $e5                                     ; $45ff: $26 $e5
    db $10                                        ; $4601: $10
    cp e                                          ; $4602: $bb
    add e                                         ; $4603: $83
    ld e, l                                       ; $4604: $5d
    nop                                           ; $4605: $00
    sbc h                                         ; $4606: $9c
    cp e                                          ; $4607: $bb
    ld b, l                                       ; $4608: $45
    jp nz, Jump_05b_5bfc                          ; $4609: $c2 $fc $5b

    sbc b                                         ; $460c: $98
    jp nz, $b611                                  ; $460d: $c2 $11 $b6

    ld c, c                                       ; $4610: $49
    add hl, sp                                    ; $4611: $39
    call nz, $60ee                                ; $4612: $c4 $ee $60
    sub a                                         ; $4615: $97
    inc e                                         ; $4616: $1c
    ld h, h                                       ; $4617: $64
    xor l                                         ; $4618: $ad
    inc e                                         ; $4619: $1c
    or a                                          ; $461a: $b7
    push hl                                       ; $461b: $e5
    db $e3                                        ; $461c: $e3
    ld e, d                                       ; $461d: $5a
    adc a                                         ; $461e: $8f
    ld d, a                                       ; $461f: $57
    ld a, [hl-]                                   ; $4620: $3a
    or b                                          ; $4621: $b0
    ld [hl+], a                                   ; $4622: $22
    xor h                                         ; $4623: $ac
    cp a                                          ; $4624: $bf
    or $02                                        ; $4625: $f6 $02
    sbc h                                         ; $4627: $9c
    cp a                                          ; $4628: $bf
    and l                                         ; $4629: $a5
    ld a, [bc]                                    ; $462a: $0a
    call $39df                                    ; $462b: $cd $df $39
    sub a                                         ; $462e: $97
    ld e, e                                       ; $462f: $5b
    inc e                                         ; $4630: $1c
    daa                                           ; $4631: $27
    ld [$2eba], a                                 ; $4632: $ea $ba $2e
    db $fd                                        ; $4635: $fd
    ld h, $c5                                     ; $4636: $26 $c5
    di                                            ; $4638: $f3
    adc h                                         ; $4639: $8c
    ld h, l                                       ; $463a: $65
    sub a                                         ; $463b: $97
    inc a                                         ; $463c: $3c
    ld e, $e3                                     ; $463d: $1e $e3
    ld l, h                                       ; $463f: $6c
    dec h                                         ; $4640: $25
    dec d                                         ; $4641: $15
    db $dd                                        ; $4642: $dd
    inc h                                         ; $4643: $24
    inc a                                         ; $4644: $3c
    ld e, e                                       ; $4645: $5b
    adc d                                         ; $4646: $8a
    or d                                          ; $4647: $b2
    cp l                                          ; $4648: $bd
    ld l, a                                       ; $4649: $6f
    jp c, $ba8a                                   ; $464a: $da $8a $ba

    nop                                           ; $464d: $00
    ret nc                                        ; $464e: $d0

    sbc e                                         ; $464f: $9b
    inc d                                         ; $4650: $14
    rst $08                                       ; $4651: $cf
    inc sp                                        ; $4652: $33
    sub [hl]                                      ; $4653: $96
    add hl, hl                                    ; $4654: $29
    jp nc, $455e                                  ; $4655: $d2 $5e $45

    reti                                          ; $4658: $d9


    sub [hl]                                      ; $4659: $96
    ldh [$97], a                                  ; $465a: $e0 $97
    db $fd                                        ; $465c: $fd
    jp z, $9b76                                   ; $465d: $ca $76 $9b

    inc d                                         ; $4660: $14
    ld l, h                                       ; $4661: $6c
    dec sp                                        ; $4662: $3b
    ld e, e                                       ; $4663: $5b
    di                                            ; $4664: $f3
    rst $38                                       ; $4665: $ff
    call z, $c2ad                                 ; $4666: $cc $ad $c2
    cp d                                          ; $4669: $ba
    nop                                           ; $466a: $00
    ret nc                                        ; $466b: $d0

    dec sp                                        ; $466c: $3b
    cp c                                          ; $466d: $b9
    call nc, $16b8                                ; $466e: $d4 $b8 $16
    db $d3                                        ; $4671: $d3
    ld d, [hl]                                    ; $4672: $56
    dec a                                         ; $4673: $3d
    adc $19                                       ; $4674: $ce $19
    dec l                                         ; $4676: $2d
    ei                                            ; $4677: $fb
    rst $10                                       ; $4678: $d7
    cp l                                          ; $4679: $bd
    ld c, l                                       ; $467a: $4d
    ld d, h                                       ; $467b: $54
    ld d, b                                       ; $467c: $50
    nop                                           ; $467d: $00
    ld c, $30                                     ; $467e: $0e $30
    xor c                                         ; $4680: $a9
    adc c                                         ; $4681: $89
    ld [hl], $5f                                  ; $4682: $36 $5f
    ld b, l                                       ; $4684: $45
    ld e, c                                       ; $4685: $59
    ld d, e                                       ; $4686: $53
    xor e                                         ; $4687: $ab
    scf                                           ; $4688: $37
    sbc d                                         ; $4689: $9a
    ld [hl], d                                    ; $468a: $72
    ld a, [hl+]                                   ; $468b: $2a
    push de                                       ; $468c: $d5
    ld l, [hl]                                    ; $468d: $6e
    ret                                           ; $468e: $c9


    rst $38                                       ; $468f: $ff
    inc bc                                        ; $4690: $03
    ld h, e                                       ; $4691: $63
    add hl, hl                                    ; $4692: $29
    ld h, e                                       ; $4693: $63
    dec e                                         ; $4694: $1d
    ld l, e                                       ; $4695: $6b
    ld c, l                                       ; $4696: $4d
    ld c, c                                       ; $4697: $49
    ld sp, hl                                     ; $4698: $f9
    ld h, e                                       ; $4699: $63
    db $f4                                        ; $469a: $f4
    or e                                          ; $469b: $b3
    db $f4                                        ; $469c: $f4
    ld c, e                                       ; $469d: $4b
    ld [hl], e                                    ; $469e: $73
    ld a, e                                       ; $469f: $7b
    add $bd                                       ; $46a0: $c6 $bd
    dec d                                         ; $46a2: $15
    dec h                                         ; $46a3: $25
    dec de                                        ; $46a4: $1b
    ldh a, [rNR23]                                ; $46a5: $f0 $18
    or d                                          ; $46a7: $b2
    xor l                                         ; $46a8: $ad
    ld [hl], c                                    ; $46a9: $71
    ld a, [$3f95]                                 ; $46aa: $fa $95 $3f
    cp e                                          ; $46ad: $bb
    rst $38                                       ; $46ae: $ff
    ld c, e                                       ; $46af: $4b
    ld l, c                                       ; $46b0: $69
    sub [hl]                                      ; $46b1: $96
    ld l, a                                       ; $46b2: $6f
    ld e, l                                       ; $46b3: $5d
    ld [c], a                                     ; $46b4: $e2
    call c, Call_000_126d                         ; $46b5: $dc $6d $12
    sub [hl]                                      ; $46b8: $96
    jp nc, $efe1                                  ; $46b9: $d2 $e1 $ef

    xor e                                         ; $46bc: $ab
    ld b, a                                       ; $46bd: $47
    push af                                       ; $46be: $f5
    adc $1f                                       ; $46bf: $ce $1f
    or [hl]                                       ; $46c1: $b6
    db $d3                                        ; $46c2: $d3
    or $02                                        ; $46c3: $f6 $02
    ld a, h                                       ; $46c5: $7c

jr_05b_46c6:
    and e                                         ; $46c6: $a3
    ei                                            ; $46c7: $fb
    xor a                                         ; $46c8: $af
    db $eb                                        ; $46c9: $eb
    ld [bc], a                                    ; $46ca: $02
    inc e                                         ; $46cb: $1c
    ld d, l                                       ; $46cc: $55
    ld sp, $856d                                  ; $46cd: $31 $6d $85
    ld h, a                                       ; $46d0: $67
    ld [hl+], a                                   ; $46d1: $22
    ld d, [hl]                                    ; $46d2: $56
    ld d, d                                       ; $46d3: $52
    inc a                                         ; $46d4: $3c
    pop bc                                        ; $46d5: $c1
    xor $c5                                       ; $46d6: $ee $c5
    adc d                                         ; $46d8: $8a
    dec bc                                        ; $46d9: $0b
    nop                                           ; $46da: $00
    db $fc                                        ; $46db: $fc
    cp b                                          ; $46dc: $b8
    add hl, sp                                    ; $46dd: $39
    halt                                          ; $46de: $76
    ld a, a                                       ; $46df: $7f
    cp $d6                                        ; $46e0: $fe $d6
    xor e                                         ; $46e2: $ab
    jr z, jr_05b_46c6                             ; $46e3: $28 $e1

    add hl, bc                                    ; $46e5: $09
    db $fd                                        ; $46e6: $fd
    add hl, sp                                    ; $46e7: $39
    pop bc                                        ; $46e8: $c1
    ld [de], a                                    ; $46e9: $12
    jp c, $d28a                                   ; $46ea: $da $8a $d2

    cp l                                          ; $46ed: $bd
    rst $20                                       ; $46ee: $e7
    call nz, $2a24                                ; $46ef: $c4 $24 $2a
    ld h, l                                       ; $46f2: $65
    xor h                                         ; $46f3: $ac
    ld h, e                                       ; $46f4: $63
    rst $08                                       ; $46f5: $cf
    adc c                                         ; $46f6: $89
    dec bc                                        ; $46f7: $0b
    nop                                           ; $46f8: $00
    ld a, h                                       ; $46f9: $7c
    db $db                                        ; $46fa: $db
    sub e                                         ; $46fb: $93
    call nz, $a606                                ; $46fc: $c4 $06 $a6
    ret c                                         ; $46ff: $d8

    ld h, e                                       ; $4700: $63
    ld h, d                                       ; $4701: $62
    dec bc                                        ; $4702: $0b
    ld c, e                                       ; $4703: $4b
    ld a, b                                       ; $4704: $78
    ld l, a                                       ; $4705: $6f
    adc a                                         ; $4706: $8f
    or l                                          ; $4707: $b5
    jr z, jr_05b_471f                             ; $4708: $28 $15

    ld c, l                                       ; $470a: $4d
    xor [hl]                                      ; $470b: $ae
    or l                                          ; $470c: $b5
    dec h                                         ; $470d: $25
    jr z, jr_05b_4710                             ; $470e: $28 $00

jr_05b_4710:
    ld a, h                                       ; $4710: $7c
    db $e3                                        ; $4711: $e3
    cp [hl]                                       ; $4712: $be
    ld d, a                                       ; $4713: $57
    rst $20                                       ; $4714: $e7
    or a                                          ; $4715: $b7
    dec de                                        ; $4716: $1b
    ld d, a                                       ; $4717: $57
    ld b, l                                       ; $4718: $45
    db $db                                        ; $4719: $db
    and h                                         ; $471a: $a4
    adc h                                         ; $471b: $8c
    ld [hl], l                                    ; $471c: $75
    rlca                                          ; $471d: $07
    ld c, h                                       ; $471e: $4c

jr_05b_471f:
    sbc d                                         ; $471f: $9a
    or c                                          ; $4720: $b1
    db $dd                                        ; $4721: $dd
    cp b                                          ; $4722: $b8
    jp hl                                         ; $4723: $e9


    sub $05                                       ; $4724: $d6 $05
    nop                                           ; $4726: $00
    ld e, $8f                                     ; $4727: $1e $8f
    ld [hl], c                                    ; $4729: $71
    and d                                         ; $472a: $a2
    inc d                                         ; $472b: $14
    db $dd                                        ; $472c: $dd
    and h                                         ; $472d: $a4
    ld h, $3a                                     ; $472e: $26 $3a
    add a                                         ; $4730: $87
    add h                                         ; $4731: $84
    and l                                         ; $4732: $a5
    adc d                                         ; $4733: $8a
    inc bc                                        ; $4734: $03
    sub e                                         ; $4735: $93
    add d                                         ; $4736: $82
    xor l                                         ; $4737: $ad
    ret c                                         ; $4738: $d8

    ret nz                                        ; $4739: $c0

    inc d                                         ; $473a: $14
    ld a, e                                       ; $473b: $7b
    call z, $9f89                                 ; $473c: $cc $89 $9f
    inc d                                         ; $473f: $14
    adc h                                         ; $4740: $8c
    ld l, e                                       ; $4741: $6b
    or $c2                                        ; $4742: $f6 $c2
    jp nc, $c56f                                  ; $4744: $d2 $6f $c5

    or h                                          ; $4747: $b4
    db $fd                                        ; $4748: $fd
    and h                                         ; $4749: $a4
    xor $d1                                       ; $474a: $ee $d1
    db $fd                                        ; $474c: $fd
    adc d                                         ; $474d: $8a
    ld [de], a                                    ; $474e: $12
    sbc [hl]                                      ; $474f: $9e
    ret nc                                        ; $4750: $d0

    and [hl]                                      ; $4751: $a6
    ld e, a                                       ; $4752: $5f
    jp z, $dd9f                                   ; $4753: $ca $9f $dd

    ld a, a                                       ; $4756: $7f
    ld bc, $c70e                                  ; $4757: $01 $0e $c7
    add sp, $67                                   ; $475a: $e8 $67
    jp hl                                         ; $475c: $e9


    sbc e                                         ; $475d: $9b
    cp l                                          ; $475e: $bd
    or b                                          ; $475f: $b0
    sub h                                         ; $4760: $94
    ccf                                           ; $4761: $3f
    cp e                                          ; $4762: $bb
    rst $18                                       ; $4763: $df
    ld a, d                                       ; $4764: $7a
    sub l                                         ; $4765: $95
    or c                                          ; $4766: $b1
    xor $80                                       ; $4767: $ee $80
    jp hl                                         ; $4769: $e9


    ld [bc], a                                    ; $476a: $02
    inc a                                         ; $476b: $3c
    or c                                          ; $476c: $b1
    ld c, c                                       ; $476d: $49
    add hl, sp                                    ; $476e: $39
    adc b                                         ; $476f: $88
    ld a, h                                       ; $4770: $7c
    rst $08                                       ; $4771: $cf
    adc c                                         ; $4772: $89
    dec bc                                        ; $4773: $0b
    nop                                           ; $4774: $00
    inc a                                         ; $4775: $3c
    sbc c                                         ; $4776: $99
    ld [hl], c                                    ; $4777: $71
    adc e                                         ; $4778: $8b
    add a                                         ; $4779: $87
    ld c, d                                       ; $477a: $4a
    dec [hl]                                      ; $477b: $35
    and $1c                                       ; $477c: $e6 $1c
    db $e3                                        ; $477e: $e3
    ld [bc], a                                    ; $477f: $02
    ret nc                                        ; $4780: $d0

    dec sp                                        ; $4781: $3b
    ld c, c                                       ; $4782: $49
    dec [hl]                                      ; $4783: $35
    and $48                                       ; $4784: $e6 $48
    jp z, $8b76                                   ; $4786: $ca $76 $8b

    ld d, d                                       ; $4789: $52
    ld a, [hl+]                                   ; $478a: $2a
    and l                                         ; $478b: $a5
    ld d, h                                       ; $478c: $54
    or d                                          ; $478d: $b2
    ld e, b                                       ; $478e: $58
    ld b, e                                       ; $478f: $43
    inc d                                         ; $4790: $14
    db $fc                                        ; $4791: $fc
    sbc d                                         ; $4792: $9a
    rst $18                                       ; $4793: $df
    add [hl]                                      ; $4794: $86
    xor b                                         ; $4795: $a8
    ld a, e                                       ; $4796: $7b
    ld l, e                                       ; $4797: $6b
    db $fc                                        ; $4798: $fc
    dec b                                         ; $4799: $05
    nop                                           ; $479a: $00
    ret nc                                        ; $479b: $d0

    dec hl                                        ; $479c: $2b
    rlca                                          ; $479d: $07
    sub c                                         ; $479e: $91
    rst $28                                       ; $479f: $ef
    add hl, sp                                    ; $47a0: $39
    sub c                                         ; $47a1: $91
    ld d, h                                       ; $47a2: $54
    cp $5f                                        ; $47a3: $fe $5f
    ld a, [c]                                     ; $47a5: $f2
    add hl, de                                    ; $47a6: $19
    ld h, $18                                     ; $47a7: $26 $18
    ld h, [hl]                                    ; $47a9: $66
    ret z                                         ; $47aa: $c8

    ld d, [hl]                                    ; $47ab: $56
    xor $6c                                       ; $47ac: $ee $6c
    sub l                                         ; $47ae: $95
    ld [hl], c                                    ; $47af: $71
    inc bc                                        ; $47b0: $03
    ld e, [hl]                                    ; $47b1: $5e
    daa                                           ; $47b2: $27
    sbc d                                         ; $47b3: $9a
    ld l, b                                       ; $47b4: $68
    and d                                         ; $47b5: $a2
    adc c                                         ; $47b6: $89
    ld h, $9a                                     ; $47b7: $26 $9a
    ld l, b                                       ; $47b9: $68
    and d                                         ; $47ba: $a2
    rst $10                                       ; $47bb: $d7
    ld [hl], l                                    ; $47bc: $75
    ld e, l                                       ; $47bd: $5d
    rla                                           ; $47be: $17
    nop                                           ; $47bf: $00
    ld c, $b7                                     ; $47c0: $0e $b7
    ld l, c                                       ; $47c2: $69
    ld l, l                                       ; $47c3: $6d
    daa                                           ; $47c4: $27
    sub a                                         ; $47c5: $97
    xor $58                                       ; $47c6: $ee $58
    ld [$d295], sp                                ; $47c8: $08 $95 $d2
    ld h, b                                       ; $47cb: $60
    call nc, $244d                                ; $47cc: $d4 $4d $24
    dec bc                                        ; $47cf: $0b
    jr z, jr_05b_47d2                             ; $47d0: $28 $00

jr_05b_47d2:
    ret nc                                        ; $47d2: $d0

    and l                                         ; $47d3: $a5
    sbc $80                                       ; $47d4: $de $80
    ld d, b                                       ; $47d6: $50
    ld d, d                                       ; $47d7: $52
    sbc [hl]                                      ; $47d8: $9e
    ld [hl], e                                    ; $47d9: $73
    ld a, b                                       ; $47da: $78
    ret z                                         ; $47db: $c8

    res 4, c                                      ; $47dc: $cb $a1
    rst $38                                       ; $47de: $ff
    inc a                                         ; $47df: $3c

jr_05b_47e0:
    or [hl]                                       ; $47e0: $b6
    ld e, a                                       ; $47e1: $5f
    ld bc, $5309                                  ; $47e2: $01 $09 $53
    ld a, [de]                                    ; $47e5: $1a
    adc h                                         ; $47e6: $8c
    cp d                                          ; $47e7: $ba
    adc c                                         ; $47e8: $89
    ld l, $79                                     ; $47e9: $2e $79
    add h                                         ; $47eb: $84
    ld h, $db                                     ; $47ec: $26 $db
    ld h, $65                                     ; $47ee: $26 $65
    ld l, h                                       ; $47f0: $6c
    cp e                                          ; $47f1: $bb
    adc c                                         ; $47f2: $89
    call nz, Call_05b_5f3e                        ; $47f3: $c4 $3e $5f
    db $eb                                        ; $47f6: $eb
    jr c, jr_05b_47e0                             ; $47f7: $38 $e7

    sub e                                         ; $47f9: $93
    sbc d                                         ; $47fa: $9a
    ld h, h                                       ; $47fb: $64
    xor e                                         ; $47fc: $ab
    inc e                                         ; $47fd: $1c
    ld d, a                                       ; $47fe: $57
    ld [hl], a                                    ; $47ff: $77
    ld d, h                                       ; $4800: $54
    sub c                                         ; $4801: $91
    ld c, $e5                                     ; $4802: $0e $e5
    db $db                                        ; $4804: $db
    ld d, $17                                     ; $4805: $16 $17
    nop                                           ; $4807: $00
    ld e, [hl]                                    ; $4808: $5e
    daa                                           ; $4809: $27
    sbc d                                         ; $480a: $9a
    ld l, b                                       ; $480b: $68
    and d                                         ; $480c: $a2
    adc c                                         ; $480d: $89
    ld h, $7a                                     ; $480e: $26 $7a
    ld e, l                                       ; $4810: $5d
    rst $10                                       ; $4811: $d7
    ld [hl], l                                    ; $4812: $75
    ld e, l                                       ; $4813: $5d
    ldh a, [rOCPD]                                ; $4814: $f0 $6b
    adc [hl]                                      ; $4816: $8e
    sub d                                         ; $4817: $92
    di                                            ; $4818: $f3
    xor [hl]                                      ; $4819: $ae
    add hl, sp                                    ; $481a: $39
    rst $20                                       ; $481b: $e7
    sbc h                                         ; $481c: $9c
    inc sp                                        ; $481d: $33
    ld h, a                                       ; $481e: $67
    call z, Call_05b_43a1                         ; $481f: $cc $a1 $43
    ld l, c                                       ; $4822: $69
    call nc, $a0ea                                ; $4823: $d4 $ea $a0
    rst $28                                       ; $4826: $ef
    adc a                                         ; $4827: $8f
    rst $38                                       ; $4828: $ff
    ld c, d                                       ; $4829: $4a
    ld [$3d8e], a                                 ; $482a: $ea $8e $3d
    add a                                         ; $482d: $87
    add h                                         ; $482e: $84
    ld h, a                                       ; $482f: $67
    xor a                                         ; $4830: $af
    db $eb                                        ; $4831: $eb
    ld [de], a                                    ; $4832: $12
    rst $08                                       ; $4833: $cf
    inc sp                                        ; $4834: $33
    sub [hl]                                      ; $4835: $96
    ret                                           ; $4836: $c9


    ld hl, $0776                                  ; $4837: $21 $76 $07
    db $e3                                        ; $483a: $e3
    ld d, $cf                                     ; $483b: $16 $cf
    rrca                                          ; $483d: $0f
    sbc e                                         ; $483e: $9b
    xor a                                         ; $483f: $af
    and d                                         ; $4840: $a2
    inc d                                         ; $4841: $14
    ld b, d                                       ; $4842: $42
    or d                                          ; $4843: $b2
    xor l                                         ; $4844: $ad
    pop de                                        ; $4845: $d1
    ld l, d                                       ; $4846: $6a
    and d                                         ; $4847: $a2
    ld [hl], e                                    ; $4848: $73
    add sp, $12                                   ; $4849: $e8 $12
    rst $18                                       ; $484b: $df
    ld e, b                                       ; $484c: $58
    db $eb                                        ; $484d: $eb
    cpl                                           ; $484e: $2f
    xor l                                         ; $484f: $ad
    sub c                                         ; $4850: $91
    xor l                                         ; $4851: $ad
    ld [hl], b                                    ; $4852: $70
    ld h, a                                       ; $4853: $67
    ld l, h                                       ; $4854: $6c
    add hl, hl                                    ; $4855: $29
    call $adf2                                    ; $4856: $cd $f2 $ad
    dec bc                                        ; $4859: $0b
    nop                                           ; $485a: $00
    cp h                                          ; $485b: $bc
    cp e                                          ; $485c: $bb
    adc l                                         ; $485d: $8d
    sub [hl]                                      ; $485e: $96
    sub h                                         ; $485f: $94
    rst $08                                       ; $4860: $cf
    jr nc, @-$3d                                  ; $4861: $30 $c1

    jr nc, jr_05b_48a8                            ; $4863: $30 $43

    or [hl]                                       ; $4865: $b6
    ld [hl], d                                    ; $4866: $72
    ld h, a                                       ; $4867: $67
    xor e                                         ; $4868: $ab
    db $ec                                        ; $4869: $ec
    ld [bc], a                                    ; $486a: $02
    cp h                                          ; $486b: $bc
    pop bc                                        ; $486c: $c1
    adc b                                         ; $486d: $88
    ld a, d                                       ; $486e: $7a
    ld [hl], d                                    ; $486f: $72
    ret                                           ; $4870: $c9


    or [hl]                                       ; $4871: $b6
    ld c, b                                       ; $4872: $48
    ld [hl], e                                    ; $4873: $73
    adc h                                         ; $4874: $8c
    inc sp                                        ; $4875: $33
    sub $f6                                       ; $4876: $d6 $f6
    ld d, l                                       ; $4878: $55
    cp b                                          ; $4879: $b8
    cp l                                          ; $487a: $bd
    cpl                                           ; $487b: $2f
    ld hl, sp-$6b                                 ; $487c: $f8 $95
    rst $00                                       ; $487e: $c7
    ld c, c                                       ; $487f: $49
    ld de, $287e                                  ; $4880: $11 $7e $28
    ld a, c                                       ; $4883: $79
    ld l, b                                       ; $4884: $68
    ld h, h                                       ; $4885: $64
    xor e                                         ; $4886: $ab
    add hl, de                                    ; $4887: $19
    adc h                                         ; $4888: $8c
    ld l, h                                       ; $4889: $6c
    ld d, l                                       ; $488a: $55
    cp e                                          ; $488b: $bb
    ld c, l                                       ; $488c: $4d
    sub a                                         ; $488d: $97
    call c, $c2ae                                 ; $488e: $dc $ae $c2
    dec l                                         ; $4891: $2d
    and l                                         ; $4892: $a5
    ld d, h                                       ; $4893: $54
    ld [hl], c                                    ; $4894: $71
    ld c, [hl]                                    ; $4895: $4e
    ld l, b                                       ; $4896: $68
    ld b, $63                                     ; $4897: $06 $63
    ld e, a                                       ; $4899: $5f
    ld [c], a                                     ; $489a: $e2
    ld e, l                                       ; $489b: $5d
    ld [hl], $c3                                  ; $489c: $36 $c3
    sbc c                                         ; $489e: $99
    adc c                                         ; $489f: $89
    xor h                                         ; $48a0: $ac
    or a                                          ; $48a1: $b7
    ld l, $f1                                     ; $48a2: $2e $f1
    ld d, b                                       ; $48a4: $50
    ret                                           ; $48a5: $c9


    rst $18                                       ; $48a6: $df
    ld e, [hl]                                    ; $48a7: $5e

jr_05b_48a8:
    reti                                          ; $48a8: $d9


    ld [hl], $e9                                  ; $48a9: $36 $e9
    ld [hl], a                                    ; $48ab: $77
    cp [hl]                                       ; $48ac: $be
    ld l, h                                       ; $48ad: $6c
    inc c                                         ; $48ae: $0c
    ld d, $66                                     ; $48af: $16 $66
    xor a                                         ; $48b1: $af
    ld h, a                                       ; $48b2: $67
    add hl, sp                                    ; $48b3: $39
    sbc d                                         ; $48b4: $9a
    db $fd                                        ; $48b5: $fd
    dec h                                         ; $48b6: $25
    cp [hl]                                       ; $48b7: $be
    ld l, l                                       ; $48b8: $6d
    ld c, d                                       ; $48b9: $4a
    xor c                                         ; $48ba: $a9
    ld h, h                                       ; $48bb: $64
    ld a, e                                       ; $48bc: $7b
    ld c, [hl]                                    ; $48bd: $4e
    call z, $dd2d                                 ; $48be: $cc $2d $dd
    sbc a                                         ; $48c1: $9f
    ld [hl], $ae                                  ; $48c2: $36 $ae
    ld a, [$4ffd]                                 ; $48c4: $fa $fd $4f
    ld a, e                                       ; $48c7: $7b
    db $fc                                        ; $48c8: $fc
    ld [hl], l                                    ; $48c9: $75
    ld e, l                                       ; $48ca: $5d
    nop                                           ; $48cb: $00
    sbc [hl]                                      ; $48cc: $9e
    rst $28                                       ; $48cd: $ef
    ld e, d                                       ; $48ce: $5a
    db $e3                                        ; $48cf: $e3
    inc e                                         ; $48d0: $1c
    ldh a, [$9f]                                  ; $48d1: $f0 $9f
    di                                            ; $48d3: $f3
    add d                                         ; $48d4: $82
    ld [hl], c                                    ; $48d5: $71
    ld c, $65                                     ; $48d6: $0e $65
    ld l, h                                       ; $48d8: $6c
    cp e                                          ; $48d9: $bb
    ld d, a                                       ; $48da: $57
    ld [hl], a                                    ; $48db: $77
    sub [hl]                                      ; $48dc: $96
    ld b, c                                       ; $48dd: $41
    ld c, b                                       ; $48de: $48
    rst $30                                       ; $48df: $f7
    sub $38                                       ; $48e0: $d6 $38
    daa                                           ; $48e2: $27
    ld h, h                                       ; $48e3: $64
    ld [hl], c                                    ; $48e4: $71
    adc $af                                       ; $48e5: $ce $af
    push af                                       ; $48e7: $f5
    ld l, e                                       ; $48e8: $6b
    ld [hl+], a                                   ; $48e9: $22
    db $eb                                        ; $48ea: $eb
    sbc $bf                                       ; $48eb: $de $bf
    nop                                           ; $48ed: $00
    ld e, $a6                                     ; $48ee: $1e $a6
    ld e, a                                       ; $48f0: $5f
    inc de                                        ; $48f1: $13
    push de                                       ; $48f2: $d5
    ret c                                         ; $48f3: $d8

    db $fd                                        ; $48f4: $fd
    call c, Call_05b_7412                         ; $48f5: $dc $12 $74
    ld a, [hl-]                                   ; $48f8: $3a
    ld c, c                                       ; $48f9: $49
    ld d, $c2                                     ; $48fa: $16 $c2
    or e                                          ; $48fc: $b3
    add d                                         ; $48fd: $82
    rst $00                                       ; $48fe: $c7
    ld h, b                                       ; $48ff: $60
    dec hl                                        ; $4900: $2b
    dec bc                                        ; $4901: $0b
    reti                                          ; $4902: $d9


    rst $18                                       ; $4903: $df
    xor a                                         ; $4904: $af
    adc c                                         ; $4905: $89
    xor h                                         ; $4906: $ac
    ld a, e                                       ; $4907: $7b
    cpl                                           ; $4908: $2f
    ld a, c                                       ; $4909: $79
    adc [hl]                                      ; $490a: $8e
    ld l, e                                       ; $490b: $6b
    ld e, e                                       ; $490c: $5b
    jp z, $dd9f                                   ; $490d: $ca $9f $dd

    ld l, e                                       ; $4910: $6b
    dec a                                         ; $4911: $3d
    ld e, [hl]                                    ; $4912: $5e
    ld l, a                                       ; $4913: $6f
    ei                                            ; $4914: $fb
    sub $9f                                       ; $4915: $d6 $9f
    inc d                                         ; $4917: $14
    adc h                                         ; $4918: $8c
    and [hl]                                      ; $4919: $a6
    and d                                         ; $491a: $a2
    cp c                                          ; $491b: $b9
    or [hl]                                       ; $491c: $b6
    dec h                                         ; $491d: $25
    adc e                                         ; $491e: $8b
    cp d                                          ; $491f: $ba
    nop                                           ; $4920: $00
    inc a                                         ; $4921: $3c
    ld a, a                                       ; $4922: $7f
    add $f7                                       ; $4923: $c6 $f7
    call nz, $a2a4                                ; $4925: $c4 $a4 $a2
    sbc e                                         ; $4928: $9b
    sub h                                         ; $4929: $94
    ld a, [hl]                                    ; $492a: $7e
    sub h                                         ; $492b: $94
    inc l                                         ; $492c: $2c
    ld c, d                                       ; $492d: $4a
    or [hl]                                       ; $492e: $b6
    dec [hl]                                      ; $492f: $35
    adc $09                                       ; $4930: $ce $09
    jr z, jr_05b_4934                             ; $4932: $28 $00

jr_05b_4934:
    ld e, $e3                                     ; $4934: $1e $e3
    ld e, d                                       ; $4936: $5a
    ld a, a                                       ; $4937: $7f
    cp $7a                                        ; $4938: $fe $7a
    ld hl, sp+$7b                                 ; $493a: $f8 $7b
    ret c                                         ; $493c: $d8

    dec h                                         ; $493d: $25
    ld a, [hl]                                    ; $493e: $7e
    ld [hl-], a                                   ; $493f: $32
    inc hl                                        ; $4940: $23
    push hl                                       ; $4941: $e5
    ld [hl], h                                    ; $4942: $74
    sub $8c                                       ; $4943: $d6 $8c
    inc d                                         ; $4945: $14
    add hl, hl                                    ; $4946: $29
    ld h, h                                       ; $4947: $64
    ld a, e                                       ; $4948: $7b
    ld l, [hl]                                    ; $4949: $6e
    add hl, hl                                    ; $494a: $29
    call Call_000_2df2                            ; $494b: $cd $f2 $2d
    ld sp, hl                                     ; $494e: $f9
    cp b                                          ; $494f: $b8
    inc sp                                        ; $4950: $33
    ld a, [$f9e5]                                 ; $4951: $fa $e5 $f9
    xor [hl]                                      ; $4954: $ae
    dec [hl]                                      ; $4955: $35
    adc $01                                       ; $4956: $ce $01
    rst $38                                       ; $4958: $ff
    add hl, sp                                    ; $4959: $39
    ld [hl], c                                    ; $495a: $71
    ret                                           ; $495b: $c9


    db $ed                                        ; $495c: $ed
    xor d                                         ; $495d: $aa
    ld d, a                                       ; $495e: $57
    db $d3                                        ; $495f: $d3
    ld c, l                                       ; $4960: $4d
    ld a, [hl-]                                   ; $4961: $3a
    jp $f3ff                                      ; $4962: $c3 $ff $f3


    cp [hl]                                       ; $4965: $be
    ccf                                           ; $4966: $3f
    call nz, Call_000_09f3                        ; $4967: $c4 $f3 $09
    or c                                          ; $496a: $b1
    add l                                         ; $496b: $85
    db $ec                                        ; $496c: $ec
    add hl, sp                                    ; $496d: $39
    sub c                                         ; $496e: $91
    ld d, h                                       ; $496f: $54
    db $ed                                        ; $4970: $ed
    sub [hl]                                      ; $4971: $96
    ld d, d                                       ; $4972: $52
    ld a, [hl+]                                   ; $4973: $2a
    reti                                          ; $4974: $d9


    ld a, a                                       ; $4975: $7f
    rst $30                                       ; $4976: $f7
    cp a                                          ; $4977: $bf
    ld l, h                                       ; $4978: $6c
    ld l, e                                       ; $4979: $6b
    or h                                          ; $497a: $b4
    db $fc                                        ; $497b: $fc
    ld h, b                                       ; $497c: $60
    ld a, e                                       ; $497d: $7b
    ld c, [hl]                                    ; $497e: $4e
    ld e, h                                       ; $497f: $5c
    ld [c], a                                     ; $4980: $e2
    db $db                                        ; $4981: $db
    ld c, c                                       ; $4982: $49
    or d                                          ; $4983: $b2
    xor l                                         ; $4984: $ad
    ld d, c                                       ; $4985: $51
    xor d                                         ; $4986: $aa
    cp l                                          ; $4987: $bd
    jp Jump_05b_7856                              ; $4988: $c3 $56 $78


    halt                                          ; $498b: $76
    cp $17                                        ; $498c: $fe $17
    inc d                                         ; $498e: $14
    nop                                           ; $498f: $00
    inc a                                         ; $4990: $3c
    rst $08                                       ; $4991: $cf
    ld e, b                                       ; $4992: $58
    ld h, $87                                     ; $4993: $26 $87
    ret c                                         ; $4995: $d8

    dec e                                         ; $4996: $1d
    db $ec                                        ; $4997: $ec
    ld [bc], a                                    ; $4998: $02
    ld l, [hl]                                    ; $4999: $6e
    ld l, a                                       ; $499a: $6f
    cp $a5                                        ; $499b: $fe $a5
    jp c, $a4ad                                   ; $499d: $da $ad $a4

    ld a, b                                       ; $49a0: $78
    sbc [hl]                                      ; $49a1: $9e
    or c                                          ; $49a2: $b1
    ld c, h                                       ; $49a3: $4c
    ld c, $b1                                     ; $49a4: $0e $b1
    dec sp                                        ; $49a6: $3b
    ret c                                         ; $49a7: $d8

    dec h                                         ; $49a8: $25
    cp [hl]                                       ; $49a9: $be
    rst $18                                       ; $49aa: $df
    ld e, d                                       ; $49ab: $5a
    ld d, h                                       ; $49ac: $54
    ld e, $3b                                     ; $49ad: $1e $3b
    daa                                           ; $49af: $27
    ld h, $e5                                     ; $49b0: $26 $e5
    adc a                                         ; $49b2: $8f
    ld [hl], h                                    ; $49b3: $74
    ld l, h                                       ; $49b4: $6c
    add hl, hl                                    ; $49b5: $29
    and l                                         ; $49b6: $a5
    adc d                                         ; $49b7: $8a
    jp nc, Jump_000_32fc                          ; $49b8: $d2 $fc $32

    ei                                            ; $49bb: $fb
    cpl                                           ; $49bc: $2f
    pop bc                                        ; $49bd: $c1
    ld h, e                                       ; $49be: $63
    or b                                          ; $49bf: $b0
    ld d, l                                       ; $49c0: $55
    ld a, [de]                                    ; $49c1: $1a
    dec a                                         ; $49c2: $3d
    ld d, a                                       ; $49c3: $57
    or [hl]                                       ; $49c4: $b6
    db $dd                                        ; $49c5: $dd
    ld d, c                                       ; $49c6: $51
    rla                                           ; $49c7: $17
    nop                                           ; $49c8: $00
    inc a                                         ; $49c9: $3c
    sbc a                                         ; $49ca: $9f
    db $10                                        ; $49cb: $10
    ld e, e                                       ; $49cc: $5b
    ld [$38b7], sp                                ; $49cd: $08 $b7 $38
    adc $d6                                       ; $49d0: $ce $d6
    call c, $b452                                 ; $49d2: $dc $52 $b4
    db $ed                                        ; $49d5: $ed
    ld c, l                                       ; $49d6: $4d
    ld h, [hl]                                    ; $49d7: $66
    inc h                                         ; $49d8: $24
    db $db                                        ; $49d9: $db
    ld a, [de]                                    ; $49da: $1a
    ld a, a                                       ; $49db: $7f
    ld bc, $c1fc                                  ; $49dc: $01 $fc $c1
    ld a, [c]                                     ; $49df: $f2
    ld c, b                                       ; $49e0: $48
    adc d                                         ; $49e1: $8a
    rst $20                                       ; $49e2: $e7
    add hl, de                                    ; $49e3: $19
    sra [hl]                                      ; $49e4: $cb $2e
    ld [hl], c                                    ; $49e6: $71
    sbc h                                         ; $49e7: $9c
    dec l                                         ; $49e8: $2d
    pop bc                                        ; $49e9: $c1
    jp $d15a                                      ; $49ea: $c3 $5a $d1


    cp l                                          ; $49ed: $bd
    scf                                           ; $49ee: $37
    sbc c                                         ; $49ef: $99
    sub c                                         ; $49f0: $91
    ld d, d                                       ; $49f1: $52
    ld h, d                                       ; $49f2: $62
    di                                            ; $49f3: $f3
    ld [hl], b                                    ; $49f4: $70
    ld d, l                                       ; $49f5: $55
    ld [hl], a                                    ; $49f6: $77
    ret nz                                        ; $49f7: $c0

    ld [hl], h                                    ; $49f8: $74
    ret                                           ; $49f9: $c9


    pop bc                                        ; $49fa: $c1
    xor $39                                       ; $49fb: $ee $39
    inc h                                         ; $49fd: $24
    inc l                                         ; $49fe: $2c
    call Call_05b_4e31                            ; $49ff: $cd $31 $4e
    call c, $cbf7                                 ; $4a02: $dc $f7 $cb
    rrca                                          ; $4a05: $0f
    inc hl                                        ; $4a06: $23
    dec [hl]                                      ; $4a07: $35
    sbc c                                         ; $4a08: $99
    sub c                                         ; $4a09: $91
    ret c                                         ; $4a0a: $d8

    rst $08                                       ; $4a0b: $cf
    xor b                                         ; $4a0c: $a8
    ld a, [de]                                    ; $4a0d: $1a
    db $d3                                        ; $4a0e: $d3
    jp nz, Jump_000_2fec                          ; $4a0f: $c2 $ec $2f

    nop                                           ; $4a12: $00
    ld c, $19                                     ; $4a13: $0e $19
    ld h, $18                                     ; $4a15: $26 $18
    ld h, [hl]                                    ; $4a17: $66
    ret z                                         ; $4a18: $c8

    ld d, [hl]                                    ; $4a19: $56
    xor $6c                                       ; $4a1a: $ee $6c
    sub l                                         ; $4a1c: $95
    ret                                           ; $4a1d: $c9


    rst $08                                       ; $4a1e: $cf
    ld [hl-], a                                   ; $4a1f: $32
    ld e, e                                       ; $4a20: $5b
    db $dd                                        ; $4a21: $dd

jr_05b_4a22:
    ld e, e                                       ; $4a22: $5b
    db $e3                                        ; $4a23: $e3
    push af                                       ; $4a24: $f5
    push de                                       ; $4a25: $d5
    ld a, a                                       ; $4a26: $7f
    rst $38                                       ; $4a27: $ff
    sub a                                         ; $4a28: $97
    sbc d                                         ; $4a29: $9a
    ld l, [hl]                                    ; $4a2a: $6e
    ld a, [hl+]                                   ; $4a2b: $2a
    sbc l                                         ; $4a2c: $9d
    pop hl                                        ; $4a2d: $e1
    rst $38                                       ; $4a2e: $ff
    ld a, c                                       ; $4a2f: $79
    ld a, a                                       ; $4a30: $7f
    sub h                                         ; $4a31: $94
    ld l, h                                       ; $4a32: $6c
    ld l, e                                       ; $4a33: $6b
    sbc h                                         ; $4a34: $9c
    inc de                                        ; $4a35: $13
    sub a                                         ; $4a36: $97

Call_05b_4a37:
    jr c, @+$50                                   ; $4a37: $38 $4e

    sub h                                         ; $4a39: $94
    xor $28                                       ; $4a3a: $ee $28
    inc [hl]                                      ; $4a3c: $34
    ld a, e                                       ; $4a3d: $7b
    ld a, c                                       ; $4a3e: $79
    cp [hl]                                       ; $4a3f: $be
    ld l, e                                       ; $4a40: $6b
    adc l                                         ; $4a41: $8d
    ld [hl], e                                    ; $4a42: $73

jr_05b_4a43:
    ret nz                                        ; $4a43: $c0

    ld a, a                                       ; $4a44: $7f
    ld c, [hl]                                    ; $4a45: $4e
    jr z, jr_05b_4a22                             ; $4a46: $28 $da

    or $26                                        ; $4a48: $f6 $26
    ld a, [hl+]                                   ; $4a4a: $2a
    push hl                                       ; $4a4b: $e5
    ld [hl], c                                    ; $4a4c: $71
    ld d, d                                       ; $4a4d: $52
    sbc h                                         ; $4a4e: $9c
    ret z                                         ; $4a4f: $c8

    cp d                                          ; $4a50: $ba
    rst $30                                       ; $4a51: $f7
    sub e                                         ; $4a52: $93
    add d                                         ; $4a53: $82
    ld [hl], c                                    ; $4a54: $71
    cp [hl]                                       ; $4a55: $be
    or b                                          ; $4a56: $b0
    ld h, h                                       ; $4a57: $64
    rst $38                                       ; $4a58: $ff
    db $dd                                        ; $4a59: $dd
    ld e, a                                       ; $4a5a: $5f
    and e                                         ; $4a5b: $a3
    dec [hl]                                      ; $4a5c: $35
    rst $00                                       ; $4a5d: $c7
    jr c, jr_05b_4a43                             ; $4a5e: $38 $e3

    or l                                          ; $4a60: $b5
    ld b, [hl]                                    ; $4a61: $46
    rst $20                                       ; $4a62: $e7
    ld b, h                                       ; $4a63: $44
    db $ed                                        ; $4a64: $ed
    dec b                                         ; $4a65: $05
    nop                                           ; $4a66: $00
    inc a                                         ; $4a67: $3c
    call nz, $e1e6                                ; $4a68: $c4 $e6 $e1
    xor d                                         ; $4a6b: $aa
    sbc $56                                       ; $4a6c: $de $56
    adc [hl]                                      ; $4a6e: $8e
    dec hl                                        ; $4a6f: $2b
    call nz, $ffee                                ; $4a70: $c4 $ee $ff
    ld c, e                                       ; $4a73: $4b
    ret nc                                        ; $4a74: $d0

    xor e                                         ; $4a75: $ab
    add hl, sp                                    ; $4a76: $39
    ld c, d                                       ; $4a77: $4a
    rst $30                                       ; $4a78: $f7
    rst $30                                       ; $4a79: $f7
    db $fc                                        ; $4a7a: $fc
    xor a                                         ; $4a7b: $af
    and h                                         ; $4a7c: $a4
    ld a, b                                       ; $4a7d: $78
    sbc [hl]                                      ; $4a7e: $9e
    or c                                          ; $4a7f: $b1
    adc h                                         ; $4a80: $8c
    dec de                                        ; $4a81: $1b
    nop                                           ; $4a82: $00
    ld a, h                                       ; $4a83: $7c
    ld e, e                                       ; $4a84: $5b
    inc h                                         ; $4a85: $24
    call nz, Call_000_38ee                        ; $4a86: $c4 $ee $38
    ld d, c                                       ; $4a89: $51

Jump_05b_4a8a:
    ld l, d                                       ; $4a8a: $6a
    and d                                         ; $4a8b: $a2
    ld [hl], e                                    ; $4a8c: $73
    add sp, $12                                   ; $4a8d: $e8 $12
    db $f4                                        ; $4a8f: $f4
    ld [$af1e], a                                 ; $4a90: $ea $1e $af
    ld a, [hl]                                    ; $4a93: $7e
    sub $1d                                       ; $4a94: $d6 $1d
    ld l, d                                       ; $4a96: $6a
    inc a                                         ; $4a97: $3c
    rst $20                                       ; $4a98: $e7
    rst $10                                       ; $4a99: $d7
    ld [hl+], a                                   ; $4a9a: $22
    ld c, d                                       ; $4a9b: $4a
    ld sp, hl                                     ; $4a9c: $f9
    ld l, a                                       ; $4a9d: $6f
    jp c, Jump_05b_7f38                           ; $4a9e: $da $38 $7f

    ld hl, sp-$02                                 ; $4aa1: $f8 $fe
    ld a, a                                       ; $4aa3: $7f
    ld e, l                                       ; $4aa4: $5d
    nop                                           ; $4aa5: $00
    inc e                                         ; $4aa6: $1c
    daa                                           ; $4aa7: $27
    ld a, d                                       ; $4aa8: $7a
    and d                                         ; $4aa9: $a2
    adc d                                         ; $4aaa: $8a
    jp nc, $5aca                                  ; $4aab: $d2 $ca $5a

    rst $30                                       ; $4aae: $f7
    add [hl]                                      ; $4aaf: $86
    dec [hl]                                      ; $4ab0: $35
    dec h                                         ; $4ab1: $25
    dec b                                         ; $4ab2: $05
    db $e3                                        ; $4ab3: $e3
    ld a, h                                       ; $4ab4: $7c
    call $fe1f                                    ; $4ab5: $cd $1f $fe
    halt                                          ; $4ab8: $76
    rst $00                                       ; $4ab9: $c7
    adc c                                         ; $4aba: $89
    ld d, b                                       ; $4abb: $50

jr_05b_4abc:
    ld e, $27                                     ; $4abc: $1e $27
    push bc                                       ; $4abe: $c5
    adc c                                         ; $4abf: $89
    xor h                                         ; $4ac0: $ac
    ld a, e                                       ; $4ac1: $7b
    rra                                           ; $4ac2: $1f
    ld a, [bc]                                    ; $4ac3: $0a
    nop                                           ; $4ac4: $00
    inc a                                         ; $4ac5: $3c
    ld d, h                                       ; $4ac6: $54
    ld a, [c]                                     ; $4ac7: $f2
    inc sp                                        ; $4ac8: $33
    ld l, $b6                                     ; $4ac9: $2e $b6
    xor e                                         ; $4acb: $ab
    ld a, e                                       ; $4acc: $7b
    xor h                                         ; $4acd: $ac
    push af                                       ; $4ace: $f5
    rst $38                                       ; $4acf: $ff
    or h                                          ; $4ad0: $b4
    xor b                                         ; $4ad1: $a8
    sub l                                         ; $4ad2: $95
    ld c, a                                       ; $4ad3: $4f
    sbc e                                         ; $4ad4: $9b
    xor a                                         ; $4ad5: $af
    ld l, l                                       ; $4ad6: $6d
    ret                                           ; $4ad7: $c9


    ld b, e                                       ; $4ad8: $43
    sub [hl]                                      ; $4ad9: $96
    ld b, a                                       ; $4ada: $47
    ld a, a                                       ; $4adb: $7f
    jp hl                                         ; $4adc: $e9


    ld d, b                                       ; $4add: $50
    ld a, [de]                                    ; $4ade: $1a
    rst $20                                       ; $4adf: $e7
    ret nc                                        ; $4ae0: $d0

    dec b                                         ; $4ae1: $05
    nop                                           ; $4ae2: $00
    ret nc                                        ; $4ae3: $d0

    dec h                                         ; $4ae4: $25
    inc a                                         ; $4ae5: $3c
    ld [hl], c                                    ; $4ae6: $71
    ld bc, $a5d0                                  ; $4ae7: $01 $d0 $a5
    sbc $80                                       ; $4aea: $de $80
    sub b                                         ; $4aec: $90
    xor $6d                                       ; $4aed: $ee $6d
    and d                                         ; $4aef: $a2
    sub d                                         ; $4af0: $92
    db $ed                                        ; $4af1: $ed
    ld [hl], $5d                                  ; $4af2: $36 $5d
    nop                                           ; $4af4: $00
    ld a, h                                       ; $4af5: $7c
    ld e, b                                       ; $4af6: $58
    pop de                                        ; $4af7: $d1
    ld l, d                                       ; $4af8: $6a
    and d                                         ; $4af9: $a2
    ld [hl], e                                    ; $4afa: $73
    ld c, b                                       ; $4afb: $48
    ld [hl], a                                    ; $4afc: $77
    sub [hl]                                      ; $4afd: $96
    push hl                                       ; $4afe: $e5
    call nc, Call_000_38b2                        ; $4aff: $d4 $b2 $38
    rst $20                                       ; $4b02: $e7
    rst $10                                       ; $4b03: $d7
    or $35                                        ; $4b04: $f6 $35
    sub c                                         ; $4b06: $91
    ld [hl], l                                    ; $4b07: $75
    rlca                                          ; $4b08: $07
    db $fc                                        ; $4b09: $fc
    rla                                           ; $4b0a: $17
    nop                                           ; $4b0b: $00
    ret nc                                        ; $4b0c: $d0

    xor e                                         ; $4b0d: $ab
    ld a, e                                       ; $4b0e: $7b
    ld l, e                                       ; $4b0f: $6b
    cp h                                          ; $4b10: $bc
    inc l                                         ; $4b11: $2c
    adc $f9                                       ; $4b12: $ce $f9
    xor l                                         ; $4b14: $ad
    jr z, jr_05b_4abc                             ; $4b15: $28 $a5

    db $e3                                        ; $4b17: $e3
    or $c7                                        ; $4b18: $f6 $c7
    sbc b                                         ; $4b1a: $98
    xor e                                         ; $4b1b: $ab
    cp c                                          ; $4b1c: $b9
    ld e, e                                       ; $4b1d: $5b
    add l                                         ; $4b1e: $85
    sub $7f                                       ; $4b1f: $d6 $7f
    ld bc, $95d0                                  ; $4b21: $01 $d0 $95
    call nc, $ba3d                                ; $4b24: $d4 $3d $ba
    ld e, a                                       ; $4b27: $5f
    rst $30                                       ; $4b28: $f7
    ld d, $29                                     ; $4b29: $16 $29
    ld c, d                                       ; $4b2b: $4a
    sub l                                         ; $4b2c: $95
    or l                                          ; $4b2d: $b5
    or d                                          ; $4b2e: $b2

jr_05b_4b2f:
    inc de                                        ; $4b2f: $13
    ld d, c                                       ; $4b30: $51
    ld b, [hl]                                    ; $4b31: $46
    sub e                                         ; $4b32: $93
    xor b                                         ; $4b33: $a8
    sub h                                         ; $4b34: $94
    ld c, $bc                                     ; $4b35: $0e $bc
    rst $38                                       ; $4b37: $ff
    ld [hl], l                                    ; $4b38: $75
    ld l, a                                       ; $4b39: $6f
    inc de                                        ; $4b3a: $13
    push de                                       ; $4b3b: $d5
    dec b                                         ; $4b3c: $05
    nop                                           ; $4b3d: $00
    db $fc                                        ; $4b3e: $fc
    cp a                                          ; $4b3f: $bf
    or [hl]                                       ; $4b40: $b6
    and l                                         ; $4b41: $a5
    and d                                         ; $4b42: $a2
    inc d                                         ; $4b43: $14
    ld b, d                                       ; $4b44: $42
    or d                                          ; $4b45: $b2
    jr c, jr_05b_4b2f                             ; $4b46: $38 $e7

    rst $10                                       ; $4b48: $d7
    and d                                         ; $4b49: $a2
    db $e4                                        ; $4b4a: $e4
    ld a, a                                       ; $4b4b: $7f
    call $1d2d                                    ; $4b4c: $cd $2d $1d
    ld c, d                                       ; $4b4f: $4a
    db $e3                                        ; $4b50: $e3
    inc e                                         ; $4b51: $1c
    cp d                                          ; $4b52: $ba
    nop                                           ; $4b53: $00
    ld a, h                                       ; $4b54: $7c
    ld e, e                                       ; $4b55: $5b
    inc h                                         ; $4b56: $24
    ld c, $8f                                     ; $4b57: $0e $8f
    and c                                         ; $4b59: $a1
    dec e                                         ; $4b5a: $1d
    ret z                                         ; $4b5b: $c8

    ld b, d                                       ; $4b5c: $42
    rst $30                                       ; $4b5d: $f7
    add [hl]                                      ; $4b5e: $86
    ld e, l                                       ; $4b5f: $5d
    ld [c], a                                     ; $4b60: $e2
    dec de                                        ; $4b61: $1b
    db $dd                                        ; $4b62: $dd
    xor a                                         ; $4b63: $af
    adc c                                         ; $4b64: $89
    xor h                                         ; $4b65: $ac
    ld a, e                                       ; $4b66: $7b
    add l                                         ; $4b67: $85
    and l                                         ; $4b68: $a5
    inc d                                         ; $4b69: $14
    ld c, a                                       ; $4b6a: $4f
    cp [hl]                                       ; $4b6b: $be
    ld h, [hl]                                    ; $4b6c: $66
    ld e, a                                       ; $4b6d: $5f
    dec hl                                        ; $4b6e: $2b
    rrca                                          ; $4b6f: $0f
    ld e, c                                       ; $4b70: $59
    ld e, $fd                                     ; $4b71: $1e $fd
    ld h, [hl]                                    ; $4b73: $66
    ld a, a                                       ; $4b74: $7f
    add hl, bc                                    ; $4b75: $09
    ld b, [hl]                                    ; $4b76: $46
    db $d3                                        ; $4b77: $d3
    and h                                         ; $4b78: $a4
    xor h                                         ; $4b79: $ac
    sub l                                         ; $4b7a: $95
    cp $8c                                        ; $4b7b: $fe $8c
    ei                                            ; $4b7d: $fb
    call Call_000_165e                            ; $4b7e: $cd $5e $16
    and l                                         ; $4b81: $a5
    ld l, l                                       ; $4b82: $6d
    adc e                                         ; $4b83: $8b
    and h                                         ; $4b84: $a4
    ld [hl], d                                    ; $4b85: $72
    call c, Call_05b_79d2                         ; $4b86: $dc $d2 $79
    sbc e                                         ; $4b89: $9b
    pop af                                        ; $4b8a: $f1
    ld c, d                                       ; $4b8b: $4a
    or a                                          ; $4b8c: $b7
    ld a, [$de5f]                                 ; $4b8d: $fa $5f $de
    add a                                         ; $4b90: $87
    pop hl                                        ; $4b91: $e1
    ccf                                           ; $4b92: $3f
    db $db                                        ; $4b93: $db
    cp c                                          ; $4b94: $b9
    ld a, c                                       ; $4b95: $79
    ld e, b                                       ; $4b96: $58
    sub e                                         ; $4b97: $93
    ld h, [hl]                                    ; $4b98: $66
    halt                                          ; $4b99: $76
    rst $18                                       ; $4b9a: $df
    ld d, c                                       ; $4b9b: $51
    ld de, $5b25                                  ; $4b9c: $11 $25 $5b
    and $fb                                       ; $4b9f: $e6 $fb
    cp e                                          ; $4ba1: $bb
    ld [hl], l                                    ; $4ba2: $75
    ld bc, $bb9c                                  ; $4ba3: $01 $9c $bb
    ld b, l                                       ; $4ba6: $45
    jp nz, Jump_000_00ba                          ; $4ba7: $c2 $ba $00

    ld a, h                                       ; $4baa: $7c
    cp a                                          ; $4bab: $bf
    or l                                          ; $4bac: $b5
    ret c                                         ; $4bad: $d8

    ld a, a                                       ; $4bae: $7f
    adc c                                         ; $4baf: $89
    cpl                                           ; $4bb0: $2f
    xor d                                         ; $4bb1: $aa
    adc b                                         ; $4bb2: $88
    ld c, d                                       ; $4bb3: $4a
    ld e, $b2                                     ; $4bb4: $1e $b2
    inc a                                         ; $4bb6: $3c
    ld a, [$92bf]                                 ; $4bb7: $fa $bf $92
    xor d                                         ; $4bba: $aa
    db $dd                                        ; $4bbb: $dd
    ld d, d                                       ; $4bbc: $52
    cp $a7                                        ; $4bbd: $fe $a7
    rst $00                                       ; $4bbf: $c7
    add sp, $2f                                   ; $4bc0: $e8 $2f
    reti                                          ; $4bc2: $d9


    sub $68                                       ; $4bc3: $d6 $68
    ld c, l                                       ; $4bc5: $4d
    jp z, $a26e                                   ; $4bc6: $ca $6e $a2

    ld d, d                                       ; $4bc9: $52
    adc d                                         ; $4bca: $8a
    daa                                           ; $4bcb: $27
    ld e, a                                       ; $4bcc: $5f
    or e                                          ; $4bcd: $b3
    xor a                                         ; $4bce: $af
    cp l                                          ; $4bcf: $bd
    nop                                           ; $4bd0: $00
    ld a, h                                       ; $4bd1: $7c
    ld e, e                                       ; $4bd2: $5b
    db $e3                                        ; $4bd3: $e3
    sbc h                                         ; $4bd4: $9c
    ld d, a                                       ; $4bd5: $57
    xor h                                         ; $4bd6: $ac
    ld a, [$f217]                                 ; $4bd7: $fa $17 $f2
    jp nz, Jump_05b_5e73                          ; $4bda: $c2 $73 $5e

    or l                                          ; $4bdd: $b5
    ld e, e                                       ; $4bde: $5b
    ld a, [c]                                     ; $4bdf: $f2
    rst $38                                       ; $4be0: $ff
    ret nz                                        ; $4be1: $c0

    ld e, b                                       ; $4be2: $58
    rla                                           ; $4be3: $17
    nop                                           ; $4be4: $00
    sbc h                                         ; $4be5: $9c
    pop hl                                        ; $4be6: $e1
    sub e                                         ; $4be7: $93
    jp nc, $f767                                  ; $4be8: $d2 $67 $f7

    sbc [hl]                                      ; $4beb: $9e
    or e                                          ; $4bec: $b3
    sub $7f                                       ; $4bed: $d6 $7f
    adc c                                         ; $4bef: $89
    ld l, a                                       ; $4bf0: $6f
    ld [hl], h                                    ; $4bf1: $74
    cp a                                          ; $4bf2: $bf
    ld a, d                                       ; $4bf3: $7a

Jump_05b_4bf4:
    sbc h                                         ; $4bf4: $9c
    ld d, b                                       ; $4bf5: $50
    rst $38                                       ; $4bf6: $ff
    db $fc                                        ; $4bf7: $fc
    or l                                          ; $4bf8: $b5
    xor l                                         ; $4bf9: $ad
    and h                                         ; $4bfa: $a4
    and $28                                       ; $4bfb: $e6 $28
    reti                                          ; $4bfd: $d9


Call_05b_4bfe:
    sub $38                                       ; $4bfe: $d6 $38
    rst $20                                       ; $4c00: $e7
    add l                                         ; $4c01: $85
    and l                                         ; $4c02: $a5
    ld a, [hl]                                    ; $4c03: $7e
    and $47                                       ; $4c04: $e6 $47
    ld c, h                                       ; $4c06: $4c
    db $db                                        ; $4c07: $db
    ld c, e                                       ; $4c08: $4b
    ld a, h                                       ; $4c09: $7c
    ld e, e                                       ; $4c0a: $5b
    inc h                                         ; $4c0b: $24
    add h                                         ; $4c0c: $84
    ld h, b                                       ; $4c0d: $60
    ld [hl], a                                    ; $4c0e: $77
    sbc h                                         ; $4c0f: $9c
    jr z, @+$37                                   ; $4c10: $28 $35

    pop de                                        ; $4c12: $d1
    add hl, sp                                    ; $4c13: $39
    ld [hl], h                                    ; $4c14: $74
    ld bc, $c8bc                                  ; $4c15: $01 $bc $c8
    cp d                                          ; $4c18: $ba
    ld d, a                                       ; $4c19: $57
    rst $30                                       ; $4c1a: $f7
    ld c, a                                       ; $4c1b: $4f
    ei                                            ; $4c1c: $fb
    sub a                                         ; $4c1d: $97
    di                                            ; $4c1e: $f3
    adc $c9                                       ; $4c1f: $ce $c9
    sub [hl]                                      ; $4c21: $96
    ld sp, hl                                     ; $4c22: $f9
    cp $52                                        ; $4c23: $fe $52
    ld d, d                                       ; $4c25: $52
    rst $30                                       ; $4c26: $f7
    add sp, $7e                                   ; $4c27: $e8 $7e
    db $dd                                        ; $4c29: $dd
    ld e, e                                       ; $4c2a: $5b
    db $e3                                        ; $4c2b: $e3
    sbc h                                         ; $4c2c: $9c
    ld d, a                                       ; $4c2d: $57
    xor h                                         ; $4c2e: $ac
    ldh a, [$84]                                  ; $4c2f: $f0 $84
    ld l, d                                       ; $4c31: $6a
    or a                                          ; $4c32: $b7
    db $e4                                        ; $4c33: $e4
    rst $38                                       ; $4c34: $ff
    add c                                         ; $4c35: $81
    or c                                          ; $4c36: $b1
    ld l, $79                                     ; $4c37: $2e $79
    adc [hl]                                      ; $4c39: $8e
    ld l, e                                       ; $4c3a: $6b
    ld e, e                                       ; $4c3b: $5b
    inc de                                        ; $4c3c: $13
    ld h, l                                       ; $4c3d: $65
    rst $38                                       ; $4c3e: $ff
    sub b                                         ; $4c3f: $90
    sub a                                         ; $4c40: $97
    di                                            ; $4c41: $f3
    adc $c9                                       ; $4c42: $ce $c9
    sub [hl]                                      ; $4c44: $96
    ld sp, hl                                     ; $4c45: $f9
    cp $12                                        ; $4c46: $fe $12
    inc d                                         ; $4c48: $14
    nop                                           ; $4c49: $00
    ld a, h                                       ; $4c4a: $7c
    dec sp                                        ; $4c4b: $3b
    ret                                           ; $4c4c: $c9


    ld h, h                                       ; $4c4d: $64
    cp e                                          ; $4c4e: $bb
    ld b, l                                       ; $4c4f: $45
    rla                                           ; $4c50: $17
    nop                                           ; $4c51: $00
    cp h                                          ; $4c52: $bc
    ld h, e                                       ; $4c53: $63
    ld l, e                                       ; $4c54: $6b
    cp [hl]                                       ; $4c55: $be
    ld [hl], d                                    ; $4c56: $72
    call c, $ff92                                 ; $4c57: $dc $92 $ff
    daa                                           ; $4c5a: $27
    adc a                                         ; $4c5b: $8f
    ld [hl], e                                    ; $4c5c: $73
    ld e, $0a                                     ; $4c5d: $1e $0a

jr_05b_4c5f:
    nop                                           ; $4c5f: $00
    sbc [hl]                                      ; $4c60: $9e
    rst $38                                       ; $4c61: $ff

jr_05b_4c62:
    jp hl                                         ; $4c62: $e9


    ld sp, $4bfa                                  ; $4c63: $31 $fa $4b
    ld l, c                                       ; $4c66: $69
    jr nc, jr_05b_4c5f                            ; $4c67: $30 $f6

    ld [hl], d                                    ; $4c69: $72
    adc b                                         ; $4c6a: $88
    db $dd                                        ; $4c6b: $dd
    pop bc                                        ; $4c6c: $c1
    or [hl]                                       ; $4c6d: $b6
    ld [hl], h                                    ; $4c6e: $74
    ld b, a                                       ; $4c6f: $47
    push bc                                       ; $4c70: $c5
    ld c, l                                       ; $4c71: $4d
    ld d, h                                       ; $4c72: $54
    ld c, d                                       ; $4c73: $4a
    pop af                                        ; $4c74: $f1
    db $e4                                        ; $4c75: $e4
    cp e                                          ; $4c76: $bb
    or l                                          ; $4c77: $b5
    ld c, c                                       ; $4c78: $49
    push de                                       ; $4c79: $d5
    cp b                                          ; $4c7a: $b8
    add e                                         ; $4c7b: $83
    and c                                         ; $4c7c: $a1
    ld e, h                                       ; $4c7d: $5c
    ld [hl], a                                    ; $4c7e: $77
    db $dd                                        ; $4c7f: $dd
    or l                                          ; $4c80: $b5
    and h                                         ; $4c81: $a4
    ldh [$57], a                                  ; $4c82: $e0 $57
    ld a, [$ee33]                                 ; $4c84: $fa $33 $ee
    rst $38                                       ; $4c87: $ff
    sub d                                         ; $4c88: $92
    inc de                                        ; $4c89: $13
    cp h                                          ; $4c8a: $bc
    ld h, e                                       ; $4c8b: $63
    sbc h                                         ; $4c8c: $9c
    or c                                          ; $4c8d: $b1
    or [hl]                                       ; $4c8e: $b6
    xor a                                         ; $4c8f: $af
    jp nz, Jump_05b_7ded                          ; $4c90: $c2 $ed $7d

    pop bc                                        ; $4c93: $c1
    xor a                                         ; $4c94: $af
    inc a                                         ; $4c95: $3c
    ld c, [hl]                                    ; $4c96: $4e
    adc d                                         ; $4c97: $8a
    ldh a, [$3b]                                  ; $4c98: $f0 $3b
    ld hl, $2667                                  ; $4c9a: $21 $67 $26
    or d                                          ; $4c9d: $b2
    sbc $ba                                       ; $4c9e: $de $ba
    nop                                           ; $4ca0: $00
    sbc h                                         ; $4ca1: $9c
    cp a                                          ; $4ca2: $bf
    or [hl]                                       ; $4ca3: $b6
    dec [hl]                                      ; $4ca4: $35
    ld d, c                                       ; $4ca5: $51
    ld b, l                                       ; $4ca6: $45
    add hl, hl                                    ; $4ca7: $29
    add h                                         ; $4ca8: $84
    db $f4                                        ; $4ca9: $f4
    ld sp, hl                                     ; $4caa: $f9
    rst $28                                       ; $4cab: $ef
    dec e                                         ; $4cac: $1d
    ld d, l                                       ; $4cad: $55
    ld bc, $0005                                  ; $4cae: $01 $05 $00
    db $fc                                        ; $4cb1: $fc
    ld h, h                                       ; $4cb2: $64
    ld b, [hl]                                    ; $4cb3: $46
    or d                                          ; $4cb4: $b2
    db $10                                        ; $4cb5: $10
    sub $25                                       ; $4cb6: $d6 $25
    sbc [hl]                                      ; $4cb8: $9e
    ld h, b                                       ; $4cb9: $60
    db $ec                                        ; $4cba: $ec
    push hl                                       ; $4cbb: $e5
    db $10                                        ; $4cbc: $10
    cp e                                          ; $4cbd: $bb
    add e                                         ; $4cbe: $83
    jp hl                                         ; $4cbf: $e9


    adc [hl]                                      ; $4cc0: $8e
    adc d                                         ; $4cc1: $8a
    sub b                                         ; $4cc2: $90
    ld l, l                                       ; $4cc3: $6d
    ld d, l                                       ; $4cc4: $55

jr_05b_4cc5:
    jr z, jr_05b_4c62                             ; $4cc5: $28 $9b

    or [hl]                                       ; $4cc7: $b6
    ld [hl], l                                    ; $4cc8: $75
    ret                                           ; $4cc9: $c9


    ld bc, $10a5                                  ; $4cca: $01 $a5 $10
    and d                                         ; $4ccd: $a2
    jp nc, $719d                                  ; $4cce: $d2 $9d $71

    and l                                         ; $4cd1: $a5
    ld [hl], c                                    ; $4cd2: $71
    rst $18                                       ; $4cd3: $df
    ld e, e                                       ; $4cd4: $5b
    ld c, c                                       ; $4cd5: $49
    pop af                                        ; $4cd6: $f1
    inc a                                         ; $4cd7: $3c
    ld h, e                                       ; $4cd8: $63
    reti                                          ; $4cd9: $d9


    dec b                                         ; $4cda: $05
    nop                                           ; $4cdb: $00
    sbc h                                         ; $4cdc: $9c
    ld [hl], c                                    ; $4cdd: $71
    ld [hl], d                                    ; $4cde: $72
    cp d                                          ; $4cdf: $ba
    call nz, $ba17                                ; $4ce0: $c4 $17 $ba
    and e                                         ; $4ce3: $a3
    ld [c], a                                     ; $4ce4: $e2
    cp [hl]                                       ; $4ce5: $be
    ld b, e                                       ; $4ce6: $43
    ld h, e                                       ; $4ce7: $63
    ld b, b                                       ; $4ce8: $40
    ld [c], a                                     ; $4ce9: $e2

jr_05b_4cea:
    sbc h                                         ; $4cea: $9c
    ld d, b                                       ; $4ceb: $50
    adc d                                         ; $4cec: $8a
    daa                                           ; $4ced: $27
    rst $18                                       ; $4cee: $df
    ccf                                           ; $4cef: $3f
    inc hl                                        ; $4cf0: $23
    ld [c], a                                     ; $4cf1: $e2
    sbc h                                         ; $4cf2: $9c
    ld c, b                                       ; $4cf3: $48
    ld a, [bc]                                    ; $4cf4: $0a
    ld c, a                                       ; $4cf5: $4f
    jr z, jr_05b_4cc5                             ; $4cf6: $28 $cd

    ld [hl], d                                    ; $4cf8: $72
    ld [de], a                                    ; $4cf9: $12
    db $fc                                        ; $4cfa: $fc
    or d                                          ; $4cfb: $b2
    jr jr_05b_4cea                                ; $4cfc: $18 $ec

    ld e, a                                       ; $4cfe: $5f
    rst $30                                       ; $4cff: $f7
    sub $f8                                       ; $4d00: $d6 $f8
    dec bc                                        ; $4d02: $0b
    nop                                           ; $4d03: $00
    inc a                                         ; $4d04: $3c
    ld a, b                                       ; $4d05: $78
    ld a, [c]                                     ; $4d06: $f2
    sub l                                         ; $4d07: $95
    db $eb                                        ; $4d08: $eb
    xor [hl]                                      ; $4d09: $ae
    cp e                                          ; $4d0a: $bb
    ld h, $2c                                     ; $4d0b: $26 $2c
    push af                                       ; $4d0d: $f5
    ret nz                                        ; $4d0e: $c0

    ld [hl], e                                    ; $4d0f: $73
    ld e, [hl]                                    ; $4d10: $5e
    ld a, $6d                                     ; $4d11: $3e $6d
    ld e, l                                       ; $4d13: $5d
    ld [hl], d                                    ; $4d14: $72
    db $ec                                        ; $4d15: $ec
    ld c, h                                       ; $4d16: $4c
    ld [hl+], a                                   ; $4d17: $22
    db $dd                                        ; $4d18: $dd
    ld d, c                                       ; $4d19: $51
    sub e                                         ; $4d1a: $93

jr_05b_4d1b:
    ld c, e                                       ; $4d1b: $4b
    rst $30                                       ; $4d1c: $f7
    ret c                                         ; $4d1d: $d8

    ld [hl], h                                    ; $4d1e: $74
    ld c, e                                       ; $4d1f: $4b
    add hl, hl                                    ; $4d20: $29
    sbc [hl]                                      ; $4d21: $9e
    inc a                                         ; $4d22: $3c
    ld [hl], $dd                                  ; $4d23: $36 $dd
    cp d                                          ; $4d25: $ba
    db $e4                                        ; $4d26: $e4
    ld hl, $a3cb                                  ; $4d27: $21 $cb $a3
    ld e, a                                       ; $4d2a: $5f
    or c                                          ; $4d2b: $b1
    jp nz, $e57e                                  ; $4d2c: $c2 $7e $e5

    ld l, a                                       ; $4d2f: $6f
    dec a                                         ; $4d30: $3d
    ld b, [hl]                                    ; $4d31: $46
    cp a                                          ; $4d32: $bf
    and $43                                       ; $4d33: $e6 $43
    or b                                          ; $4d35: $b0
    ld a, [hl+]                                   ; $4d36: $2a
    sub $fa                                       ; $4d37: $d6 $fa
    dec d                                         ; $4d39: $15
    or [hl]                                       ; $4d3a: $b6
    dec d                                         ; $4d3b: $15
    ld l, e                                       ; $4d3c: $6b
    ld c, l                                       ; $4d3d: $4d
    ld [$b15f], a                                 ; $4d3e: $ea $5f $b1
    ld a, a                                       ; $4d41: $7f
    jr jr_05b_4d1b                                ; $4d42: $18 $d7

    ld a, [$002f]                                 ; $4d44: $fa $2f $00
    inc e                                         ; $4d47: $1c
    daa                                           ; $4d48: $27
    ld c, d                                       ; $4d49: $4a
    cp $a7                                        ; $4d4a: $fe $a7
    cp b                                          ; $4d4c: $b8
    rst $20                                       ; $4d4d: $e7
    ld a, h                                       ; $4d4e: $7c
    ld l, l                                       ; $4d4f: $6d
    ld d, d                                       ; $4d50: $52
    rst $30                                       ; $4d51: $f7
    add sp, $7e                                   ; $4d52: $e8 $7e
    db $dd                                        ; $4d54: $dd
    ld e, e                                       ; $4d55: $5b
    and e                                         ; $4d56: $a3
    add h                                         ; $4d57: $84
    dec h                                         ; $4d58: $25
    rst $38                                       ; $4d59: $ff
    rst $08                                       ; $4d5a: $cf
    ld [hl], a                                    ; $4d5b: $77
    ld a, a                                       ; $4d5c: $7f
    cp $ea                                        ; $4d5d: $fe $ea
    sbc a                                         ; $4d5f: $9f
    cp a                                          ; $4d60: $bf
    or [hl]                                       ; $4d61: $b6
    and l                                         ; $4d62: $a5
    rra                                           ; $4d63: $1f
    rst $20                                       ; $4d64: $e7
    cp a                                          ; $4d65: $bf
    ld l, $00                                     ; $4d66: $2e $00
    ld l, [hl]                                    ; $4d68: $6e
    ld d, a                                       ; $4d69: $57
    ld b, a                                       ; $4d6a: $47

Call_05b_4d6b:
    ld c, h                                       ; $4d6b: $4c
    db $db                                        ; $4d6c: $db
    and h                                         ; $4d6d: $a4
    xor $d1                                       ; $4d6e: $ee $d1
    db $fd                                        ; $4d70: $fd
    ld l, d                                       ; $4d71: $6a
    cp d                                          ; $4d72: $ba
    ld c, c                                       ; $4d73: $49
    ld h, a                                       ; $4d74: $67
    adc h                                         ; $4d75: $8c
    add hl, sp                                    ; $4d76: $39
    add a                                         ; $4d77: $87
    or b                                          ; $4d78: $b0
    ld h, h                                       ; $4d79: $64
    db $e3                                        ; $4d7a: $e3
    ret nz                                        ; $4d7b: $c0

    pop de                                        ; $4d7c: $d1
    dec a                                         ; $4d7d: $3d
    ld l, $00                                     ; $4d7e: $2e $00
    inc e                                         ; $4d80: $1c
    ld h, a                                       ; $4d81: $67
    cp $2b                                        ; $4d82: $fe $2b
    call Call_000_1272                            ; $4d84: $cd $72 $12
    db $fc                                        ; $4d87: $fc
    cp d                                          ; $4d88: $ba
    and e                                         ; $4d89: $a3
    ld h, $91                                     ; $4d8a: $26 $91
    inc l                                         ; $4d8c: $2c
    ld b, $fb                                     ; $4d8d: $06 $fb
    rst $08                                       ; $4d8f: $cf
    rst $38                                       ; $4d90: $ff
    sbc h                                         ; $4d91: $9c
    ret nc                                        ; $4d92: $d0

    ld a, h                                       ; $4d93: $7c
    or e                                          ; $4d94: $b3
    ccf                                           ; $4d95: $3f
    daa                                           ; $4d96: $27
    ld l, $00                                     ; $4d97: $2e $00
    inc e                                         ; $4d99: $1c
    ld h, a                                       ; $4d9a: $67
    cp $2b                                        ; $4d9b: $fe $2b
    call Call_000_1272                            ; $4d9d: $cd $72 $12
    db $fc                                        ; $4da0: $fc
    cp d                                          ; $4da1: $ba
    and e                                         ; $4da2: $a3
    ld h, $91                                     ; $4da3: $26 $91
    ld [bc], a                                    ; $4da5: $02
    ld [de], a                                    ; $4da6: $12
    rst $20                                       ; $4da7: $e7
    xor h                                         ; $4da8: $ac
    push bc                                       ; $4da9: $c5
    add hl, sp                                    ; $4daa: $39
    and c                                         ; $4dab: $a1
    ld sp, hl                                     ; $4dac: $f9
    ld h, [hl]                                    ; $4dad: $66
    ld a, a                                       ; $4dae: $7f
    ld c, [hl]                                    ; $4daf: $4e
    ld e, h                                       ; $4db0: $5c

jr_05b_4db1:
    nop                                           ; $4db1: $00
    ld l, [hl]                                    ; $4db2: $6e
    ld d, a                                       ; $4db3: $57
    ld b, a                                       ; $4db4: $47
    ld c, h                                       ; $4db5: $4c
    db $db                                        ; $4db6: $db
    and h                                         ; $4db7: $a4
    xor $d1                                       ; $4db8: $ee $d1
    db $fd                                        ; $4dba: $fd
    ld l, d                                       ; $4dbb: $6a
    cp d                                          ; $4dbc: $ba

Call_05b_4dbd:
    ld c, c                                       ; $4dbd: $49
    di                                            ; $4dbe: $f3
    call $585e                                    ; $4dbf: $cd $5e $58
    ld a, [bc]                                    ; $4dc2: $0a
    sbc a                                         ; $4dc3: $9f
    and $a8                                       ; $4dc4: $e6 $a8
    ld b, d                                       ; $4dc6: $42
    or e                                          ; $4dc7: $b3
    cp a                                          ; $4dc8: $bf
    nop                                           ; $4dc9: $00
    inc e                                         ; $4dca: $1c
    ld h, a                                       ; $4dcb: $67
    cp $2b                                        ; $4dcc: $fe $2b
    ld a, a                                       ; $4dce: $7f
    add [hl]                                      ; $4dcf: $86
    ld sp, hl                                     ; $4dd0: $f9
    ld l, a                                       ; $4dd1: $6f
    ld b, l                                       ; $4dd2: $45
    dec h                                         ; $4dd3: $25
    dec [hl]                                      ; $4dd4: $35
    add [hl]                                      ; $4dd5: $86
    xor l                                         ; $4dd6: $ad
    adc $77                                       ; $4dd7: $ce $77
    rst $28                                       ; $4dd9: $ef
    dec bc                                        ; $4dda: $0b
    ld c, e                                       ; $4ddb: $4b
    ld sp, hl                                     ; $4ddc: $f9
    add $21                                       ; $4ddd: $c6 $21
    sbc l                                         ; $4ddf: $9d
    dec e                                         ; $4de0: $1d
    ld [hl], e                                    ; $4de1: $73
    cp $97                                        ; $4de2: $fe $97
    ccf                                           ; $4de4: $3f
    ldh a, [$c4]                                  ; $4de5: $f0 $c4
    ld d, [hl]                                    ; $4de7: $56

Jump_05b_4de8:
    call nc, Call_000_0005                        ; $4de8: $d4 $05 $00
    sbc h                                         ; $4deb: $9c
    cp a                                          ; $4dec: $bf
    dec a                                         ; $4ded: $3d
    ld d, c                                       ; $4dee: $51
    inc de                                        ; $4def: $13
    ld e, c                                       ; $4df0: $59
    ld l, a                                       ; $4df1: $6f
    ld b, c                                       ; $4df2: $41
    ld bc, $75d0                                  ; $4df3: $01 $d0 $75
    ld bc, $300e                                  ; $4df6: $01 $0e $30
    xor c                                         ; $4df9: $a9
    ld c, c                                       ; $4dfa: $49
    sbc c                                         ; $4dfb: $99
    ld a, [hl+]                                   ; $4dfc: $2a
    ld l, e                                       ; $4dfd: $6b
    and l                                         ; $4dfe: $a5
    ccf                                           ; $4dff: $3f
    db $e3                                        ; $4e00: $e3
    ld a, [hl]                                    ; $4e01: $7e
    or e                                          ; $4e02: $b3
    sub a                                         ; $4e03: $97
    push bc                                       ; $4e04: $c5
    dec h                                         ; $4e05: $25
    add sp, -$2b                                  ; $4e06: $e8 $d5
    cp l                                          ; $4e08: $bd
    dec [hl]                                      ; $4e09: $35
    adc $79                                       ; $4e0a: $ce $79
    pop hl                                        ; $4e0c: $e1
    add hl, bc                                    ; $4e0d: $09
    ld c, l                                       ; $4e0e: $4d
    sbc h                                         ; $4e0f: $9c
    jr z, jr_05b_4db1                             ; $4e10: $28 $9f

    ld [hl], $27                                  ; $4e12: $36 $27
    jp nc, $fcef                                  ; $4e14: $d2 $ef $fc

    cp a                                          ; $4e17: $bf
    nop                                           ; $4e18: $00
    cp h                                          ; $4e19: $bc
    and e                                         ; $4e1a: $a3
    add h                                         ; $4e1b: $84
    daa                                           ; $4e1c: $27
    ld e, d                                       ; $4e1d: $5a
    or $5f                                        ; $4e1e: $f6 $5f
    and e                                         ; $4e20: $a3
    sub l                                         ; $4e21: $95
    ld [c], a                                     ; $4e22: $e2
    ld a, l                                       ; $4e23: $7d
    cp a                                          ; $4e24: $bf
    xor l                                         ; $4e25: $ad
    ld a, [hl-]                                   ; $4e26: $3a
    jp nc, Jump_000_28ce                          ; $4e27: $d2 $ce $28

    xor c                                         ; $4e2a: $a9
    dec sp                                        ; $4e2b: $3b
    sub h                                         ; $4e2c: $94
    db $e3                                        ; $4e2d: $e3
    ld b, d                                       ; $4e2e: $42
    cp $4b                                        ; $4e2f: $fe $4b

Call_05b_4e31:
    ld [hl], a                                    ; $4e31: $77

jr_05b_4e32:
    ld d, h                                       ; $4e32: $54
    sub c                                         ; $4e33: $91
    ld a, [$afe7]                                 ; $4e34: $fa $e7 $af
    ld l, l                                       ; $4e37: $6d
    adc c                                         ; $4e38: $89
    ccf                                           ; $4e39: $3f
    dec sp                                        ; $4e3a: $3b
    sbc c                                         ; $4e3b: $99
    rst $38                                       ; $4e3c: $ff
    jp hl                                         ; $4e3d: $e9


    db $fc                                        ; $4e3e: $fc
    xor a                                         ; $4e3f: $af
    dec bc                                        ; $4e40: $0b
    nop                                           ; $4e41: $00
    inc e                                         ; $4e42: $1c
    ld h, a                                       ; $4e43: $67
    ld e, e                                       ; $4e44: $5b
    cp $a7                                        ; $4e45: $fe $a7
    ld l, a                                       ; $4e47: $6f
    cp l                                          ; $4e48: $bd
    ld a, [hl-]                                   ; $4e49: $3a
    jr c, jr_05b_4e32                             ; $4e4a: $38 $e6

    db $fc                                        ; $4e4c: $fc
    xor a                                         ; $4e4d: $af
    ld e, $35                                     ; $4e4e: $1e $35
    ld a, [hl-]                                   ; $4e50: $3a
    xor c                                         ; $4e51: $a9
    ld a, e                                       ; $4e52: $7b
    ld [hl], h                                    ; $4e53: $74
    cp a                                          ; $4e54: $bf
    xor $90                                       ; $4e55: $ee $90
    rst $38                                       ; $4e57: $ff
    db $ec                                        ; $4e58: $ec
    set 6, [hl]                                   ; $4e59: $cb $f6
    cp [hl]                                       ; $4e5b: $be
    ld b, e                                       ; $4e5c: $43
    or [hl]                                       ; $4e5d: $b6
    dec [hl]                                      ; $4e5e: $35
    ld a, [$1e02]                                 ; $4e5f: $fa $02 $1e
    db $fd                                        ; $4e62: $fd
    and a                                         ; $4e63: $a7
    sbc a                                         ; $4e64: $9f
    sub h                                         ; $4e65: $94
    ld l, l                                       ; $4e66: $6d
    sub e                                         ; $4e67: $93
    or b                                          ; $4e68: $b0
    inc [hl]                                      ; $4e69: $34
    add hl, hl                                    ; $4e6a: $29
    db $eb                                        ; $4e6b: $eb
    ld c, h                                       ; $4e6c: $4c
    cp $b3                                        ; $4e6d: $fe $b3
    xor a                                         ; $4e6f: $af
    ld a, [hl]                                    ; $4e70: $7e
    ld hl, sp-$31                                 ; $4e71: $f8 $cf
    ld sp, hl                                     ; $4e73: $f9
    dec bc                                        ; $4e74: $0b
    nop                                           ; $4e75: $00
    ld c, $28                                     ; $4e76: $0e $28
    ld l, e                                       ; $4e78: $6b
    ld [$f90e], a                                 ; $4e79: $ea $0e $f9
    ld a, a                                       ; $4e7c: $7f
    ld h, b                                       ; $4e7d: $60
    inc l                                         ; $4e7e: $2c
    push bc                                       ; $4e7f: $c5
    pop bc                                        ; $4e80: $c1
    or l                                          ; $4e81: $b5
    cp a                                          ; $4e82: $bf
    rst $28                                       ; $4e83: $ef
    ccf                                           ; $4e84: $3f
    db $fd                                        ; $4e85: $fd
    sbc d                                         ; $4e86: $9a
    ld h, e                                       ; $4e87: $63
    ld c, e                                       ; $4e88: $4b
    ld sp, hl                                     ; $4e89: $f9
    xor $1d                                       ; $4e8a: $ee $1d
    db $d3                                        ; $4e8c: $d3
    or $02                                        ; $4e8d: $f6 $02
    db $fc                                        ; $4e8f: $fc
    cp b                                          ; $4e90: $b8
    add hl, sp                                    ; $4e91: $39
    halt                                          ; $4e92: $76
    ld a, a                                       ; $4e93: $7f
    cp $d6                                        ; $4e94: $fe $d6
    xor e                                         ; $4e96: $ab
    cp $b5                                        ; $4e97: $fe $b5
    adc [hl]                                      ; $4e99: $8e
    inc sp                                        ; $4e9a: $33
    ld h, h                                       ; $4e9b: $64
    inc bc                                        ; $4e9c: $03
    ld e, $43                                     ; $4e9d: $1e $43
    ld c, l                                       ; $4e9f: $4d
    rst $20                                       ; $4ea0: $e7
    sub b                                         ; $4ea1: $90
    ld h, [hl]                                    ; $4ea2: $66
    or b                                          ; $4ea3: $b0
    cp $97                                        ; $4ea4: $fe $97
    rst $38                                       ; $4ea6: $ff
    inc l                                         ; $4ea7: $2c
    xor $7b                                       ; $4ea8: $ee $7b
    db $eb                                        ; $4eaa: $eb
    ld [bc], a                                    ; $4eab: $02
    ld e, $a1                                     ; $4eac: $1e $a1
    add hl, hl                                    ; $4eae: $29
    and l                                         ; $4eaf: $a5
    ld a, h                                       ; $4eb0: $7c
    xor c                                         ; $4eb1: $a9
    dec sp                                        ; $4eb2: $3b
    call nc, $fccf                                ; $4eb3: $d4 $cf $fc
    adc b                                         ; $4eb6: $88
    ld l, c                                       ; $4eb7: $69
    xor e                                         ; $4eb8: $ab
    dec de                                        ; $4eb9: $1b
    xor e                                         ; $4eba: $ab
    ld e, a                                       ; $4ebb: $5f
    inc sp                                        ; $4ebc: $33
    ld e, b                                       ; $4ebd: $58
    rst $38                                       ; $4ebe: $ff
    daa                                           ; $4ebf: $27
    push hl                                       ; $4ec0: $e5
    rst $38                                       ; $4ec1: $ff
    sub $df                                       ; $4ec2: $d6 $df
    ld [hl], a                                    ; $4ec4: $77
    ld l, b                                       ; $4ec5: $68
    adc [hl]                                      ; $4ec6: $8e
    xor d                                         ; $4ec7: $aa
    db $fd                                        ; $4ec8: $fd
    ld l, c                                       ; $4ec9: $69
    ld d, c                                       ; $4eca: $51
    dec d                                         ; $4ecb: $15
    cp d                                          ; $4ecc: $ba
    rst $00                                       ; $4ecd: $c7
    ld e, d                                       ; $4ece: $5a
    db $e3                                        ; $4ecf: $e3
    call nz, Call_000_13b3                        ; $4ed0: $c4 $b3 $13
    db $eb                                        ; $4ed3: $eb
    ld [bc], a                                    ; $4ed4: $02
    ld c, $9f                                     ; $4ed5: $0e $9f
    push bc                                       ; $4ed7: $c5
    db $ed                                        ; $4ed8: $ed
    rst $38                                       ; $4ed9: $ff
    dec bc                                        ; $4eda: $0b
    xor e                                         ; $4edb: $ab
    ld [c], a                                     ; $4edc: $e2

jr_05b_4edd:
    sub l                                         ; $4edd: $95
    ld b, $63                                     ; $4ede: $06 $63
    ld a, a                                       ; $4ee0: $7f
    ld c, [hl]                                    ; $4ee1: $4e
    xor b                                         ; $4ee2: $a8
    jp hl                                         ; $4ee3: $e9


    inc e                                         ; $4ee4: $1c
    jp nc, $d60c                                  ; $4ee5: $d2 $0c $d6

    rst $38                                       ; $4ee8: $ff
    rla                                           ; $4ee9: $17
    nop                                           ; $4eea: $00
    db $fc                                        ; $4eeb: $fc
    cp b                                          ; $4eec: $b8
    add hl, sp                                    ; $4eed: $39
    halt                                          ; $4eee: $76
    ld a, a                                       ; $4eef: $7f
    cp $d6                                        ; $4ef0: $fe $d6
    xor e                                         ; $4ef2: $ab
    adc [hl]                                      ; $4ef3: $8e
    dec a                                         ; $4ef4: $3d
    daa                                           ; $4ef5: $27
    inc d                                         ; $4ef6: $14
    xor e                                         ; $4ef7: $ab
    ld c, c                                       ; $4ef8: $49
    sbc c                                         ; $4ef9: $99
    ld a, [$94df]                                 ; $4efa: $fa $df $94
    and l                                         ; $4efd: $a5
    ld c, l                                       ; $4efe: $4d
    ld c, d                                       ; $4eff: $4a
    rst $18                                       ; $4f00: $df
    ld l, h                                       ; $4f01: $6c
    ld e, b                                       ; $4f02: $58
    rst $28                                       ; $4f03: $ef
    dec b                                         ; $4f04: $05
    nop                                           ; $4f05: $00
    inc a                                         ; $4f06: $3c
    pop bc                                        ; $4f07: $c1
    ret c                                         ; $4f08: $d8

    dec bc                                        ; $4f09: $0b
    ld c, e                                       ; $4f0a: $4b
    ld sp, hl                                     ; $4f0b: $f9
    inc sp                                        ; $4f0c: $33
    db $db                                        ; $4f0d: $db
    ld [de], a                                    ; $4f0e: $12
    jp $c674                                      ; $4f0f: $c3 $74 $c6


    ld e, a                                       ; $4f12: $5f
    nop                                           ; $4f13: $00
    inc a                                         ; $4f14: $3c
    add e                                         ; $4f15: $83
    or c                                          ; $4f16: $b1

Jump_05b_4f17:
    ld a, a                                       ; $4f17: $7f
    reti                                          ; $4f18: $d9


    or $0c                                        ; $4f19: $f6 $0c
    ld a, [hl-]                                   ; $4f1b: $3a
    daa                                           ; $4f1c: $27
    sub h                                         ; $4f1d: $94
    or c                                          ; $4f1e: $b1
    db $ed                                        ; $4f1f: $ed
    ld h, $98                                     ; $4f20: $26 $98
    adc $09                                       ; $4f22: $ce $09
    ld l, [hl]                                    ; $4f24: $6e
    nop                                           ; $4f25: $00
    inc a                                         ; $4f26: $3c
    pop bc                                        ; $4f27: $c1
    ret c                                         ; $4f28: $d8

    dec hl                                        ; $4f29: $2b
    ld d, [hl]                                    ; $4f2a: $56
    adc l                                         ; $4f2b: $8d
    cp l                                          ; $4f2c: $bd
    ld d, $d6                                     ; $4f2d: $16 $d6
    dec hl                                        ; $4f2f: $2b
    inc a                                         ; $4f30: $3c
    and c                                         ; $4f31: $a1
    inc sp                                        ; $4f32: $33
    jr nc, @+$21                                  ; $4f33: $30 $1f

    db $dd                                        ; $4f35: $dd
    rrca                                          ; $4f36: $0f
    ld a, a                                       ; $4f37: $7f
    ld h, a                                       ; $4f38: $67
    sbc c                                         ; $4f39: $99
    rst $28                                       ; $4f3a: $ef
    cpl                                           ; $4f3b: $2f
    ld e, l                                       ; $4f3c: $5d
    nop                                           ; $4f3d: $00
    db $fc                                        ; $4f3e: $fc
    cp a                                          ; $4f3f: $bf
    sub b                                         ; $4f40: $90
    rst $28                                       ; $4f41: $ef
    ld c, $e1                                     ; $4f42: $0e $e1
    add hl, sp                                    ; $4f44: $39
    cpl                                           ; $4f45: $2f
    jr jr_05b_4edd                                ; $4f46: $18 $95

    ld a, a                                       ; $4f48: $7f
    and l                                         ; $4f49: $a5
    ld [$7abf], sp                                ; $4f4a: $08 $bf $7a
    ld [hl], h                                    ; $4f4d: $74
    rrca                                          ; $4f4e: $0f
    ld hl, sp-$1b                                 ; $4f4f: $f8 $e5
    ccf                                           ; $4f51: $3f
    ei                                            ; $4f52: $fb
    ld [$bf87], a                                 ; $4f53: $ea $87 $bf
    inc [hl]                                      ; $4f56: $34
    cp a                                          ; $4f57: $bf
    call z, $02fe                                 ; $4f58: $cc $fe $02
    db $fc                                        ; $4f5b: $fc
    or c                                          ; $4f5c: $b1
    sub $24                                       ; $4f5d: $d6 $24
    inc l                                         ; $4f5f: $2c
    and l                                         ; $4f60: $a5
    ld e, c                                       ; $4f61: $59
    ld c, [hl]                                    ; $4f62: $4e
    and h                                         ; $4f63: $a4
    db $fc                                        ; $4f64: $fc
    ld b, a                                       ; $4f65: $47
    jp c, $eafb                                   ; $4f66: $da $fb $ea

    ld [hl], c                                    ; $4f69: $71
    ret nc                                        ; $4f6a: $d0

    db $ec                                        ; $4f6b: $ec
    dec [hl]                                      ; $4f6c: $35
    cp a                                          ; $4f6d: $bf
    ld a, [$799d]                                 ; $4f6e: $fa $9d $79
    db $db                                        ; $4f71: $db
    sbc a                                         ; $4f72: $9f
    ld l, a                                       ; $4f73: $6f
    rla                                           ; $4f74: $17
    nop                                           ; $4f75: $00
    sbc h                                         ; $4f76: $9c
    cp a                                          ; $4f77: $bf
    dec a                                         ; $4f78: $3d
    ld d, c                                       ; $4f79: $51
    ld d, $a5                                     ; $4f7a: $16 $a5
    adc c                                         ; $4f7c: $89
    xor h                                         ; $4f7d: $ac
    or a                                          ; $4f7e: $b7
    and b                                         ; $4f7f: $a0
    nop                                           ; $4f80: $00
    cp h                                          ; $4f81: $bc
    reti                                          ; $4f82: $d9


    add hl, sp                                    ; $4f83: $39
    inc h                                         ; $4f84: $24
    ei                                            ; $4f85: $fb
    xor l                                         ; $4f86: $ad
    ld c, e                                       ; $4f87: $4b
    db $fc                                        ; $4f88: $fc
    ld h, h                                       ; $4f89: $64
    ld b, [hl]                                    ; $4f8a: $46
    jp nz, $8a52                                  ; $4f8b: $c2 $52 $8a

    daa                                           ; $4f8e: $27
    ld e, a                                       ; $4f8f: $5f
    ld e, e                                       ; $4f90: $5b
    ld a, l                                       ; $4f91: $7d

Jump_05b_4f92:
    cp $5b                                        ; $4f92: $fe $5b
    sub a                                         ; $4f94: $97
    ld hl, sp+$37                                 ; $4f95: $f8 $37
    ld l, h                                       ; $4f97: $6c
    ld a, e                                       ; $4f98: $7b
    ld [hl], d                                    ; $4f99: $72
    jp hl                                         ; $4f9a: $e9


    ld e, $a3                                     ; $4f9b: $1e $a3
    and e                                         ; $4f9d: $a3
    sub d                                         ; $4f9e: $92
    adc d                                         ; $4f9f: $8a
    ld l, [hl]                                    ; $4fa0: $6e
    ld d, d                                       ; $4fa1: $52
    adc d                                         ; $4fa2: $8a
    daa                                           ; $4fa3: $27
    ld e, a                                       ; $4fa4: $5f
    or e                                          ; $4fa5: $b3
    or a                                          ; $4fa6: $b7
    dec d                                         ; $4fa7: $15
    sbc [hl]                                      ; $4fa8: $9e
    ld d, l                                       ; $4fa9: $55
    cp d                                          ; $4faa: $ba
    inc l                                         ; $4fab: $2c
    ld e, a                                       ; $4fac: $5f
    ld l, $28                                     ; $4fad: $2e $28
    nop                                           ; $4faf: $00
    ret nc                                        ; $4fb0: $d0

    and l                                         ; $4fb1: $a5
    ld b, [hl]                                    ; $4fb2: $46
    db $db                                        ; $4fb3: $db
    rst $38                                       ; $4fb4: $ff
    cp d                                          ; $4fb5: $ba
    db $e4                                        ; $4fb6: $e4
    pop af                                        ; $4fb7: $f1
    jr jr_05b_5021                                ; $4fb8: $18 $67

    ld l, l                                       ; $4fba: $6d
    push hl                                       ; $4fbb: $e5
    ld hl, $a3cb                                  ; $4fbc: $21 $cb $a3
    cp a                                          ; $4fbf: $bf
    db $e4                                        ; $4fc0: $e4
    ld l, a                                       ; $4fc1: $6f
    ld d, e                                       ; $4fc2: $53
    ld c, [hl]                                    ; $4fc3: $4e
    and l                                         ; $4fc4: $a5
    ld e, $29                                     ; $4fc5: $1e $29
    sbc [hl]                                      ; $4fc7: $9e
    ld e, a                                       ; $4fc8: $5f
    adc e                                         ; $4fc9: $8b
    sub [hl]                                      ; $4fca: $96
    rst $38                                       ; $4fcb: $ff
    inc l                                         ; $4fcc: $2c
    xor $7b                                       ; $4fcd: $ee $7b
    ld c, e                                       ; $4fcf: $4b
    cp a                                          ; $4fd0: $bf
    add [hl]                                      ; $4fd1: $86
    ld l, e                                       ; $4fd2: $6b
    or $97                                        ; $4fd3: $f6 $97
    inc e                                         ; $4fd5: $1c
    ld h, b                                       ; $4fd6: $60
    ld d, d                                       ; $4fd7: $52
    ld [hl], e                                    ; $4fd8: $73
    or a                                          ; $4fd9: $b7
    ld [hl], c                                    ; $4fda: $71
    jp c, $e6be                                   ; $4fdb: $da $be $e6

    rrca                                          ; $4fde: $0f
    rra                                           ; $4fdf: $1f
    rst $10                                       ; $4fe0: $d7
    ld a, [$8293]                                 ; $4fe1: $fa $93 $82
    ld e, a                                       ; $4fe4: $5f
    ld l, c                                       ; $4fe5: $69
    sub [hl]                                      ; $4fe6: $96
    inc de                                        ; $4fe7: $13
    jp hl                                         ; $4fe8: $e9


    cp $9e                                        ; $4fe9: $fe $9e
    rst $38                                       ; $4feb: $ff
    ld [c], a                                     ; $4fec: $e2
    rst $08                                       ; $4fed: $cf
    ld c, [hl]                                    ; $4fee: $4e
    and $7f                                       ; $4fef: $e6 $7f
    ld a, [hl-]                                   ; $4ff1: $3a
    rst $38                                       ; $4ff2: $ff
    db $eb                                        ; $4ff3: $eb
    ld [bc], a                                    ; $4ff4: $02
    inc e                                         ; $4ff5: $1c
    rst $20                                       ; $4ff6: $e7
    db $fc                                        ; $4ff7: $fc
    rst $10                                       ; $4ff8: $d7
    ld b, h                                       ; $4ff9: $44
    db $d3                                        ; $4ffa: $d3
    dec e                                         ; $4ffb: $1d
    add d                                         ; $4ffc: $82
    ld d, c                                       ; $4ffd: $51
    ld sp, hl                                     ; $4ffe: $f9
    sbc a                                         ; $4fff: $9f
    ld a, e                                       ; $5000: $7b
    or a                                          ; $5001: $b7
    rra                                           ; $5002: $1f
    ld a, [bc]                                    ; $5003: $0a
    nop                                           ; $5004: $00
    cp h                                          ; $5005: $bc
    reti                                          ; $5006: $d9


    add hl, sp                                    ; $5007: $39
    and h                                         ; $5008: $a4
    ld sp, hl                                     ; $5009: $f9
    ld a, e                                       ; $500a: $7b
    ret                                           ; $500b: $c9


    jp $8ef4                                      ; $500c: $c3 $f4 $8e


    xor $38                                       ; $500f: $ee $38
    ld d, c                                       ; $5011: $51
    jp z, $4b7f                                   ; $5012: $ca $7f $4b

    add hl, sp                                    ; $5015: $39
    and l                                         ; $5016: $a5
    ld d, h                                       ; $5017: $54
    rst $10                                       ; $5018: $d7
    ld [hl], l                                    ; $5019: $75
    ld bc, $976e                                  ; $501a: $01 $6e $97
    ld a, l                                       ; $501d: $7d
    xor l                                         ; $501e: $ad
    ld h, d                                       ; $501f: $62
    push de                                       ; $5020: $d5

jr_05b_5021:
    cp b                                          ; $5021: $b8
    rst $30                                       ; $5022: $f7
    sub $e8                                       ; $5023: $d6 $e8
    ld c, e                                       ; $5025: $4b
    inc e                                         ; $5026: $1c
    daa                                           ; $5027: $27
    ld e, d                                       ; $5028: $5a
    ld sp, hl                                     ; $5029: $f9
    and a                                         ; $502a: $a7
    ld a, c                                       ; $502b: $79
    call c, $6afe                                 ; $502c: $dc $fe $6a
    adc [hl]                                      ; $502f: $8e
    dec l                                         ; $5030: $2d
    sbc l                                         ; $5031: $9d
    ld sp, $d6ce                                  ; $5032: $31 $ce $d6
    db $fc                                        ; $5035: $fc
    xor a                                         ; $5036: $af
    and h                                         ; $5037: $a4
    ld a, b                                       ; $5038: $78
    sbc [hl]                                      ; $5039: $9e
    or c                                          ; $503a: $b1
    ld c, h                                       ; $503b: $4c
    ld c, $b1                                     ; $503c: $0e $b1
    dec sp                                        ; $503e: $3b
    ret c                                         ; $503f: $d8

    dec b                                         ; $5040: $05
    nop                                           ; $5041: $00
    inc e                                         ; $5042: $1c
    and l                                         ; $5043: $a5
    dec a                                         ; $5044: $3d
    scf                                           ; $5045: $37
    jp nz, Jump_05b_7f2f                          ; $5046: $c2 $2f $7f

jr_05b_5049:
    ld hl, $4e71                                  ; $5049: $21 $71 $4e
    sub $49                                       ; $504c: $d6 $49
    push hl                                       ; $504e: $e5
    cp a                                          ; $504f: $bf
    cp d                                          ; $5050: $ba
    or a                                          ; $5051: $b7
    add hl, bc                                    ; $5052: $09
    ld a, [bc]                                    ; $5053: $0a
    nop                                           ; $5054: $00
    ld a, h                                       ; $5055: $7c

jr_05b_5056:
    ld h, e                                       ; $5056: $63
    xor l                                         ; $5057: $ad
    cp a                                          ; $5058: $bf
    sub d                                         ; $5059: $92
    sbc d                                         ; $505a: $9a
    and e                                         ; $505b: $a3
    add h                                         ; $505c: $84
    cp $da                                        ; $505d: $fe $da
    adc h                                         ; $505f: $8c
    or e                                          ; $5060: $b3
    dec h                                         ; $5061: $25
    cp $ec                                        ; $5062: $fe $ec
    ld h, h                                       ; $5064: $64
    cp $a7                                        ; $5065: $fe $a7
    di                                            ; $5067: $f3
    call Call_000_12fe                            ; $5068: $cd $fe $12
    rst $20                                       ; $506b: $e7
    sbc a                                         ; $506c: $9f
    rst $00                                       ; $506d: $c7
    ld a, h                                       ; $506e: $7c
    xor l                                         ; $506f: $ad
    ld e, a                                       ; $5070: $5f
    ld a, $91                                     ; $5071: $3e $91
    xor l                                         ; $5073: $ad
    ld a, d                                       ; $5074: $7a
    ld d, h                                       ; $5075: $54
    push bc                                       ; $5076: $c5
    sbc [hl]                                      ; $5077: $9e
    inc de                                        ; $5078: $13
    ld a, [hl+]                                   ; $5079: $2a
    db $f4                                        ; $507a: $f4
    db $e3                                        ; $507b: $e3
    xor l                                         ; $507c: $ad
    rst $30                                       ; $507d: $f7
    ld [bc], a                                    ; $507e: $02
    inc e                                         ; $507f: $1c
    ld a, [hl]                                    ; $5080: $7e
    ld [hl], h                                    ; $5081: $74
    rst $38                                       ; $5082: $ff
    ld c, a                                       ; $5083: $4f
    sub h                                         ; $5084: $94
    rst $08                                       ; $5085: $cf
    jr nc, jr_05b_5049                            ; $5086: $30 $c1

    jr nc, jr_05b_50cd                            ; $5088: $30 $43

    or [hl]                                       ; $508a: $b6
    ld [c], a                                     ; $508b: $e2
    ld h, b                                       ; $508c: $60
    sbc a                                         ; $508d: $9f
    add a                                         ; $508e: $87
    ld l, h                                       ; $508f: $6c
    ld l, e                                       ; $5090: $6b
    inc a                                         ; $5091: $3c
    sub h                                         ; $5092: $94
    ld a, b                                       ; $5093: $78
    xor b                                         ; $5094: $a8
    inc d                                         ; $5095: $14
    xor e                                         ; $5096: $ab
    ld a, h                                       ; $5097: $7c
    rst $30                                       ; $5098: $f7
    adc [hl]                                      ; $5099: $8e
    ld l, c                                       ; $509a: $69
    xor e                                         ; $509b: $ab
    db $fc                                        ; $509c: $fc
    ld [hl], a                                    ; $509d: $77
    adc [hl]                                      ; $509e: $8e
    xor $af                                       ; $509f: $ee $af
    pop de                                        ; $50a1: $d1
    jp nz, $f913                                  ; $50a2: $c2 $13 $f9

    sub a                                         ; $50a5: $97
    ld [hl], $fd                                  ; $50a6: $36 $fd
    ld [de], a                                    ; $50a8: $12
    sbc $af                                       ; $50a9: $de $af
    ld l, l                                       ; $50ab: $6d
    adc e                                         ; $50ac: $8b
    ld [hl-], a                                   ; $50ad: $32
    cp d                                          ; $50ae: $ba
    nop                                           ; $50af: $00
    inc e                                         ; $50b0: $1c
    ld h, a                                       ; $50b1: $67
    ld c, e                                       ; $50b2: $4b
    ld b, l                                       ; $50b3: $45
    inc sp                                        ; $50b4: $33
    ld a, [c]                                     ; $50b5: $f2
    dec l                                         ; $50b6: $2d
    xor d                                         ; $50b7: $aa
    dec d                                         ; $50b8: $15
    adc h                                         ; $50b9: $8c
    dec [hl]                                      ; $50ba: $35
    ld b, a                                       ; $50bb: $47
    add hl, hl                                    ; $50bc: $29
    and l                                         ; $50bd: $a5
    sbc e                                         ; $50be: $9b
    jr jr_05b_5056                                ; $50bf: $18 $95

    jp nc, Jump_05b_6f4f                          ; $50c1: $d2 $4f $6f

    inc l                                         ; $50c4: $2c
    call $e071                                    ; $50c5: $cd $71 $e0
    or b                                          ; $50c8: $b0
    add hl, de                                    ; $50c9: $19
    daa                                           ; $50ca: $27
    ld a, [c]                                     ; $50cb: $f2
    cpl                                           ; $50cc: $2f

jr_05b_50cd:
    dec [hl]                                      ; $50cd: $35
    pop de                                        ; $50ce: $d1
    add hl, sp                                    ; $50cf: $39
    and h                                         ; $50d0: $a4
    add $35                                       ; $50d1: $c6 $35
    ld a, e                                       ; $50d3: $7b
    ld h, l                                       ; $50d4: $65
    ld e, h                                       ; $50d5: $5c
    ld b, l                                       ; $50d6: $45
    sub a                                         ; $50d7: $97
    ld hl, sp+$46                                 ; $50d8: $f8 $46
    rst $30                                       ; $50da: $f7
    dec hl                                        ; $50db: $2b
    jp nc, $b249                                  ; $50dc: $d2 $49 $b2

    db $10                                        ; $50df: $10
    sbc [hl]                                      ; $50e0: $9e
    ld d, l                                       ; $50e1: $55
    cp $5b                                        ; $50e2: $fe $5b
    cp d                                          ; $50e4: $ba
    scf                                           ; $50e5: $37
    adc $ce                                       ; $50e6: $ce $ce
    sub c                                         ; $50e8: $91
    ld l, a                                       ; $50e9: $6f
    rrca                                          ; $50ea: $0f
    db $eb                                        ; $50eb: $eb
    cp a                                          ; $50ec: $bf
    nop                                           ; $50ed: $00
    sbc h                                         ; $50ee: $9c
    ld [hl], c                                    ; $50ef: $71
    ld a, [hl]                                    ; $50f0: $7e
    rst $08                                       ; $50f1: $cf
    sub [hl]                                      ; $50f2: $96
    ld a, d                                       ; $50f3: $7a
    and b                                         ; $50f4: $a0
    reti                                          ; $50f5: $d9


    dec hl                                        ; $50f6: $2b
    jr jr_05b_514a                                ; $50f7: $18 $51

    sub c                                         ; $50f9: $91
    or $f4                                        ; $50fa: $f6 $f4
    rst $10                                       ; $50fc: $d7
    dec hl                                        ; $50fd: $2b
    rst $38                                       ; $50fe: $ff
    ld c, d                                       ; $50ff: $4a
    rst $38                                       ; $5100: $ff
    push hl                                       ; $5101: $e5
    ld a, $9e                                     ; $5102: $3e $9e
    ld b, l                                       ; $5104: $45
    pop af                                        ; $5105: $f1
    ld a, l                                       ; $5106: $7d
    ld b, d                                       ; $5107: $42
    ei                                            ; $5108: $fb
    adc $cc                                       ; $5109: $ce $cc
    ld h, l                                       ; $510b: $65
    ldh a, [$7f]                                  ; $510c: $f0 $7f
    ld l, l                                       ; $510e: $6d
    ld d, d                                       ; $510f: $52
    ld a, b                                       ; $5110: $78
    and d                                         ; $5111: $a2
    inc [hl]                                      ; $5112: $34
    ld a, [bc]                                    ; $5113: $0a
    db $d3                                        ; $5114: $d3
    cp $1a                                        ; $5115: $fe $1a
    dec l                                         ; $5117: $2d
    jr jr_05b_514f                                ; $5118: $18 $35

    ld a, a                                       ; $511a: $7f
    rst $20                                       ; $511b: $e7
    ld e, h                                       ; $511c: $5c
    push hl                                       ; $511d: $e5
    ld e, a                                       ; $511e: $5f
    jp hl                                         ; $511f: $e9


    or a                                          ; $5120: $b7
    ld a, [$fe77]                                 ; $5121: $fa $77 $fe
    ld b, h                                       ; $5124: $44
    sub $bd                                       ; $5125: $d6 $bd
    ld e, c                                       ; $5127: $59
    ld a, [bc]                                    ; $5128: $0a
    ld e, c                                       ; $5129: $59
    db $eb                                        ; $512a: $eb
    jr c, jr_05b_5164                             ; $512b: $38 $37

    push de                                       ; $512d: $d5
    ld e, [hl]                                    ; $512e: $5e
    nop                                           ; $512f: $00
    db $fc                                        ; $5130: $fc
    ld b, h                                       ; $5131: $44
    rst $20                                       ; $5132: $e7
    sub b                                         ; $5133: $90
    ld a, [$a0df]                                 ; $5134: $fa $df $a0
    call nz, $fa51                                ; $5137: $c4 $51 $fa
    xor l                                         ; $513a: $ad
    rst $10                                       ; $513b: $d7
    dec a                                         ; $513c: $3d
    and $e7                                       ; $513d: $e6 $e7
    xor a                                         ; $513f: $af
    and d                                         ; $5140: $a2
    inc d                                         ; $5141: $14
    ld b, d                                       ; $5142: $42
    or d                                          ; $5143: $b2
    xor l                                         ; $5144: $ad
    pop af                                        ; $5145: $f1
    ld a, [c]                                     ; $5146: $f2
    ld a, h                                       ; $5147: $7c
    rst $10                                       ; $5148: $d7
    ld a, [de]                                    ; $5149: $1a

jr_05b_514a:
    rst $20                                       ; $514a: $e7
    add b                                         ; $514b: $80
    rst $38                                       ; $514c: $ff
    sbc h                                         ; $514d: $9c
    ld c, a                                       ; $514e: $4f

jr_05b_514f:
    jp z, Jump_05b_7621                           ; $514f: $ca $21 $76

    rlca                                          ; $5152: $07
    cp e                                          ; $5153: $bb
    nop                                           ; $5154: $00
    sbc h                                         ; $5155: $9c
    ld e, a                                       ; $5156: $5f
    xor b                                         ; $5157: $a8
    ld c, $96                                     ; $5158: $0e $96
    rst $00                                       ; $515a: $c7
    jp c, $dc92                                   ; $515b: $da $92 $dc

    dec de                                        ; $515e: $1b
    or a                                          ; $515f: $b7
    rst $30                                       ; $5160: $f7
    daa                                           ; $5161: $27
    jr nz, @-$36                                  ; $5162: $20 $c8

jr_05b_5164:
    ld [c], a                                     ; $5164: $e2
    sbc h                                         ; $5165: $9c
    ld c, b                                       ; $5166: $48
    adc d                                         ; $5167: $8a
    rst $20                                       ; $5168: $e7

jr_05b_5169:
    add hl, de                                    ; $5169: $19
    sra [hl]                                      ; $516a: $cb $2e
    nop                                           ; $516c: $00
    ret nc                                        ; $516d: $d0

    xor e                                         ; $516e: $ab
    ld a, h                                       ; $516f: $7c
    db $e3                                        ; $5170: $e3
    ld d, b                                       ; $5171: $50
    ld d, d                                       ; $5172: $52
    rst $30                                       ; $5173: $f7
    sub $28                                       ; $5174: $d6 $28
    dec [hl]                                      ; $5176: $35
    ld h, l                                       ; $5177: $65
    sbc l                                         ; $5178: $9d
    ld h, l                                       ; $5179: $65
    jp z, Jump_000_2037                           ; $517a: $ca $37 $20

    and h                                         ; $517d: $a4
    and [hl]                                      ; $517e: $a6
    sbc e                                         ; $517f: $9b
    db $f4                                        ; $5180: $f4
    ld sp, hl                                     ; $5181: $f9
    ld l, a                                       ; $5182: $6f
    xor c                                         ; $5183: $a9
    ld a, a                                       ; $5184: $7f
    cp $da                                        ; $5185: $fe $da
    sub $05                                       ; $5187: $d6 $05
    nop                                           ; $5189: $00
    ld c, $19                                     ; $518a: $0e $19
    ld h, $18                                     ; $518c: $26 $18
    ld h, [hl]                                    ; $518e: $66
    ret z                                         ; $518f: $c8

    ld d, [hl]                                    ; $5190: $56
    xor $6c                                       ; $5191: $ee $6c
    sub l                                         ; $5193: $95
    ld b, c                                       ; $5194: $41
    ld bc, $275e                                  ; $5195: $01 $5e $27
    sbc d                                         ; $5198: $9a
    ld l, b                                       ; $5199: $68
    and d                                         ; $519a: $a2
    rst $10                                       ; $519b: $d7
    ld [hl], l                                    ; $519c: $75
    push bc                                       ; $519d: $c5
    and $d4                                       ; $519e: $e6 $d4
    sub e                                         ; $51a0: $93
    sub h                                         ; $51a1: $94
    add [hl]                                      ; $51a2: $86
    or d                                          ; $51a3: $b2
    ei                                            ; $51a4: $fb
    ld h, $d6                                     ; $51a5: $26 $d6
    ld d, h                                       ; $51a7: $54
    ld de, $549d                                  ; $51a8: $11 $9d $54
    ld [hl], h                                    ; $51ab: $74
    sub e                                         ; $51ac: $93
    db $fc                                        ; $51ad: $fc
    pop bc                                        ; $51ae: $c1
    add $1c                                       ; $51af: $c6 $1c
    rst $30                                       ; $51b1: $f7
    ld a, [bc]                                    ; $51b2: $0a
    rst $08                                       ; $51b3: $cf
    ld l, d                                       ; $51b4: $6a
    db $db                                        ; $51b5: $db
    ld b, d                                       ; $51b6: $42
    ld l, a                                       ; $51b7: $6f
    ei                                            ; $51b8: $fb
    ld h, [hl]                                    ; $51b9: $66
    xor a                                         ; $51ba: $af
    cp $9d                                        ; $51bb: $fe $9d
    sbc a                                         ; $51bd: $9f
    db $e3                                        ; $51be: $e3
    sbc $bf                                       ; $51bf: $de $bf
    dec d                                         ; $51c1: $15
    ld [hl], l                                    ; $51c2: $75
    ld e, l                                       ; $51c3: $5d
    sub a                                         ; $51c4: $97
    ld a, [hl]                                    ; $51c5: $7e
    sub e                                         ; $51c6: $93
    ld c, d                                       ; $51c7: $4a
    ld h, e                                       ; $51c8: $63
    push bc                                       ; $51c9: $c5
    di                                            ; $51ca: $f3
    adc h                                         ; $51cb: $8c
    ld h, l                                       ; $51cc: $65
    rla                                           ; $51cd: $17
    nop                                           ; $51ce: $00
    ld a, h                                       ; $51cf: $7c
    ld e, e                                       ; $51d0: $5b
    db $e3                                        ; $51d1: $e3
    sbc h                                         ; $51d2: $9c
    rla                                           ; $51d3: $17
    sub [hl]                                      ; $51d4: $96
    ld a, [hl+]                                   ; $51d5: $2a
    ld l, e                                       ; $51d6: $6b
    ld e, c                                       ; $51d7: $59
    jr z, jr_05b_5169                             ; $51d8: $28 $8f

    sub e                                         ; $51da: $93
    ld [c], a                                     ; $51db: $e2
    ld b, h                                       ; $51dc: $44
    sub $bd                                       ; $51dd: $d6 $bd
    ld c, c                                       ; $51df: $49
    pop bc                                        ; $51e0: $c1
    ld l, b                                       ; $51e1: $68
    or $c2                                        ; $51e2: $f6 $c2
    ld [de], a                                    ; $51e4: $12
    rst $28                                       ; $51e5: $ef

jr_05b_51e6:
    or d                                          ; $51e6: $b2
    add hl, de                                    ; $51e7: $19
    rla                                           ; $51e8: $17
    nop                                           ; $51e9: $00
    cp h                                          ; $51ea: $bc
    reti                                          ; $51eb: $d9


    add hl, sp                                    ; $51ec: $39
    sub h                                         ; $51ed: $94
    call nc, $e319                                ; $51ee: $d4 $19 $e3
    ld b, h                                       ; $51f1: $44
    add hl, hl                                    ; $51f2: $29
    cp d                                          ; $51f3: $ba
    ld c, c                                       ; $51f4: $49
    ld c, l                                       ; $51f5: $4d
    scf                                           ; $51f6: $37
    add hl, bc                                    ; $51f7: $09
    ld c, e                                       ; $51f8: $4b
    ldh a, [rNR23]                                ; $51f9: $f0 $18
    ld l, h                                       ; $51fb: $6c
    ld h, l                                       ; $51fc: $65
    ld hl, $fbfb                                  ; $51fd: $21 $fb $fb
    dec [hl]                                      ; $5200: $35
    sub c                                         ; $5201: $91
    ld [hl], l                                    ; $5202: $75
    rst $28                                       ; $5203: $ef
    dec h                                         ; $5204: $25
    rrca                                          ; $5205: $0f
    adc l                                         ; $5206: $8d
    ld l, h                                       ; $5207: $6c
    sub l                                         ; $5208: $95
    cp $19                                        ; $5209: $fe $19
    cp a                                          ; $520b: $bf
    or [hl]                                       ; $520c: $b6
    jp z, $dd9f                                   ; $520d: $ca $9f $dd

    ld l, a                                       ; $5210: $6f
    cp l                                          ; $5211: $bd
    ld a, [$7fea]                                 ; $5212: $fa $ea $7f
    ld e, c                                       ; $5215: $59
    sub h                                         ; $5216: $94
    ld l, h                                       ; $5217: $6c
    ld l, e                                       ; $5218: $6b
    sbc h                                         ; $5219: $9c
    inc de                                        ; $521a: $13
    rla                                           ; $521b: $17
    nop                                           ; $521c: $00
    cp h                                          ; $521d: $bc
    cp e                                          ; $521e: $bb
    adc l                                         ; $521f: $8d
    sub [hl]                                      ; $5220: $96
    sub h                                         ; $5221: $94
    rst $08                                       ; $5222: $cf
    jr nc, jr_05b_51e6                            ; $5223: $30 $c1

    jr nc, jr_05b_526a                            ; $5225: $30 $43

    or [hl]                                       ; $5227: $b6
    ld [hl], d                                    ; $5228: $72
    ld h, a                                       ; $5229: $67
    xor e                                         ; $522a: $ab
    adc h                                         ; $522b: $8c
    dec de                                        ; $522c: $1b
    nop                                           ; $522d: $00
    db $fc                                        ; $522e: $fc
    and e                                         ; $522f: $a3
    ld a, d                                       ; $5230: $7a
    add l                                         ; $5231: $85
    dec h                                         ; $5232: $25
    sbc a                                         ; $5233: $9f
    xor b                                         ; $5234: $a8
    dec sp                                        ; $5235: $3b
    xor e                                         ; $5236: $ab
    xor h                                         ; $5237: $ac
    xor a                                         ; $5238: $af
    db $eb                                        ; $5239: $eb
    cp d                                          ; $523a: $ba
    ld [de], a                                    ; $523b: $12
    ld c, l                                       ; $523c: $4d
    inc [hl]                                      ; $523d: $34
    pop de                                        ; $523e: $d1
    ld b, h                                       ; $523f: $44
    inc de                                        ; $5240: $13
    ld c, l                                       ; $5241: $4d
    db $f4                                        ; $5242: $f4
    cp d                                          ; $5243: $ba
    xor [hl]                                      ; $5244: $ae
    db $eb                                        ; $5245: $eb
    ld [bc], a                                    ; $5246: $02
    ld e, [hl]                                    ; $5247: $5e
    daa                                           ; $5248: $27
    sbc d                                         ; $5249: $9a
    ld l, b                                       ; $524a: $68
    and d                                         ; $524b: $a2
    rst $10                                       ; $524c: $d7
    ld [hl], l                                    ; $524d: $75
    ld e, l                                       ; $524e: $5d
    nop                                           ; $524f: $00
    inc e                                         ; $5250: $1c
    dec [hl]                                      ; $5251: $35
    ld d, c                                       ; $5252: $51
    ld c, l                                       ; $5253: $4d
    ld [hl], h                                    ; $5254: $74
    ld c, $a9                                     ; $5255: $0e $a9
    sbc a                                         ; $5257: $9f
    ld c, l                                       ; $5258: $4d
    call c, Call_000_261e                         ; $5259: $dc $1e $26
    db $f4                                        ; $525c: $f4
    db $fd                                        ; $525d: $fd
    ld a, l                                       ; $525e: $7d
    pop bc                                        ; $525f: $c1
    ret c                                         ; $5260: $d8

    cp a                                          ; $5261: $bf
    and l                                         ; $5262: $a5
    db $fc                                        ; $5263: $fc
    ld d, a                                       ; $5264: $57
    dec [hl]                                      ; $5265: $35
    and $1c                                       ; $5266: $e6 $1c
    cpl                                           ; $5268: $2f
    sbc a                                         ; $5269: $9f

jr_05b_526a:
    ld [hl], $a7                                  ; $526a: $36 $a7
    ld d, c                                       ; $526c: $51

Jump_05b_526d:
    ei                                            ; $526d: $fb
    ld d, b                                       ; $526e: $50
    nop                                           ; $526f: $00
    ld e, $a1                                     ; $5270: $1e $a1
    rst $38                                       ; $5272: $ff
    ld h, $2c                                     ; $5273: $26 $2c
    ld [hl], l                                    ; $5275: $75
    halt                                          ; $5276: $76
    adc h                                         ; $5277: $8c
    call nc, Call_05b_7aa3                        ; $5278: $d4 $a3 $7a
    cpl                                           ; $527b: $2f
    ld [hl], c                                    ; $527c: $71
    sbc h                                         ; $527d: $9c
    or l                                          ; $527e: $b5

jr_05b_527f:
    sub l                                         ; $527f: $95
    cp a                                          ; $5280: $bf
    ld c, l                                       ; $5281: $4d
    sub l                                         ; $5282: $95
    or l                                          ; $5283: $b5
    or b                                          ; $5284: $b0
    ei                                            ; $5285: $fb
    ld e, a                                       ; $5286: $5f
    jr nc, jr_05b_527f                            ; $5287: $30 $f6

    ld l, a                                       ; $5289: $6f
    jp hl                                         ; $528a: $e9


    adc h                                         ; $528b: $8c
    add hl, de                                    ; $528c: $19
    rst $30                                       ; $528d: $f7
    ld e, d                                       ; $528e: $5a
    rst $38                                       ; $528f: $ff
    dec b                                         ; $5290: $05
    nop                                           ; $5291: $00
    ld c, $69                                     ; $5292: $0e $69
    ld [hl], e                                    ; $5294: $73
    and d                                         ; $5295: $a2
    and h                                         ; $5296: $a4
    ld a, h                                       ; $5297: $7c
    add [hl]                                      ; $5298: $86
    add hl, bc                                    ; $5299: $09
    add [hl]                                      ; $529a: $86
    add hl, de                                    ; $529b: $19
    or d                                          ; $529c: $b2
    sub l                                         ; $529d: $95
    rst $00                                       ; $529e: $c7
    db $eb                                        ; $529f: $eb
    ld b, a                                       ; $52a0: $47
    ld l, a                                       ; $52a1: $6f
    ld e, a                                       ; $52a2: $5f
    nop                                           ; $52a3: $00
    db $fc                                        ; $52a4: $fc
    ld [hl], h                                    ; $52a5: $74
    ld d, e                                       ; $52a6: $53
    ret                                           ; $52a7: $c9


    and a                                         ; $52a8: $a7
    call $94a9                                    ; $52a9: $cd $a9 $94
    ld a, $83                                     ; $52ac: $3e $83
    ld [hl], c                                    ; $52ae: $71
    ld a, e                                       ; $52af: $7b
    ld c, h                                       ; $52b0: $4c
    dec bc                                        ; $52b1: $0b
    or e                                          ; $52b2: $b3
    rst $10                                       ; $52b3: $d7
    pop bc                                        ; $52b4: $c1
    ld l, l                                       ; $52b5: $6d
    db $db                                        ; $52b6: $db
    ei                                            ; $52b7: $fb
    ld c, $d9                                     ; $52b8: $0e $d9
    jr c, jr_05b_531b                             ; $52ba: $38 $5f

    ld a, [hl-]                                   ; $52bc: $3a
    or c                                          ; $52bd: $b1
    ldh a, [$b8]                                  ; $52be: $f0 $b8
    rst $38                                       ; $52c0: $ff
    ld c, e                                       ; $52c1: $4b
    ld a, e                                       ; $52c2: $7b
    xor $37                                       ; $52c3: $ee $37
    ei                                            ; $52c5: $fb
    ld c, e                                       ; $52c6: $4b
    cp h                                          ; $52c7: $bc
    and e                                         ; $52c8: $a3
    ld h, h                                       ; $52c9: $64
    ld e, e                                       ; $52ca: $5b
    and h                                         ; $52cb: $a4
    jp z, $165a                                   ; $52cc: $ca $5a $16

    ld l, e                                       ; $52cf: $6b
    ret c                                         ; $52d0: $d8

    or d                                          ; $52d1: $b2
    db $dd                                        ; $52d2: $dd
    and d                                         ; $52d3: $a2
    and h                                         ; $52d4: $a4
    ld a, b                                       ; $52d5: $78
    sbc [hl]                                      ; $52d6: $9e
    or c                                          ; $52d7: $b1
    inc l                                         ; $52d8: $2c
    xor c                                         ; $52d9: $a9
    jp c, $e52d                                   ; $52da: $da $2d $e5

    cp b                                          ; $52dd: $b8
    xor l                                         ; $52de: $ad
    db $fc                                        ; $52df: $fc
    ld [hl], a                                    ; $52e0: $77
    adc $57                                       ; $52e1: $ce $57
    ld d, c                                       ; $52e3: $51
    sub $4d                                       ; $52e4: $d6 $4d
    and h                                         ; $52e6: $a4
    ei                                            ; $52e7: $fb
    rst $08                                       ; $52e8: $cf
    reti                                          ; $52e9: $d9


    cp a                                          ; $52ea: $bf
    nop                                           ; $52eb: $00
    inc a                                         ; $52ec: $3c
    ld d, h                                       ; $52ed: $54
    ld d, c                                       ; $52ee: $51
    jp nz, $b6b3                                  ; $52ef: $c2 $b3 $b6

    ld a, [c]                                     ; $52f2: $f2
    or a                                          ; $52f3: $b7
    xor c                                         ; $52f4: $a9
    or d                                          ; $52f5: $b2
    ld d, [hl]                                    ; $52f6: $56
    cp $67                                        ; $52f7: $fe $67
    ei                                            ; $52f9: $fb
    ld [hl], l                                    ; $52fa: $75
    ld l, a                                       ; $52fb: $6f
    adc l                                         ; $52fc: $8d
    cp [hl]                                       ; $52fd: $be
    call nz, Call_000_0cf3                        ; $52fe: $c4 $f3 $0c
    add $ed                                       ; $5301: $c6 $ed
    adc [hl]                                      ; $5303: $8e
    or e                                          ; $5304: $b3
    and l                                         ; $5305: $a5
    rst $18                                       ; $5306: $df
    ld sp, hl                                     ; $5307: $f9
    ld l, e                                       ; $5308: $6b
    ld [hl], c                                    ; $5309: $71
    rst $18                                       ; $530a: $df
    ld e, e                                       ; $530b: $5b
    add d                                         ; $530c: $82
    ld e, a                                       ; $530d: $5f
    or $5b                                        ; $530e: $f6 $5b
    or d                                          ; $5310: $b2
    ld [hl], c                                    ; $5311: $71
    cp [hl]                                       ; $5312: $be
    inc b                                         ; $5313: $04
    and e                                         ; $5314: $a3
    xor $38                                       ; $5315: $ee $38
    inc sp                                        ; $5317: $33
    or [hl]                                       ; $5318: $b6
    ld [hl], h                                    ; $5319: $74
    ld h, d                                       ; $531a: $62

jr_05b_531b:
    pop hl                                        ; $531b: $e1
    ld [hl], c                                    ; $531c: $71
    rst $38                                       ; $531d: $ff
    rst $10                                       ; $531e: $d7
    dec b                                         ; $531f: $05
    nop                                           ; $5320: $00
    sbc [hl]                                      ; $5321: $9e
    rst $38                                       ; $5322: $ff
    ld c, b                                       ; $5323: $48
    ld a, [bc]                                    ; $5324: $0a
    ld c, a                                       ; $5325: $4f
    or h                                          ; $5326: $b4
    ld a, [de]                                    ; $5327: $1a
    ld l, l                                       ; $5328: $6d
    ld [hl], l                                    ; $5329: $75
    ld a, a                                       ; $532a: $7f
    jp c, $bf9f                                   ; $532b: $da $9f $bf

    ld a, [c]                                     ; $532e: $f2
    jr c, jr_05b_535a                             ; $532f: $38 $29

    ld e, [hl]                                    ; $5331: $5e
    ld [c], a                                     ; $5332: $e2
    db $fd                                        ; $5333: $fd
    ld [hl], $4c                                  ; $5334: $36 $4c
    jp z, Jump_05b_5b7e                           ; $5336: $ca $7e $5b

    rst $30                                       ; $5339: $f7
    sub $68                                       ; $533a: $d6 $68
    ld sp, hl                                     ; $533c: $f9
    add hl, de                                    ; $533d: $19
    rla                                           ; $533e: $17
    db $db                                        ; $533f: $db
    ld l, [hl]                                    ; $5340: $6e
    cp d                                          ; $5341: $ba
    adc c                                         ; $5342: $89
    ld c, d                                       ; $5343: $4a
    or [hl]                                       ; $5344: $b6
    rst $20                                       ; $5345: $e7
    ld e, [hl]                                    ; $5346: $5e
    xor d                                         ; $5347: $aa
    push hl                                       ; $5348: $e5
    ld b, $d0                                     ; $5349: $06 $d0
    xor e                                         ; $534b: $ab
    db $f4                                        ; $534c: $f4
    call $edc6                                    ; $534d: $cd $c6 $ed
    rst $38                                       ; $5350: $ff
    daa                                           ; $5351: $27
    push bc                                       ; $5352: $c5
    di                                            ; $5353: $f3
    adc h                                         ; $5354: $8c
    ld h, l                                       ; $5355: $65
    sub a                                         ; $5356: $97
    jr c, @+$01                                   ; $5357: $38 $ff

    ld e, e                                       ; $5359: $5b

jr_05b_535a:
    ld l, $ab                                     ; $535a: $2e $ab
    add a                                         ; $535c: $87
    rst $38                                       ; $535d: $ff
    cp $5a                                        ; $535e: $fe $5a
    ld b, a                                       ; $5360: $47
    scf                                           ; $5361: $37
    add hl, hl                                    ; $5362: $29
    call $b272                                    ; $5363: $cd $72 $b2
    ld h, $d9                                     ; $5366: $26 $d9
    ld b, b                                       ; $5368: $40
    or [hl]                                       ; $5369: $b6
    dec a                                         ; $536a: $3d
    and [hl]                                      ; $536b: $a6
    add l                                         ; $536c: $85
    push af                                       ; $536d: $f5
    ld e, a                                       ; $536e: $5f
    nop                                           ; $536f: $00
    ret nc                                        ; $5370: $d0

    xor e                                         ; $5371: $ab
    ld b, [hl]                                    ; $5372: $46
    ld c, b                                       ; $5373: $48
    sbc h                                         ; $5374: $9c
    di                                            ; $5375: $f3
    di                                            ; $5376: $f3
    cp a                                          ; $5377: $bf
    sub h                                         ; $5378: $94
    adc [hl]                                      ; $5379: $8e
    ld [hl], e                                    ; $537a: $73
    add $ed                                       ; $537b: $c6 $ed
    rst $38                                       ; $537d: $ff
    ld [hl], e                                    ; $537e: $73
    dec bc                                        ; $537f: $0b
    cp d                                          ; $5380: $ba
    daa                                           ; $5381: $27
    sub a                                         ; $5382: $97
    ldh a, [$84]                                  ; $5383: $f0 $84
    ld a, [de]                                    ; $5385: $1a
    ld l, l                                       ; $5386: $6d
    rst $38                                       ; $5387: $ff
    ld c, e                                       ; $5388: $4b
    daa                                           ; $5389: $27
    ld d, $1e                                     ; $538a: $16 $1e
    db $dd                                        ; $538c: $dd
    ld e, a                                       ; $538d: $5f
    and e                                         ; $538e: $a3
    ld h, l                                       ; $538f: $65
    db $e3                                        ; $5390: $e3
    call z, $fd7d                                 ; $5391: $cc $7d $fd

Jump_05b_5394:
    add $7d                                       ; $5394: $c6 $7d
    ld l, a                                       ; $5396: $6f
    ld b, c                                       ; $5397: $41
    adc c                                         ; $5398: $89
    di                                            ; $5399: $f3
    cp a                                          ; $539a: $bf
    push de                                       ; $539b: $d5
    inc bc                                        ; $539c: $03
    xor l                                         ; $539d: $ad
    ld e, a                                       ; $539e: $5f
    adc $3b                                       ; $539f: $ce $3b
    and a                                         ; $53a1: $a7
    ld e, $fe                                     ; $53a2: $1e $fe
    ei                                            ; $53a4: $fb
    ld l, e                                       ; $53a5: $6b
    dec e                                         ; $53a6: $1d
    db $dd                                        ; $53a7: $dd
    call nz, Call_000_000d                        ; $53a8: $c4 $0d $00
    db $fc                                        ; $53ab: $fc
    sub h                                         ; $53ac: $94
    ld b, c                                       ; $53ad: $41
    ld [c], a                                     ; $53ae: $e2
    sbc h                                         ; $53af: $9c
    or l                                          ; $53b0: $b5
    and [hl]                                      ; $53b1: $a6
    and h                                         ; $53b2: $a4
    ld a, b                                       ; $53b3: $78
    sbc [hl]                                      ; $53b4: $9e
    or c                                          ; $53b5: $b1
    adc h                                         ; $53b6: $8c
    ld e, e                                       ; $53b7: $5b
    sbc h                                         ; $53b8: $9c
    rst $38                                       ; $53b9: $ff
    dec l                                         ; $53ba: $2d
    rst $20                                       ; $53bb: $e7
    ld e, l                                       ; $53bc: $5d
    ld d, [hl]                                    ; $53bd: $56
    rrca                                          ; $53be: $0f
    rst $38                                       ; $53bf: $ff
    db $fd                                        ; $53c0: $fd
    or l                                          ; $53c1: $b5
    adc [hl]                                      ; $53c2: $8e
    ld l, [hl]                                    ; $53c3: $6e
    ld d, d                                       ; $53c4: $52
    or b                                          ; $53c5: $b0
    dec l                                         ; $53c6: $2d
    cp h                                          ; $53c7: $bc
    ld a, a                                       ; $53c8: $7f
    dec l                                         ; $53c9: $2d
    xor h                                         ; $53ca: $ac
    ld e, a                                       ; $53cb: $5f
    ld [hl], $90                                  ; $53cc: $36 $90
    ld l, l                                       ; $53ce: $6d
    adc a                                         ; $53cf: $8f
    ld l, c                                       ; $53d0: $69
    ld h, c                                       ; $53d1: $61
    db $fd                                        ; $53d2: $fd
    call c, $d000                                 ; $53d3: $dc $00 $d0
    xor l                                         ; $53d6: $ad
    cp $ad                                        ; $53d7: $fe $ad
    ld a, [de]                                    ; $53d9: $1a
    dec l                                         ; $53da: $2d
    xor h                                         ; $53db: $ac
    ld e, d                                       ; $53dc: $5a
    db $eb                                        ; $53dd: $eb
    pop af                                        ; $53de: $f1
    sbc d                                         ; $53df: $9a
    cp e                                          ; $53e0: $bb
    ld d, l                                       ; $53e1: $55
    db $db                                        ; $53e2: $db
    ld c, l                                       ; $53e3: $4d
    scf                                           ; $53e4: $37
    ld d, c                                       ; $53e5: $51
    ret                                           ; $53e6: $c9


    add $f9                                       ; $53e7: $c6 $f9
    ld d, d                                       ; $53e9: $52
    ld a, [hl-]                                   ; $53ea: $3a
    ldh a, [$5e]                                  ; $53eb: $f0 $5e
    db $ec                                        ; $53ed: $ec
    cp a                                          ; $53ee: $bf
    db $e4                                        ; $53ef: $e4
    dec d                                         ; $53f0: $15
    db $db                                        ; $53f1: $db
    adc [hl]                                      ; $53f2: $8e
    ld h, $2a                                     ; $53f3: $26 $2a
    adc l                                         ; $53f5: $8d
    ld bc, $eb09                                  ; $53f6: $01 $09 $eb
    rst $38                                       ; $53f9: $ff
    cp d                                          ; $53fa: $ba
    nop                                           ; $53fb: $00
    ld c, $50                                     ; $53fc: $0e $50
    or l                                          ; $53fe: $b5
    ld e, e                                       ; $53ff: $5b
    ld c, c                                       ; $5400: $49
    pop af                                        ; $5401: $f1
    inc a                                         ; $5402: $3c
    ld h, e                                       ; $5403: $63
    ld e, c                                       ; $5404: $59
    ld d, d                                       ; $5405: $52
    adc l                                         ; $5406: $8d
    ld l, e                                       ; $5407: $6b
    db $fd                                        ; $5408: $fd
    ld a, [c]                                     ; $5409: $f2
    add e                                         ; $540a: $83
    sub c                                         ; $540b: $91
    add hl, de                                    ; $540c: $19
    xor c                                         ; $540d: $a9
    ld a, a                                       ; $540e: $7f
    rst $20                                       ; $540f: $e7
    db $db                                        ; $5410: $db
    adc a                                         ; $5411: $8f
    db $fc                                        ; $5412: $fc
    ld l, e                                       ; $5413: $6b
    ld [hl], l                                    ; $5414: $75
    halt                                          ; $5415: $76
    rst $20                                       ; $5416: $e7
    adc h                                         ; $5417: $8c
    add sp, $4b                                   ; $5418: $e8 $4b
    db $fc                                        ; $541a: $fc
    and c                                         ; $541b: $a1
    ld a, e                                       ; $541c: $7b
    adc h                                         ; $541d: $8c
    ld c, [hl]                                    ; $541e: $4e
    ld l, d                                       ; $541f: $6a
    xor $56                                       ; $5420: $ee $56
    ld l, l                                       ; $5422: $6d
    scf                                           ; $5423: $37
    ld c, l                                       ; $5424: $4d
    ld [hl+], a                                   ; $5425: $22
    and l                                         ; $5426: $a5
    inc bc                                        ; $5427: $03
    rst $28                                       ; $5428: $ef
    push bc                                       ; $5429: $c5
    cp $0b                                        ; $542a: $fe $0b
    nop                                           ; $542c: $00
    inc a                                         ; $542d: $3c
    ld e, c                                       ; $542e: $59
    ld c, [hl]                                    ; $542f: $4e
    ld c, d                                       ; $5430: $4a
    pop af                                        ; $5431: $f1
    cp [hl]                                       ; $5432: $be
    ccf                                           ; $5433: $3f
    add hl, hl                                    ; $5434: $29
    sbc [hl]                                      ; $5435: $9e
    ld h, a                                       ; $5436: $67
    inc l                                         ; $5437: $2c
    db $e3                                        ; $5438: $e3
    sub [hl]                                      ; $5439: $96
    and a                                         ; $543a: $a7
    sbc b                                         ; $543b: $98
    adc $38                                       ; $543c: $ce $38
    dec sp                                        ; $543e: $3b
    daa                                           ; $543f: $27
    ld a, [bc]                                    ; $5440: $0a
    ld c, e                                       ; $5441: $4b
    or [hl]                                       ; $5442: $b6
    dec [hl]                                      ; $5443: $35
    xor h                                         ; $5444: $ac
    ld e, a                                       ; $5445: $5f
    reti                                          ; $5446: $d9


    pop af                                        ; $5447: $f1
    add e                                         ; $5448: $83
    cp b                                          ; $5449: $b8
    ld bc, $5b7c                                  ; $544a: $01 $7c $5b
    inc [hl]                                      ; $544d: $34
    adc c                                         ; $544e: $89
    ld c, d                                       ; $544f: $4a
    ld d, c                                       ; $5450: $51
    jp nz, $b6b3                                  ; $5451: $c2 $b3 $b6

    jp nz, $b5aa                                  ; $5454: $c2 $aa $b5

    ld e, $35                                     ; $5457: $1e $35
    ld e, d                                       ; $5459: $5a
    ld e, c                                       ; $545a: $59
    jp c, $34a4                                   ; $545b: $da $a4 $34

    res 6, a                                      ; $545e: $cb $b7
    ld l, $00                                     ; $5460: $2e $00
    inc e                                         ; $5462: $1c
    cp [hl]                                       ; $5463: $be
    cp a                                          ; $5464: $bf
    rst $20                                       ; $5465: $e7
    cp a                                          ; $5466: $bf
    sub e                                         ; $5467: $93
    ld c, d                                       ; $5468: $4a
    sbc a                                         ; $5469: $9f
    pop bc                                        ; $546a: $c1
    cp b                                          ; $546b: $b8
    dec e                                         ; $546c: $1d
    ld h, a                                       ; $546d: $67
    cp $eb                                        ; $546e: $fe $eb
    sbc $1a                                       ; $5470: $de $1a
    dec h                                         ; $5472: $25
    ld hl, sp-$3b                                 ; $5473: $f8 $c5
    di                                            ; $5475: $f3
    adc h                                         ; $5476: $8c
    ld h, l                                       ; $5477: $65
    and l                                         ; $5478: $a5
    and d                                         ; $5479: $a2
    xor h                                         ; $547a: $ac
    sbc e                                         ; $547b: $9b
    xor $25                                       ; $547c: $ee $25
    reti                                          ; $547e: $d9


    adc a                                         ; $547f: $8f
    db $fc                                        ; $5480: $fc
    db $eb                                        ; $5481: $eb
    db $ec                                        ; $5482: $ec
    adc $19                                       ; $5483: $ce $19
    db $db                                        ; $5485: $db
    inc h                                         ; $5486: $24
    ld hl, sp-$6b                                 ; $5487: $f8 $95
    rst $38                                       ; $5489: $ff
    cp c                                          ; $548a: $b9
    rst $10                                       ; $548b: $d7
    ld a, [$8f47]                                 ; $548c: $fa $47 $8f
    ld sp, hl                                     ; $548f: $f9
    xor a                                         ; $5490: $af
    inc de                                        ; $5491: $13
    ld d, l                                       ; $5492: $55
    call nc, $374d                                ; $5493: $d4 $4d $37
    ld d, c                                       ; $5496: $51
    ret                                           ; $5497: $c9


    add $99                                       ; $5498: $c6 $99
    rst $38                                       ; $549a: $ff
    adc d                                         ; $549b: $8a
    or d                                          ; $549c: $b2
    ld d, l                                       ; $549d: $55
    adc a                                         ; $549e: $8f
    xor d                                         ; $549f: $aa
    dec a                                         ; $54a0: $3d
    rst $20                                       ; $54a1: $e7
    cpl                                           ; $54a2: $2f
    pop af                                        ; $54a3: $f1
    db $d3                                        ; $54a4: $d3
    ld c, l                                       ; $54a5: $4d
    ld [$bd51], a                                 ; $54a6: $ea $51 $bd
    jp nz, Jump_05b_4f92                          ; $54a9: $c2 $92 $4f

    call nc, Call_05b_559d                        ; $54ac: $d4 $9d $55
    sub $17                                       ; $54af: $d6 $17
    nop                                           ; $54b1: $00
    ld c, $17                                     ; $54b2: $0e $17
    ld b, d                                       ; $54b4: $42
    sbc d                                         ; $54b5: $9a
    cp e                                          ; $54b6: $bb
    inc l                                         ; $54b7: $2c
    cp d                                          ; $54b8: $ba
    add hl, hl                                    ; $54b9: $29
    add hl, hl                                    ; $54ba: $29
    sbc [hl]                                      ; $54bb: $9e
    ld h, a                                       ; $54bc: $67
    inc l                                         ; $54bd: $2c
    cp e                                          ; $54be: $bb
    db $e4                                        ; $54bf: $e4
    ld de, $f09a                                  ; $54c0: $11 $9a $f0
    ld b, h                                       ; $54c3: $44
    db $eb                                        ; $54c4: $eb
    adc $b8                                       ; $54c5: $ce $b8
    ld d, d                                       ; $54c7: $52
    ld [hl-], a                                   ; $54c8: $32
    and e                                         ; $54c9: $a3
    and h                                         ; $54ca: $a4
    db $ec                                        ; $54cb: $ec
    cp a                                          ; $54cc: $bf
    cp a                                          ; $54cd: $bf
    ld [hl], l                                    ; $54ce: $75
    ld b, a                                       ; $54cf: $47
    ld b, l                                       ; $54d0: $45
    scf                                           ; $54d1: $37
    sub c                                         ; $54d2: $91
    ld a, [c]                                     ; $54d3: $f2
    or a                                          ; $54d4: $b7
    ld a, [hl]                                    ; $54d5: $7e
    ld a, l                                       ; $54d6: $7d
    reti                                          ; $54d7: $d9


    ld l, a                                       ; $54d8: $6f
    ld e, e                                       ; $54d9: $5b
    call c, $ab6f                                 ; $54da: $dc $6f $ab
    ld e, $fe                                     ; $54dd: $1e $fe
    ei                                            ; $54df: $fb
    ld l, e                                       ; $54e0: $6b
    dec e                                         ; $54e1: $1d
    pop de                                        ; $54e2: $d1
    rla                                           ; $54e3: $17
    nop                                           ; $54e4: $00
    ld a, h                                       ; $54e5: $7c
    ld d, c                                       ; $54e6: $51
    sub c                                         ; $54e7: $91
    ld d, d                                       ; $54e8: $52
    ret                                           ; $54e9: $c9


    ld h, d                                       ; $54ea: $62
    or b                                          ; $54eb: $b0
    rst $38                                       ; $54ec: $ff
    db $fc                                        ; $54ed: $fc
    rst $08                                       ; $54ee: $cf
    add hl, bc                                    ; $54ef: $09

jr_05b_54f0:
    push af                                       ; $54f0: $f5
    xor b                                         ; $54f1: $a8
    jp c, Jump_000_2273                           ; $54f2: $da $73 $22

    add hl, hl                                    ; $54f5: $29
    sbc [hl]                                      ; $54f6: $9e
    ld h, a                                       ; $54f7: $67
    inc l                                         ; $54f8: $2c
    cp e                                          ; $54f9: $bb
    nop                                           ; $54fa: $00
    db $fc                                        ; $54fb: $fc
    add e                                         ; $54fc: $83
    and l                                         ; $54fd: $a5
    cpl                                           ; $54fe: $2f
    sbc b                                         ; $54ff: $98
    ld [$6a42], sp                                ; $5500: $08 $42 $6a
    xor d                                         ; $5503: $aa
    ld a, [bc]                                    ; $5504: $0a
    ld sp, $39dc                                  ; $5505: $31 $dc $39
    rst $00                                       ; $5508: $c7
    db $fd                                        ; $5509: $fd
    ld e, a                                       ; $550a: $5f
    ld [$b551], a                                 ; $550b: $ea $51 $b5
    dec h                                         ; $550e: $25
    sbc a                                         ; $550f: $9f
    xor b                                         ; $5510: $a8
    or e                                          ; $5511: $b3
    xor $8c                                       ; $5512: $ee $8c
    ld l, $f1                                     ; $5514: $2e $f1
    adc l                                         ; $5516: $8d

Call_05b_5517:
    pop af                                        ; $5517: $f1
    rst $20                                       ; $5518: $e7
    cp h                                          ; $5519: $bc
    or b                                          ; $551a: $b0
    inc d                                         ; $551b: $14

Jump_05b_551c:
    dec d                                         ; $551c: $15

Jump_05b_551d:
    rst $30                                       ; $551d: $f7
    ld c, l                                       ; $551e: $4d
    dec h                                         ; $551f: $25
    db $f4                                        ; $5520: $f4
    or a                                          ; $5521: $b7
    ei                                            ; $5522: $fb
    di                                            ; $5523: $f3
    rst $38                                       ; $5524: $ff
    dec bc                                        ; $5525: $0b
    nop                                           ; $5526: $00
    ld a, h                                       ; $5527: $7c
    dec sp                                        ; $5528: $3b
    ld l, l                                       ; $5529: $6d
    daa                                           ; $552a: $27
    ld d, a                                       ; $552b: $57
    ld c, d                                       ; $552c: $4a
    dec h                                         ; $552d: $25
    sbc a                                         ; $552e: $9f
    ld h, c                                       ; $552f: $61
    add d                                         ; $5530: $82
    ld h, c                                       ; $5531: $61
    add [hl]                                      ; $5532: $86
    ld l, h                                       ; $5533: $6c
    push bc                                       ; $5534: $c5
    pop bc                                        ; $5535: $c1
    ld a, $0f                                     ; $5536: $3e $0f
    dec d                                         ; $5538: $15
    ld h, l                                       ; $5539: $65
    db $dd                                        ; $553a: $dd
    ld b, h                                       ; $553b: $44
    ld a, [$57ad]                                 ; $553c: $fa $ad $57
    db $ed                                        ; $553f: $ed
    sub [hl]                                      ; $5540: $96
    jp nc, $3760                                  ; $5541: $d2 $60 $37

    ld e, d                                       ; $5544: $5a
    adc a                                         ; $5545: $8f

jr_05b_5546:
    adc d                                         ; $5546: $8a
    jr c, jr_05b_5546                             ; $5547: $38 $fd

    ld d, b                                       ; $5549: $50
    nop                                           ; $554a: $00
    inc e                                         ; $554b: $1c
    db $ec                                        ; $554c: $ec

jr_05b_554d:
    di                                            ; $554d: $f3
    jr c, jr_05b_554d                             ; $554e: $38 $fd

    adc d                                         ; $5550: $8a
    dec d                                         ; $5551: $15
    ld c, h                                       ; $5552: $4c
    and h                                         ; $5553: $a4
    ld a, e                                       ; $5554: $7b
    daa                                           ; $5555: $27
    ld d, c                                       ; $5556: $51
    add hl, hl                                    ; $5557: $29
    dec e                                         ; $5558: $1d
    ld a, b                                       ; $5559: $78
    rst $38                                       ; $555a: $ff
    rst $18                                       ; $555b: $df
    rst $18                                       ; $555c: $df
    db $fd                                        ; $555d: $fd
    sub a                                         ; $555e: $97
    inc a                                         ; $555f: $3c
    ld c, h                                       ; $5560: $4c
    cp a                                          ; $5561: $bf
    inc [hl]                                      ; $5562: $34
    rst $00                                       ; $5563: $c7
    sub [hl]                                      ; $5564: $96
    ld d, d                                       ; $5565: $52
    xor d                                         ; $5566: $aa
    jr c, jr_05b_54f0                             ; $5567: $38 $87

    add h                                         ; $5569: $84
    ld h, a                                       ; $556a: $67
    ld l, l                                       ; $556b: $6d
    ld h, l                                       ; $556c: $65
    ld a, e                                       ; $556d: $7b
    ld l, [hl]                                    ; $556e: $6e
    ld l, d                                       ; $556f: $6a
    ld e, c                                       ; $5570: $59
    inc e                                         ; $5571: $1c
    ld [hl-], a                                   ; $5572: $32
    and e                                         ; $5573: $a3
    cp c                                          ; $5574: $b9
    ld [hl], l                                    ; $5575: $75
    ld bc, $7b7c                                  ; $5576: $01 $7c $7b
    sbc d                                         ; $5579: $9a
    ld d, d                                       ; $557a: $52
    ld a, [hl+]                                   ; $557b: $2a
    db $dd                                        ; $557c: $dd
    ld e, e                                       ; $557d: $5b
    and h                                         ; $557e: $a4
    and d                                         ; $557f: $a2
    xor h                                         ; $5580: $ac
    sbc e                                         ; $5581: $9b
    sub $b6                                       ; $5582: $d6 $b6
    call nc, Call_05b_7983                        ; $5584: $d4 $83 $79
    rst $38                                       ; $5587: $ff
    ld e, a                                       ; $5588: $5f
    ld l, e                                       ; $5589: $6b
    or $50                                        ; $558a: $f6 $50
    nop                                           ; $558c: $00
    db $fc                                        ; $558d: $fc
    ld [hl], h                                    ; $558e: $74
    sub e                                         ; $558f: $93
    adc $c0                                       ; $5590: $ce $c0
    add hl, sp                                    ; $5592: $39
    ccf                                           ; $5593: $3f
    dec e                                         ; $5594: $1d
    ld e, b                                       ; $5595: $58
    ld hl, $e52c                                  ; $5596: $21 $2c $e5
    sub h                                         ; $5599: $94
    ld d, d                                       ; $559a: $52
    ret                                           ; $559b: $c9


    adc a                                         ; $559c: $8f

Call_05b_559d:
    add e                                         ; $559d: $83
    db $dd                                        ; $559e: $dd
    sbc a                                         ; $559f: $9f
    rst $38                                       ; $55a0: $ff
    dec b                                         ; $55a1: $05
    nop                                           ; $55a2: $00
    inc a                                         ; $55a3: $3c
    rst $08                                       ; $55a4: $cf
    ld e, b                                       ; $55a5: $58
    ld h, $87                                     ; $55a6: $26 $87
    ret c                                         ; $55a8: $d8

    dec e                                         ; $55a9: $1d
    adc h                                         ; $55aa: $8c
    ld e, e                                       ; $55ab: $5b
    db $fc                                        ; $55ac: $fc
    db $e3                                        ; $55ad: $e3
    ld l, h                                       ; $55ae: $6c
    ei                                            ; $55af: $fb
    xor a                                         ; $55b0: $af
    ret                                           ; $55b1: $c9


    ld h, d                                       ; $55b2: $62
    di                                            ; $55b3: $f3
    dec l                                         ; $55b4: $2d
    db $fd                                        ; $55b5: $fd
    adc $ff                                       ; $55b6: $ce $ff
    ld [c], a                                     ; $55b8: $e2
    ld b, $fc                                     ; $55b9: $06 $fc
    ld b, h                                       ; $55bb: $44
    rst $20                                       ; $55bc: $e7
    sub b                                         ; $55bd: $90
    db $ec                                        ; $55be: $ec
    cp e                                          ; $55bf: $bb
    rst $00                                       ; $55c0: $c7
    ld a, [bc]                                    ; $55c1: $0a
    xor e                                         ; $55c2: $ab
    and d                                         ; $55c3: $a2
    dec de                                        ; $55c4: $1b
    rst $28                                       ; $55c5: $ef
    ld sp, $a92c                                  ; $55c6: $31 $2c $a9
    sbc c                                         ; $55c9: $99
    ld d, l                                       ; $55ca: $55
    rst $30                                       ; $55cb: $f7
    ld e, $d2                                     ; $55cc: $1e $d2
    dec a                                         ; $55ce: $3d
    ld b, [hl]                                    ; $55cf: $46
    rst $30                                       ; $55d0: $f7
    ld e, b                                       ; $55d1: $58
    push hl                                       ; $55d2: $e5
    sbc a                                         ; $55d3: $9f
    ld l, [hl]                                    ; $55d4: $6e
    dec h                                         ; $55d5: $25
    add h                                         ; $55d6: $84
    ld h, [hl]                                    ; $55d7: $66
    cpl                                           ; $55d8: $2f
    sbc b                                         ; $55d9: $98
    ld l, d                                       ; $55da: $6a
    and a                                         ; $55db: $a7
    push bc                                       ; $55dc: $c5
    or h                                          ; $55dd: $b4
    cp l                                          ; $55de: $bd
    nop                                           ; $55df: $00
    ld c, $50                                     ; $55e0: $0e $50

jr_05b_55e2:
    ld d, $9a                                     ; $55e2: $16 $9a
    ld h, e                                       ; $55e4: $63
    inc e                                         ; $55e5: $1c
    or h                                          ; $55e6: $b4
    cp $d7                                        ; $55e7: $fe $d7
    call z, Call_000_21ce                         ; $55e9: $cc $ce $21
    ld h, c                                       ; $55ec: $61
    ld d, l                                       ; $55ed: $55
    ld [hl], h                                    ; $55ee: $74
    db $e3                                        ; $55ef: $e3
    dec a                                         ; $55f0: $3d
    ld b, $24                                     ; $55f1: $06 $24
    ld c, [hl]                                    ; $55f3: $4e
    rst $38                                       ; $55f4: $ff
    dec b                                         ; $55f5: $05
    nop                                           ; $55f6: $00
    sbc h                                         ; $55f7: $9c
    ld hl, $2b3c                                  ; $55f8: $21 $3c $2b
    rst $38                                       ; $55fb: $ff
    rst $08                                       ; $55fc: $cf
    rst $20                                       ; $55fd: $e7
    xor a                                         ; $55fe: $af
    sbc c                                         ; $55ff: $99
    ld d, l                                       ; $5600: $55
    rst $30                                       ; $5601: $f7
    ld e, $ba                                     ; $5602: $1e $ba
    xor [hl]                                      ; $5604: $ae
    ld c, e                                       ; $5605: $4b
    ldh a, [$cb]                                  ; $5606: $f0 $cb
    ld b, d                                       ; $5608: $42
    ld a, $57                                     ; $5609: $3e $57
    rst $08                                       ; $560b: $cf
    sub l                                         ; $560c: $95
    rst $38                                       ; $560d: $ff
    inc de                                        ; $560e: $13
    or c                                          ; $560f: $b1
    cp b                                          ; $5610: $b8
    push hl                                       ; $5611: $e5
    jr nc, jr_05b_55e2                            ; $5612: $30 $ce

    inc h                                         ; $5614: $24
    xor d                                         ; $5615: $aa
    and h                                         ; $5616: $a4
    and d                                         ; $5617: $a2
    sbc e                                         ; $5618: $9b
    ld h, h                                       ; $5619: $64
    ld hl, $3acb                                  ; $561a: $21 $cb $3a
    db $eb                                        ; $561d: $eb
    ld h, $52                                     ; $561e: $26 $52
    adc a                                         ; $5620: $8f
    or e                                          ; $5621: $b3
    cp $1f                                        ; $5622: $fe $1f
    add h                                         ; $5624: $84
    rst $38                                       ; $5625: $ff
    sub d                                         ; $5626: $92
    ld b, a                                       ; $5627: $47
    ld e, b                                       ; $5628: $58
    ld [hl], e                                    ; $5629: $73
    sub h                                         ; $562a: $94
    or b                                          ; $562b: $b0
    add h                                         ; $562c: $84
    dec e                                         ; $562d: $1d
    db $dd                                        ; $562e: $dd
    sbc a                                         ; $562f: $9f
    cp a                                          ; $5630: $bf
    inc l                                         ; $5631: $2c
    inc [hl]                                      ; $5632: $34
    ld [hl], a                                    ; $5633: $77
    xor e                                         ; $5634: $ab
    ld [hl], $29                                  ; $5635: $36 $29
    ld hl, sp+$65                                 ; $5637: $f8 $65
    ld e, e                                       ; $5639: $5b
    inc h                                         ; $563a: $24
    ei                                            ; $563b: $fb
    ld l, a                                       ; $563c: $6f
    ld e, c                                       ; $563d: $59
    sub h                                         ; $563e: $94
    ld a, [hl-]                                   ; $563f: $3a
    jp nc, $9ca6                                  ; $5640: $d2 $a6 $9c

    and [hl]                                      ; $5643: $a6
    add l                                         ; $5644: $85
    db $ed                                        ; $5645: $ed
    dec b                                         ; $5646: $05
    nop                                           ; $5647: $00
    ld a, h                                       ; $5648: $7c
    ld l, e                                       ; $5649: $6b
    ld c, l                                       ; $564a: $4d
    cp d                                          ; $564b: $ba
    or a                                          ; $564c: $b7
    ld c, b                                       ; $564d: $48
    dec a                                         ; $564e: $3d
    xor d                                         ; $564f: $aa
    and d                                         ; $5650: $a2
    ld h, h                                       ; $5651: $64
    ld d, c                                       ; $5652: $51
    add d                                         ; $5653: $82
    xor c                                         ; $5654: $a9
    halt                                          ; $5655: $76
    ld e, d                                       ; $5656: $5a
    inc d                                         ; $5657: $14
    inc d                                         ; $5658: $14
    nop                                           ; $5659: $00
    sbc h                                         ; $565a: $9c
    ld hl, $e52c                                  ; $565b: $21 $2c $e5
    adc e                                         ; $565e: $8b
    daa                                           ; $565f: $27
    ld a, d                                       ; $5660: $7a
    ld c, e                                       ; $5661: $4b
    add hl, sp                                    ; $5662: $39
    or c                                          ; $5663: $b1
    xor l                                         ; $5664: $ad
    xor b                                         ; $5665: $a8
    ld c, e                                       ; $5666: $4b
    sbc [hl]                                      ; $5667: $9e
    cpl                                           ; $5668: $2f
    sbc [hl]                                      ; $5669: $9e
    add sp, $0e                                   ; $566a: $e8 $0e
    ld hl, sp+$05                                 ; $566c: $f8 $05
    ld d, e                                       ; $566e: $53
    db $ed                                        ; $566f: $ed
    or h                                          ; $5670: $b4
    dec h                                         ; $5671: $25
    push bc                                       ; $5672: $c5
    ld l, d                                       ; $5673: $6a
    ld h, d                                       ; $5674: $62
    cp [hl]                                       ; $5675: $be
    and l                                         ; $5676: $a5
    ld h, c                                       ; $5677: $61
    or c                                          ; $5678: $b1
    and l                                         ; $5679: $a5
    and d                                         ; $567a: $a2
    ld c, b                                       ; $567b: $48
    ld a, [hl+]                                   ; $567c: $2a
    ld d, [hl]                                    ; $567d: $56
    ld bc, $1309                                  ; $567e: $01 $09 $13
    ld a, a                                       ; $5681: $7f
    halt                                          ; $5682: $76
    ld [hl-], a                                   ; $5683: $32
    rst $38                                       ; $5684: $ff
    db $d3                                        ; $5685: $d3
    ld sp, hl                                     ; $5686: $f9
    ld h, [hl]                                    ; $5687: $66
    ld a, a                                       ; $5688: $7f
    ret                                           ; $5689: $c9


    inc hl                                        ; $568a: $23
    inc [hl]                                      ; $568b: $34
    reti                                          ; $568c: $d9


    ld a, a                                       ; $568d: $7f
    res 4, d                                      ; $568e: $cb $a2
    inc [hl]                                      ; $5690: $34
    ld [hl], a                                    ; $5691: $77
    xor e                                         ; $5692: $ab
    ld d, [hl]                                    ; $5693: $56
    ldh a, [$ab]                                  ; $5694: $f0 $ab
    rlca                                          ; $5696: $07
    or [hl]                                       ; $5697: $b6
    ld a, [$afe7]                                 ; $5698: $fa $e7 $af
    ld l, l                                       ; $569b: $6d
    dec h                                         ; $569c: $25
    add l                                         ; $569d: $85
    ld a, [hl]                                    ; $569e: $7e
    db $f4                                        ; $569f: $f4
    sub a                                         ; $56a0: $97
    ld l, h                                       ; $56a1: $6c
    ld l, e                                       ; $56a2: $6b
    sbc h                                         ; $56a3: $9c
    inc de                                        ; $56a4: $13
    ld a, [de]                                    ; $56a5: $1a
    inc bc                                        ; $56a6: $03
    ld [de], a                                    ; $56a7: $12
    and l                                         ; $56a8: $a5
    add e                                         ; $56a9: $83
    db $db                                        ; $56aa: $db
    ld [hl], $ea                                  ; $56ab: $36 $ea
    ld [bc], a                                    ; $56ad: $02
    sbc h                                         ; $56ae: $9c
    and c                                         ; $56af: $a1
    adc h                                         ; $56b0: $8c
    ld l, l                                       ; $56b1: $6d
    scf                                           ; $56b2: $37
    sub c                                         ; $56b3: $91
    ld a, [c]                                     ; $56b4: $f2
    ld h, a                                       ; $56b5: $67
    rst $30                                       ; $56b6: $f7
    ld e, e                                       ; $56b7: $5b
    xor a                                         ; $56b8: $af
    ld a, h                                       ; $56b9: $7c
    ld [hl+], a                                   ; $56ba: $22
    ld l, e                                       ; $56bb: $6b
    jp nc, Jump_05b_6838                          ; $56bc: $d2 $38 $68

    rla                                           ; $56bf: $17
    nop                                           ; $56c0: $00
    inc e                                         ; $56c1: $1c
    ld d, l                                       ; $56c2: $55
    pop af                                        ; $56c3: $f1
    cp d                                          ; $56c4: $ba
    cp a                                          ; $56c5: $bf
    rst $20                                       ; $56c6: $e7
    ld a, a                                       ; $56c7: $7f
    dec h                                         ; $56c8: $25
    push bc                                       ; $56c9: $c5
    di                                            ; $56ca: $f3
    adc h                                         ; $56cb: $8c
    ld h, l                                       ; $56cc: $65
    sub a                                         ; $56cd: $97
    inc a                                         ; $56ce: $3c
    ld a, a                                       ; $56cf: $7f
    add [hl]                                      ; $56d0: $86
    ld c, c                                       ; $56d1: $49
    ld b, l                                       ; $56d2: $45
    ld [hl], a                                    ; $56d3: $77
    xor h                                         ; $56d4: $ac
    inc l                                         ; $56d5: $2c
    db $e4                                        ; $56d6: $e4
    db $e3                                        ; $56d7: $e3
    jp hl                                         ; $56d8: $e9


    sub a                                         ; $56d9: $97
    ld l, l                                       ; $56da: $6d
    adc l                                         ; $56db: $8d
    cp a                                          ; $56dc: $bf
    nop                                           ; $56dd: $00
    ret nc                                        ; $56de: $d0

    dec hl                                        ; $56df: $2b
    dec bc                                        ; $56e0: $0b
    pop bc                                        ; $56e1: $c1
    ld d, h                                       ; $56e2: $54
    ld l, e                                       ; $56e3: $6b
    ld l, d                                       ; $56e4: $6a
    and d                                         ; $56e5: $a2
    ld [hl], e                                    ; $56e6: $73
    ld c, b                                       ; $56e7: $48
    ld a, b                                       ; $56e8: $78
    ld [hl+], a                                   ; $56e9: $22
    add hl, hl                                    ; $56ea: $29
    sbc [hl]                                      ; $56eb: $9e
    ld h, a                                       ; $56ec: $67
    inc l                                         ; $56ed: $2c
    db $e3                                        ; $56ee: $e3
    sub [hl]                                      ; $56ef: $96
    ld d, a                                       ; $56f0: $57
    ld l, h                                       ; $56f1: $6c
    sbc e                                         ; $56f2: $9b
    ld d, h                                       ; $56f3: $54
    ld e, c                                       ; $56f4: $59
    db $eb                                        ; $56f5: $eb
    ld [hl], b                                    ; $56f6: $70

Call_05b_56f7:
    ld h, l                                       ; $56f7: $65
    ld c, l                                       ; $56f8: $4d
    inc h                                         ; $56f9: $24
    dec bc                                        ; $56fa: $0b
    ld l, [hl]                                    ; $56fb: $6e

jr_05b_56fc:
    nop                                           ; $56fc: $00
    inc e                                         ; $56fd: $1c
    daa                                           ; $56fe: $27
    ld a, d                                       ; $56ff: $7a
    and d                                         ; $5700: $a2
    adc d                                         ; $5701: $8a
    jp nc, $5aca                                  ; $5702: $d2 $ca $5a

    ld sp, hl                                     ; $5705: $f9
    ld [c], a                                     ; $5706: $e2
    adc c                                         ; $5707: $89
    xor $7d                                       ; $5708: $ee $7d
    pop bc                                        ; $570a: $c1
    ld d, h                                       ; $570b: $54
    ld l, e                                       ; $570c: $6b
    ld c, l                                       ; $570d: $4d
    ld d, b                                       ; $570e: $50
    nop                                           ; $570f: $00
    ld e, $21                                     ; $5710: $1e $21
    ld h, $65                                     ; $5712: $26 $65
    ld hl, $e078                                  ; $5714: $21 $78 $e0
    or h                                          ; $5717: $b4
    sub l                                         ; $5718: $95
    adc a                                         ; $5719: $8f
    xor h                                         ; $571a: $ac
    ld a, a                                       ; $571b: $7f
    ei                                            ; $571c: $fb
    dec [hl]                                      ; $571d: $35
    ld sp, $bded                                  ; $571e: $31 $ed $bd
    nop                                           ; $5721: $00
    ld c, $68                                     ; $5722: $0e $68
    ld c, e                                       ; $5724: $4b
    jr nc, jr_05b_56fc                            ; $5725: $30 $d5

    ld c, [hl]                                    ; $5727: $4e
    adc e                                         ; $5728: $8b
    ld [de], a                                    ; $5729: $12
    inc a                                         ; $572a: $3c
    ld [hl], b                                    ; $572b: $70
    ld e, d                                       ; $572c: $5a
    db $e4                                        ; $572d: $e4
    ld e, a                                       ; $572e: $5f
    ld h, d                                       ; $572f: $62
    rst $28                                       ; $5730: $ef
    ei                                            ; $5731: $fb
    jp $e5f6                                      ; $5732: $c3 $f6 $e5


    ld h, e                                       ; $5735: $63
    ld a, [bc]                                    ; $5736: $0a
    rst $38                                       ; $5737: $ff
    inc c                                         ; $5738: $0c
    add $70                                       ; $5739: $c6 $70
    ld e, d                                       ; $573b: $5a
    ld b, h                                       ; $573c: $44
    ld e, l                                       ; $573d: $5d
    add d                                         ; $573e: $82
    ld l, $cd                                     ; $573f: $2e $cd
    db $ec                                        ; $5741: $ec
    inc e                                         ; $5742: $1c
    jp nc, $d63d                                  ; $5743: $d2 $3d $d6

    ld a, [$ba93]                                 ; $5746: $fa $93 $ba
    or a                                          ; $5749: $b7
    ld h, $29                                     ; $574a: $26 $29
    daa                                           ; $574c: $27
    or [hl]                                       ; $574d: $b6
    dec d                                         ; $574e: $15
    dec h                                         ; $574f: $25
    dec bc                                        ; $5750: $0b
    pop hl                                        ; $5751: $e1
    reti                                          ; $5752: $d9


    dec bc                                        ; $5753: $0b
    nop                                           ; $5754: $00
    ret nc                                        ; $5755: $d0

    xor l                                         ; $5756: $ad
    and d                                         ; $5757: $a2
    ret                                           ; $5758: $c9


    dec b                                         ; $5759: $05
    inc de                                        ; $575a: $13
    sub l                                         ; $575b: $95
    ldh a, [$84]                                  ; $575c: $f0 $84
    ld a, [$e6df]                                 ; $575e: $fa $df $e6

jr_05b_5761:
    ld a, a                                       ; $5761: $7f
    add hl, bc                                    ; $5762: $09
    ld a, l                                       ; $5763: $7d
    ld a, a                                       ; $5764: $7f
    ld a, e                                       ; $5765: $7b
    ld d, h                                       ; $5766: $54
    db $ed                                        ; $5767: $ed
    add hl, sp                                    ; $5768: $39
    sbc a                                         ; $5769: $9f
    inc d                                         ; $576a: $14
    rst $08                                       ; $576b: $cf
    inc sp                                        ; $576c: $33
    sub [hl]                                      ; $576d: $96
    ld e, l                                       ; $576e: $5d
    nop                                           ; $576f: $00
    ld c, $83                                     ; $5770: $0e $83
    dec h                                         ; $5772: $25
    sub b                                         ; $5773: $90
    dec h                                         ; $5774: $25
    add l                                         ; $5775: $85
    dec [hl]                                      ; $5776: $35
    ld d, c                                       ; $5777: $51
    ld c, l                                       ; $5778: $4d
    ld [hl], h                                    ; $5779: $74
    ld c, $a9                                     ; $577a: $0e $a9
    ld l, b                                       ; $577c: $68
    ld h, [hl]                                    ; $577d: $66
    sub l                                         ; $577e: $95
    or l                                          ; $577f: $b5
    ld a, [c]                                     ; $5780: $f2
    push bc                                       ; $5781: $c5
    inc de                                        ; $5782: $13
    db $dd                                        ; $5783: $dd
    ei                                            ; $5784: $fb
    add d                                         ; $5785: $82
    xor c                                         ; $5786: $a9
    sub $9a                                       ; $5787: $d6 $9a
    and b                                         ; $5789: $a0
    nop                                           ; $578a: $00
    inc e                                         ; $578b: $1c
    and l                                         ; $578c: $a5
    sbc c                                         ; $578d: $99
    sbc l                                         ; $578e: $9d
    ld b, e                                       ; $578f: $43
    ld c, c                                       ; $5790: $49

jr_05b_5791:
    ld e, c                                       ; $5791: $59
    jr z, jr_05b_5761                             ; $5792: $28 $cd

    ld a, h                                       ; $5794: $7c
    sbc a                                         ; $5795: $9f
    ld l, h                                       ; $5796: $6c
    add l                                         ; $5797: $85
    ld a, c                                       ; $5798: $79
    ld e, b                                       ; $5799: $58
    cp a                                          ; $579a: $bf
    add $41                                       ; $579b: $c6 $41
    sub e                                         ; $579d: $93
    cp a                                          ; $579e: $bf
    jp hl                                         ; $579f: $e9


    sbc a                                         ; $57a0: $9f
    inc de                                        ; $57a1: $13
    sub a                                         ; $57a2: $97
    ld hl, sp+$76                                 ; $57a3: $f8 $76
    jp c, Jump_05b_42ca                           ; $57a5: $da $ca $42

    ld e, b                                       ; $57a8: $58
    jp z, Jump_05b_4f17                           ; $57a9: $ca $17 $4f

    db $f4                                        ; $57ac: $f4
    sub [hl]                                      ; $57ad: $96
    ld [hl], d                                    ; $57ae: $72
    ld h, d                                       ; $57af: $62
    ld e, e                                       ; $57b0: $5b
    ld d, c                                       ; $57b1: $51
    ld d, b                                       ; $57b2: $50
    nop                                           ; $57b3: $00
    sbc h                                         ; $57b4: $9c
    ld hl, $f92c                                  ; $57b5: $21 $2c $f9
    ld a, a                                       ; $57b8: $7f
    ld a, $7f                                     ; $57b9: $3e $7f
    call $baac                                    ; $57bb: $cd $ac $ba
    rst $30                                       ; $57be: $f7
    ld d, b                                       ; $57bf: $50
    ld d, d                                       ; $57c0: $52
    jr nc, jr_05b_5791                            ; $57c1: $30 $ce

    rst $10                                       ; $57c3: $d7
    dec a                                         ; $57c4: $3d
    ld b, [hl]                                    ; $57c5: $46
    ld b, a                                       ; $57c6: $47
    rst $30                                       ; $57c7: $f7
    ld l, [hl]                                    ; $57c8: $6e
    add hl, hl                                    ; $57c9: $29
    rst $38                                       ; $57ca: $ff
    ld [hl], h                                    ; $57cb: $74
    dec hl                                        ; $57cc: $2b
    ld hl, $7b34                                  ; $57cd: $21 $34 $7b
    pop bc                                        ; $57d0: $c1
    ld d, h                                       ; $57d1: $54
    dec sp                                        ; $57d2: $3b
    dec l                                         ; $57d3: $2d
    and [hl]                                      ; $57d4: $a6
    db $ed                                        ; $57d5: $ed
    dec b                                         ; $57d6: $05
    nop                                           ; $57d7: $00
    sbc h                                         ; $57d8: $9c
    ld hl, $b38b                                  ; $57d9: $21 $8b $b3
    db $dd                                        ; $57dc: $dd

jr_05b_57dd:
    ld b, h                                       ; $57dd: $44
    ld [hl], e                                    ; $57de: $73
    ld c, e                                       ; $57df: $4b
    ld sp, hl                                     ; $57e0: $f9
    and a                                         ; $57e1: $a7
    rrca                                          ; $57e2: $0f
    db $d3                                        ; $57e3: $d3
    add c                                         ; $57e4: $81
    and e                                         ; $57e5: $a3
    ld [hl], l                                    ; $57e6: $75
    cp [hl]                                       ; $57e7: $be
    ld a, e                                       ; $57e8: $7b
    rst $38                                       ; $57e9: $ff
    sbc h                                         ; $57ea: $9c
    cp a                                          ; $57eb: $bf
    nop                                           ; $57ec: $00
    ld a, h                                       ; $57ed: $7c
    add hl, bc                                    ; $57ee: $09
    ld a, b                                       ; $57ef: $78
    ldh a, [$ec]                                  ; $57f0: $f0 $ec
    sbc $84                                       ; $57f2: $de $84
    ld e, a                                       ; $57f4: $5f
    jp hl                                         ; $57f5: $e9


    sbc a                                         ; $57f6: $9f
    pop af                                        ; $57f7: $f1
    sbc a                                         ; $57f8: $9f
    ld d, h                                       ; $57f9: $54
    ld [hl], h                                    ; $57fa: $74
    sub e                                         ; $57fb: $93
    or b                                          ; $57fc: $b0
    cp a                                          ; $57fd: $bf
    ld h, h                                       ; $57fe: $64
    ld d, c                                       ; $57ff: $51
    sbc d                                         ; $5800: $9a
    cp e                                          ; $5801: $bb
    ld d, l                                       ; $5802: $55
    ld a, e                                       ; $5803: $7b
    ld bc, $680e                                  ; $5804: $01 $0e $68
    ld c, e                                       ; $5807: $4b
    ld d, $e7                                     ; $5808: $16 $e7
    db $fc                                        ; $580a: $fc
    ld e, d                                       ; $580b: $5a
    sub h                                         ; $580c: $94
    jp nc, $b9e8                                  ; $580d: $d2 $e8 $b9

    or d                                          ; $5810: $b2
    db $ed                                        ; $5811: $ed
    adc [hl]                                      ; $5812: $8e
    sub d                                         ; $5813: $92
    adc a                                         ; $5814: $8f
    add hl, hl                                    ; $5815: $29
    db $fc                                        ; $5816: $fc
    inc sp                                        ; $5817: $33
    jr jr_05b_57dd                                ; $5818: $18 $c3

    ld l, c                                       ; $581a: $69
    ld h, c                                       ; $581b: $61
    or $17                                        ; $581c: $f6 $17
    nop                                           ; $581e: $00
    ret nc                                        ; $581f: $d0

    ld [hl], l                                    ; $5820: $75
    adc c                                         ; $5821: $89
    db $e3                                        ; $5822: $e3
    ld b, h                                       ; $5823: $44
    ld c, a                                       ; $5824: $4f
    sub h                                         ; $5825: $94
    ld l, l                                       ; $5826: $6d
    ld de, $0014                                  ; $5827: $11 $14 $00
    ret nc                                        ; $582a: $d0

    xor e                                         ; $582b: $ab

jr_05b_582c:
    jp c, $dd2d                                   ; $582c: $da $2d $dd

    ld e, e                                       ; $582f: $5b
    sub e                                         ; $5830: $93
    xor b                                         ; $5831: $a8
    adc $af                                       ; $5832: $ce $af
    push af                                       ; $5834: $f5
    dec hl                                        ; $5835: $2b
    db $fd                                        ; $5836: $fd

Jump_05b_5837:
    db $fc                                        ; $5837: $fc
    or a                                          ; $5838: $b7
    ld a, [de]                                    ; $5839: $1a
    rst $38                                       ; $583a: $ff
    ld [bc], a                                    ; $583b: $02
    ret nc                                        ; $583c: $d0

    ld [hl], l                                    ; $583d: $75
    adc c                                         ; $583e: $89
    db $e3                                        ; $583f: $e3
    xor h                                         ; $5840: $ac
    db $ed                                        ; $5841: $ed
    ld b, h                                       ; $5842: $44
    ld sp, hl                                     ; $5843: $f9
    db $db                                        ; $5844: $db
    ld d, h                                       ; $5845: $54
    ld e, c                                       ; $5846: $59
    ld b, e                                       ; $5847: $43
    ld bc, $25d0                                  ; $5848: $01 $d0 $25
    inc a                                         ; $584b: $3c
    and c                                         ; $584c: $a1
    and d                                         ; $584d: $a2
    or h                                          ; $584e: $b4
    or d                                          ; $584f: $b2
    sub $bd                                       ; $5850: $d6 $bd
    dec [hl]                                      ; $5852: $35
    adc c                                         ; $5853: $89
    ld [$dafc], a                                 ; $5854: $ea $fc $da
    cp [hl]                                       ; $5857: $be
    ld h, b                                       ; $5858: $60
    xor d                                         ; $5859: $aa

Jump_05b_585a:
    sbc l                                         ; $585a: $9d
    or [hl]                                       ; $585b: $b6
    ld [hl], h                                    ; $585c: $74
    ld bc, $271c                                  ; $585d: $01 $1c $27
    ld a, d                                       ; $5860: $7a
    and d                                         ; $5861: $a2
    ld l, h                                       ; $5862: $6c
    adc e                                         ; $5863: $8b
    or h                                          ; $5864: $b4
    jp hl                                         ; $5865: $e9


    sub a                                         ; $5866: $97
    ld a, [hl-]                                   ; $5867: $3a
    ld e, b                                       ; $5868: $58
    ld e, $50                                     ; $5869: $1e $50
    nop                                           ; $586b: $00
    ld a, h                                       ; $586c: $7c
    ld d, c                                       ; $586d: $51
    and c                                         ; $586e: $a1
    sub h                                         ; $586f: $94
    sub [hl]                                      ; $5870: $96
    ld l, l                                       ; $5871: $6d
    ld e, e                                       ; $5872: $5b

jr_05b_5873:
    call c, $2544                                 ; $5873: $dc $44 $25
    jr jr_05b_5873                                ; $5876: $18 $fb

    rst $20                                       ; $5878: $e7
    add sp, -$29                                  ; $5879: $e8 $d7
    dec a                                         ; $587b: $3d
    ld b, [hl]                                    ; $587c: $46
    cp a                                          ; $587d: $bf
    ld a, [hl-]                                   ; $587e: $3a
    di                                            ; $587f: $f3
    add e                                         ; $5880: $83
    db $ed                                        ; $5881: $ed
    add hl, sp                                    ; $5882: $39
    and h                                         ; $5883: $a4
    sbc c                                         ; $5884: $99
    ld e, c                                       ; $5885: $59
    halt                                          ; $5886: $76
    ld h, a                                       ; $5887: $67
    db $d3                                        ; $5888: $d3
    or $1c                                        ; $5889: $f6 $1c
    or d                                          ; $588b: $b2
    push hl                                       ; $588c: $e5
    ld b, $9c                                     ; $588d: $06 $9c
    sub [hl]                                      ; $588f: $96
    ld e, d                                       ; $5890: $5a
    ld l, d                                       ; $5891: $6a
    rla                                           ; $5892: $17
    nop                                           ; $5893: $00
    ret nc                                        ; $5894: $d0

    sub l                                         ; $5895: $95
    call nc, $ba3d                                ; $5896: $d4 $3d $ba
    ld e, a                                       ; $5899: $5f
    ld d, $c2                                     ; $589a: $16 $c2
    or e                                          ; $589c: $b3
    or [hl]                                       ; $589d: $b6
    sbc d                                         ; $589e: $9a
    reti                                          ; $589f: $d9


    add hl, sp                                    ; $58a0: $39
    and h                                         ; $58a1: $a4
    cp c                                          ; $58a2: $b9
    ld sp, hl                                     ; $58a3: $f9
    xor e                                         ; $58a4: $ab
    jr z, jr_05b_582c                             ; $58a5: $28 $85

    ret nc                                        ; $58a7: $d0

    dec b                                         ; $58a8: $05
    nop                                           ; $58a9: $00
    ld a, h                                       ; $58aa: $7c
    ld e, e                                       ; $58ab: $5b
    db $e3                                        ; $58ac: $e3
    sbc h                                         ; $58ad: $9c
    ld d, a                                       ; $58ae: $57
    xor h                                         ; $58af: $ac
    ldh a, [$84]                                  ; $58b0: $f0 $84
    ld a, [hl]                                    ; $58b2: $7e
    rst $20                                       ; $58b3: $e7
    cp a                                          ; $58b4: $bf
    ld a, [hl-]                                   ; $58b5: $3a
    di                                            ; $58b6: $f3
    add e                                         ; $58b7: $83
    db $ed                                        ; $58b8: $ed
    add hl, sp                                    ; $58b9: $39
    and c                                         ; $58ba: $a1
    ld h, a                                       ; $58bb: $67
    add hl, sp                                    ; $58bc: $39
    ld l, [hl]                                    ; $58bd: $6e
    adc a                                         ; $58be: $8f
    ld l, c                                       ; $58bf: $69
    ld a, e                                       ; $58c0: $7b
    ld c, [hl]                                    ; $58c1: $4e
    inc h                                         ; $58c2: $24
    push hl                                       ; $58c3: $e5
    db $10                                        ; $58c4: $10
    cp e                                          ; $58c5: $bb
    add e                                         ; $58c6: $83
    ld e, l                                       ; $58c7: $5d
    nop                                           ; $58c8: $00
    cp h                                          ; $58c9: $bc
    sbc c                                         ; $58ca: $99
    ld h, l                                       ; $58cb: $65
    ld [c], a                                     ; $58cc: $e2
    ld sp, hl                                     ; $58cd: $f9
    add h                                         ; $58ce: $84
    ret c                                         ; $58cf: $d8

    ld b, d                                       ; $58d0: $42
    or $f4                                        ; $58d1: $f6 $f4
    ld e, a                                       ; $58d3: $5f
    ld [c], a                                     ; $58d4: $e2
    and c                                         ; $58d5: $a1
    ld d, d                                       ; $58d6: $52
    ld l, a                                       ; $58d7: $6f
    inc [hl]                                      ; $58d8: $34
    sub c                                         ; $58d9: $91
    ld a, [hl]                                    ; $58da: $7e
    db $eb                                        ; $58db: $eb
    dec [hl]                                      ; $58dc: $35
    ld a, a                                       ; $58dd: $7f

jr_05b_58de:
    ld h, a                                       ; $58de: $67
    sub h                                         ; $58df: $94
    db $fc                                        ; $58e0: $fc
    ld c, l                                       ; $58e1: $4d
    cp a                                          ; $58e2: $bf
    inc d                                         ; $58e3: $14
    add a                                         ; $58e4: $87
    or $5e                                        ; $58e5: $f6 $5e
    ld l, e                                       ; $58e7: $6b
    cp d                                          ; $58e8: $ba
    nop                                           ; $58e9: $00
    inc a                                         ; $58ea: $3c
    ld l, a                                       ; $58eb: $6f
    ld [hl], $5e                                  ; $58ec: $36 $5e
    ld [hl], e                                    ; $58ee: $73
    sub h                                         ; $58ef: $94
    db $ec                                        ; $58f0: $ec
    ld a, e                                       ; $58f1: $7b
    ld l, h                                       ; $58f2: $6c
    ld l, e                                       ; $58f3: $6b
    ld h, [hl]                                    ; $58f4: $66
    ld b, [hl]                                    ; $58f5: $46
    ld d, $51                                     ; $58f6: $16 $51

jr_05b_58f8:
    sub a                                         ; $58f8: $97
    jr c, jr_05b_58de                             ; $58f9: $38 $e3

    sbc h                                         ; $58fb: $9c
    xor a                                         ; $58fc: $af
    jr z, jr_05b_58f8                             ; $58fd: $28 $f9

    ld a, b                                       ; $58ff: $78
    ei                                            ; $5900: $fb
    cp $aa                                        ; $5901: $fe $aa
    pop de                                        ; $5903: $d1
    ld a, [$0f05]                                 ; $5904: $fa $05 $0f
    db $eb                                        ; $5907: $eb
    db $dd                                        ; $5908: $dd
    or d                                          ; $5909: $b2
    cp a                                          ; $590a: $bf
    call nz, $ec8f                                ; $590b: $c4 $8f $ec
    ld [hl], l                                    ; $590e: $75
    jr z, @-$11                                   ; $590f: $28 $ed

    ld [$2765], sp                                ; $5911: $08 $65 $27
    and d                                         ; $5914: $a2
    adc h                                         ; $5915: $8c
    inc b                                         ; $5916: $04
    ld d, e                                       ; $5917: $53
    ld [hl], c                                    ; $5918: $71
    pop bc                                        ; $5919: $c1
    ld d, c                                       ; $591a: $51
    ld a, [c]                                     ; $591b: $f2
    add e                                         ; $591c: $83
    ld de, $5255                                  ; $591d: $11 $55 $52
    rst $30                                       ; $5920: $f7
    add sp, $7e                                   ; $5921: $e8 $7e
    dec [hl]                                      ; $5923: $35
    ld e, c                                       ; $5924: $59
    sub e                                         ; $5925: $93
    inc l                                         ; $5926: $2c
    db $e4                                        ; $5927: $e4
    ld h, a                                       ; $5928: $67
    sub [hl]                                      ; $5929: $96
    jp hl                                         ; $592a: $e9


    ldh [$36], a                                  ; $592b: $e0 $36
    sbc [hl]                                      ; $592d: $9e
    di                                            ; $592e: $f3
    rla                                           ; $592f: $17
    nop                                           ; $5930: $00
    sbc h                                         ; $5931: $9c
    and c                                         ; $5932: $a1
    ld e, b                                       ; $5933: $58
    pop hl                                        ; $5934: $e1
    add hl, sp                                    ; $5935: $39
    and e                                         ; $5936: $a3
    add l                                         ; $5937: $85
    dec sp                                        ; $5938: $3b
    db $e3                                        ; $5939: $e3
    dec b                                         ; $593a: $05
    ld d, e                                       ; $593b: $53
    xor l                                         ; $593c: $ad
    dec h                                         ; $593d: $25
    sub l                                         ; $593e: $95
    rst $38                                       ; $593f: $ff
    sub a                                         ; $5940: $97
    xor $81                                       ; $5941: $ee $81
    adc l                                         ; $5943: $8d
    xor a                                         ; $5944: $af
    ld a, e                                       ; $5945: $7b
    adc h                                         ; $5946: $8c
    xor $af                                       ; $5947: $ee $af
    pop de                                        ; $5949: $d1
    ld a, [c]                                     ; $594a: $f2
    rst $38                                       ; $594b: $ff
    ld a, h                                       ; $594c: $7c
    cp $9a                                        ; $594d: $fe $9a
    ld e, c                                       ; $594f: $59
    ld [hl], l                                    ; $5950: $75
    rst $28                                       ; $5951: $ef
    ld hl, $006e                                  ; $5952: $21 $6e $00
    sbc h                                         ; $5955: $9c
    ld hl, $b38b                                  ; $5956: $21 $8b $b3
    db $dd                                        ; $5959: $dd
    ld b, h                                       ; $595a: $44
    ld [hl], e                                    ; $595b: $73
    ld c, e                                       ; $595c: $4b
    ld c, l                                       ; $595d: $4d
    dec h                                         ; $595e: $25
    rst $38                                       ; $595f: $ff
    rst $08                                       ; $5960: $cf
    ld d, a                                       ; $5961: $57
    ld b, h                                       ; $5962: $44
    ld l, c                                       ; $5963: $69
    ld a, $cb                                     ; $5964: $3e $cb
    cp a                                          ; $5966: $bf
    sub h                                         ; $5967: $94
    ld a, $3c                                     ; $5968: $3e $3c
    ld [$7c02], a                                 ; $596a: $ea $02 $7c
    ld e, e                                       ; $596d: $5b
    dec d                                         ; $596e: $15
    ld a, [c]                                     ; $596f: $f2
    ld l, c                                       ; $5970: $69
    ld c, e                                       ; $5971: $4b
    ld d, $ba                                     ; $5972: $16 $ba
    and e                                         ; $5974: $a3
    ld d, $0a                                     ; $5975: $16 $0a
    nop                                           ; $5977: $00
    cp h                                          ; $5978: $bc
    ld l, a                                       ; $5979: $6f
    ld sp, hl                                     ; $597a: $f9
    and [hl]                                      ; $597b: $a6
    inc bc                                        ; $597c: $03
    dec hl                                        ; $597d: $2b

Jump_05b_597e:
    and d                                         ; $597e: $a2
    ld h, h                                       ; $597f: $64
    ld h, e                                       ; $5980: $63
    ld d, h                                       ; $5981: $54
    rst $38                                       ; $5982: $ff
    rst $10                                       ; $5983: $d7
    dec h                                         ; $5984: $25
    add sp, -$12                                  ; $5985: $e8 $ee
    ld e, l                                       ; $5987: $5d
    push hl                                       ; $5988: $e5
    rst $08                                       ; $5989: $cf
    xor $ff                                       ; $598a: $ee $ff
    ld d, d                                       ; $598c: $52
    cp $e9                                        ; $598d: $fe $e9
    and a                                         ; $598f: $a7
    ld bc, $7389                                  ; $5990: $01 $89 $73
    cpl                                           ; $5993: $2f
    ld e, l                                       ; $5994: $5d
    nop                                           ; $5995: $00

jr_05b_5996:
    cp h                                          ; $5996: $bc
    jr jr_05b_5996                                ; $5997: $18 $fd

    ld a, [hl-]                                   ; $5999: $3a
    ld e, h                                       ; $599a: $5c
    ld e, c                                       ; $599b: $59
    inc de                                        ; $599c: $13
    ret                                           ; $599d: $c9


    ld [hl+], a                                   ; $599e: $22
    add hl, hl                                    ; $599f: $29
    sbc [hl]                                      ; $59a0: $9e
    ld h, a                                       ; $59a1: $67
    inc l                                         ; $59a2: $2c
    cp e                                          ; $59a3: $bb
    inc b                                         ; $59a4: $04
    cp l                                          ; $59a5: $bd
    jp nz, $cd35                                  ; $59a6: $c2 $35 $cd

    call $05ff                                    ; $59a9: $cd $ff $05
    and e                                         ; $59ac: $a3
    ret                                           ; $59ad: $c9


    or d                                          ; $59ae: $b2
    xor $6c                                       ; $59af: $ee $6c
    ld c, l                                       ; $59b1: $4d
    ld [hl], a                                    ; $59b2: $77
    or h                                          ; $59b3: $b4
    sub c                                         ; $59b4: $91
    rst $38                                       ; $59b5: $ff
    rlca                                          ; $59b6: $07
    pop hl                                        ; $59b7: $e1
    cp a                                          ; $59b8: $bf
    nop                                           ; $59b9: $00
    inc a                                         ; $59ba: $3c
    rst $30                                       ; $59bb: $f7
    sbc l                                         ; $59bc: $9d
    ld d, h                                       ; $59bd: $54
    pop de                                        ; $59be: $d1
    sub [hl]                                      ; $59bf: $96
    ld h, [hl]                                    ; $59c0: $66
    halt                                          ; $59c1: $76
    ld c, $09                                     ; $59c2: $0e $09
    add $9a                                       ; $59c4: $c6 $9a
    ld e, e                                       ; $59c6: $5b
    jp z, Jump_05b_4f17                           ; $59c7: $ca $17 $4f

    db $f4                                        ; $59ca: $f4
    sub [hl]                                      ; $59cb: $96
    ld [c], a                                     ; $59cc: $e2
    adc h                                         ; $59cd: $8c
    ld sp, hl                                     ; $59ce: $f9
    and l                                         ; $59cf: $a5
    ld a, h                                       ; $59d0: $7c
    db $fd                                        ; $59d1: $fd
    jr c, jr_05b_5a21                             ; $59d2: $38 $4d

    add hl, sp                                    ; $59d4: $39
    sub l                                         ; $59d5: $95
    sbc d                                         ; $59d6: $9a
    add sp, $1c                                   ; $59d7: $e8 $1c
    cp d                                          ; $59d9: $ba
    call nz, $35b9                                ; $59da: $c4 $b9 $35
    ld l, d                                       ; $59dd: $6a
    and d                                         ; $59de: $a2
    inc l                                         ; $59df: $2c
    add h                                         ; $59e0: $84
    dec b                                         ; $59e1: $05
    dec b                                         ; $59e2: $05
    nop                                           ; $59e3: $00
    ret nc                                        ; $59e4: $d0

    sbc e                                         ; $59e5: $9b
    ld d, h                                       ; $59e6: $54
    rst $38                                       ; $59e7: $ff
    ld c, [hl]                                    ; $59e8: $4e
    inc c                                         ; $59e9: $0c
    or e                                          ; $59ea: $b3
    sub a                                         ; $59eb: $97
    ld a, l                                       ; $59ec: $7d
    rst $30                                       ; $59ed: $f7
    ld e, b                                       ; $59ee: $58
    ld h, c                                       ; $59ef: $61
    ld d, l                                       ; $59f0: $55
    ld [hl], h                                    ; $59f1: $74
    db $e3                                        ; $59f2: $e3
    dec a                                         ; $59f3: $3d
    add [hl]                                      ; $59f4: $86
    add hl, bc                                    ; $59f5: $09
    ld a, [hl]                                    ; $59f6: $7e
    ld sp, hl                                     ; $59f7: $f9
    inc c                                         ; $59f8: $0c
    inc de                                        ; $59f9: $13
    inc c                                         ; $59fa: $0c
    inc sp                                        ; $59fb: $33
    ld h, h                                       ; $59fc: $64
    dec hl                                        ; $59fd: $2b
    cp [hl]                                       ; $59fe: $be
    inc b                                         ; $59ff: $04
    inc a                                         ; $5a00: $3c
    ld a, b                                       ; $5a01: $78
    halt                                          ; $5a02: $76
    ld l, a                                       ; $5a03: $6f
    jp nz, Jump_05b_43af                          ; $5a04: $c2 $af $43

    ld l, c                                       ; $5a07: $69
    ld [hl], h                                    ; $5a08: $74

jr_05b_5a09:
    xor a                                         ; $5a09: $af
    xor $ad                                       ; $5a0a: $ee $ad
    pop de                                        ; $5a0c: $d1
    or d                                          ; $5a0d: $b2
    jr z, jr_05b_5a09                             ; $5a0e: $28 $f9

    pop bc                                        ; $5a10: $c1
    adc b                                         ; $5a11: $88
    ld [$0e02], a                                 ; $5a12: $ea $02 $0e
    jr nc, jr_05b_5a40                            ; $5a15: $30 $29

    xor h                                         ; $5a17: $ac
    adc d                                         ; $5a18: $8a
    ld d, a                                       ; $5a19: $57
    cp $5f                                        ; $5a1a: $fe $5f
    sub a                                         ; $5a1c: $97
    inc a                                         ; $5a1d: $3c
    rst $00                                       ; $5a1e: $c7
    or l                                          ; $5a1f: $b5
    dec l                                         ; $5a20: $2d

jr_05b_5a21:
    db $dd                                        ; $5a21: $dd
    ld h, e                                       ; $5a22: $63
    ld [hl], h                                    ; $5a23: $74
    sub h                                         ; $5a24: $94
    ld a, [hl]                                    ; $5a25: $7e
    ld [hl], h                                    ; $5a26: $74
    rst $38                                       ; $5a27: $ff
    daa                                           ; $5a28: $27
    ld [hl], l                                    ; $5a29: $75
    adc a                                         ; $5a2a: $8f
    xor $d7                                       ; $5a2b: $ee $d7
    cp l                                          ; $5a2d: $bd
    dec [hl]                                      ; $5a2e: $35
    ld c, d                                       ; $5a2f: $4a
    ld c, l                                       ; $5a30: $4d
    ld e, c                                       ; $5a31: $59
    ld h, a                                       ; $5a32: $67
    sbc c                                         ; $5a33: $99
    ld h, [hl]                                    ; $5a34: $66

jr_05b_5a35:
    ld e, b                                       ; $5a35: $58
    sub $4d                                       ; $5a36: $d6 $4d
    and h                                         ; $5a38: $a4
    and [hl]                                      ; $5a39: $a6
    sbc e                                         ; $5a3a: $9b
    sub h                                         ; $5a3b: $94
    rst $28                                       ; $5a3c: $ef
    add hl, sp                                    ; $5a3d: $39
    bit 6, [hl]                                   ; $5a3e: $cb $76

jr_05b_5a40:
    ld l, l                                       ; $5a40: $6d
    cpl                                           ; $5a41: $2f
    nop                                           ; $5a42: $00
    db $fc                                        ; $5a43: $fc
    inc bc                                        ; $5a44: $03
    call Call_000_165e                            ; $5a45: $cd $5e $16
    jp nz, Jump_000_06e2                          ; $5a48: $c2 $e2 $06

    ld c, $50                                     ; $5a4b: $0e $50
    or l                                          ; $5a4d: $b5
    ld e, e                                       ; $5a4e: $5b
    ld c, c                                       ; $5a4f: $49
    pop af                                        ; $5a50: $f1
    inc a                                         ; $5a51: $3c
    ld h, e                                       ; $5a52: $63
    ld e, c                                       ; $5a53: $59
    ld d, d                                       ; $5a54: $52
    sub l                                         ; $5a55: $95
    or l                                          ; $5a56: $b5
    ldh a, [rLY]                                  ; $5a57: $f0 $44
    xor e                                         ; $5a59: $ab
    rst $38                                       ; $5a5a: $ff
    ld c, l                                       ; $5a5b: $4d
    ld [hl], e                                    ; $5a5c: $73
    ld d, h                                       ; $5a5d: $54
    and c                                         ; $5a5e: $a1
    reti                                          ; $5a5f: $d9


    ld e, a                                       ; $5a60: $5f
    nop                                           ; $5a61: $00
    db $fc                                        ; $5a62: $fc
    ld h, h                                       ; $5a63: $64
    ld b, [hl]                                    ; $5a64: $46
    or d                                          ; $5a65: $b2
    ld d, b                                       ; $5a66: $50
    cp [hl]                                       ; $5a67: $be
    ld a, b                                       ; $5a68: $78
    and d                                         ; $5a69: $a2
    ld a, e                                       ; $5a6a: $7b
    dec b                                         ; $5a6b: $05
    ld d, e                                       ; $5a6c: $53
    xor l                                         ; $5a6d: $ad
    add hl, bc                                    ; $5a6e: $09
    rst $08                                       ; $5a6f: $cf
    jp c, $005e                                   ; $5a70: $da $5e $00

    inc a                                         ; $5a73: $3c
    ld e, c                                       ; $5a74: $59
    ld c, [hl]                                    ; $5a75: $4e
    and h                                         ; $5a76: $a4
    adc $b8                                       ; $5a77: $ce $b8
    sbc d                                         ; $5a79: $9a
    sub d                                         ; $5a7a: $92
    ld [c], a                                     ; $5a7b: $e2
    ld a, c                                       ; $5a7c: $79
    add $32                                       ; $5a7d: $c6 $32
    ld l, [hl]                                    ; $5a7f: $6e
    cp c                                          ; $5a80: $b9
    ld e, l                                       ; $5a81: $5d
    push af                                       ; $5a82: $f5
    dec h                                         ; $5a83: $25
    ld c, a                                       ; $5a84: $4f
    ld sp, $719d                                  ; $5a85: $31 $9d $71
    halt                                          ; $5a88: $76
    ld [c], a                                     ; $5a89: $e2
    add hl, sp                                    ; $5a8a: $39
    ld hl, $5c17                                  ; $5a8b: $21 $17 $5c
    ld d, [hl]                                    ; $5a8e: $56
    rrca                                          ; $5a8f: $0f
    rst $38                                       ; $5a90: $ff
    db $fd                                        ; $5a91: $fd
    or l                                          ; $5a92: $b5
    adc [hl]                                      ; $5a93: $8e
    ld l, [hl]                                    ; $5a94: $6e
    ld c, d                                       ; $5a95: $4a
    ld a, [bc]                                    ; $5a96: $0a
    ld a, [hl]                                    ; $5a97: $7e
    reti                                          ; $5a98: $d9


    ld a, a                                       ; $5a99: $7f
    db $eb                                        ; $5a9a: $eb
    ldh [$b6], a                                  ; $5a9b: $e0 $b6
    adc l                                         ; $5a9d: $8d
    cp c                                          ; $5a9e: $b9
    inc c                                         ; $5a9f: $0c
    cp $b7                                        ; $5aa0: $fe $b7
    push de                                       ; $5aa2: $d5
    jr jr_05b_5a35                                ; $5aa3: $18 $90

    jr z, @-$09                                   ; $5aa5: $28 $f5

    rst $28                                       ; $5aa7: $ef
    rst $10                                       ; $5aa8: $d7
    dec b                                         ; $5aa9: $05
    nop                                           ; $5aaa: $00
    sbc h                                         ; $5aab: $9c
    cp a                                          ; $5aac: $bf
    dec a                                         ; $5aad: $3d
    ld d, c                                       ; $5aae: $51
    ld d, $25                                     ; $5aaf: $16 $25
    sbc b                                         ; $5ab1: $98
    ld l, d                                       ; $5ab2: $6a
    and a                                         ; $5ab3: $a7
    ld b, l                                       ; $5ab4: $45
    ld l, c                                       ; $5ab5: $69
    xor $56                                       ; $5ab6: $ee $56
    ld l, l                                       ; $5ab8: $6d
    ld d, d                                       ; $5ab9: $52
    inc a                                         ; $5aba: $3c
    rst $08                                       ; $5abb: $cf
    ld e, b                                       ; $5abc: $58
    ld b, $05                                     ; $5abd: $06 $05
    nop                                           ; $5abf: $00
    ret nc                                        ; $5ac0: $d0

    and l                                         ; $5ac1: $a5
    jp $3595                                      ; $5ac2: $c3 $95 $35


    ld d, l                                       ; $5ac5: $55
    sub $b2                                       ; $5ac6: $d6 $b2
    ld l, l                                       ; $5ac8: $6d
    jp nc, $d6bd                                  ; $5ac9: $d2 $bd $d6

    ld b, h                                       ; $5acc: $44
    ld [hl], l                                    ; $5acd: $75
    ld bc, $300e                                  ; $5ace: $01 $0e $30
    add hl, hl                                    ; $5ad1: $29
    ld hl, sp+$7b                                 ; $5ad2: $f8 $7b
    cp [hl]                                       ; $5ad4: $be
    and d                                         ; $5ad5: $a2
    ld l, l                                       ; $5ad6: $6d
    rst $28                                       ; $5ad7: $ef
    or l                                          ; $5ad8: $b5
    and [hl]                                      ; $5ad9: $a6
    ld c, e                                       ; $5ada: $4b
    ret nc                                        ; $5adb: $d0

    and l                                         ; $5adc: $a5
    db $f4                                        ; $5add: $f4
    rst $08                                       ; $5ade: $cf
    ld hl, sp-$4b                                 ; $5adf: $f8 $b5
    dec d                                         ; $5ae1: $15
    adc h                                         ; $5ae2: $8c
    and e                                         ; $5ae3: $a3
    rst $00                                       ; $5ae4: $c7
    set 7, [hl]                                   ; $5ae5: $cb $fe
    cp [hl]                                       ; $5ae7: $be
    ld b, a                                       ; $5ae8: $47
    rst $30                                       ; $5ae9: $f7
    rst $18                                       ; $5aea: $df
    rst $38                                       ; $5aeb: $ff
    and l                                         ; $5aec: $a5
    dec sp                                        ; $5aed: $3b
    jp c, $ffc8                                   ; $5aee: $da $c8 $ff

    add e                                         ; $5af1: $83
    ldh a, [$73]                                  ; $5af2: $f0 $73
    inc bc                                        ; $5af4: $03
    ld e, $e1                                     ; $5af5: $1e $e1
    ld b, h                                       ; $5af7: $44
    ld h, c                                       ; $5af8: $61
    push de                                       ; $5af9: $d5
    ld e, d                                       ; $5afa: $5a
    cpl                                           ; $5afb: $2f
    inc d                                         ; $5afc: $14
    nop                                           ; $5afd: $00
    ret nc                                        ; $5afe: $d0

    xor e                                         ; $5aff: $ab
    ld a, h                                       ; $5b00: $7c
    db $e3                                        ; $5b01: $e3
    ret nc                                        ; $5b02: $d0

    inc h                                         ; $5b03: $24
    xor d                                         ; $5b04: $aa
    dec bc                                        ; $5b05: $0b
    nop                                           ; $5b06: $00
    sbc h                                         ; $5b07: $9c
    ld e, e                                       ; $5b08: $5b
    and e                                         ; $5b09: $a3
    add h                                         ; $5b0a: $84
    dec h                                         ; $5b0b: $25
    ei                                            ; $5b0c: $fb
    rst $28                                       ; $5b0d: $ef
    rst $08                                       ; $5b0e: $cf
    ld e, a                                       ; $5b0f: $5f
    ld d, $9a                                     ; $5b10: $16 $9a
    cp e                                          ; $5b12: $bb
    ld d, l                                       ; $5b13: $55
    ld a, e                                       ; $5b14: $7b
    ret                                           ; $5b15: $c9


    or c                                          ; $5b16: $b1
    ld b, e                                       ; $5b17: $43
    ld [$fd81], a                                 ; $5b18: $ea $81 $fd
    adc d                                         ; $5b1b: $8a

Jump_05b_5b1c:
    ld [hl+], a                                   ; $5b1c: $22
    jp nc, Jump_05b_73c4                          ; $5b1d: $d2 $c4 $73

    ld a, a                                       ; $5b20: $7f
    rst $30                                       ; $5b21: $f7
    res 1, a                                      ; $5b22: $cb $8f
    xor $ec                                       ; $5b24: $ee $ec
    adc $ac                                       ; $5b26: $ce $ac
    adc c                                         ; $5b28: $89
    dec de                                        ; $5b29: $1b
    nop                                           ; $5b2a: $00
    ret nc                                        ; $5b2b: $d0

    dec l                                         ; $5b2c: $2d
    dec de                                        ; $5b2d: $1b
    ret z                                         ; $5b2e: $c8

    or [hl]                                       ; $5b2f: $b6
    ei                                            ; $5b30: $fb
    ld l, e                                       ; $5b31: $6b
    or h                                          ; $5b32: $b4
    cp [hl]                                       ; $5b33: $be
    ld a, [$ffef]                                 ; $5b34: $fa $ef $ff
    ld e, d                                       ; $5b37: $5a
    ld [hl], l                                    ; $5b38: $75
    and h                                         ; $5b39: $a4

Jump_05b_5b3a:
    ld c, l                                       ; $5b3a: $4d
    add hl, sp                                    ; $5b3b: $39
    pop de                                        ; $5b3c: $d1
    dec h                                         ; $5b3d: $25
    rst $08                                       ; $5b3e: $cf
    add hl, hl                                    ; $5b3f: $29
    adc l                                         ; $5b40: $8d
    ld a, [hl+]                                   ; $5b41: $2a
    ld a, [hl+]                                   ; $5b42: $2a
    ld a, c                                       ; $5b43: $79
    adc d                                         ; $5b44: $8a
    jp hl                                         ; $5b45: $e9


    adc h                                         ; $5b46: $8c
    or e                                          ; $5b47: $b3
    inc de                                        ; $5b48: $13
    ld c, a                                       ; $5b49: $4f
    cp a                                          ; $5b4a: $bf
    or d                                          ; $5b4b: $b2
    inc d                                         ; $5b4c: $14
    ld [de], a                                    ; $5b4d: $12
    and l                                         ; $5b4e: $a5
    ld e, $fe                                     ; $5b4f: $1e $fe
    ei                                            ; $5b51: $fb
    ld l, e                                       ; $5b52: $6b
    dec e                                         ; $5b53: $1d
    ld d, c                                       ; $5b54: $51
    rla                                           ; $5b55: $17
    nop                                           ; $5b56: $00
    rst $10                                       ; $5b57: $d7
    ld [hl], l                                    ; $5b58: $75
    add hl, sp                                    ; $5b59: $39
    rst $28                                       ; $5b5a: $ef
    and d                                         ; $5b5b: $a2
    ld [hl], e                                    ; $5b5c: $73
    adc $39                                       ; $5b5d: $ce $39
    ld [hl], e                                    ; $5b5f: $73
    ld b, [hl]                                    ; $5b60: $46
    ld a, $4a                                     ; $5b61: $3e $4a
    db $fd                                        ; $5b63: $fd
    rlca                                          ; $5b64: $07
    add a                                         ; $5b65: $87
    call $9fe1                                    ; $5b66: $cd $e1 $9f
    sub a                                         ; $5b69: $97
    ccf                                           ; $5b6a: $3f
    jp nc, $b619                                  ; $5b6b: $d2 $19 $b6

    jp z, Jump_05b_4207                           ; $5b6e: $ca $07 $42

Jump_05b_5b71:
    and d                                         ; $5b71: $a2
    db $e4                                        ; $5b72: $e4
    cp h                                          ; $5b73: $bc
    adc e                                         ; $5b74: $8b
    xor [hl]                                      ; $5b75: $ae
    cp d                                          ; $5b76: $ba
    ld h, $1b                                     ; $5b77: $26 $1b
    add e                                         ; $5b79: $83

Jump_05b_5b7a:
    add l                                         ; $5b7a: $85
    reti                                          ; $5b7b: $d9


    bit 7, [hl]                                   ; $5b7c: $cb $7e

Jump_05b_5b7e:
    ld a, l                                       ; $5b7e: $7d
    ld a, a                                       ; $5b7f: $7f
    cp h                                          ; $5b80: $bc
    ld hl, $cde4                                  ; $5b81: $21 $e4 $cd
    cp $ba                                        ; $5b84: $fe $ba
    ld l, $00                                     ; $5b86: $2e $00
    inc a                                         ; $5b88: $3c
    rst $08                                       ; $5b89: $cf
    ld e, b                                       ; $5b8a: $58
    sub [hl]                                      ; $5b8b: $96
    sub h                                         ; $5b8c: $94
    pop de                                        ; $5b8d: $d1
    ld c, [hl]                                    ; $5b8e: $4e
    jp z, Jump_05b_5b7a                           ; $5b8f: $ca $7a $5b

    rst $30                                       ; $5b92: $f7
    sub $68                                       ; $5b93: $d6 $68
    ld l, [hl]                                    ; $5b95: $6e
    ld b, c                                       ; $5b96: $41
    sub a                                         ; $5b97: $97
    and $d8                                       ; $5b98: $e6 $d8
    adc [hl]                                      ; $5b9a: $8e
    sbc d                                         ; $5b9b: $9a
    rst $38                                       ; $5b9c: $ff
    and l                                         ; $5b9d: $a5
    sbc h                                         ; $5b9e: $9c
    jp nc, $22a8                                  ; $5b9f: $d2 $a8 $22

    ld h, l                                       ; $5ba2: $65
    ld h, a                                       ; $5ba3: $67
    ld l, a                                       ; $5ba4: $6f
    ld [hl+], a                                   ; $5ba5: $22
    ld b, [hl]                                    ; $5ba6: $46
    ld l, e                                       ; $5ba7: $6b
    ld c, e                                       ; $5ba8: $4b
    ld a, [c]                                     ; $5ba9: $f2
    rst $10                                       ; $5baa: $d7
    ld a, [hl-]                                   ; $5bab: $3a
    or [hl]                                       ; $5bac: $b6
    add hl, hl                                    ; $5bad: $29
    xor c                                         ; $5bae: $a9
    db $fc                                        ; $5baf: $fc
    or a                                          ; $5bb0: $b7
    ld d, h                                       ; $5bb1: $54
    ret z                                         ; $5bb2: $c8

    xor $ff                                       ; $5bb3: $ee $ff
    or e                                          ; $5bb5: $b3
    xor l                                         ; $5bb6: $ad
    ld a, h                                       ; $5bb7: $7c
    rst $10                                       ; $5bb8: $d7
    ld d, [hl]                                    ; $5bb9: $56
    dec a                                         ; $5bba: $3d
    xor d                                         ; $5bbb: $aa
    or [hl]                                       ; $5bbc: $b6
    inc [hl]                                      ; $5bbd: $34
    jp Jump_05b_6466                              ; $5bbe: $c3 $66 $64


    db $dd                                        ; $5bc1: $dd
    ld [hl], h                                    ; $5bc2: $74
    xor a                                         ; $5bc3: $af
    add l                                         ; $5bc4: $85
    dec [hl]                                      ; $5bc5: $35
    ld e, l                                       ; $5bc6: $5d
    nop                                           ; $5bc7: $00
    ld a, h                                       ; $5bc8: $7c
    ld h, e                                       ; $5bc9: $63
    ld a, [hl]                                    ; $5bca: $7e
    cp $2a                                        ; $5bcb: $fe $2a
    ld c, d                                       ; $5bcd: $4a
    ld hl, $db24                                  ; $5bce: $21 $24 $db
    ld a, [de]                                    ; $5bd1: $1a

jr_05b_5bd2:
    xor l                                         ; $5bd2: $ad
    ld e, $55                                     ; $5bd3: $1e $55
    ld a, e                                       ; $5bd5: $7b
    adc $d7                                       ; $5bd6: $ce $d7
    ld h, $c5                                     ; $5bd8: $26 $c5
    di                                            ; $5bda: $f3
    adc h                                         ; $5bdb: $8c
    ld h, l                                       ; $5bdc: $65
    sub a                                         ; $5bdd: $97
    inc a                                         ; $5bde: $3c
    sbc h                                         ; $5bdf: $9c
    sub h                                         ; $5be0: $94
    sub e                                         ; $5be1: $93
    ld a, [c]                                     ; $5be2: $f2
    rst $18                                       ; $5be3: $df
    ld c, d                                       ; $5be4: $4a
    ld a, [hl+]                                   ; $5be5: $2a
    cp d                                          ; $5be6: $ba
    ld c, c                                       ; $5be7: $49
    jr nc, jr_05b_5bf8                            ; $5be8: $30 $0e

    ret z                                         ; $5bea: $c8

    jr z, jr_05b_5bd2                             ; $5beb: $28 $e5

    sub h                                         ; $5bed: $94
    ld b, [hl]                                    ; $5bee: $46
    dec [hl]                                      ; $5bef: $35
    db $dd                                        ; $5bf0: $dd
    ld b, h                                       ; $5bf1: $44
    dec h                                         ; $5bf2: $25
    sub a                                         ; $5bf3: $97
    push de                                       ; $5bf4: $d5
    jp Jump_05b_7f7f                              ; $5bf5: $c3 $7f $7f


jr_05b_5bf8:
    xor l                                         ; $5bf8: $ad
    and e                                         ; $5bf9: $a3
    sbc e                                         ; $5bfa: $9b
    ld h, h                                       ; $5bfb: $64

Jump_05b_5bfc:
    ld d, c                                       ; $5bfc: $51
    sbc d                                         ; $5bfd: $9a
    ld h, c                                       ; $5bfe: $61
    inc sp                                        ; $5bff: $33
    or d                                          ; $5c00: $b2
    ld l, [hl]                                    ; $5c01: $6e
    cp d                                          ; $5c02: $ba
    rst $10                                       ; $5c03: $d7
    jp nz, Jump_000_2e9a                          ; $5c04: $c2 $9a $2e

    nop                                           ; $5c07: $00
    ld e, $51                                     ; $5c08: $1e $51
    xor l                                         ; $5c0a: $ad
    jp hl                                         ; $5c0b: $e9


    adc [hl]                                      ; $5c0c: $8e
    ld e, d                                       ; $5c0d: $5a
    push hl                                       ; $5c0e: $e5
    sub h                                         ; $5c0f: $94
    ld d, d                                       ; $5c10: $52
    jp hl                                         ; $5c11: $e9


    ld [hl], a                                    ; $5c12: $77
    cp $cb                                        ; $5c13: $fe $cb
    or [hl]                                       ; $5c15: $b6
    dec sp                                        ; $5c16: $3b
    ld c, d                                       ; $5c17: $4a
    db $e3                                        ; $5c18: $e3
    ld c, h                                       ; $5c19: $4c
    ld [hl], h                                    ; $5c1a: $74
    ld b, $f3                                     ; $5c1b: $06 $f3
    or b                                          ; $5c1d: $b0
    cp $a4                                        ; $5c1e: $fe $a4
    xor $d1                                       ; $5c20: $ee $d1
    db $fd                                        ; $5c22: $fd
    or d                                          ; $5c23: $b2
    db $10                                        ; $5c24: $10
    sbc [hl]                                      ; $5c25: $9e
    push de                                       ; $5c26: $d5
    cp l                                          ; $5c27: $bd
    dec [hl]                                      ; $5c28: $35
    xor h                                         ; $5c29: $ac
    ld e, a                                       ; $5c2a: $5f
    ld d, c                                       ; $5c2b: $51
    ld [hl], c                                    ; $5c2c: $71
    rst $18                                       ; $5c2d: $df
    ld d, h                                       ; $5c2e: $54

Call_05b_5c2f:
    ld [hl], e                                    ; $5c2f: $73
    ld c, e                                       ; $5c30: $4b
    rst $20                                       ; $5c31: $e7
    di                                            ; $5c32: $f3
    xor b                                         ; $5c33: $a8
    adc [hl]                                      ; $5c34: $8e
    or e                                          ; $5c35: $b3
    ld h, l                                       ; $5c36: $65
    ld e, e                                       ; $5c37: $5b
    ld e, e                                       ; $5c38: $5b
    ld d, c                                       ; $5c39: $51
    rla                                           ; $5c3a: $17
    nop                                           ; $5c3b: $00
    ret nc                                        ; $5c3c: $d0

    sub l                                         ; $5c3d: $95
    call nc, $ba3d                                ; $5c3e: $d4 $3d $ba
    ld e, a                                       ; $5c41: $5f
    ld a, b                                       ; $5c42: $78
    and d                                         ; $5c43: $a2
    and $96                                       ; $5c44: $e6 $96
    ldh a, [$9c]                                  ; $5c46: $f0 $9c
    pop de                                        ; $5c48: $d1
    jp nz, $cd7b                                  ; $5c49: $c2 $7b $cd

    ld e, [hl]                                    ; $5c4c: $5e
    rrca                                          ; $5c4d: $0f
    ld a, a                                       ; $5c4e: $7f
    adc a                                         ; $5c4f: $8f
    ld l, c                                       ; $5c50: $69
    ld l, e                                       ; $5c51: $6b
    or $b5                                        ; $5c52: $f6 $b5
    rla                                           ; $5c54: $17
    nop                                           ; $5c55: $00
    ret nc                                        ; $5c56: $d0

    dec h                                         ; $5c57: $25
    inc a                                         ; $5c58: $3c
    ld [hl], c                                    ; $5c59: $71
    adc c                                         ; $5c5a: $89
    ld l, a                                       ; $5c5b: $6f
    ld [hl], h                                    ; $5c5c: $74
    cp a                                          ; $5c5d: $bf
    ld h, b                                       ; $5c5e: $60
    inc [hl]                                      ; $5c5f: $34
    ld e, c                                       ; $5c60: $59
    ld [$134b], sp                                ; $5c61: $08 $4b $13
    rst $00                                       ; $5c64: $c7
    add hl, de                                    ; $5c65: $19
    ld h, [hl]                                    ; $5c66: $66
    sbc a                                         ; $5c67: $9f
    sub h                                         ; $5c68: $94
    add l                                         ; $5c69: $85
    ld a, [c]                                     ; $5c6a: $f2
    ld h, a                                       ; $5c6b: $67
    rst $30                                       ; $5c6c: $f7
    ld e, e                                       ; $5c6d: $5b
    xor a                                         ; $5c6e: $af
    ld [hl-], a                                   ; $5c6f: $32
    or [hl]                                       ; $5c70: $b6
    db $dd                                        ; $5c71: $dd
    ld b, h                                       ; $5c72: $44
    ld a, [de]                                    ; $5c73: $1a
    rlca                                          ; $5c74: $07
    ld c, l                                       ; $5c75: $4d
    ld c, l                                       ; $5c76: $4d
    ld [hl], h                                    ; $5c77: $74
    sbc d                                         ; $5c78: $9a
    ld l, $00                                     ; $5c79: $2e $00
    ret nc                                        ; $5c7b: $d0

    dec h                                         ; $5c7c: $25
    inc a                                         ; $5c7d: $3c
    sub c                                         ; $5c7e: $91
    ld d, h                                       ; $5c7f: $54
    call nc, Call_000_3524                        ; $5c80: $d4 $24 $35
    ld l, [hl]                                    ; $5c83: $6e
    adc [hl]                                      ; $5c84: $8e
    db $dd                                        ; $5c85: $dd
    sbc a                                         ; $5c86: $9f
    cp a                                          ; $5c87: $bf
    push af                                       ; $5c88: $f5
    ld l, d                                       ; $5c89: $6a
    and d                                         ; $5c8a: $a2
    call $52ff                                    ; $5c8b: $cd $ff $52
    ld d, c                                       ; $5c8e: $51
    ld c, h                                       ; $5c8f: $4c
    and d                                         ; $5c90: $a2
    cp d                                          ; $5c91: $ba
    nop                                           ; $5c92: $00
    ld c, $68                                     ; $5c93: $0e $68
    ld c, e                                       ; $5c95: $4b
    inc sp                                        ; $5c96: $33
    jr @-$03                                      ; $5c97: $18 $fb

    jp nc, Jump_05b_7ea8                          ; $5c99: $d2 $a8 $7e

    ld e, c                                       ; $5c9c: $59
    sbc h                                         ; $5c9d: $9c
    di                                            ; $5c9e: $f3
    ld l, e                                       ; $5c9f: $6b
    ld h, c                                       ; $5ca0: $61
    db $fd                                        ; $5ca1: $fd
    ld c, c                                       ; $5ca2: $49
    call $c251                                    ; $5ca3: $cd $51 $c2
    or e                                          ; $5ca6: $b3
    dec h                                         ; $5ca7: $25
    res 7, b                                      ; $5ca8: $cb $b8
    ld a, [hl+]                                   ; $5caa: $2a
    ld l, e                                       ; $5cab: $6b
    sbc l                                         ; $5cac: $9d
    db $dd                                        ; $5cad: $dd
    cpl                                           ; $5cae: $2f
    db $dd                                        ; $5caf: $dd
    ld e, b                                       ; $5cb0: $58
    db $fd                                        ; $5cb1: $fd
    sbc d                                         ; $5cb2: $9a
    add e                                         ; $5cb3: $83
    ld sp, hl                                     ; $5cb4: $f9
    db $db                                        ; $5cb5: $db
    or $27                                        ; $5cb6: $f6 $27
    ld [hl], $47                                  ; $5cb8: $36 $47
    db $eb                                        ; $5cba: $eb
    cp a                                          ; $5cbb: $bf
    nop                                           ; $5cbc: $00
    sbc [hl]                                      ; $5cbd: $9e
    cpl                                           ; $5cbe: $2f
    sbc [hl]                                      ; $5cbf: $9e
    add sp, $0e                                   ; $5cc0: $e8 $0e
    ld hl, sp+$65                                 ; $5cc2: $f8 $65
    ld a, a                                       ; $5cc4: $7f
    rst $18                                       ; $5cc5: $df
    ccf                                           ; $5cc6: $3f
    daa                                           ; $5cc7: $27
    jp nz, Jump_000_3c2f                          ; $5cc8: $c2 $2f $3c

    ld d, c                                       ; $5ccb: $51
    sbc d                                         ; $5ccc: $9a
    reti                                          ; $5ccd: $d9


    add hl, sp                                    ; $5cce: $39
    and h                                         ; $5ccf: $a4
    and d                                         ; $5cd0: $a2
    or h                                          ; $5cd1: $b4
    or d                                          ; $5cd2: $b2
    cp [hl]                                       ; $5cd3: $be
    nop                                           ; $5cd4: $00
    ret nc                                        ; $5cd5: $d0

    sub l                                         ; $5cd6: $95
    call nc, $ba3d                                ; $5cd7: $d4 $3d $ba
    ld e, a                                       ; $5cda: $5f
    ld b, l                                       ; $5cdb: $45
    ld e, e                                       ; $5cdc: $5b
    sbc d                                         ; $5cdd: $9a
    pop bc                                        ; $5cde: $c1
    ret c                                         ; $5cdf: $d8

    sub a                                         ; $5ce0: $97
    ld h, b                                       ; $5ce1: $60
    xor d                                         ; $5ce2: $aa
    sbc l                                         ; $5ce3: $9d
    ld d, $a5                                     ; $5ce4: $16 $a5
    ld a, e                                       ; $5ce6: $7b
    ld h, b                                       ; $5ce7: $60
    db $e3                                        ; $5ce8: $e3
    ld e, d                                       ; $5ce9: $5a
    sub h                                         ; $5cea: $94
    xor $51                                       ; $5ceb: $ee $51
    ccf                                           ; $5ced: $3f
    ld [hl], c                                    ; $5cee: $71
    dec c                                         ; $5cef: $0d
    db $eb                                        ; $5cf0: $eb
    ld [bc], a                                    ; $5cf1: $02
    ld a, h                                       ; $5cf2: $7c
    db $db                                        ; $5cf3: $db
    inc h                                         ; $5cf4: $24
    call c, $5b19                                 ; $5cf5: $dc $19 $5b
    ld c, d                                       ; $5cf8: $4a
    cp c                                          ; $5cf9: $b9
    db $fc                                        ; $5cfa: $fc
    or l                                          ; $5cfb: $b5
    ld l, b                                       ; $5cfc: $68
    jr z, jr_05b_5cff                             ; $5cfd: $28 $00

jr_05b_5cff:
    inc e                                         ; $5cff: $1c
    daa                                           ; $5d00: $27
    ld a, d                                       ; $5d01: $7a
    and d                                         ; $5d02: $a2
    ld l, h                                       ; $5d03: $6c
    adc e                                         ; $5d04: $8b
    and b                                         ; $5d05: $a0
    nop                                           ; $5d06: $00
    ret nc                                        ; $5d07: $d0

    ld [hl], l                                    ; $5d08: $75
    add hl, bc                                    ; $5d09: $09
    ld a, [hl-]                                   ; $5d0a: $3a
    sbc l                                         ; $5d0b: $9d
    inc h                                         ; $5d0c: $24
    adc e                                         ; $5d0d: $8b
    ld d, d                                       ; $5d0e: $52
    adc [hl]                                      ; $5d0f: $8e
    ld l, e                                       ; $5d10: $6b
    xor e                                         ; $5d11: $ab
    inc d                                         ; $5d12: $14
    rst $00                                       ; $5d13: $c7
    inc e                                         ; $5d14: $1c
    dec e                                         ; $5d15: $1d
    rst $20                                       ; $5d16: $e7
    cp h                                          ; $5d17: $bc
    ld a, [c]                                     ; $5d18: $f2
    push bc                                       ; $5d19: $c5
    inc de                                        ; $5d1a: $13
    cp l                                          ; $5d1b: $bd
    rst $20                                       ; $5d1c: $e7
    cp h                                          ; $5d1d: $bc
    ld a, h                                       ; $5d1e: $7c
    ld h, h                                       ; $5d1f: $64
    ld [hl], e                                    ; $5d20: $73
    ld a, [hl]                                    ; $5d21: $7e
    db $fd                                        ; $5d22: $fd
    add hl, sp                                    ; $5d23: $39
    ld a, a                                       ; $5d24: $7f
    ld bc, $680e                                  ; $5d25: $01 $0e $68
    ld c, e                                       ; $5d28: $4b
    inc sp                                        ; $5d29: $33

jr_05b_5d2a:
    jr @-$03                                      ; $5d2a: $18 $fb

    ld [de], a                                    ; $5d2c: $12

jr_05b_5d2d:
    ld c, h                                       ; $5d2d: $4c
    or l                                          ; $5d2e: $b5
    db $d3                                        ; $5d2f: $d3
    and d                                         ; $5d30: $a2
    sub d                                         ; $5d31: $92
    add d                                         ; $5d32: $82
    ld [hl], c                                    ; $5d33: $71
    cp [hl]                                       ; $5d34: $be
    db $fc                                        ; $5d35: $fc
    ld d, c                                       ; $5d36: $51
    ld l, a                                       ; $5d37: $6f
    dec e                                         ; $5d38: $1d
    ld h, a                                       ; $5d39: $67
    sub e                                         ; $5d3a: $93
    cp d                                          ; $5d3b: $ba
    ld b, a                                       ; $5d3c: $47
    rst $30                                       ; $5d3d: $f7
    dec hl                                        ; $5d3e: $2b
    ld d, [hl]                                    ; $5d3f: $56
    ld d, $da                                     ; $5d40: $16 $da
    db $f4                                        ; $5d42: $f4
    ld c, e                                       ; $5d43: $4b
    ld sp, hl                                     ; $5d44: $f9
    ld [c], a                                     ; $5d45: $e2
    adc c                                         ; $5d46: $89
    sbc $69                                       ; $5d47: $de $69
    xor e                                         ; $5d49: $ab
    ld a, e                                       ; $5d4a: $7b
    adc h                                         ; $5d4b: $8c
    xor $51                                       ; $5d4c: $ee $51
    and e                                         ; $5d4e: $a3
    cpl                                           ; $5d4f: $2f
    nop                                           ; $5d50: $00
    ret nc                                        ; $5d51: $d0

    ld [hl], l                                    ; $5d52: $75
    add hl, bc                                    ; $5d53: $09
    ld a, [hl-]                                   ; $5d54: $3a
    sbc l                                         ; $5d55: $9d
    and h                                         ; $5d56: $a4
    ld sp, hl                                     ; $5d57: $f9
    ld d, l                                       ; $5d58: $55
    rst $18                                       ; $5d59: $df
    db $fd                                        ; $5d5a: $fd
    ld l, e                                       ; $5d5b: $6b
    xor e                                         ; $5d5c: $ab
    ld sp, hl                                     ; $5d5d: $f9
    ld l, l                                       ; $5d5e: $6d
    ld hl, sp+$1a                                 ; $5d5f: $f8 $1a
    ld h, a                                       ; $5d61: $67
    ld [c], a                                     ; $5d62: $e2
    ld e, a                                       ; $5d63: $5f
    ld a, [c]                                     ; $5d64: $f2
    adc b                                         ; $5d65: $88
    ld l, d                                       ; $5d66: $6a
    and a                                         ; $5d67: $a7
    ld b, l                                       ; $5d68: $45
    dec hl                                        ; $5d69: $2b
    ld [hl], $a7                                  ; $5d6a: $36 $a7
    ld d, [hl]                                    ; $5d6c: $56
    ld h, a                                       ; $5d6d: $67
    ld [hl], e                                    ; $5d6e: $73
    ld [de], a                                    ; $5d6f: $12
    ld l, c                                       ; $5d70: $69
    xor $e6                                       ; $5d71: $ee $e6
    pop de                                        ; $5d73: $d1
    inc h                                         ; $5d74: $24
    or $be                                        ; $5d75: $f6 $be
    ccf                                           ; $5d77: $3f
    ld l, h                                       ; $5d78: $6c
    rst $38                                       ; $5d79: $ff
    ld [bc], a                                    ; $5d7a: $02
    ret nc                                        ; $5d7b: $d0

    sub l                                         ; $5d7c: $95
    inc d                                         ; $5d7d: $14
    sbc [hl]                                      ; $5d7e: $9e
    or l                                          ; $5d7f: $b5
    sbc l                                         ; $5d80: $9d
    jr z, jr_05b_5e02                             ; $5d81: $28 $7f

    sbc e                                         ; $5d83: $9b
    ld a, [hl+]                                   ; $5d84: $2a
    ld l, e                                       ; $5d85: $6b
    jr z, jr_05b_5d88                             ; $5d86: $28 $00

jr_05b_5d88:
    ret nc                                        ; $5d88: $d0

    sub l                                         ; $5d89: $95
    call nc, $ba3d                                ; $5d8a: $d4 $3d $ba
    ld e, a                                       ; $5d8d: $5f
    jr nc, jr_05b_5d2a                            ; $5d8e: $30 $9a

    adc d                                         ; $5d90: $8a
    and d                                         ; $5d91: $a2
    sub d                                         ; $5d92: $92
    sbc d                                         ; $5d93: $9a
    pop bc                                        ; $5d94: $c1
    jr jr_05b_5d2d                                ; $5d95: $18 $96

    and d                                         ; $5d97: $a2
    sbc e                                         ; $5d98: $9b
    inc d                                         ; $5d99: $14
    ld l, l                                       ; $5d9a: $6d
    db $db                                        ; $5d9b: $db
    or d                                          ; $5d9c: $b2
    ld l, l                                       ; $5d9d: $6d
    cp d                                          ; $5d9e: $ba
    nop                                           ; $5d9f: $00
    db $fc                                        ; $5da0: $fc
    cp b                                          ; $5da1: $b8
    add hl, sp                                    ; $5da2: $39
    halt                                          ; $5da3: $76
    ld a, a                                       ; $5da4: $7f
    cp $d6                                        ; $5da5: $fe $d6
    xor e                                         ; $5da7: $ab
    jr z, @+$70                                   ; $5da8: $28 $6e

    nop                                           ; $5daa: $00
    ld a, h                                       ; $5dab: $7c
    db $db                                        ; $5dac: $db
    inc h                                         ; $5dad: $24
    sbc b                                         ; $5dae: $98
    ld l, d                                       ; $5daf: $6a
    ld c, l                                       ; $5db0: $4d
    ld c, l                                       ; $5db1: $4d
    ld [hl], h                                    ; $5db2: $74
    ld c, $29                                     ; $5db3: $0e $29
    dec sp                                        ; $5db5: $3b
    add hl, hl                                    ; $5db6: $29
    pop de                                        ; $5db7: $d1
    add hl, sp                                    ; $5db8: $39
    and h                                         ; $5db9: $a4
    adc [hl]                                      ; $5dba: $8e
    cp c                                          ; $5dbb: $b9
    or [hl]                                       ; $5dbc: $b6
    ld d, b                                       ; $5dbd: $50
    nop                                           ; $5dbe: $00
    ret nc                                        ; $5dbf: $d0

    dec h                                         ; $5dc0: $25
    inc a                                         ; $5dc1: $3c
    and c                                         ; $5dc2: $a1
    and d                                         ; $5dc3: $a2
    or h                                          ; $5dc4: $b4
    or d                                          ; $5dc5: $b2
    ld d, [hl]                                    ; $5dc6: $56
    db $ed                                        ; $5dc7: $ed
    sub [hl]                                      ; $5dc8: $96
    xor $ad                                       ; $5dc9: $ee $ad
    ld c, c                                       ; $5dcb: $49
    ld d, h                                       ; $5dcc: $54
    rst $20                                       ; $5dcd: $e7
    rst $10                                       ; $5dce: $d7
    ld a, [$5305]                                 ; $5dcf: $fa $05 $53
    xor l                                         ; $5dd2: $ad
    dec [hl]                                      ; $5dd3: $35
    ld e, l                                       ; $5dd4: $5d
    nop                                           ; $5dd5: $00
    ret nc                                        ; $5dd6: $d0

    dec h                                         ; $5dd7: $25
    inc a                                         ; $5dd8: $3c
    ld [hl], c                                    ; $5dd9: $71
    ret                                           ; $5dda: $c9


    ld d, e                                       ; $5ddb: $53
    inc l                                         ; $5ddc: $2c
    ld a, c                                       ; $5ddd: $79
    ld de, $276f                                  ; $5dde: $11 $6f $27
    ld [hl-], a                                   ; $5de1: $32
    ld h, c                                       ; $5de2: $61
    ret                                           ; $5de3: $c9


    ld [c], a                                     ; $5de4: $e2
    sbc h                                         ; $5de5: $9c
    rst $18                                       ; $5de6: $df
    adc d                                         ; $5de7: $8a
    jp nc, $738c                                  ; $5de8: $d2 $8c $73

    add d                                         ; $5deb: $82
    dec [hl]                                      ; $5dec: $35
    push hl                                       ; $5ded: $e5
    inc h                                         ; $5dee: $24
    add [hl]                                      ; $5def: $86
    db $dd                                        ; $5df0: $dd
    ld a, a                                       ; $5df1: $7f
    adc c                                         ; $5df2: $89
    scf                                           ; $5df3: $37
    adc [hl]                                      ; $5df4: $8e
    rst $38                                       ; $5df5: $ff
    ld l, e                                       ; $5df6: $6b
    dec sp                                        ; $5df7: $3b
    ld d, c                                       ; $5df8: $51
    ld d, $50                                     ; $5df9: $16 $50
    nop                                           ; $5dfb: $00
    ld e, $a1                                     ; $5dfc: $1e $a1
    ld sp, hl                                     ; $5dfe: $f9
    xor a                                         ; $5dff: $af

Call_05b_5e00:
    dec sp                                        ; $5e00: $3b
    ld l, d                                       ; $5e01: $6a

jr_05b_5e02:
    ld l, l                                       ; $5e02: $6d
    ld e, e                                       ; $5e03: $5b
    db $e3                                        ; $5e04: $e3
    and b                                         ; $5e05: $a0
    ld e, l                                       ; $5e06: $5d
    ld [hl], d                                    ; $5e07: $72
    ld b, b                                       ; $5e08: $40
    ld e, c                                       ; $5e09: $59
    ld d, e                                       ; $5e0a: $53
    dec bc                                        ; $5e0b: $0b
    ld c, a                                       ; $5e0c: $4f
    db $e4                                        ; $5e0d: $e4
    ld e, a                                       ; $5e0e: $5f
    ld h, d                                       ; $5e0f: $62
    cp a                                          ; $5e10: $bf
    db $dd                                        ; $5e11: $dd
    cp e                                          ; $5e12: $bb
    and l                                         ; $5e13: $a5
    dec a                                         ; $5e14: $3d
    rst $30                                       ; $5e15: $f7
    sub a                                         ; $5e16: $97
    ld a, [$1f99]                                 ; $5e17: $fa $99 $1f
    ld h, c                                       ; $5e1a: $61
    or $17                                        ; $5e1b: $f6 $17
    nop                                           ; $5e1d: $00
    inc e                                         ; $5e1e: $1c
    daa                                           ; $5e1f: $27
    ld a, d                                       ; $5e20: $7a
    and d                                         ; $5e21: $a2
    ld [hl], $fd                                  ; $5e22: $36 $fd
    jp nc, Jump_05b_551c                          ; $5e24: $d2 $1c $55

    ld l, b                                       ; $5e27: $68
    or $49                                        ; $5e28: $f6 $49
    pop af                                        ; $5e2a: $f1
    inc a                                         ; $5e2b: $3c
    ld h, e                                       ; $5e2c: $63
    add hl, de                                    ; $5e2d: $19
    inc d                                         ; $5e2e: $14
    nop                                           ; $5e2f: $00
    ld c, $68                                     ; $5e30: $0e $68
    ld c, e                                       ; $5e32: $4b
    ldh a, [rNR23]                                ; $5e33: $f0 $18
    ld l, h                                       ; $5e35: $6c
    or l                                          ; $5e36: $b5
    ld [hl], e                                    ; $5e37: $73
    adc [hl]                                      ; $5e38: $8e
    ld a, d                                       ; $5e39: $7a
    db $eb                                        ; $5e3a: $eb
    ld c, a                                       ; $5e3b: $4f
    ld l, d                                       ; $5e3c: $6a
    adc [hl]                                      ; $5e3d: $8e
    xor l                                         ; $5e3e: $ad
    ld sp, hl                                     ; $5e3f: $f9
    add d                                         ; $5e40: $82
    ld [hl], c                                    ; $5e41: $71
    ld c, $e5                                     ; $5e42: $0e $e5
    adc e                                         ; $5e44: $8b
    daa                                           ; $5e45: $27
    cp d                                          ; $5e46: $ba
    ld d, a                                       ; $5e47: $57
    ld [hl], c                                    ; $5e48: $71
    add $9c                                       ; $5e49: $c6 $9c
    cpl                                           ; $5e4b: $2f
    rst $38                                       ; $5e4c: $ff
    or a                                          ; $5e4d: $b7
    ld [c], a                                     ; $5e4e: $e2
    xor h                                         ; $5e4f: $ac
    xor $a8                                       ; $5e50: $ee $a8
    cp b                                          ; $5e52: $b8
    adc c                                         ; $5e53: $89
    ld c, d                                       ; $5e54: $4a
    cp $a6                                        ; $5e55: $fe $a6
    ld a, a                                       ; $5e57: $7f
    adc $5f                                       ; $5e58: $ce $5f
    nop                                           ; $5e5a: $00
    ret nc                                        ; $5e5b: $d0

    add hl, hl                                    ; $5e5c: $29
    inc b                                         ; $5e5d: $04
    cp e                                          ; $5e5e: $bb
    pop af                                        ; $5e5f: $f1
    ld a, [hl]                                    ; $5e60: $7e
    db $eb                                        ; $5e61: $eb
    ld d, l                                       ; $5e62: $55
    inc d                                         ; $5e63: $14
    scf                                           ; $5e64: $37
    nop                                           ; $5e65: $00
    inc a                                         ; $5e66: $3c
    sbc c                                         ; $5e67: $99
    ld [hl], c                                    ; $5e68: $71
    sra e                                         ; $5e69: $cb $2b
    or [hl]                                       ; $5e6b: $b6
    ld c, l                                       ; $5e6c: $4d
    and l                                         ; $5e6d: $a5
    add hl, sp                                    ; $5e6e: $39
    ld b, [hl]                                    ; $5e6f: $46
    ld d, l                                       ; $5e70: $55
    sbc h                                         ; $5e71: $9c
    di                                            ; $5e72: $f3

Jump_05b_5e73:
    ld c, c                                       ; $5e73: $49
    db $dd                                        ; $5e74: $dd
    db $db                                        ; $5e75: $db
    inc h                                         ; $5e76: $24
    sbc a                                         ; $5e77: $9f
    ld h, c                                       ; $5e78: $61
    add d                                         ; $5e79: $82
    ld h, c                                       ; $5e7a: $61
    add [hl]                                      ; $5e7b: $86
    ld l, h                                       ; $5e7c: $6c
    ld h, l                                       ; $5e7d: $65
    ld e, a                                       ; $5e7e: $5f
    adc b                                         ; $5e7f: $88
    call c, $9e00                                 ; $5e80: $dc $00 $9e
    db $e3                                        ; $5e83: $e3
    sub [hl]                                      ; $5e84: $96
    ld a, [hl-]                                   ; $5e85: $3a
    ld d, d                                       ; $5e86: $52
    ld [$1ee9], sp                                ; $5e87: $08 $e9 $1e
    ld l, e                                       ; $5e8a: $6b
    cp l                                          ; $5e8b: $bd
    ld e, e                                       ; $5e8c: $5b
    cp $17                                        ; $5e8d: $fe $17
    jp nz, $f82f                                  ; $5e8f: $c2 $2f $f8

    ld h, l                                       ; $5e92: $65
    ld [hl], c                                    ; $5e93: $71
    or [hl]                                       ; $5e94: $b6
    sbc e                                         ; $5e95: $9b
    ld c, b                                       ; $5e96: $48
    dec d                                         ; $5e97: $15
    or d                                          ; $5e98: $b2
    xor l                                         ; $5e99: $ad
    ld [hl], c                                    ; $5e9a: $71
    ld c, [hl]                                    ; $5e9b: $4e
    add sp, -$32                                  ; $5e9c: $e8 $ce
    cp b                                          ; $5e9e: $b8
    jp nc, $efb8                                  ; $5e9f: $d2 $b8 $ef

    xor l                                         ; $5ea2: $ad
    dec bc                                        ; $5ea3: $0b
    nop                                           ; $5ea4: $00
    ld e, $a1                                     ; $5ea5: $1e $a1
    add hl, hl                                    ; $5ea7: $29
    db $fd                                        ; $5ea8: $fd
    inc sp                                        ; $5ea9: $33
    cp [hl]                                       ; $5eaa: $be
    dec [hl]                                      ; $5eab: $35
    inc sp                                        ; $5eac: $33
    bit 1, b                                      ; $5ead: $cb $48
    rst $30                                       ; $5eaf: $f7
    sub $38                                       ; $5eb0: $d6 $38
    db $fd                                        ; $5eb2: $fd
    add d                                         ; $5eb3: $82
    or c                                          ; $5eb4: $b1
    ld a, a                                       ; $5eb5: $7f
    dec hl                                        ; $5eb6: $2b
    xor c                                         ; $5eb7: $a9
    sbc c                                         ; $5eb8: $99
    ld e, c                                       ; $5eb9: $59
    and [hl]                                      ; $5eba: $a6
    ld e, $55                                     ; $5ebb: $1e $55
    ld e, e                                       ; $5ebd: $5b
    add d                                         ; $5ebe: $82
    jp hl                                         ; $5ebf: $e9


    call z, $e288                                 ; $5ec0: $cc $88 $e2
    ld b, $9c                                     ; $5ec3: $06 $9c
    ld l, c                                       ; $5ec5: $69
    jp z, $872d                                   ; $5ec6: $ca $2d $87

    inc c                                         ; $5ec9: $0c
    inc de                                        ; $5eca: $13
    inc c                                         ; $5ecb: $0c
    inc sp                                        ; $5ecc: $33
    ld h, h                                       ; $5ecd: $64
    xor e                                         ; $5ece: $ab
    inc e                                         ; $5ecf: $1c
    ld d, a                                       ; $5ed0: $57

jr_05b_5ed1:
    or $85                                        ; $5ed1: $f6 $85
    cpl                                           ; $5ed3: $2f
    jr jr_05b_5ed1                                ; $5ed4: $18 $fb

    or a                                          ; $5ed6: $b7
    call nc, $66c4                                ; $5ed7: $d4 $c4 $66
    db $10                                        ; $5eda: $10
    ld e, l                                       ; $5edb: $5d
    nop                                           ; $5edc: $00
    sbc h                                         ; $5edd: $9c
    ld l, c                                       ; $5ede: $69
    jp z, $ce2d                                   ; $5edf: $ca $2d $ce

    rst $38                                       ; $5ee2: $ff
    sub $1d                                       ; $5ee3: $d6 $1d
    dec bc                                        ; $5ee5: $0b
    and c                                         ; $5ee6: $a1
    sub $8d                                       ; $5ee7: $d6 $8d
    daa                                           ; $5ee9: $27
    xor $fb                                       ; $5eea: $ee $fb
    ld e, e                                       ; $5eec: $5b
    ld [hl], e                                    ; $5eed: $73
    rst $10                                       ; $5eee: $d7
    adc a                                         ; $5eef: $8f
    or e                                          ; $5ef0: $b3
    ld e, e                                       ; $5ef1: $5b
    call c, Call_05b_7c00                         ; $5ef2: $dc $00 $7c
    ld e, e                                       ; $5ef5: $5b
    and e                                         ; $5ef6: $a3
    inc d                                         ; $5ef7: $14
    xor e                                         ; $5ef8: $ab
    db $fc                                        ; $5ef9: $fc
    reti                                          ; $5efa: $d9


    db $fd                                        ; $5efb: $fd
    ld e, a                                       ; $5efc: $5f
    ld a, [c]                                     ; $5efd: $f2
    or a                                          ; $5efe: $b7
    ld l, c                                       ; $5eff: $69
    ld l, l                                       ; $5f00: $6d
    push hl                                       ; $5f01: $e5
    adc a                                         ; $5f02: $8f
    ld [hl], h                                    ; $5f03: $74
    cp h                                          ; $5f04: $bc
    ld a, d                                       ; $5f05: $7a
    ld d, h                                       ; $5f06: $54
    ld l, l                                       ; $5f07: $6d
    jp hl                                         ; $5f08: $e9


    ld [hl], a                                    ; $5f09: $77
    ld a, [hl]                                    ; $5f0a: $7e
    db $fd                                        ; $5f0b: $fd
    dec b                                         ; $5f0c: $05
    nop                                           ; $5f0d: $00
    ret nc                                        ; $5f0e: $d0

    jp hl                                         ; $5f0f: $e9


    inc h                                         ; $5f10: $24
    reti                                          ; $5f11: $d9


    sub $28                                       ; $5f12: $d6 $28
    ld sp, hl                                     ; $5f14: $f9
    db $db                                        ; $5f15: $db
    or h                                          ; $5f16: $b4
    or [hl]                                       ; $5f17: $b6
    cp d                                          ; $5f18: $ba
    and e                                         ; $5f19: $a3
    adc d                                         ; $5f1a: $8a
    sub d                                         ; $5f1b: $92
    adc d                                         ; $5f1c: $8a
    xor $68                                       ; $5f1d: $ee $68
    reti                                          ; $5f1f: $d9


    cp a                                          ; $5f20: $bf
    or b                                          ; $5f21: $b0
    ld [de], a                                    ; $5f22: $12
    adc d                                         ; $5f23: $8a
    ld [hl], e                                    ; $5f24: $73
    rst $28                                       ; $5f25: $ef
    ld e, a                                       ; $5f26: $5f
    nop                                           ; $5f27: $00
    sbc h                                         ; $5f28: $9c
    ld l, c                                       ; $5f29: $69
    jp z, Jump_000_0e2d                           ; $5f2a: $ca $2d $0e

    ccf                                           ; $5f2d: $3f
    cp d                                          ; $5f2e: $ba
    rra                                           ; $5f2f: $1f
    ld a, [hl]                                    ; $5f30: $7e
    call Call_05b_436f                            ; $5f31: $cd $6f $43
    call nc, $9b1d                                ; $5f34: $d4 $1d $9b
    ld l, [hl]                                    ; $5f37: $6e
    ret                                           ; $5f38: $c9


    and a                                         ; $5f39: $a7
    xor l                                         ; $5f3a: $ad
    dec bc                                        ; $5f3b: $0b
    nop                                           ; $5f3c: $00
    db $fc                                        ; $5f3d: $fc

Call_05b_5f3e:
    and e                                         ; $5f3e: $a3
    ld l, d                                       ; $5f3f: $6a
    rst $08                                       ; $5f40: $cf
    ld a, c                                       ; $5f41: $79
    ld sp, hl                                     ; $5f42: $f9
    inc hl                                        ; $5f43: $23
    dec e                                         ; $5f44: $1d
    rst $30                                       ; $5f45: $f7
    ld e, d                                       ; $5f46: $5a
    ld e, b                                       ; $5f47: $58
    cp a                                          ; $5f48: $bf
    ld [hl], d                                    ; $5f49: $72
    ld e, h                                       ; $5f4a: $5c
    reti                                          ; $5f4b: $d9


    ccf                                           ; $5f4c: $3f
    db $e4                                        ; $5f4d: $e4
    dec b                                         ; $5f4e: $05
    db $d3                                        ; $5f4f: $d3
    sbc c                                         ; $5f50: $99
    db $eb                                        ; $5f51: $eb
    call z, $8f5a                                 ; $5f52: $cc $5a $8f
    ld l, d                                       ; $5f55: $6a
    db $fc                                        ; $5f56: $fc
    dec bc                                        ; $5f57: $0b
    nop                                           ; $5f58: $00
    sbc [hl]                                      ; $5f59: $9e
    db $e3                                        ; $5f5a: $e3
    jp c, Jump_05b_44f6                           ; $5f5b: $da $f6 $44

    db $dd                                        ; $5f5e: $dd
    ld d, c                                       ; $5f5f: $51
    ld b, l                                       ; $5f60: $45
    cp d                                          ; $5f61: $ba
    rst $00                                       ; $5f62: $c7
    ld hl, sp+$73                                 ; $5f63: $f8 $73
    ld [bc], a                                    ; $5f65: $02
    ld c, d                                       ; $5f66: $4a
    ret nc                                        ; $5f67: $d0

    and l                                         ; $5f68: $a5
    db $f4                                        ; $5f69: $f4
    rst $08                                       ; $5f6a: $cf
    ld a, b                                       ; $5f6b: $78
    reti                                          ; $5f6c: $d9


    jr jr_05b_5fac                                ; $5f6d: $18 $3d

    cp d                                          ; $5f6f: $ba
    rst $38                                       ; $5f70: $ff
    add l                                         ; $5f71: $85
    ld a, [hl]                                    ; $5f72: $7e
    ld [hl], h                                    ; $5f73: $74
    ccf                                           ; $5f74: $3f
    db $fc                                        ; $5f75: $fc
    ld a, a                                       ; $5f76: $7f
    ld bc, $7f3c                                  ; $5f77: $01 $3c $7f
    add $af                                       ; $5f7a: $c6 $af
    ld l, l                                       ; $5f7c: $6d
    xor c                                         ; $5f7d: $a9
    rst $00                                       ; $5f7e: $c7
    add hl, sp                                    ; $5f7f: $39
    xor a                                         ; $5f80: $af
    ld a, e                                       ; $5f81: $7b
    call z, $d2ff                                 ; $5f82: $cc $ff $d2
    adc a                                         ; $5f85: $8f
    xor $bf                                       ; $5f86: $ee $bf
    rst $38                                       ; $5f88: $ff
    dec hl                                        ; $5f89: $2b
    xor c                                         ; $5f8a: $a9
    ld a, e                                       ; $5f8b: $7b
    ld [hl], h                                    ; $5f8c: $74
    cp a                                          ; $5f8d: $bf
    xor $ad                                       ; $5f8e: $ee $ad
    ld d, c                                       ; $5f90: $51
    jp nz, $9f92                                  ; $5f91: $c2 $92 $9f

    ld e, c                                       ; $5f94: $59
    sub $4d                                       ; $5f95: $d6 $4d
    add hl, sp                                    ; $5f97: $39
    xor c                                         ; $5f98: $a9
    adc c                                         ; $5f99: $89
    adc $a1                                       ; $5f9a: $ce $a1
    dec bc                                        ; $5f9c: $0b
    nop                                           ; $5f9d: $00
    inc e                                         ; $5f9e: $1c
    ld d, l                                       ; $5f9f: $55
    pop af                                        ; $5fa0: $f1
    adc d                                         ; $5fa1: $8a
    or [hl]                                       ; $5fa2: $b6
    xor l                                         ; $5fa3: $ad
    ld [c], a                                     ; $5fa4: $e2
    jp c, Jump_000_2273                           ; $5fa5: $da $73 $22

    add hl, hl                                    ; $5fa8: $29
    sbc [hl]                                      ; $5fa9: $9e
    ld h, a                                       ; $5faa: $67
    inc l                                         ; $5fab: $2c

jr_05b_5fac:
    cp e                                          ; $5fac: $bb
    call nz, $8c1b                                ; $5fad: $c4 $1b $8c
    and c                                         ; $5fb0: $a1
    ld l, h                                       ; $5fb1: $6c
    cp e                                          ; $5fb2: $bb
    and e                                         ; $5fb3: $a3
    ld [hl], h                                    ; $5fb4: $74
    ld h, a                                       ; $5fb5: $67
    ld e, h                                       ; $5fb6: $5c
    ld l, c                                       ; $5fb7: $69
    call c, Call_05b_56f7                         ; $5fb8: $dc $f7 $56
    ld d, d                                       ; $5fbb: $52
    rst $30                                       ; $5fbc: $f7
    halt                                          ; $5fbd: $76
    sub h                                         ; $5fbe: $94
    xor $a8                                       ; $5fbf: $ee $a8
    cp l                                          ; $5fc1: $bd
    nop                                           ; $5fc2: $00
    sbc h                                         ; $5fc3: $9c
    ld e, e                                       ; $5fc4: $5b
    and e                                         ; $5fc5: $a3
    inc [hl]                                      ; $5fc6: $34
    cp a                                          ; $5fc7: $bf
    ld [$ffbb], a                                 ; $5fc8: $ea $bb $ff
    sub l                                         ; $5fcb: $95
    ccf                                           ; $5fcc: $3f
    cp e                                          ; $5fcd: $bb
    rst $38                                       ; $5fce: $ff
    ld c, e                                       ; $5fcf: $4b
    ld [hl], a                                    ; $5fd0: $77
    ld d, h                                       ; $5fd1: $54
    ld d, c                                       ; $5fd2: $51
    ld d, d                                       ; $5fd3: $52
    ld d, c                                       ; $5fd4: $51
    dec d                                         ; $5fd5: $15
    and l                                         ; $5fd6: $a5
    add hl, sp                                    ; $5fd7: $39
    or [hl]                                       ; $5fd8: $b6
    add h                                         ; $5fd9: $84
    ld a, [hl]                                    ; $5fda: $7e
    ld [hl], h                                    ; $5fdb: $74
    ccf                                           ; $5fdc: $3f
    db $fc                                        ; $5fdd: $fc
    ld c, d                                       ; $5fde: $4a
    add e                                         ; $5fdf: $83
    db $dd                                        ; $5fe0: $dd
    ld l, b                                       ; $5fe1: $68
    dec a                                         ; $5fe2: $3d
    add $05                                       ; $5fe3: $c6 $05
    nop                                           ; $5fe5: $00
    inc e                                         ; $5fe6: $1c

Jump_05b_5fe7:
    ld d, l                                       ; $5fe7: $55
    pop af                                        ; $5fe8: $f1
    cp d                                          ; $5fe9: $ba
    cp a                                          ; $5fea: $bf
    rst $20                                       ; $5feb: $e7
    ld a, a                                       ; $5fec: $7f
    dec h                                         ; $5fed: $25
    push bc                                       ; $5fee: $c5
    di                                            ; $5fef: $f3
    adc h                                         ; $5ff0: $8c
    ld h, l                                       ; $5ff1: $65
    sub a                                         ; $5ff2: $97
    jr c, jr_05b_6038                             ; $5ff3: $38 $43

    ld [hl], a                                    ; $5ff5: $77
    ld d, h                                       ; $5ff6: $54
    add h                                         ; $5ff7: $84
    ld a, [c]                                     ; $5ff8: $f2
    ld h, a                                       ; $5ff9: $67
    rst $30                                       ; $5ffa: $f7
    ld e, e                                       ; $5ffb: $5b
    xor a                                         ; $5ffc: $af
    jp nc, $df2c                                  ; $5ffd: $d2 $2c $df

    cp d                                          ; $6000: $ba
    nop                                           ; $6001: $00
    cp h                                          ; $6002: $bc
    ld e, a                                       ; $6003: $5f
    push af                                       ; $6004: $f5
    db $dd                                        ; $6005: $dd
    cp a                                          ; $6006: $bf
    or [hl]                                       ; $6007: $b6
    ld a, [hl-]                                   ; $6008: $3a
    sub h                                         ; $6009: $94
    halt                                          ; $600a: $76
    sub b                                         ; $600b: $90
    xor $a8                                       ; $600c: $ee $a8
    cp b                                          ; $600e: $b8
    adc c                                         ; $600f: $89
    ld a, [hl+]                                   ; $6010: $2a
    add hl, hl                                    ; $6011: $29
    db $f4                                        ; $6012: $f4
    and e                                         ; $6013: $a3
    ei                                            ; $6014: $fb
    pop hl                                        ; $6015: $e1
    rst $10                                       ; $6016: $d7
    dec a                                         ; $6017: $3d
    adc $c4                                       ; $6018: $ce $c4
    dec a                                         ; $601a: $3d
    ld de, $adb2                                  ; $601b: $11 $b2 $ad
    pop af                                        ; $601e: $f1
    rla                                           ; $601f: $17
    nop                                           ; $6020: $00
    cp h                                          ; $6021: $bc
    ld l, a                                       ; $6022: $6f
    ld sp, hl                                     ; $6023: $f9
    and [hl]                                      ; $6024: $a6
    inc bc                                        ; $6025: $03
    dec hl                                        ; $6026: $2b
    and d                                         ; $6027: $a2
    db $dd                                        ; $6028: $dd
    sub b                                         ; $6029: $90
    adc $c0                                       ; $602a: $ce $c0
    adc [hl]                                      ; $602c: $8e
    or b                                          ; $602d: $b0
    adc b                                         ; $602e: $88
    cp d                                          ; $602f: $ba
    inc h                                         ; $6030: $24
    sbc [hl]                                      ; $6031: $9e
    ld c, a                                       ; $6032: $4f
    adc b                                         ; $6033: $88
    dec l                                         ; $6034: $2d
    ld h, h                                       ; $6035: $64
    ld c, e                                       ; $6036: $4b
    scf                                           ; $6037: $37

jr_05b_6038:
    rst $10                                       ; $6038: $d7
    sbc h                                         ; $6039: $9c
    db $eb                                        ; $603a: $eb
    add [hl]                                      ; $603b: $86
    ld [hl], h                                    ; $603c: $74
    ld [hl], b                                    ; $603d: $70
    call nc, $45bf                                ; $603e: $d4 $bf $45
    call nc, Call_000_0005                        ; $6041: $d4 $05 $00
    inc e                                         ; $6044: $1c
    ld a, [hl]                                    ; $6045: $7e
    db $f4                                        ; $6046: $f4
    jr nc, jr_05b_60aa                            ; $6047: $30 $61

    xor c                                         ; $6049: $a9
    jp hl                                         ; $604a: $e9


    inc [hl]                                      ; $604b: $34
    ret                                           ; $604c: $c9


    and a                                         ; $604d: $a7
    call Call_000_34e9                            ; $604e: $cd $e9 $34
    ret                                           ; $6051: $c9


    daa                                           ; $6052: $27
    ld [$2ace], a                                 ; $6053: $ea $ce $2a
    db $eb                                        ; $6056: $eb
    ld c, e                                       ; $6057: $4b
    ld c, $69                                     ; $6058: $0e $69
    ld [hl], e                                    ; $605a: $73
    ld a, [hl-]                                   ; $605b: $3a
    ld h, a                                       ; $605c: $67
    dec hl                                        ; $605d: $2b
    ld c, d                                       ; $605e: $4a
    db $fd                                        ; $605f: $fd
    inc c                                         ; $6060: $0c
    add $3d                                       ; $6061: $c6 $3d
    rst $20                                       ; $6063: $e7
    cp a                                          ; $6064: $bf
    ld h, h                                       ; $6065: $64
    ld h, e                                       ; $6066: $63
    or b                                          ; $6067: $b0
    jr nc, @+$7d                                  ; $6068: $30 $7b

    reti                                          ; $606a: $d9


    sbc a                                         ; $606b: $9f
    dec [hl]                                      ; $606c: $35
    ei                                            ; $606d: $fb
    dec bc                                        ; $606e: $0b
    nop                                           ; $606f: $00
    ld a, h                                       ; $6070: $7c
    or c                                          ; $6071: $b1
    rst $20                                       ; $6072: $e7
    sub b                                         ; $6073: $90
    or b                                          ; $6074: $b0
    sub h                                         ; $6075: $94
    ld l, a                                       ; $6076: $6f
    inc e                                         ; $6077: $1c
    jp nc, $7afc                                  ; $6078: $d2 $fc $7a

    call $b6ac                                    ; $607b: $cd $ac $b6
    sbc e                                         ; $607e: $9b
    ld [hl], d                                    ; $607f: $72
    ld a, [hl+]                                   ; $6080: $2a
    sub d                                         ; $6081: $92
    db $ed                                        ; $6082: $ed
    ld [hl], $e9                                  ; $6083: $36 $e9
    ld b, h                                       ; $6085: $44
    dec [hl]                                      ; $6086: $35
    or $a8                                        ; $6087: $f6 $a8
    ld e, d                                       ; $6089: $5a
    db $eb                                        ; $608a: $eb
    ld c, a                                       ; $608b: $4f
    jp z, Jump_05b_7621                           ; $608c: $ca $21 $76

    rlca                                          ; $608f: $07
    cp e                                          ; $6090: $bb
    nop                                           ; $6091: $00
    inc e                                         ; $6092: $1c
    daa                                           ; $6093: $27
    jp c, $937f                                   ; $6094: $da $7f $93

    ld l, l                                       ; $6097: $6d
    sub c                                         ; $6098: $91
    ld b, $4b                                     ; $6099: $06 $4b
    db $e3                                        ; $609b: $e3
    sub e                                         ; $609c: $93
    sbc d                                         ; $609d: $9a
    and e                                         ; $609e: $a3
    add h                                         ; $609f: $84
    daa                                           ; $60a0: $27
    ld e, d                                       ; $60a1: $5a
    rst $30                                       ; $60a2: $f7
    cp a                                          ; $60a3: $bf
    reti                                          ; $60a4: $d9


    dec bc                                        ; $60a5: $0b
    ld a, [hl]                                    ; $60a6: $7e
    ld sp, hl                                     ; $60a7: $f9
    dec sp                                        ; $60a8: $3b
    rst $20                                       ; $60a9: $e7

jr_05b_60aa:
    ld d, b                                       ; $60aa: $50
    ld h, [hl]                                    ; $60ab: $66
    ld c, l                                       ; $60ac: $4d
    add hl, sp                                    ; $60ad: $39
    reti                                          ; $60ae: $d9


    ld a, [bc]                                    ; $60af: $0a
    di                                            ; $60b0: $f3
    ld l, a                                       ; $60b1: $6f
    push hl                                       ; $60b2: $e5
    dec de                                        ; $60b3: $1b
    inc l                                         ; $60b4: $2c
    adc $21                                       ; $60b5: $ce $21
    db $db                                        ; $60b7: $db
    dec bc                                        ; $60b8: $0b
    nop                                           ; $60b9: $00
    cp h                                          ; $60ba: $bc
    reti                                          ; $60bb: $d9


    add hl, sp                                    ; $60bc: $39
    and h                                         ; $60bd: $a4
    ld a, e                                       ; $60be: $7b
    adc e                                         ; $60bf: $8b
    db $e4                                        ; $60c0: $e4
    rst $00                                       ; $60c1: $c7
    halt                                          ; $60c2: $76
    db $e3                                        ; $60c3: $e3
    sub a                                         ; $60c4: $97
    ld l, h                                       ; $60c5: $6c
    ld l, e                                       ; $60c6: $6b
    or h                                          ; $60c7: $b4
    or d                                          ; $60c8: $b2
    ld l, c                                       ; $60c9: $69
    ld e, e                                       ; $60ca: $5b
    ld [hl], e                                    ; $60cb: $73
    db $eb                                        ; $60cc: $eb
    ld [de], a                                    ; $60cd: $12
    rst $18                                       ; $60ce: $df
    halt                                          ; $60cf: $76
    sub h                                         ; $60d0: $94
    ldh a, [$ac]                                  ; $60d1: $f0 $ac
    xor l                                         ; $60d3: $ad
    ld a, [c]                                     ; $60d4: $f2
    jr c, jr_05b_6100                             ; $60d5: $38 $29

    jp nz, $9a51                                  ; $60d7: $c2 $51 $9a

    ccf                                           ; $60da: $3f
    ld l, l                                       ; $60db: $6d
    xor e                                         ; $60dc: $ab
    ld a, a                                       ; $60dd: $7f
    xor l                                         ; $60de: $ad
    db $e3                                        ; $60df: $e3
    adc h                                         ; $60e0: $8c
    and h                                         ; $60e1: $a4
    ld h, [hl]                                    ; $60e2: $66
    ret c                                         ; $60e3: $d8

    call c, $eb8c                                 ; $60e4: $dc $8c $eb
    inc e                                         ; $60e7: $1c
    add d                                         ; $60e8: $82
    sub d                                         ; $60e9: $92
    rst $20                                       ; $60ea: $e7
    cp a                                          ; $60eb: $bf
    and l                                         ; $60ec: $a5
    cp $9d                                        ; $60ed: $fe $9d
    ld l, a                                       ; $60ef: $6f
    ccf                                           ; $60f0: $3f
    ld [hl], d                                    ; $60f1: $72
    add h                                         ; $60f2: $84
    ld e, a                                       ; $60f3: $5f
    or $af                                        ; $60f4: $f6 $af
    ld c, c                                       ; $60f6: $49
    ld e, c                                       ; $60f7: $59
    scf                                           ; $60f8: $37
    pop de                                        ; $60f9: $d1
    dec b                                         ; $60fa: $05

Call_05b_60fb:
    nop                                           ; $60fb: $00
    sbc h                                         ; $60fc: $9c
    cp e                                          ; $60fd: $bb
    and [hl]                                      ; $60fe: $a6
    ld a, e                                       ; $60ff: $7b

jr_05b_6100:
    daa                                           ; $6100: $27
    ld b, c                                       ; $6101: $41
    ld bc, $bbbc                                  ; $6102: $01 $bc $bb
    ld d, l                                       ; $6105: $55
    xor e                                         ; $6106: $ab
    inc a                                         ; $6107: $3c
    ld a, d                                       ; $6108: $7a
    cpl                                           ; $6109: $2f
    pop af                                        ; $610a: $f1
    ld l, l                                       ; $610b: $6d
    sub c                                         ; $610c: $91
    ldh a, [rLY]                                  ; $610d: $f0 $44
    add hl, hl                                    ; $610f: $29
    and l                                         ; $6110: $a5
    adc d                                         ; $6111: $8a
    sub d                                         ; $6112: $92
    push bc                                       ; $6113: $c5
    inc e                                         ; $6114: $1c
    dec b                                         ; $6115: $05
    ld sp, hl                                     ; $6116: $f9
    ld [$b2de], a                                 ; $6117: $ea $de $b2
    cp a                                          ; $611a: $bf
    nop                                           ; $611b: $00
    ld e, $bd                                     ; $611c: $1e $bd
    call c, $ef65                                 ; $611e: $dc $65 $ef
    cp l                                          ; $6121: $bd
    rst $30                                       ; $6122: $f7
    ld hl, $dd2c                                  ; $6123: $21 $2c $dd
    ld e, e                                       ; $6126: $5b
    and e                                         ; $6127: $a3
    ld l, $f1                                     ; $6128: $2e $f1
    ld a, a                                       ; $612a: $7f
    cp $fd                                        ; $612b: $fe $fd
    ld e, a                                       ; $612d: $5f
    jp z, $ceb8                                   ; $612e: $ca $b8 $ce

    ld hl, $7ff9                                  ; $6131: $21 $f9 $7f
    and $56                                       ; $6134: $e6 $56
    ld h, e                                       ; $6136: $63
    ld a, [hl-]                                   ; $6137: $3a
    or b                                          ; $6138: $b0
    ld [hl+], a                                   ; $6139: $22
    call z, $02fe                                 ; $613a: $cc $fe $02
    ld a, h                                       ; $613d: $7c
    dec sp                                        ; $613e: $3b
    ld c, c                                       ; $613f: $49
    sbc e                                         ; $6140: $9b
    sbc $21                                       ; $6141: $de $21
    inc l                                         ; $6143: $2c
    push hl                                       ; $6144: $e5
    ld [hl], c                                    ; $6145: $71
    ld d, d                                       ; $6146: $52
    add h                                         ; $6147: $84
    and e                                         ; $6148: $a3
    inc [hl]                                      ; $6149: $34
    ld a, a                                       ; $614a: $7f
    jp c, $ff56                                   ; $614b: $da $56 $ff

    ld e, d                                       ; $614e: $5a
    rst $00                                       ; $614f: $c7
    add hl, de                                    ; $6150: $19
    ld d, b                                       ; $6151: $50
    nop                                           ; $6152: $00
    sbc h                                         ; $6153: $9c
    cp e                                          ; $6154: $bb
    ld b, l                                       ; $6155: $45
    or d                                          ; $6156: $b2
    ld a, a                                       ; $6157: $7f
    ld c, l                                       ; $6158: $4d
    jp z, $89ba                                   ; $6159: $ca $ba $89

    db $e4                                        ; $615c: $e4
    rst $00                                       ; $615d: $c7
    sbc c                                         ; $615e: $99
    ld h, h                                       ; $615f: $64
    ld c, l                                       ; $6160: $4d
    ld d, h                                       ; $6161: $54
    ld a, [hl-]                                   ; $6162: $3a
    cp b                                          ; $6163: $b8
    ld l, l                                       ; $6164: $6d
    inc bc                                        ; $6165: $03
    cp $4b                                        ; $6166: $fe $4b
    ret nc                                        ; $6168: $d0

    xor e                                         ; $6169: $ab
    adc [hl]                                      ; $616a: $8e
    or l                                          ; $616b: $b5
    ld h, $cd                                     ; $616c: $26 $cd
    ld [hl], c                                    ; $616e: $71
    ei                                            ; $616f: $fb
    dec sp                                        ; $6170: $3b
    rst $38                                       ; $6171: $ff
    ld c, e                                       ; $6172: $4b
    ld l, b                                       ; $6173: $68
    rst $38                                       ; $6174: $ff
    ld [$89df], a                                 ; $6175: $ea $df $89
    xor a                                         ; $6178: $af
    jp c, $a52d                                   ; $6179: $da $2d $a5

    ld e, c                                       ; $617c: $59
    cp [hl]                                       ; $617d: $be
    sub l                                         ; $617e: $95

jr_05b_617f:
    ld d, h                                       ; $617f: $54
    ld [hl], h                                    ; $6180: $74
    sub e                                         ; $6181: $93
    db $ec                                        ; $6182: $ec
    rst $10                                       ; $6183: $d7
    or [hl]                                       ; $6184: $b6
    dec sp                                        ; $6185: $3b
    db $f4                                        ; $6186: $f4
    dec sp                                        ; $6187: $3b
    rst $38                                       ; $6188: $ff
    ld c, e                                       ; $6189: $4b
    adc l                                         ; $618a: $8d
    sub b                                         ; $618b: $90
    jr c, jr_05b_61f5                             ; $618c: $38 $67

jr_05b_618e:
    xor l                                         ; $618e: $ad
    ld e, a                                       ; $618f: $5f
    ld sp, hl                                     ; $6190: $f9
    and a                                         ; $6191: $a7
    ld e, e                                       ; $6192: $5b
    inc de                                        ; $6193: $13
    rst $38                                       ; $6194: $ff
    sub d                                         ; $6195: $92
    ld b, a                                       ; $6196: $47
    xor a                                         ; $6197: $af
    ld a, e                                       ; $6198: $7b
    adc e                                         ; $6199: $8b
    call nc, $e583                                ; $619a: $d4 $83 $e5
    rst $38                                       ; $619d: $ff
    dec h                                         ; $619e: $25
    adc e                                         ; $619f: $8b
    inc sp                                        ; $61a0: $33
    xor h                                         ; $61a1: $ac
    rst $18                                       ; $61a2: $df
    or $02                                        ; $61a3: $f6 $02
    cp h                                          ; $61a5: $bc
    ld h, e                                       ; $61a6: $63
    sbc h                                         ; $61a7: $9c
    xor l                                         ; $61a8: $ad
    and h                                         ; $61a9: $a4
    xor $6d                                       ; $61aa: $ee $6d
    sub d                                         ; $61ac: $92
    ccf                                           ; $61ad: $3f
    jp nc, $ddb1                                  ; $61ae: $d2 $b1 $dd

    ld [hl], c                                    ; $61b1: $71
    adc c                                         ; $61b2: $89
    rla                                           ; $61b3: $17
    daa                                           ; $61b4: $27
    xor d                                         ; $61b5: $aa
    add a                                         ; $61b6: $87
    rst $38                                       ; $61b7: $ff
    add d                                         ; $61b8: $82
    ld [hl], c                                    ; $61b9: $71
    db $f4                                        ; $61ba: $f4
    jr jr_05b_617f                                ; $61bb: $18 $c2

    ld c, d                                       ; $61bd: $4a
    jr z, jr_05b_618e                             ; $61be: $28 $ce

    cp l                                          ; $61c0: $bd
    ld e, e                                       ; $61c1: $5b
    ld [$0858], a                                 ; $61c2: $ea $58 $08
    sub l                                         ; $61c5: $95
    ld a, [$7ee7]                                 ; $61c6: $fa $e7 $7e
    ld d, l                                       ; $61c9: $55
    ld e, h                                       ; $61ca: $5c
    nop                                           ; $61cb: $00
    db $fc                                        ; $61cc: $fc
    ld [hl], h                                    ; $61cd: $74
    sub e                                         ; $61ce: $93
    ld h, d                                       ; $61cf: $62
    dec [hl]                                      ; $61d0: $35
    rst $00                                       ; $61d1: $c7
    jr c, jr_05b_6217                             ; $61d2: $38 $43

    or [hl]                                       ; $61d4: $b6
    dec [hl]                                      ; $61d5: $35
    adc $89                                       ; $61d6: $ce $89
    ld c, e                                       ; $61d8: $4b
    ld a, h                                       ; $61d9: $7c
    or c                                          ; $61da: $b1
    db $10                                        ; $61db: $10
    ld a, [hl+]                                   ; $61dc: $2a
    dec [hl]                                      ; $61dd: $35
    ld h, l                                       ; $61de: $65
    sbc l                                         ; $61df: $9d
    ld h, l                                       ; $61e0: $65
    xor d                                         ; $61e1: $aa
    xor h                                         ; $61e2: $ac
    ld [hl], l                                    ; $61e3: $75
    ld b, a                                       ; $61e4: $47
    dec d                                         ; $61e5: $15
    add hl, hl                                    ; $61e6: $29
    dec sp                                        ; $61e7: $3b
    inc [hl]                                      ; $61e8: $34
    add e                                         ; $61e9: $83
    push af                                       ; $61ea: $f5
    ld a, a                                       ; $61eb: $7f
    add hl, hl                                    ; $61ec: $29
    rst $38                                       ; $61ed: $ff

jr_05b_61ee:
    ld [hl], e                                    ; $61ee: $73
    xor a                                         ; $61ef: $af
    push af                                       ; $61f0: $f5
    adc a                                         ; $61f1: $8f
    ld e, $f7                                     ; $61f2: $1e $f7
    ld a, a                                       ; $61f4: $7f

jr_05b_61f5:
    ld e, l                                       ; $61f5: $5d
    nop                                           ; $61f6: $00
    cp h                                          ; $61f7: $bc
    ld [hl], c                                    ; $61f8: $71
    ld c, $0a                                     ; $61f9: $0e $0a
    ld c, e                                       ; $61fb: $4b
    jr nc, @-$34                                  ; $61fc: $30 $ca

    rra                                           ; $61fe: $1f
    ld a, b                                       ; $61ff: $78
    ld d, [hl]                                    ; $6200: $56
    di                                            ; $6201: $f3
    and a                                         ; $6202: $a7
    ld l, l                                       ; $6203: $6d
    db $e3                                        ; $6204: $e3
    ld e, d                                       ; $6205: $5a
    rst $38                                       ; $6206: $ff
    dec h                                         ; $6207: $25
    add a                                         ; $6208: $87
    dec bc                                        ; $6209: $0b
    adc c                                         ; $620a: $89
    ld h, $2a                                     ; $620b: $26 $2a
    call $165d                                    ; $620d: $cd $5d $16
    db $dd                                        ; $6210: $dd
    ld [hl], h                                    ; $6211: $74
    ld bc, $add0                                  ; $6212: $01 $d0 $ad
    inc e                                         ; $6215: $1c
    ld d, a                                       ; $6216: $57

jr_05b_6217:
    ld a, b                                       ; $6217: $78
    adc $ab                                       ; $6218: $ce $ab
    pop de                                        ; $621a: $d1
    sub $ec                                       ; $621b: $d6 $ec
    ld l, l                                       ; $621d: $6d
    sub e                                         ; $621e: $93
    ld [c], a                                     ; $621f: $e2
    ld a, c                                       ; $6220: $79
    add $b2                                       ; $6221: $c6 $b2
    dec bc                                        ; $6223: $0b
    nop                                           ; $6224: $00
    sbc h                                         ; $6225: $9c
    ld e, e                                       ; $6226: $5b
    inc [hl]                                      ; $6227: $34
    cp c                                          ; $6228: $b9
    call nc, Call_000_06ff                        ; $6229: $d4 $ff $06
    dec h                                         ; $622c: $25
    rlca                                          ; $622d: $07
    ld h, e                                       ; $622e: $63
    adc $b1                                       ; $622f: $ce $b1
    or [hl]                                       ; $6231: $b6
    dec l                                         ; $6232: $2d
    jr jr_05b_61ee                                ; $6233: $18 $b9

    ld bc, $c3fc                                  ; $6235: $01 $fc $c3
    rst $38                                       ; $6238: $ff
    ei                                            ; $6239: $fb
    ld c, $dd                                     ; $623a: $0e $dd
    ld d, c                                       ; $623c: $51
    pop de                                        ; $623d: $d1
    ld c, l                                       ; $623e: $4d
    and h                                         ; $623f: $a4
    ld sp, hl                                     ; $6240: $f9
    dec sp                                        ; $6241: $3b
    rst $20                                       ; $6242: $e7
    jp z, $eb5f                                   ; $6243: $ca $5f $eb

    adc b                                         ; $6246: $88
    ld c, [hl]                                    ; $6247: $4e
    ld l, d                                       ; $6248: $6a
    adc [hl]                                      ; $6249: $8e
    ld [de], a                                    ; $624a: $12
    ld c, h                                       ; $624b: $4c
    call nc, $9a1d                                ; $624c: $d4 $1d $9a
    cp e                                          ; $624f: $bb
    ld d, l                                       ; $6250: $55
    ld a, e                                       ; $6251: $7b
    ld bc, $517c                                  ; $6252: $01 $7c $51
    and c                                         ; $6255: $a1
    ld a, [de]                                    ; $6256: $1a
    ld [hl], e                                    ; $6257: $73
    adc [hl]                                      ; $6258: $8e
    ei                                            ; $6259: $fb
    cp a                                          ; $625a: $bf
    cp b                                          ; $625b: $b8
    ld bc, $637c                                  ; $625c: $01 $7c $63
    xor l                                         ; $625f: $ad
    ccf                                           ; $6260: $3f
    xor c                                         ; $6261: $a9
    add sp, $26                                   ; $6262: $e8 $26
    push hl                                       ; $6264: $e5
    rst $08                                       ; $6265: $cf
    ld [hl], b                                    ; $6266: $70
    ld a, e                                       ; $6267: $7b
    db $eb                                        ; $6268: $eb
    ld [bc], a                                    ; $6269: $02
    ld e, $6f                                     ; $626a: $1e $6f
    ld a, [$ebf9]                                 ; $626c: $fa $f9 $eb
    call nz, $f642                                ; $626f: $c4 $42 $f6
    cp d                                          ; $6272: $ba
    ld l, $c5                                     ; $6273: $2e $c5
    ld a, [bc]                                    ; $6275: $0a
    ld c, a                                       ; $6276: $4f
    ret z                                         ; $6277: $c8

    rst $38                                       ; $6278: $ff
    sbc l                                         ; $6279: $9d
    cp b                                          ; $627a: $b8
    rst $20                                       ; $627b: $e7
    db $fc                                        ; $627c: $fc
    rla                                           ; $627d: $17
    or a                                          ; $627e: $b7
    ld a, b                                       ; $627f: $78
    xor b                                         ; $6280: $a8
    inc [hl]                                      ; $6281: $34
    rst $00                                       ; $6282: $c7
    jr c, jr_05b_62f6                             ; $6283: $38 $71

    rst $18                                       ; $6285: $df
    xor a                                         ; $6286: $af
    db $fc                                        ; $6287: $fc
    db $e3                                        ; $6288: $e3
    ld [hl], h                                    ; $6289: $74
    sbc h                                         ; $628a: $9c
    ld [$68c1], sp                                ; $628b: $08 $c1 $68
    ld [hl], e                                    ; $628e: $73
    sbc b                                         ; $628f: $98
    cp b                                          ; $6290: $b8
    sub $b6                                       ; $6291: $d6 $b6
    ld l, $41                                     ; $6293: $2e $41
    sub a                                         ; $6295: $97
    ld a, h                                       ; $6296: $7c
    ld [hl+], a                                   ; $6297: $22
    dec bc                                        ; $6298: $0b
    push af                                       ; $6299: $f5
    rst $08                                       ; $629a: $cf
    ld e, a                                       ; $629b: $5f
    db $db                                        ; $629c: $db
    sub d                                         ; $629d: $92
    xor l                                         ; $629e: $ad
    ld de, $3715                                  ; $629f: $11 $15 $37
    nop                                           ; $62a2: $00
    sbc h                                         ; $62a3: $9c
    ld hl, $712c                                  ; $62a4: $21 $2c $71

jr_05b_62a7:
    ld a, d                                       ; $62a7: $7a
    add sp, -$40                                  ; $62a8: $e8 $c0
    inc sp                                        ; $62aa: $33
    rlca                                          ; $62ab: $07
    jp nz, $284a                                  ; $62ac: $c2 $4a $28

    adc $fd                                       ; $62af: $ce $fd
    or [hl]                                       ; $62b1: $b6
    rla                                           ; $62b2: $17
    nop                                           ; $62b3: $00
    inc a                                         ; $62b4: $3c
    ld a, e                                       ; $62b5: $7b
    ldh [$7f], a                                  ; $62b6: $e0 $7f
    ld l, [hl]                                    ; $62b8: $6e
    pop af                                        ; $62b9: $f1
    rst $38                                       ; $62ba: $ff
    jp c, $e696                                   ; $62bb: $da $96 $e6

    jr jr_05b_62a7                                ; $62be: $18 $e7

    cp h                                          ; $62c0: $bc
    ld h, b                                       ; $62c1: $60
    db $ec                                        ; $62c2: $ec
    sbc a                                         ; $62c3: $9f
    ld e, e                                       ; $62c4: $5b
    rla                                           ; $62c5: $17
    nop                                           ; $62c6: $00
    inc e                                         ; $62c7: $1c
    daa                                           ; $62c8: $27
    ld c, d                                       ; $62c9: $4a
    ld a, b                                       ; $62ca: $78
    adc $68                                       ; $62cb: $ce $68
    dec [hl]                                      ; $62cd: $35
    pop de                                        ; $62ce: $d1
    add hl, sp                                    ; $62cf: $39
    and h                                         ; $62d0: $a4
    db $fc                                        ; $62d1: $fc
    ld [hl], a                                    ; $62d2: $77
    adc $d7                                       ; $62d3: $ce $d7
    inc e                                         ; $62d5: $1c
    ld e, e                                       ; $62d6: $5b
    di                                            ; $62d7: $f3
    dec [hl]                                      ; $62d8: $35
    ld a, a                                       ; $62d9: $7f
    ld a, h                                       ; $62da: $7c

jr_05b_62db:
    ld e, l                                       ; $62db: $5d
    add d                                         ; $62dc: $82
    ld l, $dd                                     ; $62dd: $2e $dd
    ld h, e                                       ; $62df: $63
    xor l                                         ; $62e0: $ad
    ld e, a                                       ; $62e1: $5f
    ld h, e                                       ; $62e2: $63
    ld [hl], h                                    ; $62e3: $74
    cp a                                          ; $62e4: $bf
    ld a, d                                       ; $62e5: $7a
    ld d, h                                       ; $62e6: $54
    dec c                                         ; $62e7: $0d
    or e                                          ; $62e8: $b3
    xor a                                         ; $62e9: $af
    rst $38                                       ; $62ea: $ff
    dec bc                                        ; $62eb: $0b
    nop                                           ; $62ec: $00
    sbc h                                         ; $62ed: $9c
    ld hl, $392c                                  ; $62ee: $21 $2c $39
    ld h, c                                       ; $62f1: $61
    ei                                            ; $62f2: $fb
    dec [hl]                                      ; $62f3: $35
    adc c                                         ; $62f4: $89
    add hl, de                                    ; $62f5: $19

jr_05b_62f6:
    add hl, sp                                    ; $62f6: $39
    ld [hl], c                                    ; $62f7: $71
    adc c                                         ; $62f8: $89
    cpl                                           ; $62f9: $2f
    ld d, $42                                     ; $62fa: $16 $42
    and l                                         ; $62fc: $a5
    and [hl]                                      ; $62fd: $a6
    xor h                                         ; $62fe: $ac
    or e                                          ; $62ff: $b3
    ld c, h                                       ; $6300: $4c
    ld [hl], a                                    ; $6301: $77
    ld d, h                                       ; $6302: $54
    ld d, c                                       ; $6303: $51
    ld d, d                                       ; $6304: $52
    ld c, $22                                     ; $6305: $0e $22
    rst $18                                       ; $6307: $df
    ld [hl], e                                    ; $6308: $73
    ld [hl+], a                                   ; $6309: $22
    xor c                                         ; $630a: $a9
    and d                                         ; $630b: $a2
    inc d                                         ; $630c: $14
    ld b, d                                       ; $630d: $42
    ld d, h                                       ; $630e: $54
    cp d                                          ; $630f: $ba
    inc sp                                        ; $6310: $33
    xor [hl]                                      ; $6311: $ae
    inc [hl]                                      ; $6312: $34
    xor $7b                                       ; $6313: $ee $7b
    db $eb                                        ; $6315: $eb
    ld [bc], a                                    ; $6316: $02
    adc [hl]                                      ; $6317: $8e
    sbc l                                         ; $6318: $9d
    ld c, c                                       ; $6319: $49
    inc h                                         ; $631a: $24
    sbc b                                         ; $631b: $98
    cp d                                          ; $631c: $ba
    ld l, c                                       ; $631d: $69
    ld [hl], d                                    ; $631e: $72
    jp hl                                         ; $631f: $e9


    sbc $1a                                       ; $6320: $de $1a
    xor a                                         ; $6322: $af

jr_05b_6323:
    and [hl]                                      ; $6323: $a6
    xor d                                         ; $6324: $aa
    ldh [rTMA], a                                 ; $6325: $e0 $06
    db $fc                                        ; $6327: $fc
    cp a                                          ; $6328: $bf
    cp d                                          ; $6329: $ba
    or a                                          ; $632a: $b7
    add $73                                       ; $632b: $c6 $73
    inc bc                                        ; $632d: $03
    inc a                                         ; $632e: $3c
    ld e, c                                       ; $632f: $59
    ld c, [hl]                                    ; $6330: $4e
    jp nz, $ca4a                                  ; $6331: $c2 $4a $ca

    cp $bb                                        ; $6334: $fe $bb
    ld b, e                                       ; $6336: $43
    dec a                                         ; $6337: $3d
    adc $79                                       ; $6338: $ce $79
    db $dd                                        ; $633a: $dd
    ld h, e                                       ; $633b: $63
    cp $57                                        ; $633c: $fe $57
    ld d, d                                       ; $633e: $52
    jr nc, jr_05b_62db                            ; $633f: $30 $9a

    ldh a, [rLY]                                  ; $6341: $f0 $44
    ld [hl], a                                    ; $6343: $77
    jr z, jr_05b_6323                             ; $6344: $28 $dd

    inc bc                                        ; $6346: $03
    rst $38                                       ; $6347: $ff
    ld e, a                                       ; $6348: $5f
    nop                                           ; $6349: $00
    db $fc                                        ; $634a: $fc
    ld b, h                                       ; $634b: $44
    rst $20                                       ; $634c: $e7
    sub b                                         ; $634d: $90
    ldh a, [$9c]                                  ; $634e: $f0 $9c
    rst $38                                       ; $6350: $ff
    cp d                                          ; $6351: $ba
    call nz, Call_05b_6dfb                        ; $6352: $c4 $fb $6d
    jr c, @+$01                                   ; $6355: $38 $ff

    sub e                                         ; $6357: $93
    ld a, [hl+]                                   ; $6358: $2a
    sbc d                                         ; $6359: $9a
    ld e, c                                       ; $635a: $59
    ld [hl], $b9                                  ; $635b: $36 $b9
    call nz, $27f7                                ; $635d: $c4 $f7 $27
    ld b, c                                       ; $6360: $41
    call z, $05fa                                 ; $6361: $cc $fa $05
    cp a                                          ; $6364: $bf
    call c, $ef65                                 ; $6365: $dc $65 $ef
    cp l                                          ; $6368: $bd
    rst $30                                       ; $6369: $f7
    pop af                                        ; $636a: $f1
    rla                                           ; $636b: $17
    nop                                           ; $636c: $00
    ld c, $c6                                     ; $636d: $0e $c6
    or b                                          ; $636f: $b0
    cp c                                          ; $6370: $b9
    jp z, $9f6e                                   ; $6371: $ca $6e $9f

    ret c                                         ; $6374: $d8

    ld l, [hl]                                    ; $6375: $6e
    add hl, de                                    ; $6376: $19
    dec h                                         ; $6377: $25
    ld h, l                                       ; $6378: $65
    ld e, h                                       ; $6379: $5c
    ld a, $d7                                     ; $637a: $3e $d7
    and c                                         ; $637c: $a1
    xor l                                         ; $637d: $ad
    xor b                                         ; $637e: $a8
    and h                                         ; $637f: $a4
    sbc d                                         ; $6380: $9a
    add sp, $1c                                   ; $6381: $e8 $1c
    ld d, d                                       ; $6383: $52
    dec c                                         ; $6384: $0d
    ld h, h                                       ; $6385: $64
    dec hl                                        ; $6386: $2b
    rst $30                                       ; $6387: $f7
    ret c                                         ; $6388: $d8

    daa                                           ; $6389: $27
    add b                                         ; $638a: $80
    or d                                          ; $638b: $b2
    cpl                                           ; $638c: $2f
    ld e, h                                       ; $638d: $5c
    and l                                         ; $638e: $a5
    or c                                          ; $638f: $b1
    db $10                                        ; $6390: $10
    ld a, [hl+]                                   ; $6391: $2a
    sbc l                                         ; $6392: $9d
    db $ec                                        ; $6393: $ec
    adc $f6                                       ; $6394: $ce $f6
    ld b, h                                       ; $6396: $44
    ld c, [hl]                                    ; $6397: $4e
    ld [hl], l                                    ; $6398: $75
    ld bc, $bb7c                                  ; $6399: $01 $7c $bb
    rst $38                                       ; $639c: $ff
    ld h, e                                       ; $639d: $63
    ld e, h                                       ; $639e: $5c
    rst $10                                       ; $639f: $d7
    dec b                                         ; $63a0: $05
    nop                                           ; $63a1: $00
    sbc h                                         ; $63a2: $9c
    cp e                                          ; $63a3: $bb
    ld b, l                                       ; $63a4: $45
    add hl, hl                                    ; $63a5: $29
    sub l                                         ; $63a6: $95
    ld a, [hl-]                                   ; $63a7: $3a
    add h                                         ; $63a8: $84
    daa                                           ; $63a9: $27
    cp d                                          ; $63aa: $ba
    inc hl                                        ; $63ab: $23
    add hl, hl                                    ; $63ac: $29
    ld hl, sp+$55                                 ; $63ad: $f8 $55
    ld e, c                                       ; $63af: $59
    xor e                                         ; $63b0: $ab
    rst $00                                       ; $63b1: $c7
    adc c                                         ; $63b2: $89
    sub b                                         ; $63b3: $90
    ld a, l                                       ; $63b4: $7d
    rst $28                                       ; $63b5: $ef
    inc e                                         ; $63b6: $1c
    cp l                                          ; $63b7: $bd
    rst $08                                       ; $63b8: $cf
    dec c                                         ; $63b9: $0d
    nop                                           ; $63ba: $00
    ld a, h                                       ; $63bb: $7c
    dec sp                                        ; $63bc: $3b
    ld l, l                                       ; $63bd: $6d
    push hl                                       ; $63be: $e5
    db $e3                                        ; $63bf: $e3
    ld e, d                                       ; $63c0: $5a
    adc a                                         ; $63c1: $8f
    db $ed                                        ; $63c2: $ed
    ld c, $f5                                     ; $63c3: $0e $f5
    ret z                                         ; $63c5: $c8

    rst $10                                       ; $63c6: $d7
    ld a, [$42ab]                                 ; $63c7: $fa $ab $42
    ld c, l                                       ; $63ca: $4d
    add hl, hl                                    ; $63cb: $29
    sub l                                         ; $63cc: $95
    ld a, [hl]                                    ; $63cd: $7e
    rst $20                                       ; $63ce: $e7
    ld a, a                                       ; $63cf: $7f
    add hl, hl                                    ; $63d0: $29
    db $e3                                        ; $63d1: $e3
    or d                                          ; $63d2: $b2
    ld h, $28                                     ; $63d3: $26 $28
    nop                                           ; $63d5: $00
    ld c, $30                                     ; $63d6: $0e $30
    xor c                                         ; $63d8: $a9
    ld a, e                                       ; $63d9: $7b
    ld l, e                                       ; $63da: $6b
    sbc h                                         ; $63db: $9c
    ld a, [hl]                                    ; $63dc: $7e
    adc l                                         ; $63dd: $8d
    jp nz, $c7b4                                  ; $63de: $c2 $b4 $c7

jr_05b_63e1:
    xor d                                         ; $63e1: $aa
    ld b, a                                       ; $63e2: $47
    push de                                       ; $63e3: $d5
    jr nc, jr_05b_63e1                            ; $63e4: $30 $fb

    ld a, [$baeb]                                 ; $63e6: $fa $eb $ba
    nop                                           ; $63e9: $00
    sbc [hl]                                      ; $63ea: $9e
    rst $38                                       ; $63eb: $ff
    or $72                                        ; $63ec: $f6 $72
    adc e                                         ; $63ee: $8b
    sbc a                                         ; $63ef: $9f
    ld l, [hl]                                    ; $63f0: $6e
    ld [de], a                                    ; $63f1: $12
    sub [hl]                                      ; $63f2: $96
    ld a, [c]                                     ; $63f3: $f2
    sbc a                                         ; $63f4: $9f
    sbc a                                         ; $63f5: $9f
    cp a                                          ; $63f6: $bf
    ret c                                         ; $63f7: $d8

    adc $89                                       ; $63f8: $ce $89
    rst $30                                       ; $63fa: $f7
    or b                                          ; $63fb: $b0
    ld c, e                                       ; $63fc: $4b
    sbc [hl]                                      ; $63fd: $9e
    ld h, d                                       ; $63fe: $62
    ld a, [hl-]                                   ; $63ff: $3a
    db $e3                                        ; $6400: $e3
    db $ec                                        ; $6401: $ec
    call nz, $afd3                                ; $6402: $c4 $d3 $af
    sbc h                                         ; $6405: $9c
    jp nc, $8aa8                                  ; $6406: $d2 $a8 $8a

    ld h, $2a                                     ; $6409: $26 $2a
    add hl, sp                                    ; $640b: $39
    rst $28                                       ; $640c: $ef
    sbc h                                         ; $640d: $9c
    db $fc                                        ; $640e: $fc
    or l                                          ; $640f: $b5
    adc [hl]                                      ; $6410: $8e
    ld l, [hl]                                    ; $6411: $6e
    ld c, d                                       ; $6412: $4a
    ld a, [bc]                                    ; $6413: $0a
    ld a, [hl]                                    ; $6414: $7e
    ld [hl], l                                    ; $6415: $75
    db $ec                                        ; $6416: $ec
    add hl, sp                                    ; $6417: $39
    ld hl, $f52c                                  ; $6418: $21 $2c $f5
    ld b, $04                                     ; $641b: $06 $04
    call Call_000_305e                            ; $641d: $cd $5e $30
    sbc l                                         ; $6420: $9d
    cp c                                          ; $6421: $b9
    adc $ac                                       ; $6422: $ce $ac
    push af                                       ; $6424: $f5
    xor b                                         ; $6425: $a8
    add $bf                                       ; $6426: $c6 $bf
    call nz, $fdf7                                ; $6428: $c4 $f7 $fd
    rst $30                                       ; $642b: $f7
    jp z, $de21                                   ; $642c: $ca $21 $de

    add hl, bc                                    ; $642f: $09
    or d                                          ; $6430: $b2
    ret z                                         ; $6431: $c8

    or h                                          ; $6432: $b4
    rst $20                                       ; $6433: $e7
    db $d3                                        ; $6434: $d3
    ld e, $43                                     ; $6435: $1e $43
    ld sp, hl                                     ; $6437: $f9
    or e                                          ; $6438: $b3
    ei                                            ; $6439: $fb
    xor l                                         ; $643a: $ad
    scf                                           ; $643b: $37
    xor c                                         ; $643c: $a9
    add hl, sp                                    ; $643d: $39
    ld c, d                                       ; $643e: $4a
    or $af                                        ; $643f: $f6 $af
    ld [hl], h                                    ; $6441: $74
    ldh [rNR33], a                                ; $6442: $e0 $1d
    ld d, l                                       ; $6444: $55
    xor a                                         ; $6445: $af
    rst $30                                       ; $6446: $f7
    rst $00                                       ; $6447: $c7
    ld sp, hl                                     ; $6448: $f9
    or l                                          ; $6449: $b5
    db $fd                                        ; $644a: $fd
    db $eb                                        ; $644b: $eb
    cp d                                          ; $644c: $ba
    db $e4                                        ; $644d: $e4
    adc a                                         ; $644e: $8f
    or [hl]                                       ; $644f: $b6
    rst $38                                       ; $6450: $ff
    ei                                            ; $6451: $fb
    cp a                                          ; $6452: $bf
    db $f4                                        ; $6453: $f4
    ld h, a                                       ; $6454: $67
    ret c                                         ; $6455: $d8

    ld e, e                                       ; $6456: $5b
    cpl                                           ; $6457: $2f
    ld l, [hl]                                    ; $6458: $6e
    ccf                                           ; $6459: $3f
    scf                                           ; $645a: $37
    nop                                           ; $645b: $00
    ld l, [hl]                                    ; $645c: $6e
    sbc a                                         ; $645d: $9f
    ld h, c                                       ; $645e: $61
    ld l, a                                       ; $645f: $6f
    cp l                                          ; $6460: $bd
    cp b                                          ; $6461: $b8
    db $fd                                        ; $6462: $fd
    call c, Call_05b_5e00                         ; $6463: $dc $00 $5e

Jump_05b_6466:
    pop de                                        ; $6466: $d1
    db $e4                                        ; $6467: $e4
    ld b, $0e                                     ; $6468: $06 $0e
    rst $38                                       ; $646a: $ff
    ld a, h                                       ; $646b: $7c
    rst $08                                       ; $646c: $cf
    ld a, a                                       ; $646d: $7f
    ld d, l                                       ; $646e: $55
    sub $ea                                       ; $646f: $d6 $ea
    sbc a                                         ; $6471: $9f
    cp a                                          ; $6472: $bf
    or [hl]                                       ; $6473: $b6
    and l                                         ; $6474: $a5
    ld e, $fe                                     ; $6475: $1e $fe
    ld l, [hl]                                    ; $6477: $6e
    ld d, l                                       ; $6478: $55
    ld e, h                                       ; $6479: $5c
    nop                                           ; $647a: $00
    db $fc                                        ; $647b: $fc
    ld [hl], h                                    ; $647c: $74
    adc $6f                                       ; $647d: $ce $6f
    ld b, l                                       ; $647f: $45
    add hl, hl                                    ; $6480: $29
    ld d, [hl]                                    ; $6481: $56
    sub e                                         ; $6482: $93
    ld [hl-], a                                   ; $6483: $32
    sbc l                                         ; $6484: $9d
    rst $38                                       ; $6485: $ff
    ld e, $a3                                     ; $6486: $1e $a3

jr_05b_6488:
    cp b                                          ; $6488: $b8
    push hl                                       ; $6489: $e5
    cp h                                          ; $648a: $bc
    ld [hl], e                                    ; $648b: $73
    ld a, [c]                                     ; $648c: $f2
    rst $10                                       ; $648d: $d7
    ld a, [hl-]                                   ; $648e: $3a
    cp d                                          ; $648f: $ba
    ld c, c                                       ; $6490: $49
    sbc [hl]                                      ; $6491: $9e
    ld h, d                                       ; $6492: $62
    ld a, [hl-]                                   ; $6493: $3a
    db $e3                                        ; $6494: $e3
    db $ec                                        ; $6495: $ec
    call nz, $7fd3                                ; $6496: $c4 $d3 $7f
    adc c                                         ; $6499: $89
    cpl                                           ; $649a: $2f
    ld l, d                                       ; $649b: $6a
    ld [de], a                                    ; $649c: $12
    xor c                                         ; $649d: $a9

jr_05b_649e:
    or d                                          ; $649e: $b2
    ld d, [hl]                                    ; $649f: $56
    rrca                                          ; $64a0: $0f
    ld a, a                                       ; $64a1: $7f
    or a                                          ; $64a2: $b7
    ld a, [hl+]                                   ; $64a3: $2a
    ld l, $00                                     ; $64a4: $2e $00
    ld e, $e1                                     ; $64a6: $1e $e1
    ld b, h                                       ; $64a8: $44
    pop hl                                        ; $64a9: $e1
    adc c                                         ; $64aa: $89
    sub [hl]                                      ; $64ab: $96
    db $fd                                        ; $64ac: $fd
    rst $10                                       ; $64ad: $d7
    ld l, b                                       ; $64ae: $68
    ld e, c                                       ; $64af: $59
    sbc h                                         ; $64b0: $9c
    ld a, h                                       ; $64b1: $7c
    rst $08                                       ; $64b2: $cf
    adc c                                         ; $64b3: $89
    and h                                         ; $64b4: $a4
    xor $ed                                       ; $64b5: $ee $ed
    jr z, jr_05b_649e                             ; $64b7: $28 $e5

    cp e                                          ; $64b9: $bb
    or $d6                                        ; $64ba: $f6 $d6
    ld d, c                                       ; $64bc: $51
    sbc d                                         ; $64bd: $9a
    sbc e                                         ; $64be: $9b
    rst $00                                       ; $64bf: $c7
    add hl, sp                                    ; $64c0: $39
    ld hl, $c89f                                  ; $64c1: $21 $9f $c8
    ld [hl+], a                                   ; $64c4: $22
    and b                                         ; $64c5: $a0
    nop                                           ; $64c6: $00
    ret nc                                        ; $64c7: $d0

    adc $84                                       ; $64c8: $ce $84
    inc sp                                        ; $64ca: $33
    ld d, c                                       ; $64cb: $51
    cp d                                          ; $64cc: $ba
    or a                                          ; $64cd: $b7
    add sp, -$46                                  ; $64ce: $e8 $ba
    ld l, $cf                                     ; $64d0: $2e $cf
    sbc l                                         ; $64d2: $9d
    ret                                           ; $64d3: $c9


    sbc l                                         ; $64d4: $9d
    ret                                           ; $64d5: $c9


    ld [hl], c                                    ; $64d6: $71
    xor a                                         ; $64d7: $af
    db $eb                                        ; $64d8: $eb
    ld [bc], a                                    ; $64d9: $02
    cp h                                          ; $64da: $bc
    pop bc                                        ; $64db: $c1
    jr jr_05b_6488                                ; $64dc: $18 $aa

    or d                                          ; $64de: $b2
    sub $6f                                       ; $64df: $d6 $6f
    db $fd                                        ; $64e1: $fd
    call c, $ea4a                                 ; $64e2: $dc $4a $ea
    sbc $8e                                       ; $64e5: $de $8e
    ld d, d                                       ; $64e7: $52
    adc d                                         ; $64e8: $8a
    ld [hl], e                                    ; $64e9: $73
    ld c, $f3                                     ; $64ea: $0e $f3
    ld [hl], c                                    ; $64ec: $71
    adc $61                                       ; $64ed: $ce $61
    dec e                                         ; $64ef: $1d
    or a                                          ; $64f0: $b7
    ccf                                           ; $64f1: $3f
    sub $fa                                       ; $64f2: $d6 $fa
    ld l, l                                       ; $64f4: $6d
    push hl                                       ; $64f5: $e5
    inc de                                        ; $64f6: $13
    ld e, c                                       ; $64f7: $59
    add h                                         ; $64f8: $84
    ld c, $f9                                     ; $64f9: $0e $f9
    dec bc                                        ; $64fb: $0b
    dec b                                         ; $64fc: $05
    nop                                           ; $64fd: $00
    ld a, h                                       ; $64fe: $7c
    adc $f0                                       ; $64ff: $ce $f0
    dec c                                         ; $6501: $0d
    ld h, a                                       ; $6502: $67
    ld hl, sp+$46                                 ; $6503: $f8 $46
    rst $30                                       ; $6505: $f7
    res 3, h                                      ; $6506: $cb $9c
    or c                                          ; $6508: $b1
    dec a                                         ; $6509: $3d
    rlca                                          ; $650a: $07
    or a                                          ; $650b: $b7
    db $e4                                        ; $650c: $e4
    dec sp                                        ; $650d: $3b
    db $e3                                        ; $650e: $e3
    add a                                         ; $650f: $87
    inc sp                                        ; $6510: $33
    ld a, [hl]                                    ; $6511: $7e
    ld [hl], h                                    ; $6512: $74
    db $d3                                        ; $6513: $d3
    jp c, $75d6                                   ; $6514: $da $d6 $75

    ld e, l                                       ; $6517: $5d
    nop                                           ; $6518: $00
    ld c, $47                                     ; $6519: $0e $47
    ld a, [hl-]                                   ; $651b: $3a
    ld a, [$d4bf]                                 ; $651c: $fa $bf $d4
    cp b                                          ; $651f: $b8
    sub $91                                       ; $6520: $d6 $91
    call nc, Call_000_251c                        ; $6522: $d4 $1c $25
    inc a                                         ; $6525: $3c
    pop de                                        ; $6526: $d1
    ld a, [c]                                     ; $6527: $f2
    adc c                                         ; $6528: $89
    cp d                                          ; $6529: $ba
    xor c                                         ; $652a: $a9
    or d                                          ; $652b: $b2
    sub $8c                                       ; $652c: $d6 $8c
    adc d                                         ; $652e: $8a
    ld [hl], e                                    ; $652f: $73
    ld b, d                                       ; $6530: $42
    cp b                                          ; $6531: $b8
    inc sp                                        ; $6532: $33
    or [hl]                                       ; $6533: $b6
    add h                                         ; $6534: $84
    daa                                           ; $6535: $27
    ld e, d                                       ; $6536: $5a
    jp $9e26                                      ; $6537: $c3 $26 $9e


    or e                                          ; $653a: $b3
    dec d                                         ; $653b: $15
    ld [hl], l                                    ; $653c: $75
    ld bc, $551c                                  ; $653d: $01 $1c $55
    ld sp, $956d                                  ; $6540: $31 $6d $95
    add [hl]                                      ; $6543: $86
    ld h, d                                       ; $6544: $62
    ld [hl], e                                    ; $6545: $73
    ld l, d                                       ; $6546: $6a
    dec d                                         ; $6547: $15
    and l                                         ; $6548: $a5
    dec d                                         ; $6549: $15
    pop de                                        ; $654a: $d1
    cp d                                          ; $654b: $ba
    ld h, e                                       ; $654c: $63
    sbc e                                         ; $654d: $9b
    ld l, $00                                     ; $654e: $2e $00
    ld a, h                                       ; $6550: $7c
    dec sp                                        ; $6551: $3b
    ld c, c                                       ; $6552: $49
    ld e, b                                       ; $6553: $58
    jp z, $ed77                                   ; $6554: $ca $77 $ed

    xor l                                         ; $6557: $ad
    and e                                         ; $6558: $a3
    inc [hl]                                      ; $6559: $34
    scf                                           ; $655a: $37
    ld e, a                                       ; $655b: $5f
    jr z, jr_05b_655e                             ; $655c: $28 $00

jr_05b_655e:
    ret nc                                        ; $655e: $d0

jr_05b_655f:
    and l                                         ; $655f: $a5
    sbc $80                                       ; $6560: $de $80
    ld d, b                                       ; $6562: $50
    ld d, d                                       ; $6563: $52
    rst $30                                       ; $6564: $f7
    add sp, $7e                                   ; $6565: $e8 $7e
    pop af                                        ; $6567: $f1
    cp $99                                        ; $6568: $fe $99
    rst $08                                       ; $656a: $cf
    ret nc                                        ; $656b: $d0

    db $f4                                        ; $656c: $f4
    dec sp                                        ; $656d: $3b
    ld de, $3f95                                  ; $656e: $11 $95 $3f
    ld a, e                                       ; $6571: $7b
    db $eb                                        ; $6572: $eb
    ld a, a                                       ; $6573: $7f
    ld e, c                                       ; $6574: $59
    inc d                                         ; $6575: $14
    scf                                           ; $6576: $37
    nop                                           ; $6577: $00
    sbc [hl]                                      ; $6578: $9e
    inc hl                                        ; $6579: $23
    ld b, e                                       ; $657a: $43
    ld l, [hl]                                    ; $657b: $6e
    ld a, c                                       ; $657c: $79
    ld d, [hl]                                    ; $657d: $56
    sbc b                                         ; $657e: $98
    ld b, d                                       ; $657f: $42
    or $be                                        ; $6580: $f6 $be
    ld b, e                                       ; $6582: $43
    inc de                                        ; $6583: $13
    daa                                           ; $6584: $27
    sub $7f                                       ; $6585: $d6 $7f
    add hl, hl                                    ; $6587: $29
    and l                                         ; $6588: $a5
    adc d                                         ; $6589: $8a
    cp [hl]                                       ; $658a: $be
    nop                                           ; $658b: $00
    ld c, $d0                                     ; $658c: $0e $d0
    adc a                                         ; $658e: $8f
    or a                                          ; $658f: $b7
    ld e, [hl]                                    ; $6590: $5e
    ld sp, hl                                     ; $6591: $f9
    cp e                                          ; $6592: $bb
    rlca                                          ; $6593: $07
    or c                                          ; $6594: $b1
    ld l, $00                                     ; $6595: $2e $00
    inc a                                         ; $6597: $3c
    adc $f0                                       ; $6598: $ce $f0
    jr c, jr_05b_655f                             ; $659a: $38 $c3

    di                                            ; $659c: $f3
    adc h                                         ; $659d: $8c
    ld h, l                                       ; $659e: $65
    rst $10                                       ; $659f: $d7
    ld [hl], l                                    ; $65a0: $75
    ld e, l                                       ; $65a1: $5d
    db $d3                                        ; $65a2: $d3
    sbc c                                         ; $65a3: $99
    jp hl                                         ; $65a4: $e9


    call z, Call_000_36fc                         ; $65a5: $cc $fc $36
    db $e4                                        ; $65a8: $e4
    ld b, $d0                                     ; $65a9: $06 $d0
    dec hl                                        ; $65ab: $2b
    inc a                                         ; $65ac: $3c
    and c                                         ; $65ad: $a1
    cp c                                          ; $65ae: $b9
    and a                                         ; $65af: $a7
    ld a, e                                       ; $65b0: $7b
    ld c, c                                       ; $65b1: $49
    rst $30                                       ; $65b2: $f7
    rst $30                                       ; $65b3: $f7
    call c, Call_000_0717                         ; $65b4: $dc $17 $07
    ei                                            ; $65b7: $fb
    inc a                                         ; $65b8: $3c
    ld c, d                                       ; $65b9: $4a
    cp $48                                        ; $65ba: $fe $48
    and e                                         ; $65bc: $a3
    rst $18                                       ; $65bd: $df
    rst $38                                       ; $65be: $ff
    cp a                                          ; $65bf: $bf
    nop                                           ; $65c0: $00
    ret nc                                        ; $65c1: $d0

    sra l                                         ; $65c2: $cb $2d
    sbc $6f                                       ; $65c4: $de $6f
    ld b, e                                       ; $65c6: $43
    ld l, [hl]                                    ; $65c7: $6e
    nop                                           ; $65c8: $00
    sbc [hl]                                      ; $65c9: $9e
    dec e                                         ; $65ca: $1d
    inc [hl]                                      ; $65cb: $34
    dec [hl]                                      ; $65cc: $35
    pop de                                        ; $65cd: $d1
    ld l, c                                       ; $65ce: $69
    ld [c], a                                     ; $65cf: $e2
    ld d, $2f                                     ; $65d0: $16 $2f
    and [hl]                                      ; $65d2: $a6
    db $fd                                        ; $65d3: $fd
    ld e, a                                       ; $65d4: $5f
    cp d                                          ; $65d5: $ba
    scf                                           ; $65d6: $37
    adc $18                                       ; $65d7: $ce $18
    rst $30                                       ; $65d9: $f7
    cp l                                          ; $65da: $bd
    dec h                                         ; $65db: $25
    ei                                            ; $65dc: $fb
    ld a, [hl]                                    ; $65dd: $7e
    ld a, c                                       ; $65de: $79
    adc [hl]                                      ; $65df: $8e
    inc c                                         ; $65e0: $0c
    ld e, a                                       ; $65e1: $5f
    ld [hl], e                                    ; $65e2: $73
    ld l, h                                       ; $65e3: $6c
    xor c                                         ; $65e4: $a9
    rlca                                          ; $65e5: $07
    sub [hl]                                      ; $65e6: $96
    or b                                          ; $65e7: $b0
    rst $00                                       ; $65e8: $c7
    or h                                          ; $65e9: $b4
    jr z, jr_05b_665a                             ; $65ea: $28 $6e

    nop                                           ; $65ec: $00
    ld a, h                                       ; $65ed: $7c
    dec sp                                        ; $65ee: $3b
    ld l, l                                       ; $65ef: $6d
    push de                                       ; $65f0: $d5
    ld b, h                                       ; $65f1: $44
    rst $20                                       ; $65f2: $e7
    sub b                                         ; $65f3: $90
    db $fc                                        ; $65f4: $fc
    add l                                         ; $65f5: $85
    ld b, h                                       ; $65f6: $44
    inc de                                        ; $65f7: $13
    sub l                                         ; $65f8: $95
    adc $98                                       ; $65f9: $ce $98
    db $db                                        ; $65fb: $db
    dec a                                         ; $65fc: $3d
    ld [$03d5], a                                 ; $65fd: $ea $d5 $03
    rst $08                                       ; $6600: $cf
    ld sp, hl                                     ; $6601: $f9
    or l                                          ; $6602: $b5
    ld a, [hl]                                    ; $6603: $7e
    pop hl                                        ; $6604: $e1
    adc c                                         ; $6605: $89
    ld l, d                                       ; $6606: $6a
    ld a, h                                       ; $6607: $7c
    jr z, jr_05b_660a                             ; $6608: $28 $00

jr_05b_660a:
    ret nc                                        ; $660a: $d0

    dec a                                         ; $660b: $3d
    cp c                                          ; $660c: $b9
    ld d, h                                       ; $660d: $54
    sub h                                         ; $660e: $94
    ld d, [hl]                                    ; $660f: $56
    sub $49                                       ; $6610: $d6 $49
    ld b, l                                       ; $6612: $45
    scf                                           ; $6613: $37
    ret                                           ; $6614: $c9


    ld b, d                                       ; $6615: $42
    ld d, $6b                                     ; $6616: $16 $6b
    cp b                                          ; $6618: $b8
    ld a, [hl-]                                   ; $6619: $3a
    rst $18                                       ; $661a: $df
    cp l                                          ; $661b: $bd
    ld a, a                                       ; $661c: $7f
    add $98                                       ; $661d: $c6 $98
    and e                                         ; $661f: $a3
    db $e4                                        ; $6620: $e4
    inc de                                        ; $6621: $13
    sbc l                                         ; $6622: $9d
    ld b, e                                       ; $6623: $43
    ld d, b                                       ; $6624: $50
    ld [c], a                                     ; $6625: $e2
    inc c                                         ; $6626: $0c
    ld e, c                                       ; $6627: $59
    sbc h                                         ; $6628: $9c
    sbc h                                         ; $6629: $9c
    xor h                                         ; $662a: $ac
    ld d, a                                       ; $662b: $57
    ld sp, hl                                     ; $662c: $f9
    or e                                          ; $662d: $b3
    ld e, [hl]                                    ; $662e: $5e
    ld e, h                                       ; $662f: $5c
    pop bc                                        ; $6630: $c1
    ret c                                         ; $6631: $d8

    ccf                                           ; $6632: $3f
    or a                                          ; $6633: $b7
    ld l, $00                                     ; $6634: $2e $00
    ld e, $67                                     ; $6636: $1e $67
    ld e, h                                       ; $6638: $5c
    and l                                         ; $6639: $a5
    db $fc                                        ; $663a: $fc
    ld [hl], a                                    ; $663b: $77
    adc $57                                       ; $663c: $ce $57
    ld e, $8d                                     ; $663e: $1e $8d
    sbc a                                         ; $6640: $9f
    ld d, h                                       ; $6641: $54
    ld [hl], h                                    ; $6642: $74
    sub e                                         ; $6643: $93
    inc l                                         ; $6644: $2c
    sub h                                         ; $6645: $94
    ccf                                           ; $6646: $3f
    db $eb                                        ; $6647: $eb
    push bc                                       ; $6648: $c5
    ld d, l                                       ; $6649: $55
    cp [hl]                                       ; $664a: $be
    ld l, e                                       ; $664b: $6b
    ld l, a                                       ; $664c: $6f
    dec e                                         ; $664d: $1d
    and l                                         ; $664e: $a5
    cp c                                          ; $664f: $b9
    ld a, c                                       ; $6650: $79
    db $10                                        ; $6651: $10
    scf                                           ; $6652: $37
    nop                                           ; $6653: $00
    db $fc                                        ; $6654: $fc
    ld [hl], h                                    ; $6655: $74
    sub e                                         ; $6656: $93
    or b                                          ; $6657: $b0
    sub h                                         ; $6658: $94
    rst $38                                       ; $6659: $ff

jr_05b_665a:
    or e                                          ; $665a: $b3
    ccf                                           ; $665b: $3f
    ld h, a                                       ; $665c: $67
    xor l                                         ; $665d: $ad
    ccf                                           ; $665e: $3f
    add hl, hl                                    ; $665f: $29
    ld hl, sp-$0b                                 ; $6660: $f8 $f5
    ld h, a                                       ; $6662: $67
    cp $0b                                        ; $6663: $fe $0b
    rst $08                                       ; $6665: $cf
    ld a, c                                       ; $6666: $79
    db $dd                                        ; $6667: $dd
    add hl, de                                    ; $6668: $19
    ld d, a                                       ; $6669: $57
    ld c, d                                       ; $666a: $4a
    sub a                                         ; $666b: $97
    ld hl, sp-$5e                                 ; $666c: $f8 $a2
    adc d                                         ; $666e: $8a
    xor b                                         ; $666f: $a8
    inc [hl]                                      ; $6670: $34
    cp a                                          ; $6671: $bf
    dec c                                         ; $6672: $0d
    rst $28                                       ; $6673: $ef
    rst $38                                       ; $6674: $ff
    ld c, d                                       ; $6675: $4a
    ld a, [bc]                                    ; $6676: $0a
    ld l, e                                       ; $6677: $6b
    and d                                         ; $6678: $a2
    adc $a6                                       ; $6679: $ce $a6
    sbc a                                         ; $667b: $9f
    cp a                                          ; $667c: $bf
    ld c, [hl]                                    ; $667d: $4e
    inc l                                         ; $667e: $2c
    ld h, h                                       ; $667f: $64
    dec b                                         ; $6680: $05
    and e                                         ; $6681: $a3
    ld a, d                                       ; $6682: $7a
    sbc h                                         ; $6683: $9c
    inc sp                                        ; $6684: $33
    ld e, d                                       ; $6685: $5a
    db $fd                                        ; $6686: $fd
    di                                            ; $6687: $f3
    rst $10                                       ; $6688: $d7
    or [hl]                                       ; $6689: $b6
    call nz, $e7a2                                ; $668a: $c4 $a2 $e7
    sbc [hl]                                      ; $668d: $9e

jr_05b_668e:
    ld h, $aa                                     ; $668e: $26 $aa
    dec bc                                        ; $6690: $0b
    nop                                           ; $6691: $00
    ld a, h                                       ; $6692: $7c
    ld l, e                                       ; $6693: $6b
    ld b, [hl]                                    ; $6694: $46
    jp c, $8ef4                                   ; $6695: $da $f4 $8e

    jr nc, @+$25                                  ; $6698: $30 $23

    ld [hl], l                                    ; $669a: $75
    ld [$744f], sp                                ; $669b: $08 $4f $74
    add a                                         ; $669e: $87
    ldh a, [$9c]                                  ; $669f: $f0 $9c
    adc b                                         ; $66a1: $88
    add [hl]                                      ; $66a2: $86
    ld [bc], a                                    ; $66a3: $02
    ret nc                                        ; $66a4: $d0

    dec hl                                        ; $66a5: $2b
    adc e                                         ; $66a6: $8b
    ld d, d                                       ; $66a7: $52
    ld c, [hl]                                    ; $66a8: $4e
    ld h, a                                       ; $66a9: $67
    adc c                                         ; $66aa: $89
    ld e, e                                       ; $66ab: $5b
    sbc h                                         ; $66ac: $9c
    ei                                            ; $66ad: $fb
    dec [hl]                                      ; $66ae: $35
    adc c                                         ; $66af: $89
    add hl, de                                    ; $66b0: $19
    ld [hl], c                                    ; $66b1: $71
    inc bc                                        ; $66b2: $03
    ret nc                                        ; $66b3: $d0

    xor e                                         ; $66b4: $ab
    and [hl]                                      ; $66b5: $a6
    ld [hl], e                                    ; $66b6: $73
    ld a, [hl]                                    ; $66b7: $7e
    ld l, l                                       ; $66b8: $6d
    ld e, a                                       ; $66b9: $5f
    ld l, h                                       ; $66ba: $6c
    ld l, l                                       ; $66bb: $6d
    ld b, $4c                                     ; $66bc: $06 $4c
    sbc d                                         ; $66be: $9a
    ld e, a                                       ; $66bf: $5f
    push af                                       ; $66c0: $f5
    db $fd                                        ; $66c1: $fd
    jp nz, $ffee                                  ; $66c2: $c2 $ee $ff

    ld c, e                                       ; $66c5: $4b
    ld e, $a1                                     ; $66c6: $1e $a1
    ret                                           ; $66c8: $c9


    ret nc                                        ; $66c9: $d0

    rst $18                                       ; $66ca: $df
    ld c, l                                       ; $66cb: $4d
    xor d                                         ; $66cc: $aa
    halt                                          ; $66cd: $76
    ld c, e                                       ; $66ce: $4b
    rst $30                                       ; $66cf: $f7
    ld d, $c9                                     ; $66d0: $16 $c9
    rst $38                                       ; $66d2: $ff
    xor l                                         ; $66d3: $ad
    ld d, c                                       ; $66d4: $51
    xor d                                         ; $66d5: $aa
    xor h                                         ; $66d6: $ac
    push hl                                       ; $66d7: $e5
    ld b, a                                       ; $66d8: $47
    ld a, [hl-]                                   ; $66d9: $3a
    rst $00                                       ; $66da: $c7
    and [hl]                                      ; $66db: $a6
    ld e, e                                       ; $66dc: $5b
    rla                                           ; $66dd: $17
    nop                                           ; $66de: $00
    ld c, $76                                     ; $66df: $0e $76
    ld c, e                                       ; $66e1: $4b
    rst $30                                       ; $66e2: $f7
    ld d, $cd                                     ; $66e3: $16 $cd
    xor l                                         ; $66e5: $ad
    ld c, e                                       ; $66e6: $4b
    db $fc                                        ; $66e7: $fc
    inc l                                         ; $66e8: $2c
    ld [hl], d                                    ; $66e9: $72
    ld h, h                                       ; $66ea: $64
    adc d                                         ; $66eb: $8a
    sub l                                         ; $66ec: $95
    db $fd                                        ; $66ed: $fd
    ld l, e                                       ; $66ee: $6b
    ld d, h                                       ; $66ef: $54
    ld a, a                                       ; $66f0: $7f
    ld d, d                                       ; $66f1: $52
    jr nc, jr_05b_668e                            ; $66f2: $30 $9a

    and d                                         ; $66f4: $a2
    add h                                         ; $66f5: $84
    daa                                           ; $66f6: $27
    ld h, h                                       ; $66f7: $64
    ld d, c                                       ; $66f8: $51
    jp z, Jump_05b_5837                           ; $66f9: $ca $37 $58

    sbc b                                         ; $66fc: $98
    pop de                                        ; $66fd: $d1
    dec b                                         ; $66fe: $05
    nop                                           ; $66ff: $00
    ld a, h                                       ; $6700: $7c
    or c                                          ; $6701: $b1
    db $10                                        ; $6702: $10
    ld a, [hl+]                                   ; $6703: $2a
    ld sp, hl                                     ; $6704: $f9
    db $db                                        ; $6705: $db
    or h                                          ; $6706: $b4
    or [hl]                                       ; $6707: $b6
    sbc d                                         ; $6708: $9a
    pop bc                                        ; $6709: $c1
    ld a, [de]                                    ; $670a: $1a
    ld e, a                                       ; $670b: $5f
    ld a, h                                       ; $670c: $7c
    add hl, bc                                    ; $670d: $09
    ld a, b                                       ; $670e: $78
    ldh a, [$ec]                                  ; $670f: $f0 $ec
    sbc $84                                       ; $6711: $de $84
    rst $38                                       ; $6713: $ff
    sbc h                                         ; $6714: $9c
    db $10                                        ; $6715: $10
    rst $28                                       ; $6716: $ef
    sbc a                                         ; $6717: $9f
    ld sp, hl                                     ; $6718: $f9
    inc c                                         ; $6719: $0c
    and a                                         ; $671a: $a7
    add l                                         ; $671b: $85
    push af                                       ; $671c: $f5
    ld e, a                                       ; $671d: $5f
    nop                                           ; $671e: $00
    inc a                                         ; $671f: $3c
    ld d, h                                       ; $6720: $54
    adc d                                         ; $6721: $8a
    push de                                       ; $6722: $d5
    add hl, de                                    ; $6723: $19
    db $e3                                        ; $6724: $e3
    db $f4                                        ; $6725: $f4
    rst $20                                       ; $6726: $e7
    ld l, a                                       ; $6727: $6f
    cp l                                          ; $6728: $bd
    ld a, [de]                                    ; $6729: $1a
    ld [hl], $71                                  ; $672a: $36 $71
    ld l, l                                       ; $672c: $6d
    ld [hl], l                                    ; $672d: $75
    rst $00                                       ; $672e: $c7
    ld [hl], $5d                                  ; $672f: $36 $5d
    ld a, [c]                                     ; $6731: $f2
    add sp, $65                                   ; $6732: $e8 $65
    db $db                                        ; $6734: $db
    dec e                                         ; $6735: $1d
    dec h                                         ; $6736: $25
    jr @+$49                                      ; $6737: $18 $47

    adc a                                         ; $6739: $8f
    or l                                          ; $673a: $b5
    cp l                                          ; $673b: $bd
    rst $28                                       ; $673c: $ef
    ld d, b                                       ; $673d: $50
    cp $5b                                        ; $673e: $fe $5b
    ld a, [c]                                     ; $6740: $f2
    rst $00                                       ; $6741: $c7
    ld sp, hl                                     ; $6742: $f9
    xor a                                         ; $6743: $af
    and h                                         ; $6744: $a4
    ld h, $da                                     ; $6745: $26 $da
    ld a, h                                       ; $6747: $7c
    call $e071                                    ; $6748: $cd $71 $e0
    or b                                          ; $674b: $b0
    add hl, de                                    ; $674c: $19
    ld h, a                                       ; $674d: $67
    rst $28                                       ; $674e: $ef
    dec sp                                        ; $674f: $3b
    inc [hl]                                      ; $6750: $34
    add hl, hl                                    ; $6751: $29
    ld l, e                                       ; $6752: $6b
    jp z, $8cd7                                   ; $6753: $ca $d7 $8c

    inc [hl]                                      ; $6756: $34
    jp $9c66                                      ; $6757: $c3 $66 $9c


    ld b, e                                       ; $675a: $43
    jp z, $9ab8                                   ; $675b: $ca $b8 $9a

    ld l, $00                                     ; $675e: $2e $00
    ret nc                                        ; $6760: $d0

    jp hl                                         ; $6761: $e9


    and h                                         ; $6762: $a4
    ld c, e                                       ; $6763: $4b
    ld a, h                                       ; $6764: $7c
    and e                                         ; $6765: $a3
    ei                                            ; $6766: $fb
    ld [hl], l                                    ; $6767: $75
    rst $00                                       ; $6768: $c7
    ld b, d                                       ; $6769: $42
    xor b                                         ; $676a: $a8
    call nc, Call_05b_7594                        ; $676b: $d4 $94 $75
    sub [hl]                                      ; $676e: $96
    xor c                                         ; $676f: $a9
    inc hl                                        ; $6770: $23
    add l                                         ; $6771: $85
    sub b                                         ; $6772: $90
    ld h, b                                       ; $6773: $60
    db $ec                                        ; $6774: $ec
    sbc a                                         ; $6775: $9f
    ld e, e                                       ; $6776: $5b
    call c, $fc00                                 ; $6777: $dc $00 $fc
    rst $08                                       ; $677a: $cf
    ld a, [c]                                     ; $677b: $f2
    ld l, l                                       ; $677c: $6d
    adc e                                         ; $677d: $8b
    ei                                            ; $677e: $fb

Jump_05b_677f:
    ld c, $9d                                     ; $677f: $0e $9d
    dec [hl]                                      ; $6781: $35
    ld [hl+], a                                   ; $6782: $22
    dec [hl]                                      ; $6783: $35
    ld b, d                                       ; $6784: $42
    sub $3a                                       ; $6785: $d6 $3a
    or [hl]                                       ; $6787: $b6
    ccf                                           ; $6788: $3f
    xor c                                         ; $6789: $a9
    xor b                                         ; $678a: $a8
    adc d                                         ; $678b: $8a

jr_05b_678c:
    jp nc, Jump_05b_5b1c                          ; $678c: $d2 $1c $5b

    jp z, $ef71                                   ; $678f: $ca $71 $ef

    dec sp                                        ; $6792: $3b
    ld [hl], h                                    ; $6793: $74
    ld b, a                                       ; $6794: $47
    dec d                                         ; $6795: $15
    ld l, c                                       ; $6796: $69
    ld b, $6b                                     ; $6797: $06 $6b
    cp h                                          ; $6799: $bc
    rst $38                                       ; $679a: $ff
    ld c, e                                       ; $679b: $4b
    ld a, h                                       ; $679c: $7c
    add hl, bc                                    ; $679d: $09
    ld a, b                                       ; $679e: $78
    ldh a, [$ec]                                  ; $679f: $f0 $ec
    sbc $84                                       ; $67a1: $de $84
    rst $38                                       ; $67a3: $ff
    sbc h                                         ; $67a4: $9c
    cp b                                          ; $67a5: $b8
    call nz, $0b17                                ; $67a6: $c4 $17 $0b
    and c                                         ; $67a9: $a1
    ld d, d                                       ; $67aa: $52
    ld d, e                                       ; $67ab: $53
    sub $59                                       ; $67ac: $d6 $59
    ld h, $8b                                     ; $67ae: $26 $8b
    sub e                                         ; $67b0: $93
    ld l, a                                       ; $67b1: $6f
    scf                                           ; $67b2: $37
    ld d, c                                       ; $67b3: $51
    ld d, d                                       ; $67b4: $52
    rst $30                                       ; $67b5: $f7
    ld c, [hl]                                    ; $67b6: $4e
    sub d                                         ; $67b7: $92
    add l                                         ; $67b8: $85
    ld a, [c]                                     ; $67b9: $f2
    ld e, l                                       ; $67ba: $5d
    ld a, e                                       ; $67bb: $7b
    db $eb                                        ; $67bc: $eb
    jr z, jr_05b_678c                             ; $67bd: $28 $cd

    call $b857                                    ; $67bf: $cd $57 $b8
    inc sp                                        ; $67c2: $33
    or [hl]                                       ; $67c3: $b6
    add h                                         ; $67c4: $84
    ld [hl], l                                    ; $67c5: $75
    ld bc, $593c                                  ; $67c6: $01 $3c $59
    ld c, [hl]                                    ; $67c9: $4e

Jump_05b_67ca:
    ld a, d                                       ; $67ca: $7a
    ld hl, sp+$7b                                 ; $67cb: $f8 $7b
    ret c                                         ; $67cd: $d8

    dec h                                         ; $67ce: $25
    cp [hl]                                       ; $67cf: $be
    pop de                                        ; $67d0: $d1
    db $fd                                        ; $67d1: $fd
    ld a, [$fd13]                                 ; $67d2: $fa $13 $fd
    ld e, a                                       ; $67d5: $5f
    jp z, $fadf                                   ; $67d6: $ca $df $fa

    sub l                                         ; $67d9: $95
    ld c, $bc                                     ; $67da: $0e $bc
    and e                                         ; $67dc: $a3
    ld [$f12f], a                                 ; $67dd: $ea $2f $f1
    sub e                                         ; $67e0: $93
    add hl, de                                    ; $67e1: $19
    add hl, bc                                    ; $67e2: $09
    rst $08                                       ; $67e3: $cf
    xor d                                         ; $67e4: $aa
    sbc a                                         ; $67e5: $9f
    ld sp, hl                                     ; $67e6: $f9
    ld de, $56d3                                  ; $67e7: $11 $d3 $56
    ld d, $3b                                     ; $67ea: $16 $3b
    rst $20                                       ; $67ec: $e7
    rst $28                                       ; $67ed: $ef
    add hl, de                                    ; $67ee: $19
    xor a                                         ; $67ef: $af
    inc l                                         ; $67f0: $2c
    add l                                         ; $67f1: $85
    call nz, $a139                                ; $67f2: $c4 $39 $a1
    adc h                                         ; $67f5: $8c
    db $eb                                        ; $67f6: $eb
    sbc h                                         ; $67f7: $9c
    cp b                                          ; $67f8: $b8
    db $e4                                        ; $67f9: $e4
    call Call_000_2536                            ; $67fa: $cd $36 $25
    push bc                                       ; $67fd: $c5
    di                                            ; $67fe: $f3
    adc h                                         ; $67ff: $8c
    ld h, l                                       ; $6800: $65
    rla                                           ; $6801: $17
    nop                                           ; $6802: $00
    inc a                                         ; $6803: $3c
    ld e, c                                       ; $6804: $59
    ld c, [hl]                                    ; $6805: $4e
    and h                                         ; $6806: $a4
    adc h                                         ; $6807: $8c
    xor e                                         ; $6808: $ab
    add hl, hl                                    ; $6809: $29
    add hl, hl                                    ; $680a: $29
    ld c, a                                       ; $680b: $4f
    or c                                          ; $680c: $b1
    ld l, $00                                     ; $680d: $2e $00
    db $fc                                        ; $680f: $fc
    db $e3                                        ; $6810: $e3
    add h                                         ; $6811: $84
    ld a, [hl+]                                   ; $6812: $2a
    db $eb                                        ; $6813: $eb
    ld c, e                                       ; $6814: $4b
    ret nc                                        ; $6815: $d0

    jp hl                                         ; $6816: $e9


    inc h                                         ; $6817: $24
    pop af                                        ; $6818: $f1
    db $fd                                        ; $6819: $fd
    ld c, c                                       ; $681a: $49
    db $10                                        ; $681b: $10
    inc sp                                        ; $681c: $33
    ld h, c                                       ; $681d: $61
    ret                                           ; $681e: $c9


    ld [hl], $ce                                  ; $681f: $36 $ce
    ld hl, $7ff9                                  ; $6821: $21 $f9 $7f
    and $56                                       ; $6824: $e6 $56
    ld h, e                                       ; $6826: $63
    ld a, [hl-]                                   ; $6827: $3a
    or b                                          ; $6828: $b0
    ld [hl+], a                                   ; $6829: $22
    call z, $02fe                                 ; $682a: $cc $fe $02
    ld c, $33                                     ; $682d: $0e $33
    res 3, d                                      ; $682f: $cb $9a
    xor b                                         ; $6831: $a8
    sub h                                         ; $6832: $94
    rst $38                                       ; $6833: $ff
    sub a                                         ; $6834: $97
    sbc d                                         ; $6835: $9a
    add sp, $1c                                   ; $6836: $e8 $1c

Jump_05b_6838:
    ld c, d                                       ; $6838: $4a
    adc d                                         ; $6839: $8a
    rst $20                                       ; $683a: $e7
    add hl, de                                    ; $683b: $19
    sra [hl]                                      ; $683c: $cb $2e
    add hl, sp                                    ; $683e: $39
    db $fc                                        ; $683f: $fc
    inc sp                                        ; $6840: $33
    or a                                          ; $6841: $b7
    ld a, [de]                                    ; $6842: $1a
    db $d3                                        ; $6843: $d3
    add c                                         ; $6844: $81
    dec d                                         ; $6845: $15
    jp nz, $c4d2                                  ; $6846: $c2 $d2 $c4

    ld [hl], e                                    ; $6849: $73
    ld a, a                                       ; $684a: $7f
    ld d, l                                       ; $684b: $55
    sbc b                                         ; $684c: $98
    cp l                                          ; $684d: $bd
    ld h, [hl]                                    ; $684e: $66
    jr nc, @-$78                                  ; $684f: $30 $86

    db $d3                                        ; $6851: $d3
    jp nz, Jump_000_2fec                          ; $6852: $c2 $ec $2f

    nop                                           ; $6855: $00
    sbc h                                         ; $6856: $9c
    cp e                                          ; $6857: $bb
    ld b, l                                       ; $6858: $45
    add hl, hl                                    ; $6859: $29
    sub l                                         ; $685a: $95
    ld l, h                                       ; $685b: $6c
    adc e                                         ; $685c: $8b
    add h                                         ; $685d: $84
    daa                                           ; $685e: $27

jr_05b_685f:
    ld a, [hl-]                                   ; $685f: $3a
    add hl, hl                                    ; $6860: $29
    sbc [hl]                                      ; $6861: $9e
    ld h, a                                       ; $6862: $67
    inc l                                         ; $6863: $2c
    cp e                                          ; $6864: $bb
    call nz, Call_05b_5517                        ; $6865: $c4 $17 $55
    ld b, h                                       ; $6868: $44
    dec h                                         ; $6869: $25
    sbc a                                         ; $686a: $9f
    dec hl                                        ; $686b: $2b
    ld l, e                                       ; $686c: $6b

jr_05b_686d:
    and d                                         ; $686d: $a2
    cp d                                          ; $686e: $ba
    nop                                           ; $686f: $00
    sbc h                                         ; $6870: $9c
    ei                                            ; $6871: $fb
    dec [hl]                                      ; $6872: $35

Jump_05b_6873:
    adc c                                         ; $6873: $89
    add hl, de                                    ; $6874: $19
    ld e, l                                       ; $6875: $5d
    nop                                           ; $6876: $00
    sbc h                                         ; $6877: $9c
    ld e, e                                       ; $6878: $5b
    dec d                                         ; $6879: $15
    adc d                                         ; $687a: $8a
    push de                                       ; $687b: $d5
    db $fc                                        ; $687c: $fc
    xor d                                         ; $687d: $aa
    rst $28                                       ; $687e: $ef
    rst $10                                       ; $687f: $d7
    dec e                                         ; $6880: $1d
    ld d, l                                       ; $6881: $55
    ld [hl], h                                    ; $6882: $74
    adc c                                         ; $6883: $89
    inc sp                                        ; $6884: $33
    add h                                         ; $6885: $84
    and l                                         ; $6886: $a5
    cp c                                          ; $6887: $b9
    ld [hl], c                                    ; $6888: $71
    ld c, [hl]                                    ; $6889: $4e
    ld [hl], h                                    ; $688a: $74
    ld h, a                                       ; $688b: $67
    and h                                         ; $688c: $a4
    ccf                                           ; $688d: $3f
    inc hl                                        ; $688e: $23
    cp d                                          ; $688f: $ba
    rst $38                                       ; $6890: $ff
    ld [bc], a                                    ; $6891: $02
    inc a                                         ; $6892: $3c
    ld e, c                                       ; $6893: $59
    ld c, [hl]                                    ; $6894: $4e
    inc h                                         ; $6895: $24
    jr jr_05b_685f                                ; $6896: $18 $c7

    add hl, de                                    ; $6898: $19
    sbc a                                         ; $6899: $9f
    inc d                                         ; $689a: $14
    rst $08                                       ; $689b: $cf
    inc sp                                        ; $689c: $33
    sub [hl]                                      ; $689d: $96
    ld [hl], c                                    ; $689e: $71
    inc bc                                        ; $689f: $03
    inc a                                         ; $68a0: $3c

jr_05b_68a1:
    ld e, c                                       ; $68a1: $59
    ld c, [hl]                                    ; $68a2: $4e
    inc h                                         ; $68a3: $24
    jr jr_05b_686d                                ; $68a4: $18 $c7

    add hl, de                                    ; $68a6: $19
    sbc a                                         ; $68a7: $9f
    sub h                                         ; $68a8: $94
    and a                                         ; $68a9: $a7
    ld e, b                                       ; $68aa: $58
    call c, $fde2                                 ; $68ab: $dc $e2 $fd
    ld [hl], $4c                                  ; $68ae: $36 $4c
    ld [$e10e], a                                 ; $68b0: $ea $0e $e1
    add hl, sp                                    ; $68b3: $39
    rst $38                                       ; $68b4: $ff
    dec h                                         ; $68b5: $25
    ei                                            ; $68b6: $fb
    rst $28                                       ; $68b7: $ef
    ld hl, $c718                                  ; $68b8: $21 $18 $c7
    add hl, de                                    ; $68bb: $19
    rst $20                                       ; $68bc: $e7
    ld d, e                                       ; $68bd: $53
    jr jr_05b_68a1                                ; $68be: $18 $e1

    cp a                                          ; $68c0: $bf
    nop                                           ; $68c1: $00
    sbc [hl]                                      ; $68c2: $9e
    rst $38                                       ; $68c3: $ff
    adc $f9                                       ; $68c4: $ce $f9
    or d                                          ; $68c6: $b2
    ld sp, $96d8                                  ; $68c7: $31 $d8 $96
    ret nc                                        ; $68ca: $d0

    ld e, [hl]                                    ; $68cb: $5e
    rst $30                                       ; $68cc: $f7
    ld e, b                                       ; $68cd: $58
    db $eb                                        ; $68ce: $eb
    rla                                           ; $68cf: $17
    ld a, [$9efe]                                 ; $68d0: $fa $fe $9e
    ld e, a                                       ; $68d3: $5f
    db $eb                                        ; $68d4: $eb
    rla                                           ; $68d5: $17
    sub $dc                                       ; $68d6: $d6 $dc
    jp nc, Jump_05b_551d                          ; $68d8: $d2 $1d $55

    ld e, c                                       ; $68db: $59

jr_05b_68dc:
    ld l, e                                       ; $68dc: $6b
    ld h, d                                       ; $68dd: $62
    rst $28                                       ; $68de: $ef
    sub [hl]                                      ; $68df: $96
    ld a, l                                       ; $68e0: $7d
    ld d, d                                       ; $68e1: $52
    ld [hl], a                                    ; $68e2: $77
    jr z, @-$37                                   ; $68e3: $28 $c7

    add l                                         ; $68e5: $85
    db $fc                                        ; $68e6: $fc
    sub a                                         ; $68e7: $97
    jp nc, $df2c                                  ; $68e8: $d2 $2c $df

    sub d                                         ; $68eb: $92
    cp a                                          ; $68ec: $bf
    ld c, l                                       ; $68ed: $4d
    and h                                         ; $68ee: $a4
    db $f4                                        ; $68ef: $f4
    add a                                         ; $68f0: $87
    call $6e7f                                    ; $68f1: $cd $7f $6e
    nop                                           ; $68f4: $00
    ld e, $e1                                     ; $68f5: $1e $e1
    jr c, jr_05b_68dc                             ; $68f7: $38 $e3

    push de                                       ; $68f9: $d5
    ld a, a                                       ; $68fa: $7f
    db $10                                        ; $68fb: $10
    dec hl                                        ; $68fc: $2b
    xor c                                         ; $68fd: $a9
    ld l, h                                       ; $68fe: $6c
    jp c, $ad16                                   ; $68ff: $da $16 $ad

    ld b, l                                       ; $6902: $45
    dec hl                                        ; $6903: $2b
    ld l, d                                       ; $6904: $6a
    add $d9                                       ; $6905: $c6 $d9
    jp c, $000b                                   ; $6907: $da $0b $00

    ld a, h                                       ; $690a: $7c
    db $db                                        ; $690b: $db
    and h                                         ; $690c: $a4
    db $f4                                        ; $690d: $f4
    rst $08                                       ; $690e: $cf
    ld hl, sp+$4e                                 ; $690f: $f8 $4e
    jp z, Jump_000_0dd3                           ; $6911: $ca $d3 $0d

    dec de                                        ; $6914: $1b
    ld d, b                                       ; $6915: $50
    nop                                           ; $6916: $00
    ld e, $7f                                     ; $6917: $1e $7f
    ld a, [bc]                                    ; $6919: $0a
    inc hl                                        ; $691a: $23
    db $fc                                        ; $691b: $fc
    ld [$ce8d], a                                 ; $691c: $ea $8d $ce
    xor h                                         ; $691f: $ac
    scf                                           ; $6920: $37
    xor c                                         ; $6921: $a9
    jp z, $a53a                                   ; $6922: $ca $3a $a5

    ld [de], a                                    ; $6925: $12
    sub [hl]                                      ; $6926: $96
    ld h, b                                       ; $6927: $60
    inc e                                         ; $6928: $1c
    ld h, a                                       ; $6929: $67
    ld [hl], b                                    ; $692a: $70
    rlc c                                         ; $692b: $cb $01
    db $dd                                        ; $692d: $dd
    and h                                         ; $692e: $a4
    and d                                         ; $692f: $a2
    xor h                                         ; $6930: $ac
    sbc e                                         ; $6931: $9b
    ld [hl], d                                    ; $6932: $72
    ld l, d                                       ; $6933: $6a
    call Call_05b_71cd                            ; $6934: $cd $cd $71
    ld c, a                                       ; $6937: $4f
    rst $38                                       ; $6938: $ff
    dec b                                         ; $6939: $05

jr_05b_693a:
    nop                                           ; $693a: $00
    ld l, [hl]                                    ; $693b: $6e
    ld d, a                                       ; $693c: $57
    cp l                                          ; $693d: $bd
    ld a, [hl+]                                   ; $693e: $2a
    call nc, Call_05b_7f3f                        ; $693f: $d4 $3f $7f
    ld l, l                                       ; $6942: $6d
    dec hl                                        ; $6943: $2b
    add hl, hl                                    ; $6944: $29
    ld c, a                                       ; $6945: $4f
    scf                                           ; $6946: $37
    ld l, h                                       ; $6947: $6c
    ld [hl], b                                    ; $6948: $70
    inc bc                                        ; $6949: $03
    ret nc                                        ; $694a: $d0

    db $dd                                        ; $694b: $dd
    ld sp, $d4b9                                  ; $694c: $31 $b9 $d4
    dec de                                        ; $694f: $1b
    db $10                                        ; $6950: $10
    ld c, d                                       ; $6951: $4a
    ld a, [hl+]                                   ; $6952: $2a
    cp d                                          ; $6953: $ba
    ld c, c                                       ; $6954: $49
    rst $20                                       ; $6955: $e7
    ld d, e                                       ; $6956: $53
    jr jr_05b_693a                                ; $6957: $18 $e1

    jr z, jr_05b_69d8                             ; $6959: $28 $7d

    push af                                       ; $695b: $f5
    rst $18                                       ; $695c: $df
    ld e, e                                       ; $695d: $5b
    ld d, c                                       ; $695e: $51
    jp nz, $fa52                                  ; $695f: $c2 $52 $fa

    jp $dc66                                      ; $6962: $c3 $66 $dc


    cp $bf                                        ; $6965: $fe $bf
    and $d8                                       ; $6967: $e6 $d8
    ld d, d                                       ; $6969: $52
    db $ed                                        ; $696a: $ed
    ld b, d                                       ; $696b: $42
    and d                                         ; $696c: $a2
    ld h, h                                       ; $696d: $64
    rst $38                                       ; $696e: $ff
    rst $30                                       ; $696f: $f7
    ld d, [hl]                                    ; $6970: $56
    inc d                                         ; $6971: $14
    sub h                                         ; $6972: $94
    ld hl, sp+$46                                 ; $6973: $f8 $46
    rst $30                                       ; $6975: $f7
    ld l, e                                       ; $6976: $6b
    cp $ce                                        ; $6977: $fe $ce
    or l                                          ; $6979: $b5
    ld a, [hl]                                    ; $697a: $7e
    and l                                         ; $697b: $a5
    ccf                                           ; $697c: $3f
    ld l, h                                       ; $697d: $6c
    ld l, [hl]                                    ; $697e: $6e
    push af                                       ; $697f: $f5
    dec bc                                        ; $6980: $0b

jr_05b_6981:
    ld c, e                                       ; $6981: $4b
    cp $ee                                        ; $6982: $fe $ee
    pop bc                                        ; $6984: $c1
    xor $bf                                       ; $6985: $ee $bf
    or a                                          ; $6987: $b7
    and d                                         ; $6988: $a2
    cp b                                          ; $6989: $b8
    push bc                                       ; $698a: $c5
    ld sp, hl                                     ; $698b: $f9

Jump_05b_698c:
    rst $18                                       ; $698c: $df
    dec e                                         ; $698d: $1d
    ld a, [hl-]                                   ; $698e: $3a
    sbc a                                         ; $698f: $9f
    jp nz, $155f                                  ; $6990: $c2 $5f $15

    ld [$bf9f], a                                 ; $6993: $ea $9f $bf
    or [hl]                                       ; $6996: $b6
    ld [hl], l                                    ; $6997: $75
    ld e, l                                       ; $6998: $5d
    sub a                                         ; $6999: $97
    ld h, b                                       ; $699a: $60
    inc [hl]                                      ; $699b: $34
    push hl                                       ; $699c: $e5
    cp a                                          ; $699d: $bf
    and l                                         ; $699e: $a5
    jp Jump_05b_4195                              ; $699f: $c3 $95 $41


    xor b                                         ; $69a2: $a8
    dec sp                                        ; $69a3: $3b
    ld d, h                                       ; $69a4: $54
    ld [hl], c                                    ; $69a5: $71
    ld bc, $6e9e                                  ; $69a6: $01 $9e $6e
    ret c                                         ; $69a9: $d8

    ld c, b                                       ; $69aa: $48
    cp a                                          ; $69ab: $bf
    inc d                                         ; $69ac: $14
    xor e                                         ; $69ad: $ab
    and [hl]                                      ; $69ae: $a6
    ld h, $c1                                     ; $69af: $26 $c1
    jr c, jr_05b_6981                             ; $69b1: $38 $ce

    ld a, b                                       ; $69b3: $78
    ld sp, hl                                     ; $69b4: $f9
    ld a, e                                       ; $69b5: $7b
    cp $2f                                        ; $69b6: $fe $2f
    ld a, c                                       ; $69b8: $79
    ld c, h                                       ; $69b9: $4c
    add hl, hl                                    ; $69ba: $29
    inc h                                         ; $69bb: $24
    ld c, d                                       ; $69bc: $4a
    pop de                                        ; $69bd: $d1
    or [hl]                                       ; $69be: $b6
    scf                                           ; $69bf: $37
    ld d, c                                       ; $69c0: $51
    jp hl                                         ; $69c1: $e9


    ld a, h                                       ; $69c2: $7c
    ld a, [bc]                                    ; $69c3: $0a
    inc hl                                        ; $69c4: $23
    db $fc                                        ; $69c5: $fc
    call c, $0e00                                 ; $69c6: $dc $00 $0e
    ld b, d                                       ; $69c9: $42
    sbc b                                         ; $69ca: $98
    ld a, a                                       ; $69cb: $7f
    dec hl                                        ; $69cc: $2b
    ld a, a                                       ; $69cd: $7f
    halt                                          ; $69ce: $76
    cp a                                          ; $69cf: $bf
    push af                                       ; $69d0: $f5
    ld a, [bc]                                    ; $69d1: $0a
    ld b, [hl]                                    ; $69d2: $46
    or e                                          ; $69d3: $b3
    rst $18                                       ; $69d4: $df
    ld d, d                                       ; $69d5: $52
    inc de                                        ; $69d6: $13
    sbc l                                         ; $69d7: $9d

jr_05b_69d8:
    ld b, e                                       ; $69d8: $43
    ld [$852c], a                                 ; $69d9: $ea $2c $85
    ret                                           ; $69dc: $c9


    adc h                                         ; $69dd: $8c
    inc [hl]                                      ; $69de: $34
    ld [hl], c                                    ; $69df: $71
    sbc h                                         ; $69e0: $9c
    ld h, c                                       ; $69e1: $61
    or $97                                        ; $69e2: $f6 $97
    inc a                                         ; $69e4: $3c
    ld [hl+], a                                   ; $69e5: $22
    ld a, [hl+]                                   ; $69e6: $2a
    dec [hl]                                      ; $69e7: $35
    ld d, l                                       ; $69e8: $55
    add l                                         ; $69e9: $85
    ld a, [c]                                     ; $69ea: $f2
    ld c, a                                       ; $69eb: $4f
    ld a, e                                       ; $69ec: $7b
    rst $28                                       ; $69ed: $ef
    rst $38                                       ; $69ee: $ff
    ld c, d                                       ; $69ef: $4a
    ld a, [hl+]                                   ; $69f0: $2a
    cp d                                          ; $69f1: $ba
    ld h, e                                       ; $69f2: $63
    ld h, l                                       ; $69f3: $65
    and c                                         ; $69f4: $a1
    ld a, h                                       ; $69f5: $7c
    ld b, e                                       ; $69f6: $43
    rst $30                                       ; $69f7: $f7
    ld [hl], $51                                  ; $69f8: $36 $51
    jp hl                                         ; $69fa: $e9


    ld e, $a3                                     ; $69fb: $1e $a3
    rst $38                                       ; $69fd: $ff
    ld [bc], a                                    ; $69fe: $02
    inc a                                         ; $69ff: $3c
    rst $30                                       ; $6a00: $f7
    sbc l                                         ; $6a01: $9d
    ld d, h                                       ; $6a02: $54
    inc de                                        ; $6a03: $13
    sbc l                                         ; $6a04: $9d
    ld b, e                                       ; $6a05: $43
    jp nz, $9ed2                                  ; $6a06: $c2 $d2 $9e

    dec de                                        ; $6a09: $1b
    or a                                          ; $6a0a: $b7
    add a                                         ; $6a0b: $87
    ld e, l                                       ; $6a0c: $5d
    nop                                           ; $6a0d: $00
    ld a, h                                       ; $6a0e: $7c
    ld h, e                                       ; $6a0f: $63
    xor l                                         ; $6a10: $ad
    ld a, a                                       ; $6a11: $7f
    cp $eb                                        ; $6a12: $fe $eb
    adc h                                         ; $6a14: $8c
    add hl, de                                    ; $6a15: $19
    xor a                                         ; $6a16: $af
    ld a, [hl]                                    ; $6a17: $7e
    and $47                                       ; $6a18: $e6 $47
    ld c, h                                       ; $6a1a: $4c
    ld e, e                                       ; $6a1b: $5b
    ld b, l                                       ; $6a1c: $45
    ld d, l                                       ; $6a1d: $55
    sub h                                         ; $6a1e: $94
    ld c, $a5                                     ; $6a1f: $0e $a5
    call $1745                                    ; $6a21: $cd $45 $17
    nop                                           ; $6a24: $00
    cp h                                          ; $6a25: $bc
    ld a, b                                       ; $6a26: $78
    rst $00                                       ; $6a27: $c7
    adc e                                         ; $6a28: $8b
    ld d, c                                       ; $6a29: $51
    sub [hl]                                      ; $6a2a: $96
    ld d, d                                       ; $6a2b: $52
    ld a, [de]                                    ; $6a2c: $1a
    dec [hl]                                      ; $6a2d: $35
    ld d, a                                       ; $6a2e: $57
    ld d, c                                       ; $6a2f: $51
    dec [hl]                                      ; $6a30: $35

jr_05b_6a31:
    xor h                                         ; $6a31: $ac
    rst $38                                       ; $6a32: $ff
    db $dd                                        ; $6a33: $dd
    db $10                                        ; $6a34: $10
    adc h                                         ; $6a35: $8c
    db $e3                                        ; $6a36: $e3
    adc h                                         ; $6a37: $8c
    ld [de], a                                    ; $6a38: $12
    ld d, [hl]                                    ; $6a39: $56
    ld b, l                                       ; $6a3a: $45
    push de                                       ; $6a3b: $d5
    cp b                                          ; $6a3c: $b8
    add e                                         ; $6a3d: $83
    and c                                         ; $6a3e: $a1
    or b                                          ; $6a3f: $b0
    inc [hl]                                      ; $6a40: $34
    rst $00                                       ; $6a41: $c7
    or b                                          ; $6a42: $b0
    cp l                                          ; $6a43: $bd
    nop                                           ; $6a44: $00
    ld e, $9e                                     ; $6a45: $1e $9e
    ei                                            ; $6a47: $fb
    rst $10                                       ; $6a48: $d7
    or $05                                        ; $6a49: $f6 $05
    db $e3                                        ; $6a4b: $e3
    jr c, jr_05b_6a31                             ; $6a4c: $38 $e3

    ld a, h                                       ; $6a4e: $7c
    ld a, [bc]                                    ; $6a4f: $0a
    inc hl                                        ; $6a50: $23
    db $fc                                        ; $6a51: $fc
    sub a                                         ; $6a52: $97
    ld a, b                                       ; $6a53: $78
    ld a, a                                       ; $6a54: $7f
    rst $20                                       ; $6a55: $e7
    ld e, h                                       ; $6a56: $5c
    ld a, l                                       ; $6a57: $7d
    cp $7f                                        ; $6a58: $fe $7f
    ld a, a                                       ; $6a5a: $7f
    scf                                           ; $6a5b: $37
    sbc $fb                                       ; $6a5c: $de $fb
    sub a                                         ; $6a5e: $97
    inc a                                         ; $6a5f: $3c
    ld e, [hl]                                    ; $6a60: $5e
    and e                                         ; $6a61: $a3
    sbc $68                                       ; $6a62: $de $68
    add h                                         ; $6a64: $84
    ld e, a                                       ; $6a65: $5f
    sbc [hl]                                      ; $6a66: $9e
    ld l, [hl]                                    ; $6a67: $6e

jr_05b_6a68:
    ret c                                         ; $6a68: $d8

    jr c, jr_05b_6a68                             ; $6a69: $38 $fd

    rla                                           ; $6a6b: $17
    nop                                           ; $6a6c: $00
    inc e                                         ; $6a6d: $1c
    daa                                           ; $6a6e: $27
    ld a, d                                       ; $6a6f: $7a
    and d                                         ; $6a70: $a2
    adc d                                         ; $6a71: $8a
    jp nc, $5aca                                  ; $6a72: $d2 $ca $5a

    sbc [hl]                                      ; $6a75: $9e
    ld l, [hl]                                    ; $6a76: $6e
    ret c                                         ; $6a77: $d8

    ld a, b                                       ; $6a78: $78
    jr z, jr_05b_6aec                             ; $6a79: $28 $71

    add [hl]                                      ; $6a7b: $86
    ld a, [c]                                     ; $6a7c: $f2
    ld h, a                                       ; $6a7d: $67
    ld l, a                                       ; $6a7e: $6f
    cp l                                          ; $6a7f: $bd
    add d                                         ; $6a80: $82
    ld [hl], c                                    ; $6a81: $71
    sbc h                                         ; $6a82: $9c
    ld [hl], c                                    ; $6a83: $71
    ld a, $85                                     ; $6a84: $3e $85
    cp a                                          ; $6a86: $bf
    or $02                                        ; $6a87: $f6 $02
    ret nc                                        ; $6a89: $d0

    dec h                                         ; $6a8a: $25
    inc a                                         ; $6a8b: $3c
    and c                                         ; $6a8c: $a1
    and d                                         ; $6a8d: $a2
    or h                                          ; $6a8e: $b4
    or d                                          ; $6a8f: $b2
    cp [hl]                                       ; $6a90: $be
    call nz, $01bf                                ; $6a91: $c4 $bf $01
    and c                                         ; $6a94: $a1
    jp nc, $cecc                                  ; $6a95: $d2 $cc $ce

    and c                                         ; $6a98: $a1
    and h                                         ; $6a99: $a4
    and d                                         ; $6a9a: $a2
    sbc e                                         ; $6a9b: $9b
    db $e4                                        ; $6a9c: $e4
    jp hl                                         ; $6a9d: $e9


    add [hl]                                      ; $6a9e: $86
    dec c                                         ; $6a9f: $0d
    ld [hl], l                                    ; $6aa0: $75
    ld [hl], $27                                  ; $6aa1: $36 $27
    sub c                                         ; $6aa3: $91
    db $fc                                        ; $6aa4: $fc
    db $dd                                        ; $6aa5: $dd
    add e                                         ; $6aa6: $83
    db $dd                                        ; $6aa7: $dd
    rst $38                                       ; $6aa8: $ff
    ld [$9fcf], a                                 ; $6aa9: $ea $cf $9f
    pop hl                                        ; $6aac: $e1
    or $eb                                        ; $6aad: $f6 $eb
    adc h                                         ; $6aaf: $8c
    cp c                                          ; $6ab0: $b9
    db $dd                                        ; $6ab1: $dd
    inc bc                                        ; $6ab2: $03
    adc [hl]                                      ; $6ab3: $8e
    ld [de], a                                    ; $6ab4: $12
    and $1b                                       ; $6ab5: $e6 $1b
    and l                                         ; $6ab7: $a5
    cp $9f                                        ; $6ab8: $fe $9f
    ld d, $17                                     ; $6aba: $16 $17
    nop                                           ; $6abc: $00
    ret nc                                        ; $6abd: $d0

    dec hl                                        ; $6abe: $2b
    inc a                                         ; $6abf: $3c
    and c                                         ; $6ac0: $a1
    and d                                         ; $6ac1: $a2
    sbc c                                         ; $6ac2: $99
    ld d, l                                       ; $6ac3: $55
    sub $17                                       ; $6ac4: $d6 $17
    nop                                           ; $6ac6: $00
    sbc [hl]                                      ; $6ac7: $9e
    ld l, [hl]                                    ; $6ac8: $6e
    ret c                                         ; $6ac9: $d8

    ldh [rNR21], a                                ; $6aca: $e0 $16
    rst $20                                       ; $6acc: $e7
    ld l, [hl]                                    ; $6acd: $6e
    sub c                                         ; $6ace: $91
    ld a, [c]                                     ; $6acf: $f2
    or a                                          ; $6ad0: $b7
    ld a, [hl]                                    ; $6ad1: $7e
    db $dd                                        ; $6ad2: $dd
    add e                                         ; $6ad3: $83
    and l                                         ; $6ad4: $a5
    ld de, $5935                                  ; $6ad5: $11 $35 $59
    sub [hl]                                      ; $6ad8: $96
    push de                                       ; $6ad9: $d5
    ld e, [hl]                                    ; $6ada: $5e
    add d                                         ; $6adb: $82
    ld l, $e1                                     ; $6adc: $2e $e1
    add hl, bc                                    ; $6ade: $09
    call Call_000_1cec                            ; $6adf: $cd $ec $1c
    ld d, d                                       ; $6ae2: $52
    ld d, c                                       ; $6ae3: $51
    ld e, d                                       ; $6ae4: $5a
    ld e, c                                       ; $6ae5: $59

jr_05b_6ae6:
    res 6, [hl]                                   ; $6ae6: $cb $b6
    ld c, c                                       ; $6ae8: $49
    add hl, sp                                    ; $6ae9: $39
    and l                                         ; $6aea: $a5
    ld b, h                                       ; $6aeb: $44

jr_05b_6aec:
    and l                                         ; $6aec: $a5
    rst $18                                       ; $6aed: $df
    ld sp, hl                                     ; $6aee: $f9
    ld e, a                                       ; $6aef: $5f
    rla                                           ; $6af0: $17
    nop                                           ; $6af1: $00
    ret nc                                        ; $6af2: $d0

    dec h                                         ; $6af3: $25
    inc a                                         ; $6af4: $3c
    and c                                         ; $6af5: $a1
    and d                                         ; $6af6: $a2
    or h                                          ; $6af7: $b4
    or d                                          ; $6af8: $b2
    sub [hl]                                      ; $6af9: $96
    ld l, l                                       ; $6afa: $6d
    sub e                                         ; $6afb: $93
    ld a, [$b657]                                 ; $6afc: $fa $57 $b6
    dec [hl]                                      ; $6aff: $35
    ld c, d                                       ; $6b00: $4a
    rst $20                                       ; $6b01: $e7
    ld d, e                                       ; $6b02: $53
    jr jr_05b_6ae6                                ; $6b03: $18 $e1

jr_05b_6b05:
    or a                                          ; $6b05: $b7
    cp l                                          ; $6b06: $bd
    call nz, $9b8f                                ; $6b07: $c4 $8f $9b
    ld h, e                                       ; $6b0a: $63
    rst $30                                       ; $6b0b: $f7
    rst $20                                       ; $6b0c: $e7
    ld l, a                                       ; $6b0d: $6f
    cp l                                          ; $6b0e: $bd
    xor d                                         ; $6b0f: $aa
    ld e, l                                       ; $6b10: $5d
    inc sp                                        ; $6b11: $33
    ld d, d                                       ; $6b12: $52
    xor h                                         ; $6b13: $ac
    ldh a, [$9c]                                  ; $6b14: $f0 $9c
    pop de                                        ; $6b16: $d1
    cp d                                          ; $6b17: $ba
    or a                                          ; $6b18: $b7
    adc c                                         ; $6b19: $89
    ld c, d                                       ; $6b1a: $4a
    sub [hl]                                      ; $6b1b: $96
    ld [hl], c                                    ; $6b1c: $71
    dec [hl]                                      ; $6b1d: $35
    push hl                                       ; $6b1e: $e5
    ld b, h                                       ; $6b1f: $44
    rla                                           ; $6b20: $17
    nop                                           ; $6b21: $00
    ld a, h                                       ; $6b22: $7c
    db $db                                        ; $6b23: $db
    sub h                                         ; $6b24: $94
    ld d, d                                       ; $6b25: $52
    xor c                                         ; $6b26: $a9
    halt                                          ; $6b27: $76
    call $e748                                    ; $6b28: $cd $48 $e7
    ld d, e                                       ; $6b2b: $53
    jr jr_05b_6b05                                ; $6b2c: $18 $d7

    db $ec                                        ; $6b2e: $ec
    ld [hl], l                                    ; $6b2f: $75
    ld a, a                                       ; $6b30: $7f
    jp c, $c2b8                                   ; $6b31: $da $b8 $c2

    ld [hl], e                                    ; $6b34: $73
    ld e, $0a                                     ; $6b35: $1e $0a
    nop                                           ; $6b37: $00
    ld c, $68                                     ; $6b38: $0e $68
    ld c, e                                       ; $6b3a: $4b
    sbc [hl]                                      ; $6b3b: $9e
    ld l, [hl]                                    ; $6b3c: $6e
    ret c                                         ; $6b3d: $d8

    jr z, @-$61                                   ; $6b3e: $28 $9d

    ld e, b                                       ; $6b40: $58
    ld a, b                                       ; $6b41: $78
    db $e4                                        ; $6b42: $e4
    ld e, a                                       ; $6b43: $5f
    or d                                          ; $6b44: $b2
    dec [hl]                                      ; $6b45: $35
    and d                                         ; $6b46: $a2
    jp nc, $b63d                                  ; $6b47: $d2 $3d $b6

    ld a, [hl]                                    ; $6b4a: $7e
    xor l                                         ; $6b4b: $ad
    and e                                         ; $6b4c: $a3
    call nz, $ef76                                ; $6b4d: $c4 $76 $ef
    ld bc, $e947                                  ; $6b50: $01 $47 $e9
    inc c                                         ; $6b53: $0c
    sbc h                                         ; $6b54: $9c
    di                                            ; $6b55: $f3
    cp a                                          ; $6b56: $bf
    ld l, $71                                     ; $6b57: $2e $71
    add [hl]                                      ; $6b59: $86
    jr nc, jr_05b_6bbb                            ; $6b5a: $30 $5f

    ld h, c                                       ; $6b5c: $61
    jp hl                                         ; $6b5d: $e9


    adc h                                         ; $6b5e: $8c
    adc c                                         ; $6b5f: $89

jr_05b_6b60:
    ld h, [hl]                                    ; $6b60: $66
    ld a, a                                       ; $6b61: $7f
    ld bc, $680e                                  ; $6b62: $01 $0e $68
    ld c, e                                       ; $6b65: $4b
    sbc [hl]                                      ; $6b66: $9e
    ld l, [hl]                                    ; $6b67: $6e
    ret c                                         ; $6b68: $d8

    jr z, jr_05b_6b60                             ; $6b69: $28 $f5

    jr c, @-$6d                                   ; $6b6b: $38 $91

    ld a, a                                       ; $6b6d: $7f
    jp hl                                         ; $6b6e: $e9


    rst $08                                       ; $6b6f: $cf
    sbc e                                         ; $6b70: $9b
    and $18                                       ; $6b71: $e6 $18
    sub b                                         ; $6b73: $90
    xor b                                         ; $6b74: $a8
    ld a, [bc]                                    ; $6b75: $0a
    db $eb                                        ; $6b76: $eb
    rst $10                                       ; $6b77: $d7
    inc c                                         ; $6b78: $0c
    add $70                                       ; $6b79: $c6 $70
    ld e, d                                       ; $6b7b: $5a
    ld e, b                                       ; $6b7c: $58
    ld a, a                                       ; $6b7d: $7f
    ld d, d                                       ; $6b7e: $52
    rst $30                                       ; $6b7f: $f7
    add sp, $7e                                   ; $6b80: $e8 $7e
    reti                                          ; $6b82: $d9


    sbc [hl]                                      ; $6b83: $9e
    ld b, e                                       ; $6b84: $43
    adc d                                         ; $6b85: $8a
    dec d                                         ; $6b86: $15
    sbc [hl]                                      ; $6b87: $9e
    inc sp                                        ; $6b88: $33
    ld e, d                                       ; $6b89: $5a
    rst $30                                       ; $6b8a: $f7
    ld [hl], $51                                  ; $6b8b: $36 $51
    jp hl                                         ; $6b8d: $e9


    ld e, $f3                                     ; $6b8e: $1e $f3
    db $eb                                        ; $6b90: $eb
    cp a                                          ; $6b91: $bf
    ld l, $00                                     ; $6b92: $2e $00
    sbc h                                         ; $6b94: $9c
    cp a                                          ; $6b95: $bf
    push hl                                       ; $6b96: $e5
    cp a                                          ; $6b97: $bf
    ld [hl], c                                    ; $6b98: $71
    adc e                                         ; $6b99: $8b
    ld [hl], e                                    ; $6b9a: $73
    adc e                                         ; $6b9b: $8b
    add h                                         ; $6b9c: $84
    daa                                           ; $6b9d: $27
    ld e, d                                       ; $6b9e: $5a
    sbc [hl]                                      ; $6b9f: $9e
    ld h, d                                       ; $6ba0: $62
    ld a, [hl-]                                   ; $6ba1: $3a
    db $e3                                        ; $6ba2: $e3
    db $ec                                        ; $6ba3: $ec
    call nz, $8f92                                ; $6ba4: $c4 $92 $8f
    dec sp                                        ; $6ba7: $3b
    rst $30                                       ; $6ba8: $f7
    xor a                                         ; $6ba9: $af
    db $eb                                        ; $6baa: $eb
    ld [de], a                                    ; $6bab: $12
    adc h                                         ; $6bac: $8c
    dec e                                         ; $6bad: $1d
    and l                                         ; $6bae: $a5
    jp z, $875a                                   ; $6baf: $ca $5a $87

    ld d, d                                       ; $6bb2: $52
    ld c, b                                       ; $6bb3: $48
    ld [hl], h                                    ; $6bb4: $74
    rst $28                                       ; $6bb5: $ef
    sub [hl]                                      ; $6bb6: $96
    ld hl, sp+$12                                 ; $6bb7: $f8 $12
    ldh a, [$e0]                                  ; $6bb9: $f0 $e0

jr_05b_6bbb:
    reti                                          ; $6bbb: $d9


    cp l                                          ; $6bbc: $bd
    add hl, bc                                    ; $6bbd: $09
    ld a, a                                       ; $6bbe: $7f

jr_05b_6bbf:
    add hl, bc                                    ; $6bbf: $09
    ld e, $dd                                     ; $6bc0: $1e $dd
    jp $9cf6                                      ; $6bc2: $c3 $f6 $9c


    cp b                                          ; $6bc5: $b8
    nop                                           ; $6bc6: $00
    sbc [hl]                                      ; $6bc7: $9e
    ld a, a                                       ; $6bc8: $7f
    jp c, $877b                                   ; $6bc9: $da $7b $87

    push af                                       ; $6bcc: $f5
    or e                                          ; $6bcd: $b3
    sub l                                         ; $6bce: $95
    rst $20                                       ; $6bcf: $e7
    ret z                                         ; $6bd0: $c8

    or b                                          ; $6bd1: $b0
    sub h                                         ; $6bd2: $94
    ccf                                           ; $6bd3: $3f
    ld a, e                                       ; $6bd4: $7b
    ld l, e                                       ; $6bd5: $6b
    ld c, h                                       ; $6bd6: $4c
    rlca                                          ; $6bd7: $07
    ld d, [hl]                                    ; $6bd8: $56
    ld [$734b], sp                                ; $6bd9: $08 $4b $73
    db $e3                                        ; $6bdc: $e3
    sbc h                                         ; $6bdd: $9c
    add sp, -$32                                  ; $6bde: $e8 $ce
    ld c, b                                       ; $6be0: $48
    ld a, a                                       ; $6be1: $7f
    ld b, [hl]                                    ; $6be2: $46
    ld [hl], h                                    ; $6be3: $74
    ld a, a                                       ; $6be4: $7f
    ld d, d                                       ; $6be5: $52
    inc a                                         ; $6be6: $3c
    rst $08                                       ; $6be7: $cf
    ld e, b                                       ; $6be8: $58
    halt                                          ; $6be9: $76
    ld bc, $a37c                                  ; $6bea: $01 $7c $a3
    ei                                            ; $6bed: $fb
    push hl                                       ; $6bee: $e5
    inc sp                                        ; $6bef: $33
    ld c, h                                       ; $6bf0: $4c
    jr nc, jr_05b_6bbf                            ; $6bf1: $30 $cc

    sub b                                         ; $6bf3: $90
    xor l                                         ; $6bf4: $ad
    ld hl, sp+$12                                 ; $6bf5: $f8 $12
    ldh a, [$e0]                                  ; $6bf7: $f0 $e0
    reti                                          ; $6bf9: $d9


    cp l                                          ; $6bfa: $bd
    add hl, bc                                    ; $6bfb: $09
    rst $38                                       ; $6bfc: $ff
    ld [hl], l                                    ; $6bfd: $75
    ld e, l                                       ; $6bfe: $5d
    nop                                           ; $6bff: $00
    ret nc                                        ; $6c00: $d0

    xor e                                         ; $6c01: $ab
    ld a, e                                       ; $6c02: $7b
    sbc e                                         ; $6c03: $9b
    xor b                                         ; $6c04: $a8
    ld h, h                                       ; $6c05: $64
    ld [hl], c                                    ; $6c06: $71
    or [hl]                                       ; $6c07: $b6
    or e                                          ; $6c08: $b3
    ld l, c                                       ; $6c09: $69
    ld c, e                                       ; $6c0a: $4b
    call c, Call_05b_45e2                         ; $6c0b: $dc $e2 $45
    sbc e                                         ; $6c0e: $9b
    xor a                                         ; $6c0f: $af
    jp z, Jump_05b_585a                           ; $6c10: $ca $5a $58

    add d                                         ; $6c13: $82
    ld [hl], c                                    ; $6c14: $71
    sbc h                                         ; $6c15: $9c
    sub c                                         ; $6c16: $91
    ld d, h                                       ; $6c17: $54
    ld c, [hl]                                    ; $6c18: $4e
    ld l, c                                       ; $6c19: $69
    ld d, h                                       ; $6c1a: $54
    ld d, c                                       ; $6c1b: $51
    add hl, hl                                    ; $6c1c: $29
    rst $38                                       ; $6c1d: $ff
    dec l                                         ; $6c1e: $2d
    ld h, l                                       ; $6c1f: $65
    add hl, hl                                    ; $6c20: $29
    inc h                                         ; $6c21: $24
    ld c, d                                       ; $6c22: $4a
    dec a                                         ; $6c23: $3d
    db $fc                                        ; $6c24: $fc
    rst $30                                       ; $6c25: $f7
    rst $10                                       ; $6c26: $d7
    ld a, [hl-]                                   ; $6c27: $3a
    and d                                         ; $6c28: $a2
    db $e4                                        ; $6c29: $e4
    add hl, hl                                    ; $6c2a: $29
    and [hl]                                      ; $6c2b: $a6
    inc sp                                        ; $6c2c: $33
    adc $4e                                       ; $6c2d: $ce $4e
    inc a                                         ; $6c2f: $3c
    db $fd                                        ; $6c30: $fd
    sub a                                         ; $6c31: $97
    ld a, b                                       ; $6c32: $78
    cp a                                          ; $6c33: $bf
    pop af                                        ; $6c34: $f1
    ld d, l                                       ; $6c35: $55
    ld e, c                                       ; $6c36: $59
    set 6, [hl]                                   ; $6c37: $cb $f6
    call c, Call_05b_4d6b                         ; $6c39: $dc $6b $4d
    or l                                          ; $6c3c: $b5
    call c, $8e00                                 ; $6c3d: $dc $00 $8e
    dec e                                         ; $6c40: $1d
    sbc d                                         ; $6c41: $9a
    and h                                         ; $6c42: $a4
    ld e, $95                                     ; $6c43: $1e $95
    ld d, b                                       ; $6c45: $50
    xor b                                         ; $6c46: $a8
    ld [hl], b                                    ; $6c47: $70
    adc $7f                                       ; $6c48: $ce $7f
    ld e, e                                       ; $6c4a: $5b
    reti                                          ; $6c4b: $d9


    ld d, [hl]                                    ; $6c4c: $56
    ld b, l                                       ; $6c4d: $45
    ld d, d                                       ; $6c4e: $52
    rst $30                                       ; $6c4f: $f7
    ld d, [hl]                                    ; $6c50: $56
    add l                                         ; $6c51: $85
    inc l                                         ; $6c52: $2c
    inc d                                         ; $6c53: $14
    xor e                                         ; $6c54: $ab
    add hl, sp                                    ; $6c55: $39
    add $19                                       ; $6c56: $c6 $19
    call c, Call_000_1e00                         ; $6c58: $dc $00 $1e
    ld [hl], e                                    ; $6c5b: $73
    ld h, l                                       ; $6c5c: $65
    or [hl]                                       ; $6c5d: $b6
    dec a                                         ; $6c5e: $3d
    cp c                                          ; $6c5f: $b9
    ld [hl], h                                    ; $6c60: $74
    ld a, $85                                     ; $6c61: $3e $85
    rst $18                                       ; $6c63: $df
    ld [hl], $29                                  ; $6c64: $36 $29
    sbc [hl]                                      ; $6c66: $9e
    ld h, a                                       ; $6c67: $67
    inc l                                         ; $6c68: $2c
    add e                                         ; $6c69: $83
    ld [bc], a                                    ; $6c6a: $02
    ret nc                                        ; $6c6b: $d0

    ld [hl], l                                    ; $6c6c: $75
    ld bc, $300e                                  ; $6c6d: $01 $0e $30
    xor c                                         ; $6c70: $a9
    ld l, b                                       ; $6c71: $68
    ld e, e                                       ; $6c72: $5b
    push hl                                       ; $6c73: $e5
    rst $38                                       ; $6c74: $ff
    dec h                                         ; $6c75: $25
    or $23                                        ; $6c76: $f6 $23
    ld a, l                                       ; $6c78: $7d
    or e                                          ; $6c79: $b3
    cp a                                          ; $6c7a: $bf
    db $e4                                        ; $6c7b: $e4
    halt                                          ; $6c7c: $76
    cp $fd                                        ; $6c7d: $fe $fd
    ld e, a                                       ; $6c7f: $5f
    ld a, [hl-]                                   ; $6c80: $3a
    sbc a                                         ; $6c81: $9f
    jp nz, $b2df                                  ; $6c82: $c2 $df $b2

    db $ed                                        ; $6c85: $ed
    adc [hl]                                      ; $6c86: $8e
    ld d, d                                       ; $6c87: $52
    sub [hl]                                      ; $6c88: $96
    ld b, d                                       ; $6c89: $42
    jp nz, $2e8c                                  ; $6c8a: $c2 $8c $2e

    nop                                           ; $6c8d: $00
    sbc [hl]                                      ; $6c8e: $9e
    ld h, d                                       ; $6c8f: $62
    ld [hl], c                                    ; $6c90: $71
    adc e                                         ; $6c91: $8b
    di                                            ; $6c92: $f3
    or a                                          ; $6c93: $b7
    ld [hl], h                                    ; $6c94: $74
    ld a, $85                                     ; $6c95: $3e $85
    cp a                                          ; $6c97: $bf
    ld d, [hl]                                    ; $6c98: $56
    db $fd                                        ; $6c99: $fd
    di                                            ; $6c9a: $f3
    rst $10                                       ; $6c9b: $d7
    or [hl]                                       ; $6c9c: $b6
    cp b                                          ; $6c9d: $b8
    ld bc, $1b3c                                  ; $6c9e: $01 $3c $1b
    add l                                         ; $6ca1: $85
    rst $08                                       ; $6ca2: $cf
    dec l                                         ; $6ca3: $2d
    or a                                          ; $6ca4: $b7
    di                                            ; $6ca5: $f3
    rst $28                                       ; $6ca6: $ef
    rst $38                                       ; $6ca7: $ff
    ld d, d                                       ; $6ca8: $52
    push bc                                       ; $6ca9: $c5
    dec b                                         ; $6caa: $05
    nop                                           ; $6cab: $00
    inc a                                         ; $6cac: $3c
    rst $08                                       ; $6cad: $cf
    ld e, b                                       ; $6cae: $58
    halt                                          ; $6caf: $76
    ld c, [hl]                                    ; $6cb0: $4e
    adc b                                         ; $6cb1: $88
    rst $20                                       ; $6cb2: $e7
    inc de                                        ; $6cb3: $13
    ld h, d                                       ; $6cb4: $62
    dec bc                                        ; $6cb5: $0b
    reti                                          ; $6cb6: $d9


    db $d3                                        ; $6cb7: $d3
    ld a, a                                       ; $6cb8: $7f
    ld bc, $c70e                                  ; $6cb9: $01 $0e $c7
    ld c, b                                       ; $6cbc: $48
    rst $00                                       ; $6cbd: $c7
    sbc [hl]                                      ; $6cbe: $9e
    pop bc                                        ; $6cbf: $c1
    dec l                                         ; $6cc0: $2d
    adc $50                                       ; $6cc1: $ce $50
    ld d, c                                       ; $6cc3: $51
    sub $4d                                       ; $6cc4: $d6 $4d
    and h                                         ; $6cc6: $a4
    ld l, l                                       ; $6cc7: $6d
    dec bc                                        ; $6cc8: $0b
    push hl                                       ; $6cc9: $e5
    or c                                          ; $6cca: $b1
    sub $d1                                       ; $6ccb: $d6 $d1
    reti                                          ; $6ccd: $d9


    ld l, c                                       ; $6cce: $69
    cp d                                          ; $6ccf: $ba
    nop                                           ; $6cd0: $00
    cp h                                          ; $6cd1: $bc
    ld h, e                                       ; $6cd2: $63
    inc e                                         ; $6cd3: $1c
    or h                                          ; $6cd4: $b4
    cp $57                                        ; $6cd5: $fe $57
    ld c, [hl]                                    ; $6cd7: $4e
    add hl, hl                                    ; $6cd8: $29
    sub l                                         ; $6cd9: $95
    ld a, h                                       ; $6cda: $7c
    xor [hl]                                      ; $6cdb: $ae
    ld [hl], e                                    ; $6cdc: $73
    cp b                                          ; $6cdd: $b8
    ld c, d                                       ; $6cde: $4a
    ld b, h                                       ; $6cdf: $44
    dec d                                         ; $6ce0: $15
    and a                                         ; $6ce1: $a7
    jp hl                                         ; $6ce2: $e9


    ld [bc], a                                    ; $6ce3: $02
    sbc [hl]                                      ; $6ce4: $9e
    db $e3                                        ; $6ce5: $e3
    ld a, [hl+]                                   ; $6ce6: $2a
    ld [hl], $a9                                  ; $6ce7: $36 $a9
    cp $37                                        ; $6ce9: $fe $37
    call $feb7                                    ; $6ceb: $cd $b7 $fe
    add d                                         ; $6cee: $82
    cp a                                          ; $6cef: $bf
    ret c                                         ; $6cf0: $d8

    or b                                          ; $6cf1: $b0
    add hl, de                                    ; $6cf2: $19
    cpl                                           ; $6cf3: $2f
    ld a, b                                       ; $6cf4: $78
    call c, $1fbe                                 ; $6cf5: $dc $be $1f
    ld l, h                                       ; $6cf8: $6c
    cpl                                           ; $6cf9: $2f
    ld b, c                                       ; $6cfa: $41
    ld [hl], a                                    ; $6cfb: $77
    sub e                                         ; $6cfc: $93
    xor $2d                                       ; $6cfd: $ee $2d
    jp nc, $8a56                                  ; $6cff: $d2 $56 $8a

    ld e, a                                       ; $6d02: $5f
    sbc d                                         ; $6d03: $9a
    ld l, a                                       ; $6d04: $6f
    db $fd                                        ; $6d05: $fd
    dec b                                         ; $6d06: $05
    ld a, a                                       ; $6d07: $7f
    or c                                          ; $6d08: $b1
    ld h, c                                       ; $6d09: $61
    inc sp                                        ; $6d0a: $33
    cp $2f                                        ; $6d0b: $fe $2f
    nop                                           ; $6d0d: $00
    db $fc                                        ; $6d0e: $fc
    ld h, h                                       ; $6d0f: $64
    ld b, [hl]                                    ; $6d10: $46
    jp nz, Jump_05b_44d2                          ; $6d11: $c2 $d2 $44

    sub $bd                                       ; $6d14: $d6 $bd
    rla                                           ; $6d16: $17
    nop                                           ; $6d17: $00
    sbc [hl]                                      ; $6d18: $9e
    rlca                                          ; $6d19: $07
    dec hl                                        ; $6d1a: $2b
    inc l                                         ; $6d1b: $2c
    ld h, a                                       ; $6d1c: $67
    inc l                                         ; $6d1d: $2c
    jr nz, jr_05b_6d94                            ; $6d1e: $20 $74

    sbc d                                         ; $6d20: $9a
    inc b                                         ; $6d21: $04
    cp a                                          ; $6d22: $bf
    inc e                                         ; $6d23: $1c
    ld b, [hl]                                    ; $6d24: $46
    adc a                                         ; $6d25: $8f
    jp c, $a677                                   ; $6d26: $da $77 $a6

    add hl, bc                                    ; $6d29: $09
    or d                                          ; $6d2a: $b2
    and a                                         ; $6d2b: $a7
    jp hl                                         ; $6d2c: $e9


    ld [bc], a                                    ; $6d2d: $02
    sbc [hl]                                      ; $6d2e: $9e
    rst $28                                       ; $6d2f: $ef
    ld b, d                                       ; $6d30: $42
    and d                                         ; $6d31: $a2
    ld h, [hl]                                    ; $6d32: $66
    halt                                          ; $6d33: $76
    rst $18                                       ; $6d34: $df
    ld d, c                                       ; $6d35: $51
    ld d, c                                       ; $6d36: $51
    ld a, [c]                                     ; $6d37: $f2
    and e                                         ; $6d38: $a3
    ld a, [hl+]                                   ; $6d39: $2a
    dec hl                                        ; $6d3a: $2b
    ld c, l                                       ; $6d3b: $4d
    inc a                                         ; $6d3c: $3c
    dec sp                                        ; $6d3d: $3b
    daa                                           ; $6d3e: $27
    ld e, [hl]                                    ; $6d3f: $5e
    ld [hl], d                                    ; $6d40: $72
    ld a, e                                       ; $6d41: $7b
    rst $20                                       ; $6d42: $e7
    db $eb                                        ; $6d43: $eb
    xor e                                         ; $6d44: $ab
    db $e3                                        ; $6d45: $e3
    db $ec                                        ; $6d46: $ec
    ld e, e                                       ; $6d47: $5b
    cp a                                          ; $6d48: $bf
    jp nc, $d3d8                                  ; $6d49: $d2 $d8 $d3

    ld [hl], h                                    ; $6d4c: $74
    ld bc, $dfbc                                  ; $6d4d: $01 $bc $df
    add [hl]                                      ; $6d50: $86
    ld c, c                                       ; $6d51: $49
    xor l                                         ; $6d52: $ad
    and c                                         ; $6d53: $a1
    ret c                                         ; $6d54: $d8

    db $db                                        ; $6d55: $db
    cp [hl]                                       ; $6d56: $be
    ld l, h                                       ; $6d57: $6c
    call z, Call_05b_6ff3                         ; $6d58: $cc $f3 $6f
    ld a, a                                       ; $6d5b: $7f
    rst $18                                       ; $6d5c: $df
    ccf                                           ; $6d5d: $3f
    ld [hl], c                                    ; $6d5e: $71
    ei                                            ; $6d5f: $fb
    cpl                                           ; $6d60: $2f
    add hl, sp                                    ; $6d61: $39
    ld [$fe61], sp                                ; $6d62: $08 $61 $fe
    dec l                                         ; $6d65: $2d
    sbc [hl]                                      ; $6d66: $9e
    ld h, b                                       ; $6d67: $60
    rst $30                                       ; $6d68: $f7
    ld h, d                                       ; $6d69: $62
    push bc                                       ; $6d6a: $c5
    dec h                                         ; $6d6b: $25
    adc a                                         ; $6d6c: $8f
    ld e, [hl]                                    ; $6d6d: $5e
    or [hl]                                       ; $6d6e: $b6
    ld e, e                                       ; $6d6f: $5b
    inc h                                         ; $6d70: $24
    inc l                                         ; $6d71: $2c
    cp c                                          ; $6d72: $b9
    scf                                           ; $6d73: $37
    ld l, [hl]                                    ; $6d74: $6e
    rst $28                                       ; $6d75: $ef
    ld c, a                                       ; $6d76: $4f
    ld b, b                                       ; $6d77: $40
    sub b                                         ; $6d78: $90
    ld b, l                                       ; $6d79: $45
    add hl, hl                                    ; $6d7a: $29
    adc a                                         ; $6d7b: $8f
    sub e                                         ; $6d7c: $93
    ld [c], a                                     ; $6d7d: $e2
    ld b, h                                       ; $6d7e: $44
    sub $bd                                       ; $6d7f: $d6 $bd
    call c, $9c00                                 ; $6d81: $dc $00 $9c
    ld hl, $352c                                  ; $6d84: $21 $2c $35
    jp c, $fd2a                                   ; $6d87: $da $2a $fd

    inc sp                                        ; $6d8a: $33
    cp d                                          ; $6d8b: $ba
    add a                                         ; $6d8c: $87
    ld h, $b2                                     ; $6d8d: $26 $b2
    xor $bd                                       ; $6d8f: $ee $bd
    nop                                           ; $6d91: $00
    sbc [hl]                                      ; $6d92: $9e
    ld h, d                                       ; $6d93: $62

jr_05b_6d94:
    dec h                                         ; $6d94: $25
    dec [hl]                                      ; $6d95: $35
    rst $00                                       ; $6d96: $c7
    xor b                                         ; $6d97: $a8
    adc [hl]                                      ; $6d98: $8e
    inc de                                        ; $6d99: $13
    ld l, d                                       ; $6d9a: $6a
    ld l, d                                       ; $6d9b: $6a
    ld [hl], d                                    ; $6d9c: $72
    ld b, e                                       ; $6d9d: $43
    ld c, [hl]                                    ; $6d9e: $4e
    ldh a, [$67]                                  ; $6d9f: $f0 $67
    daa                                           ; $6da1: $27
    di                                            ; $6da2: $f3
    ccf                                           ; $6da3: $3f
    sbc l                                         ; $6da4: $9d
    ld e, a                                       ; $6da5: $5f
    ld h, d                                       ; $6da6: $62
    sub c                                         ; $6da7: $91
    ld [hl], $b2                                  ; $6da8: $36 $b2
    cp l                                          ; $6daa: $bd
    db $e4                                        ; $6dab: $e4
    ld h, b                                       ; $6dac: $60
    inc de                                        ; $6dad: $13
    ret nz                                        ; $6dae: $c0

    di                                            ; $6daf: $f3

jr_05b_6db0:
    ld h, $f7                                     ; $6db0: $26 $f7
    rst $08                                       ; $6db2: $cf
    rst $18                                       ; $6db3: $df
    ld [hl], c                                    ; $6db4: $71
    or [hl]                                       ; $6db5: $b6
    sub d                                         ; $6db6: $92
    jp z, $ed77                                   ; $6db7: $ca $77 $ed

    xor l                                         ; $6dba: $ad
    and e                                         ; $6dbb: $a3
    inc [hl]                                      ; $6dbc: $34
    scf                                           ; $6dbd: $37
    adc a                                         ; $6dbe: $8f
    ld d, d                                       ; $6dbf: $52
    rst $00                                       ; $6dc0: $c7
    ld e, h                                       ; $6dc1: $5c
    sbc b                                         ; $6dc2: $98
    ld c, d                                       ; $6dc3: $4a
    sbc c                                         ; $6dc4: $99
    dec [hl]                                      ; $6dc5: $35
    push hl                                       ; $6dc6: $e5
    ld [hl], h                                    ; $6dc7: $74
    add hl, sp                                    ; $6dc8: $39
    ld hl, $90ce                                  ; $6dc9: $21 $ce $90
    db $ed                                        ; $6dcc: $ed
    sbc d                                         ; $6dcd: $9a
    or b                                          ; $6dce: $b0
    db $e4                                        ; $6dcf: $e4
    ld h, b                                       ; $6dd0: $60
    inc de                                        ; $6dd1: $13
    ret nz                                        ; $6dd2: $c0

    di                                            ; $6dd3: $f3
    ld h, $f7                                     ; $6dd4: $26 $f7
    rst $08                                       ; $6dd6: $cf
    rst $18                                       ; $6dd7: $df
    ld [hl], c                                    ; $6dd8: $71
    cp b                                          ; $6dd9: $b8
    ld bc, $bd1e                                  ; $6dda: $01 $1e $bd
    ld a, [c]                                     ; $6ddd: $f2
    ld e, l                                       ; $6dde: $5d
    ld a, e                                       ; $6ddf: $7b
    db $eb                                        ; $6de0: $eb
    jr z, jr_05b_6db0                             ; $6de1: $28 $cd

    call $baf7                                    ; $6de3: $cd $f7 $ba
    ld l, $45                                     ; $6de6: $2e $45
    ld a, [hl-]                                   ; $6de8: $3a
    ld c, c                                       ; $6de9: $49
    ld d, $9a                                     ; $6dea: $16 $9a
    cp b                                          ; $6dec: $b8
    db $ec                                        ; $6ded: $ec
    add l                                         ; $6dee: $85
    and l                                         ; $6def: $a5
    di                                            ; $6df0: $f3
    db $db                                        ; $6df1: $db
    pop de                                        ; $6df2: $d1
    dec a                                         ; $6df3: $3d
    sub h                                         ; $6df4: $94

jr_05b_6df5:
    ccf                                           ; $6df5: $3f
    db $eb                                        ; $6df6: $eb
    push bc                                       ; $6df7: $c5
    cp l                                          ; $6df8: $bd
    rst $38                                       ; $6df9: $ff
    ld c, e                                       ; $6dfa: $4b

Call_05b_6dfb:
    or [hl]                                       ; $6dfb: $b6
    ld c, l                                       ; $6dfc: $4d
    rla                                           ; $6dfd: $17
    nop                                           ; $6dfe: $00
    ld a, h                                       ; $6dff: $7c
    or c                                          ; $6e00: $b1
    db $10                                        ; $6e01: $10
    ld a, [hl+]                                   ; $6e02: $2a

jr_05b_6e03:
    dec [hl]                                      ; $6e03: $35
    ld h, l                                       ; $6e04: $65
    sbc l                                         ; $6e05: $9d
    ld h, l                                       ; $6e06: $65
    or d                                          ; $6e07: $b2
    jr c, jr_05b_6e03                             ; $6e08: $38 $f9

    halt                                          ; $6e0a: $76
    inc de                                        ; $6e0b: $13
    jp hl                                         ; $6e0c: $e9


    ld l, l                                       ; $6e0d: $6d
    rst $38                                       ; $6e0e: $ff
    xor a                                         ; $6e0f: $af
    db $eb                                        ; $6e10: $eb
    jp nc, Jump_000_251c                          ; $6e11: $d2 $1c $25

    inc a                                         ; $6e14: $3c
    ld [hl], c                                    ; $6e15: $71
    rst $18                                       ; $6e16: $df
    and c                                         ; $6e17: $a1
    jr z, jr_05b_6df5                             ; $6e18: $28 $db

    jp nc, Jump_05b_5fe7                          ; $6e1a: $d2 $e7 $5f

    dec d                                         ; $6e1d: $15
    pop de                                        ; $6e1e: $d1
    ld a, [hl-]                                   ; $6e1f: $3a
    sbc a                                         ; $6e20: $9f
    jp nz, Jump_000_17df                          ; $6e21: $c2 $df $17

    nop                                           ; $6e24: $00
    ld l, [hl]                                    ; $6e25: $6e
    rst $20                                       ; $6e26: $e7
    rst $38                                       ; $6e27: $ff
    ld [$b281], a                                 ; $6e28: $ea $81 $b2
    jr @-$12                                      ; $6e2b: $18 $ec

    ccf                                           ; $6e2d: $3f
    rst $38                                       ; $6e2e: $ff
    ld l, c                                       ; $6e2f: $69
    ld a, e                                       ; $6e30: $7b
    ld bc, $a11e                                  ; $6e31: $01 $1e $a1
    xor c                                         ; $6e34: $a9
    rlca                                          ; $6e35: $07
    ld a, [bc]                                    ; $6e36: $0a
    ld c, e                                       ; $6e37: $4b
    adc l                                         ; $6e38: $8d
    or [hl]                                       ; $6e39: $b6
    rst $38                                       ; $6e3a: $ff
    dec h                                         ; $6e3b: $25
    adc e                                         ; $6e3c: $8b
    and h                                         ; $6e3d: $a4
    xor $ad                                       ; $6e3e: $ee $ad
    ld c, c                                       ; $6e40: $49
    ld a, [hl-]                                   ; $6e41: $3a
    ld h, e                                       ; $6e42: $63
    sbc h                                         ; $6e43: $9c
    jr z, jr_05b_6e9f                             ; $6e44: $28 $59

    sub h                                         ; $6e46: $94
    ldh a, [rLY]                                  ; $6e47: $f0 $44
    cp $95                                        ; $6e49: $fe $95
    ld d, h                                       ; $6e4b: $54
    db $ed                                        ; $6e4c: $ed
    sub [hl]                                      ; $6e4d: $96
    inc l                                         ; $6e4e: $2c
    add h                                         ; $6e4f: $84
    and l                                         ; $6e50: $a5
    ld b, [hl]                                    ; $6e51: $46
    ld c, b                                       ; $6e52: $48
    sbc h                                         ; $6e53: $9c
    di                                            ; $6e54: $f3
    ld c, d                                       ; $6e55: $4a
    sbc a                                         ; $6e56: $9f
    push hl                                       ; $6e57: $e5
    ld e, e                                       ; $6e58: $5b
    cp a                                          ; $6e59: $bf
    dec d                                         ; $6e5a: $15
    dec h                                         ; $6e5b: $25
    ld hl, sp-$0b                                 ; $6e5c: $f8 $f5
    inc l                                         ; $6e5e: $2c
    rst $00                                       ; $6e5f: $c7
    ld sp, hl                                     ; $6e60: $f9
    halt                                          ; $6e61: $76
    ld bc, $3b7c                                  ; $6e62: $01 $7c $3b
    ld c, c                                       ; $6e65: $49
    ld d, $c2                                     ; $6e66: $16 $c2
    add d                                         ; $6e68: $82
    ld [bc], a                                    ; $6e69: $02
    sbc h                                         ; $6e6a: $9c
    ld hl, $152c                                  ; $6e6b: $21 $2c $15
    call $a6ec                                    ; $6e6e: $cd $ec $a6
    ld l, [hl]                                    ; $6e71: $6e
    xor [hl]                                      ; $6e72: $ae
    dec sp                                        ; $6e73: $3b
    sra h                                         ; $6e74: $cb $2c
    rst $18                                       ; $6e76: $df
    db $ed                                        ; $6e77: $ed
    cp $4b                                        ; $6e78: $fe $4b
    ld e, $a6                                     ; $6e7a: $1e $a6
    ld e, a                                       ; $6e7c: $5f
    jp z, $dd9f                                   ; $6e7d: $ca $9f $dd

    ld l, a                                       ; $6e80: $6f
    cp l                                          ; $6e81: $bd
    sub a                                         ; $6e82: $97
    ld a, b                                       ; $6e83: $78
    ld [hl], c                                    ; $6e84: $71
    add $9e                                       ; $6e85: $c6 $9e
    ld d, b                                       ; $6e87: $50
    cp $3b                                        ; $6e88: $fe $3b
    rst $20                                       ; $6e8a: $e7
    ld [hl], e                                    ; $6e8b: $73
    inc bc                                        ; $6e8c: $03
    inc e                                         ; $6e8d: $1c
    dec h                                         ; $6e8e: $25
    dec bc                                        ; $6e8f: $0b
    ld l, [hl]                                    ; $6e90: $6e
    pop af                                        ; $6e91: $f1
    ld a, [hl]                                    ; $6e92: $7e
    dec de                                        ; $6e93: $1b
    ld a, [bc]                                    ; $6e94: $0a
    cp $33                                        ; $6e95: $fe $33
    ld de, $5b7e                                  ; $6e97: $11 $7e $5b
    ld l, [hl]                                    ; $6e9a: $6e
    nop                                           ; $6e9b: $00
    inc e                                         ; $6e9c: $1c
    daa                                           ; $6e9d: $27
    ld c, d                                       ; $6e9e: $4a

jr_05b_6e9f:
    ld b, l                                       ; $6e9f: $45
    inc sp                                        ; $6ea0: $33
    cp e                                          ; $6ea1: $bb
    xor c                                         ; $6ea2: $a9
    cp c                                          ; $6ea3: $b9
    adc d                                         ; $6ea4: $8a
    ld e, e                                       ; $6ea5: $5b
    inc a                                         ; $6ea6: $3c
    or c                                          ; $6ea7: $b1
    ld c, c                                       ; $6ea8: $49
    dec [hl]                                      ; $6ea9: $35
    sbc c                                         ; $6eaa: $99
    sub c                                         ; $6eab: $91
    or b                                          ; $6eac: $b0
    sub h                                         ; $6ead: $94
    ld l, a                                       ; $6eae: $6f
    ld e, b                                       ; $6eaf: $58
    rst $28                                       ; $6eb0: $ef
    dec b                                         ; $6eb1: $05
    nop                                           ; $6eb2: $00
    sbc h                                         ; $6eb3: $9c
    ld e, e                                       ; $6eb4: $5b
    and e                                         ; $6eb5: $a3
    or h                                          ; $6eb6: $b4
    ld b, [hl]                                    ; $6eb7: $46
    or [hl]                                       ; $6eb8: $b6
    add d                                         ; $6eb9: $82
    xor c                                         ; $6eba: $a9
    ld a, e                                       ; $6ebb: $7b
    push de                                       ; $6ebc: $d5
    ld [hl], h                                    ; $6ebd: $74
    ld d, e                                       ; $6ebe: $53
    add hl, hl                                    ; $6ebf: $29
    db $fd                                        ; $6ec0: $fd
    db $d3                                        ; $6ec1: $d3
    ld h, e                                       ; $6ec2: $63
    call nc, $aa2a                                ; $6ec3: $d4 $2a $aa
    and d                                         ; $6ec6: $a2
    inc [hl]                                      ; $6ec7: $34
    rlca                                          ; $6ec8: $07
    sbc [hl]                                      ; $6ec9: $9e
    cp b                                          ; $6eca: $b8
    rst $38                                       ; $6ecb: $ff
    set 7, [hl]                                   ; $6ecc: $cb $fe
    sub d                                         ; $6ece: $92
    add e                                         ; $6ecf: $83
    xor h                                         ; $6ed0: $ac
    add l                                         ; $6ed1: $85
    and l                                         ; $6ed2: $a5
    rst $18                                       ; $6ed3: $df
    ld sp, hl                                     ; $6ed4: $f9
    ld a, [c]                                     ; $6ed5: $f2
    rst $38                                       ; $6ed6: $ff
    db $fc                                        ; $6ed7: $fc
    add sp, -$02                                  ; $6ed8: $e8 $fe
    sub a                                         ; $6eda: $97
    add l                                         ; $6edb: $85
    ld l, h                                       ; $6edc: $6c
    ld l, e                                       ; $6edd: $6b
    sbc h                                         ; $6ede: $9c
    inc de                                        ; $6edf: $13
    sub a                                         ; $6ee0: $97
    ld a, b                                       ; $6ee1: $78
    add hl, hl                                    ; $6ee2: $29
    ld l, e                                       ; $6ee3: $6b
    sub d                                         ; $6ee4: $92
    ld l, l                                       ; $6ee5: $6d
    sub e                                         ; $6ee6: $93
    jp nc, $df2c                                  ; $6ee7: $d2 $2c $df

    cp d                                          ; $6eea: $ba
    call nz, $33b1                                ; $6eeb: $c4 $b1 $33
    or [hl]                                       ; $6eee: $b6
    sub h                                         ; $6eef: $94
    ld h, [hl]                                    ; $6ef0: $66
    add hl, sp                                    ; $6ef1: $39
    sub c                                         ; $6ef2: $91
    ld h, b                                       ; $6ef3: $60
    inc e                                         ; $6ef4: $1c
    ld h, a                                       ; $6ef5: $67
    cp h                                          ; $6ef6: $bc
    ld l, h                                       ; $6ef7: $6c
    ld l, e                                       ; $6ef8: $6b
    sbc h                                         ; $6ef9: $9c
    inc de                                        ; $6efa: $13
    rla                                           ; $6efb: $17
    nop                                           ; $6efc: $00
    ld l, [hl]                                    ; $6efd: $6e
    ld d, a                                       ; $6efe: $57
    rst $38                                       ; $6eff: $ff
    jp c, $7a96                                   ; $6f00: $da $96 $7a

    ldh [$39], a                                  ; $6f03: $e0 $39
    cp a                                          ; $6f05: $bf
    ld d, $d6                                     ; $6f06: $16 $d6
    xor a                                         ; $6f08: $af
    ld a, e                                       ; $6f09: $7b
    sbc e                                         ; $6f0a: $9b
    sub h                                         ; $6f0b: $94
    rst $38                                       ; $6f0c: $ff
    ld d, $37                                     ; $6f0d: $16 $37
    nop                                           ; $6f0f: $00
    ld a, h                                       ; $6f10: $7c
    and e                                         ; $6f11: $a3
    ei                                            ; $6f12: $fb
    xor a                                         ; $6f13: $af
    db $eb                                        ; $6f14: $eb
    jp nc, $f31c                                  ; $6f15: $d2 $1c $f3

    ld h, l                                       ; $6f18: $65
    ld d, c                                       ; $6f19: $51
    cp d                                          ; $6f1a: $ba
    or a                                          ; $6f1b: $b7
    add $39                                       ; $6f1c: $c6 $39
    ld hl, $19dc                                  ; $6f1e: $21 $dc $19
    ld e, e                                       ; $6f21: $5b
    ld a, [$5c6a]                                 ; $6f22: $fa $6a $5c
    jr z, jr_05b_6f27                             ; $6f25: $28 $00

jr_05b_6f27:
    db $fc                                        ; $6f27: $fc
    cp a                                          ; $6f28: $bf
    sub b                                         ; $6f29: $90
    cpl                                           ; $6f2a: $2f
    ld c, l                                       ; $6f2b: $4d
    sbc h                                         ; $6f2c: $9c
    or c                                          ; $6f2d: $b1
    rst $20                                       ; $6f2e: $e7
    cp h                                          ; $6f2f: $bc
    ld a, [c]                                     ; $6f30: $f2
    db $dd                                        ; $6f31: $dd
    xor $ff                                       ; $6f32: $ee $ff
    jp c, $000b                                   ; $6f34: $da $0b $00

    ld c, $b2                                     ; $6f37: $0e $b2
    ld d, [hl]                                    ; $6f39: $56
    adc [hl]                                      ; $6f3a: $8e
    ld e, e                                       ; $6f3b: $5b
    cp d                                          ; $6f3c: $ba
    and e                                         ; $6f3d: $a3
    adc d                                         ; $6f3e: $8a
    ld h, h                                       ; $6f3f: $64
    ld a, a                                       ; $6f40: $7f
    ld a, [hl]                                    ; $6f41: $7e
    xor l                                         ; $6f42: $ad
    and e                                         ; $6f43: $a3
    inc [hl]                                      ; $6f44: $34
    sub a                                         ; $6f45: $97
    pop bc                                        ; $6f46: $c1
    ld [$0947], sp                                ; $6f47: $08 $47 $09
    db $ed                                        ; $6f4a: $ed
    xor l                                         ; $6f4b: $ad
    pop af                                        ; $6f4c: $f1
    sbc h                                         ; $6f4d: $9c
    ld c, b                                       ; $6f4e: $48

Jump_05b_6f4f:
    ld a, [hl+]                                   ; $6f4f: $2a
    halt                                          ; $6f50: $76
    sub d                                         ; $6f51: $92
    and $98                                       ; $6f52: $e6 $98
    rst $38                                       ; $6f54: $ff
    and l                                         ; $6f55: $a5
    and d                                         ; $6f56: $a2
    ret nc                                        ; $6f57: $d0

    cp l                                          ; $6f58: $bd
    dec [hl]                                      ; $6f59: $35
    sbc [hl]                                      ; $6f5a: $9e
    dec de                                        ; $6f5b: $1b
    nop                                           ; $6f5c: $00
    cp h                                          ; $6f5d: $bc
    ld h, e                                       ; $6f5e: $63
    cp [hl]                                       ; $6f5f: $be
    sbc d                                         ; $6f60: $9a
    add sp, $1c                                   ; $6f61: $e8 $1c
    ld [de], a                                    ; $6f63: $12
    ld d, $14                                     ; $6f64: $16 $14
    nop                                           ; $6f66: $00
    cp h                                          ; $6f67: $bc
    cp e                                          ; $6f68: $bb
    ld d, l                                       ; $6f69: $55
    dec hl                                        ; $6f6a: $2b
    sbc b                                         ; $6f6b: $98
    or [hl]                                       ; $6f6c: $b6
    cp c                                          ; $6f6d: $b9
    ld bc, $cf3c                                  ; $6f6e: $01 $3c $cf
    ld e, b                                       ; $6f71: $58
    ld h, $87                                     ; $6f72: $26 $87
    ret c                                         ; $6f74: $d8

    dec e                                         ; $6f75: $1d
    adc h                                         ; $6f76: $8c
    ld e, e                                       ; $6f77: $5b
    sbc h                                         ; $6f78: $9c
    ld a, a                                       ; $6f79: $7f
    ld a, [hl]                                    ; $6f7a: $7e
    xor l                                         ; $6f7b: $ad
    and e                                         ; $6f7c: $a3
    inc [hl]                                      ; $6f7d: $34
    sub a                                         ; $6f7e: $97
    pop bc                                        ; $6f7f: $c1
    ld [$0947], sp                                ; $6f80: $08 $47 $09
    db $ed                                        ; $6f83: $ed
    xor l                                         ; $6f84: $ad
    pop af                                        ; $6f85: $f1
    sbc h                                         ; $6f86: $9c
    ld c, a                                       ; $6f87: $4f
    ld a, [bc]                                    ; $6f88: $0a
    ld a, [hl]                                    ; $6f89: $7e
    ld h, l                                       ; $6f8a: $65
    ld e, h                                       ; $6f8b: $5c
    cp a                                          ; $6f8c: $bf
    di                                            ; $6f8d: $f3
    cp a                                          ; $6f8e: $bf
    sub h                                         ; $6f8f: $94
    ld l, a                                       ; $6f90: $6f
    inc e                                         ; $6f91: $1c
    ld [c], a                                     ; $6f92: $e2
    ld d, $67                                     ; $6f93: $16 $67
    xor b                                         ; $6f95: $a8
    scf                                           ; $6f96: $37
    sbc d                                         ; $6f97: $9a
    ld c, b                                       ; $6f98: $48
    adc $3b                                       ; $6f99: $ce $3b
    and a                                         ; $6f9b: $a7
    ld e, $fe                                     ; $6f9c: $1e $fe
    ei                                            ; $6f9e: $fb
    ld l, e                                       ; $6f9f: $6b
    dec e                                         ; $6fa0: $1d

jr_05b_6fa1:
    ld d, c                                       ; $6fa1: $51
    cp d                                          ; $6fa2: $ba
    and e                                         ; $6fa3: $a3
    ldh a, [$2f]                                  ; $6fa4: $f0 $2f
    pop af                                        ; $6fa6: $f1
    rst $38                                       ; $6fa7: $ff
    db $fc                                        ; $6fa8: $fc
    or l                                          ; $6fa9: $b5
    dec l                                         ; $6faa: $2d
    push af                                       ; $6fab: $f5
    ldh a, [rIE]                                  ; $6fac: $f0 $ff
    ld l, l                                       ; $6fae: $6d
    ld h, l                                       ; $6faf: $65
    cp e                                          ; $6fb0: $bb
    ld c, l                                       ; $6fb1: $4d
    rla                                           ; $6fb2: $17
    nop                                           ; $6fb3: $00
    db $fc                                        ; $6fb4: $fc
    ld [hl], h                                    ; $6fb5: $74
    ld c, $69                                     ; $6fb6: $0e $69
    ld b, $eb                                     ; $6fb8: $06 $eb
    ld a, a                                       ; $6fba: $7f
    pop hl                                        ; $6fbb: $e1
    adc c                                         ; $6fbc: $89
    ld d, d                                       ; $6fbd: $52
    cp $0c                                        ; $6fbe: $fe $0c
    di                                            ; $6fc0: $f3
    ld e, a                                       ; $6fc1: $5f
    adc e                                         ; $6fc2: $8b
    db $db                                        ; $6fc3: $db
    rst $18                                       ; $6fc4: $df
    dec bc                                        ; $6fc5: $0b
    nop                                           ; $6fc6: $00
    ld a, h                                       ; $6fc7: $7c
    db $db                                        ; $6fc8: $db
    ld h, h                                       ; $6fc9: $64
    ld l, d                                       ; $6fca: $6a
    and d                                         ; $6fcb: $a2
    ld [hl], e                                    ; $6fcc: $73
    ld c, b                                       ; $6fcd: $48
    db $fd                                        ; $6fce: $fd
    cp $a7                                        ; $6fcf: $fe $a7
    dec a                                         ; $6fd1: $3d
    ld b, $14                                     ; $6fd2: $06 $14
    nop                                           ; $6fd4: $00
    sbc h                                         ; $6fd5: $9c
    cp a                                          ; $6fd6: $bf
    push hl                                       ; $6fd7: $e5
    cp a                                          ; $6fd8: $bf
    ld [hl], c                                    ; $6fd9: $71
    inc bc                                        ; $6fda: $03
    cp h                                          ; $6fdb: $bc
    ld l, a                                       ; $6fdc: $6f
    ld c, c                                       ; $6fdd: $49
    call $a4b7                                    ; $6fde: $cd $b7 $a4
    ld a, b                                       ; $6fe1: $78
    sbc [hl]                                      ; $6fe2: $9e
    or c                                          ; $6fe3: $b1
    ld c, h                                       ; $6fe4: $4c
    ld c, $b1                                     ; $6fe5: $0e $b1
    dec sp                                        ; $6fe7: $3b
    jr jr_05b_6fa1                                ; $6fe8: $18 $b7

    jr c, jr_05b_706b                             ; $6fea: $38 $7f

    ld c, e                                       ; $6fec: $4b
    add hl, hl                                    ; $6fed: $29
    ld d, l                                       ; $6fee: $55
    or h                                          ; $6fef: $b4
    and $6e                                       ; $6ff0: $e6 $6e
    push de                                       ; $6ff2: $d5

Call_05b_6ff3:
    ld h, $75                                     ; $6ff3: $26 $75
    ld a, a                                       ; $6ff5: $7f
    rst $38                                       ; $6ff6: $ff
    cp l                                          ; $6ff7: $bd
    ld [hl], d                                    ; $6ff8: $72
    ret z                                         ; $6ff9: $c8

    or $9c                                        ; $6ffa: $f6 $9c
    cp l                                          ; $6ffc: $bd
    nop                                           ; $6ffd: $00
    sbc [hl]                                      ; $6ffe: $9e
    rst $38                                       ; $6fff: $ff
    ld a, [hl+]                                   ; $7000: $2a
    cp d                                          ; $7001: $ba
    ld c, c                                       ; $7002: $49
    or $e7                                        ; $7003: $f6 $e7
    rst $10                                       ; $7005: $d7
    and d                                         ; $7006: $a2
    dec [hl]                                      ; $7007: $35
    sub a                                         ; $7008: $97
    pop bc                                        ; $7009: $c1
    rst $18                                       ; $700a: $df
    sbc d                                         ; $700b: $9a
    cp e                                          ; $700c: $bb
    ld d, l                                       ; $700d: $55
    ld l, b                                       ; $700e: $68
    db $fd                                        ; $700f: $fd
    ld sp, hl                                     ; $7010: $f9
    rst $30                                       ; $7011: $f7
    dec h                                         ; $7012: $25
    ld c, a                                       ; $7013: $4f
    ld sp, $719d                                  ; $7014: $31 $9d $71
    halt                                          ; $7017: $76
    ld c, [hl]                                    ; $7018: $4e
    call nc, Call_000_151d                        ; $7019: $d4 $1d $15
    db $dd                                        ; $701c: $dd
    ld b, h                                       ; $701d: $44
    ld [hl], d                                    ; $701e: $72
    sbc $39                                       ; $701f: $de $39
    push af                                       ; $7021: $f5
    ldh a, [$df]                                  ; $7022: $f0 $df
    ld e, a                                       ; $7024: $5f
    db $eb                                        ; $7025: $eb
    add sp, -$5a                                  ; $7026: $e8 $a6
    ld c, e                                       ; $7028: $4b
    ld a, h                                       ; $7029: $7c
    ld d, c                                       ; $702a: $51
    sub c                                         ; $702b: $91
    ld d, d                                       ; $702c: $52
    xor c                                         ; $702d: $a9
    or d                                          ; $702e: $b2
    ld d, [hl]                                    ; $702f: $56
    rst $38                                       ; $7030: $ff
    db $fc                                        ; $7031: $fc
    or l                                          ; $7032: $b5
    dec l                                         ; $7033: $2d
    push de                                       ; $7034: $d5
    sbc b                                         ; $7035: $98
    ld [hl], e                                    ; $7036: $73
    call c, Call_05b_75ff                         ; $7037: $dc $ff $75
    ld bc, $44fc                                  ; $703a: $01 $fc $44
    rst $20                                       ; $703d: $e7
    sub b                                         ; $703e: $90
    or b                                          ; $703f: $b0
    sub h                                         ; $7040: $94
    ccf                                           ; $7041: $3f
    cp e                                          ; $7042: $bb
    rst $18                                       ; $7043: $df
    ld a, d                                       ; $7044: $7a
    dec b                                         ; $7045: $05
    db $e3                                        ; $7046: $e3
    inc e                                         ; $7047: $1c
    rst $10                                       ; $7048: $d7
    ld [hl], l                                    ; $7049: $75
    ld l, c                                       ; $704a: $69
    adc [hl]                                      ; $704b: $8e
    ld [hl], c                                    ; $704c: $71
    or [hl]                                       ; $704d: $b6
    ld [hl], h                                    ; $704e: $74
    halt                                          ; $704f: $76

jr_05b_7050:
    ld h, a                                       ; $7050: $67
    ld [hl], h                                    ; $7051: $74
    db $d3                                        ; $7052: $d3
    dec b                                         ; $7053: $05
    nop                                           ; $7054: $00
    sbc [hl]                                      ; $7055: $9e
    ld h, d                                       ; $7056: $62
    ld a, [hl-]                                   ; $7057: $3a
    db $e3                                        ; $7058: $e3
    xor l                                         ; $7059: $ad
    ld d, a                                       ; $705a: $57
    ld sp, hl                                     ; $705b: $f9
    ld l, a                                       ; $705c: $6f
    ret                                           ; $705d: $c9


    rst $00                                       ; $705e: $c7
    dec [hl]                                      ; $705f: $35
    ld sp, hl                                     ; $7060: $f9
    cp e                                          ; $7061: $bb
    rlca                                          ; $7062: $07
    xor l                                         ; $7063: $ad
    rst $38                                       ; $7064: $ff
    ld [bc], a                                    ; $7065: $02
    sbc h                                         ; $7066: $9c
    cp e                                          ; $7067: $bb
    ld b, l                                       ; $7068: $45
    add hl, hl                                    ; $7069: $29
    sub l                                         ; $706a: $95

jr_05b_706b:
    ld l, h                                       ; $706b: $6c
    adc e                                         ; $706c: $8b
    add h                                         ; $706d: $84
    daa                                           ; $706e: $27
    sbc d                                         ; $706f: $9a
    dec de                                        ; $7070: $1b
    nop                                           ; $7071: $00
    ld e, $a6                                     ; $7072: $1e $a6
    ld e, a                                       ; $7074: $5f
    inc de                                        ; $7075: $13
    dec [hl]                                      ; $7076: $35
    add hl, hl                                    ; $7077: $29
    adc a                                         ; $7078: $8f
    sub e                                         ; $7079: $93
    sbc l                                         ; $707a: $9d
    ld b, e                                       ; $707b: $43
    ld c, c                                       ; $707c: $49
    add hl, sp                                    ; $707d: $39
    call nz, $60ee                                ; $707e: $c4 $ee $60
    ld d, b                                       ; $7081: $50
    ld [hl], d                                    ; $7082: $72
    ld e, c                                       ; $7083: $59
    dec a                                         ; $7084: $3d
    db $fc                                        ; $7085: $fc
    rst $30                                       ; $7086: $f7
    rst $10                                       ; $7087: $d7
    ld a, [hl-]                                   ; $7088: $3a

jr_05b_7089:
    cp d                                          ; $7089: $ba
    ld c, c                                       ; $708a: $49
    sbc [hl]                                      ; $708b: $9e
    ld h, d                                       ; $708c: $62

jr_05b_708d:
    ld a, [hl-]                                   ; $708d: $3a
    db $e3                                        ; $708e: $e3
    db $ec                                        ; $708f: $ec
    call nz, $7fd3                                ; $7090: $c4 $d3 $7f
    adc c                                         ; $7093: $89
    rst $38                                       ; $7094: $ff
    rst $20                                       ; $7095: $e7
    xor a                                         ; $7096: $af
    ld l, l                                       ; $7097: $6d
    xor c                                         ; $7098: $a9
    add $9c                                       ; $7099: $c6 $9c
    db $e3                                        ; $709b: $e3
    cp $2f                                        ; $709c: $fe $2f
    reti                                          ; $709e: $d9


    ld l, [hl]                                    ; $709f: $6e
    inc de                                        ; $70a0: $13
    scf                                           ; $70a1: $37
    nop                                           ; $70a2: $00
    inc e                                         ; $70a3: $1c
    ld sp, hl                                     ; $70a4: $f9
    rst $30                                       ; $70a5: $f7
    ld b, h                                       ; $70a6: $44
    ld d, l                                       ; $70a7: $55
    jr z, jr_05b_7089                             ; $70a8: $28 $df

    jr c, jr_05b_7050                             ; $70aa: $38 $a4

    ld h, $33                                     ; $70ac: $26 $33
    jp nc, $c60c                                  ; $70ae: $d2 $0c $c6

    ld [hl], b                                    ; $70b1: $70
    ld e, d                                       ; $70b2: $5a
    sbc b                                         ; $70b3: $98
    dec a                                         ; $70b4: $3d
    sub h                                         ; $70b5: $94
    and b                                         ; $70b6: $a0
    ld c, e                                       ; $70b7: $4b
    ld b, l                                       ; $70b8: $45
    and c                                         ; $70b9: $a1
    ld a, e                                       ; $70ba: $7b
    sbc e                                         ; $70bb: $9b
    xor b                                         ; $70bc: $a8
    ld l, $00                                     ; $70bd: $2e $00
    ret nc                                        ; $70bf: $d0

    xor l                                         ; $70c0: $ad
    inc e                                         ; $70c1: $1c
    ld d, a                                       ; $70c2: $57
    cp $ee                                        ; $70c3: $fe $ee
    pop bc                                        ; $70c5: $c1
    adc [hl]                                      ; $70c6: $8e
    ld [hl], e                                    ; $70c7: $73
    ld e, [hl]                                    ; $70c8: $5e
    rlca                                          ; $70c9: $07
    db $fd                                        ; $70ca: $fd
    pop de                                        ; $70cb: $d1
    adc l                                         ; $70cc: $8d
    rst $30                                       ; $70cd: $f7
    ld l, [hl]                                    ; $70ce: $6e
    ld e, l                                       ; $70cf: $5d
    nop                                           ; $70d0: $00
    ld e, $73                                     ; $70d1: $1e $73
    ld h, l                                       ; $70d3: $65
    db $10                                        ; $70d4: $10
    ld a, [hl+]                                   ; $70d5: $2a
    reti                                          ; $70d6: $d9


    sub $68                                       ; $70d7: $d6 $68
    call Call_000_1cec                            ; $70d9: $cd $ec $1c
    ld [c], a                                     ; $70dc: $e2
    ld b, $bc                                     ; $70dd: $06 $bc
    ld h, e                                       ; $70df: $63
    cp [hl]                                       ; $70e0: $be
    ldh a, [rLY]                                  ; $70e1: $f0 $44
    rst $08                                       ; $70e3: $cf
    xor l                                         ; $70e4: $ad
    and h                                         ; $70e5: $a4
    ld a, h                                       ; $70e6: $7c
    ld [hl+], a                                   ; $70e7: $22
    adc e                                         ; $70e8: $8b
    ld d, [hl]                                    ; $70e9: $56

Jump_05b_70ea:
    ld a, [de]                                    ; $70ea: $1a
    rst $00                                       ; $70eb: $c7
    rst $00                                       ; $70ec: $c7
    ei                                            ; $70ed: $fb
    cp $73                                        ; $70ee: $fe $73
    ld e, [hl]                                    ; $70f0: $5e
    jr nc, jr_05b_708d                            ; $70f1: $30 $9a

    ld a, d                                       ; $70f3: $7a
    sbc h                                         ; $70f4: $9c
    ld l, b                                       ; $70f5: $68
    add l                                         ; $70f6: $85
    db $ed                                        ; $70f7: $ed
    sub $05                                       ; $70f8: $d6 $05
    nop                                           ; $70fa: $00
    ret nc                                        ; $70fb: $d0

    and l                                         ; $70fc: $a5
    and d                                         ; $70fd: $a2
    or h                                          ; $70fe: $b4
    or d                                          ; $70ff: $b2
    sub $8c                                       ; $7100: $d6 $8c
    ld h, $aa                                     ; $7102: $26 $aa
    and h                                         ; $7104: $a4
    ld a, h                                       ; $7105: $7c
    add [hl]                                      ; $7106: $86
    add hl, bc                                    ; $7107: $09
    add [hl]                                      ; $7108: $86
    add hl, de                                    ; $7109: $19
    or d                                          ; $710a: $b2
    cp l                                          ; $710b: $bd
    nop                                           ; $710c: $00
    ret nc                                        ; $710d: $d0

    and l                                         ; $710e: $a5
    ld a, e                                       ; $710f: $7b
    adc e                                         ; $7110: $8b
    ld h, $51                                     ; $7111: $26 $51
    ld e, l                                       ; $7113: $5d
    ld [c], a                                     ; $7114: $e2
    dec de                                        ; $7115: $1b
    db $dd                                        ; $7116: $dd
    cpl                                           ; $7117: $2f
    jr @-$17                                      ; $7118: $18 $e7

    ld d, b                                       ; $711a: $50
    inc de                                        ; $711b: $13
    sbc l                                         ; $711c: $9d
    ld b, e                                       ; $711d: $43
    ld c, d                                       ; $711e: $4a
    ld [hl], a                                    ; $711f: $77
    ld a, l                                       ; $7120: $7d
    rst $38                                       ; $7121: $ff
    rst $30                                       ; $7122: $f7
    ld b, h                                       ; $7123: $44
    inc h                                         ; $7124: $24
    dec b                                         ; $7125: $05
    cp a                                          ; $7126: $bf
    jp nc, $e33f                                  ; $7127: $d2 $3f $e3

    ld c, e                                       ; $712a: $4b
    cp l                                          ; $712b: $bd
    pop de                                        ; $712c: $d1
    ld b, h                                       ; $712d: $44
    sbc d                                         ; $712e: $9a
    ld h, e                                       ; $712f: $63
    cp $05                                        ; $7130: $fe $05
    nop                                           ; $7132: $00

jr_05b_7133:
    inc a                                         ; $7133: $3c
    ld hl, $bfcc                                  ; $7134: $21 $cc $bf
    ld h, l                                       ; $7137: $65
    db $e3                                        ; $7138: $e3
    call z, $88a8                                 ; $7139: $cc $a8 $88
    ld d, [hl]                                    ; $713c: $56
    db $d3                                        ; $713d: $d3
    ld c, l                                       ; $713e: $4d
    and l                                         ; $713f: $a5
    ld c, c                                       ; $7140: $49
    ld e, c                                       ; $7141: $59
    ld d, e                                       ; $7142: $53
    ld c, [hl]                                    ; $7143: $4e
    ld [hl], l                                    ; $7144: $75
    ld e, l                                       ; $7145: $5d
    sub a                                         ; $7146: $97
    and d                                         ; $7147: $a2
    sub h                                         ; $7148: $94
    ccf                                           ; $7149: $3f
    cp e                                          ; $714a: $bb
    rst $38                                       ; $714b: $ff
    ld c, e                                       ; $714c: $4b
    ld a, $91                                     ; $714d: $3e $91
    add l                                         ; $714f: $85
    jp nc, Jump_000_0858                          ; $7150: $d2 $58 $08

    sub l                                         ; $7153: $95
    jr nc, jr_05b_7133                            ; $7154: $30 $dd

    or [hl]                                       ; $7156: $b6
    adc b                                         ; $7157: $88
    cp d                                          ; $7158: $ba
    nop                                           ; $7159: $00

jr_05b_715a:
    ld a, h                                       ; $715a: $7c
    db $db                                        ; $715b: $db
    inc b                                         ; $715c: $04
    dec h                                         ; $715d: $25
    adc a                                         ; $715e: $8f
    ld [hl], b                                    ; $715f: $70
    ld c, $35                                     ; $7160: $0e $35
    rla                                           ; $7162: $17
    cp e                                          ; $7163: $bb
    ret                                           ; $7164: $c9


    ld d, [hl]                                    ; $7165: $56
    rst $30                                       ; $7166: $f7
    sub $18                                       ; $7167: $d6 $18
    ld [hl], l                                    ; $7169: $75
    ld bc, $fd1e                                  ; $716a: $01 $1e $fd
    and a                                         ; $716d: $a7
    ld l, a                                       ; $716e: $6f
    ld c, c                                       ; $716f: $49
    pop af                                        ; $7170: $f1
    inc a                                         ; $7171: $3c
    ld h, e                                       ; $7172: $63
    sbc c                                         ; $7173: $99
    inc e                                         ; $7174: $1c
    ld h, d                                       ; $7175: $62
    ld [hl], a                                    ; $7176: $77
    or b                                          ; $7177: $b0
    ld c, e                                       ; $7178: $4b
    inc e                                         ; $7179: $1c
    daa                                           ; $717a: $27
    ld e, d                                       ; $717b: $5a
    or [hl]                                       ; $717c: $b6
    ld l, e                                       ; $717d: $6b
    ld a, [hl-]                                   ; $717e: $3a
    ld e, h                                       ; $717f: $5c
    ld e, c                                       ; $7180: $59
    ld d, e                                       ; $7181: $53
    ld h, l                                       ; $7182: $65
    xor l                                         ; $7183: $ad
    dec [hl]                                      ; $7184: $35
    or d                                          ; $7185: $b2
    ld d, l                                       ; $7186: $55
    cp [hl]                                       ; $7187: $be
    db $db                                        ; $7188: $db
    ld e, a                                       ; $7189: $5f
    ld c, c                                       ; $718a: $49
    pop bc                                        ; $718b: $c1
    xor a                                         ; $718c: $af
    ld c, c                                       ; $718d: $49
    ld e, c                                       ; $718e: $59
    ld d, e                                       ; $718f: $53
    res 6, [hl]                                   ; $7190: $cb $b6
    ld c, c                                       ; $7192: $49
    sbc e                                         ; $7193: $9b
    ld a, [hl]                                    ; $7194: $7e
    ld l, c                                       ; $7195: $69
    adc [hl]                                      ; $7196: $8e
    adc [hl]                                      ; $7197: $8e
    ld d, d                                       ; $7198: $52
    ld c, d                                       ; $7199: $4a
    dec [hl]                                      ; $719a: $35
    or a                                          ; $719b: $b7
    ld l, $79                                     ; $719c: $2e $79
    cp [hl]                                       ; $719e: $be

Jump_05b_719f:
    dec bc                                        ; $719f: $0b
    adc c                                         ; $71a0: $89
    ld d, d                                       ; $71a1: $52
    rrca                                          ; $71a2: $0f
    rst $38                                       ; $71a3: $ff
    db $fd                                        ; $71a4: $fd
    or l                                          ; $71a5: $b5
    adc [hl]                                      ; $71a6: $8e
    jr z, jr_05b_715a                             ; $71a7: $28 $b1

    xor a                                         ; $71a9: $af
    add h                                         ; $71aa: $84
    ld a, [hl]                                    ; $71ab: $7e
    xor l                                         ; $71ac: $ad
    add a                                         ; $71ad: $87
    add hl, hl                                    ; $71ae: $29
    db $e3                                        ; $71af: $e3
    ld a, [hl-]                                   ; $71b0: $3a
    add a                                         ; $71b1: $87
    ld [hl], h                                    ; $71b2: $74
    halt                                          ; $71b3: $76
    rst $20                                       ; $71b4: $e7
    inc e                                         ; $71b5: $1c
    rst $30                                       ; $71b6: $f7
    ld e, d                                       ; $71b7: $5a
    ld e, b                                       ; $71b8: $58
    rst $38                                       ; $71b9: $ff
    dec b                                         ; $71ba: $05
    nop                                           ; $71bb: $00
    sbc [hl]                                      ; $71bc: $9e
    ld a, a                                       ; $71bd: $7f
    and l                                         ; $71be: $a5
    cpl                                           ; $71bf: $2f
    ccf                                           ; $71c0: $3f
    or $ec                                        ; $71c1: $f6 $ec
    dec h                                         ; $71c3: $25
    cp [hl]                                       ; $71c4: $be
    ld l, l                                       ; $71c5: $6d
    sub d                                         ; $71c6: $92
    add l                                         ; $71c7: $85
    ld a, [hl-]                                   ; $71c8: $3a
    ld h, [hl]                                    ; $71c9: $66
    add h                                         ; $71ca: $84
    ld a, [hl-]                                   ; $71cb: $3a
    ld c, e                                       ; $71cc: $4b

Call_05b_71cd:
    ld h, c                                       ; $71cd: $61
    ld [hl-], a                                   ; $71ce: $32
    inc hl                                        ; $71cf: $23
    sbc l                                         ; $71d0: $9d
    add c                                         ; $71d1: $81
    ld [hl], e                                    ; $71d2: $73
    ld a, [hl]                                    ; $71d3: $7e
    ld a, [hl-]                                   ; $71d4: $3a
    or b                                          ; $71d5: $b0
    ld [hl+], a                                   ; $71d6: $22
    call z, Call_000_0a1e                         ; $71d7: $cc $1e $0a
    nop                                           ; $71da: $00
    inc a                                         ; $71db: $3c
    ld d, h                                       ; $71dc: $54
    ld [hl], c                                    ; $71dd: $71
    ld c, $09                                     ; $71de: $0e $09
    ld c, e                                       ; $71e0: $4b
    or $f7                                        ; $71e1: $f6 $f7
    rst $10                                       ; $71e3: $d7
    ld sp, hl                                     ; $71e4: $f9
    or l                                          ; $71e5: $b5
    ld l, b                                       ; $71e6: $68
    reti                                          ; $71e7: $d9


    sbc [hl]                                      ; $71e8: $9e
    sbc e                                         ; $71e9: $9b
    ld e, d                                       ; $71ea: $5a
    ld [hl], e                                    ; $71eb: $73
    ld l, h                                       ; $71ec: $6c
    jp hl                                         ; $71ed: $e9


    sbc $1a                                       ; $71ee: $de $1a
    rst $20                                       ; $71f0: $e7
    db $fc                                        ; $71f1: $fc
    ld [hl], l                                    ; $71f2: $75
    ld e, l                                       ; $71f3: $5d
    add d                                         ; $71f4: $82
    ld e, a                                       ; $71f5: $5f
    dec a                                         ; $71f6: $3d
    and $fc                                       ; $71f7: $e6 $fc
    ld c, e                                       ; $71f9: $4b
    adc [hl]                                      ; $71fa: $8e

jr_05b_71fb:
    ld l, l                                       ; $71fb: $6d
    cpl                                           ; $71fc: $2f
    sub h                                         ; $71fd: $94
    inc a                                         ; $71fe: $3c
    inc [hl]                                      ; $71ff: $34
    add d                                         ; $7200: $82
    ld [bc], a                                    ; $7201: $02
    inc e                                         ; $7202: $1c
    daa                                           ; $7203: $27
    ld e, d                                       ; $7204: $5a
    ld b, l                                       ; $7205: $45
    sub e                                         ; $7206: $93
    dec bc                                        ; $7207: $0b
    ld h, $2a                                     ; $7208: $26 $2a
    dec e                                         ; $720a: $1d
    xor [hl]                                      ; $720b: $ae
    xor h                                         ; $720c: $ac
    xor c                                         ; $720d: $a9
    or d                                          ; $720e: $b2
    sub [hl]                                      ; $720f: $96
    add a                                         ; $7210: $87
    ld d, $91                                     ; $7211: $16 $91
    cpl                                           ; $7213: $2f
    or [hl]                                       ; $7214: $b6
    inc sp                                        ; $7215: $33
    ld a, [hl]                                    ; $7216: $7e
    db $ec                                        ; $7217: $ec
    reti                                          ; $7218: $d9


    cp d                                          ; $7219: $ba
    nop                                           ; $721a: $00
    ld c, $19                                     ; $721b: $0e $19
    ld h, $18                                     ; $721d: $26 $18
    ld h, [hl]                                    ; $721f: $66
    ret z                                         ; $7220: $c8

    ld d, [hl]                                    ; $7221: $56
    xor $8d                                       ; $7222: $ee $8d
    db $db                                        ; $7224: $db
    ei                                            ; $7225: $fb
    inc de                                        ; $7226: $13
    db $10                                        ; $7227: $10
    ld h, h                                       ; $7228: $64
    pop bc                                        ; $7229: $c1
    dec l                                         ; $722a: $2d
    cp [hl]                                       ; $722b: $be
    or l                                          ; $722c: $b5
    ld h, $75                                     ; $722d: $26 $75

jr_05b_722f:
    xor b                                         ; $722f: $a8
    rst $00                                       ; $7230: $c7
    reti                                          ; $7231: $d9


    xor $80                                       ; $7232: $ee $80
    ld [bc], a                                    ; $7234: $02
    ld a, h                                       ; $7235: $7c
    ld e, e                                       ; $7236: $5b
    and h                                         ; $7237: $a4
    jr z, jr_05b_722f                             ; $7238: $28 $f5

    or e                                          ; $723a: $b3
    ld a, h                                       ; $723b: $7c
    db $db                                        ; $723c: $db
    ld b, d                                       ; $723d: $42
    ld sp, hl                                     ; $723e: $f9
    ld l, [hl]                                    ; $723f: $6e
    rst $30                                       ; $7240: $f7
    cp a                                          ; $7241: $bf
    xor $31                                       ; $7242: $ee $31
    cp d                                          ; $7244: $ba
    rst $00                                       ; $7245: $c7
    ld c, a                                       ; $7246: $4f
    adc e                                         ; $7247: $8b
    ld e, d                                       ; $7248: $5a
    dec d                                         ; $7249: $15
    call $a6ec                                    ; $724a: $cd $ec $a6
    ld l, [hl]                                    ; $724d: $6e
    xor [hl]                                      ; $724e: $ae
    sbc e                                         ; $724f: $9b
    and [hl]                                      ; $7250: $a6
    db $ed                                        ; $7251: $ed
    dec h                                         ; $7252: $25
    xor a                                         ; $7253: $af
    xor $9b                                       ; $7254: $ee $9b
    jr jr_05b_71fb                                ; $7256: $18 $a3

    sbc [hl]                                      ; $7258: $9e
    ld e, h                                       ; $7259: $5c
    ld c, c                                       ; $725a: $49
    db $dd                                        ; $725b: $dd
    db $db                                        ; $725c: $db
    inc h                                         ; $725d: $24
    rrca                                          ; $725e: $0f
    dec l                                         ; $725f: $2d
    ld [hl+], a                                   ; $7260: $22
    ld e, a                                       ; $7261: $5f
    ld l, h                                       ; $7262: $6c
    ld h, a                                       ; $7263: $67
    db $fc                                        ; $7264: $fc
    ret c                                         ; $7265: $d8

    or e                                          ; $7266: $b3
    ld a, [hl+]                                   ; $7267: $2a
    jp z, $57ba                                   ; $7268: $ca $ba $57

    or [hl]                                       ; $726b: $b6
    dec [hl]                                      ; $726c: $35
    adc $09                                       ; $726d: $ce $09
    jr z, jr_05b_7271                             ; $726f: $28 $00

jr_05b_7271:
    ld a, h                                       ; $7271: $7c
    ld e, e                                       ; $7272: $5b
    and e                                         ; $7273: $a3
    sub h                                         ; $7274: $94
    ld a, a                                       ; $7275: $7f
    and l                                         ; $7276: $a5
    ld [hl], c                                    ; $7277: $71
    ei                                            ; $7278: $fb
    ld e, a                                       ; $7279: $5f
    dec bc                                        ; $727a: $0b
    dec b                                         ; $727b: $05
    nop                                           ; $727c: $00
    sbc h                                         ; $727d: $9c
    and c                                         ; $727e: $a1
    and d                                         ; $727f: $a2
    xor h                                         ; $7280: $ac
    sbc e                                         ; $7281: $9b
    ld c, b                                       ; $7282: $48
    sub [hl]                                      ; $7283: $96
    ld b, c                                       ; $7284: $41
    add sp, -$72                                  ; $7285: $e8 $8e
    sub d                                         ; $7287: $92
    ld h, l                                       ; $7288: $65
    ld sp, hl                                     ; $7289: $f9
    sbc $37                                       ; $728a: $de $37
    sub l                                         ; $728c: $95
    ld a, [de]                                    ; $728d: $1a
    scf                                           ; $728e: $37
    adc a                                         ; $728f: $8f
    xor b                                         ; $7290: $a8
    and h                                         ; $7291: $a4
    xor $d1                                       ; $7292: $ee $d1
    db $fd                                        ; $7294: $fd
    adc d                                         ; $7295: $8a
    ld d, l                                       ; $7296: $55
    ld h, e                                       ; $7297: $63
    adc a                                         ; $7298: $8f
    pop de                                        ; $7299: $d1
    db $fd                                        ; $729a: $fd
    sub a                                         ; $729b: $97
    inc e                                         ; $729c: $1c
    add $9e                                       ; $729d: $c6 $9e
    sub l                                         ; $729f: $95
    db $ed                                        ; $72a0: $ed
    ld [hl-], a                                   ; $72a1: $32
    ld d, $4d                                     ; $72a2: $16 $4d
    ld d, h                                       ; $72a4: $54
    ld c, d                                       ; $72a5: $4a
    rlca                                          ; $72a6: $07
    sbc $51                                       ; $72a7: $de $51
    push af                                       ; $72a9: $f5
    ld a, [c]                                     ; $72aa: $f2
    ld [hl], c                                    ; $72ab: $71
    dec l                                         ; $72ac: $2d
    add hl, hl                                    ; $72ad: $29
    swap d                                        ; $72ae: $cb $32
    ld l, e                                       ; $72b0: $6b
    ld [de], a                                    ; $72b1: $12
    adc h                                         ; $72b2: $8c
    db $fd                                        ; $72b3: $fd
    adc d                                         ; $72b4: $8a
    ld d, d                                       ; $72b5: $52
    adc [hl]                                      ; $72b6: $8e
    dec hl                                        ; $72b7: $2b
    db $db                                        ; $72b8: $db
    ld a, [de]                                    ; $72b9: $1a
    rst $20                                       ; $72ba: $e7
    add h                                         ; $72bb: $84
    ld h, [hl]                                    ; $72bc: $66
    or b                                          ; $72bd: $b0
    add $bf                                       ; $72be: $c6 $bf
    db $e4                                        ; $72c0: $e4
    jr nz, @+$6d                                  ; $72c1: $20 $6b

    reti                                          ; $72c3: $d9


    sub $28                                       ; $72c4: $d6 $28
    ld sp, hl                                     ; $72c6: $f9
    db $db                                        ; $72c7: $db
    or h                                          ; $72c8: $b4
    or [hl]                                       ; $72c9: $b6
    cp d                                          ; $72ca: $ba
    and e                                         ; $72cb: $a3
    adc d                                         ; $72cc: $8a
    call nc, Call_05b_7f3f                        ; $72cd: $d4 $3f $7f
    ld l, l                                       ; $72d0: $6d
    ld c, e                                       ; $72d1: $4b
    dec [hl]                                      ; $72d2: $35
    and $1c                                       ; $72d3: $e6 $1c
    rst $30                                       ; $72d5: $f7
    ld a, a                                       ; $72d6: $7f
    ld e, l                                       ; $72d7: $5d
    ld a, [c]                                     ; $72d8: $f2
    add sp, $75                                   ; $72d9: $e8 $75
    adc a                                         ; $72db: $8f
    or l                                          ; $72dc: $b5
    ld a, [hl]                                    ; $72dd: $7e
    ld c, l                                       ; $72de: $4d
    jp z, $89ba                                   ; $72df: $ca $ba $89

    sub h                                         ; $72e2: $94
    rst $28                                       ; $72e3: $ef
    halt                                          ; $72e4: $76
    rst $38                                       ; $72e5: $ff
    ld e, a                                       ; $72e6: $5f
    ld a, [c]                                     ; $72e7: $f2
    inc e                                         ; $72e8: $1c
    or a                                          ; $72e9: $b7
    ld [hl], l                                    ; $72ea: $75
    adc a                                         ; $72eb: $8f
    pop de                                        ; $72ec: $d1
    ld d, c                                       ; $72ed: $51
    add d                                         ; $72ee: $82
    ld [hl], c                                    ; $72ef: $71
    db $f4                                        ; $72f0: $f4
    ld a, b                                       ; $72f1: $78
    ld sp, hl                                     ; $72f2: $f9
    db $e3                                        ; $72f3: $e3
    db $fc                                        ; $72f4: $fc
    ld d, a                                       ; $72f5: $57
    ld d, d                                       ; $72f6: $52
    ld [hl], e                                    ; $72f7: $73
    sub h                                         ; $72f8: $94
    adc $ee                                       ; $72f9: $ce $ee
    inc e                                         ; $72fb: $1c
    ld [hl], $e3                                  ; $72fc: $36 $e3
    ld b, h                                       ; $72fe: $44
    ld l, e                                       ; $72ff: $6b
    add [hl]                                      ; $7300: $86
    call $8738                                    ; $7301: $cd $38 $87
    sub h                                         ; $7304: $94
    ld [hl], c                                    ; $7305: $71
    dec [hl]                                      ; $7306: $35
    ld e, l                                       ; $7307: $5d
    nop                                           ; $7308: $00
    ld a, h                                       ; $7309: $7c
    and e                                         ; $730a: $a3
    ei                                            ; $730b: $fb
    push bc                                       ; $730c: $c5
    ei                                            ; $730d: $fb
    ld h, a                                       ; $730e: $67
    ld a, $43                                     ; $730f: $3e $43
    cp e                                          ; $7311: $bb
    xor [hl]                                      ; $7312: $ae
    dec bc                                        ; $7313: $0b
    nop                                           ; $7314: $00
    ld e, $53                                     ; $7315: $1e $53
    ld a, [de]                                    ; $7317: $1a
    cp l                                          ; $7318: $bd
    and l                                         ; $7319: $a5
    sub h                                         ; $731a: $94
    ld a, [hl+]                                   ; $731b: $2a
    ld a, d                                       ; $731c: $7a
    ld l, [hl]                                    ; $731d: $6e
    xor c                                         ; $731e: $a9
    add $9c                                       ; $731f: $c6 $9c
    db $e3                                        ; $7321: $e3
    cp $af                                        ; $7322: $fe $af
    dec bc                                        ; $7324: $0b
    nop                                           ; $7325: $00
    ld a, h                                       ; $7326: $7c
    ld l, e                                       ; $7327: $6b
    ld c, l                                       ; $7328: $4d
    add hl, hl                                    ; $7329: $29
    sub l                                         ; $732a: $95
    sbc d                                         ; $732b: $9a
    ld l, [hl]                                    ; $732c: $6e
    jp nc, Jump_000_065c                          ; $732d: $d2 $5c $06

    cp a                                          ; $7330: $bf
    ld h, [hl]                                    ; $7331: $66
    or b                                          ; $7332: $b0
    ld b, [hl]                                    ; $7333: $46
    add h                                         ; $7334: $84
    ld [bc], a                                    ; $7335: $02
    inc a                                         ; $7336: $3c
    ld e, c                                       ; $7337: $59
    ld c, [hl]                                    ; $7338: $4e
    and h                                         ; $7339: $a4
    adc $b8                                       ; $733a: $ce $b8
    sbc d                                         ; $733c: $9a
    sub d                                         ; $733d: $92
    ld [hl], d                                    ; $733e: $72
    add b                                         ; $733f: $80
    adc h                                         ; $7340: $8c
    xor l                                         ; $7341: $ad
    call $00bf                                    ; $7342: $cd $bf $00
    ld c, $89                                     ; $7345: $0e $89
    ld l, h                                       ; $7347: $6c
    ld l, c                                       ; $7348: $69
    db $ed                                        ; $7349: $ed
    ldh [$fd], a                                  ; $734a: $e0 $fd
    adc d                                         ; $734c: $8a
    dec d                                         ; $734d: $15
    sbc [hl]                                      ; $734e: $9e
    ld d, b                                       ; $734f: $50
    sub [hl]                                      ; $7350: $96
    ld [hl], $29                                  ; $7351: $36 $29
    db $fd                                        ; $7353: $fd
    ld h, c                                       ; $7354: $61
    di                                            ; $7355: $f3
    dec [hl]                                      ; $7356: $35
    rst $00                                       ; $7357: $c7
    sub [hl]                                      ; $7358: $96
    ld h, b                                       ; $7359: $60
    inc e                                         ; $735a: $1c
    ld h, a                                       ; $735b: $67
    ld e, h                                       ; $735c: $5c
    ld [c], a                                     ; $735d: $e2
    db $fd                                        ; $735e: $fd
    sbc l                                         ; $735f: $9d
    ld d, c                                       ; $7360: $51
    ld a, [$ff9d]                                 ; $7361: $fa $9d $ff
    ld a, [c]                                     ; $7364: $f2
    or a                                          ; $7365: $b7
    adc c                                         ; $7366: $89
    add h                                         ; $7367: $84
    cp $da                                        ; $7368: $fe $da
    adc h                                         ; $736a: $8c
    ld [hl], e                                    ; $736b: $73
    sbc [hl]                                      ; $736c: $9e
    dec de                                        ; $736d: $1b
    nop                                           ; $736e: $00
    cp h                                          ; $736f: $bc
    jr c, @+$25                                   ; $7370: $38 $23

    ld e, d                                       ; $7372: $5a
    sbc b                                         ; $7373: $98
    ld a, a                                       ; $7374: $7f
    ld l, e                                       ; $7375: $6b
    ld h, d                                       ; $7376: $62
    jp c, $149f                                   ; $7377: $da $9f $14

    adc h                                         ; $737a: $8c
    dec e                                         ; $737b: $1d
    dec h                                         ; $737c: $25
    dec bc                                        ; $737d: $0b
    ld h, c                                       ; $737e: $61
    add hl, hl                                    ; $737f: $29
    and a                                         ; $7380: $a7
    sub h                                         ; $7381: $94
    ld c, d                                       ; $7382: $4a
    cp $cf                                        ; $7383: $fe $cf
    adc c                                         ; $7385: $89
    call c, $b072                                 ; $7386: $dc $72 $b0
    ld l, e                                       ; $7389: $6b
    ld c, l                                       ; $738a: $4d
    jp nz, $ff92                                  ; $738b: $c2 $92 $ff

    ld [hl], e                                    ; $738e: $73
    and d                                         ; $738f: $a2
    ld a, h                                       ; $7390: $7c
    ld [hl+], a                                   ; $7391: $22
    ld l, e                                       ; $7392: $6b
    jp nc, Jump_05b_7f21                          ; $7393: $d2 $21 $7f

    sub e                                         ; $7396: $93
    add d                                         ; $7397: $82
    pop de                                        ; $7398: $d1
    sub h                                         ; $7399: $94
    cp $19                                        ; $739a: $fe $19
    ld a, a                                       ; $739c: $7f

Jump_05b_739d:
    rst $18                                       ; $739d: $df
    and c                                         ; $739e: $a1
    add $b5                                       ; $739f: $c6 $b5
    jr c, jr_05b_73ca                             ; $73a1: $38 $27

    ld [hl], h                                    ; $73a3: $74
    ld b, $ce                                     ; $73a4: $06 $ce
    ccf                                           ; $73a6: $3f
    daa                                           ; $73a7: $27
    ld l, $00                                     ; $73a8: $2e $00
    inc a                                         ; $73aa: $3c
    sbc a                                         ; $73ab: $9f
    db $10                                        ; $73ac: $10
    ld e, e                                       ; $73ad: $5b
    ld [$f8b7], sp                                ; $73ae: $08 $b7 $f8
    or [hl]                                       ; $73b1: $b6
    ld c, c                                       ; $73b2: $49
    or [hl]                                       ; $73b3: $b6
    ld b, l                                       ; $73b4: $45
    ld l, d                                       ; $73b5: $6a
    and d                                         ; $73b6: $a2
    ld [hl], e                                    ; $73b7: $73
    ld c, b                                       ; $73b8: $48
    dec e                                         ; $73b9: $1d
    pop de                                        ; $73ba: $d1
    ld d, b                                       ; $73bb: $50
    nop                                           ; $73bc: $00
    sbc $a4                                       ; $73bd: $de $a4
    rst $10                                       ; $73bf: $d7
    ld [hl], l                                    ; $73c0: $75
    dec [hl]                                      ; $73c1: $35
    or $5f                                        ; $73c2: $f6 $5f

Jump_05b_73c4:
    rst $10                                       ; $73c4: $d7
    dec [hl]                                      ; $73c5: $35
    ld b, a                                       ; $73c6: $47
    and l                                         ; $73c7: $a5
    ld e, a                                       ; $73c8: $5f
    sbc d                                         ; $73c9: $9a

jr_05b_73ca:
    rst $18                                       ; $73ca: $df
    dec e                                         ; $73cb: $1d
    ld h, a                                       ; $73cc: $67
    db $eb                                        ; $73cd: $eb
    sub d                                         ; $73ce: $92
    rst $20                                       ; $73cf: $e7
    dec de                                        ; $73d0: $1b
    add a                                         ; $73d1: $87
    ld h, $97                                     ; $73d2: $26 $97
    ret                                           ; $73d4: $c9


    or [hl]                                       ; $73d5: $b6
    ld c, b                                       ; $73d6: $48
    or [hl]                                       ; $73d7: $b6
    db $db                                        ; $73d8: $db
    inc h                                         ; $73d9: $24
    rlca                                          ; $73da: $07
    sbc e                                         ; $73db: $9b
    nop                                           ; $73dc: $00
    sbc [hl]                                      ; $73dd: $9e
    scf                                           ; $73de: $37
    cp c                                          ; $73df: $b9
    ld a, a                                       ; $73e0: $7f
    cp $8e                                        ; $73e1: $fe $8e
    or e                                          ; $73e3: $b3
    sub $2f                                       ; $73e4: $d6 $2f
    call nz, $dcd6                                ; $73e6: $c4 $d6 $dc
    xor l                                         ; $73e9: $ad
    ld b, d                                       ; $73ea: $42
    db $eb                                        ; $73eb: $eb
    ld d, c                                       ; $73ec: $51
    inc bc                                        ; $73ed: $03
    ld a, [bc]                                    ; $73ee: $0a
    nop                                           ; $73ef: $00
    ld a, h                                       ; $73f0: $7c
    ld hl, $bdfb                                  ; $73f1: $21 $fb $bd
    rst $28                                       ; $73f4: $ef
    sub b                                         ; $73f5: $90
    push bc                                       ; $73f6: $c5
    ret                                           ; $73f7: $c9


    rst $30                                       ; $73f8: $f7
    sbc h                                         ; $73f9: $9c
    ld c, b                                       ; $73fa: $48
    ld l, d                                       ; $73fb: $6a
    adc [hl]                                      ; $73fc: $8e
    ld sp, hl                                     ; $73fd: $f9
    ld c, d                                       ; $73fe: $4a
    xor c                                         ; $73ff: $a9
    add h                                         ; $7400: $84
    ld [hl], l                                    ; $7401: $75
    ret                                           ; $7402: $c9


    and e                                         ; $7403: $a3
    rst $10                                       ; $7404: $d7
    dec e                                         ; $7405: $1d
    ld [$080d], a                                 ; $7406: $ea $0d $08
    db $dd                                        ; $7409: $dd
    ld [hl], a                                    ; $740a: $77
    inc h                                         ; $740b: $24
    dec d                                         ; $740c: $15
    db $dd                                        ; $740d: $dd
    inc h                                         ; $740e: $24
    add a                                         ; $740f: $87
    ld e, h                                       ; $7410: $5c
    adc h                                         ; $7411: $8c

Call_05b_7412:
    ld [hl], c                                    ; $7412: $71
    add hl, hl                                    ; $7413: $29
    ld a, a                                       ; $7414: $7f
    sub $8b                                       ; $7415: $d6 $8b
    xor e                                         ; $7417: $ab
    ld a, h                                       ; $7418: $7c
    rst $10                                       ; $7419: $d7
    sbc $3a                                       ; $741a: $de $3a
    ld c, d                                       ; $741c: $4a
    ld [hl], e                                    ; $741d: $73
    xor a                                         ; $741e: $af
    db $eb                                        ; $741f: $eb
    ld [bc], a                                    ; $7420: $02
    sbc h                                         ; $7421: $9c
    ld l, c                                       ; $7422: $69
    sbc d                                         ; $7423: $9a
    inc d                                         ; $7424: $14
    dec e                                         ; $7425: $1d
    ld d, d                                       ; $7426: $52
    ld h, l                                       ; $7427: $65
    xor l                                         ; $7428: $ad
    ld sp, hl                                     ; $7429: $f9
    dec sp                                        ; $742a: $3b
    rst $30                                       ; $742b: $f7
    sbc h                                         ; $742c: $9c

jr_05b_742d:
    sub b                                         ; $742d: $90
    ld l, l                                       ; $742e: $6d
    sub e                                         ; $742f: $93
    ld a, [de]                                    ; $7430: $1a
    or a                                          ; $7431: $b7
    or c                                          ; $7432: $b1
    sbc a                                         ; $7433: $9f
    dec de                                        ; $7434: $1b
    nop                                           ; $7435: $00
    sbc [hl]                                      ; $7436: $9e
    ccf                                           ; $7437: $3f
    db $eb                                        ; $7438: $eb
    push bc                                       ; $7439: $c5
    sbc l                                         ; $743a: $9d
    xor b                                         ; $743b: $a8
    cp c                                          ; $743c: $b9
    ld a, c                                       ; $743d: $79
    sub b                                         ; $743e: $90
    ld h, b                                       ; $743f: $60
    sbc h                                         ; $7440: $9c
    ld b, e                                       ; $7441: $43
    rst $30                                       ; $7442: $f7
    jr jr_05b_74b8                                ; $7443: $18 $73

    ld c, e                                       ; $7445: $4b
    ld c, $b9                                     ; $7446: $0e $b9
    jr jr_05b_742d                                ; $7448: $18 $e3

    ld a, [hl+]                                   ; $744a: $2a
    sbc l                                         ; $744b: $9d
    dec [hl]                                      ; $744c: $35
    sbc d                                         ; $744d: $9a
    or [hl]                                       ; $744e: $b6
    ld d, b                                       ; $744f: $50
    nop                                           ; $7450: $00
    sbc h                                         ; $7451: $9c
    ld l, c                                       ; $7452: $69
    jp z, Jump_05b_7e2d                           ; $7453: $ca $2d $7e

    and d                                         ; $7456: $a2
    ld [hl], e                                    ; $7457: $73
    ld c, b                                       ; $7458: $48
    ld e, b                                       ; $7459: $58
    or d                                          ; $745a: $b2

jr_05b_745b:
    ret c                                         ; $745b: $d8

    jp c, Jump_05b_6873                           ; $745c: $da $73 $68

    xor [hl]                                      ; $745f: $ae
    ld h, $b2                                     ; $7460: $26 $b2
    db $fc                                        ; $7462: $fc
    ei                                            ; $7463: $fb
    ld [de], a                                    ; $7464: $12
    rst $38                                       ; $7465: $ff
    jr c, jr_05b_745b                             ; $7466: $38 $f3

    ld e, a                                       ; $7468: $5f
    ldh a, [$e8]                                  ; $7469: $f0 $e8
    adc [hl]                                      ; $746b: $8e
    inc de                                        ; $746c: $13
    ld d, c                                       ; $746d: $51
    cp d                                          ; $746e: $ba
    ld b, a                                       ; $746f: $47
    ld l, c                                       ; $7470: $69
    ld a, [hl]                                    ; $7471: $7e
    sbc c                                         ; $7472: $99
    cp l                                          ; $7473: $bd
    xor $8c                                       ; $7474: $ee $8c
    dec hl                                        ; $7476: $2b
    adc l                                         ; $7477: $8d
    ei                                            ; $7478: $fb
    sbc $ba                                       ; $7479: $de $ba
    nop                                           ; $747b: $00
    ld a, h                                       ; $747c: $7c
    dec sp                                        ; $747d: $3b
    ld l, l                                       ; $747e: $6d
    daa                                           ; $747f: $27
    ld d, a                                       ; $7480: $57
    ld c, d                                       ; $7481: $4a
    dec h                                         ; $7482: $25
    sbc [hl]                                      ; $7483: $9e
    ld c, a                                       ; $7484: $4f
    adc b                                         ; $7485: $88
    dec l                                         ; $7486: $2d
    ld b, h                                       ; $7487: $44
    dec a                                         ; $7488: $3d
    ld a, d                                       ; $7489: $7a
    xor [hl]                                      ; $748a: $ae
    and $32                                       ; $748b: $e6 $32
    ld hl, sp-$53                                 ; $748d: $f8 $ad
    pop de                                        ; $748f: $d1
    db $ec                                        ; $7490: $ec
    dec [hl]                                      ; $7491: $35
    sub a                                         ; $7492: $97
    pop bc                                        ; $7493: $c1
    ld [$0ebf], sp                                ; $7494: $08 $bf $0e
    and [hl]                                      ; $7497: $a6
    dec sp                                        ; $7498: $3b
    adc c                                         ; $7499: $89
    ret c                                         ; $749a: $d8

    dec e                                         ; $749b: $1d
    ld l, e                                       ; $749c: $6b
    ld c, l                                       ; $749d: $4d
    ld d, b                                       ; $749e: $50
    nop                                           ; $749f: $00
    inc a                                         ; $74a0: $3c
    ld d, h                                       ; $74a1: $54
    or d                                          ; $74a2: $b2
    cpl                                           ; $74a3: $2f
    ld e, h                                       ; $74a4: $5c
    db $dd                                        ; $74a5: $dd
    ld e, e                                       ; $74a6: $5b
    db $e3                                        ; $74a7: $e3
    sbc h                                         ; $74a8: $9c
    ret nc                                        ; $74a9: $d0

    inc c                                         ; $74aa: $0c
    add $be                                       ; $74ab: $c6 $be
    sub d                                         ; $74ad: $92
    adc d                                         ; $74ae: $8a
    ld l, [hl]                                    ; $74af: $6e
    ld d, d                                       ; $74b0: $52
    ld c, d                                       ; $74b1: $4a
    dec h                                         ; $74b2: $25
    inc l                                         ; $74b3: $2c
    db $fd                                        ; $74b4: $fd
    sub $2b                                       ; $74b5: $d6 $2b
    db $fd                                        ; $74b7: $fd

jr_05b_74b8:
    inc sp                                        ; $74b8: $33
    xor d                                         ; $74b9: $aa
    ld b, [hl]                                    ; $74ba: $46
    dec bc                                        ; $74bb: $0b
    rst $28                                       ; $74bc: $ef
    cpl                                           ; $74bd: $2f
    dec e                                         ; $74be: $1d
    ld c, h                                       ; $74bf: $4c
    ld [hl], a                                    ; $74c0: $77
    ld [de], a                                    ; $74c1: $12
    or c                                          ; $74c2: $b1
    dec sp                                        ; $74c3: $3b
    and d                                         ; $74c4: $a2
    ld l, $00                                     ; $74c5: $2e $00
    sbc h                                         ; $74c7: $9c
    ld l, c                                       ; $74c8: $69
    jp z, $be2d                                   ; $74c9: $ca $2d $be

    ccf                                           ; $74cc: $3f
    add hl, bc                                    ; $74cd: $09
    ld h, d                                       ; $74ce: $62
    and [hl]                                      ; $74cf: $a6
    add hl, sp                                    ; $74d0: $39
    ld b, [hl]                                    ; $74d1: $46
    ld [hl], l                                    ; $74d2: $75
    sbc h                                         ; $74d3: $9c
    ld [$b1dd], sp                                ; $74d4: $08 $dd $b1
    ld c, l                                       ; $74d7: $4d
    call c, $8be2                                 ; $74d8: $dc $e2 $8b
    ld a, [hl+]                                   ; $74db: $2a
    and d                                         ; $74dc: $a2
    ld d, d                                       ; $74dd: $52
    ld h, l                                       ; $74de: $65
    dec l                                         ; $74df: $2d
    sbc [hl]                                      ; $74e0: $9e
    ld c, a                                       ; $74e1: $4f
    adc b                                         ; $74e2: $88
    dec l                                         ; $74e3: $2d
    ld h, h                                       ; $74e4: $64
    ld c, e                                       ; $74e5: $4b
    ld h, a                                       ; $74e6: $67
    ldh [$b4], a                                  ; $74e7: $e0 $b4
    cp b                                          ; $74e9: $b8
    nop                                           ; $74ea: $00
    inc a                                         ; $74eb: $3c
    rst $30                                       ; $74ec: $f7
    ld a, l                                       ; $74ed: $7d
    ld e, l                                       ; $74ee: $5d
    rla                                           ; $74ef: $17
    nop                                           ; $74f0: $00
    ld c, $50                                     ; $74f1: $0e $50
    or l                                          ; $74f3: $b5
    ld e, e                                       ; $74f4: $5b
    ld c, c                                       ; $74f5: $49
    call $aa51                                    ; $74f6: $cd $51 $aa
    xor h                                         ; $74f9: $ac
    dec [hl]                                      ; $74fa: $35
    add e                                         ; $74fb: $83
    or c                                          ; $74fc: $b1
    cpl                                           ; $74fd: $2f
    call $b2cc                                    ; $74fe: $cd $cc $b2
    db $ed                                        ; $7501: $ed
    adc [hl]                                      ; $7502: $8e
    and h                                         ; $7503: $a4
    ld l, d                                       ; $7504: $6a
    or a                                          ; $7505: $b7
    add h                                         ; $7506: $84
    ld a, [hl]                                    ; $7507: $7e
    ld [hl], h                                    ; $7508: $74
    ccf                                           ; $7509: $3f
    db $fc                                        ; $750a: $fc
    dec l                                         ; $750b: $2d
    inc l                                         ; $750c: $2c
    ld [hl], l                                    ; $750d: $75
    and h                                         ; $750e: $a4
    dec d                                         ; $750f: $15
    pop de                                        ; $7510: $d1
    sub d                                         ; $7511: $92
    ld l, l                                       ; $7512: $6d
    ld d, l                                       ; $7513: $55
    ld [$6fef], sp                                ; $7514: $08 $ef $6f
    push af                                       ; $7517: $f5
    rst $28                                       ; $7518: $ef
    db $fc                                        ; $7519: $fc
    or d                                          ; $751a: $b2
    sub a                                         ; $751b: $97
    dec c                                         ; $751c: $0d
    add h                                         ; $751d: $84
    rst $38                                       ; $751e: $ff
    rst $28                                       ; $751f: $ef
    rst $38                                       ; $7520: $ff
    jp nc, Jump_000_3cdc                          ; $7521: $d2 $dc $3c

    ld c, b                                       ; $7524: $48
    adc $88                                       ; $7525: $ce $88
    cpl                                           ; $7527: $2f
    ld bc, $9e0f                                  ; $7528: $01 $0f $9e
    db $dd                                        ; $752b: $dd
    sbc e                                         ; $752c: $9b
    ldh a, [$27]                                  ; $752d: $f0 $27
    push hl                                       ; $752f: $e5
    pop af                                        ; $7530: $f1
    ld a, [$dbd1]                                 ; $7531: $fa $d1 $db
    ld c, c                                       ; $7534: $49
    ld a, c                                       ; $7535: $79
    ld e, $cc                                     ; $7536: $1e $cc
    jr nc, jr_05b_7563                            ; $7538: $30 $29

    ld c, $f6                                     ; $753a: $0e $f6
    ld a, c                                       ; $753c: $79
    ld [$f17e], sp                                ; $753d: $08 $7e $f1
    cp $99                                        ; $7540: $fe $99
    rst $08                                       ; $7542: $cf
    ret nc                                        ; $7543: $d0

    ld l, $00                                     ; $7544: $2e $00
    cp h                                          ; $7546: $bc
    ld a, a                                       ; $7547: $7f
    and $33                                       ; $7548: $e6 $33
    inc [hl]                                      ; $754a: $34
    ld l, [hl]                                    ; $754b: $6e
    nop                                           ; $754c: $00
    cp h                                          ; $754d: $bc
    ld a, a                                       ; $754e: $7f
    and $33                                       ; $754f: $e6 $33
    inc [hl]                                      ; $7551: $34
    db $fd                                        ; $7552: $fd
    add sp, -$3a                                  ; $7553: $e8 $c6
    dec d                                         ; $7555: $15
    xor $8c                                       ; $7556: $ee $8c
    or b                                          ; $7558: $b0
    ld e, [hl]                                    ; $7559: $5e
    reti                                          ; $755a: $d9


    ld b, b                                       ; $755b: $40
    ld hl, sp-$01                                 ; $755c: $f8 $ff
    cp $2f                                        ; $755e: $fe $2f
    call $83cd                                    ; $7560: $cd $cd $83

jr_05b_7563:
    sub d                                         ; $7563: $92
    jp z, $e77f                                   ; $7564: $ca $7f $e7

    ld a, h                                       ; $7567: $7c
    ld [hl], l                                    ; $7568: $75
    add sp, -$74                                  ; $7569: $e8 $8c
    ld [hl], c                                    ; $756b: $71
    and d                                         ; $756c: $a2
    dec sp                                        ; $756d: $3b
    inc d                                         ; $756e: $14
    dec l                                         ; $756f: $2d
    dec bc                                        ; $7570: $0b
    ld h, l                                       ; $7571: $65
    ld l, h                                       ; $7572: $6c
    cp e                                          ; $7573: $bb
    adc c                                         ; $7574: $89
    inc [hl]                                      ; $7575: $34
    add hl, hl                                    ; $7576: $29
    call Call_000_34e3                            ; $7577: $cd $e3 $34
    sub c                                         ; $757a: $91
    inc l                                         ; $757b: $2c
    ld [$bc02], a                                 ; $757c: $ea $02 $bc
    ld a, a                                       ; $757f: $7f
    and $33                                       ; $7580: $e6 $33
    inc [hl]                                      ; $7582: $34
    push hl                                       ; $7583: $e5
    rst $08                                       ; $7584: $cf
    xor $b7                                       ; $7585: $ee $b7
    ld e, [hl]                                    ; $7587: $5e
    ld h, l                                       ; $7588: $65
    ld l, h                                       ; $7589: $6c
    cp e                                          ; $758a: $bb
    adc c                                         ; $758b: $89
    inc b                                         ; $758c: $04
    ld h, e                                       ; $758d: $63
    rst $38                                       ; $758e: $ff
    sub [hl]                                      ; $758f: $96
    jp nc, Jump_05b_4de8                          ; $7590: $d2 $e8 $4d

    ld l, d                                       ; $7593: $6a

Call_05b_7594:
    adc [hl]                                      ; $7594: $8e
    jp nc, Jump_05b_698c                          ; $7595: $d2 $8c $69

jr_05b_7598:
    cp e                                          ; $7598: $bb
    cp d                                          ; $7599: $ba
    or a                                          ; $759a: $b7
    and e                                         ; $759b: $a3
    db $e4                                        ; $759c: $e4
    inc de                                        ; $759d: $13
    ld e, c                                       ; $759e: $59
    add h                                         ; $759f: $84
    inc e                                         ; $75a0: $1c
    ld [hl], d                                    ; $75a1: $72
    ld sp, $55c6                                  ; $75a2: $31 $c6 $55
    jp nz, Jump_000_2f74                          ; $75a5: $c2 $74 $2f

    nop                                           ; $75a8: $00
    ld a, h                                       ; $75a9: $7c
    dec sp                                        ; $75aa: $3b
    ld l, l                                       ; $75ab: $6d
    push de                                       ; $75ac: $d5
    ld b, h                                       ; $75ad: $44
    rst $20                                       ; $75ae: $e7
    sub b                                         ; $75af: $90
    or b                                          ; $75b0: $b0
    ld d, h                                       ; $75b1: $54
    cp e                                          ; $75b2: $bb
    and l                                         ; $75b3: $a5
    add hl, sp                                    ; $75b4: $39
    add $fd                                       ; $75b5: $c6 $fd
    ld d, b                                       ; $75b7: $50
    nop                                           ; $75b8: $00
    inc a                                         ; $75b9: $3c
    sbc a                                         ; $75ba: $9f
    db $10                                        ; $75bb: $10
    ld e, e                                       ; $75bc: $5b
    ret z                                         ; $75bd: $c8

    ld [hl], l                                    ; $75be: $75

jr_05b_75bf:
    ld e, l                                       ; $75bf: $5d
    cp d                                          ; $75c0: $ba
    ld [hl], a                                    ; $75c1: $77
    sub d                                         ; $75c2: $92
    ld a, d                                       ; $75c3: $7a

jr_05b_75c4:
    and b                                         ; $75c4: $a0
    or b                                          ; $75c5: $b0
    and b                                         ; $75c6: $a0
    nop                                           ; $75c7: $00
    sbc h                                         ; $75c8: $9c
    ld sp, $a0b9                                  ; $75c9: $31 $b9 $a0
    db $e4                                        ; $75cc: $e4
    ld de, $5262                                  ; $75cd: $11 $62 $52
    adc l                                         ; $75d0: $8d
    db $fd                                        ; $75d1: $fd
    rst $10                                       ; $75d2: $d7
    ld [hl], l                                    ; $75d3: $75
    ld bc, $919c                                  ; $75d4: $01 $9c $91
    ld d, d                                       ; $75d7: $52
    add hl, bc                                    ; $75d8: $09
    ld c, e                                       ; $75d9: $4b
    rlca                                          ; $75da: $07
    db $d3                                        ; $75db: $d3
    sbc l                                         ; $75dc: $9d
    ld b, h                                       ; $75dd: $44
    db $ec                                        ; $75de: $ec
    adc [hl]                                      ; $75df: $8e
    jr z, jr_05b_75bf                             ; $75e0: $28 $dd

    and e                                         ; $75e2: $a3
    sbc [hl]                                      ; $75e3: $9e
    ld e, e                                       ; $75e4: $5b
    ld a, h                                       ; $75e5: $7c
    ld l, e                                       ; $75e6: $6b
    ld c, l                                       ; $75e7: $4d
    jp nz, $b19d                                  ; $75e8: $c2 $9d $b1

    dec h                                         ; $75eb: $25
    ei                                            ; $75ec: $fb
    ld l, l                                       ; $75ed: $6d
    ld e, c                                       ; $75ee: $59
    inc d                                         ; $75ef: $14
    inc d                                         ; $75f0: $14
    nop                                           ; $75f1: $00
    sbc [hl]                                      ; $75f2: $9e
    db $e3                                        ; $75f3: $e3
    or $96                                        ; $75f4: $f6 $96
    inc l                                         ; $75f6: $2c
    ld c, d                                       ; $75f7: $4a
    jr nc, jr_05b_7598                            ; $75f8: $30 $9e

    cp $2d                                        ; $75fa: $fe $2d
    push hl                                       ; $75fc: $e5
    ld d, c                                       ; $75fd: $51
    adc l                                         ; $75fe: $8d

Call_05b_75ff:
    ld sp, hl                                     ; $75ff: $f9
    ld b, $fb                                     ; $7600: $06 $fb
    ccf                                           ; $7602: $3f
    db $fd                                        ; $7603: $fd
    sub a                                         ; $7604: $97
    jr c, jr_05b_764a                             ; $7605: $38 $43

    ld b, l                                       ; $7607: $45
    ld e, c                                       ; $7608: $59
    rst $30                                       ; $7609: $f7
    ld a, [hl+]                                   ; $760a: $2a
    rst $38                                       ; $760b: $ff
    cpl                                           ; $760c: $2f
    ld [hl], l                                    ; $760d: $75
    sub [hl]                                      ; $760e: $96
    ld [hl], l                                    ; $760f: $75
    sub [hl]                                      ; $7610: $96
    db $d3                                        ; $7611: $d3
    ld e, d                                       ; $7612: $5a
    sbc h                                         ; $7613: $9c
    and [hl]                                      ; $7614: $a6
    and h                                         ; $7615: $a4
    and $28                                       ; $7616: $e6 $28
    ld sp, hl                                     ; $7618: $f9
    ld b, h                                       ; $7619: $44
    and [hl]                                      ; $761a: $a6
    ld h, b                                       ; $761b: $60
    adc b                                         ; $761c: $88
    dec h                                         ; $761d: $25
    db $db                                        ; $761e: $db
    ld l, l                                       ; $761f: $6d
    cp d                                          ; $7620: $ba

Jump_05b_7621:
    call nz, $c219                                ; $7621: $c4 $19 $c2
    ld d, d                                       ; $7624: $52
    ld hl, $ff83                                  ; $7625: $21 $83 $ff
    db $fc                                        ; $7628: $fc
    ld d, [hl]                                    ; $7629: $56
    sub h                                         ; $762a: $94
    jr jr_05b_75c4                                ; $762b: $18 $97

    rra                                           ; $762d: $1f
    add a                                         ; $762e: $87
    xor e                                         ; $762f: $ab
    sub $e6                                       ; $7630: $d6 $e6
    daa                                           ; $7632: $27
    push de                                       ; $7633: $d5
    ld l, b                                       ; $7634: $68
    xor e                                         ; $7635: $ab
    db $f4                                        ; $7636: $f4
    ld e, c                                       ; $7637: $59
    cp [hl]                                       ; $7638: $be
    push af                                       ; $7639: $f5
    ld e, e                                       ; $763a: $5b
    ld d, c                                       ; $763b: $51
    rla                                           ; $763c: $17
    nop                                           ; $763d: $00
    sbc h                                         ; $763e: $9c
    and c                                         ; $763f: $a1
    add hl, sp                                    ; $7640: $39
    sub b                                         ; $7641: $90
    db $ed                                        ; $7642: $ed
    add sp, $31                                   ; $7643: $e8 $31
    cp b                                          ; $7645: $b8
    ld bc, $bffc                                  ; $7646: $01 $fc $bf
    sub b                                         ; $7649: $90

jr_05b_764a:
    cpl                                           ; $764a: $2f
    ld a, l                                       ; $764b: $7d
    push af                                       ; $764c: $f5
    cp a                                          ; $764d: $bf
    ld l, h                                       ; $764e: $6c
    rst $08                                       ; $764f: $cf
    add hl, bc                                    ; $7650: $09
    push de                                       ; $7651: $d5
    sbc $31                                       ; $7652: $de $31
    ld l, l                                       ; $7654: $6d
    push hl                                       ; $7655: $e5
    nop                                           ; $7656: $00
    sbc c                                         ; $7657: $99
    rst $30                                       ; $7658: $f7
    pop bc                                        ; $7659: $c1
    ld a, [$0e02]                                 ; $765a: $fa $02 $0e
    sub b                                         ; $765d: $90
    ld a, c                                       ; $765e: $79
    rra                                           ; $765f: $1f
    xor h                                         ; $7660: $ac
    and c                                         ; $7661: $a1
    nop                                           ; $7662: $00
    ld a, h                                       ; $7663: $7c
    or c                                          ; $7664: $b1
    db $10                                        ; $7665: $10
    ld a, [hl+]                                   ; $7666: $2a
    ld h, c                                       ; $7667: $61
    add hl, bc                                    ; $7668: $09
    ld c, a                                       ; $7669: $4f
    ld a, a                                       ; $766a: $7f
    cp $ca                                        ; $766b: $fe $ca
    sbc a                                         ; $766d: $9f
    ld h, c                                       ; $766e: $61
    cp $6b                                        ; $766f: $fe $6b
    ei                                            ; $7671: $fb
    ld c, c                                       ; $7672: $49
    pop af                                        ; $7673: $f1
    ld a, h                                       ; $7674: $7c
    ld b, d                                       ; $7675: $42
    ld l, h                                       ; $7676: $6c
    ld hl, $3c97                                  ; $7677: $21 $97 $3c
    ld e, $e3                                     ; $767a: $1e $e3
    ld b, h                                       ; $767c: $44
    dec h                                         ; $767d: $25
    dec d                                         ; $767e: $15
    db $dd                                        ; $767f: $dd
    inc h                                         ; $7680: $24
    rst $30                                       ; $7681: $f7
    ret c                                         ; $7682: $d8

    daa                                           ; $7683: $27
    add b                                         ; $7684: $80
    ld [hl], e                                    ; $7685: $73
    ld c, e                                       ; $7686: $4b
    cp l                                          ; $7687: $bd
    pop de                                        ; $7688: $d1
    ld b, h                                       ; $7689: $44
    ld a, [hl-]                                   ; $768a: $3a
    sbc b                                         ; $768b: $98
    xor $24                                       ; $768c: $ee $24
    ld h, d                                       ; $768e: $62
    ld [hl], a                                    ; $768f: $77
    add h                                         ; $7690: $84
    dec [hl]                                      ; $7691: $35
    ld e, l                                       ; $7692: $5d
    nop                                           ; $7693: $00
    sbc h                                         ; $7694: $9c
    ld hl, $b07f                                  ; $7695: $21 $7f $b0
    push de                                       ; $7698: $d5
    dec e                                         ; $7699: $1d
    ld h, a                                       ; $769a: $67
    add $96                                       ; $769b: $c6 $96
    xor $51                                       ; $769d: $ee $51
    or d                                          ; $769f: $b2
    ld a, a                                       ; $76a0: $7f
    rst $18                                       ; $76a1: $df
    rst $38                                       ; $76a2: $ff
    cpl                                           ; $76a3: $2f
    dec e                                         ; $76a4: $1d
    ld a, [c]                                     ; $76a5: $f2
    rst $30                                       ; $76a6: $f7
    sub d                                         ; $76a7: $92
    jp Jump_05b_739d                              ; $76a8: $c3 $9d $73


    call z, $83cf                                 ; $76ab: $cc $cf $83
    xor l                                         ; $76ae: $ad
    or b                                          ; $76af: $b0
    sub h                                         ; $76b0: $94
    ccf                                           ; $76b1: $3f
    cp e                                          ; $76b2: $bb
    rst $38                                       ; $76b3: $ff
    ld c, e                                       ; $76b4: $4b
    ld b, l                                       ; $76b5: $45
    ld h, a                                       ; $76b6: $67
    call $ea88                                    ; $76b7: $cd $88 $ea
    ld [bc], a                                    ; $76ba: $02
    ld a, h                                       ; $76bb: $7c
    db $db                                        ; $76bc: $db
    and h                                         ; $76bd: $a4
    add e                                         ; $76be: $83
    jp hl                                         ; $76bf: $e9


    ld c, [hl]                                    ; $76c0: $4e
    ld [hl+], a                                   ; $76c1: $22
    halt                                          ; $76c2: $76
    ld b, a                                       ; $76c3: $47
    or h                                          ; $76c4: $b4
    ld [hl], b                                    ; $76c5: $70
    ld h, a                                       ; $76c6: $67
    ld l, h                                       ; $76c7: $6c
    ret                                           ; $76c8: $c9


    ld [hl-], a                                   ; $76c9: $32
    xor [hl]                                      ; $76ca: $ae
    sbc h                                         ; $76cb: $9c
    ld a, [de]                                    ; $76cc: $1a
    ld c, d                                       ; $76cd: $4a
    db $fc                                        ; $76ce: $fc
    cp b                                          ; $76cf: $b8
    add hl, sp                                    ; $76d0: $39
    halt                                          ; $76d1: $76
    ld a, a                                       ; $76d2: $7f
    cp $d6                                        ; $76d3: $fe $d6
    xor e                                         ; $76d5: $ab
    inc sp                                        ; $76d6: $33
    ld [hl], $1d                                  ; $76d7: $36 $1d
    ld l, e                                       ; $76d9: $6b
    ei                                            ; $76da: $fb
    rla                                           ; $76db: $17
    nop                                           ; $76dc: $00
    ret nc                                        ; $76dd: $d0

    sbc e                                         ; $76de: $9b
    ld d, h                                       ; $76df: $54
    add l                                         ; $76e0: $85
    db $ec                                        ; $76e1: $ec
    rst $10                                       ; $76e2: $d7
    ld h, h                                       ; $76e3: $64
    ld d, c                                       ; $76e4: $51
    jp z, $4bff                                   ; $76e5: $ca $ff $4b

    add hl, sp                                    ; $76e8: $39
    xor $fd                                       ; $76e9: $ee $fd
    ld e, a                                       ; $76eb: $5f
    ld a, [c]                                     ; $76ec: $f2
    ccf                                           ; $76ed: $3f
    push bc                                       ; $76ee: $c5
    xor l                                         ; $76ef: $ad
    ld c, e                                       ; $76f0: $4b
    cp h                                          ; $76f1: $bc
    set 4, b                                      ; $76f2: $cb $e0
    scf                                           ; $76f4: $37
    ld a, e                                       ; $76f5: $7b
    reti                                          ; $76f6: $d9


    rla                                           ; $76f7: $17
    or $7f                                        ; $76f8: $f6 $7f
    add hl, hl                                    ; $76fa: $29
    ld e, d                                       ; $76fb: $5a
    dec d                                         ; $76fc: $15
    ld [$4e6c], a                                 ; $76fd: $ea $6c $4e
    ld [hl+], a                                   ; $7700: $22
    call Call_05b_5c2f                            ; $7701: $cd $2f $5c
    db $eb                                        ; $7704: $eb
    cp a                                          ; $7705: $bf
    db $e4                                        ; $7706: $e4
    add hl, sp                                    ; $7707: $39
    xor [hl]                                      ; $7708: $ae
    ld l, l                                       ; $7709: $6d
    ld c, a                                       ; $770a: $4f
    inc [hl]                                      ; $770b: $34
    call Call_05b_7ff5                            ; $770c: $cd $f5 $7f
    xor l                                         ; $770f: $ad
    ld e, a                                       ; $7710: $5f
    rst $30                                       ; $7711: $f7
    jr c, jr_05b_773b                             ; $7712: $38 $27

    sub h                                         ; $7714: $94
    rst $28                                       ; $7715: $ef
    sbc d                                         ; $7716: $9a
    and $d7                                       ; $7717: $e6 $d7
    ccf                                           ; $7719: $3f
    sub h                                         ; $771a: $94
    inc e                                         ; $771b: $1c
    db $ec                                        ; $771c: $ec
    ld [hl], $c9                                  ; $771d: $36 $c9
    rst $08                                       ; $771f: $cf
    cp b                                          ; $7720: $b8
    ret c                                         ; $7721: $d8

    xor [hl]                                      ; $7722: $ae
    ld h, b                                       ; $7723: $60
    or h                                          ; $7724: $b4
    add hl, sp                                    ; $7725: $39
    ld c, h                                       ; $7726: $4c
    cp $a6                                        ; $7727: $fe $a6
    ld a, a                                       ; $7729: $7f
    rst $38                                       ; $772a: $ff
    sbc a                                         ; $772b: $9f
    di                                            ; $772c: $f3
    rla                                           ; $772d: $17
    nop                                           ; $772e: $00
    sbc h                                         ; $772f: $9c
    ld [hl], c                                    ; $7730: $71
    ld [hl], d                                    ; $7731: $72
    ld [de], a                                    ; $7732: $12
    inc a                                         ; $7733: $3c
    cp d                                          ; $7734: $ba
    rst $00                                       ; $7735: $c7
    dec h                                         ; $7736: $25
    add sp, -$2b                                  ; $7737: $e8 $d5
    db $fc                                        ; $7739: $fc
    push de                                       ; $773a: $d5

jr_05b_773b:
    db $fc                                        ; $773b: $fc
    ld b, d                                       ; $773c: $42
    jr c, jr_05b_7789                             ; $773d: $38 $4a

    push af                                       ; $773f: $f5
    cp [hl]                                       ; $7740: $be
    rst $38                                       ; $7741: $ff
    ld a, a                                       ; $7742: $7f
    ld l, a                                       ; $7743: $6f
    ld b, l                                       ; $7744: $45
    add hl, hl                                    ; $7745: $29
    rst $00                                       ; $7746: $c7
    dec d                                         ; $7747: $15
    sbc [hl]                                      ; $7748: $9e
    di                                            ; $7749: $f3
    jp z, Jump_05b_677f                           ; $774a: $ca $7f $67

    db $fc                                        ; $774d: $fc
    ld b, e                                       ; $774e: $43
    ld bc, $64fc                                  ; $774f: $01 $fc $64
    ld b, [hl]                                    ; $7752: $46
    jp nz, Jump_05b_5bfc                          ; $7753: $c2 $fc $5b

    dec d                                         ; $7756: $15
    sbc d                                         ; $7757: $9a
    ld e, a                                       ; $7758: $5f
    rst $18                                       ; $7759: $df
    ld c, c                                       ; $775a: $49
    pop af                                        ; $775b: $f1
    ld a, h                                       ; $775c: $7c
    ld b, d                                       ; $775d: $42
    ld l, h                                       ; $775e: $6c
    ld hl, $0017                                  ; $775f: $21 $17 $00
    cp h                                          ; $7762: $bc
    cp e                                          ; $7763: $bb
    db $dd                                        ; $7764: $dd
    sbc e                                         ; $7765: $9b
    inc d                                         ; $7766: $14
    rst $08                                       ; $7767: $cf
    inc sp                                        ; $7768: $33
    sub [hl]                                      ; $7769: $96
    ld e, l                                       ; $776a: $5d
    ld [hl], d                                    ; $776b: $72
    cp b                                          ; $776c: $b8
    ld [hl], e                                    ; $776d: $73
    ld c, $39                                     ; $776e: $0e $39
    ld b, b                                       ; $7770: $40
    and $7d                                       ; $7771: $e6 $7d
    or b                                          ; $7773: $b0
    sub $9f                                       ; $7774: $d6 $9f
    adc c                                         ; $7776: $89
    add d                                         ; $7777: $82
    ld d, c                                       ; $7778: $51
    rst $20                                       ; $7779: $e7
    scf                                           ; $777a: $37
    db $ed                                        ; $777b: $ed
    pop af                                        ; $777c: $f1
    jp c, Jump_05b_4bf4                           ; $777d: $da $f4 $4b

    or [hl]                                       ; $7780: $b6
    rst $20                                       ; $7781: $e7
    ld e, [hl]                                    ; $7782: $5e
    inc sp                                        ; $7783: $33
    cp d                                          ; $7784: $ba
    nop                                           ; $7785: $00
    inc a                                         ; $7786: $3c
    sbc a                                         ; $7787: $9f
    db $10                                        ; $7788: $10

jr_05b_7789:
    ld e, e                                       ; $7789: $5b
    ld c, b                                       ; $778a: $48
    ld d, d                                       ; $778b: $52
    ld d, $29                                     ; $778c: $16 $29
    sub l                                         ; $778e: $95
    or b                                          ; $778f: $b0
    inc [hl]                                      ; $7790: $34
    rst $18                                       ; $7791: $df
    ld a, [c]                                     ; $7792: $f2
    xor a                                         ; $7793: $af
    pop de                                        ; $7794: $d1
    add d                                         ; $7795: $82
    ld d, c                                       ; $7796: $51
    or [hl]                                       ; $7797: $b6
    rst $20                                       ; $7798: $e7
    sub b                                         ; $7799: $90
    ld [hl], d                                    ; $779a: $72
    ld a, [hl-]                                   ; $779b: $3a
    ld e, e                                       ; $779c: $5b
    ld c, c                                       ; $779d: $49
    call $c251                                    ; $779e: $cd $51 $c2
    or e                                          ; $77a1: $b3
    dec h                                         ; $77a2: $25
    rra                                           ; $77a3: $1f
    rst $10                                       ; $77a4: $d7
    db $ec                                        ; $77a5: $ec
    cp c                                          ; $77a6: $b9
    push hl                                       ; $77a7: $e5
    ld sp, hl                                     ; $77a8: $f9
    xor $c4                                       ; $77a9: $ee $c4
    sub d                                         ; $77ab: $92
    ld c, a                                       ; $77ac: $4f
    ld h, h                                       ; $77ad: $64
    ld c, l                                       ; $77ae: $4d
    or d                                          ; $77af: $b2
    db $10                                        ; $77b0: $10
    sub [hl]                                      ; $77b1: $96
    ld h, b                                       ; $77b2: $60
    call nc, Call_000_35cd                        ; $77b3: $d4 $cd $35
    rst $20                                       ; $77b6: $e7
    jp c, $e26a                                   ; $77b7: $da $6a $e2

    call nz, $a8ad                                ; $77ba: $c4 $ad $a8
    ld c, e                                       ; $77bd: $4b
    ld a, h                                       ; $77be: $7c
    ld a, a                                       ; $77bf: $7f
    ld [de], a                                    ; $77c0: $12
    call nz, $394c                                ; $77c1: $c4 $4c $39
    xor [hl]                                      ; $77c4: $ae
    db $fc                                        ; $77c5: $fc
    ccf                                           ; $77c6: $3f
    ldh a, [$5b]                                  ; $77c7: $f0 $5b
    rst $38                                       ; $77c9: $ff
    res 6, [hl]                                   ; $77ca: $cb $b6
    ld b, [hl]                                    ; $77cc: $46
    db $eb                                        ; $77cd: $eb
    sbc $73                                       ; $77ce: $de $73
    ld c, b                                       ; $77d0: $48
    ld l, c                                       ; $77d1: $69
    db $f4                                        ; $77d2: $f4
    adc h                                         ; $77d3: $8c
    ld [hl], e                                    ; $77d4: $73
    ld c, b                                       ; $77d5: $48
    ld l, c                                       ; $77d6: $69
    sub [hl]                                      ; $77d7: $96
    ld d, e                                       ; $77d8: $53
    add hl, de                                    ; $77d9: $19
    ld e, l                                       ; $77da: $5d
    nop                                           ; $77db: $00
    ret nc                                        ; $77dc: $d0

    and l                                         ; $77dd: $a5
    inc e                                         ; $77de: $1c
    ld d, a                                       ; $77df: $57
    cp $36                                        ; $77e0: $fe $36
    sub c                                         ; $77e2: $91
    ld l, h                                       ; $77e3: $6c
    sbc e                                         ; $77e4: $9b
    or h                                          ; $77e5: $b4
    dec e                                         ; $77e6: $1d
    rst $20                                       ; $77e7: $e7
    ld d, b                                       ; $77e8: $50
    xor l                                         ; $77e9: $ad
    and $8f                                       ; $77ea: $e6 $8f
    rst $38                                       ; $77ec: $ff
    and h                                         ; $77ed: $a4
    xor $d1                                       ; $77ee: $ee $d1
    adc d                                         ; $77f0: $8a
    sub l                                         ; $77f1: $95
    ld l, l                                       ; $77f2: $6d
    sub e                                         ; $77f3: $93
    ld [hl], d                                    ; $77f4: $72
    ld e, h                                       ; $77f5: $5c
    ld h, l                                       ; $77f6: $65
    db $d3                                        ; $77f7: $d3
    halt                                          ; $77f8: $76
    ld e, d                                       ; $77f9: $5a
    ld b, h                                       ; $77fa: $44
    ld c, l                                       ; $77fb: $4d
    and d                                         ; $77fc: $a2
    ld d, d                                       ; $77fd: $52
    cp $fe                                        ; $77fe: $fe $fe
    rst $38                                       ; $7800: $ff
    inc [hl]                                      ; $7801: $34
    ld sp, hl                                     ; $7802: $f9
    ld b, h                                       ; $7803: $44
    sub $44                                       ; $7804: $d6 $44
    rla                                           ; $7806: $17
    nop                                           ; $7807: $00
    sbc [hl]                                      ; $7808: $9e
    rst $00                                       ; $7809: $c7
    add c                                         ; $780a: $81
    and e                                         ; $780b: $a3
    ld d, [hl]                                    ; $780c: $56
    xor $a6                                       ; $780d: $ee $a6
    rst $08                                       ; $780f: $cf
    adc $86                                       ; $7810: $ce $86
    ld a, d                                       ; $7812: $7a
    db $f4                                        ; $7813: $f4
    call c, $c1d5                                 ; $7814: $dc $d5 $c1
    ld [hl], h                                    ; $7817: $74
    daa                                           ; $7818: $27
    ld de, $63bb                                  ; $7819: $11 $bb $63
    sbc e                                         ; $781c: $9b
    db $e4                                        ; $781d: $e4
    add hl, hl                                    ; $781e: $29
    sbc $5f                                       ; $781f: $de $5f
    ei                                            ; $7821: $fb
    ld h, [hl]                                    ; $7822: $66
    ld a, a                                       ; $7823: $7f
    add hl, bc                                    ; $7824: $09
    ld a, [hl-]                                   ; $7825: $3a
    sbc l                                         ; $7826: $9d
    and h                                         ; $7827: $a4
    sub h                                         ; $7828: $94
    ld c, d                                       ; $7829: $4a
    add a                                         ; $782a: $87
    dec hl                                        ; $782b: $2b
    ld l, e                                       ; $782c: $6b
    ld e, d                                       ; $782d: $5a
    ld e, e                                       ; $782e: $5b
    reti                                          ; $782f: $d9


    sbc [hl]                                      ; $7830: $9e
    inc de                                        ; $7831: $13
    ld a, [c]                                     ; $7832: $f2
    ld a, a                                       ; $7833: $7f
    rst $20                                       ; $7834: $e7
    rst $10                                       ; $7835: $d7
    dec b                                         ; $7836: $05
    nop                                           ; $7837: $00
    inc a                                         ; $7838: $3c
    ld bc, $7849                                  ; $7839: $01 $49 $78
    inc de                                        ; $783c: $13
    ld d, d                                       ; $783d: $52
    adc [hl]                                      ; $783e: $8e
    xor e                                         ; $783f: $ab
    ld a, h                                       ; $7840: $7c
    inc bc                                        ; $7841: $03
    ld b, d                                       ; $7842: $42
    ld c, d                                       ; $7843: $4a
    xor c                                         ; $7844: $a9
    ld [c], a                                     ; $7845: $e2
    sbc h                                         ; $7846: $9c
    ld d, b                                       ; $7847: $50
    cp [hl]                                       ; $7848: $be
    ld h, c                                       ; $7849: $61
    cp l                                          ; $784a: $bd
    ld [hl], l                                    ; $784b: $75
    adc c                                         ; $784c: $89
    ld l, a                                       ; $784d: $6f
    ld c, a                                       ; $784e: $4f
    sub e                                         ; $784f: $93
    and $18                                       ; $7850: $e6 $18
    rlca                                          ; $7852: $07
    xor l                                         ; $7853: $ad
    rst $38                                       ; $7854: $ff
    sub e                                         ; $7855: $93

Jump_05b_7856:
    ld [c], a                                     ; $7856: $e2
    ld sp, hl                                     ; $7857: $f9
    add h                                         ; $7858: $84
    ret c                                         ; $7859: $d8

    ld b, d                                       ; $785a: $42
    and b                                         ; $785b: $a0
    nop                                           ; $785c: $00
    ld c, $30                                     ; $785d: $0e $30
    xor c                                         ; $785f: $a9
    ld sp, hl                                     ; $7860: $f9
    db $eb                                        ; $7861: $eb
    cp a                                          ; $7862: $bf
    inc l                                         ; $7863: $2c
    ld h, h                                       ; $7864: $64
    db $db                                        ; $7865: $db
    xor d                                         ; $7866: $aa
    db $dd                                        ; $7867: $dd
    ld [de], a                                    ; $7868: $12
    sub [hl]                                      ; $7869: $96
    ld a, [hl-]                                   ; $786a: $3a
    jp nc, $9ca6                                  ; $786b: $d2 $a6 $9c

    ld l, $00                                     ; $786e: $2e $00
    ld e, $73                                     ; $7870: $1e $73
    ld h, l                                       ; $7872: $65
    or [hl]                                       ; $7873: $b6
    dec a                                         ; $7874: $3d
    cp c                                          ; $7875: $b9
    inc b                                         ; $7876: $04
    and e                                         ; $7877: $a3
    ld a, [hl+]                                   ; $7878: $2a
    sub h                                         ; $7879: $94
    rst $28                                       ; $787a: $ef

jr_05b_787b:
    jp c, Jump_05b_7e6a                           ; $787b: $da $6a $7e

    db $fd                                        ; $787e: $fd
    daa                                           ; $787f: $27
    push bc                                       ; $7880: $c5
    di                                            ; $7881: $f3
    adc h                                         ; $7882: $8c
    ld h, l                                       ; $7883: $65
    ld d, b                                       ; $7884: $50
    nop                                           ; $7885: $00
    ret nc                                        ; $7886: $d0

    and l                                         ; $7887: $a5
    ld a, h                                       ; $7888: $7c
    db $e3                                        ; $7889: $e3
    ret nc                                        ; $788a: $d0

    dec b                                         ; $788b: $05
    nop                                           ; $788c: $00

jr_05b_788d:
    cp h                                          ; $788d: $bc
    jr jr_05b_788d                                ; $788e: $18 $fd

    ld a, [c]                                     ; $7890: $f2
    or a                                          ; $7891: $b7
    adc c                                         ; $7892: $89
    inc [hl]                                      ; $7893: $34
    ld [hl], a                                    ; $7894: $77
    reti                                          ; $7895: $d9


    or b                                          ; $7896: $b0
    ld a, [hl]                                    ; $7897: $7e
    ld l, [hl]                                    ; $7898: $6e
    ld [hl], c                                    ; $7899: $71
    add [hl]                                      ; $789a: $86
    and $77                                       ; $789b: $e6 $77
    rst $00                                       ; $789d: $c7
    adc c                                         ; $789e: $89
    sub b                                         ; $789f: $90
    and a                                         ; $78a0: $a7
    ld e, b                                       ; $78a1: $58
    ei                                            ; $78a2: $fb
    add d                                         ; $78a3: $82
    ld d, c                                       ; $78a4: $51
    ld d, $a5                                     ; $78a5: $16 $a5
    and d                                         ; $78a7: $a2
    ret                                           ; $78a8: $c9


    ld h, l                                       ; $78a9: $65
    ld d, c                                       ; $78aa: $51
    and h                                         ; $78ab: $a4
    ld l, b                                       ; $78ac: $68
    and l                                         ; $78ad: $a5
    ld a, a                                       ; $78ae: $7f
    add $af                                       ; $78af: $c6 $af
    ret                                           ; $78b1: $c9


    ld e, a                                       ; $78b2: $5f
    ld l, e                                       ; $78b3: $6b
    ld [hl+], a                                   ; $78b4: $22
    ld sp, hl                                     ; $78b5: $f9
    ld l, b                                       ; $78b6: $68
    inc sp                                        ; $78b7: $33
    and d                                         ; $78b8: $a2
    db $ec                                        ; $78b9: $ec
    cp c                                          ; $78ba: $b9
    ld bc, $bb9c                                  ; $78bb: $01 $9c $bb
    ld b, l                                       ; $78be: $45
    add hl, hl                                    ; $78bf: $29
    sub l                                         ; $78c0: $95
    ld l, h                                       ; $78c1: $6c
    adc e                                         ; $78c2: $8b
    add h                                         ; $78c3: $84
    daa                                           ; $78c4: $27
    ld a, [hl-]                                   ; $78c5: $3a
    add hl, hl                                    ; $78c6: $29
    sbc [hl]                                      ; $78c7: $9e
    ld h, a                                       ; $78c8: $67
    inc l                                         ; $78c9: $2c
    cp e                                          ; $78ca: $bb
    call nz, $e271                                ; $78cb: $c4 $71 $e2
    cp [hl]                                       ; $78ce: $be
    ld b, e                                       ; $78cf: $43
    ld [$eec1], sp                                ; $78d0: $08 $c1 $ee
    xor a                                         ; $78d3: $af
    adc b                                         ; $78d4: $88
    sub [hl]                                      ; $78d5: $96
    ld l, l                                       ; $78d6: $6d
    adc l                                         ; $78d7: $8d
    cp a                                          ; $78d8: $bf
    nop                                           ; $78d9: $00
    inc a                                         ; $78da: $3c
    sbc a                                         ; $78db: $9f
    db $10                                        ; $78dc: $10
    ld e, e                                       ; $78dd: $5b
    ret z                                         ; $78de: $c8

    sbc [hl]                                      ; $78df: $9e
    di                                            ; $78e0: $f3
    jp nz, $fe52                                  ; $78e1: $c2 $52 $fe

    db $ec                                        ; $78e4: $ec
    ld a, [hl]                                    ; $78e5: $7e
    db $eb                                        ; $78e6: $eb
    dec d                                         ; $78e7: $15
    adc h                                         ; $78e8: $8c
    db $fd                                        ; $78e9: $fd
    ld e, e                                       ; $78ea: $5b
    sbc d                                         ; $78eb: $9a
    cp e                                          ; $78ec: $bb
    ld d, l                                       ; $78ed: $55
    ld l, b                                       ; $78ee: $68
    db $fd                                        ; $78ef: $fd
    ld sp, hl                                     ; $78f0: $f9
    cp a                                          ; $78f1: $bf
    ld h, [hl]                                    ; $78f2: $66
    jr nc, jr_05b_787b                            ; $78f3: $30 $86

    db $dd                                        ; $78f5: $dd
    sbc a                                         ; $78f6: $9f
    rst $38                                       ; $78f7: $ff
    ld l, e                                       ; $78f8: $6b
    ld l, [hl]                                    ; $78f9: $6e
    ld e, $d6                                     ; $78fa: $1e $d6
    ld [hl], h                                    ; $78fc: $74
    ld bc, $db7c                                  ; $78fd: $01 $7c $db
    inc h                                         ; $7900: $24
    db $db                                        ; $7901: $db
    ld [hl+], a                                   ; $7902: $22
    dec [hl]                                      ; $7903: $35
    pop de                                        ; $7904: $d1
    add hl, sp                                    ; $7905: $39
    and h                                         ; $7906: $a4
    adc [hl]                                      ; $7907: $8e
    add sp, -$5c                                  ; $7908: $e8 $a4
    ld hl, sp-$02                                 ; $790a: $f8 $fe
    inc h                                         ; $790c: $24
    adc b                                         ; $790d: $88
    add hl, de                                    ; $790e: $19
    inc d                                         ; $790f: $14
    nop                                           ; $7910: $00
    cp h                                          ; $7911: $bc
    pop bc                                        ; $7912: $c1
    adc b                                         ; $7913: $88
    ld c, d                                       ; $7914: $4a
    inc de                                        ; $7915: $13
    ld c, a                                       ; $7916: $4f
    and h                                         ; $7917: $a4
    cp l                                          ; $7918: $bd
    xor a                                         ; $7919: $af
    ld b, e                                       ; $791a: $43
    db $d3                                        ; $791b: $d3
    sub [hl]                                      ; $791c: $96
    sub $ce                                       ; $791d: $d6 $ce
    and a                                         ; $791f: $a7
    ldh a, [$bf]                                  ; $7920: $f0 $bf
    xor l                                         ; $7922: $ad
    ld a, [c]                                     ; $7923: $f2
    ld h, a                                       ; $7924: $67
    dec e                                         ; $7925: $1d
    ld [hl], l                                    ; $7926: $75
    ld bc, $dfbc                                  ; $7927: $01 $bc $df
    add [hl]                                      ; $792a: $86
    ld c, c                                       ; $792b: $49
    pop af                                        ; $792c: $f1
    inc b                                         ; $792d: $04
    inc h                                         ; $792e: $24
    pop hl                                        ; $792f: $e1
    ld c, l                                       ; $7930: $4d
    ld c, b                                       ; $7931: $48
    dec a                                         ; $7932: $3d
    adc $aa                                       ; $7933: $ce $aa
    ld a, a                                       ; $7935: $7f
    cp $da                                        ; $7936: $fe $da
    ld d, $37                                     ; $7938: $16 $37
    nop                                           ; $793a: $00
    sbc h                                         ; $793b: $9c
    and c                                         ; $793c: $a1
    add $55                                       ; $793d: $c6 $55
    cp [hl]                                       ; $793f: $be
    ld h, c                                       ; $7940: $61
    cp l                                          ; $7941: $bd
    dec h                                         ; $7942: $25
    ld [hl], a                                    ; $7943: $77
    db $d3                                        ; $7944: $d3
    ld h, a                                       ; $7945: $67
    ld h, a                                       ; $7946: $67
    db $e3                                        ; $7947: $e3
    db $f4                                        ; $7948: $f4
    ld e, a                                       ; $7949: $5f
    ld a, [c]                                     ; $794a: $f2
    inc d                                         ; $794b: $14
    dec hl                                        ; $794c: $2b
    xor c                                         ; $794d: $a9
    inc sp                                        ; $794e: $33
    ld b, d                                       ; $794f: $42

jr_05b_7950:
    ld d, $17                                     ; $7950: $16 $17
    nop                                           ; $7952: $00
    ld c, [hl]                                    ; $7953: $4e
    jr c, jr_05b_79d2                             ; $7954: $38 $7c

    or $e9                                        ; $7956: $f6 $e9
    sub [hl]                                      ; $7958: $96
    inc a                                         ; $7959: $3c
    push bc                                       ; $795a: $c5
    ld c, d                                       ; $795b: $4a
    ld a, [hl-]                                   ; $795c: $3a
    ld bc, $4e00                                  ; $795d: $01 $00 $4e
    ld [hl], b                                    ; $7960: $70
    db $f4                                        ; $7961: $f4
    sub a                                         ; $7962: $97
    xor $8d                                       ; $7963: $ee $8d
    inc de                                        ; $7965: $13
    rst $20                                       ; $7966: $e7
    ld d, b                                       ; $7967: $50
    xor l                                         ; $7968: $ad
    ld c, $a6                                     ; $7969: $0e $a6
    dec sp                                        ; $796b: $3b
    adc c                                         ; $796c: $89
    ret c                                         ; $796d: $d8

    dec e                                         ; $796e: $1d
    ld d, c                                       ; $796f: $51
    ld a, [hl-]                                   ; $7970: $3a
    inc bc                                        ; $7971: $03
    and a                                         ; $7972: $a7
    ld b, l                                       ; $7973: $45
    ld l, l                                       ; $7974: $6d
    ld d, d                                       ; $7975: $52
    rst $30                                       ; $7976: $f7
    add sp, $7e                                   ; $7977: $e8 $7e
    reti                                          ; $7979: $d9


    ld l, [hl]                                    ; $797a: $6e
    sub c                                         ; $797b: $91
    or b                                          ; $797c: $b0
    add h                                         ; $797d: $84
    rst $30                                       ; $797e: $f7
    or a                                          ; $797f: $b7
    jp nc, $f9af                                  ; $7980: $d2 $af $f9

Call_05b_7983:
    ld h, a                                       ; $7983: $67
    adc h                                         ; $7984: $8c
    adc [hl]                                      ; $7985: $8e
    or d                                          ; $7986: $b2
    cp a                                          ; $7987: $bf
    db $e4                                        ; $7988: $e4
    ld a, c                                       ; $7989: $79
    xor h                                         ; $798a: $ac
    ld l, l                                       ; $798b: $6d
    ld c, a                                       ; $798c: $4f
    ld l, $39                                     ; $798d: $2e $39
    ld b, b                                       ; $798f: $40
    and $7d                                       ; $7990: $e6 $7d
    or b                                          ; $7992: $b0
    sbc $12                                       ; $7993: $de $12
    ld a, a                                       ; $7995: $7f
    halt                                          ; $7996: $76
    ld [hl-], a                                   ; $7997: $32
    rst $38                                       ; $7998: $ff
    db $d3                                        ; $7999: $d3
    ld sp, hl                                     ; $799a: $f9
    and l                                         ; $799b: $a5
    adc c                                         ; $799c: $89
    ld l, h                                       ; $799d: $6c
    add $de                                       ; $799e: $c6 $de
    cp $7f                                        ; $79a0: $fe $7f
    xor c                                         ; $79a2: $a9
    sub c                                         ; $79a3: $91
    push de                                       ; $79a4: $d5
    ld l, [hl]                                    ; $79a5: $6e
    jp hl                                         ; $79a6: $e9


    db $fc                                        ; $79a7: $fc
    ld hl, sp-$16                                 ; $79a8: $f8 $ea
    rst $18                                       ; $79aa: $df
    ld a, d                                       ; $79ab: $7a
    call $b9b0                                    ; $79ac: $cd $b0 $b9
    add hl, de                                    ; $79af: $19
    rst $10                                       ; $79b0: $d7
    add hl, sp                                    ; $79b1: $39
    inc b                                         ; $79b2: $04
    dec h                                         ; $79b3: $25
    ld l, b                                       ; $79b4: $68
    ld b, [hl]                                    ; $79b5: $46
    call nc, $acca                                ; $79b6: $d4 $ca $ac
    add hl, hl                                    ; $79b9: $29
    and a                                         ; $79ba: $a7
    ld e, d                                       ; $79bb: $5a
    push af                                       ; $79bc: $f5
    jr c, jr_05b_7950                             ; $79bd: $38 $91

    ld a, a                                       ; $79bf: $7f
    res 6, [hl]                                   ; $79c0: $cb $b6

jr_05b_79c2:
    ld c, c                                       ; $79c2: $49
    di                                            ; $79c3: $f3
    ld b, a                                       ; $79c4: $47
    rst $30                                       ; $79c5: $f7
    dec bc                                        ; $79c6: $0b
    ld a, [hl]                                    ; $79c7: $7e
    push hl                                       ; $79c8: $e5
    dec de                                        ; $79c9: $1b
    add hl, sp                                    ; $79ca: $39
    or l                                          ; $79cb: $b5
    inc e                                         ; $79cc: $1c
    jr nz, jr_05b_79c2                            ; $79cd: $20 $f3

    ld a, $58                                     ; $79cf: $3e $58
    ld l, a                                       ; $79d1: $6f

Call_05b_79d2:
jr_05b_79d2:
    ret                                           ; $79d2: $c9


    rst $00                                       ; $79d3: $c7
    dec [hl]                                      ; $79d4: $35
    ld sp, hl                                     ; $79d5: $f9
    ld a, e                                       ; $79d6: $7b
    rlca                                          ; $79d7: $07
    sub l                                         ; $79d8: $95
    ld a, d                                       ; $79d9: $7a
    or b                                          ; $79da: $b0
    ld a, h                                       ; $79db: $7c
    db $eb                                        ; $79dc: $eb
    sub d                                         ; $79dd: $92
    rst $00                                       ; $79de: $c7
    sub h                                         ; $79df: $94
    ld b, [hl]                                    ; $79e0: $46
    sub e                                         ; $79e1: $93
    ld a, [c]                                     ; $79e2: $f2
    or a                                          ; $79e3: $b7
    cp $61                                        ; $79e4: $fe $61
    cp d                                          ; $79e6: $ba
    ccf                                           ; $79e7: $3f
    add l                                         ; $79e8: $85

jr_05b_79e9:
    ldh [$39], a                                  ; $79e9: $e0 $39
    ld l, e                                       ; $79eb: $6b
    ld a, e                                       ; $79ec: $7b
    rst $18                                       ; $79ed: $df
    ld e, a                                       ; $79ee: $5f
    ld a, [c]                                     ; $79ef: $f2
    rst $30                                       ; $79f0: $f7
    db $eb                                        ; $79f1: $eb
    ld [hl], d                                    ; $79f2: $72
    ld [bc], a                                    ; $79f3: $02
    nop                                           ; $79f4: $00
    ld c, [hl]                                    ; $79f5: $4e
    ldh a, [rTAC]                                 ; $79f6: $f0 $07
    bit 4, e                                      ; $79f8: $cb $63
    ld l, l                                       ; $79fa: $6d
    ld c, e                                       ; $79fb: $4b
    xor $a6                                       ; $79fc: $ee $a6
    rst $08                                       ; $79fe: $cf
    adc $86                                       ; $79ff: $ce $86
    inc de                                        ; $7a01: $13
    rla                                           ; $7a02: $17
    nop                                           ; $7a03: $00
    sbc [hl]                                      ; $7a04: $9e
    db $e3                                        ; $7a05: $e3
    sbc $77                                       ; $7a06: $de $77
    jr z, jr_05b_79e9                             ; $7a08: $28 $df

    add b                                         ; $7a0a: $80
    sub b                                         ; $7a0b: $90
    inc l                                         ; $7a0c: $2c
    ld c, d                                       ; $7a0d: $4a
    adc l                                         ; $7a0e: $8d
    xor h                                         ; $7a0f: $ac
    halt                                          ; $7a10: $76
    ld c, e                                       ; $7a11: $4b
    ld b, l                                       ; $7a12: $45
    inc sp                                        ; $7a13: $33
    cp e                                          ; $7a14: $bb
    xor c                                         ; $7a15: $a9
    sbc e                                         ; $7a16: $9b
    db $eb                                        ; $7a17: $eb
    adc $32                                       ; $7a18: $ce $32
    bit 6, a                                      ; $7a1a: $cb $77
    ei                                            ; $7a1c: $fb
    ld c, e                                       ; $7a1d: $4b
    ld [hl], $10                                  ; $7a1e: $36 $10
    ld e, [hl]                                    ; $7a20: $5e
    or e                                          ; $7a21: $b3
    cp a                                          ; $7a22: $bf
    call nz, $9b8f                                ; $7a23: $c4 $8f $9b
    ld h, e                                       ; $7a26: $63
    rst $30                                       ; $7a27: $f7
    rst $20                                       ; $7a28: $e7
    ld l, a                                       ; $7a29: $6f
    cp l                                          ; $7a2a: $bd
    jp z, $bb77                                   ; $7a2b: $ca $77 $bb

    ld e, a                                       ; $7a2e: $5f
    ld e, b                                       ; $7a2f: $58
    ld [$7e67], a                                 ; $7a30: $ea $67 $7e
    call nz, $d5b4                                ; $7a33: $c4 $b4 $d5
    ld a, [de]                                    ; $7a36: $1a
    jp z, $ed8f                                   ; $7a37: $ca $8f $ed

    and [hl]                                      ; $7a3a: $a6
    sbc e                                         ; $7a3b: $9b
    xor b                                         ; $7a3c: $a8
    ld [hl], h                                    ; $7a3d: $74
    rst $00                                       ; $7a3e: $c7
    ld b, d                                       ; $7a3f: $42
    xor b                                         ; $7a40: $a8
    dec b                                         ; $7a41: $05
    cp a                                          ; $7a42: $bf
    inc e                                         ; $7a43: $1c
    jr nz, @-$0b                                  ; $7a44: $20 $f3

    ld a, $58                                     ; $7a46: $3e $58
    ld l, a                                       ; $7a48: $6f
    ld e, l                                       ; $7a49: $5d
    ld a, [c]                                     ; $7a4a: $f2
    sbc b                                         ; $7a4b: $98
    jp nc, Jump_000_2a68                          ; $7a4c: $d2 $68 $2a

    pop af                                        ; $7a4f: $f1
    inc b                                         ; $7a50: $04
    inc h                                         ; $7a51: $24
    pop hl                                        ; $7a52: $e1
    ld c, l                                       ; $7a53: $4d
    ld l, b                                       ; $7a54: $68
    ld c, e                                       ; $7a55: $4b
    ld sp, hl                                     ; $7a56: $f9
    add $4d                                       ; $7a57: $c6 $4d
    ld d, h                                       ; $7a59: $54
    jp z, $fadf                                   ; $7a5a: $ca $df $fa

    add a                                         ; $7a5d: $87
    push af                                       ; $7a5e: $f5
    ld e, a                                       ; $7a5f: $5f
    ld [c], a                                     ; $7a60: $e2
    adc e                                         ; $7a61: $8b
    ld a, [hl+]                                   ; $7a62: $2a
    and d                                         ; $7a63: $a2
    jp nc, $d60c                                  ; $7a64: $d2 $0c $d6

    ld a, b                                       ; $7a67: $78
    rst $38                                       ; $7a68: $ff
    sub a                                         ; $7a69: $97
    ld a, b                                       ; $7a6a: $78
    ld a, $21                                     ; $7a6b: $3e $21
    or [hl]                                       ; $7a6d: $b6
    sub b                                         ; $7a6e: $90
    dec a                                         ; $7a6f: $3d
    daa                                           ; $7a70: $27
    ld l, $00                                     ; $7a71: $2e $00
    ld c, $90                                     ; $7a73: $0e $90
    ld a, c                                       ; $7a75: $79
    rra                                           ; $7a76: $1f
    xor h                                         ; $7a77: $ac
    cp c                                          ; $7a78: $b9
    push bc                                       ; $7a79: $c5
    add hl, de                                    ; $7a7a: $19
    sbc d                                         ; $7a7b: $9a
    rst $08                                       ; $7a7c: $cf
    and $db                                       ; $7a7d: $e6 $db
    ld [hl], d                                    ; $7a7f: $72
    adc e                                         ; $7a80: $8b
    rst $20                                       ; $7a81: $e7
    add hl, de                                    ; $7a82: $19
    res 2, d                                      ; $7a83: $cb $92
    jp nz, Jump_05b_597e                          ; $7a85: $c2 $7e $59

    ld l, b                                       ; $7a88: $68
    xor $56                                       ; $7a89: $ee $56
    dec l                                         ; $7a8b: $2d
    scf                                           ; $7a8c: $37
    nop                                           ; $7a8d: $00
    sbc h                                         ; $7a8e: $9c
    cp e                                          ; $7a8f: $bb
    ld b, l                                       ; $7a90: $45
    or d                                          ; $7a91: $b2
    db $10                                        ; $7a92: $10
    sub $25                                       ; $7a93: $d6 $25
    sbc $5f                                       ; $7a95: $de $5f
    reti                                          ; $7a97: $d9


    ld d, $29                                     ; $7a98: $16 $29
    cp e                                          ; $7a9a: $bb
    ld l, a                                       ; $7a9b: $6f
    ld h, d                                       ; $7a9c: $62
    adc h                                         ; $7a9d: $8c
    ld a, [hl-]                                   ; $7a9e: $3a
    xor c                                         ; $7a9f: $a9
    ld a, e                                       ; $7aa0: $7b
    dec sp                                        ; $7aa1: $3b
    ld c, d                                       ; $7aa2: $4a

Call_05b_7aa3:
    ld sp, hl                                     ; $7aa3: $f9
    ccf                                           ; $7aa4: $3f
    ei                                            ; $7aa5: $fb
    ld [hl], e                                    ; $7aa6: $73
    sub $fa                                       ; $7aa7: $d6 $fa
    push de                                       ; $7aa9: $d5
    ld [hl], h                                    ; $7aaa: $74
    adc $6f                                       ; $7aab: $ce $6f
    ld b, l                                       ; $7aad: $45
    add hl, bc                                    ; $7aae: $09
    dec bc                                        ; $7aaf: $0b
    ld a, [bc]                                    ; $7ab0: $0a
    nop                                           ; $7ab1: $00
    ld e, $21                                     ; $7ab2: $1e $21
    ld a, [bc]                                    ; $7ab4: $0a
    ld b, [hl]                                    ; $7ab5: $46
    cp h                                          ; $7ab6: $bc
    call nz, Call_05b_4a37                        ; $7ab7: $c4 $37 $4a
    ld c, l                                       ; $7aba: $4d
    ld e, c                                       ; $7abb: $59
    ld h, a                                       ; $7abc: $67
    sbc c                                         ; $7abd: $99
    ld c, $a5                                     ; $7abe: $0e $a5
    pop de                                        ; $7ac0: $d1
    ld c, l                                       ; $7ac1: $4d
    inc h                                         ; $7ac2: $24
    daa                                           ; $7ac3: $27
    dec hl                                        ; $7ac4: $2b
    bit 2, d                                      ; $7ac5: $cb $52
    and a                                         ; $7ac7: $a7
    db $e4                                        ; $7ac8: $e4
    rst $28                                       ; $7ac9: $ef
    sbc h                                         ; $7aca: $9c
    ld b, e                                       ; $7acb: $43
    ld c, $90                                     ; $7acc: $0e $90
    ld a, c                                       ; $7ace: $79
    rra                                           ; $7acf: $1f
    xor h                                         ; $7ad0: $ac
    ld [hl], l                                    ; $7ad1: $75
    adc a                                         ; $7ad2: $8f
    pop af                                        ; $7ad3: $f1
    rst $20                                       ; $7ad4: $e7
    call nz, Call_000_0005                        ; $7ad5: $c4 $05 $00
    ld a, h                                       ; $7ad8: $7c
    ld hl, $bdfb                                  ; $7ad9: $21 $fb $bd
    rst $28                                       ; $7adc: $ef
    ret nc                                        ; $7add: $d0

    ld e, h                                       ; $7ade: $5c
    ld b, $47                                     ; $7adf: $06 $47
    sub h                                         ; $7ae1: $94
    call c, $9f4d                                 ; $7ae2: $dc $4d $9f
    sbc l                                         ; $7ae5: $9d
    dec c                                         ; $7ae6: $0d
    ld a, c                                       ; $7ae7: $79
    ld de, $276f                                  ; $7ae8: $11 $6f $27
    or d                                          ; $7aeb: $b2
    ld c, e                                       ; $7aec: $4b
    inc a                                         ; $7aed: $3c
    ld d, h                                       ; $7aee: $54
    ld d, c                                       ; $7aef: $51
    jp z, Jump_000_29ac                           ; $7af0: $ca $ac $29

    and a                                         ; $7af3: $a7
    ld [hl-], a                                   ; $7af4: $32

jr_05b_7af5:
    ld d, d                                       ; $7af5: $52
    adc a                                         ; $7af6: $8f
    inc de                                        ; $7af7: $13
    ld sp, hl                                     ; $7af8: $f9
    or a                                          ; $7af9: $b7
    jp nc, Jump_05b_719f                          ; $7afa: $d2 $9f $71

    rst $38                                       ; $7afd: $ff
    sub a                                         ; $7afe: $97
    inc e                                         ; $7aff: $1c
    jr nz, jr_05b_7af5                            ; $7b00: $20 $f3

    ld a, $58                                     ; $7b02: $3e $58
    ld l, a                                       ; $7b04: $6f
    add hl, hl                                    ; $7b05: $29
    jp z, $e756                                   ; $7b06: $ca $56 $e7

    rst $00                                       ; $7b09: $c7
    ld d, a                                       ; $7b0a: $57
    rst $38                                       ; $7b0b: $ff
    sub $6b                                       ; $7b0c: $d6 $6b
    add [hl]                                      ; $7b0e: $86
    call $b8cd                                    ; $7b0f: $cd $cd $b8
    adc $a1                                       ; $7b12: $ce $a1
    dec bc                                        ; $7b14: $0b
    nop                                           ; $7b15: $00
    sbc h                                         ; $7b16: $9c
    ld [hl], c                                    ; $7b17: $71
    ld [hl], d                                    ; $7b18: $72
    cp d                                          ; $7b19: $ba
    db $e4                                        ; $7b1a: $e4
    add b                                         ; $7b1b: $80
    ld d, d                                       ; $7b1c: $52
    ld [$c951], sp                                ; $7b1d: $08 $51 $c9
    or [hl]                                       ; $7b20: $b6
    dec sp                                        ; $7b21: $3b
    ld l, $00                                     ; $7b22: $2e $00
    sbc h                                         ; $7b24: $9c
    cp a                                          ; $7b25: $bf
    dec a                                         ; $7b26: $3d
    ld d, c                                       ; $7b27: $51
    ld d, $a5                                     ; $7b28: $16 $a5
    cp c                                          ; $7b2a: $b9
    ld e, e                                       ; $7b2b: $5b
    or l                                          ; $7b2c: $b5
    ld d, b                                       ; $7b2d: $50
    nop                                           ; $7b2e: $00
    ret nc                                        ; $7b2f: $d0

    and l                                         ; $7b30: $a5
    ld a, h                                       ; $7b31: $7c
    db $e3                                        ; $7b32: $e3
    ret nc                                        ; $7b33: $d0

    dec b                                         ; $7b34: $05
    nop                                           ; $7b35: $00
    ld e, [hl]                                    ; $7b36: $5e
    or c                                          ; $7b37: $b1
    ld l, l                                       ; $7b38: $6d
    jp nc, $9018                                  ; $7b39: $d2 $18 $90

    or b                                          ; $7b3c: $b0
    cp $af                                        ; $7b3d: $fe $af
    and h                                         ; $7b3f: $a4
    ld a, b                                       ; $7b40: $78
    sbc [hl]                                      ; $7b41: $9e
    or c                                          ; $7b42: $b1
    adc h                                         ; $7b43: $8c
    ld e, e                                       ; $7b44: $5b
    sbc h                                         ; $7b45: $9c
    and c                                         ; $7b46: $a1
    and [hl]                                      ; $7b47: $a6
    xor h                                         ; $7b48: $ac
    or e                                          ; $7b49: $b3
    ld c, h                                       ; $7b4a: $4c
    or $0f                                        ; $7b4b: $f6 $0f
    ld a, c                                       ; $7b4d: $79
    push af                                       ; $7b4e: $f5
    rst $08                                       ; $7b4f: $cf
    or a                                          ; $7b50: $b7
    dec l                                         ; $7b51: $2d
    ld l, [hl]                                    ; $7b52: $6e
    nop                                           ; $7b53: $00
    ld c, $b2                                     ; $7b54: $0e $b2
    sub [hl]                                      ; $7b56: $96
    cp a                                          ; $7b57: $bf
    ld c, l                                       ; $7b58: $4d
    and h                                         ; $7b59: $a4
    dec sp                                        ; $7b5a: $3b
    xor d                                         ; $7b5b: $aa
    add sp, $02                                   ; $7b5c: $e8 $02
    ld a, h                                       ; $7b5e: $7c
    ld e, e                                       ; $7b5f: $5b
    and e                                         ; $7b60: $a3
    db $e4                                        ; $7b61: $e4
    ld l, a                                       ; $7b62: $6f
    db $d3                                        ; $7b63: $d3
    jp c, $8eea                                   ; $7b64: $da $ea $8e

    ld a, [hl+]                                   ; $7b67: $2a
    sub d                                         ; $7b68: $92
    ld l, l                                       ; $7b69: $6d
    adc l                                         ; $7b6a: $8d
    sub d                                         ; $7b6b: $92
    dec l                                         ; $7b6c: $2d
    db $fc                                        ; $7b6d: $fc
    sub $6f                                       ; $7b6e: $d6 $6f
    sbc e                                         ; $7b70: $9b
    inc d                                         ; $7b71: $14
    ld c, a                                       ; $7b72: $4f
    or b                                          ; $7b73: $b0
    ld a, e                                       ; $7b74: $7b
    or c                                          ; $7b75: $b1
    ld [c], a                                     ; $7b76: $e2
    ld [bc], a                                    ; $7b77: $02
    inc e                                         ; $7b78: $1c
    daa                                           ; $7b79: $27
    ld e, d                                       ; $7b7a: $5a
    ld a, b                                       ; $7b7b: $78
    adc $68                                       ; $7b7c: $ce $68
    call $83f5                                    ; $7b7e: $cd $f5 $83
    ld l, $79                                     ; $7b81: $2e $79
    db $f4                                        ; $7b83: $f4
    cp d                                          ; $7b84: $ba
    or a                                          ; $7b85: $b7
    ld c, b                                       ; $7b86: $48
    ld a, $31                                     ; $7b87: $3e $31
    sbc b                                         ; $7b89: $98
    xor b                                         ; $7b8a: $a8
    inc [hl]                                      ; $7b8b: $34
    or e                                          ; $7b8c: $b3
    ld [hl], e                                    ; $7b8d: $73
    ld c, b                                       ; $7b8e: $48
    add hl, sp                                    ; $7b8f: $39
    and l                                         ; $7b90: $a5
    ld e, e                                       ; $7b91: $5b
    ld c, l                                       ; $7b92: $4d
    ld d, h                                       ; $7b93: $54
    jp z, Jump_000_26d2                           ; $7b94: $ca $d2 $26

    and l                                         ; $7b97: $a5
    ld e, c                                       ; $7b98: $59
    cp [hl]                                       ; $7b99: $be
    and l                                         ; $7b9a: $a5
    add hl, sp                                    ; $7b9b: $39
    or [hl]                                       ; $7b9c: $b6
    ld h, h                                       ; $7b9d: $64
    ld e, e                                       ; $7b9e: $5b
    inc [hl]                                      ; $7b9f: $34
    or a                                          ; $7ba0: $b7
    ld l, $00                                     ; $7ba1: $2e $00
    sbc h                                         ; $7ba3: $9c
    ld [hl], c                                    ; $7ba4: $71
    ld [hl], d                                    ; $7ba5: $72
    ld [de], a                                    ; $7ba6: $12
    inc a                                         ; $7ba7: $3c
    cp d                                          ; $7ba8: $ba
    rlca                                          ; $7ba9: $07
    or a                                          ; $7baa: $b7
    ld hl, sp-$5e                                 ; $7bab: $f8 $a2
    adc d                                         ; $7bad: $8a
    xor b                                         ; $7bae: $a8
    sub d                                         ; $7baf: $92
    ld [c], a                                     ; $7bb0: $e2
    add hl, bc                                    ; $7bb1: $09
    halt                                          ; $7bb2: $76
    cpl                                           ; $7bb3: $2f
    ld d, [hl]                                    ; $7bb4: $56
    ld e, h                                       ; $7bb5: $5c
    nop                                           ; $7bb6: $00
    ld c, $b2                                     ; $7bb7: $0e $b2
    ld d, $96                                     ; $7bb9: $16 $96
    inc l                                         ; $7bbb: $2c
    sub h                                         ; $7bbc: $94
    ld b, [hl]                                    ; $7bbd: $46
    rst $08                                       ; $7bbe: $cf
    ld c, l                                       ; $7bbf: $4d
    adc d                                         ; $7bc0: $8a
    rst $20                                       ; $7bc1: $e7
    inc de                                        ; $7bc2: $13
    ld h, d                                       ; $7bc3: $62
    dec bc                                        ; $7bc4: $0b
    cp c                                          ; $7bc5: $b9
    nop                                           ; $7bc6: $00
    ld c, $7f                                     ; $7bc7: $0e $7f
    adc $b7                                       ; $7bc9: $ce $b7
    dec l                                         ; $7bcb: $2d
    reti                                          ; $7bcc: $d9


    sbc [hl]                                      ; $7bcd: $9e
    inc de                                        ; $7bce: $13
    ld a, [c]                                     ; $7bcf: $f2
    rst $38                                       ; $7bd0: $ff
    ret nz                                        ; $7bd1: $c0

    ld e, b                                       ; $7bd2: $58
    ld h, d                                       ; $7bd3: $62
    inc bc                                        ; $7bd4: $03
    rst $20                                       ; $7bd5: $e7
    cp a                                          ; $7bd6: $bf
    xor $ef                                       ; $7bd7: $ee $ef
    ld sp, hl                                     ; $7bd9: $f9
    ld e, a                                       ; $7bda: $5f
    sub a                                         ; $7bdb: $97
    inc a                                         ; $7bdc: $3c
    ld a, d                                       ; $7bdd: $7a
    sbc l                                         ; $7bde: $9d
    rst $18                                       ; $7bdf: $df
    add $2d                                       ; $7be0: $c6 $2d
    ld e, c                                       ; $7be2: $59
    sub h                                         ; $7be3: $94
    ld [$89cf], a                                 ; $7be4: $ea $cf $89
    ld sp, hl                                     ; $7be7: $f9
    inc l                                         ; $7be8: $2c

jr_05b_7be9:
    dec e                                         ; $7be9: $1d
    dec [hl]                                      ; $7bea: $35
    or a                                          ; $7beb: $b7
    ld [hl], h                                    ; $7bec: $74
    adc a                                         ; $7bed: $8f
    ld sp, hl                                     ; $7bee: $f9
    ld e, a                                       ; $7bef: $5f
    ld c, c                                       ; $7bf0: $49
    pop bc                                        ; $7bf1: $c1
    ld l, b                                       ; $7bf2: $68
    or d                                          ; $7bf3: $b2
    dec a                                         ; $7bf4: $3d
    daa                                           ; $7bf5: $27
    call nc, $44e3                                ; $7bf6: $d4 $e3 $44
    jr z, @+$01                                   ; $7bf9: $28 $ff

    sbc l                                         ; $7bfb: $9d
    di                                            ; $7bfc: $f3
    sub l                                         ; $7bfd: $95
    ld c, l                                       ; $7bfe: $4d
    db $db                                        ; $7bff: $db

Call_05b_7c00:
    and d                                         ; $7c00: $a2
    xor l                                         ; $7c01: $ad
    jr z, @-$1d                                   ; $7c02: $28 $e1

    pop bc                                        ; $7c04: $c1
    dec bc                                        ; $7c05: $0b
    nop                                           ; $7c06: $00
    sbc h                                         ; $7c07: $9c
    and c                                         ; $7c08: $a1
    db $fc                                        ; $7c09: $fc
    reti                                          ; $7c0a: $d9


    db $fd                                        ; $7c0b: $fd
    sub $2b                                       ; $7c0c: $d6 $2b
    res 7, b                                      ; $7c0e: $cb $b8
    ld h, h                                       ; $7c10: $64
    ld d, c                                       ; $7c11: $51
    xor d                                         ; $7c12: $aa
    ccf                                           ; $7c13: $3f
    daa                                           ; $7c14: $27
    and $b3                                       ; $7c15: $e6 $b3
    ld [hl], h                                    ; $7c17: $74
    call nc, Call_000_0005                        ; $7c18: $d4 $05 $00
    ld c, $b2                                     ; $7c1b: $0e $b2
    ld d, [hl]                                    ; $7c1d: $56
    ld d, e                                       ; $7c1e: $53
    sub $59                                       ; $7c1f: $d6 $59
    and [hl]                                      ; $7c21: $a6
    ld b, e                                       ; $7c22: $43
    ld l, c                                       ; $7c23: $69
    rlca                                          ; $7c24: $07
    dec h                                         ; $7c25: $25
    dec b                                         ; $7c26: $05
    and e                                         ; $7c27: $a3
    jp hl                                         ; $7c28: $e9


    rla                                           ; $7c29: $17
    rst $28                                       ; $7c2a: $ef
    dec sp                                        ; $7c2b: $3b
    inc d                                         ; $7c2c: $14
    ld l, c                                       ; $7c2d: $69
    cpl                                           ; $7c2e: $2f
    xor c                                         ; $7c2f: $a9
    sub c                                         ; $7c30: $91
    push de                                       ; $7c31: $d5
    sub [hl]                                      ; $7c32: $96
    jp nc, $feb1                                  ; $7c33: $d2 $b1 $fe

    jr c, jr_05b_7c5f                             ; $7c36: $38 $27

    db $f4                                        ; $7c38: $f4
    jr nc, jr_05b_7be9                            ; $7c39: $30 $ae

    reti                                          ; $7c3b: $d9


    ld e, a                                       ; $7c3c: $5f
    nop                                           ; $7c3d: $00
    inc a                                         ; $7c3e: $3c
    or c                                          ; $7c3f: $b1
    ld c, d                                       ; $7c40: $4a
    ld h, e                                       ; $7c41: $63
    sub e                                         ; $7c42: $93
    ld [hl], d                                    ; $7c43: $72
    add b                                         ; $7c44: $80
    call z, Call_05b_60fb                         ; $7c45: $cc $fb $60
    call $e82d                                    ; $7c48: $cd $2d $e8
    jp nc, $9b44                                  ; $7c4b: $d2 $44 $9b

    rst $38                                       ; $7c4e: $ff
    and l                                         ; $7c4f: $a5
    ld d, c                                       ; $7c50: $51
    sbc b                                         ; $7c51: $98
    ld b, d                                       ; $7c52: $42
    ld e, [hl]                                    ; $7c53: $5e
    ld [hl], $9e                                  ; $7c54: $36 $9e
    dec de                                        ; $7c56: $1b
    nop                                           ; $7c57: $00
    ld e, $d1                                     ; $7c58: $1e $d1
    sbc c                                         ; $7c5a: $99
    db $eb                                        ; $7c5b: $eb
    call z, $8f5a                                 ; $7c5c: $cc $5a $8f

jr_05b_7c5f:
    ld l, d                                       ; $7c5f: $6a
    db $fc                                        ; $7c60: $fc
    and h                                         ; $7c61: $a4
    ldh [$97], a                                  ; $7c62: $e0 $97
    dec bc                                        ; $7c64: $0b
    adc $c9                                       ; $7c65: $ce $c9
    ld e, a                                       ; $7c67: $5f
    db $eb                                        ; $7c68: $eb
    add sp, $26                                   ; $7c69: $e8 $26
    ld sp, hl                                     ; $7c6b: $f9
    cp b                                          ; $7c6c: $b8
    ld h, $8f                                     ; $7c6d: $26 $8f
    rst $00                                       ; $7c6f: $c7
    and [hl]                                      ; $7c70: $a6
    ld h, e                                       ; $7c71: $63
    dec l                                         ; $7c72: $2d
    ld c, [hl]                                    ; $7c73: $4e
    ccf                                           ; $7c74: $3f
    or a                                          ; $7c75: $b7
    inc a                                         ; $7c76: $3c
    rst $38                                       ; $7c77: $ff
    jr c, jr_05b_7ca1                             ; $7c78: $38 $27

    adc $79                                       ; $7c7a: $ce $79
    ld d, l                                       ; $7c7c: $55
    sub $ca                                       ; $7c7d: $d6 $ca
    ld l, [hl]                                    ; $7c7f: $6e
    sbc a                                         ; $7c80: $9f
    ret c                                         ; $7c81: $d8

    ld l, [hl]                                    ; $7c82: $6e
    add hl, de                                    ; $7c83: $19
    add hl, hl                                    ; $7c84: $29
    db $e3                                        ; $7c85: $e3
    ld a, [$ff9d]                                 ; $7c86: $fa $9d $ff
    push bc                                       ; $7c89: $c5
    dec c                                         ; $7c8a: $0d
    nop                                           ; $7c8b: $00
    ld c, $19                                     ; $7c8c: $0e $19
    ld h, $18                                     ; $7c8e: $26 $18
    ld h, [hl]                                    ; $7c90: $66
    ret z                                         ; $7c91: $c8

    ld [hl], $a9                                  ; $7c92: $36 $a9
    add sp, $0e                                   ; $7c94: $e8 $0e
    ld h, l                                       ; $7c96: $65
    rst $30                                       ; $7c97: $f7
    ld c, l                                       ; $7c98: $4d
    adc h                                         ; $7c99: $8c
    pop de                                        ; $7c9a: $d1
    dec h                                         ; $7c9b: $25
    sbc [hl]                                      ; $7c9c: $9e
    ld h, a                                       ; $7c9d: $67
    inc l                                         ; $7c9e: $2c
    sub e                                         ; $7c9f: $93
    ld b, e                                       ; $7ca0: $43

jr_05b_7ca1:
    db $ec                                        ; $7ca1: $ec
    ld c, $26                                     ; $7ca2: $0e $26
    inc l                                         ; $7ca4: $2c
    push af                                       ; $7ca5: $f5
    jr c, jr_05b_7d10                             ; $7ca6: $38 $68

    or $82                                        ; $7ca8: $f6 $82
    ld e, a                                       ; $7caa: $5f
    or [hl]                                       ; $7cab: $b6
    rst $20                                       ; $7cac: $e7
    sub b                                         ; $7cad: $90
    or b                                          ; $7cae: $b0
    ld [hl], h                                    ; $7caf: $74
    jr nc, @-$21                                  ; $7cb0: $30 $dd

    ld c, c                                       ; $7cb2: $49
    call nz, $e0ee                                ; $7cb3: $c4 $ee $e0
    ld b, $0e                                     ; $7cb6: $06 $0e
    ld a, [hl]                                    ; $7cb8: $7e
    or b                                          ; $7cb9: $b0
    add sp, -$02                                  ; $7cba: $e8 $fe
    db $fc                                        ; $7cbc: $fc
    sbc a                                         ; $7cbd: $9f
    ld e, e                                       ; $7cbe: $5b
    ld c, $19                                     ; $7cbf: $0e $19
    ld h, $18                                     ; $7cc1: $26 $18
    ld h, [hl]                                    ; $7cc3: $66
    ret z                                         ; $7cc4: $c8

    ld d, [hl]                                    ; $7cc5: $56
    cp h                                          ; $7cc6: $bc
    ld a, a                                       ; $7cc7: $7f
    and $33                                       ; $7cc8: $e6 $33
    inc [hl]                                      ; $7cca: $34
    reti                                          ; $7ccb: $d9


    cp a                                          ; $7ccc: $bf
    and $18                                       ; $7ccd: $e6 $18
    rst $20                                       ; $7ccf: $e7
    cp h                                          ; $7cd0: $bc
    sbc d                                         ; $7cd1: $9a
    xor h                                         ; $7cd2: $ac
    adc c                                         ; $7cd3: $89
    dec de                                        ; $7cd4: $1b
    nop                                           ; $7cd5: $00
    cp h                                          ; $7cd6: $bc
    rst $18                                       ; $7cd7: $df
    add [hl]                                      ; $7cd8: $86
    ld c, c                                       ; $7cd9: $49
    reti                                          ; $7cda: $d9


    add $39                                       ; $7cdb: $c6 $39
    and h                                         ; $7cdd: $a4
    inc [hl]                                      ; $7cde: $34
    add h                                         ; $7cdf: $84
    ld sp, hl                                     ; $7ce0: $f9
    scf                                           ; $7ce1: $37
    scf                                           ; $7ce2: $37
    nop                                           ; $7ce3: $00
    ld a, h                                       ; $7ce4: $7c
    ld hl, $e73c                                  ; $7ce5: $21 $3c $e7
    cp a                                          ; $7ce8: $bf
    call nc, $e744                                ; $7ce9: $d4 $44 $e7
    db $10                                        ; $7cec: $10
    scf                                           ; $7ced: $37
    nop                                           ; $7cee: $00
    inc e                                         ; $7cef: $1c
    ld d, l                                       ; $7cf0: $55
    ld sp, $656d                                  ; $7cf1: $31 $6d $65
    ld hl, $552c                                  ; $7cf4: $21 $2c $55
    sub $ea                                       ; $7cf7: $d6 $ea
    ld c, b                                       ; $7cf9: $48
    dec sp                                        ; $7cfa: $3b
    cp e                                          ; $7cfb: $bb
    nop                                           ; $7cfc: $00
    ret nc                                        ; $7cfd: $d0

    xor e                                         ; $7cfe: $ab
    and [hl]                                      ; $7cff: $a6
    sbc e                                         ; $7d00: $9b
    sub h                                         ; $7d01: $94
    ld l, a                                       ; $7d02: $6f
    inc e                                         ; $7d03: $1c
    ld [de], a                                    ; $7d04: $12
    sbc [hl]                                      ; $7d05: $9e
    db $10                                        ; $7d06: $10
    and [hl]                                      ; $7d07: $a6
    db $db                                        ; $7d08: $db
    ld d, $97                                     ; $7d09: $16 $97
    ld hl, sp+$62                                 ; $7d0b: $f8 $62
    ld hl, $6a54                                  ; $7d0d: $21 $54 $6a

jr_05b_7d10:
    jp z, $cb3a                                   ; $7d10: $ca $3a $cb

    db $e4                                        ; $7d13: $e4
    inc de                                        ; $7d14: $13
    ld e, c                                       ; $7d15: $59
    sub e                                         ; $7d16: $93
    ld a, [$afe7]                                 ; $7d17: $fa $e7 $af
    ld l, l                                       ; $7d1a: $6d
    ret                                           ; $7d1b: $c9


    ld d, e                                       ; $7d1c: $53
    ld c, h                                       ; $7d1d: $4c
    ld h, a                                       ; $7d1e: $67
    sbc h                                         ; $7d1f: $9c
    sbc l                                         ; $7d20: $9d
    inc de                                        ; $7d21: $13
    or c                                          ; $7d22: $b1
    ld l, $00                                     ; $7d23: $2e $00
    inc a                                         ; $7d25: $3c
    pop bc                                        ; $7d26: $c1
    xor $c5                                       ; $7d27: $ee $c5
    adc d                                         ; $7d29: $8a
    db $eb                                        ; $7d2a: $eb
    cp d                                          ; $7d2b: $ba
    inc [hl]                                      ; $7d2c: $34
    ld a, [bc]                                    ; $7d2d: $0a
    ld d, e                                       ; $7d2e: $53
    ret z                                         ; $7d2f: $c8

    sub [hl]                                      ; $7d30: $96
    adc d                                         ; $7d31: $8a
    ld h, [hl]                                    ; $7d32: $66
    halt                                          ; $7d33: $76
    ld d, e                                       ; $7d34: $53
    scf                                           ; $7d35: $37
    rst $10                                       ; $7d36: $d7
    sbc l                                         ; $7d37: $9d
    ld h, l                                       ; $7d38: $65
    sub [hl]                                      ; $7d39: $96
    rst $28                                       ; $7d3a: $ef
    halt                                          ; $7d3b: $76
    ld a, a                                       ; $7d3c: $7f
    xor l                                         ; $7d3d: $ad
    ld a, [de]                                    ; $7d3e: $1a
    ld e, c                                       ; $7d3f: $59
    ld l, l                                       ; $7d40: $6d
    add hl, hl                                    ; $7d41: $29
    dec e                                         ; $7d42: $1d
    db $eb                                        ; $7d43: $eb
    adc a                                         ; $7d44: $8f
    ld [hl], e                                    ; $7d45: $73
    add d                                         ; $7d46: $82
    dec de                                        ; $7d47: $1b
    nop                                           ; $7d48: $00
    sbc h                                         ; $7d49: $9c
    cp a                                          ; $7d4a: $bf
    push hl                                       ; $7d4b: $e5
    cp a                                          ; $7d4c: $bf
    ld [hl], c                                    ; $7d4d: $71
    inc bc                                        ; $7d4e: $03
    sbc [hl]                                      ; $7d4f: $9e
    ld l, a                                       ; $7d50: $6f
    ld a, [bc]                                    ; $7d51: $0a
    pop bc                                        ; $7d52: $c1
    xor l                                         ; $7d53: $ad
    cp c                                          ; $7d54: $b9
    and l                                         ; $7d55: $a5
    adc c                                         ; $7d56: $89
    inc sp                                        ; $7d57: $33
    and d                                         ; $7d58: $a2
    add l                                         ; $7d59: $85
    ld sp, hl                                     ; $7d5a: $f9
    or a                                          ; $7d5b: $b7
    jr nc, jr_05b_7dbb                            ; $7d5c: $30 $5d

    ld l, [hl]                                    ; $7d5e: $6e
    pop af                                        ; $7d5f: $f1
    ld h, d                                       ; $7d60: $62
    jp c, Jump_000_3faf                           ; $7d61: $da $af $3f

    di                                            ; $7d64: $f3
    ld e, a                                       ; $7d65: $5f
    inc sp                                        ; $7d66: $33
    adc h                                         ; $7d67: $8c
    ld c, $de                                     ; $7d68: $0e $de
    rst $08                                       ; $7d6a: $cf
    dec c                                         ; $7d6b: $0d
    nop                                           ; $7d6c: $00
    ld c, $76                                     ; $7d6d: $0e $76
    res 4, a                                      ; $7d6f: $cb $a7
    and h                                         ; $7d71: $a4
    ldh [$97], a                                  ; $7d72: $e0 $97
    rst $38                                       ; $7d74: $ff
    dec sp                                        ; $7d75: $3b
    rst $20                                       ; $7d76: $e7
    dec bc                                        ; $7d77: $0b
    ld c, e                                       ; $7d78: $4b

jr_05b_7d79:
    ld [hl], a                                    ; $7d79: $77
    sbc h                                         ; $7d7a: $9c
    add hl, de                                    ; $7d7b: $19
    ld e, e                                       ; $7d7c: $5b
    ld [$852c], a                                 ; $7d7d: $ea $2c $85
    rst $30                                       ; $7d80: $f7
    inc e                                         ; $7d81: $1c
    and d                                         ; $7d82: $a2
    cp d                                          ; $7d83: $ba
    db $e4                                        ; $7d84: $e4
    pop de                                        ; $7d85: $d1
    jr jr_05b_7df4                                ; $7d86: $18 $6c

    ld h, l                                       ; $7d88: $65
    db $db                                        ; $7d89: $db
    inc h                                         ; $7d8a: $24
    sbc $3f                                       ; $7d8b: $de $3f
    di                                            ; $7d8d: $f3
    add hl, de                                    ; $7d8e: $19
    sbc d                                         ; $7d8f: $9a
    db $10                                        ; $7d90: $10
    add d                                         ; $7d91: $82
    db $dd                                        ; $7d92: $dd
    rst $38                                       ; $7d93: $ff
    rla                                           ; $7d94: $17
    nop                                           ; $7d95: $00
    inc a                                         ; $7d96: $3c
    rst $08                                       ; $7d97: $cf
    ld e, b                                       ; $7d98: $58
    sub [hl]                                      ; $7d99: $96
    ld d, h                                       ; $7d9a: $54
    call c, Call_000_2877                         ; $7d9b: $dc $77 $28
    jr nz, jr_05b_7e01                            ; $7d9e: $20 $61

    ld [$080d], a                                 ; $7da0: $ea $0d $08
    add hl, bc                                    ; $7da3: $09
    ld l, e                                       ; $7da4: $6b
    and d                                         ; $7da5: $a2
    ld d, d                                       ; $7da6: $52
    ld a, [hl+]                                   ; $7da7: $2a
    call $b698                                    ; $7da8: $cd $98 $b6
    sub l                                         ; $7dab: $95
    or l                                          ; $7dac: $b5
    ld h, [hl]                                    ; $7dad: $66
    ld l, h                                       ; $7dae: $6c

jr_05b_7daf:
    ld h, c                                       ; $7daf: $61
    ret                                           ; $7db0: $c9


    daa                                           ; $7db1: $27
    or d                                          ; $7db2: $b2
    ld h, $39                                     ; $7db3: $26 $39
    db $e4                                        ; $7db5: $e4
    ld h, d                                       ; $7db6: $62
    adc h                                         ; $7db7: $8c
    xor e                                         ; $7db8: $ab
    add h                                         ; $7db9: $84
    jp hl                                         ; $7dba: $e9


jr_05b_7dbb:
    or [hl]                                       ; $7dbb: $b6
    push bc                                       ; $7dbc: $c5
    dec b                                         ; $7dbd: $05
    nop                                           ; $7dbe: $00
    ld a, h                                       ; $7dbf: $7c
    and e                                         ; $7dc0: $a3
    ei                                            ; $7dc1: $fb
    ld [hl], l                                    ; $7dc2: $75
    ld l, a                                       ; $7dc3: $6f
    adc l                                         ; $7dc4: $8d
    jp nc, Jump_000_3f33                          ; $7dc5: $d2 $33 $3f

    and d                                         ; $7dc8: $a2
    ld d, [hl]                                    ; $7dc9: $56
    or $dd                                        ; $7dca: $f6 $dd
    ld h, e                                       ; $7dcc: $63
    jr z, jr_05b_7d79                             ; $7dcd: $28 $aa

    rst $10                                       ; $7dcf: $d7
    sbc d                                         ; $7dd0: $9a
    inc [hl]                                      ; $7dd1: $34
    ld sp, $db8f                                  ; $7dd2: $31 $8f $db
    rst $38                                       ; $7dd5: $ff
    cp a                                          ; $7dd6: $bf
    call nz, Call_000_35b7                        ; $7dd7: $c4 $b7 $35
    xor h                                         ; $7dda: $ac
    ld e, a                                       ; $7ddb: $5f
    ld d, $c2                                     ; $7ddc: $16 $c2
    sub d                                         ; $7dde: $92
    push bc                                       ; $7ddf: $c5
    ret                                           ; $7de0: $c9


    ld c, c                                       ; $7de1: $49
    ld sp, hl                                     ; $7de2: $f9
    inc sp                                        ; $7de3: $33
    call c, $cfee                                 ; $7de4: $dc $ee $cf
    ld e, a                                       ; $7de7: $5f
    ld [hl], a                                    ; $7de8: $77
    or b                                          ; $7de9: $b0
    add hl, sp                                    ; $7dea: $39
    rst $30                                       ; $7deb: $f7
    ld [bc], a                                    ; $7dec: $02

Jump_05b_7ded:
    db $fc                                        ; $7ded: $fc
    pop bc                                        ; $7dee: $c1
    ld a, [c]                                     ; $7def: $f2
    ldh [rNR21], a                                ; $7df0: $e0 $16
    halt                                          ; $7df2: $76
    db $f4                                        ; $7df3: $f4

jr_05b_7df4:
    ld a, a                                       ; $7df4: $7f
    ld c, l                                       ; $7df5: $4d
    inc [hl]                                      ; $7df6: $34
    reti                                          ; $7df7: $d9


    ld [hl], $29                                  ; $7df8: $36 $29
    and a                                         ; $7dfa: $a7
    sub h                                         ; $7dfb: $94
    ld c, d                                       ; $7dfc: $4a
    ccf                                           ; $7dfd: $3f
    ret c                                         ; $7dfe: $d8

    sub $c4                                       ; $7dff: $d6 $c4

jr_05b_7e01:
    ld d, a                                       ; $7e01: $57
    ld d, h                                       ; $7e02: $54
    ld b, l                                       ; $7e03: $45
    ld l, c                                       ; $7e04: $69
    ld h, d                                       ; $7e05: $62
    cpl                                           ; $7e06: $2f
    adc e                                         ; $7e07: $8b
    dec [hl]                                      ; $7e08: $35
    dec de                                        ; $7e09: $1b
    rrca                                          ; $7e0a: $0f
    dec b                                         ; $7e0b: $05
    nop                                           ; $7e0c: $00
    inc a                                         ; $7e0d: $3c
    sbc a                                         ; $7e0e: $9f
    db $10                                        ; $7e0f: $10
    ld e, e                                       ; $7e10: $5b
    ld c, b                                       ; $7e11: $48
    ld d, d                                       ; $7e12: $52
    jr nc, jr_05b_7daf                            ; $7e13: $30 $9a

    ld h, b                                       ; $7e15: $60
    sbc h                                         ; $7e16: $9c
    ld b, e                                       ; $7e17: $43
    jp hl                                         ; $7e18: $e9


    sbc a                                         ; $7e19: $9f
    pop af                                        ; $7e1a: $f1
    ld l, e                                       ; $7e1b: $6b
    dec hl                                        ; $7e1c: $2b
    sbc a                                         ; $7e1d: $9f
    ret z                                         ; $7e1e: $c8

    sbc d                                         ; $7e1f: $9a
    db $e4                                        ; $7e20: $e4
    sub b                                         ; $7e21: $90
    adc e                                         ; $7e22: $8b
    ld sp, $12ae                                  ; $7e23: $31 $ae $12
    and [hl]                                      ; $7e26: $a6
    sbc e                                         ; $7e27: $9b
    call nc, Call_05b_4dbd                        ; $7e28: $d4 $bd $4d
    ld c, d                                       ; $7e2b: $4a
    xor c                                         ; $7e2c: $a9

Jump_05b_7e2d:
    and d                                         ; $7e2d: $a2
    db $e4                                        ; $7e2e: $e4
    ld l, a                                       ; $7e2f: $6f
    db $d3                                        ; $7e30: $d3
    jp c, Jump_000_23aa                           ; $7e31: $da $aa $23

    add l                                         ; $7e34: $85
    db $10                                        ; $7e35: $10
    inc d                                         ; $7e36: $14
    nop                                           ; $7e37: $00
    ld c, $76                                     ; $7e38: $0e $76
    ld l, e                                       ; $7e3a: $6b
    ld c, $d9                                     ; $7e3b: $0e $d9
    sbc [hl]                                      ; $7e3d: $9e
    inc de                                        ; $7e3e: $13
    jp z, $d837                                   ; $7e3f: $ca $37 $d8

    rst $38                                       ; $7e42: $ff
    add hl, sp                                    ; $7e43: $39
    and c                                         ; $7e44: $a1
    ld sp, hl                                     ; $7e45: $f9
    ld a, c                                       ; $7e46: $79
    or b                                          ; $7e47: $b0
    dec a                                         ; $7e48: $3d
    daa                                           ; $7e49: $27
    ld h, h                                       ; $7e4a: $64
    ld e, a                                       ; $7e4b: $5f
    cp b                                          ; $7e4c: $b8
    sub l                                         ; $7e4d: $95
    sub h                                         ; $7e4e: $94
    cp a                                          ; $7e4f: $bf
    ld c, l                                       ; $7e50: $4d
    and h                                         ; $7e51: $a4
    db $fc                                        ; $7e52: $fc
    cp a                                          ; $7e53: $bf
    ld h, h                                       ; $7e54: $64
    cp b                                          ; $7e55: $b8
    dec e                                         ; $7e56: $1d
    rst $20                                       ; $7e57: $e7
    cp h                                          ; $7e58: $bc
    ld [hl], d                                    ; $7e59: $72
    ld c, d                                       ; $7e5a: $4a
    xor c                                         ; $7e5b: $a9
    ld h, h                                       ; $7e5c: $64
    add sp, $6f                                   ; $7e5d: $e8 $6f
    cp $af                                        ; $7e5f: $fe $af
    ld a, e                                       ; $7e61: $7b
    ret c                                         ; $7e62: $d8

    xor $9c                                       ; $7e63: $ee $9c
    ei                                            ; $7e65: $fb
    xor d                                         ; $7e66: $aa
    db $dd                                        ; $7e67: $dd
    sub d                                         ; $7e68: $92
    add l                                         ; $7e69: $85

Jump_05b_7e6a:
    ld l, d                                       ; $7e6a: $6a
    call z, $fb4f                                 ; $7e6b: $cc $4f $fb
    rst $38                                       ; $7e6e: $ff
    ld [de], a                                    ; $7e6f: $12
    rst $08                                       ; $7e70: $cf
    sbc e                                         ; $7e71: $9b
    dec c                                         ; $7e72: $0d
    pop bc                                        ; $7e73: $c1
    and e                                         ; $7e74: $a3
    ld a, e                                       ; $7e75: $7b
    inc h                                         ; $7e76: $24
    dec d                                         ; $7e77: $15
    db $dd                                        ; $7e78: $dd
    inc h                                         ; $7e79: $24
    db $db                                        ; $7e7a: $db
    ld [hl], e                                    ; $7e7b: $73
    ld c, b                                       ; $7e7c: $48
    ld a, b                                       ; $7e7d: $78
    ld d, [hl]                                    ; $7e7e: $56
    ldh a, [$b0]                                  ; $7e7f: $f0 $b0
    sbc $2d                                       ; $7e81: $de $2d
    ld a, e                                       ; $7e83: $7b
    ld e, c                                       ; $7e84: $59
    sbc h                                         ; $7e85: $9c
    di                                            ; $7e86: $f3
    dec d                                         ; $7e87: $15
    and l                                         ; $7e88: $a5
    add e                                         ; $7e89: $83
    jp hl                                         ; $7e8a: $e9


    ld c, [hl]                                    ; $7e8b: $4e
    ld [hl+], a                                   ; $7e8c: $22
    halt                                          ; $7e8d: $76
    ld b, a                                       ; $7e8e: $47
    sub h                                         ; $7e8f: $94
    xor $51                                       ; $7e90: $ee $51
    xor a                                         ; $7e92: $af
    ld a, e                                       ; $7e93: $7b
    sbc e                                         ; $7e94: $9b
    call nc, $429f                                ; $7e95: $d4 $9f $42
    ld [hl], b                                    ; $7e98: $70
    db $eb                                        ; $7e99: $eb
    ld [bc], a                                    ; $7e9a: $02
    ld a, h                                       ; $7e9b: $7c
    or c                                          ; $7e9c: $b1

jr_05b_7e9d:
    db $10                                        ; $7e9d: $10
    ld a, [hl+]                                   ; $7e9e: $2a
    dec [hl]                                      ; $7e9f: $35
    ld h, l                                       ; $7ea0: $65
    sbc l                                         ; $7ea1: $9d
    ld h, l                                       ; $7ea2: $65
    cp d                                          ; $7ea3: $ba
    and e                                         ; $7ea4: $a3
    adc d                                         ; $7ea5: $8a
    sub h                                         ; $7ea6: $94
    ld b, [hl]                                    ; $7ea7: $46

Jump_05b_7ea8:
    xor a                                         ; $7ea8: $af
    ld h, [hl]                                    ; $7ea9: $66
    or b                                          ; $7eaa: $b0
    add $fb                                       ; $7eab: $c6 $fb
    cp a                                          ; $7ead: $bf
    db $e4                                        ; $7eae: $e4
    sbc $b8                                       ; $7eaf: $de $b8
    cp l                                          ; $7eb1: $bd
    ccf                                           ; $7eb2: $3f
    ld bc, $1641                                  ; $7eb3: $01 $41 $16
    rst $20                                       ; $7eb6: $e7
    call nz, $ce25                                ; $7eb7: $c4 $25 $ce
    ld c, b                                       ; $7eba: $48
    ld a, [bc]                                    ; $7ebb: $0a
    add $f9                                       ; $7ebc: $c6 $f9
    cp d                                          ; $7ebe: $ba
    or e                                          ; $7ebf: $b3
    sub l                                         ; $7ec0: $95
    inc bc                                        ; $7ec1: $03
    ld h, h                                       ; $7ec2: $64
    sbc $07                                       ; $7ec3: $de $07
    db $eb                                        ; $7ec5: $eb
    dec l                                         ; $7ec6: $2d
    pop af                                        ; $7ec7: $f1
    ld a, h                                       ; $7ec8: $7c
    ld b, d                                       ; $7ec9: $42
    ld l, h                                       ; $7eca: $6c
    ld hl, $4e7b                                  ; $7ecb: $21 $7b $4e
    inc h                                         ; $7ece: $24
    add l                                         ; $7ecf: $85
    ld h, a                                       ; $7ed0: $67
    sub l                                         ; $7ed1: $95
    ccf                                           ; $7ed2: $3f
    cp e                                          ; $7ed3: $bb
    rst $18                                       ; $7ed4: $df
    ld a, d                                       ; $7ed5: $7a
    sub l                                         ; $7ed6: $95
    rst $38                                       ; $7ed7: $ff
    add hl, bc                                    ; $7ed8: $09
    ld a, a                                       ; $7ed9: $7f
    call z, Call_000_15b1                         ; $7eda: $cc $b1 $15
    dec h                                         ; $7edd: $25
    sbc $3f                                       ; $7ede: $de $3f
    di                                            ; $7ee0: $f3
    add hl, de                                    ; $7ee1: $19
    jp c, Jump_000_0005                           ; $7ee2: $da $05 $00

    ld a, h                                       ; $7ee5: $7c
    and e                                         ; $7ee6: $a3
    ei                                            ; $7ee7: $fb
    ld [hl], l                                    ; $7ee8: $75
    add a                                         ; $7ee9: $87
    ld [c], a                                     ; $7eea: $e2
    cp [hl]                                       ; $7eeb: $be
    ld b, e                                       ; $7eec: $43
    ld bc, $5309                                  ; $7eed: $01 $09 $53
    ld l, a                                       ; $7ef0: $6f
    ld b, b                                       ; $7ef1: $40
    jr z, jr_05b_7e9d                             ; $7ef2: $28 $a9

    ld a, e                                       ; $7ef4: $7b
    call $ee48                                    ; $7ef5: $cd $48 $ee
    adc l                                         ; $7ef8: $8d
    db $db                                        ; $7ef9: $db
    ei                                            ; $7efa: $fb
    inc de                                        ; $7efb: $13
    db $10                                        ; $7efc: $10
    ld h, h                                       ; $7efd: $64
    ld d, c                                       ; $7efe: $51
    ld [$2b8c], a                                 ; $7eff: $ea $8c $2b
    dec e                                         ; $7f02: $1d
    ld e, b                                       ; $7f03: $58
    ld hl, $0bac                                  ; $7f04: $21 $ac $0b
    nop                                           ; $7f07: $00
    sbc h                                         ; $7f08: $9c
    db $db                                        ; $7f09: $db
    dec e                                         ; $7f0a: $1d
    and l                                         ; $7f0b: $a5
    dec sp                                        ; $7f0c: $3b
    ld d, $42                                     ; $7f0d: $16 $42
    and l                                         ; $7f0f: $a5
    and [hl]                                      ; $7f10: $a6
    xor h                                         ; $7f11: $ac
    or e                                          ; $7f12: $b3
    ld c, h                                       ; $7f13: $4c
    pop de                                        ; $7f14: $d1
    or [hl]                                       ; $7f15: $b6
    inc h                                         ; $7f16: $24
    adc e                                         ; $7f17: $8b
    ld c, e                                       ; $7f18: $4b
    inc a                                         ; $7f19: $3c
    rrca                                          ; $7f1a: $0f
    rst $38                                       ; $7f1b: $ff
    ld d, a                                       ; $7f1c: $57
    adc l                                         ; $7f1d: $8d
    cp $2f                                        ; $7f1e: $fe $2f
    pop bc                                        ; $7f20: $c1

Jump_05b_7f21:
    xor a                                         ; $7f21: $af
    cp $fc                                        ; $7f22: $fe $fc
    ei                                            ; $7f24: $fb
    cp a                                          ; $7f25: $bf
    ld [hl], h                                    ; $7f26: $74
    ld h, a                                       ; $7f27: $67
    ld e, h                                       ; $7f28: $5c
    ld l, c                                       ; $7f29: $69

Jump_05b_7f2a:
    call c, $96f7                                 ; $7f2a: $dc $f7 $96
    inc a                                         ; $7f2d: $3c
    push bc                                       ; $7f2e: $c5

Jump_05b_7f2f:
    ld [hl], h                                    ; $7f2f: $74
    add $d9                                       ; $7f30: $c6 $d9
    adc c                                         ; $7f32: $89
    ld h, [hl]                                    ; $7f33: $66
    ld a, a                                       ; $7f34: $7f
    ld bc, $1bfc                                  ; $7f35: $01 $fc $1b

Jump_05b_7f38:
    db $10                                        ; $7f38: $10
    ld [$95c9], a                                 ; $7f39: $ea $c9 $95
    call nc, $66bd                                ; $7f3c: $d4 $bd $66

Call_05b_7f3f:
    inc h                                         ; $7f3f: $24
    rst $30                                       ; $7f40: $f7
    add $ed                                       ; $7f41: $c6 $ed
    db $fd                                        ; $7f43: $fd
    add hl, bc                                    ; $7f44: $09
    ld [$10b2], sp                                ; $7f45: $08 $b2 $10
    ld d, $14                                     ; $7f48: $16 $14
    nop                                           ; $7f4a: $00
    ret nc                                        ; $7f4b: $d0

    dec h                                         ; $7f4c: $25
    inc a                                         ; $7f4d: $3c
    and c                                         ; $7f4e: $a1
    and d                                         ; $7f4f: $a2
    or h                                          ; $7f50: $b4
    or d                                          ; $7f51: $b2
    ld d, [hl]                                    ; $7f52: $56
    ld c, d                                       ; $7f53: $4a
    push de                                       ; $7f54: $d5
    and h                                         ; $7f55: $a4
    adc c                                         ; $7f56: $89
    inc de                                        ; $7f57: $13
    push hl                                       ; $7f58: $e5
    db $d3                                        ; $7f59: $d3
    and $54                                       ; $7f5a: $e6 $54
    ld [hl], h                                    ; $7f5c: $74
    ld bc, $63bc                                  ; $7f5d: $01 $bc $63
    sbc h                                         ; $7f60: $9c
    xor l                                         ; $7f61: $ad
    and h                                         ; $7f62: $a4
    and d                                         ; $7f63: $a2
    sbc e                                         ; $7f64: $9b
    sub h                                         ; $7f65: $94
    ld d, d                                       ; $7f66: $52
    jp hl                                         ; $7f67: $e9


    ld d, b                                       ; $7f68: $50
    jp c, $182b                                   ; $7f69: $da $2b $18

    xor e                                         ; $7f6c: $ab
    ld h, d                                       ; $7f6d: $62
    ld l, [hl]                                    ; $7f6e: $6e
    ld l, c                                       ; $7f6f: $69
    xor $b2                                       ; $7f70: $ee $b2
    ld e, b                                       ; $7f72: $58
    db $db                                        ; $7f73: $db
    ld [hl], e                                    ; $7f74: $73
    ld b, d                                       ; $7f75: $42
    ld l, a                                       ; $7f76: $6f
    adc e                                         ; $7f77: $8b
    ld a, e                                       ; $7f78: $7b
    ld c, [hl]                                    ; $7f79: $4e
    ld e, h                                       ; $7f7a: $5c
    nop                                           ; $7f7b: $00
    db $fc                                        ; $7f7c: $fc
    dec de                                        ; $7f7d: $1b
    db $10                                        ; $7f7e: $10

Jump_05b_7f7f:
    ld [$95c9], a                                 ; $7f7f: $ea $c9 $95
    call nc, $d6bd                                ; $7f82: $d4 $bd $d6
    and h                                         ; $7f85: $a4
    inc e                                         ; $7f86: $1c
    rst $10                                       ; $7f87: $d7
    or $be                                        ; $7f88: $f6 $be
    ld b, e                                       ; $7f8a: $43
    add a                                         ; $7f8b: $87
    dec hl                                        ; $7f8c: $2b
    ld l, e                                       ; $7f8d: $6b
    ld [hl+], a                                   ; $7f8e: $22
    cp c                                          ; $7f8f: $b9
    scf                                           ; $7f90: $37
    ld l, [hl]                                    ; $7f91: $6e
    rst $28                                       ; $7f92: $ef
    ld c, a                                       ; $7f93: $4f
    ld b, b                                       ; $7f94: $40
    sub b                                         ; $7f95: $90
    ld b, l                                       ; $7f96: $45
    ld b, c                                       ; $7f97: $41
    ld bc, $a5d0                                  ; $7f98: $01 $d0 $a5
    add hl, de                                    ; $7f9b: $19
    xor h                                         ; $7f9c: $ac
    ld [hl], c                                    ; $7f9d: $71
    ld l, l                                       ; $7f9e: $6d
    sub l                                         ; $7f9f: $95
    rst $38                                       ; $7fa0: $ff
    adc $f9                                       ; $7fa1: $ce $f9
    ld [$a68d], a                                 ; $7fa3: $ea $8d $a6
    or l                                          ; $7fa6: $b5
    xor l                                         ; $7fa7: $ad
    cp c                                          ; $7fa8: $b9
    ld [hl], l                                    ; $7fa9: $75

Jump_05b_7faa:
    ret                                           ; $7faa: $c9


    db $d3                                        ; $7fab: $d3
    ld c, b                                       ; $7fac: $48
    dec de                                        ; $7fad: $1b
    reti                                          ; $7fae: $d9


    ld a, [bc]                                    ; $7faf: $0a
    ld c, e                                       ; $7fb0: $4b
    ld [hl], e                                    ; $7fb1: $73
    sub a                                         ; $7fb2: $97
    push bc                                       ; $7fb3: $c5
    ld d, [hl]                                    ; $7fb4: $56
    sub h                                         ; $7fb5: $94
    xor $0d                                       ; $7fb6: $ee $0d
    cp e                                          ; $7fb8: $bb
    nop                                           ; $7fb9: $00
    db $fc                                        ; $7fba: $fc
    dec de                                        ; $7fbb: $1b
    db $10                                        ; $7fbc: $10
    ld [$95c9], a                                 ; $7fbd: $ea $c9 $95
    call nc, $66bd                                ; $7fc0: $d4 $bd $66
    inc h                                         ; $7fc3: $24
    rst $30                                       ; $7fc4: $f7
    add $ed                                       ; $7fc5: $c6 $ed
    db $fd                                        ; $7fc7: $fd
    add hl, bc                                    ; $7fc8: $09
    ld [$10b2], sp                                ; $7fc9: $08 $b2 $10
    ld d, [hl]                                    ; $7fcc: $56
    ld d, d                                       ; $7fcd: $52
    ld a, $c3                                     ; $7fce: $3e $c3
    inc b                                         ; $7fd0: $04
    jp $d90c                                      ; $7fd1: $c3 $0c $d9


    ld b, d                                       ; $7fd4: $42
    ld bc, $543c                                  ; $7fd5: $01 $3c $54
    ld [hl], c                                    ; $7fd8: $71
    ld c, [hl]                                    ; $7fd9: $4e
    xor b                                         ; $7fda: $a8
    ld a, a                                       ; $7fdb: $7f
    ld l, l                                       ; $7fdc: $6d
    push de                                       ; $7fdd: $d5
    db $e3                                        ; $7fde: $e3
    sbc h                                         ; $7fdf: $9c
    rst $10                                       ; $7fe0: $d7
    inc e                                         ; $7fe1: $1c
    ld l, l                                       ; $7fe2: $6d
    ld b, e                                       ; $7fe3: $43
    jr nc, @+$58                                  ; $7fe4: $30 $56

    push bc                                       ; $7fe6: $c5
    call c, $04ba                                 ; $7fe7: $dc $ba $04
    ld e, l                                       ; $7fea: $5d
    ld [$080d], a                                 ; $7feb: $ea $0d $08
    dec h                                         ; $7fee: $25
    add l                                         ; $7fef: $85
    dec [hl]                                      ; $7ff0: $35
    ld d, c                                       ; $7ff1: $51
    add hl, hl                                    ; $7ff2: $29
    sub l                                         ; $7ff3: $95
    ld h, b                                       ; $7ff4: $60

Call_05b_7ff5:
    ld d, h                                       ; $7ff5: $54
    and h                                         ; $7ff6: $a4
    cp l                                          ; $7ff7: $bd
    sub l                                         ; $7ff8: $95
    or l                                          ; $7ff9: $b5
    ld c, $a5                                     ; $7ffa: $0e $a5
    dec e                                         ; $7ffc: $1d
    ld [hl], h                                    ; $7ffd: $74
    db $01                                        ; $7ffe: $01
    rst $38                                       ; $7fff: $ff
