; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

    ccf                                           ; $4000: $3f
    sub a                                         ; $4001: $97
    dec [hl]                                      ; $4002: $35
    ld [hl+], a                                   ; $4003: $22
    ld [hl], l                                    ; $4004: $75
    push hl                                       ; $4005: $e5
    ld h, a                                       ; $4006: $67
    add a                                         ; $4007: $87
    and [hl]                                      ; $4008: $a6
    sbc c                                         ; $4009: $99
    sub d                                         ; $400a: $92
    ld hl, $fb7d                                  ; $400b: $21 $7d $fb
    ld a, c                                       ; $400e: $79
    xor $7c                                       ; $400f: $ee $7c
    add h                                         ; $4011: $84
    add h                                         ; $4012: $84
    cp [hl]                                       ; $4013: $be
    ld de, $f523                                  ; $4014: $11 $23 $f5
    ld e, [hl]                                    ; $4017: $5e
    xor a                                         ; $4018: $af
    ld h, b                                       ; $4019: $60
    jp z, Jump_03f_742f                           ; $401a: $ca $2f $74

    db $f4                                        ; $401d: $f4
    call nc, Call_03f_4d09                        ; $401e: $d4 $09 $4d
    ld b, d                                       ; $4021: $42
    sub h                                         ; $4022: $94
    dec [hl]                                      ; $4023: $35
    add h                                         ; $4024: $84
    add h                                         ; $4025: $84
    cp [hl]                                       ; $4026: $be
    ld de, $7523                                  ; $4027: $11 $23 $75
    pop hl                                        ; $402a: $e1
    sra a                                         ; $402b: $cb $2f
    ld c, h                                       ; $402d: $4c
    db $d3                                        ; $402e: $d3
    ld [de], a                                    ; $402f: $12
    xor c                                         ; $4030: $a9
    or e                                          ; $4031: $b3
    ld c, $72                                     ; $4032: $0e $72
    cpl                                           ; $4034: $2f
    cp $65                                        ; $4035: $fe $65
    ld [$4274], a                                 ; $4037: $ea $74 $42
    jp Jump_03f_7af8                              ; $403a: $c3 $f8 $7a


    cpl                                           ; $403d: $2f
    ret nz                                        ; $403e: $c0

    dec d                                         ; $403f: $15
    db $fd                                        ; $4040: $fd
    dec b                                         ; $4041: $05
    add $97                                       ; $4042: $c6 $97
    ld [$715f], sp                                ; $4044: $08 $5f $71
    add h                                         ; $4047: $84
    ld [hl], d                                    ; $4048: $72
    jp z, Jump_03f_6342                           ; $4049: $ca $42 $63

    ld e, d                                       ; $404c: $5a
    ld [c], a                                     ; $404d: $e2
    rst $08                                       ; $404e: $cf
    ld c, $4d                                     ; $404f: $0e $4d
    inc sp                                        ; $4051: $33
    dec h                                         ; $4052: $25
    ld b, e                                       ; $4053: $43
    ld a, [$f3f6]                                 ; $4054: $fa $f6 $f3
    call c, Call_000_08f9                         ; $4057: $dc $f9 $08
    add hl, bc                                    ; $405a: $09
    ld a, l                                       ; $405b: $7d
    inc hl                                        ; $405c: $23
    ld b, [hl]                                    ; $405d: $46
    ld [$cb3c], a                                 ; $405e: $ea $3c $cb
    ld a, [$0f10]                                 ; $4061: $fa $10 $0f
    ld e, b                                       ; $4064: $58
    add b                                         ; $4065: $80
    inc [hl]                                      ; $4066: $34
    inc [hl]                                      ; $4067: $34
    dec l                                         ; $4068: $2d
    db $fc                                        ; $4069: $fc
    or d                                          ; $406a: $b2
    ldh a, [$e5]                                  ; $406b: $f0 $e5
    ld d, a                                       ; $406d: $57
    and c                                         ; $406e: $a1
    inc l                                         ; $406f: $2c
    ld a, [hl-]                                   ; $4070: $3a
    ld e, l                                       ; $4071: $5d
    ld b, e                                       ; $4072: $43
    ld c, b                                       ; $4073: $48
    add sp, $1b                                   ; $4074: $e8 $1b
    ld sp, $6752                                  ; $4076: $31 $52 $67
    ld e, l                                       ; $4079: $5d
    and l                                         ; $407a: $a5
    xor c                                         ; $407b: $a9
    ei                                            ; $407c: $fb
    jp nc, $bffa                                  ; $407d: $d2 $fa $bf

    adc h                                         ; $4080: $8c
    ld h, l                                       ; $4081: $65
    and l                                         ; $4082: $a5
    ld [hl], l                                    ; $4083: $75
    inc h                                         ; $4084: $24
    rst $20                                       ; $4085: $e7
    add hl, sp                                    ; $4086: $39
    and c                                         ; $4087: $a1
    ld h, c                                       ; $4088: $61
    ld a, h                                       ; $4089: $7c
    cp l                                          ; $408a: $bd
    ld bc, $2f01                                  ; $408b: $01 $01 $2f
    cp a                                          ; $408e: $bf
    ld a, [bc]                                    ; $408f: $0a
    ld h, l                                       ; $4090: $65
    inc l                                         ; $4091: $2c
    dec sp                                        ; $4092: $3b
    scf                                           ; $4093: $37
    ld c, e                                       ; $4094: $4b
    set 6, l                                      ; $4095: $cb $f5
    ld a, c                                       ; $4097: $79
    xor b                                         ; $4098: $a8
    call Call_03f_73ba                            ; $4099: $cd $ba $73
    or e                                          ; $409c: $b3
    or h                                          ; $409d: $b4
    call c, $d265                                 ; $409e: $dc $65 $d2
    jp nz, $8cd2                                  ; $40a1: $c2 $d2 $8c

    ld d, e                                       ; $40a4: $53
    ld hl, sp+$42                                 ; $40a5: $f8 $42
    ld d, a                                       ; $40a7: $57
    db $f4                                        ; $40a8: $f4
    rla                                           ; $40a9: $17
    jr jr_03f_410b                                ; $40aa: $18 $5f

    ld [c], a                                     ; $40ac: $e2
    xor h                                         ; $40ad: $ac
    ei                                            ; $40ae: $fb
    ldh a, [$85]                                  ; $40af: $f0 $85
    add [hl]                                      ; $40b1: $86
    jp nc, $9635                                  ; $40b2: $d2 $35 $96

    push af                                       ; $40b5: $f5
    ld hl, $b01e                                  ; $40b6: $21 $1e $b0
    nop                                           ; $40b9: $00
    ld l, c                                       ; $40ba: $69
    ld l, b                                       ; $40bb: $68
    ld e, d                                       ; $40bc: $5a
    ld hl, sp-$1b                                 ; $40bd: $f8 $e5
    ld e, [hl]                                    ; $40bf: $5e
    jr nz, @+$0d                                  ; $40c0: $20 $0b

    adc l                                         ; $40c2: $8d
    ld l, c                                       ; $40c3: $69
    adc c                                         ; $40c4: $89
    cp a                                          ; $40c5: $bf
    ld [hl], e                                    ; $40c6: $73
    or e                                          ; $40c7: $b3
    or h                                          ; $40c8: $b4
    ld e, h                                       ; $40c9: $5c
    sbc a                                         ; $40ca: $9f
    add a                                         ; $40cb: $87
    jp c, $e772                                   ; $40cc: $da $72 $e7

    ld h, [hl]                                    ; $40cf: $66
    ld l, c                                       ; $40d0: $69
    cp c                                          ; $40d1: $b9
    res 4, h                                      ; $40d2: $cb $a4
    add l                                         ; $40d4: $85
    and l                                         ; $40d5: $a5
    add hl, de                                    ; $40d6: $19
    and a                                         ; $40d7: $a7
    scf                                           ; $40d8: $37
    nop                                           ; $40d9: $00
    halt                                          ; $40da: $76
    ld a, [de]                                    ; $40db: $1a
    cp e                                          ; $40dc: $bb
    ld [hl], h                                    ; $40dd: $74
    cp a                                          ; $40de: $bf
    ret nc                                        ; $40df: $d0

    ld h, c                                       ; $40e0: $61
    call z, Call_000_2e79                         ; $40e1: $cc $79 $2e
    ld [de], a                                    ; $40e4: $12
    add hl, hl                                    ; $40e5: $29
    ld [hl], e                                    ; $40e6: $73
    jr c, jr_03f_4124                             ; $40e7: $38 $3b

    xor h                                         ; $40e9: $ac
    ld d, $62                                     ; $40ea: $16 $62
    db $fc                                        ; $40ec: $fc
    cp d                                          ; $40ed: $ba
    ld de, $ae63                                  ; $40ee: $11 $63 $ae
    ld c, a                                       ; $40f1: $4f
    rla                                           ; $40f2: $17
    call nc, $ce4c                                ; $40f3: $d4 $4c $ce
    cp d                                          ; $40f6: $ba
    ret c                                         ; $40f7: $d8

    adc b                                         ; $40f8: $88
    call nc, Call_03f_5e55                        ; $40f9: $d4 $55 $5e
    jp c, Jump_000_32eb                           ; $40fc: $da $eb $32

    inc [hl]                                      ; $40ff: $34
    dec l                                         ; $4100: $2d
    sub c                                         ; $4101: $91
    ld a, d                                       ; $4102: $7a
    ld [$69ec], a                                 ; $4103: $ea $ec $69
    add d                                         ; $4106: $82
    xor l                                         ; $4107: $ad
    ld a, a                                       ; $4108: $7f
    ld l, $72                                     ; $4109: $2e $72

jr_03f_410b:
    ld hl, $6ea5                                  ; $410b: $21 $a5 $6e
    sub c                                         ; $410e: $91
    dec hl                                        ; $410f: $2b
    adc a                                         ; $4110: $8f
    db $fd                                        ; $4111: $fd
    ld e, a                                       ; $4112: $5f
    and $70                                       ; $4113: $e6 $70
    ld b, c                                       ; $4115: $41
    sbc d                                         ; $4116: $9a
    ld h, b                                       ; $4117: $60
    db $eb                                        ; $4118: $eb
    sbc a                                         ; $4119: $9f
    and a                                         ; $411a: $a7
    db $ed                                        ; $411b: $ed
    ld [c], a                                     ; $411c: $e2
    ld c, [hl]                                    ; $411d: $4e
    ccf                                           ; $411e: $3f
    add $5c                                       ; $411f: $c6 $5c
    db $e4                                        ; $4121: $e4
    ld b, d                                       ; $4122: $42
    ld c, d                                       ; $4123: $4a

jr_03f_4124:
    db $dd                                        ; $4124: $dd

jr_03f_4125:
    ld [hl+], a                                   ; $4125: $22
    rst $20                                       ; $4126: $e7
    ld h, d                                       ; $4127: $62
    dec hl                                        ; $4128: $2b
    xor l                                         ; $4129: $ad
    rst $38                                       ; $412a: $ff
    rr h                                          ; $412b: $cb $1c
    ld l, $3b                                     ; $412d: $2e $3b
    db $fd                                        ; $412f: $fd
    jr jr_03f_4125                                ; $4130: $18 $f3

    or h                                          ; $4132: $b4
    push af                                       ; $4133: $f5
    sub [hl]                                      ; $4134: $96
    xor h                                         ; $4135: $ac
    ld [hl], e                                    ; $4136: $73
    sub c                                         ; $4137: $91
    dec bc                                        ; $4138: $0b
    add hl, hl                                    ; $4139: $29
    ld [hl], l                                    ; $413a: $75
    adc e                                         ; $413b: $8b
    sbc h                                         ; $413c: $9c
    ld de, $ccbe                                  ; $413d: $11 $be $cc
    pop hl                                        ; $4140: $e1
    ld e, b                                       ; $4141: $58
    ld c, l                                       ; $4142: $4d
    inc de                                        ; $4143: $13
    ld [hl], e                                    ; $4144: $73
    sbc [hl]                                      ; $4145: $9e
    inc sp                                        ; $4146: $33
    sub d                                         ; $4147: $92
    ld [hl], l                                    ; $4148: $75
    adc $24                                       ; $4149: $ce $24
    xor [hl]                                      ; $414b: $ae
    and h                                         ; $414c: $a4
    xor [hl]                                      ; $414d: $ae
    or a                                          ; $414e: $b7
    ld h, h                                       ; $414f: $64
    sbc l                                         ; $4150: $9d
    ld a, [hl-]                                   ; $4151: $3a
    rst $08                                       ; $4152: $cf
    sbc l                                         ; $4153: $9d
    dec l                                         ; $4154: $2d
    xor [hl]                                      ; $4155: $ae
    rst $18                                       ; $4156: $df
    db $eb                                        ; $4157: $eb
    xor h                                         ; $4158: $ac
    db $eb                                        ; $4159: $eb
    di                                            ; $415a: $f3
    ld d, b                                       ; $415b: $50
    ld [$fdce], a                                 ; $415c: $ea $ce $fd
    ld a, [hl-]                                   ; $415f: $3a
    dec [hl]                                      ; $4160: $35
    push af                                       ; $4161: $f5
    or h                                          ; $4162: $b4
    add l                                         ; $4163: $85
    add hl, hl                                    ; $4164: $29
    dec sp                                        ; $4165: $3b
    and b                                         ; $4166: $a0
    call nz, $e756                                ; $4167: $c4 $56 $e7
    db $ec                                        ; $416a: $ec
    ld e, l                                       ; $416b: $5d
    sub e                                         ; $416c: $93
    ld b, l                                       ; $416d: $45
    ld l, $a4                                     ; $416e: $2e $a4
    call nc, Call_03f_722d                        ; $4170: $d4 $2d $72
    ld a, [$c9a5]                                 ; $4173: $fa $a5 $c9
    add d                                         ; $4176: $82
    adc $4a                                       ; $4177: $ce $4a
    db $f4                                        ; $4179: $f4
    add hl, sp                                    ; $417a: $39

jr_03f_417b:
    rst $08                                       ; $417b: $cf
    ld [hl-], a                                   ; $417c: $32
    ld h, d                                       ; $417d: $62
    or l                                          ; $417e: $b5
    db $10                                        ; $417f: $10
    db $e3                                        ; $4180: $e3
    rst $10                                       ; $4181: $d7
    adc l                                         ; $4182: $8d
    jr @-$0b                                      ; $4183: $18 $f3

    sbc $65                                       ; $4185: $de $65
    ld l, [hl]                                    ; $4187: $6e
    sub a                                         ; $4188: $97
    ld d, d                                       ; $4189: $52
    sbc e                                         ; $418a: $9b
    ld b, [hl]                                    ; $418b: $46
    and d                                         ; $418c: $a2
    ld l, c                                       ; $418d: $69
    ccf                                           ; $418e: $3f
    db $eb                                        ; $418f: $eb
    ld [bc], a                                    ; $4190: $02
    inc e                                         ; $4191: $1c
    add $d4                                       ; $4192: $c6 $d4
    push af                                       ; $4194: $f5
    jp hl                                         ; $4195: $e9


    add d                                         ; $4196: $82
    sbc d                                         ; $4197: $9a
    ld c, c                                       ; $4198: $49
    db $dd                                        ; $4199: $dd
    add a                                         ; $419a: $87
    cpl                                           ; $419b: $2f
    inc [hl]                                      ; $419c: $34
    call nz, Call_03f_5711                        ; $419d: $c4 $11 $57
    ld a, [hl]                                    ; $41a0: $7e
    pop hl                                        ; $41a1: $e1
    ld c, e                                       ; $41a2: $4b
    db $e4                                        ; $41a3: $e4
    inc a                                         ; $41a4: $3c
    add l                                         ; $41a5: $85
    ld h, $f8                                     ; $41a6: $26 $f8
    scf                                           ; $41a8: $37
    nop                                           ; $41a9: $00
    ld h, a                                       ; $41aa: $67
    scf                                           ; $41ab: $37
    ld h, d                                       ; $41ac: $62
    add l                                         ; $41ad: $85
    ret c                                         ; $41ae: $d8

    ld a, h                                       ; $41af: $7c
    xor $57                                       ; $41b0: $ee $57
    ld a, [hl]                                    ; $41b2: $7e
    and [hl]                                      ; $41b3: $a6
    cp h                                          ; $41b4: $bc
    ld [hl], d                                    ; $41b5: $72
    sbc [hl]                                      ; $41b6: $9e
    or e                                          ; $41b7: $b3
    ld b, e                                       ; $41b8: $43
    di                                            ; $41b9: $f3
    jr jr_03f_417b                                ; $41ba: $18 $bf

    ld l, [hl]                                    ; $41bc: $6e
    call nz, Call_03f_7a98                        ; $41bd: $c4 $98 $7a
    xor a                                         ; $41c0: $af
    ld [hl], a                                    ; $41c1: $77
    add [hl]                                      ; $41c2: $86
    db $ed                                        ; $41c3: $ed
    ld d, a                                       ; $41c4: $57
    scf                                           ; $41c5: $37
    ld e, l                                       ; $41c6: $5d
    sbc l                                         ; $41c7: $9d
    sub l                                         ; $41c8: $95
    ld d, [hl]                                    ; $41c9: $56
    scf                                           ; $41ca: $37
    ld h, d                                       ; $41cb: $62
    ld c, h                                       ; $41cc: $4c
    ld e, l                                       ; $41cd: $5d
    ld hl, sp-$0e                                 ; $41ce: $f8 $f2
    dec bc                                        ; $41d0: $0b
    cp [hl]                                       ; $41d1: $be
    and c                                         ; $41d2: $a1
    xor h                                         ; $41d3: $ac
    or b                                          ; $41d4: $b0
    jp nc, $cbe2                                  ; $41d5: $d2 $e2 $cb

    inc e                                         ; $41d8: $1c
    cp $94                                        ; $41d9: $fe $94
    jp nc, $cf38                                  ; $41db: $d2 $38 $cf

    ld h, l                                       ; $41de: $65
    and a                                         ; $41df: $a7
    rra                                           ; $41e0: $1f
    ld h, e                                       ; $41e1: $63
    ld [$c0bd], a                                 ; $41e2: $ea $bd $c0
    ld [hl], $16                                  ; $41e5: $36 $16
    ld d, [hl]                                    ; $41e7: $56
    ld e, [hl]                                    ; $41e8: $5e
    rst $00                                       ; $41e9: $c7
    or d                                          ; $41ea: $b2
    db $ec                                        ; $41eb: $ec
    db $f4                                        ; $41ec: $f4
    ld h, e                                       ; $41ed: $63
    call z, Call_03f_5f05                         ; $41ee: $cc $05 $5f
    db $e3                                        ; $41f1: $e3
    xor a                                         ; $41f2: $af
    db $fc                                        ; $41f3: $fc
    cp [hl]                                       ; $41f4: $be
    ld b, h                                       ; $41f5: $44
    daa                                           ; $41f6: $27
    cp a                                          ; $41f7: $bf
    rst $30                                       ; $41f8: $f7
    inc [hl]                                      ; $41f9: $34
    xor $fd                                       ; $41fa: $ee $fd
    jp $a617                                      ; $41fc: $c3 $17 $a6


    sub a                                         ; $41ff: $97
    ld l, $5d                                     ; $4200: $2e $5d
    ld hl, sp-$06                                 ; $4202: $f8 $fa
    or d                                          ; $4204: $b2
    sbc a                                         ; $4205: $9f
    jp $a765                                      ; $4206: $c3 $65 $a7


    rra                                           ; $4209: $1f
    ld h, e                                       ; $420a: $63
    xor [hl]                                      ; $420b: $ae
    xor $d2                                       ; $420c: $ee $d2
    add l                                         ; $420e: $85
    call nc, Call_03f_79f7                        ; $420f: $d4 $f7 $79
    cpl                                           ; $4212: $2f
    or b                                          ; $4213: $b0
    call $cd64                                    ; $4214: $cd $64 $cd
    ld c, b                                       ; $4217: $48
    ld e, l                                       ; $4218: $5d
    db $ed                                        ; $4219: $ed
    ld c, h                                       ; $421a: $4c
    jr nc, jr_03f_4292                            ; $421b: $30 $75

    push de                                       ; $421d: $d5
    ld e, a                                       ; $421e: $5f
    ld c, d                                       ; $421f: $4a
    ld a, [hl+]                                   ; $4220: $2a
    ld a, h                                       ; $4221: $7c
    sub c                                         ; $4222: $91
    add sp, -$5b                                  ; $4223: $e8 $a5
    ld c, e                                       ; $4225: $4b
    ld h, a                                       ; $4226: $67
    ld [hl], c                                    ; $4227: $71
    inc e                                         ; $4228: $1c
    db $eb                                        ; $4229: $eb
    sub b                                         ; $422a: $90
    db $fd                                        ; $422b: $fd
    ld e, a                                       ; $422c: $5f
    and $39                                       ; $422d: $e6 $39
    ld b, e                                       ; $422f: $43
    ret                                           ; $4230: $c9


    dec de                                        ; $4231: $1b
    nop                                           ; $4232: $00
    add c                                         ; $4233: $81
    inc l                                         ; $4234: $2c
    inc [hl]                                      ; $4235: $34
    and [hl]                                      ; $4236: $a6
    dec h                                         ; $4237: $25
    cp $ca                                        ; $4238: $fe $ca
    rst $08                                       ; $423a: $cf
    ld h, h                                       ; $423b: $64
    db $dd                                        ; $423c: $dd
    ld l, c                                       ; $423d: $69
    ld hl, sp-$5a                                 ; $423e: $f8 $a6
    reti                                          ; $4240: $d9


    ld [c], a                                     ; $4241: $e2
    ld c, h                                       ; $4242: $4c
    adc d                                         ; $4243: $8a
    ret nc                                        ; $4244: $d0

    call nz, $e79f                                ; $4245: $c4 $9f $e7
    call z, Call_03f_4f17                         ; $4248: $cc $17 $4f
    ld sp, hl                                     ; $424b: $f9
    ld [hl], c                                    ; $424c: $71
    dec c                                         ; $424d: $0d
    ld hl, $6fa1                                  ; $424e: $21 $a1 $6f
    call nz, Call_03f_5d48                        ; $4251: $c4 $48 $5d
    ld hl, sp-$0e                                 ; $4254: $f8 $f2
    db $d3                                        ; $4256: $d3
    inc l                                         ; $4257: $2c
    adc $b4                                       ; $4258: $ce $b4
    call nz, $b197                                ; $425a: $c4 $97 $b1
    db $ec                                        ; $425d: $ec
    ld d, d                                       ; $425e: $52
    add $9c                                       ; $425f: $c6 $9c
    rst $20                                       ; $4261: $e7
    jp z, Jump_000_02eb                           ; $4262: $ca $eb $02

    jp nc, Jump_03f_44b4                          ; $4265: $d2 $b4 $44

    ld [$00bd], a                                 ; $4268: $ea $bd $00
    and c                                         ; $426b: $a1
    or [hl]                                       ; $426c: $b6
    call nz, $2f5f                                ; $426d: $c4 $5f $2f
    sub c                                         ; $4270: $91
    sub $f9                                       ; $4271: $d6 $f9
    push hl                                       ; $4273: $e5
    ld a, d                                       ; $4274: $7a
    ld [hl], l                                    ; $4275: $75
    cp [hl]                                       ; $4276: $be
    ld e, a                                       ; $4277: $5f
    ld l, $7c                                     ; $4278: $2e $7c
    ld sp, hl                                     ; $427a: $f9
    add hl, hl                                    ; $427b: $29
    dec bc                                        ; $427c: $0b
    adc l                                         ; $427d: $8d
    ld l, c                                       ; $427e: $69
    adc c                                         ; $427f: $89
    cpl                                           ; $4280: $2f
    rst $30                                       ; $4281: $f7
    ld d, $20                                     ; $4282: $16 $20
    call nc, $f896                                ; $4284: $d4 $96 $f8
    dec sp                                        ; $4287: $3b
    add a                                         ; $4288: $87
    ld b, d                                       ; $4289: $42
    inc de                                        ; $428a: $13
    db $fc                                        ; $428b: $fc
    add l                                         ; $428c: $85
    cpl                                           ; $428d: $2f
    cp a                                          ; $428e: $bf
    ldh a, [$f5]                                  ; $428f: $f0 $f5
    ld h, l                                       ; $4291: $65

jr_03f_4292:
    cp a                                          ; $4292: $bf
    ld a, [c]                                     ; $4293: $f2
    set 2, b                                      ; $4294: $cb $d0
    inc [hl]                                      ; $4296: $34
    ld e, e                                       ; $4297: $5b
    sbc h                                         ; $4298: $9c
    ld [hl], $c8                                  ; $4299: $36 $c8
    dec [hl]                                      ; $429b: $35
    ld h, d                                       ; $429c: $62
    db $e4                                        ; $429d: $e4
    ld [hl], d                                    ; $429e: $72
    rst $20                                       ; $429f: $e7
    rst $30                                       ; $42a0: $f7
    or a                                          ; $42a1: $b7
    cp b                                          ; $42a2: $b8
    ld b, [hl]                                    ; $42a3: $46
    pop af                                        ; $42a4: $f1
    cp a                                          ; $42a5: $bf
    ldh a, [$e5]                                  ; $42a6: $f0 $e5
    ld d, a                                       ; $42a8: $57
    ret                                           ; $42a9: $c9


    ld d, d                                       ; $42aa: $52
    and c                                         ; $42ab: $a1
    call z, $f33a                                 ; $42ac: $cc $3a $f3
    ld [hl], l                                    ; $42af: $75
    and a                                         ; $42b0: $a7
    cp l                                          ; $42b1: $bd
    call c, $edeb                                 ; $42b2: $dc $eb $ed
    ld e, $7d                                     ; $42b5: $1e $7d
    adc [hl]                                      ; $42b7: $8e
    ld a, [de]                                    ; $42b8: $1a
    xor e                                         ; $42b9: $ab
    ld [$63f4], a                                 ; $42ba: $ea $f4 $63
    db $d3                                        ; $42bd: $d3
    ld l, d                                       ; $42be: $6a
    sbc d                                         ; $42bf: $9a
    ld h, b                                       ; $42c0: $60
    adc $24                                       ; $42c1: $ce $24
    ld l, $ba                                     ; $42c3: $2e $ba
    or c                                          ; $42c5: $b1
    ret nc                                        ; $42c6: $d0

    sbc b                                         ; $42c7: $98
    ld h, [hl]                                    ; $42c8: $66
    adc e                                         ; $42c9: $8b
    ldh a, [$85]                                  ; $42ca: $f0 $85
    ld b, d                                       ; $42cc: $42
    ld l, l                                       ; $42cd: $6d
    adc c                                         ; $42ce: $89
    ccf                                           ; $42cf: $3f
    sub [hl]                                      ; $42d0: $96
    sbc l                                         ; $42d1: $9d
    sbc l                                         ; $42d2: $9d
    pop de                                        ; $42d3: $d1
    ld d, $d7                                     ; $42d4: $16 $d7
    ld l, e                                       ; $42d6: $6b
    pop hl                                        ; $42d7: $e1
    set 1, a                                      ; $42d8: $cb $cf
    inc h                                         ; $42da: $24
    ld d, [hl]                                    ; $42db: $56
    scf                                           ; $42dc: $37
    xor c                                         ; $42dd: $a9
    ld e, a                                       ; $42de: $5f
    jp z, $dbdf                                   ; $42df: $ca $df $db

    ld b, l                                       ; $42e2: $45
    xor a                                         ; $42e3: $af
    xor e                                         ; $42e4: $ab
    ld e, a                                       ; $42e5: $5f
    call z, $90eb                                 ; $42e6: $cc $eb $90
    sub b                                         ; $42e9: $90
    cp h                                          ; $42ea: $bc

Jump_03f_42eb:
    ld c, [hl]                                    ; $42eb: $4e
    ld e, e                                       ; $42ec: $5b
    ld [hl], h                                    ; $42ed: $74
    rst $28                                       ; $42ee: $ef
    ld e, a                                       ; $42ef: $5f
    rst $10                                       ; $42f0: $d7
    rst $08                                       ; $42f1: $cf
    ld h, c                                       ; $42f2: $61
    call z, $a2fd                                 ; $42f3: $cc $fd $a2
    db $d3                                        ; $42f6: $d3
    add hl, hl                                    ; $42f7: $29
    dec bc                                        ; $42f8: $0b
    adc l                                         ; $42f9: $8d
    ld l, c                                       ; $42fa: $69
    adc c                                         ; $42fb: $89
    call nc, $f435                                ; $42fc: $d4 $35 $f4
    call Call_03f_4e3c                            ; $42ff: $cd $3c $4e
    xor b                                         ; $4302: $a8
    and c                                         ; $4303: $a1
    and e                                         ; $4304: $a3
    add $d7                                       ; $4305: $c6 $d7
    sbc c                                         ; $4307: $99
    inc d                                         ; $4308: $14
    and c                                         ; $4309: $a1
    adc c                                         ; $430a: $89
    xor a                                         ; $430b: $af
    and a                                         ; $430c: $a7
    adc $b8                                       ; $430d: $ce $b8
    rst $00                                       ; $430f: $c7
    ld hl, sp-$46                                 ; $4310: $f8 $ba
    cp d                                          ; $4312: $ba
    ld c, e                                       ; $4313: $4b
    rla                                           ; $4314: $17
    ld a, h                                       ; $4315: $7c
    db $eb                                        ; $4316: $eb
    jp $b357                                      ; $4317: $c3 $57 $b3


    ld e, a                                       ; $431a: $5f
    jp z, $c0bd                                   ; $431b: $ca $bd $c0

    ld [hl], $93                                  ; $431e: $36 $93
    xor b                                         ; $4320: $a8
    dec c                                         ; $4321: $0d
    ld [hl], d                                    ; $4322: $72
    call nc, $ccb1                                ; $4323: $d4 $b1 $cc
    ld a, h                                       ; $4326: $7c
    pop af                                        ; $4327: $f1
    sub h                                         ; $4328: $94
    sbc h                                         ; $4329: $9c
    ld [hl], l                                    ; $432a: $75
    dec h                                         ; $432b: $25
    ld [hl], l                                    ; $432c: $75
    dec c                                         ; $432d: $0d
    ld hl, $6fa1                                  ; $432e: $21 $a1 $6f
    call nz, $dd48                                ; $4331: $c4 $48 $dd
    ld a, e                                       ; $4334: $7b
    ld a, [de]                                    ; $4335: $1a
    rst $30                                       ; $4336: $f7
    ld a, $15                                     ; $4337: $3e $15
    ld a, $e8                                     ; $4339: $3e $e8
    pop af                                        ; $433b: $f1
    ld [hl], l                                    ; $433c: $75
    inc l                                         ; $433d: $2c
    inc de                                        ; $433e: $13
    add $bc                                       ; $433f: $c6 $bc
    ld [hl], a                                    ; $4341: $77
    ld e, c                                       ; $4342: $59
    inc hl                                        ; $4343: $23
    ld d, d                                       ; $4344: $52
    rst $20                                       ; $4345: $e7
    db $d3                                        ; $4346: $d3
    ld [hl], b                                    ; $4347: $70
    add hl, de                                    ; $4348: $19
    and [hl]                                      ; $4349: $a6
    ld b, h                                       ; $434a: $44
    add a                                         ; $434b: $87
    call $a7bf                                    ; $434c: $cd $bf $a7
    ld l, $7c                                     ; $434f: $2e $7c
    ld sp, hl                                     ; $4351: $f9
    ld de, $624d                                  ; $4352: $11 $4d $62
    sub h                                         ; $4355: $94
    sub a                                         ; $4356: $97
    sub l                                         ; $4357: $95
    sbc a                                         ; $4358: $9f
    ret                                           ; $4359: $c9


    cp d                                          ; $435a: $ba
    db $d3                                        ; $435b: $d3
    ldh a, [rKEY1]                                ; $435c: $f0 $4d
    or e                                          ; $435e: $b3
    push bc                                       ; $435f: $c5
    sbc c                                         ; $4360: $99
    inc d                                         ; $4361: $14
    and c                                         ; $4362: $a1
    adc c                                         ; $4363: $89
    ld a, a                                       ; $4364: $7f
    inc bc                                        ; $4365: $03
    rst $20                                       ; $4366: $e7
    ld h, e                                       ; $4367: $63

jr_03f_4368:
    inc h                                         ; $4368: $24
    add $1f                                       ; $4369: $c6 $1f
    pop de                                        ; $436b: $d1
    inc h                                         ; $436c: $24
    ld b, [hl]                                    ; $436d: $46
    ld a, c                                       ; $436e: $79
    ld e, c                                       ; $436f: $59
    ld a, c                                       ; $4370: $79
    ld e, l                                       ; $4371: $5d
    ld hl, sp-$3e                                 ; $4372: $f8 $c2
    ld a, [hl]                                    ; $4374: $7e
    xor a                                         ; $4375: $af
    di                                            ; $4376: $f3
    sbc h                                         ; $4377: $9c
    sub c                                         ; $4378: $91
    xor h                                         ; $4379: $ac
    ld d, e                                       ; $437a: $53
    rst $28                                       ; $437b: $ef
    dec b                                         ; $437c: $05
    ld c, b                                       ; $437d: $48
    xor e                                         ; $437e: $ab
    add hl, hl                                    ; $437f: $29
    cp c                                          ; $4380: $b9
    jp c, $c2b1                                   ; $4381: $da $b1 $c2

    or c                                          ; $4384: $b1
    call z, $d138                                 ; $4385: $cc $38 $d1
    sub h                                         ; $4388: $94
    ld e, c                                       ; $4389: $59
    rla                                           ; $438a: $17
    cp d                                          ; $438b: $ba
    and d                                         ; $438c: $a2
    cp a                                          ; $438d: $bf
    or e                                          ; $438e: $b3
    inc sp                                        ; $438f: $33
    jp c, Jump_03f_7ae2                           ; $4390: $da $e2 $7a

    dec l                                         ; $4393: $2d
    ld a, h                                       ; $4394: $7c
    ld sp, hl                                     ; $4395: $f9
    ld sp, hl                                     ; $4396: $f9
    sub a                                         ; $4397: $97
    jp nz, Jump_03f_5f95                          ; $4398: $c2 $95 $5f

    push bc                                       ; $439b: $c5
    or c                                          ; $439c: $b1
    call nz, $cfdf                                ; $439d: $c4 $df $cf
    pop hl                                        ; $43a0: $e1
    adc h                                         ; $43a1: $8c
    ld h, h                                       ; $43a2: $64
    sbc l                                         ; $43a3: $9d
    rst $30                                       ; $43a4: $f7
    db $ec                                        ; $43a5: $ec
    cp a                                          ; $43a6: $bf
    rst $38                                       ; $43a7: $ff
    ld c, d                                       ; $43a8: $4a
    ld [$a6ea], a                                 ; $43a9: $ea $ea $a6
    ld [hl], l                                    ; $43ac: $75
    adc $24                                       ; $43ad: $ce $24
    adc $e1                                       ; $43af: $ce $e1
    sub h                                         ; $43b1: $94
    sub b                                         ; $43b2: $90
    ld b, e                                       ; $43b3: $43
    sbc a                                         ; $43b4: $9f
    inc sp                                        ; $43b5: $33
    sub d                                         ; $43b6: $92
    ld [hl], l                                    ; $43b7: $75
    sbc $0b                                       ; $43b8: $de $0b
    ld l, h                                       ; $43ba: $6c
    dec bc                                        ; $43bb: $0b
    cp [hl]                                       ; $43bc: $be
    ld hl, $7c2e                                  ; $43bd: $21 $2e $7c
    ld h, c                                       ; $43c0: $61
    cp a                                          ; $43c1: $bf
    add a                                         ; $43c2: $87
    xor a                                         ; $43c3: $af
    and h                                         ; $43c4: $a4
    adc $48                                       ; $43c5: $ce $48
    sub $a9                                       ; $43c7: $d6 $a9
    ld d, e                                       ; $43c9: $53
    ld c, [hl]                                    ; $43ca: $4e
    jr jr_03f_4368                                ; $43cb: $18 $9b

    inc a                                         ; $43cd: $3c
    sbc $b3                                       ; $43ce: $de $b3
    ld b, e                                       ; $43d0: $43
    db $e3                                        ; $43d1: $e3
    adc b                                         ; $43d2: $88
    ld d, c                                       ; $43d3: $51
    ld a, [hl]                                    ; $43d4: $7e
    sub $09                                       ; $43d5: $d6 $09
    ld h, e                                       ; $43d7: $63
    sub e                                         ; $43d8: $93
    ld e, a                                       ; $43d9: $5f
    ld c, h                                       ; $43da: $4c
    rst $38                                       ; $43db: $ff
    cp d                                          ; $43dc: $ba
    ld a, [c]                                     ; $43dd: $f2
    cp d                                          ; $43de: $ba
    ldh a, [$85]                                  ; $43df: $f0 $85
    db $fd                                        ; $43e1: $fd
    ld e, [hl]                                    ; $43e2: $5e
    rst $20                                       ; $43e3: $e7
    add hl, sp                                    ; $43e4: $39
    inc hl                                        ; $43e5: $23
    ld e, c                                       ; $43e6: $59
    and a                                         ; $43e7: $a7
    ld l, $7c                                     ; $43e8: $2e $7c
    ld sp, hl                                     ; $43ea: $f9
    ld b, c                                       ; $43eb: $41
    adc a                                         ; $43ec: $8f
    cpl                                           ; $43ed: $2f
    scf                                           ; $43ee: $37
    nop                                           ; $43ef: $00
    add c                                         ; $43f0: $81
    ld l, l                                       ; $43f1: $6d
    sub c                                         ; $43f2: $91
    dec bc                                        ; $43f3: $0b
    dec de                                        ; $43f4: $1b
    push bc                                       ; $43f5: $c5
    ld d, e                                       ; $43f6: $53
    pop hl                                        ; $43f7: $e1
    dec bc                                        ; $43f8: $0b
    ld e, l                                       ; $43f9: $5d
    pop de                                        ; $43fa: $d1
    ld e, a                                       ; $43fb: $5f
    jr nz, jr_03f_4409                            ; $43fc: $20 $0b

    ld c, l                                       ; $43fe: $4d
    sbc h                                         ; $43ff: $9c
    ld [hl], l                                    ; $4400: $75
    rra                                           ; $4401: $1f
    cp [hl]                                       ; $4402: $be
    ret nc                                        ; $4403: $d0

    ld d, b                                       ; $4404: $50
    cp d                                          ; $4405: $ba
    and $70                                       ; $4406: $e6 $70
    dec [hl]                                      ; $4408: $35

jr_03f_4409:
    ld d, c                                       ; $4409: $51
    cp a                                          ; $440a: $bf
    rra                                           ; $440b: $1f
    and a                                         ; $440c: $a7
    reti                                          ; $440d: $d9


    ld de, $ba2e                                  ; $440e: $11 $2e $ba
    cp c                                          ; $4411: $b9
    ld c, [hl]                                    ; $4412: $4e
    inc sp                                        ; $4413: $33
    ld l, a                                       ; $4414: $6f
    sbc d                                         ; $4415: $9a
    dec l                                         ; $4416: $2d
    xor $4d                                       ; $4417: $ee $4d
    ld [hl], h                                    ; $4419: $74
    ld e, a                                       ; $441a: $5f
    ld l, [hl]                                    ; $441b: $6e
    nop                                           ; $441c: $00
    ld bc, $6d42                                  ; $441d: $01 $42 $6d
    adc c                                         ; $4420: $89
    ccf                                           ; $4421: $3f
    sub [hl]                                      ; $4422: $96
    sbc l                                         ; $4423: $9d
    sbc l                                         ; $4424: $9d
    pop de                                        ; $4425: $d1
    ld d, $d7                                     ; $4426: $16 $d7
    ld l, e                                       ; $4428: $6b
    pop hl                                        ; $4429: $e1
    res 5, a                                      ; $442a: $cb $af
    db $e3                                        ; $442c: $e3
    call nc, $2cbc                                ; $442d: $d4 $bc $2c
    dec sp                                        ; $4430: $3b
    db $fd                                        ; $4431: $fd
    jr jr_03f_4487                                ; $4432: $18 $53

    sub a                                         ; $4434: $97
    add $95                                       ; $4435: $c6 $95
    sbc b                                         ; $4437: $98
    ld a, [hl-]                                   ; $4438: $3a
    ld h, d                                       ; $4439: $62
    or l                                          ; $443a: $b5
    db $10                                        ; $443b: $10
    inc hl                                        ; $443c: $23
    rst $20                                       ; $443d: $e7
    cp c                                          ; $443e: $b9
    ret c                                         ; $443f: $d8

    xor $2d                                       ; $4440: $ee $2d
    or b                                          ; $4442: $b0
    dec l                                         ; $4443: $2d
    ld hl, sp-$2a                                 ; $4444: $f8 $d6
    ld a, l                                       ; $4446: $7d
    add c                                         ; $4447: $81
    ld c, $c0                                     ; $4448: $0e $c0
    ld h, l                                       ; $444a: $65
    and a                                         ; $444b: $a7
    rra                                           ; $444c: $1f
    ld h, e                                       ; $444d: $63
    jp nz, $e1f7                                  ; $444e: $c2 $f7 $e1

    dec bc                                        ; $4451: $0b
    dec c                                         ; $4452: $0d
    and l                                         ; $4453: $a5
    ld l, e                                       ; $4454: $6b
    ld c, $57                                     ; $4455: $0e $57
    inc de                                        ; $4457: $13
    push af                                       ; $4458: $f5
    ei                                            ; $4459: $fb
    ld [hl], c                                    ; $445a: $71
    pop hl                                        ; $445b: $e1
    set 1, a                                      ; $445c: $cb $cf
    db $d3                                        ; $445e: $d3
    inc [hl]                                      ; $445f: $34
    adc c                                         ; $4460: $89
    ld e, h                                       ; $4461: $5c
    ret                                           ; $4462: $c9


    ld e, c                                       ; $4463: $59
    inc e                                         ; $4464: $1c
    rla                                           ; $4465: $17
    ld a, h                                       ; $4466: $7c
    dec e                                         ; $4467: $1d
    pop de                                        ; $4468: $d1
    inc h                                         ; $4469: $24
    ld b, [hl]                                    ; $446a: $46
    ld a, c                                       ; $446b: $79
    sbc a                                         ; $446c: $9f
    scf                                           ; $446d: $37
    nop                                           ; $446e: $00
    ld d, a                                       ; $446f: $57
    jr nc, jr_03f_44e4                            ; $4470: $30 $72

    cp a                                          ; $4472: $bf
    ld a, [bc]                                    ; $4473: $0a
    ld h, l                                       ; $4474: $65
    ld e, a                                       ; $4475: $5f
    ld d, $4a                                     ; $4476: $16 $4a
    ld d, [hl]                                    ; $4478: $56
    ld d, e                                       ; $4479: $53
    ld d, e                                       ; $447a: $53
    ld d, $88                                     ; $447b: $16 $88
    rra                                           ; $447d: $1f
    ld [hl], d                                    ; $447e: $72
    pop hl                                        ; $447f: $e1
    set 1, a                                      ; $4480: $cb $cf
    ld [c], a                                     ; $4482: $e2
    cp b                                          ; $4483: $b8
    ret z                                         ; $4484: $c8

    ld sp, hl                                     ; $4485: $f9
    xor d                                         ; $4486: $aa

jr_03f_4487:
    dec hl                                        ; $4487: $2b
    xor a                                         ; $4488: $af
    xor e                                         ; $4489: $ab
    or [hl]                                       ; $448a: $b6
    sub l                                         ; $448b: $95
    jp c, $d795                                   ; $448c: $da $95 $d7

    add l                                         ; $448f: $85
    cpl                                           ; $4490: $2f
    cp a                                          ; $4491: $bf
    ld a, [c]                                     ; $4492: $f2
    cp d                                          ; $4493: $ba
    jr nc, jr_03f_44e3                            ; $4494: $30 $4d

    ld c, e                                       ; $4496: $4b
    and h                                         ; $4497: $a4
    jp nz, $ff67                                  ; $4498: $c2 $67 $ff

    ld [hl+], a                                   ; $449b: $22
    sub $1b                                       ; $449c: $d6 $1b
    nop                                           ; $449e: $00
    ld a, l                                       ; $449f: $7d
    ld [hl], e                                    ; $44a0: $73
    sbc $79                                       ; $44a1: $de $79
    ld [$2388], a                                 ; $44a3: $ea $88 $23
    xor h                                         ; $44a6: $ac
    or b                                          ; $44a7: $b0
    and h                                         ; $44a8: $a4
    cp h                                          ; $44a9: $bc
    xor h                                         ; $44aa: $ac
    cp h                                          ; $44ab: $bc
    adc [hl]                                      ; $44ac: $8e
    ld a, [de]                                    ; $44ad: $1a
    rra                                           ; $44ae: $1f
    inc hl                                        ; $44af: $23
    push bc                                       ; $44b0: $c5
    and $f5                                       ; $44b1: $e6 $f5
    ld e, [hl]                                    ; $44b3: $5e

Call_03f_44b4:
Jump_03f_44b4:
    ld e, a                                       ; $44b4: $5f
    add a                                         ; $44b5: $87
    and $a7                                       ; $44b6: $e6 $a7
    sbc h                                         ; $44b8: $9c
    ld a, [hl]                                    ; $44b9: $7e
    add a                                         ; $44ba: $87
    dec hl                                        ; $44bb: $2b
    xor a                                         ; $44bc: $af
    inc sp                                        ; $44bd: $33
    xor c                                         ; $44be: $a9
    xor a                                         ; $44bf: $af
    ld l, e                                       ; $44c0: $6b
    jr jr_03f_44ec                                ; $44c1: $18 $29

    call nc, $48c7                                ; $44c3: $d4 $c7 $48
    sbc l                                         ; $44c6: $9d
    push bc                                       ; $44c7: $c5
    ld [hl], c                                    ; $44c8: $71
    jp z, $8e85                                   ; $44c9: $ca $85 $8e

    sbc [hl]                                      ; $44cc: $9e
    jr c, jr_03f_451e                             ; $44cd: $38 $4f

    dec [hl]                                      ; $44cf: $35
    xor [hl]                                      ; $44d0: $ae
    inc hl                                        ; $44d1: $23
    ld c, l                                       ; $44d2: $4d
    ld l, [hl]                                    ; $44d3: $6e
    nop                                           ; $44d4: $00
    ld a, l                                       ; $44d5: $7d
    rst $18                                       ; $44d6: $df
    scf                                           ; $44d7: $37
    ld l, $74                                     ; $44d8: $2e $74
    db $f4                                        ; $44da: $f4
    inc e                                         ; $44db: $1c
    ld sp, $cbca                                  ; $44dc: $31 $ca $cb
    adc b                                         ; $44df: $88
    dec hl                                        ; $44e0: $2b
    cp a                                          ; $44e1: $bf
    ld b, b                                       ; $44e2: $40

jr_03f_44e3:
    ld a, [de]                                    ; $44e3: $1a

jr_03f_44e4:
    db $d3                                        ; $44e4: $d3
    ld l, h                                       ; $44e5: $6c
    ld [hl], c                                    ; $44e6: $71
    ld bc, $c192                                  ; $44e7: $01 $92 $c1
    sub $69                                       ; $44ea: $d6 $69

jr_03f_44ec:
    cp $a7                                        ; $44ec: $fe $a7
    dec c                                         ; $44ee: $0d
    rla                                           ; $44ef: $17
    ld d, d                                       ; $44f0: $52
    ld [$79a6], a                                 ; $44f1: $ea $a6 $79
    inc bc                                        ; $44f4: $03
    rst $20                                       ; $44f5: $e7
    or b                                          ; $44f6: $b0
    ld b, e                                       ; $44f7: $43
    or c                                          ; $44f8: $b1
    ld a, c                                       ; $44f9: $79
    ld e, l                                       ; $44fa: $5d
    sub e                                         ; $44fb: $93
    db $fd                                        ; $44fc: $fd
    inc a                                         ; $44fd: $3c
    ld c, l                                       ; $44fe: $4d
    sub e                                         ; $44ff: $93
    jp nz, Jump_03f_597d                          ; $4500: $c2 $7d $59

    jr z, jr_03f_455e                             ; $4503: $28 $59

    ld c, l                                       ; $4505: $4d
    ld c, l                                       ; $4506: $4d
    reti                                          ; $4507: $d9


    dec h                                         ; $4508: $25
    xor [hl]                                      ; $4509: $ae
    adc c                                         ; $450a: $89
    or b                                          ; $450b: $b0
    sub h                                         ; $450c: $94
    ld e, c                                       ; $450d: $59
    inc e                                         ; $450e: $1c
    rla                                           ; $450f: $17
    ld a, h                                       ; $4510: $7c
    dec e                                         ; $4511: $1d
    pop de                                        ; $4512: $d1
    inc h                                         ; $4513: $24
    ld b, [hl]                                    ; $4514: $46
    ld a, c                                       ; $4515: $79
    sbc a                                         ; $4516: $9f
    dec hl                                        ; $4517: $2b
    ccf                                           ; $4518: $3f
    db $e3                                        ; $4519: $e3
    db $e4                                        ; $451a: $e4
    rla                                           ; $451b: $17
    cp [hl]                                       ; $451c: $be
    db $fc                                        ; $451d: $fc

jr_03f_451e:
    and d                                         ; $451e: $a2
    dec de                                        ; $451f: $1b
    or c                                          ; $4520: $b1
    sbc d                                         ; $4521: $9a
    ld d, d                                       ; $4522: $52
    db $d3                                        ; $4523: $d3
    cp a                                          ; $4524: $bf
    cp a                                          ; $4525: $bf
    ld bc, $f717                                  ; $4526: $01 $17 $f7
    ei                                            ; $4529: $fb
    jp nc, $a0b5                                  ; $452a: $d2 $b5 $a0

    db $eb                                        ; $452d: $eb
    inc [hl]                                      ; $452e: $34
    jp z, Jump_000_26af                           ; $452f: $ca $af $26

    and [hl]                                      ; $4532: $a6
    ld c, $fa                                     ; $4533: $0e $fa
    ld d, d                                       ; $4535: $52
    ld a, [de]                                    ; $4536: $1a
    cp [hl]                                       ; $4537: $be
    adc [hl]                                      ; $4538: $8e
    cp b                                          ; $4539: $b8
    sub d                                         ; $453a: $92
    cp d                                          ; $453b: $ba
    ld c, b                                       ; $453c: $48
    ld de, $ea62                                  ; $453d: $11 $62 $ea
    dec c                                         ; $4540: $0d
    nop                                           ; $4541: $00
    cp l                                          ; $4542: $bd
    inc de                                        ; $4543: $13
    rla                                           ; $4544: $17
    db $d3                                        ; $4545: $d3
    cp a                                          ; $4546: $bf
    xor [hl]                                      ; $4547: $ae
    cp h                                          ; $4548: $bc
    ld c, $fa                                     ; $4549: $0e $fa
    ld d, d                                       ; $454b: $52
    ld a, [de]                                    ; $454c: $1a
    cp [hl]                                       ; $454d: $be
    adc $e2                                       ; $454e: $ce $e2
    cp b                                          ; $4550: $b8
    ldh [$5b], a                                  ; $4551: $e0 $5b
    ld d, a                                       ; $4553: $57
    db $ed                                        ; $4554: $ed
    jr z, @+$41                                   ; $4555: $28 $3f

    ld [$676a], a                                 ; $4557: $ea $6a $67
    sbc l                                         ; $455a: $9d
    and a                                         ; $455b: $a7
    ld a, $24                                     ; $455c: $3e $24

jr_03f_455e:
    rst $28                                       ; $455e: $ef
    cp a                                          ; $455f: $bf
    ld d, e                                       ; $4560: $53
    jr c, @-$0b                                   ; $4561: $38 $f3

    ld [hl], l                                    ; $4563: $75
    jp $1b97                                      ; $4564: $c3 $97 $1b


    nop                                           ; $4567: $00
    ld a, l                                       ; $4568: $7d
    cp b                                          ; $4569: $b8
    jr nz, @+$69                                  ; $456a: $20 $67

    ld e, [hl]                                    ; $456c: $5e
    and b                                         ; $456d: $a0
    rst $30                                       ; $456e: $f7
    cp c                                          ; $456f: $b9
    sub d                                         ; $4570: $92
    cp d                                          ; $4571: $ba
    cp $1f                                        ; $4572: $fe $1f
    ld a, [hl]                                    ; $4574: $7e
    ld c, h                                       ; $4575: $4c
    dec e                                         ; $4576: $1d
    ld a, [hl-]                                   ; $4577: $3a
    ld d, [hl]                                    ; $4578: $56
    ld d, d                                       ; $4579: $52
    rst $20                                       ; $457a: $e7
    cp c                                          ; $457b: $b9
    rst $00                                       ; $457c: $c7
    ret z                                         ; $457d: $c8

    ld a, l                                       ; $457e: $7d
    ld e, c                                       ; $457f: $59
    ret c                                         ; $4580: $d8

    db $f4                                        ; $4581: $f4
    ld h, l                                       ; $4582: $65
    ld c, $53                                     ; $4583: $0e $53
    rla                                           ; $4585: $17
    ld [hl], h                                    ; $4586: $74
    xor h                                         ; $4587: $ac
    and h                                         ; $4588: $a4
    sbc $00                                       ; $4589: $de $00
    ld a, l                                       ; $458b: $7d
    ld [hl], e                                    ; $458c: $73
    dec [hl]                                      ; $458d: $35
    ld b, a                                       ; $458e: $47
    ld e, b                                       ; $458f: $58
    ld h, c                                       ; $4590: $61
    ld l, c                                       ; $4591: $69
    ld h, $17                                     ; $4592: $26 $17
    and [hl]                                      ; $4594: $a6
    call z, $aae2                                 ; $4595: $cc $e2 $aa
    ld c, $73                                     ; $4598: $0e $73
    ld h, c                                       ; $459a: $61
    ld [hl+], a                                   ; $459b: $22
    ld [hl], c                                    ; $459c: $71
    ld [hl], l                                    ; $459d: $75
    sub a                                         ; $459e: $97
    ld l, $cc                                     ; $459f: $2e $cc
    ld d, d                                       ; $45a1: $52
    ld [hl], d                                    ; $45a2: $72
    pop hl                                        ; $45a3: $e1
    set 1, a                                      ; $45a4: $cb $cf
    db $10                                        ; $45a6: $10
    ld e, a                                       ; $45a7: $5f
    ld l, [hl]                                    ; $45a8: $6e
    nop                                           ; $45a9: $00
    halt                                          ; $45aa: $76
    ld h, l                                       ; $45ab: $65
    pop hl                                        ; $45ac: $e1
    ld l, e                                       ; $45ad: $6b
    ld h, h                                       ; $45ae: $64
    sbc c                                         ; $45af: $99
    rst $20                                       ; $45b0: $e7
    call z, Call_03f_4f17                         ; $45b1: $cc $17 $4f
    ld h, c                                       ; $45b4: $61
    db $fc                                        ; $45b5: $fc
    ld a, c                                       ; $45b6: $79
    ld c, $fa                                     ; $45b7: $0e $fa
    ld d, d                                       ; $45b9: $52
    ld a, [de]                                    ; $45ba: $1a
    cp $94                                        ; $45bb: $fe $94
    sub b                                         ; $45bd: $90
    sub e                                         ; $45be: $93
    sbc h                                         ; $45bf: $9c
    push bc                                       ; $45c0: $c5
    ld [hl], c                                    ; $45c1: $71
    call nc, $b5d8                                ; $45c2: $d4 $d8 $b5
    adc [hl]                                      ; $45c5: $8e
    inc hl                                        ; $45c6: $23
    jp c, $ab68                                   ; $45c7: $da $68 $ab

    di                                            ; $45ca: $f3
    ld b, $dd                                     ; $45cb: $06 $dd
    ld a, e                                       ; $45cd: $7b
    dec d                                         ; $45ce: $15
    ret z                                         ; $45cf: $c8

    pop hl                                        ; $45d0: $e1
    xor a                                         ; $45d1: $af
    jp nz, $0bfe                                  ; $45d2: $c2 $fe $0b

    cp [hl]                                       ; $45d5: $be
    xor [hl]                                      ; $45d6: $ae
    ld l, [hl]                                    ; $45d7: $6e
    ld a, [c]                                     ; $45d8: $f2
    ld a, $f7                                     ; $45d9: $3e $f7
    dec hl                                        ; $45db: $2b
    xor c                                         ; $45dc: $a9
    bit 7, [hl]                                   ; $45dd: $cb $7e
    xor c                                         ; $45df: $a9
    ei                                            ; $45e0: $fb
    add hl, sp                                    ; $45e1: $39
    ld e, h                                       ; $45e2: $5c
    sbc b                                         ; $45e3: $98
    and l                                         ; $45e4: $a5
    ld h, h                                       ; $45e5: $64
    rst $08                                       ; $45e6: $cf
    dec b                                         ; $45e7: $05
    ld [hl], d                                    ; $45e8: $72
    sub c                                         ; $45e9: $91
    dec bc                                        ; $45ea: $0b
    inc de                                        ; $45eb: $13
    cp c                                          ; $45ec: $b9
    ld a, [c]                                     ; $45ed: $f2
    dec bc                                        ; $45ee: $0b
    dec de                                        ; $45ef: $1b
    srl h                                         ; $45f0: $cb $3c
    rlca                                          ; $45f2: $07
    ld a, l                                       ; $45f3: $7d
    add hl, hl                                    ; $45f4: $29
    dec c                                         ; $45f5: $0d
    rst $38                                       ; $45f6: $ff
    ld b, $dd                                     ; $45f7: $06 $dd
    inc bc                                        ; $45f9: $03
    ld d, d                                       ; $45fa: $52
    ld h, [hl]                                    ; $45fb: $66
    ld [hl], c                                    ; $45fc: $71
    ld d, l                                       ; $45fd: $55
    rla                                           ; $45fe: $17
    db $d3                                        ; $45ff: $d3
    rst $20                                       ; $4600: $e7
    ld e, b                                       ; $4601: $58
    ld d, [hl]                                    ; $4602: $56
    dec sp                                        ; $4603: $3b
    db $f4                                        ; $4604: $f4
    cp c                                          ; $4605: $b9
    ldh [rPCM34], a                               ; $4606: $e0 $77
    jp z, Jump_03f_73cf                           ; $4608: $ca $cf $73

    ret nc                                        ; $460b: $d0

    sub a                                         ; $460c: $97
    jp nc, $b5f0                                  ; $460d: $d2 $f0 $b5

    daa                                           ; $4610: $27
    nop                                           ; $4611: $00
    halt                                          ; $4612: $76
    ld h, $98                                     ; $4613: $26 $98
    di                                            ; $4615: $f3
    ld e, h                                       ; $4616: $5c
    ld c, l                                       ; $4617: $4d
    ld c, h                                       ; $4618: $4c
    ld e, l                                       ; $4619: $5d
    ld sp, hl                                     ; $461a: $f9
    ld de, $cbf5                                  ; $461b: $11 $f5 $cb
    ei                                            ; $461e: $fb
    sbc a                                         ; $461f: $9f
    rst $20                                       ; $4620: $e7
    jp nz, Jump_000_252c                          ; $4621: $c2 $2c $25

    rst $20                                       ; $4624: $e7
    cp c                                          ; $4625: $b9
    ld a, [$aeeb]                                 ; $4626: $fa $eb $ae
    dec de                                        ; $4629: $1b
    nop                                           ; $462a: $00
    cp l                                          ; $462b: $bd
    db $dd                                        ; $462c: $dd
    and e                                         ; $462d: $a3
    rst $08                                       ; $462e: $cf
    push de                                       ; $462f: $d5
    sbc h                                         ; $4630: $9c
    ld c, c                                       ; $4631: $49
    adc c                                         ; $4632: $89
    inc e                                         ; $4633: $1c
    bit 0, d                                      ; $4634: $cb $42
    sub [hl]                                      ; $4636: $96
    add h                                         ; $4637: $84
    rst $08                                       ; $4638: $cf
    ld [$1673], sp                                ; $4639: $08 $73 $16
    rst $00                                       ; $463c: $c7
    push de                                       ; $463d: $d5
    ld e, h                                       ; $463e: $5c
    sbc b                                         ; $463f: $98
    add sp, -$5b                                  ; $4640: $e8 $a5
    ld [$e2c2], a                                 ; $4642: $ea $c2 $e2
    ld [$1bd7], a                                 ; $4645: $ea $d7 $1b
    nop                                           ; $4648: $00
    db $dd                                        ; $4649: $dd
    db $ec                                        ; $464a: $ec
    inc [hl]                                      ; $464b: $34
    ld [hl], l                                    ; $464c: $75
    ld b, h                                       ; $464d: $44
    ld c, b                                       ; $464e: $48
    ld l, b                                       ; $464f: $68
    db $e3                                        ; $4650: $e3
    ld d, e                                       ; $4651: $53
    rst $20                                       ; $4652: $e7
    cp c                                          ; $4653: $b9
    ret nz                                        ; $4654: $c0

    ld h, d                                       ; $4655: $62
    adc l                                         ; $4656: $8d
    ld b, c                                       ; $4657: $41
    ld c, d                                       ; $4658: $4a
    ld b, e                                       ; $4659: $43
    db $ed                                        ; $465a: $ed
    or c                                          ; $465b: $b1
    dec hl                                        ; $465c: $2b
    ld e, $e7                                     ; $465d: $1e $e7
    add hl, sp                                    ; $465f: $39
    add sp, $4b                                   ; $4660: $e8 $4b
    ld l, c                                       ; $4662: $69
    ld sp, $06f5                                  ; $4663: $31 $f5 $06
    ld a, l                                       ; $4666: $7d
    cp [hl]                                       ; $4667: $be
    ld d, h                                       ; $4668: $54
    and a                                         ; $4669: $a7
    ld [hl], l                                    ; $466a: $75
    dec [hl]                                      ; $466b: $35
    rla                                           ; $466c: $17
    db $fc                                        ; $466d: $fc
    add hl, bc                                    ; $466e: $09
    db $e3                                        ; $466f: $e3
    ei                                            ; $4670: $fb
    call c, $9faf                                 ; $4671: $dc $af $9f
    add e                                         ; $4674: $83
    ld e, [hl]                                    ; $4675: $5e
    or $2b                                        ; $4676: $f6 $2b
    ccf                                           ; $4678: $3f
    add sp, $4b                                   ; $4679: $e8 $4b
    ld l, c                                       ; $467b: $69
    ret c                                         ; $467c: $d8

    ld [c], a                                     ; $467d: $e2
    rst $08                                       ; $467e: $cf
    inc [hl]                                      ; $467f: $34
    ld b, d                                       ; $4680: $42
    ccf                                           ; $4681: $3f
    call Call_03f_708e                            ; $4682: $cd $8e $70
    push hl                                       ; $4685: $e5
    ld b, a                                       ; $4686: $47
    dec [hl]                                      ; $4687: $35
    reti                                          ; $4688: $d9


    ld sp, hl                                     ; $4689: $f9
    ld a, e                                       ; $468a: $7b
    ld a, l                                       ; $468b: $7d
    db $db                                        ; $468c: $db
    add d                                         ; $468d: $82
    rst $18                                       ; $468e: $df
    add hl, hl                                    ; $468f: $29
    cpl                                           ; $4690: $2f
    di                                            ; $4691: $f3
    inc e                                         ; $4692: $1c
    dec [hl]                                      ; $4693: $35
    rst $10                                       ; $4694: $d7
    ld c, l                                       ; $4695: $4d
    add hl, hl                                    ; $4696: $29
    ld [hl], $bf                                  ; $4697: $36 $bf
    jp c, $1759                                   ; $4699: $da $59 $17

    or d                                          ; $469c: $b2
    inc [hl]                                      ; $469d: $34
    ld c, b                                       ; $469e: $48
    ld d, d                                       ; $469f: $52
    or e                                          ; $46a0: $b3
    rlca                                          ; $46a1: $07
    nop                                           ; $46a2: $00
    ld a, l                                       ; $46a3: $7d
    jp c, $e3be                                   ; $46a4: $da $be $e3

    ld e, b                                       ; $46a7: $58
    ld a, [hl]                                    ; $46a8: $7e
    pop bc                                        ; $46a9: $c1
    scf                                           ; $46aa: $37
    sbc h                                         ; $46ab: $9c
    jp $6351                                      ; $46ac: $c3 $51 $63


    ld d, [hl]                                    ; $46af: $56
    cp a                                          ; $46b0: $bf
    rst $08                                       ; $46b1: $cf
    ld a, c                                       ; $46b2: $79
    ld c, $fa                                     ; $46b3: $0e $fa
    ld d, d                                       ; $46b5: $52
    ld a, [de]                                    ; $46b6: $1a
    cp $3c                                        ; $46b7: $fe $3c
    ld c, e                                       ; $46b9: $4b
    inc sp                                        ; $46ba: $33
    dec l                                         ; $46bb: $2d
    dec [hl]                                      ; $46bc: $35
    ld l, a                                       ; $46bd: $6f
    nop                                           ; $46be: $00
    ld a, l                                       ; $46bf: $7d
    ld [hl], e                                    ; $46c0: $73
    jp z, Jump_03f_63a9                           ; $46c1: $ca $a9 $63

    ld hl, $42ae                                  ; $46c4: $21 $ae $42
    add hl, de                                    ; $46c7: $19
    db $f4                                        ; $46c8: $f4
    and l                                         ; $46c9: $a5
    inc [hl]                                      ; $46ca: $34
    ld a, h                                       ; $46cb: $7c
    ld e, l                                       ; $46cc: $5d
    db $dd                                        ; $46cd: $dd
    and l                                         ; $46ce: $a5
    ld a, e                                       ; $46cf: $7b
    sub c                                         ; $46d0: $91
    sub $f9                                       ; $46d1: $d6 $f9
    ld a, c                                       ; $46d3: $79
    xor [hl]                                      ; $46d4: $ae
    db $fc                                        ; $46d5: $fc
    jp nz, $18f2                                  ; $46d6: $c2 $f2 $18

    ld a, a                                       ; $46d9: $7f
    sbc l                                         ; $46da: $9d
    rst $28                                       ; $46db: $ef
    rst $30                                       ; $46dc: $f7
    rst $30                                       ; $46dd: $f7
    ld l, $7a                                     ; $46de: $2e $7a
    dec e                                         ; $46e0: $1d
    push de                                       ; $46e1: $d5
    ld a, h                                       ; $46e2: $7c
    and c                                         ; $46e3: $a1
    cp h                                          ; $46e4: $bc
    xor [hl]                                      ; $46e5: $ae
    cp h                                          ; $46e6: $bc
    adc $53                                       ; $46e7: $ce $53
    ld c, l                                       ; $46e9: $4d

Jump_03f_46ea:
    and d                                         ; $46ea: $a2
    ld l, c                                       ; $46eb: $69
    sub h                                         ; $46ec: $94
    ld hl, sp+$78                                 ; $46ed: $f8 $78
    inc bc                                        ; $46ef: $03
    ld a, l                                       ; $46f0: $7d
    jp c, $f7c2                                   ; $46f1: $da $c2 $f7

    jp nz, $f945                                  ; $46f4: $c2 $45 $f9

    adc $f7                                       ; $46f7: $ce $f7
    ei                                            ; $46f9: $fb
    ld l, c                                       ; $46fa: $69
    ld h, e                                       ; $46fb: $63
    db $e4                                        ; $46fc: $e4
    cp h                                          ; $46fd: $bc
    call Call_03f_7eeb                            ; $46fe: $cd $eb $7e
    push hl                                       ; $4701: $e5
    and a                                         ; $4702: $a7
    xor h                                         ; $4703: $ac
    rra                                           ; $4704: $1f
    rra                                           ; $4705: $1f
    cp [hl]                                       ; $4706: $be
    add [hl]                                      ; $4707: $86
    sub c                                         ; $4708: $91
    jr @+$21                                      ; $4709: $18 $1f

    ld a, l                                       ; $470b: $7d
    xor $83                                       ; $470c: $ee $83
    add hl, hl                                    ; $470e: $29
    ld a, [c]                                     ; $470f: $f2
    or d                                          ; $4710: $b2
    ldh a, [$e5]                                  ; $4711: $f0 $e5
    and a                                         ; $4713: $a7
    ld c, [hl]                                    ; $4714: $4e
    rla                                           ; $4715: $17
    ld h, [hl]                                    ; $4716: $66
    add hl, hl                                    ; $4717: $29
    adc [hl]                                      ; $4718: $8e

Call_03f_4719:
    dec h                                         ; $4719: $25
    push af                                       ; $471a: $f5
    ld b, $76                                     ; $471b: $06 $76
    ld h, $98                                     ; $471d: $26 $98
    di                                            ; $471f: $f3

Jump_03f_4720:
    ld e, h                                       ; $4720: $5c
    ld c, l                                       ; $4721: $4d
    ld c, h                                       ; $4722: $4c
    ld e, l                                       ; $4723: $5d
    sub e                                         ; $4724: $93
    ld a, c                                       ; $4725: $79
    adc $64                                       ; $4726: $ce $64
    dec e                                         ; $4728: $1d
    jp z, Jump_03f_4ceb                           ; $4729: $ca $eb $4c

    ld [c], a                                     ; $472c: $e2
    ld [$f0b6], a                                 ; $472d: $ea $b6 $f0
    cp l                                          ; $4730: $bd
    ldh a, [$5e]                                  ; $4731: $f0 $5e
    xor a                                         ; $4733: $af
    or d                                          ; $4734: $b2
    ld [$b386], a                                 ; $4735: $ea $86 $b3
    xor $cb                                       ; $4738: $ee $cb
    call z, Call_03f_7277                         ; $473a: $cc $77 $72
    call nc, Call_03f_5c39                        ; $473d: $d4 $39 $5c
    rst $00                                       ; $4740: $c7
    ld de, $6617                                  ; $4741: $11 $17 $66
    add hl, hl                                    ; $4744: $29
    cp c                                          ; $4745: $b9
    xor $fa                                       ; $4746: $ee $fa
    dec e                                         ; $4748: $1d
    ld l, d                                       ; $4749: $6a
    rst $08                                       ; $474a: $cf
    dec de                                        ; $474b: $1b
    nop                                           ; $474c: $00
    ld a, l                                       ; $474d: $7d
    cp b                                          ; $474e: $b8
    ld d, b                                       ; $474f: $50
    ld [$8c39], sp                                ; $4750: $08 $39 $8c
    add hl, sp                                    ; $4753: $39
    ld l, l                                       ; $4754: $6d
    dec hl                                        ; $4755: $2b
    ccf                                           ; $4756: $3f
    push hl                                       ; $4757: $e5
    pop bc                                        ; $4758: $c1
    add hl, hl                                    ; $4759: $29
    cp a                                          ; $475a: $bf
    cp [hl]                                       ; $475b: $be
    add hl, hl                                    ; $475c: $29
    jp nc, Jump_03f_6174                          ; $475d: $d2 $74 $61

    ld a, d                                       ; $4760: $7a
    or c                                          ; $4761: $b1
    ld sp, hl                                     ; $4762: $f9
    ld b, c                                       ; $4763: $41
    adc a                                         ; $4764: $8f
    cpl                                           ; $4765: $2f
    dec bc                                        ; $4766: $0b
    ld e, c                                       ; $4767: $59
    ld hl, sp-$18                                 ; $4768: $f8 $e8
    ld [hl], e                                    ; $476a: $73
    ld h, $71                                     ; $476b: $26 $71
    ld c, $7f                                     ; $476d: $0e $7f
    ret nc                                        ; $476f: $d0

    sub a                                         ; $4770: $97
    jp nc, Jump_03f_6ff0                          ; $4771: $d2 $f0 $6f

    nop                                           ; $4774: $00
    sub a                                         ; $4775: $97
    cp c                                          ; $4776: $b9
    ld a, l                                       ; $4777: $7d
    db $dd                                        ; $4778: $dd
    and b                                         ; $4779: $a0
    sbc a                                         ; $477a: $9f
    dec a                                         ; $477b: $3d
    and l                                         ; $477c: $a5
    ld l, [hl]                                    ; $477d: $6e
    adc c                                         ; $477e: $89
    inc e                                         ; $477f: $1c
    ld [hl], l                                    ; $4780: $75
    ld c, $7f                                     ; $4781: $0e $7f
    xor h                                         ; $4783: $ac
    jp Jump_000_252c                              ; $4784: $c3 $2c $25


    pop af                                        ; $4787: $f1
    ld l, a                                       ; $4788: $6f
    nop                                           ; $4789: $00
    ld a, l                                       ; $478a: $7d
    jr c, jr_03f_47fa                             ; $478b: $38 $6d

    call nz, Call_000_3398                        ; $478d: $c4 $98 $33
    ld e, c                                       ; $4790: $59
    rst $20                                       ; $4791: $e7
    add h                                         ; $4792: $84
    and [hl]                                      ; $4793: $a6
    ld d, l                                       ; $4794: $55
    push bc                                       ; $4795: $c5
    jp hl                                         ; $4796: $e9


    sub a                                         ; $4797: $97
    and $73                                       ; $4798: $e6 $73
    sbc [hl]                                      ; $479a: $9e
    ld h, l                                       ; $479b: $65
    and $d5                                       ; $479c: $e6 $d5
    cp h                                          ; $479e: $bc
    ret c                                         ; $479f: $d8

    ld [c], a                                     ; $47a0: $e2
    inc a                                         ; $47a1: $3c
    push de                                       ; $47a2: $d5
    ld [hl], e                                    ; $47a3: $73
    ld d, $c7                                     ; $47a4: $16 $c7
    sub l                                         ; $47a6: $95
    ld b, d                                       ; $47a7: $42
    ret z                                         ; $47a8: $c8

    ld d, l                                       ; $47a9: $55
    db $dd                                        ; $47aa: $dd
    rst $08                                       ; $47ab: $cf
    ld a, $21                                     ; $47ac: $3e $21
    sbc b                                         ; $47ae: $98
    cpl                                           ; $47af: $2f
    ld d, c                                       ; $47b0: $51
    ld l, a                                       ; $47b1: $6f
    nop                                           ; $47b2: $00
    or $b4                                        ; $47b3: $f6 $b4
    jp nz, $ddd7                                  ; $47b5: $c2 $d7 $dd

    ld [c], a                                     ; $47b8: $e2
    ld e, d                                       ; $47b9: $5a
    ld d, l                                       ; $47ba: $55
    ld e, h                                       ; $47bb: $5c
    call Call_03f_7f05                            ; $47bc: $cd $05 $7f
    ld h, c                                       ; $47bf: $61
    inc sp                                        ; $47c0: $33
    rst $28                                       ; $47c1: $ef
    ld [hl], e                                    ; $47c2: $73
    ld [hl], l                                    ; $47c3: $75
    db $d3                                        ; $47c4: $d3
    add l                                         ; $47c5: $85
    xor a                                         ; $47c6: $af
    sub c                                         ; $47c7: $91
    add l                                         ; $47c8: $85
    ld a, [hl-]                                   ; $47c9: $3a
    rst $08                                       ; $47ca: $cf
    sbc c                                         ; $47cb: $99
    cpl                                           ; $47cc: $2f
    sbc [hl]                                      ; $47cd: $9e
    sub d                                         ; $47ce: $92
    dec a                                         ; $47cf: $3d

jr_03f_47d0:
    ld bc, $b876                                  ; $47d0: $01 $76 $b8
    ld a, [c]                                     ; $47d3: $f2
    inc sp                                        ; $47d4: $33
    push hl                                       ; $47d5: $e5
    sub l                                         ; $47d6: $95

Jump_03f_47d7:
    di                                            ; $47d7: $f3
    ld e, h                                       ; $47d8: $5c
    jr nz, jr_03f_4859                            ; $47d9: $20 $7e

    ret z                                         ; $47db: $c8

    push de                                       ; $47dc: $d5
    sbc h                                         ; $47dd: $9c
    rst $38                                       ; $47de: $ff
    sub l                                         ; $47df: $95
    sbc a                                         ; $47e0: $9f
    ld [de], a                                    ; $47e1: $12
    push af                                       ; $47e2: $f5
    ld c, l                                       ; $47e3: $4d
    or e                                          ; $47e4: $b3
    push bc                                       ; $47e5: $c5
    ld a, c                                       ; $47e6: $79
    adc $e2                                       ; $47e7: $ce $e2
    jr c, jr_03f_47d0                             ; $47e9: $38 $e5

    ld l, d                                       ; $47eb: $6a
    xor [hl]                                      ; $47ec: $ae
    ld a, [c]                                     ; $47ed: $f2
    ei                                            ; $47ee: $fb
    ld c, c                                       ; $47ef: $49
    sub $21                                       ; $47f0: $d6 $21
    ld h, l                                       ; $47f2: $65
    ld e, a                                       ; $47f3: $5f
    and b                                         ; $47f4: $a0
    inc bc                                        ; $47f5: $03
    ld [hl], b                                    ; $47f6: $70
    ld b, c                                       ; $47f7: $41
    rst $00                                       ; $47f8: $c7
    ld c, d                                       ; $47f9: $4a

jr_03f_47fa:
    sbc $00                                       ; $47fa: $de $00
    halt                                          ; $47fc: $76
    ld a, [de]                                    ; $47fd: $1a
    db $d3                                        ; $47fe: $d3
    cp d                                          ; $47ff: $ba
    ld hl, sp+$38                                 ; $4800: $f8 $38
    di                                            ; $4802: $f3
    xor b                                         ; $4803: $a8
    rst $28                                       ; $4804: $ef
    inc de                                        ; $4805: $13
    ld a, $8b                                     ; $4806: $3e $8b
    db $e3                                        ; $4808: $e3
    inc [hl]                                      ; $4809: $34
    ld c, e                                       ; $480a: $4b
    adc $e2                                       ; $480b: $ce $e2
    ld a, [de]                                    ; $480d: $1a
    dec h                                         ; $480e: $25
    rst $20                                       ; $480f: $e7
    ld d, e                                       ; $4810: $53
    ld [$3526], a                                 ; $4811: $ea $26 $35
    ld b, a                                       ; $4814: $47
    sbc h                                         ; $4815: $9c
    jp $db19                                      ; $4816: $c3 $19 $db


    ld a, [hl-]                                   ; $4819: $3a
    ld a, l                                       ; $481a: $7d
    adc [hl]                                      ; $481b: $8e
    ld e, [hl]                                    ; $481c: $5e
    add sp, $6d                                   ; $481d: $e8 $6d
    ld [hl], c                                    ; $481f: $71
    sbc [hl]                                      ; $4820: $9e
    dec bc                                        ; $4821: $0b
    adc e                                         ; $4822: $8b
    xor e                                         ; $4823: $ab
    ld e, a                                       ; $4824: $5f
    ld l, a                                       ; $4825: $6f
    nop                                           ; $4826: $00
    rst $20                                       ; $4827: $e7
    ld a, [hl-]                                   ; $4828: $3a
    jp z, $b94f                                   ; $4829: $ca $4f $b9

    ldh [$af], a                                  ; $482c: $e0 $af
    ld c, [hl]                                    ; $482e: $4e
    adc h                                         ; $482f: $8c
    rst $28                                       ; $4830: $ef
    ld [hl], e                                    ; $4831: $73
    ld c, $d7                                     ; $4832: $0e $d7
    ld [hl], c                                    ; $4834: $71
    call nz, Call_03f_5985                        ; $4835: $c4 $85 $59
    ld c, d                                       ; $4838: $4a

jr_03f_4839:
    sbc $00                                       ; $4839: $de $00
    rla                                           ; $483b: $17
    push hl                                       ; $483c: $e5
    or h                                          ; $483d: $b4
    ld de, $c263                                  ; $483e: $11 $63 $c2
    add a                                         ; $4841: $87
    cp c                                          ; $4842: $b9
    ret nc                                        ; $4843: $d0

    pop de                                        ; $4844: $d1
    rst $20                                       ; $4845: $e7
    add d                                         ; $4846: $82
    rst $18                                       ; $4847: $df
    add hl, hl                                    ; $4848: $29
    cpl                                           ; $4849: $2f
    ldh a, [$bd]                                  ; $484a: $f0 $bd
    ld b, e                                       ; $484c: $43
    adc e                                         ; $484d: $8b
    db $e3                                        ; $484e: $e3
    jp nz, Jump_03f_5446                          ; $484f: $c2 $46 $54

    ld [$8e2c], a                                 ; $4852: $ea $2c $8e
    db $d3                                        ; $4855: $d3
    or h                                          ; $4856: $b4
    adc $e1                                       ; $4857: $ce $e1

jr_03f_4859:
    and b                                         ; $4859: $a0
    cpl                                           ; $485a: $2f
    and l                                         ; $485b: $a5
    pop hl                                        ; $485c: $e1
    rst $18                                       ; $485d: $df
    nop                                           ; $485e: $00
    add c                                         ; $485f: $81
    ld l, l                                       ; $4860: $6d
    ld d, $d7                                     ; $4861: $16 $d7
    jr z, jr_03f_4839                             ; $4863: $28 $d4

    push de                                       ; $4865: $d5
    ld l, l                                       ; $4866: $6d

jr_03f_4867:
    add hl, de                                    ; $4867: $19
    ld [hl], $6c                                  ; $4868: $36 $6c
    or [hl]                                       ; $486a: $b6
    ld [$205f], sp                                ; $486b: $08 $5f $20
    ld a, [hl]                                    ; $486e: $7e
    ret z                                         ; $486f: $c8

    dec a                                         ; $4870: $3d
    ld a, [$c75f]                                 ; $4871: $fa $5f $c7

jr_03f_4874:
    xor c                                         ; $4874: $a9
    ld a, c                                       ; $4875: $79
    db $f4                                        ; $4876: $f4
    cp c                                          ; $4877: $b9
    ld a, [c]                                     ; $4878: $f2
    add e                                         ; $4879: $83
    cp [hl]                                       ; $487a: $be
    sub h                                         ; $487b: $94
    add [hl]                                      ; $487c: $86
    ccf                                           ; $487d: $3f
    rst $08                                       ; $487e: $cf
    sub l                                         ; $487f: $95
    call nc, Call_000_1d05                        ; $4880: $d4 $05 $1d
    dec hl                                        ; $4883: $2b
    xor c                                         ; $4884: $a9
    di                                            ; $4885: $f3
    ld e, h                                       ; $4886: $5c
    ld c, d                                       ; $4887: $4a
    sbc $00                                       ; $4888: $de $00
    ld d, a                                       ; $488a: $57
    and h                                         ; $488b: $a4
    ld [hl], l                                    ; $488c: $75
    cp a                                          ; $488d: $bf
    ld a, [c]                                     ; $488e: $f2
    db $d3                                        ; $488f: $d3
    cpl                                           ; $4890: $2f
    ccf                                           ; $4891: $3f
    rst $08                                       ; $4892: $cf
    push de                                       ; $4893: $d5
    rlca                                          ; $4894: $07
    ld l, b                                       ; $4895: $68
    inc sp                                        ; $4896: $33
    cp a                                          ; $4897: $bf
    ld e, a                                       ; $4898: $5f
    jr z, jr_03f_4874                             ; $4899: $28 $d9

    ld a, c                                       ; $489b: $79
    ld e, c                                       ; $489c: $59
    db $dd                                        ; $489d: $dd
    ld [hl], h                                    ; $489e: $74
    add sp, $58                                   ; $489f: $e8 $58
    ld a, c                                       ; $48a1: $79
    ld e, l                                       ; $48a2: $5d
    rst $20                                       ; $48a3: $e7
    dec l                                         ; $48a4: $2d
    adc [hl]                                      ; $48a5: $8e
    pop af                                        ; $48a6: $f1
    ld [hl], l                                    ; $48a7: $75
    sbc [hl]                                      ; $48a8: $9e
    dec bc                                        ; $48a9: $0b
    ld a, [hl-]                                   ; $48aa: $3a
    ld l, d                                       ; $48ab: $6a
    adc $73                                       ; $48ac: $ce $73
    ld h, c                                       ; $48ae: $61
    sub [hl]                                      ; $48af: $96
    sub d                                         ; $48b0: $92
    scf                                           ; $48b1: $37
    nop                                           ; $48b2: $00
    ld a, l                                       ; $48b3: $7d
    ld [hl], e                                    ; $48b4: $73
    ld b, c                                       ; $48b5: $41
    adc [hl]                                      ; $48b6: $8e
    ld a, [de]                                    ; $48b7: $1a
    sbc l                                         ; $48b8: $9d
    ld l, a                                       ; $48b9: $6f
    rst $28                                       ; $48ba: $ef
    ld [hl], e                                    ; $48bb: $73
    ld [$9baa], a                                 ; $48bc: $ea $aa $9b
    ld l, c                                       ; $48bf: $69
    call nz, $85c8                                ; $48c0: $c4 $c8 $85
    cpl                                           ; $48c3: $2f
    ccf                                           ; $48c4: $3f
    sub [hl]                                      ; $48c5: $96
    ld de, $d7d6                                  ; $48c6: $11 $d6 $d7
    call nz, $817b                                ; $48c9: $c4 $7b $81
    ld l, $4c                                     ; $48cc: $2e $4c
    add h                                         ; $48ce: $84
    ld [hl], d                                    ; $48cf: $72
    ld d, $c7                                     ; $48d0: $16 $c7
    ld b, l                                       ; $48d2: $45
    and d                                         ; $48d3: $a2
    sub a                                         ; $48d4: $97
    xor d                                         ; $48d5: $aa
    or e                                          ; $48d6: $b3
    jr c, jr_03f_4867                             ; $48d7: $38 $8e

    ld [hl], l                                    ; $48d9: $75
    sbc b                                         ; $48da: $98
    and l                                         ; $48db: $a5
    ld [hl], h                                    ; $48dc: $74
    ld c, c                                       ; $48dd: $49
    call $3792                                    ; $48de: $cd $92 $37
    nop                                           ; $48e1: $00
    or $5c                                        ; $48e2: $f6 $5c
    jp c, $9cf8                                   ; $48e4: $da $f8 $9c

    push bc                                       ; $48e7: $c5
    ld [hl], c                                    ; $48e8: $71
    cp a                                          ; $48e9: $bf
    ld c, e                                       ; $48ea: $4b
    ld e, h                                       ; $48eb: $5c
    inc de                                        ; $48ec: $13
    ld h, c                                       ; $48ed: $61
    add hl, hl                                    ; $48ee: $29
    dec hl                                        ; $48ef: $2b
    ld e, h                                       ; $48f0: $5c
    push hl                                       ; $48f1: $e5
    ld [hl], c                                    ; $48f2: $71
    ccf                                           ; $48f3: $3f
    sbc d                                         ; $48f4: $9a
    ldh [$cb], a                                  ; $48f5: $e0 $cb
    inc a                                         ; $48f7: $3c
    set 4, d                                      ; $48f8: $cb $e2
    rst $30                                       ; $48fa: $f7
    bit 5, c                                      ; $48fb: $cb $69
    sbc e                                         ; $48fd: $9b
    ld a, [hl-]                                   ; $48fe: $3a
    ld e, l                                       ; $48ff: $5d
    and c                                         ; $4900: $a1
    ld sp, $912d                                  ; $4901: $31 $2d $91
    ld a, [hl-]                                   ; $4904: $3a
    call z, $ecd5                                 ; $4905: $cc $d5 $ec
    sub a                                         ; $4908: $97
    ld a, [c]                                     ; $4909: $f2
    ld a, b                                       ; $490a: $78
    inc bc                                        ; $490b: $03
    rla                                           ; $490c: $17
    db $fd                                        ; $490d: $fd
    ld b, d                                       ; $490e: $42
    ret                                           ; $490f: $c9


    ld l, d                                       ; $4910: $6a
    ld l, d                                       ; $4911: $6a
    jp z, $8faf                                   ; $4912: $ca $af $8f

    add hl, sp                                    ; $4915: $39
    cpl                                           ; $4916: $2f
    pop af                                        ; $4917: $f1
    and c                                         ; $4918: $a1
    cpl                                           ; $4919: $2f
    ld h, l                                       ; $491a: $65
    call nc, $ac99                                ; $491b: $d4 $99 $ac
    ld [hl], e                                    ; $491e: $73
    ld c, $7f                                     ; $491f: $0e $7f
    push af                                       ; $4921: $f5
    rst $10                                       ; $4922: $d7
    ld e, l                                       ; $4923: $5d
    add e                                         ; $4924: $83
    cp [hl]                                       ; $4925: $be
    sub h                                         ; $4926: $94
    add [hl]                                      ; $4927: $86
    ccf                                           ; $4928: $3f

jr_03f_4929:
    sub e                                         ; $4929: $93
    cp b                                          ; $492a: $b8
    sbc b                                         ; $492b: $98
    ld a, $75                                     ; $492c: $3e $75
    dec h                                         ; $492e: $25
    ld [hl], l                                    ; $492f: $75
    rst $20                                       ; $4930: $e7
    adc c                                         ; $4931: $89
    or l                                          ; $4932: $b5
    cp d                                          ; $4933: $ba
    cp d                                          ; $4934: $ba
    and c                                         ; $4935: $a1

jr_03f_4936:
    ld c, a                                       ; $4936: $4f
    pop de                                        ; $4937: $d1
    dec de                                        ; $4938: $1b
    nop                                           ; $4939: $00
    db $dd                                        ; $493a: $dd
    ld l, $fa                                     ; $493b: $2e $fa
    ld l, c                                       ; $493d: $69
    add [hl]                                      ; $493e: $86
    ccf                                           ; $493f: $3f
    rst $08                                       ; $4940: $cf
    push bc                                       ; $4941: $c5
    cpl                                           ; $4942: $2f
    push hl                                       ; $4943: $e5
    and l                                         ; $4944: $a5
    ld hl, $2675                                  ; $4945: $21 $75 $26
    ld [hl], c                                    ; $4948: $71
    ld h, c                                       ; $4949: $61
    sub [hl]                                      ; $494a: $96
    sub d                                         ; $494b: $92
    di                                            ; $494c: $f3
    ld e, h                                       ; $494d: $5c
    ld sp, hl                                     ; $494e: $f9
    sbc c                                         ; $494f: $99
    xor h                                         ; $4950: $ac
    sbc e                                         ; $4951: $9b
    rst $38                                       ; $4952: $ff
    ld d, c                                       ; $4953: $51
    db $e3                                        ; $4954: $e3
    ld [hl], a                                    ; $4955: $77
    ld a, [hl]                                    ; $4956: $7e
    add h                                         ; $4957: $84
    ld h, l                                       ; $4958: $65
    ld [hl], c                                    ; $4959: $71
    ld c, l                                       ; $495a: $4d
    ld e, e                                       ; $495b: $5b
    db $fc                                        ; $495c: $fc
    ld e, $00                                     ; $495d: $1e $00
    ld a, l                                       ; $495f: $7d
    jr c, jr_03f_49cc                             ; $4960: $38 $6a

    db $ec                                        ; $4962: $ec
    ld a, [de]                                    ; $4963: $1a
    db $eb                                        ; $4964: $eb
    sub b                                         ; $4965: $90
    db $fd                                        ; $4966: $fd
    rra                                           ; $4967: $1f
    ld a, l                                       ; $4968: $7d
    xor $07                                       ; $4969: $ee $07
    add hl, sp                                    ; $496b: $39
    adc l                                         ; $496c: $8d
    cpl                                           ; $496d: $2f
    di                                            ; $496e: $f3
    ld e, h                                       ; $496f: $5c
    add l                                         ; $4970: $85
    ld [c], a                                     ; $4971: $e2
    rst $18                                       ; $4972: $df
    adc a                                         ; $4973: $8f
    ld l, d                                       ; $4974: $6a
    and h                                         ; $4975: $a4
    ld [hl], l                                    ; $4976: $75
    sbc d                                         ; $4977: $9a
    call z, $2e24                                 ; $4978: $cc $24 $2e
    inc l                                         ; $497b: $2c
    xor [hl]                                      ; $497c: $ae
    cp $1b                                        ; $497d: $fe $1b
    nop                                           ; $497f: $00
    db $dd                                        ; $4980: $dd
    adc $76                                       ; $4981: $ce $76
    call nz, Call_000_3a9f                        ; $4983: $c4 $9f $3a
    ld c, d                                       ; $4986: $4a
    inc h                                         ; $4987: $24
    ld a, h                                       ; $4988: $7c
    or $2f                                        ; $4989: $f6 $2f
    ld h, d                                       ; $498b: $62
    db $ed                                        ; $498c: $ed
    ld bc, $dd00                                  ; $498d: $01 $00 $dd
    db $ec                                        ; $4990: $ec
    inc [hl]                                      ; $4991: $34
    and [hl]                                      ; $4992: $a6
    ld [hl], l                                    ; $4993: $75
    sbc [hl]                                      ; $4994: $9e
    jp z, $9f47                                   ; $4995: $ca $47 $9f

    or e                                          ; $4998: $b3
    jr c, jr_03f_4929                             ; $4999: $38 $8e

    ld [hl], l                                    ; $499b: $75
    ret c                                         ; $499c: $d8

jr_03f_499d:
    ld l, b                                       ; $499d: $68
    jr c, jr_03f_4936                             ; $499e: $38 $96

    sbc c                                         ; $49a0: $99
    inc l                                         ; $49a1: $2c
    add h                                         ; $49a2: $84
    ld e, d                                       ; $49a3: $5a
    or $d8                                        ; $49a4: $f6 $d8
    ld h, l                                       ; $49a6: $65
    jp hl                                         ; $49a7: $e9


    ld d, e                                       ; $49a8: $53
    ld d, a                                       ; $49a9: $57
    ld d, d                                       ; $49aa: $52
    ld [hl], a                                    ; $49ab: $77
    dec h                                         ; $49ac: $25
    ld e, a                                       ; $49ad: $5f

jr_03f_49ae:
    dec bc                                        ; $49ae: $0b
    xor l                                         ; $49af: $ad
    cp d                                          ; $49b0: $ba
    jp z, Jump_03f_7ee3                           ; $49b1: $ca $e3 $7e

    or $09                                        ; $49b4: $f6 $09
    pop bc                                        ; $49b6: $c1
    ld a, h                                       ; $49b7: $7c
    adc c                                         ; $49b8: $89
    ld a, d                                       ; $49b9: $7a
    inc bc                                        ; $49ba: $03
    db $dd                                        ; $49bb: $dd
    ld a, [$eb38]                                 ; $49bc: $fa $38 $eb
    ld a, [hl-]                                   ; $49bf: $3a
    adc l                                         ; $49c0: $8d
    ret c                                         ; $49c1: $d8

    ld h, e                                       ; $49c2: $63
    db $dd                                        ; $49c3: $dd
    db $ec                                        ; $49c4: $ec
    inc [hl]                                      ; $49c5: $34
    and h                                         ; $49c6: $a4
    db $e4                                        ; $49c7: $e4
    adc b                                         ; $49c8: $88
    ld d, c                                       ; $49c9: $51
    ld e, [hl]                                    ; $49ca: $5e
    ld b, [hl]                                    ; $49cb: $46

jr_03f_49cc:
    call c, $6279                                 ; $49cc: $dc $79 $62
    xor l                                         ; $49cf: $ad
    xor [hl]                                      ; $49d0: $ae
    ld l, [hl]                                    ; $49d1: $6e
    add sp, $53                                   ; $49d2: $e8 $53
    ld h, [hl]                                    ; $49d4: $66
    call $afc5                                    ; $49d5: $cd $c5 $af
    dec sp                                        ; $49d8: $3b
    xor l                                         ; $49d9: $ad
    ld a, [hl+]                                   ; $49da: $2a
    or $00                                        ; $49db: $f6 $00
    cp l                                          ; $49dd: $bd
    ld a, [bc]                                    ; $49de: $0a
    db $e4                                        ; $49df: $e4
    jr nc, jr_03f_4a57                            ; $49e0: $30 $75

    sub b                                         ; $49e2: $90
    or h                                          ; $49e3: $b4
    ld [$c5d4], a                                 ; $49e4: $ea $d4 $c5
    ld b, [hl]                                    ; $49e7: $46
    inc h                                         ; $49e8: $24
    adc $64                                       ; $49e9: $ce $64
    xor c                                         ; $49eb: $a9
    ld e, e                                       ; $49ec: $5b
    add hl, hl                                    ; $49ed: $29
    xor c                                         ; $49ee: $a9
    inc hl                                        ; $49ef: $23
    xor [hl]                                      ; $49f0: $ae
    jp nz, $f3fe                                  ; $49f1: $c2 $fe $f3

    ld e, h                                       ; $49f4: $5c
    ret c                                         ; $49f5: $d8

    ld c, h                                       ; $49f6: $4c
    ld [$000d], a                                 ; $49f7: $ea $0d $00
    ld bc, $9e8e                                  ; $49fa: $01 $8e $9e
    or e                                          ; $49fd: $b3
    jr c, jr_03f_49ae                             ; $49fe: $38 $ae

    cp h                                          ; $4a00: $bc
    ld c, $fa                                     ; $4a01: $0e $fa
    ld d, d                                       ; $4a03: $52
    ld a, [de]                                    ; $4a04: $1a
    cp [hl]                                       ; $4a05: $be
    ld c, $73                                     ; $4a06: $0e $73
    sub c                                         ; $4a08: $91
    ld [$ae3d], sp                                ; $4a09: $08 $3d $ae
    ld a, h                                       ; $4a0c: $7c
    and a                                         ; $4a0d: $a7
    and l                                         ; $4a0e: $a5
    jp nz, Jump_03f_5217                          ; $4a0f: $c2 $17 $52

    ld [hl], d                                    ; $4a12: $72
    ld e, a                                       ; $4a13: $5f
    jr nz, jr_03f_499d                            ; $4a14: $20 $87

    xor c                                         ; $4a16: $a9
    add e                                         ; $4a17: $83
    and h                                         ; $4a18: $a4
    ld d, l                                       ; $4a19: $55
    and a                                         ; $4a1a: $a7
    ld l, $36                                     ; $4a1b: $2e $36
    ld [hl+], a                                   ; $4a1d: $22
    ld [hl], c                                    ; $4a1e: $71
    cp [hl]                                       ; $4a1f: $be
    ld de, $f523                                  ; $4a20: $11 $23 $f5
    ld b, $dd                                     ; $4a23: $06 $dd
    db $ec                                        ; $4a25: $ec
    inc [hl]                                      ; $4a26: $34
    and [hl]                                      ; $4a27: $a6
    ld [hl], l                                    ; $4a28: $75
    pop af                                        ; $4a29: $f1
    ld [hl], c                                    ; $4a2a: $71
    xor h                                         ; $4a2b: $ac
    db $d3                                        ; $4a2c: $d3
    or h                                          ; $4a2d: $b4
    call nz, Call_000_3ff7                        ; $4a2e: $c4 $f7 $3f
    rst $08                                       ; $4a31: $cf
    ld d, c                                       ; $4a32: $51
    db $e3                                        ; $4a33: $e3
    set 3, [hl]                                   ; $4a34: $cb $de
    ld [c], a                                     ; $4a36: $e2
    ld l, h                                       ; $4a37: $6c
    ld a, d                                       ; $4a38: $7a
    xor h                                         ; $4a39: $ac
    db $db                                        ; $4a3a: $db
    dec d                                         ; $4a3b: $15
    ld l, c                                       ; $4a3c: $69
    db $dd                                        ; $4a3d: $dd
    rst $28                                       ; $4a3e: $ef
    ld b, e                                       ; $4a3f: $43
    ld hl, $ca7a                                  ; $4a40: $21 $7a $ca
    ld [c], a                                     ; $4a43: $e2
    ld h, e                                       ; $4a44: $63
    call z, $f759                                 ; $4a45: $cc $59 $f7
    dec bc                                        ; $4a48: $0b
    cp [hl]                                       ; $4a49: $be
    and c                                         ; $4a4a: $a1
    sub h                                         ; $4a4b: $94
    ld e, h                                       ; $4a4c: $5c
    ld a, h                                       ; $4a4d: $7c
    ld e, h                                       ; $4a4e: $5c
    and a                                         ; $4a4f: $a7
    ld de, $007b                                  ; $4a50: $11 $7b $00
    db $dd                                        ; $4a53: $dd
    inc bc                                        ; $4a54: $03
    ld d, d                                       ; $4a55: $52

Jump_03f_4a56:
    ld h, [hl]                                    ; $4a56: $66

jr_03f_4a57:
    ld [hl], c                                    ; $4a57: $71
    ld d, l                                       ; $4a58: $55
    and a                                         ; $4a59: $a7
    ld e, h                                       ; $4a5a: $5c
    ldh a, [$0d]                                  ; $4a5b: $f0 $0d
    rst $20                                       ; $4a5d: $e7
    add hl, sp                                    ; $4a5e: $39
    ld l, a                                       ; $4a5f: $6f
    di                                            ; $4a60: $f3
    adc e                                         ; $4a61: $8b
    adc a                                         ; $4a62: $8f
    dec bc                                        ; $4a63: $0b
    dec h                                         ; $4a64: $25
    ld sp, $4f66                                  ; $4a65: $31 $66 $4f
    nop                                           ; $4a68: $00
    halt                                          ; $4a69: $76
    ld a, [de]                                    ; $4a6a: $1a
    ld e, a                                       ; $4a6b: $5f
    xor d                                         ; $4a6c: $aa
    adc $53                                       ; $4a6d: $ce $53
    ld sp, hl                                     ; $4a6f: $f9
    add sp, $73                                   ; $4a70: $e8 $73
    ld d, $c7                                     ; $4a72: $16 $c7
    sub l                                         ; $4a74: $95
    ld b, d                                       ; $4a75: $42
    ret z                                         ; $4a76: $c8

    ld [hl], c                                    ; $4a77: $71
    inc l                                         ; $4a78: $2c
    dec bc                                        ; $4a79: $0b
    and l                                         ; $4a7a: $a5
    push de                                       ; $4a7b: $d5
    sub h                                         ; $4a7c: $94
    ld a, c                                       ; $4a7d: $79
    sbc e                                         ; $4a7e: $9b
    sbc a                                         ; $4a7f: $9f
    rst $20                                       ; $4a80: $e7
    ld c, h                                       ; $4a81: $4c
    ld a, c                                       ; $4a82: $79
    push hl                                       ; $4a83: $e5
    adc b                                         ; $4a84: $88
    inc sp                                        ; $4a85: $33
    xor $31                                       ; $4a86: $ee $31
    and $6a                                       ; $4a88: $e6 $6a
    adc $53                                       ; $4a8a: $ce $53
    jp $8946                                      ; $4a8c: $c3 $46 $89


    cp h                                          ; $4a8f: $bc
    ld bc, $fadd                                  ; $4a90: $01 $dd $fa
    and $22                                       ; $4a93: $e6 $22
    and a                                         ; $4a95: $a7
    rst $18                                       ; $4a96: $df
    and c                                         ; $4a97: $a1
    ld c, $1b                                     ; $4a98: $0e $1b
    ld b, d                                       ; $4a9a: $42
    ld c, $7f                                     ; $4a9b: $0e $7f
    cp l                                          ; $4a9d: $bd
    or e                                          ; $4a9e: $b3
    xor $34                                       ; $4a9f: $ee $34
    ld a, h                                       ; $4aa1: $7c
    db $d3                                        ; $4aa2: $d3
    ld l, h                                       ; $4aa3: $6c
    ld [hl], c                                    ; $4aa4: $71
    sbc [hl]                                      ; $4aa5: $9e
    db $eb                                        ; $4aa6: $eb
    dec l                                         ; $4aa7: $2d
    ld e, c                                       ; $4aa8: $59
    and a                                         ; $4aa9: $a7
    or $00                                        ; $4aaa: $f6 $00
    ld h, a                                       ; $4aac: $67
    scf                                           ; $4aad: $37
    ld h, d                                       ; $4aae: $62
    add l                                         ; $4aaf: $85
    ret c                                         ; $4ab0: $d8

    ld a, h                                       ; $4ab1: $7c
    ld l, $a3                                     ; $4ab2: $2e $a3
    db $fc                                        ; $4ab4: $fc
    ld a, [hl+]                                   ; $4ab5: $2a
    db $ec                                        ; $4ab6: $ec
    rrca                                          ; $4ab7: $0f
    sbc a                                         ; $4ab8: $9f
    db $fd                                        ; $4ab9: $fd
    adc e                                         ; $4aba: $8b
    ld e, b                                       ; $4abb: $58
    rst $28                                       ; $4abc: $ef
    dec b                                         ; $4abd: $05
    and h                                         ; $4abe: $a4

jr_03f_4abf:
    inc l                                         ; $4abf: $2c
    ld hl, sp-$7a                                 ; $4ac0: $f8 $86
    ld d, d                                       ; $4ac2: $52
    ld [hl], d                                    ; $4ac3: $72
    pop af                                        ; $4ac4: $f1
    ld [hl], c                                    ; $4ac5: $71
    sbc l                                         ; $4ac6: $9d
    ld b, [hl]                                    ; $4ac7: $46
    call c, $a463                                 ; $4ac8: $dc $63 $a4
    adc $24                                       ; $4acb: $ce $24
    xor [hl]                                      ; $4acd: $ae
    db $fc                                        ; $4ace: $fc
    xor b                                         ; $4acf: $a8
    ld h, $3b                                     ; $4ad0: $26 $3b
    rrca                                          ; $4ad2: $0f
    ld e, a                                       ; $4ad3: $5f
    db $e4                                        ; $4ad4: $e4
    inc a                                         ; $4ad5: $3c
    ei                                            ; $4ad6: $fb
    cp l                                          ; $4ad7: $bd
    ld d, h                                       ; $4ad8: $54
    sbc l                                         ; $4ad9: $9d
    push bc                                       ; $4ada: $c5
    ld [hl], c                                    ; $4adb: $71
    and c                                         ; $4adc: $a1
    cp h                                          ; $4add: $bc
    adc c                                         ; $4ade: $89
    call $a8e2                                    ; $4adf: $cd $e2 $a8
    dec bc                                        ; $4ae2: $0b
    add hl, hl                                    ; $4ae3: $29
    jp c, $d720                                   ; $4ae4: $da $20 $d7

    adc b                                         ; $4ae7: $88
    ld a, $e7                                     ; $4ae8: $3e $e7
    ldh a, [$57]                                  ; $4aea: $f0 $57
    ld l, b                                       ; $4aec: $68
    add d                                         ; $4aed: $82
    xor [hl]                                      ; $4aee: $ae
    rst $38                                       ; $4aef: $ff
    rst $18                                       ; $4af0: $df
    nop                                           ; $4af1: $00
    ld h, a                                       ; $4af2: $67
    dec sp                                        ; $4af3: $3b
    ld [c], a                                     ; $4af4: $e2
    and d                                         ; $4af5: $a2
    ld a, h                                       ; $4af6: $7c
    rst $20                                       ; $4af7: $e7
    ei                                            ; $4af8: $fb
    dec h                                         ; $4af9: $25
    ld a, h                                       ; $4afa: $7c
    or $2f                                        ; $4afb: $f6 $2f
    ld h, d                                       ; $4afd: $62
    cp l                                          ; $4afe: $bd
    ld [hl], a                                    ; $4aff: $77
    add l                                         ; $4b00: $85
    ld h, e                                       ; $4b01: $63
    xor c                                         ; $4b02: $a9
    ld [hl], b                                    ; $4b03: $70
    cp a                                          ; $4b04: $bf
    ld c, d                                       ; $4b05: $4a
    sub [hl]                                      ; $4b06: $96
    sub a                                         ; $4b07: $97
    add hl, de                                    ; $4b08: $19
    rst $30                                       ; $4b09: $f7
    add sp, $73                                   ; $4b0a: $e8 $73
    ld d, $d7                                     ; $4b0c: $16 $d7
    jr z, jr_03f_4abf                             ; $4b0e: $28 $af

    scf                                           ; $4b10: $37
    nop                                           ; $4b11: $00
    cp l                                          ; $4b12: $bd
    ld a, [bc]                                    ; $4b13: $0a
    db $e4                                        ; $4b14: $e4
    ld a, [de]                                    ; $4b15: $1a
    ld [hl], c                                    ; $4b16: $71
    cp [hl]                                       ; $4b17: $be
    push af                                       ; $4b18: $f5
    bit 3, c                                      ; $4b19: $cb $59
    inc e                                         ; $4b1b: $1c
    ld b, a                                       ; $4b1c: $47
    inc [hl]                                      ; $4b1d: $34
    adc c                                         ; $4b1e: $89
    ld d, c                                       ; $4b1f: $51
    cp d                                          ; $4b20: $ba
    sub h                                         ; $4b21: $94
    ld [hl], l                                    ; $4b22: $75
    ld [$acbe], a                                 ; $4b23: $ea $be $ac
    ld a, [$be31]                                 ; $4b26: $fa $31 $be
    sub $3f                                       ; $4b29: $d6 $3f
    rst $08                                       ; $4b2b: $cf
    sbc l                                         ; $4b2c: $9d
    daa                                           ; $4b2d: $27
    sub $ea                                       ; $4b2e: $d6 $ea
    ld [$3e86], a                                 ; $4b30: $ea $86 $3e
    push hl                                       ; $4b33: $e5
    ld e, [hl]                                    ; $4b34: $5e
    rst $18                                       ; $4b35: $df
    ld e, h                                       ; $4b36: $5c
    ret                                           ; $4b37: $c9


    ld d, l                                       ; $4b38: $55
    sbc b                                         ; $4b39: $98
    ld a, e                                       ; $4b3a: $7b
    adc e                                         ; $4b3b: $8b
    or e                                          ; $4b3c: $b3
    reti                                          ; $4b3d: $d9


    adc e                                         ; $4b3e: $8b
    or h                                          ; $4b3f: $b4
    adc $df                                       ; $4b40: $ce $df
    nop                                           ; $4b42: $00
    rla                                           ; $4b43: $17
    and l                                         ; $4b44: $a5
    xor [hl]                                      ; $4b45: $ae
    ld a, [$be31]                                 ; $4b46: $fa $31 $be
    sub $af                                       ; $4b49: $d6 $af
    di                                            ; $4b4b: $f3
    ld e, h                                       ; $4b4c: $5c
    ld a, c                                       ; $4b4d: $79
    sbc l                                         ; $4b4e: $9d
    ld a, c                                       ; $4b4f: $79
    ld a, l                                       ; $4b50: $7d
    sbc l                                         ; $4b51: $9d
    ld [hl], d                                    ; $4b52: $72
    ld a, [$e21d]                                 ; $4b53: $fa $1d $e2
    ld e, b                                       ; $4b56: $58
    and [hl]                                      ; $4b57: $a6
    adc a                                         ; $4b58: $8f
    ld sp, $9d67                                  ; $4b59: $31 $67 $9d
    ld a, [c]                                     ; $4b5c: $f2
    ldh [$87], a                                  ; $4b5d: $e0 $87
    cpl                                           ; $4b5f: $2f
    and h                                         ; $4b60: $a4
    db $e4                                        ; $4b61: $e4
    xor b                                         ; $4b62: $a8
    ld sp, $f3ad                                  ; $4b63: $31 $ad $f3
    xor h                                         ; $4b66: $ac
    ld e, a                                       ; $4b67: $5f
    db $db                                        ; $4b68: $db
    ei                                            ; $4b69: $fb
    call c, $d3ab                                 ; $4b6a: $dc $ab $d3
    ld hl, sp+$3e                                 ; $4b6d: $f8 $3e
    rla                                           ; $4b6f: $17
    cp [hl]                                       ; $4b70: $be
    db $fc                                        ; $4b71: $fc
    ld b, d                                       ; $4b72: $42
    ld hl, $30e4                                  ; $4b73: $21 $e4 $30
    halt                                          ; $4b76: $76
    adc c                                         ; $4b77: $89
    or d                                          ; $4b78: $b2
    db $e4                                        ; $4b79: $e4

Jump_03f_4b7a:
    ld a, [hl]                                    ; $4b7a: $7e
    ld c, $f3                                     ; $4b7b: $0e $f3
    ld b, $17                                     ; $4b7d: $06 $17
    and l                                         ; $4b7f: $a5
    xor [hl]                                      ; $4b80: $ae
    ld a, [$be31]                                 ; $4b81: $fa $31 $be
    sub $af                                       ; $4b84: $d6 $af
    di                                            ; $4b86: $f3
    ld e, h                                       ; $4b87: $5c
    ld sp, hl                                     ; $4b88: $f9
    sbc c                                         ; $4b89: $99
    rst $10                                       ; $4b8a: $d7
    sbc a                                         ; $4b8b: $9f
    ld [hl], d                                    ; $4b8c: $72
    ld a, [$e21d]                                 ; $4b8d: $fa $1d $e2
    ld e, b                                       ; $4b90: $58
    and [hl]                                      ; $4b91: $a6
    adc a                                         ; $4b92: $8f
    ld sp, $9d67                                  ; $4b93: $31 $67 $9d
    ld a, [c]                                     ; $4b96: $f2
    ldh [$bf], a                                  ; $4b97: $e0 $bf
    ld h, a                                       ; $4b99: $67
    add a                                         ; $4b9a: $87
    add $11                                       ; $4b9b: $c6 $11
    and e                                         ; $4b9d: $a3
    db $fc                                        ; $4b9e: $fc
    ld a, [hl]                                    ; $4b9f: $7e
    ld e, a                                       ; $4ba0: $5f
    and b                                         ; $4ba1: $a0
    inc bc                                        ; $4ba2: $03
    ld [hl], b                                    ; $4ba3: $70
    or l                                          ; $4ba4: $b5
    and e                                         ; $4ba5: $a3
    call nz, Call_03f_759c                        ; $4ba6: $c4 $9c $75
    and c                                         ; $4ba9: $a1
    db $10                                        ; $4baa: $10
    ld a, [hl-]                                   ; $4bab: $3a
    nop                                           ; $4bac: $00
    db $e3                                        ; $4bad: $e3
    dec hl                                        ; $4bae: $2b
    ld c, e                                       ; $4baf: $4b
    sbc $00                                       ; $4bb0: $de $00
    rla                                           ; $4bb2: $17
    and l                                         ; $4bb3: $a5
    xor [hl]                                      ; $4bb4: $ae
    ld a, [$be31]                                 ; $4bb5: $fa $31 $be
    sub $af                                       ; $4bb8: $d6 $af
    xor e                                         ; $4bba: $ab
    inc a                                         ; $4bbb: $3c
    db $f4                                        ; $4bbc: $f4
    cp b                                          ; $4bbd: $b8
    jr nc, @+$67                                  ; $4bbe: $30 $65

    push hl                                       ; $4bc0: $e5
    add a                                         ; $4bc1: $87
    ld l, c                                       ; $4bc2: $69
    add d                                         ; $4bc3: $82
    sbc h                                         ; $4bc4: $9c
    ld [hl], l                                    ; $4bc5: $75
    ld a, [$e21d]                                 ; $4bc6: $fa $1d $e2
    ld l, d                                       ; $4bc9: $6a
    ld h, a                                       ; $4bca: $67
    add d                                         ; $4bcb: $82
    xor c                                         ; $4bcc: $a9
    xor e                                         ; $4bcd: $ab
    sbc e                                         ; $4bce: $9b
    ld b, [hl]                                    ; $4bcf: $46
    ld c, d                                       ; $4bd0: $4a
    ld c, e                                       ; $4bd1: $4b
    cp l                                          ; $4bd2: $bd
    ld [hl], a                                    ; $4bd3: $77
    reti                                          ; $4bd4: $d9


    sub a                                         ; $4bd5: $97
    ld d, l                                       ; $4bd6: $55
    ret c                                         ; $4bd7: $d8

    ld a, a                                       ; $4bd8: $7f
    pop bc                                        ; $4bd9: $c1
    rst $10                                       ; $4bda: $d7
    ld hl, sp+$63                                 ; $4bdb: $f8 $63
    sbc c                                         ; $4bdd: $99
    ld a, $c6                                     ; $4bde: $3e $c6
    sbc h                                         ; $4be0: $9c
    ld [hl], l                                    ; $4be1: $75
    jp z, $ff83                                   ; $4be2: $ca $83 $ff

    ld b, $57                                     ; $4be5: $06 $57
    jr nc, jr_03f_4c5b                            ; $4be7: $30 $72

    ld e, a                                       ; $4be9: $5f
    and [hl]                                      ; $4bea: $a6
    add h                                         ; $4beb: $84
    dec d                                         ; $4bec: $15
    ld [hl], e                                    ; $4bed: $73
    ld h, c                                       ; $4bee: $61
    db $d3                                        ; $4bef: $d3
    sbc h                                         ; $4bf0: $9c
    ld [hl], l                                    ; $4bf1: $75
    and c                                         ; $4bf2: $a1
    db $10                                        ; $4bf3: $10
    ld a, [hl-]                                   ; $4bf4: $3a
    nop                                           ; $4bf5: $00
    db $e3                                        ; $4bf6: $e3
    rla                                           ; $4bf7: $17
    xor $cb                                       ; $4bf8: $ee $cb
    ld b, d                                       ; $4bfa: $42

jr_03f_4bfb:
    ld l, c                                       ; $4bfb: $69
    dec [hl]                                      ; $4bfc: $35
    ld h, l                                       ; $4bfd: $65
    push de                                       ; $4bfe: $d5
    adc a                                         ; $4bff: $8f
    pop af                                        ; $4c00: $f1
    or l                                          ; $4c01: $b5
    cp $59                                        ; $4c02: $fe $59
    inc e                                         ; $4c04: $1c
    ld d, a                                       ; $4c05: $57
    pop hl                                        ; $4c06: $e1
    db $eb                                        ; $4c07: $eb
    dec c                                         ; $4c08: $0d
    nop                                           ; $4c09: $00
    ld a, l                                       ; $4c0a: $7d
    sbc e                                         ; $4c0b: $9b
    add c                                         ; $4c0c: $81
    or c                                          ; $4c0d: $b1
    sbc $af                                       ; $4c0e: $de $af
    ld l, l                                       ; $4c10: $6d
    rst $20                                       ; $4c11: $e7
    ret nc                                        ; $4c12: $d0

    ld a, h                                       ; $4c13: $7c
    ret c                                         ; $4c14: $d8

    ld [c], a                                     ; $4c15: $e2
    ei                                            ; $4c16: $fb
    ld e, h                                       ; $4c17: $5c
    add hl, hl                                    ; $4c18: $29
    xor h                                         ; $4c19: $ac
    db $fc                                        ; $4c1a: $fc
    adc b                                         ; $4c1b: $88
    dec sp                                        ; $4c1c: $3b
    ld c, a                                       ; $4c1d: $4f
    xor h                                         ; $4c1e: $ac
    push de                                       ; $4c1f: $d5
    push de                                       ; $4c20: $d5
    dec c                                         ; $4c21: $0d
    ld a, l                                       ; $4c22: $7d
    jp z, Jump_000_2eea                           ; $4c23: $ca $ea $2e

    ld e, l                                       ; $4c26: $5d
    ld l, h                                       ; $4c27: $6c
    xor h                                         ; $4c28: $ac
    jp $c59c                                      ; $4c29: $c3 $9c $c5


    ld [hl], c                                    ; $4c2c: $71
    ld hl, sp-$42                                 ; $4c2d: $f8 $be
    pop af                                        ; $4c2f: $f1
    ld e, [hl]                                    ; $4c30: $5e
    add b                                         ; $4c31: $80
    ld h, h                                       ; $4c32: $64
    rst $20                                       ; $4c33: $e7
    dec sp                                        ; $4c34: $3b
    add l                                         ; $4c35: $85
    dec [hl]                                      ; $4c36: $35
    ld sp, $2572                                  ; $4c37: $31 $72 $25
    and a                                         ; $4c3a: $a7
    inc c                                         ; $4c3b: $0c
    rst $38                                       ; $4c3c: $ff
    ld b, $57                                     ; $4c3d: $06 $57
    jr nc, @+$74                                  ; $4c3f: $30 $72

    cp a                                          ; $4c41: $bf
    ld a, [bc]                                    ; $4c42: $0a
    ld h, l                                       ; $4c43: $65
    ld e, a                                       ; $4c44: $5f
    ld d, [hl]                                    ; $4c45: $56
    db $fd                                        ; $4c46: $fd
    jr jr_03f_4ca8                                ; $4c47: $18 $5f

    db $eb                                        ; $4c49: $eb
    sbc a                                         ; $4c4a: $9f
    rst $20                                       ; $4c4b: $e7
    adc $13                                       ; $4c4c: $ce $13
    ld l, e                                       ; $4c4e: $6b
    ld [hl], l                                    ; $4c4f: $75
    ld [hl], l                                    ; $4c50: $75
    ld b, e                                       ; $4c51: $43
    sbc a                                         ; $4c52: $9f
    ld [bc], a                                    ; $4c53: $02
    ld e, a                                       ; $4c54: $5f
    inc d                                         ; $4c55: $14
    ld [$a6c2], a                                 ; $4c56: $ea $c2 $a6
    xor c                                         ; $4c59: $a9
    xor e                                         ; $4c5a: $ab

jr_03f_4c5b:
    cp e                                          ; $4c5b: $bb
    ld [hl], h                                    ; $4c5c: $74
    cpl                                           ; $4c5d: $2f
    jp nc, Jump_03f_7f3a                          ; $4c5e: $d2 $3a $7f

    inc bc                                        ; $4c61: $03
    ld d, a                                       ; $4c62: $57
    jr c, jr_03f_4bfb                             ; $4c63: $38 $96

    ld a, [bc]                                    ; $4c65: $0a
    rst $30                                       ; $4c66: $f7
    dec bc                                        ; $4c67: $0b
    add l                                         ; $4c68: $85
    sub b                                         ; $4c69: $90
    jp $b2f8                                      ; $4c6a: $c3 $f8 $b2


    cp d                                          ; $4c6d: $ba
    ld c, e                                       ; $4c6e: $4b
    ld h, a                                       ; $4c6f: $67
    jr z, @-$18                                   ; $4c70: $28 $e6

    rst $20                                       ; $4c72: $e7
    cp c                                          ; $4c73: $b9
    di                                            ; $4c74: $f3
    call nz, Call_03f_5d5a                        ; $4c75: $c4 $5a $5d
    db $dd                                        ; $4c78: $dd
    ret nc                                        ; $4c79: $d0

    and a                                         ; $4c7a: $a7
    ret nz                                        ; $4c7b: $c0

    rla                                           ; $4c7c: $17
    cp a                                          ; $4c7d: $bf
    xor h                                         ; $4c7e: $ac
    jp nz, $23fe                                  ; $4c7f: $c2 $fe $23

    adc [hl]                                      ; $4c82: $8e
    ld h, l                                       ; $4c83: $65
    ld c, d                                       ; $4c84: $4a
    ld e, b                                       ; $4c85: $58
    ld sp, $3617                                  ; $4c86: $31 $17 $36
    call Call_03f_5ee5                            ; $4c89: $cd $e5 $5e
    ld l, l                                       ; $4c8c: $6d
    ld l, [hl]                                    ; $4c8d: $6e
    nop                                           ; $4c8e: $00
    sub a                                         ; $4c8f: $97
    dec [hl]                                      ; $4c90: $35
    ld [hl+], a                                   ; $4c91: $22
    ld [hl], l                                    ; $4c92: $75
    ld d, $c7                                     ; $4c93: $16 $c7
    add l                                         ; $4c95: $85
    ld b, d                                       ; $4c96: $42
    ret z                                         ; $4c97: $c8

    ld h, c                                       ; $4c98: $61
    ld a, h                                       ; $4c99: $7c
    add hl, hl                                    ; $4c9a: $29
    call c, Call_03f_6faf                         ; $4c9b: $dc $af $6f
    inc sp                                        ; $4c9e: $33
    jr nc, @-$28                                  ; $4c9f: $30 $d6

    ei                                            ; $4ca1: $fb
    or l                                          ; $4ca2: $b5
    db $ed                                        ; $4ca3: $ed
    inc e                                         ; $4ca4: $1c
    sbc d                                         ; $4ca5: $9a
    rrca                                          ; $4ca6: $0f
    ld e, e                                       ; $4ca7: $5b

jr_03f_4ca8:
    ld a, h                                       ; $4ca8: $7c
    sbc a                                         ; $4ca9: $9f
    ldh a, [$bd]                                  ; $4caa: $f0 $bd
    ld c, b                                       ; $4cac: $48
    db $eb                                        ; $4cad: $eb

Call_03f_4cae:
    db $fc                                        ; $4cae: $fc
    dec c                                         ; $4caf: $0d
    nop                                           ; $4cb0: $00
    ld bc, $e842                                  ; $4cb1: $01 $42 $e8
    nop                                           ; $4cb4: $00
    adc h                                         ; $4cb5: $8c
    ld e, a                                       ; $4cb6: $5f
    ld a, b                                       ; $4cb7: $78
    rst $18                                       ; $4cb8: $df
    or a                                          ; $4cb9: $b7
    push af                                       ; $4cba: $f5
    and a                                         ; $4cbb: $a7
    rst $18                                       ; $4cbc: $df
    and c                                         ; $4cbd: $a1
    jp nz, $a3f7                                  ; $4cbe: $c2 $f7 $a3

    ld [hl], d                                    ; $4cc1: $72
    push de                                       ; $4cc2: $d5
    adc a                                         ; $4cc3: $8f
    pop af                                        ; $4cc4: $f1
    or l                                          ; $4cc5: $b5
    cp $fb                                        ; $4cc6: $fe $fb
    cp [hl]                                       ; $4cc8: $be
    ei                                            ; $4cc9: $fb
    jp nc, $f7af                                  ; $4cca: $d2 $af $f7

    ld l, e                                       ; $4ccd: $6b
    sbc e                                         ; $4cce: $9b
    and a                                         ; $4ccf: $a7
    ld sp, hl                                     ; $4cd0: $f9
    or b                                          ; $4cd1: $b0
    push bc                                       ; $4cd2: $c5
    rst $30                                       ; $4cd3: $f7
    ld a, c                                       ; $4cd4: $79
    rst $28                                       ; $4cd5: $ef
    ld [c], a                                     ; $4cd6: $e2
    ld a, l                                       ; $4cd7: $7d
    add c                                         ; $4cd8: $81
    ld [hl], d                                    ; $4cd9: $72
    xor a                                         ; $4cda: $af
    ld [hl], $37                                  ; $4cdb: $36 $37
    nop                                           ; $4cdd: $00
    db $dd                                        ; $4cde: $dd
    inc bc                                        ; $4cdf: $03
    ld d, d                                       ; $4ce0: $52
    ld h, [hl]                                    ; $4ce1: $66
    ld [hl], c                                    ; $4ce2: $71

jr_03f_4ce3:
    ld d, l                                       ; $4ce3: $55
    rst $10                                       ; $4ce4: $d7
    ld [hl], c                                    ; $4ce5: $71
    ld l, d                                       ; $4ce6: $6a
    ld e, [hl]                                    ; $4ce7: $5e
    rst $30                                       ; $4ce8: $f7
    ld d, $67                                     ; $4ce9: $16 $67

Jump_03f_4ceb:
    or e                                          ; $4ceb: $b3
    rst $28                                       ; $4cec: $ef
    ld a, h                                       ; $4ced: $7c
    cp a                                          ; $4cee: $bf
    db $ec                                        ; $4cef: $ec
    cp c                                          ; $4cf0: $b9
    nop                                           ; $4cf1: $00
    ld hl, $0074                                  ; $4cf2: $21 $74 $00
    add $2f                                       ; $4cf5: $c6 $2f
    call c, Call_03f_6faf                         ; $4cf7: $dc $af $6f
    inc sp                                        ; $4cfa: $33
    jr nc, jr_03f_4ce3                            ; $4cfb: $30 $e6

    ld e, c                                       ; $4cfd: $59
    and [hl]                                      ; $4cfe: $a6
    add h                                         ; $4cff: $84
    dec d                                         ; $4d00: $15
    ld [hl], e                                    ; $4d01: $73
    ld h, c                                       ; $4d02: $61
    db $d3                                        ; $4d03: $d3
    cp h                                          ; $4d04: $bc
    ld bc, $a517                                  ; $4d05: $01 $17 $a5
    xor [hl]                                      ; $4d08: $ae

Call_03f_4d09:
    ld a, [$be31]                                 ; $4d09: $fa $31 $be
    sub $af                                       ; $4d0c: $d6 $af
    ld d, e                                       ; $4d0e: $53
    ld c, [hl]                                    ; $4d0f: $4e
    cp a                                          ; $4d10: $bf
    ld b, e                                       ; $4d11: $43
    inc e                                         ; $4d12: $1c
    set 6, h                                      ; $4d13: $cb $f4
    ld sp, $ace6                                  ; $4d15: $31 $e6 $ac
    ld d, e                                       ; $4d18: $53
    ld e, $fc                                     ; $4d19: $1e $fc
    di                                            ; $4d1b: $f3
    ld e, h                                       ; $4d1c: $5c
    ld a, c                                       ; $4d1d: $79
    sbc l                                         ; $4d1e: $9d
    ld a, c                                       ; $4d1f: $79
    ld a, l                                       ; $4d20: $7d
    cp l                                          ; $4d21: $bd
    rla                                           ; $4d22: $17
    sub b                                         ; $4d23: $90
    ld [hl-], a                                   ; $4d24: $32

jr_03f_4d25:
    ld [hl], l                                    ; $4d25: $75
    sub h                                         ; $4d26: $94
    ret z                                         ; $4d27: $c8

    or c                                          ; $4d28: $b1
    inc l                                         ; $4d29: $2c
    ld a, [hl-]                                   ; $4d2a: $3a
    ld l, e                                       ; $4d2b: $6b
    ld l, $f8                                     ; $4d2c: $2e $f8
    sbc l                                         ; $4d2e: $9d
    ld a, [c]                                     ; $4d2f: $f2
    rst $30                                       ; $4d30: $f7
    adc $3e                                       ; $4d31: $ce $3e
    ld b, b                                       ; $4d33: $40
    call Call_000_1c97                            ; $4d34: $cd $97 $1c
    ld [hl], c                                    ; $4d37: $71
    inc l                                         ; $4d38: $2c
    ld d, e                                       ; $4d39: $53
    jp nz, $b98a                                  ; $4d3a: $c2 $8a $b9

    or b                                          ; $4d3d: $b0
    ld l, c                                       ; $4d3e: $69
    sbc $00                                       ; $4d3f: $de $00
    add c                                         ; $4d41: $81
    ld c, l                                       ; $4d42: $4d
    sub $b7                                       ; $4d43: $d6 $b7
    sbc c                                         ; $4d45: $99
    ld h, b                                       ; $4d46: $60
    sub [hl]                                      ; $4d47: $96
    rst $10                                       ; $4d48: $d7
    ld a, c                                       ; $4d49: $79
    xor [hl]                                      ; $4d4a: $ae
    ld c, a                                       ; $4d4b: $4f
    xor e                                         ; $4d4c: $ab
    push de                                       ; $4d4d: $d5
    ld a, d                                       ; $4d4e: $7a
    ld h, h                                       ; $4d4f: $64
    ld b, b                                       ; $4d50: $40
    ld c, d                                       ; $4d51: $4a
    ret c                                         ; $4d52: $d8

    db $10                                        ; $4d53: $10
    adc d                                         ; $4d54: $8a
    adc c                                         ; $4d55: $89
    and e                                         ; $4d56: $a3
    xor [hl]                                      ; $4d57: $ae
    db $fc                                        ; $4d58: $fc
    ld b, d                                       ; $4d59: $42
    adc d                                         ; $4d5a: $8a
    ld h, $fe                                     ; $4d5b: $26 $fe
    ld a, [hl]                                    ; $4d5d: $7e
    push hl                                       ; $4d5e: $e5
    ld h, a                                       ; $4d5f: $67
    ld [hl], c                                    ; $4d60: $71
    ld e, h                                       ; $4d61: $5c
    ld l, h                                       ; $4d62: $6c
    ld b, h                                       ; $4d63: $44
    ld [$8e2c], a                                 ; $4d64: $ea $2c $8e
    xor e                                         ; $4d67: $ab
    ld d, b                                       ; $4d68: $50
    xor $9d                                       ; $4d69: $ee $9d
    db $ed                                        ; $4d6b: $ed
    call nc, $88fc                                ; $4d6c: $d4 $fc $88
    ld h, e                                       ; $4d6f: $63
    sbc c                                         ; $4d70: $99
    ld [de], a                                    ; $4d71: $12
    ld d, [hl]                                    ; $4d72: $56
    call z, Call_03f_4d85                         ; $4d73: $cc $85 $4d
    di                                            ; $4d76: $f3
    ld b, $67                                     ; $4d77: $06 $67
    dec sp                                        ; $4d79: $3b
    dec [hl]                                      ; $4d7a: $35
    cp a                                          ; $4d7b: $bf
    cpl                                           ; $4d7c: $2f
    xor e                                         ; $4d7d: $ab
    ld a, [hl]                                    ; $4d7e: $7e
    adc h                                         ; $4d7f: $8c
    xor a                                         ; $4d80: $af
    push af                                       ; $4d81: $f5
    rst $08                                       ; $4d82: $cf
    ld [hl], e                                    ; $4d83: $73
    push hl                                       ; $4d84: $e5

Call_03f_4d85:
    ld h, a                                       ; $4d85: $67
    cp [hl]                                       ; $4d86: $be
    jp Jump_000_3ffe                              ; $4d87: $c3 $fe $3f


    sub e                                         ; $4d8a: $93
    dec b                                         ; $4d8b: $05
    ld a, d                                       ; $4d8c: $7a
    db $f4                                        ; $4d8d: $f4
    add hl, sp                                    ; $4d8e: $39
    ld [c], a                                     ; $4d8f: $e2
    ld e, b                                       ; $4d90: $58
    and [hl]                                      ; $4d91: $a6
    add h                                         ; $4d92: $84
    dec d                                         ; $4d93: $15
    ld [hl], e                                    ; $4d94: $73
    ld h, c                                       ; $4d95: $61
    db $d3                                        ; $4d96: $d3
    cp h                                          ; $4d97: $bc
    ld [hl], a                                    ; $4d98: $77
    ld e, c                                       ; $4d99: $59
    inc hl                                        ; $4d9a: $23
    ld d, d                                       ; $4d9b: $52
    ld h, a                                       ; $4d9c: $67
    ld [hl], c                                    ; $4d9d: $71
    ld e, h                                       ; $4d9e: $5c
    jr z, jr_03f_4d25                             ; $4d9f: $28 $84

    inc e                                         ; $4da1: $1c
    add $97                                       ; $4da2: $c6 $97
    jp nz, $aafd                                  ; $4da4: $c2 $fd $aa

    sub [hl]                                      ; $4da7: $96
    dec de                                        ; $4da8: $1b
    nop                                           ; $4da9: $00
    rst $20                                       ; $4daa: $e7
    ret                                           ; $4dab: $c9


    sbc e                                         ; $4dac: $9b
    or $ba                                        ; $4dad: $f6 $ba
    jr nc, jr_03f_4e16                            ; $4daf: $30 $65

    push hl                                       ; $4db1: $e5
    rst $20                                       ; $4db2: $e7
    ld e, c                                       ; $4db3: $59
    and a                                         ; $4db4: $a7
    ld b, [hl]                                    ; $4db5: $46
    ld a, c                                       ; $4db6: $79
    db $d3                                        ; $4db7: $d3
    ld l, h                                       ; $4db8: $6c
    ld [hl], c                                    ; $4db9: $71
    cp a                                          ; $4dba: $bf
    ld a, [c]                                     ; $4dbb: $f2
    inc sp                                        ; $4dbc: $33
    push hl                                       ; $4dbd: $e5
    sub l                                         ; $4dbe: $95
    ldh a, [$d9]                                  ; $4dbf: $f0 $d9
    cp a                                          ; $4dc1: $bf
    adc b                                         ; $4dc2: $88
    push af                                       ; $4dc3: $f5
    sbc $65                                       ; $4dc4: $de $65
    ld e, c                                       ; $4dc6: $59
    rst $38                                       ; $4dc7: $ff
    xor b                                         ; $4dc8: $a8
    sub c                                         ; $4dc9: $91
    dec bc                                        ; $4dca: $0b
    jp nc, Jump_03f_5b04                          ; $4dcb: $d2 $04 $5b

    rst $38                                       ; $4dce: $ff
    sbc h                                         ; $4dcf: $9c
    rst $20                                       ; $4dd0: $e7
    ld b, d                                       ; $4dd1: $42
    ld h, c                                       ; $4dd2: $61
    db $dd                                        ; $4dd3: $dd
    ld a, [c]                                     ; $4dd4: $f2
    ld b, $e7                                     ; $4dd5: $06 $e7
    ld e, l                                       ; $4dd7: $5d
    ld a, d                                       ; $4dd8: $7a
    ld a, [hl]                                    ; $4dd9: $7e
    ret nz                                        ; $4dda: $c0

    ld h, l                                       ; $4ddb: $65
    rla                                           ; $4ddc: $17
    rst $30                                       ; $4ddd: $f7
    dec a                                         ; $4dde: $3d
    rst $38                                       ; $4ddf: $ff
    ld [hl-], a                                   ; $4de0: $32
    cp e                                          ; $4de1: $bb
    sbc l                                         ; $4de2: $9d
    rst $10                                       ; $4de3: $d7
    xor e                                         ; $4de4: $ab
    adc a                                         ; $4de5: $8f
    ld e, l                                       ; $4de6: $5d
    jr nz, jr_03f_4de9                            ; $4de7: $20 $00

jr_03f_4de9:
    inc bc                                        ; $4de9: $03
    ld bc, $de92                                  ; $4dea: $01 $92 $de
    sbc c                                         ; $4ded: $99
    sbc b                                         ; $4dee: $98
    ld [hl-], a                                   ; $4def: $32
    cp e                                          ; $4df0: $bb
    ld a, [hl]                                    ; $4df1: $7e
    inc [hl]                                      ; $4df2: $34
    ld l, $b6                                     ; $4df3: $2e $b6
    ld c, d                                       ; $4df5: $4a
    ld [bc], a                                    ; $4df6: $02
    add c                                         ; $4df7: $81
    sub c                                         ; $4df8: $91
    dec d                                         ; $4df9: $15
    adc $2e                                       ; $4dfa: $ce $2e
    add $86                                       ; $4dfc: $c6 $86
    db $10                                        ; $4dfe: $10
    dec b                                         ; $4dff: $05
    nop                                           ; $4e00: $00
    inc bc                                        ; $4e01: $03
    rst $20                                       ; $4e02: $e7
    ld d, b                                       ; $4e03: $50
    ld e, a                                       ; $4e04: $5f
    inc h                                         ; $4e05: $24
    ld c, e                                       ; $4e06: $4b
    ld a, c                                       ; $4e07: $79
    sbc a                                         ; $4e08: $9f
    or d                                          ; $4e09: $b2
    dec bc                                        ; $4e0a: $0b
    ld e, b                                       ; $4e0b: $58
    ld c, l                                       ; $4e0c: $4d
    nop                                           ; $4e0d: $00
    ld a, l                                       ; $4e0e: $7d
    sbc d                                         ; $4e0f: $9a
    add hl, bc                                    ; $4e10: $09
    ld a, $cb                                     ; $4e11: $3e $cb
    adc $49                                       ; $4e13: $ce $49
    add c                                         ; $4e15: $81

jr_03f_4e16:
    ld e, $01                                     ; $4e16: $1e $01
    inc bc                                        ; $4e18: $03
    cp l                                          ; $4e19: $bd
    inc h                                         ; $4e1a: $24
    ld [hl], $8d                                  ; $4e1b: $36 $8d
    cp a                                          ; $4e1d: $bf
    dec bc                                        ; $4e1e: $0b
    ld e, b                                       ; $4e1f: $58
    ld c, l                                       ; $4e20: $4d
    nop                                           ; $4e21: $00
    ld a, l                                       ; $4e22: $7d
    ld a, [de]                                    ; $4e23: $1a
    inc c                                         ; $4e24: $0c
    ld l, $a0                                     ; $4e25: $2e $a0
    ld a, h                                       ; $4e27: $7c
    adc h                                         ; $4e28: $8c
    adc h                                         ; $4e29: $8c
    inc d                                         ; $4e2a: $14
    nop                                           ; $4e2b: $00
    inc bc                                        ; $4e2c: $03
    rst $20                                       ; $4e2d: $e7
    ld d, b                                       ; $4e2e: $50
    ld e, a                                       ; $4e2f: $5f
    inc h                                         ; $4e30: $24
    ld c, e                                       ; $4e31: $4b
    ld a, c                                       ; $4e32: $79
    sbc a                                         ; $4e33: $9f
    ld b, d                                       ; $4e34: $42
    dec b                                         ; $4e35: $05
    rla                                           ; $4e36: $17
    and h                                         ; $4e37: $a4
    ld b, $dd                                     ; $4e38: $06 $dd
    xor a                                         ; $4e3a: $af
    rrca                                          ; $4e3b: $0f

Call_03f_4e3c:
    jp hl                                         ; $4e3c: $e9


    dec d                                         ; $4e3d: $15
    nop                                           ; $4e3e: $00
    add c                                         ; $4e3f: $81
    sub c                                         ; $4e40: $91
    dec d                                         ; $4e41: $15
    xor $8a                                       ; $4e42: $ee $8a
    cpl                                           ; $4e44: $2f
    and l                                         ; $4e45: $a5
    ld a, [hl+]                                   ; $4e46: $2a
    ld bc, $a4e7                                  ; $4e47: $01 $e7 $a4
    add e                                         ; $4e4a: $83
    ld d, $68                                     ; $4e4b: $16 $68
    add d                                         ; $4e4d: $82
    xor l                                         ; $4e4e: $ad
    sub h                                         ; $4e4f: $94
    add [hl]                                      ; $4e50: $86
    stop                                          ; $4e51: $10 $00
    add c                                         ; $4e53: $81
    sub c                                         ; $4e54: $91
    dec d                                         ; $4e55: $15
    adc $2e                                       ; $4e56: $ce $2e
    add $86                                       ; $4e58: $c6 $86
    db $10                                        ; $4e5a: $10
    dec b                                         ; $4e5b: $05
    nop                                           ; $4e5c: $00
    inc bc                                        ; $4e5d: $03
    cp l                                          ; $4e5e: $bd
    inc h                                         ; $4e5f: $24
    ld [hl], d                                    ; $4e60: $72
    sub $f5                                       ; $4e61: $d6 $f5
    jp nz, $bf56                                  ; $4e63: $c2 $56 $bf

    ld l, c                                       ; $4e66: $69
    or [hl]                                       ; $4e67: $b6
    ld [$7600], sp                                ; $4e68: $08 $00 $76
    jp nc, $eccc                                  ; $4e6b: $d2 $cc $ec

    reti                                          ; $4e6e: $d9


    ld h, d                                       ; $4e6f: $62
    db $fd                                        ; $4e70: $fd
    ld [$9700], sp                                ; $4e71: $08 $00 $97
    ld h, [hl]                                    ; $4e74: $66
    and a                                         ; $4e75: $a7
    or e                                          ; $4e76: $b3
    dec hl                                        ; $4e77: $2b
    xor b                                         ; $4e78: $a8

Call_03f_4e79:
    ld de, $1700                                  ; $4e79: $11 $00 $17
    ld d, b                                       ; $4e7c: $50
    call nz, $2bba                                ; $4e7d: $c4 $ba $2b
    ld d, d                                       ; $4e80: $52
    add d                                         ; $4e81: $82
    adc l                                         ; $4e82: $8d
    ld a, [bc]                                    ; $4e83: $0a
    nop                                           ; $4e84: $00
    inc bc                                        ; $4e85: $03
    halt                                          ; $4e86: $76
    ld l, d                                       ; $4e87: $6a
    and h                                         ; $4e88: $a4
    push bc                                       ; $4e89: $c5
    sub h                                         ; $4e8a: $94
    dec e                                         ; $4e8b: $1d
    or l                                          ; $4e8c: $b5
    ld [hl], e                                    ; $4e8d: $73
    sbc d                                         ; $4e8e: $9a
    ld a, [c]                                     ; $4e8f: $f2
    ldh [$f7], a                                  ; $4e90: $e0 $f7
    add hl, hl                                    ; $4e92: $29
    cp e                                          ; $4e93: $bb
    add b                                         ; $4e94: $80
    push de                                       ; $4e95: $d5
    inc b                                         ; $4e96: $04
    ld a, l                                       ; $4e97: $7d
    sbc d                                         ; $4e98: $9a
    add hl, bc                                    ; $4e99: $09
    ld a, $cb                                     ; $4e9a: $3e $cb
    db $ec                                        ; $4e9c: $ec
    ld e, l                                       ; $4e9d: $5d
    ld c, l                                       ; $4e9e: $4d
    dec b                                         ; $4e9f: $05
    inc bc                                        ; $4ea0: $03
    ld bc, $de92                                  ; $4ea1: $01 $92 $de
    sbc c                                         ; $4ea4: $99
    sbc b                                         ; $4ea5: $98
    or d                                          ; $4ea6: $b2
    ld e, [hl]                                    ; $4ea7: $5e
    sbc d                                         ; $4ea8: $9a
    and [hl]                                      ; $4ea9: $a6
    cp l                                          ; $4eaa: $bd
    ld c, a                                       ; $4eab: $4f
    nop                                           ; $4eac: $00
    cp l                                          ; $4ead: $bd
    ld e, a                                       ; $4eae: $5f
    ld a, [hl]                                    ; $4eaf: $7e
    rst $20                                       ; $4eb0: $e7
    inc [hl]                                      ; $4eb1: $34
    ld b, $6b                                     ; $4eb2: $06 $6b
    nop                                           ; $4eb4: $00
    inc bc                                        ; $4eb5: $03
    ld a, l                                       ; $4eb6: $7d
    ld c, $d0                                     ; $4eb7: $0e $d0
    ld h, [hl]                                    ; $4eb9: $66
    ld a, [hl]                                    ; $4eba: $7e
    sub $d9                                       ; $4ebb: $d6 $d9
    ld d, l                                       ; $4ebd: $55
    db $d3                                        ; $4ebe: $d3
    call nz, Call_03f_79d4                        ; $4ebf: $c4 $d4 $79
    ld l, $30                                     ; $4ec2: $2e $30
    or c                                          ; $4ec4: $b1
    ld sp, hl                                     ; $4ec5: $f9
    inc b                                         ; $4ec6: $04
    ld a, l                                       ; $4ec7: $7d
    ld e, [hl]                                    ; $4ec8: $5e
    ld h, b                                       ; $4ec9: $60
    db $ec                                        ; $4eca: $ec
    ld l, d                                       ; $4ecb: $6a
    ld [de], a                                    ; $4ecc: $12
    dec a                                         ; $4ecd: $3d
    nop                                           ; $4ece: $00
    rst $20                                       ; $4ecf: $e7
    ld [$ae61], sp                                ; $4ed0: $08 $61 $ae
    rst $30                                       ; $4ed3: $f7
    ld a, e                                       ; $4ed4: $7b
    dec hl                                        ; $4ed5: $2b
    nop                                           ; $4ed6: $00
    rst $20                                       ; $4ed7: $e7
    ccf                                           ; $4ed8: $3f
    xor $d2                                       ; $4ed9: $ee $d2
    db $f4                                        ; $4edb: $f4
    db $ed                                        ; $4edc: $ed
    ld bc, $bd03                                  ; $4edd: $01 $03 $bd
    or e                                          ; $4ee0: $b3
    ld c, $25                                     ; $4ee1: $0e $25
    dec sp                                        ; $4ee3: $3b
    ld l, a                                       ; $4ee4: $6f
    sbc d                                         ; $4ee5: $9a
    dec l                                         ; $4ee6: $2d
    ld [bc], a                                    ; $4ee7: $02
    rla                                           ; $4ee8: $17
    or l                                          ; $4ee9: $b5
    cp $fd                                        ; $4eea: $fe $fd
    rst $10                                       ; $4eec: $d7
    db $db                                        ; $4eed: $db
    push de                                       ; $4eee: $d5
    ld [hl], l                                    ; $4eef: $75
    ld b, e                                       ; $4ef0: $43
    dec b                                         ; $4ef1: $05
    ld h, a                                       ; $4ef2: $67
    ld c, e                                       ; $4ef3: $4b
    ld a, e                                       ; $4ef4: $7b
    call c, Call_03f_4d85                         ; $4ef5: $dc $85 $4d
    ld h, b                                       ; $4ef8: $60
    jr nz, jr_03f_4f50                            ; $4ef9: $20 $55

    ld bc, $83bd                                  ; $4efb: $01 $bd $83
    inc d                                         ; $4efe: $14
    ld l, e                                       ; $4eff: $6b
    ld e, c                                       ; $4f00: $59
    nop                                           ; $4f01: $00
    or c                                          ; $4f02: $b1
    add hl, de                                    ; $4f03: $19
    jr jr_03f_4f06                                ; $4f04: $18 $00

jr_03f_4f06:
    cp l                                          ; $4f06: $bd
    or b                                          ; $4f07: $b0
    sub l                                         ; $4f08: $95
    ld e, l                                       ; $4f09: $5d
    sub b                                         ; $4f0a: $90
    ld a, [de]                                    ; $4f0b: $1a
    ld l, h                                       ; $4f0c: $6c
    nop                                           ; $4f0d: $00
    inc bc                                        ; $4f0e: $03
    inc bc                                        ; $4f0f: $03
    cp l                                          ; $4f10: $bd
    ld a, [$baf4]                                 ; $4f11: $fa $f4 $ba
    add $6e                                       ; $4f14: $c6 $6e
    halt                                          ; $4f16: $76

Call_03f_4f17:
    ld a, l                                       ; $4f17: $7d
    cpl                                           ; $4f18: $2f
    or e                                          ; $4f19: $b3
    cp e                                          ; $4f1a: $bb
    db $f4                                        ; $4f1b: $f4
    or d                                          ; $4f1c: $b2
    ld e, [hl]                                    ; $4f1d: $5e
    rst $20                                       ; $4f1e: $e7
    rst $30                                       ; $4f1f: $f7
    db $ed                                        ; $4f20: $ed
    ld h, e                                       ; $4f21: $63
    rst $10                                       ; $4f22: $d7
    rst $30                                       ; $4f23: $f7
    ld [hl-], a                                   ; $4f24: $32
    nop                                           ; $4f25: $00
    inc bc                                        ; $4f26: $03
    ld bc, $de92                                  ; $4f27: $01 $92 $de
    sbc c                                         ; $4f2a: $99
    sbc b                                         ; $4f2b: $98
    ld b, d                                       ; $4f2c: $42
    sbc l                                         ; $4f2d: $9d
    ld e, l                                       ; $4f2e: $5d
    ccf                                           ; $4f2f: $3f
    ld a, [de]                                    ; $4f30: $1a
    rla                                           ; $4f31: $17
    ld e, e                                       ; $4f32: $5b
    dec h                                         ; $4f33: $25
    dec d                                         ; $4f34: $15
    nop                                           ; $4f35: $00
    rst $20                                       ; $4f36: $e7
    inc a                                         ; $4f37: $3c
    adc $ae                                       ; $4f38: $ce $ae
    db $10                                        ; $4f3a: $10
    dec sp                                        ; $4f3b: $3b
    rst $38                                       ; $4f3c: $ff
    ld a, [bc]                                    ; $4f3d: $0a
    nop                                           ; $4f3e: $00
    rst $20                                       ; $4f3f: $e7
    ld a, h                                       ; $4f40: $7c
    and l                                         ; $4f41: $a5
    ld sp, hl                                     ; $4f42: $f9
    push af                                       ; $4f43: $f5
    ld a, c                                       ; $4f44: $79
    ld b, h                                       ; $4f45: $44
    nop                                           ; $4f46: $00
    inc bc                                        ; $4f47: $03
    rst $20                                       ; $4f48: $e7
    inc [hl]                                      ; $4f49: $34
    and c                                         ; $4f4a: $a1
    adc c                                         ; $4f4b: $89
    add hl, hl                                    ; $4f4c: $29
    di                                            ; $4f4d: $f3
    ld e, h                                       ; $4f4e: $5c
    rst $28                                       ; $4f4f: $ef

jr_03f_4f50:
    xor h                                         ; $4f50: $ac
    ld b, e                                       ; $4f51: $43
    ret                                           ; $4f52: $c9


    adc $9b                                       ; $4f53: $ce $9b
    ld h, [hl]                                    ; $4f55: $66
    adc e                                         ; $4f56: $8b
    nop                                           ; $4f57: $00
    rla                                           ; $4f58: $17
    cp h                                          ; $4f59: $bc
    add c                                         ; $4f5a: $81
    or c                                          ; $4f5b: $b1
    or e                                          ; $4f5c: $b3
    push bc                                       ; $4f5d: $c5
    push de                                       ; $4f5e: $d5
    dec [hl]                                      ; $4f5f: $35
    inc hl                                        ; $4f60: $23
    nop                                           ; $4f61: $00
    inc bc                                        ; $4f62: $03
    rst $20                                       ; $4f63: $e7
    inc [hl]                                      ; $4f64: $34
    and c                                         ; $4f65: $a1
    adc c                                         ; $4f66: $89
    add hl, hl                                    ; $4f67: $29
    db $eb                                        ; $4f68: $eb
    dec l                                         ; $4f69: $2d
    db $fc                                        ; $4f6a: $fc
    ret c                                         ; $4f6b: $d8

    ld a, [hl+]                                   ; $4f6c: $2a
    add hl, bc                                    ; $4f6d: $09
    nop                                           ; $4f6e: $00
    ld bc, $56c1                                  ; $4f6f: $01 $c1 $56
    halt                                          ; $4f72: $76
    sbc c                                         ; $4f73: $99
    cp b                                          ; $4f74: $b8
    cp d                                          ; $4f75: $ba
    sub e                                         ; $4f76: $93
    nop                                           ; $4f77: $00
    inc bc                                        ; $4f78: $03
    cp l                                          ; $4f79: $bd
    adc $bb                                       ; $4f7a: $ce $bb
    or h                                          ; $4f7c: $b4
    rst $10                                       ; $4f7d: $d7
    add hl, sp                                    ; $4f7e: $39
    halt                                          ; $4f7f: $76
    cp l                                          ; $4f80: $bd
    rst $08                                       ; $4f81: $cf
    rst $28                                       ; $4f82: $ef
    ld [hl], e                                    ; $4f83: $73
    cp [hl]                                       ; $4f84: $be
    ld e, l                                       ; $4f85: $5d
    rst $18                                       ; $4f86: $df
    sra [hl]                                      ; $4f87: $cb $2e
    ld c, $04                                     ; $4f89: $0e $04
    add c                                         ; $4f8b: $81
    sub c                                         ; $4f8c: $91
    ld h, c                                       ; $4f8d: $61
    ldh a, [$b1]                                  ; $4f8e: $f0 $b1
    ld [hl], c                                    ; $4f90: $71
    or $94                                        ; $4f91: $f6 $94
    ld hl, sp+$10                                 ; $4f93: $f8 $10
    dec b                                         ; $4f95: $05
    nop                                           ; $4f96: $00
    add c                                         ; $4f97: $81
    ld c, [hl]                                    ; $4f98: $4e
    rra                                           ; $4f99: $1f
    ld [hl], a                                    ; $4f9a: $77
    ld c, $fb                                     ; $4f9b: $0e $fb
    ld d, b                                       ; $4f9d: $50
    ld e, d                                       ; $4f9e: $5a
    inc b                                         ; $4f9f: $04
    ld a, l                                       ; $4fa0: $7d
    ld a, [de]                                    ; $4fa1: $1a
    inc c                                         ; $4fa2: $0c
    xor $1c                                       ; $4fa3: $ee $1c
    ld a, $02                                     ; $4fa5: $3e $02
    cp l                                          ; $4fa7: $bd
    ld e, [hl]                                    ; $4fa8: $5e
    ld [de], a                                    ; $4fa9: $12
    ld [hl], a                                    ; $4faa: $77
    ld l, c                                       ; $4fab: $69
    inc sp                                        ; $4fac: $33
    inc b                                         ; $4fad: $04
    rla                                           ; $4fae: $17
    or d                                          ; $4faf: $b2
    jp nc, Jump_03f_6770                          ; $4fb0: $d2 $70 $67

    dec sp                                        ; $4fb3: $3b
    pop af                                        ; $4fb4: $f1
    call Call_000_00c0                            ; $4fb5: $cd $c0 $00
    rla                                           ; $4fb8: $17
    ld c, d                                       ; $4fb9: $4a
    db $d3                                        ; $4fba: $d3
    dec b                                         ; $4fbb: $05
    cp d                                          ; $4fbc: $ba
    cp d                                          ; $4fbd: $ba
    and [hl]                                      ; $4fbe: $a6
    jr z, jr_03f_4fc1                             ; $4fbf: $28 $00

jr_03f_4fc1:
    inc bc                                        ; $4fc1: $03
    inc bc                                        ; $4fc2: $03
    inc bc                                        ; $4fc3: $03
    halt                                          ; $4fc4: $76
    rla                                           ; $4fc5: $17
    reti                                          ; $4fc6: $d9


    push af                                       ; $4fc7: $f5
    cp [hl]                                       ; $4fc8: $be
    db $ec                                        ; $4fc9: $ec
    jp nc, $fb8b                                  ; $4fca: $d2 $8b $fb

    sbc [hl]                                      ; $4fcd: $9e
    rst $18                                       ; $4fce: $df
    ld a, e                                       ; $4fcf: $7b
    cp l                                          ; $4fd0: $bd
    ld l, $bd                                     ; $4fd1: $2e $bd
    inc l                                         ; $4fd3: $2c
    stop                                          ; $4fd4: $10 $00
    inc bc                                        ; $4fd6: $03
    halt                                          ; $4fd7: $76
    ld d, $d7                                     ; $4fd8: $16 $d7
    jp nz, $e79c                                  ; $4fda: $c2 $9c $e7

    ld [bc], a                                    ; $4fdd: $02
    inc h                                         ; $4fde: $24
    cp l                                          ; $4fdf: $bd
    inc sp                                        ; $4fe0: $33
    and [hl]                                      ; $4fe1: $a6
    reti                                          ; $4fe2: $d9


    ld [hl+], a                                   ; $4fe3: $22
    nop                                           ; $4fe4: $00
    cp l                                          ; $4fe5: $bd
    add e                                         ; $4fe6: $83
    jp nc, $e774                                  ; $4fe7: $d2 $74 $e7

    ret                                           ; $4fea: $c9


    ld e, e                                       ; $4feb: $5b
    ld bc, $b3bd                                  ; $4fec: $01 $bd $b3
    inc [hl]                                      ; $4fef: $34
    call c, $d9a5                                 ; $4ff0: $dc $a5 $d9
    ld l, c                                       ; $4ff3: $69
    xor b                                         ; $4ff4: $a8
    adc c                                         ; $4ff5: $89
    nop                                           ; $4ff6: $00
    rla                                           ; $4ff7: $17
    or b                                          ; $4ff8: $b0
    cp d                                          ; $4ff9: $ba
    ld a, d                                       ; $4ffa: $7a
    rst $20                                       ; $4ffb: $e7
    ld a, l                                       ; $4ffc: $7d
    sbc l                                         ; $4ffd: $9d
    ld [$1700], sp                                ; $4ffe: $08 $00 $17
    jp $ee24                                      ; $5001: $c3 $24 $ee


    ld [c], a                                     ; $5004: $e2
    ld b, e                                       ; $5005: $43
    rst $08                                       ; $5006: $cf
    sub [hl]                                      ; $5007: $96
    ld b, [hl]                                    ; $5008: $46
    inc b                                         ; $5009: $04
    sub a                                         ; $500a: $97
    ld h, [hl]                                    ; $500b: $66
    ld h, a                                       ; $500c: $67
    rla                                           ; $500d: $17
    rra                                           ; $500e: $1f
    ld a, d                                       ; $500f: $7a
    xor $8b                                       ; $5010: $ee $8b
    or b                                          ; $5012: $b0
    inc d                                         ; $5013: $14
    nop                                           ; $5014: $00
    add c                                         ; $5015: $81
    xor l                                         ; $5016: $ad
    ld c, [hl]                                    ; $5017: $4e
    sbc h                                         ; $5018: $9c
    db $fd                                        ; $5019: $fd
    adc e                                         ; $501a: $8b
    inc [hl]                                      ; $501b: $34
    dec b                                         ; $501c: $05
    ld d, a                                       ; $501d: $57
    cp [hl]                                       ; $501e: $be
    dec d                                         ; $501f: $15
    cp c                                          ; $5020: $b9
    ld [hl], e                                    ; $5021: $73
    dec h                                         ; $5022: $25
    dec [hl]                                      ; $5023: $35
    ld [bc], a                                    ; $5024: $02
    inc bc                                        ; $5025: $03
    ld bc, $9092                                  ; $5026: $01 $92 $90
    ld a, h                                       ; $5029: $7c
    db $fd                                        ; $502a: $fd
    and [hl]                                      ; $502b: $a6
    reti                                          ; $502c: $d9


    ld [c], a                                     ; $502d: $e2
    ld a, d                                       ; $502e: $7a
    ld sp, hl                                     ; $502f: $f9
    ld h, [hl]                                    ; $5030: $66
    ld e, d                                       ; $5031: $5a
    ld [c], a                                     ; $5032: $e2
    rla                                           ; $5033: $17
    nop                                           ; $5034: $00
    ld h, a                                       ; $5035: $67
    inc de                                        ; $5036: $13
    ld [hl], a                                    ; $5037: $77
    ld c, $1f                                     ; $5038: $0e $1f
    add hl, bc                                    ; $503a: $09
    nop                                           ; $503b: $00
    inc bc                                        ; $503c: $03
    rst $20                                       ; $503d: $e7
    ld a, l                                       ; $503e: $7d
    call $fd9d                                    ; $503f: $cd $9d $fd
    push hl                                       ; $5042: $e5
    pop de                                        ; $5043: $d1
    inc [hl]                                      ; $5044: $34
    add h                                         ; $5045: $84
    nop                                           ; $5046: $00
    rst $20                                       ; $5047: $e7
    inc a                                         ; $5048: $3c
    xor $d2                                       ; $5049: $ee $d2
    ld d, [hl]                                    ; $504b: $56
    ld l, b                                       ; $504c: $68
    dec b                                         ; $504d: $05
    inc bc                                        ; $504e: $03
    halt                                          ; $504f: $76
    ld d, $d7                                     ; $5050: $16 $d7
    jp nz, $e79c                                  ; $5052: $c2 $9c $e7

    ld [bc], a                                    ; $5055: $02
    inc de                                        ; $5056: $13
    sbc e                                         ; $5057: $9b
    ld c, a                                       ; $5058: $4f
    nop                                           ; $5059: $00
    cp l                                          ; $505a: $bd
    inc a                                         ; $505b: $3c
    dec bc                                        ; $505c: $0b
    ld [hl], a                                    ; $505d: $77
    ld hl, $614b                                  ; $505e: $21 $4b $61
    adc h                                         ; $5061: $8c
    nop                                           ; $5062: $00
    ld h, a                                       ; $5063: $67
    or a                                          ; $5064: $b7
    ld d, d                                       ; $5065: $52
    halt                                          ; $5066: $76
    sub c                                         ; $5067: $91
    db $d3                                        ; $5068: $d3
    ld l, b                                       ; $5069: $68
    dec b                                         ; $506a: $05
    rla                                           ; $506b: $17
    ld d, b                                       ; $506c: $50
    ld e, b                                       ; $506d: $58
    ld e, e                                       ; $506e: $5b
    rla                                           ; $506f: $17
    sbc b                                         ; $5070: $98
    xor [hl]                                      ; $5071: $ae
    stop                                          ; $5072: $10 $00
    ld a, l                                       ; $5074: $7d
    sbc e                                         ; $5075: $9b
    add c                                         ; $5076: $81
    or c                                          ; $5077: $b1
    adc e                                         ; $5078: $8b
    cp [hl]                                       ; $5079: $be
    jp nc, Jump_000_0a28                          ; $507a: $d2 $28 $0a

    nop                                           ; $507d: $00
    inc bc                                        ; $507e: $03
    rst $20                                       ; $507f: $e7
    jr nc, jr_03f_50fe                            ; $5080: $30 $7c

    adc c                                         ; $5082: $89
    ld e, a                                       ; $5083: $5f
    inc de                                        ; $5084: $13
    ld h, e                                       ; $5085: $63
    adc $73                                       ; $5086: $ce $73
    sub a                                         ; $5088: $97
    db $f4                                        ; $5089: $f4
    ld [bc], a                                    ; $508a: $02
    cp l                                          ; $508b: $bd
    ret nc                                        ; $508c: $d0

    ld e, e                                       ; $508d: $5b
    rst $10                                       ; $508e: $d7
    and a                                         ; $508f: $a7
    sub l                                         ; $5090: $95
    ld b, d                                       ; $5091: $42
    ld bc, $bce7                                  ; $5092: $01 $e7 $bc
    ld [$9771], sp                                ; $5095: $08 $71 $97
    add hl, sp                                    ; $5098: $39
    inc bc                                        ; $5099: $03
    add e                                         ; $509a: $83
    ld d, [hl]                                    ; $509b: $56
    nop                                           ; $509c: $00
    rla                                           ; $509d: $17
    inc h                                         ; $509e: $24
    rst $10                                       ; $509f: $d7
    rst $10                                       ; $50a0: $d7
    ld hl, $1702                                  ; $50a1: $21 $02 $17
    sub c                                         ; $50a4: $91
    db $eb                                        ; $50a5: $eb
    di                                            ; $50a6: $f3
    add sp, $59                                   ; $50a7: $e8 $59
    ld l, c                                       ; $50a9: $69

jr_03f_50aa:
    and l                                         ; $50aa: $a5
    stop                                          ; $50ab: $10 $00
    ld a, l                                       ; $50ad: $7d
    ld a, $c6                                     ; $50ae: $3e $c6
    sbc l                                         ; $50b0: $9d
    ld c, l                                       ; $50b1: $4d
    ld b, h                                       ; $50b2: $44
    add $08                                       ; $50b3: $c6 $08
    nop                                           ; $50b5: $00
    ld bc, $5c8c                                  ; $50b6: $01 $8c $5c
    ldh [$d7], a                                  ; $50b9: $e0 $d7
    adc [hl]                                      ; $50bb: $8e
    ld b, l                                       ; $50bc: $45
    ld bc, $8d01                                  ; $50bd: $01 $01 $8d
    and d                                         ; $50c0: $a2
    cp e                                          ; $50c1: $bb
    add sp, $11                                   ; $50c2: $e8 $11
    sub d                                         ; $50c4: $92
    and $21                                       ; $50c5: $e6 $21
    ld [bc], a                                    ; $50c7: $02
    sub a                                         ; $50c8: $97
    ld [hl], $13                                  ; $50c9: $36 $13
    ld a, h                                       ; $50cb: $7c
    pop af                                        ; $50cc: $f1
    cp e                                          ; $50cd: $bb
    or d                                          ; $50ce: $b2
    dec d                                         ; $50cf: $15
    ld c, a                                       ; $50d0: $4f
    pop de                                        ; $50d1: $d1
    or b                                          ; $50d2: $b0
    ld hl, $9700                                  ; $50d3: $21 $00 $97
    and [hl]                                      ; $50d6: $a6
    ld [$49ce], a                                 ; $50d7: $ea $ce $49
    rlca                                          ; $50da: $07
    sub l                                         ; $50db: $95
    ld d, a                                       ; $50dc: $57
    nop                                           ; $50dd: $00
    add c                                         ; $50de: $81
    pop de                                        ; $50df: $d1
    db $ed                                        ; $50e0: $ed
    jp z, Jump_03f_4a56                           ; $50e1: $ca $56 $4a

    ei                                            ; $50e4: $fb
    ld e, d                                       ; $50e5: $5a
    ld bc, $9703                                  ; $50e6: $01 $03 $97
    ld d, l                                       ; $50e9: $55
    dec [hl]                                      ; $50ea: $35
    ret c                                         ; $50eb: $d8

    ld c, h                                       ; $50ec: $4c
    ld [$773c], a                                 ; $50ed: $ea $3c $77
    ld c, c                                       ; $50f0: $49
    cpl                                           ; $50f1: $2f
    nop                                           ; $50f2: $00
    rla                                           ; $50f3: $17
    inc h                                         ; $50f4: $24
    ld [hl], a                                    ; $50f5: $77
    sbc [hl]                                      ; $50f6: $9e
    inc a                                         ; $50f7: $3c
    ld b, [hl]                                    ; $50f8: $46
    nop                                           ; $50f9: $00
    ld a, l                                       ; $50fa: $7d
    ld e, [hl]                                    ; $50fb: $5e
    adc h                                         ; $50fc: $8c
    db $d3                                        ; $50fd: $d3

jr_03f_50fe:
    dec b                                         ; $50fe: $05
    jr c, jr_03f_50aa                             ; $50ff: $38 $a9

    inc [hl]                                      ; $5101: $34
    dec b                                         ; $5102: $05
    ld d, a                                       ; $5103: $57
    cp [hl]                                       ; $5104: $be
    dec d                                         ; $5105: $15
    cp c                                          ; $5106: $b9
    or e                                          ; $5107: $b3
    db $d3                                        ; $5108: $d3
    ld l, d                                       ; $5109: $6a
    ld [$e700], sp                                ; $510a: $08 $00 $e7
    inc h                                         ; $510d: $24
    ld [c], a                                     ; $510e: $e2
    rst $08                                       ; $510f: $cf
    cp [hl]                                       ; $5110: $be
    add hl, de                                    ; $5111: $19
    jr jr_03f_511e                                ; $5112: $18 $0a

    nop                                           ; $5114: $00
    inc bc                                        ; $5115: $03
    halt                                          ; $5116: $76
    add l                                         ; $5117: $85
    ld h, $4a                                     ; $5118: $26 $4a
    ld h, d                                       ; $511a: $62
    inc sp                                        ; $511b: $33
    db $eb                                        ; $511c: $eb
    dec h                                         ; $511d: $25

jr_03f_511e:
    ld d, c                                       ; $511e: $51
    ld [hl], a                                    ; $511f: $77
    db $e4                                        ; $5120: $e4
    ld a, d                                       ; $5121: $7a
    ld b, c                                       ; $5122: $41
    ld a, [c]                                     ; $5123: $f2
    sbc [hl]                                      ; $5124: $9e
    and [hl]                                      ; $5125: $a6
    push de                                       ; $5126: $d5
    adc l                                         ; $5127: $8d
    jr @+$55                                      ; $5128: $18 $53

    ld bc, $8b67                                  ; $512a: $01 $67 $8b
    inc sp                                        ; $512d: $33
    ld e, h                                       ; $512e: $5c
    rra                                           ; $512f: $1f
    db $d3                                        ; $5130: $d3
    and a                                         ; $5131: $a7
    sub l                                         ; $5132: $95
    ld a, [c]                                     ; $5133: $f2
    ld [$bd00], sp                                ; $5134: $08 $00 $bd
    add e                                         ; $5137: $83
    adc $c0                                       ; $5138: $ce $c0
    ld e, b                                       ; $513a: $58
    rst $28                                       ; $513b: $ef
    ld a, [c]                                     ; $513c: $f2
    jr jr_03f_5152                                ; $513d: $18 $13

    ld bc, $3ce7                                  ; $513f: $01 $e7 $3c
    and d                                         ; $5142: $a2
    ld [hl], l                                    ; $5143: $75
    ld h, a                                       ; $5144: $67
    or a                                          ; $5145: $b7
    and d                                         ; $5146: $a2
    adc c                                         ; $5147: $89
    nop                                           ; $5148: $00
    rst $20                                       ; $5149: $e7
    ld a, h                                       ; $514a: $7c
    and l                                         ; $514b: $a5
    ld sp, hl                                     ; $514c: $f9
    sbc l                                         ; $514d: $9d
    ld l, l                                       ; $514e: $6d
    dec d                                         ; $514f: $15
    inc h                                         ; $5150: $24
    nop                                           ; $5151: $00

jr_03f_5152:
    rst $20                                       ; $5152: $e7
    add hl, sp                                    ; $5153: $39
    db $eb                                        ; $5154: $eb
    ld a, [$52b4]                                 ; $5155: $fa $b4 $52
    jr z, jr_03f_515a                             ; $5158: $28 $00

jr_03f_515a:
    rst $20                                       ; $515a: $e7
    ccf                                           ; $515b: $3f
    ld l, $30                                     ; $515c: $2e $30
    ld hl, sp+$30                                 ; $515e: $f8 $30
    ld bc, $6417                                  ; $5160: $01 $17 $64
    db $10                                        ; $5163: $10
    ld [hl], a                                    ; $5164: $77
    pop de                                        ; $5165: $d1
    jp $a214                                      ; $5166: $c3 $14 $a2


    ld hl, $1700                                  ; $5169: $21 $00 $17
    dec [hl]                                      ; $516c: $35
    db $fd                                        ; $516d: $fd
    dec b                                         ; $516e: $05
    add $84                                       ; $516f: $c6 $84
    ld b, c                                       ; $5171: $41
    dec b                                         ; $5172: $05
    rla                                           ; $5173: $17
    dec [hl]                                      ; $5174: $35
    db $fd                                        ; $5175: $fd
    ld e, l                                       ; $5176: $5d
    ld sp, hl                                     ; $5177: $f9
    ld sp, $0102                                  ; $5178: $31 $02 $01
    rst $28                                       ; $517b: $ef
    jp z, Jump_03f_61ce                           ; $517c: $ca $ce $61

    rra                                           ; $517f: $1f
    ld h, $00                                     ; $5180: $26 $00
    ld bc, $caef                                  ; $5182: $01 $ef $ca
    ld a, [$a8bc]                                 ; $5185: $fa $bc $a8
    daa                                           ; $5188: $27
    ld [bc], a                                    ; $5189: $02
    add c                                         ; $518a: $81
    xor l                                         ; $518b: $ad
    ld c, [hl]                                    ; $518c: $4e
    ld e, h                                       ; $518d: $5c
    ld b, b                                       ; $518e: $40
    or b                                          ; $518f: $b0
    add l                                         ; $5190: $85
    and c                                         ; $5191: $a1
    ld [bc], a                                    ; $5192: $02
    inc bc                                        ; $5193: $03
    inc bc                                        ; $5194: $03
    inc bc                                        ; $5195: $03
    inc bc                                        ; $5196: $03
    inc bc                                        ; $5197: $03
    inc bc                                        ; $5198: $03
    inc bc                                        ; $5199: $03
    inc bc                                        ; $519a: $03
    inc bc                                        ; $519b: $03
    inc bc                                        ; $519c: $03
    inc bc                                        ; $519d: $03
    inc bc                                        ; $519e: $03
    inc bc                                        ; $519f: $03
    inc bc                                        ; $51a0: $03
    inc bc                                        ; $51a1: $03
    inc bc                                        ; $51a2: $03
    inc bc                                        ; $51a3: $03
    inc bc                                        ; $51a4: $03
    inc bc                                        ; $51a5: $03
    inc bc                                        ; $51a6: $03
    inc bc                                        ; $51a7: $03
    inc bc                                        ; $51a8: $03
    inc bc                                        ; $51a9: $03
    inc bc                                        ; $51aa: $03
    inc bc                                        ; $51ab: $03
    inc bc                                        ; $51ac: $03
    inc bc                                        ; $51ad: $03
    inc bc                                        ; $51ae: $03
    inc bc                                        ; $51af: $03
    inc bc                                        ; $51b0: $03
    inc bc                                        ; $51b1: $03
    inc bc                                        ; $51b2: $03
    inc bc                                        ; $51b3: $03
    inc bc                                        ; $51b4: $03
    or $b4                                        ; $51b5: $f6 $b4
    jp nz, Jump_000_1dd7                          ; $51b7: $c2 $d7 $1d

    ld [hl], e                                    ; $51ba: $73
    inc d                                         ; $51bb: $14
    ld [$01e2], a                                 ; $51bc: $ea $e2 $01
    rst $30                                       ; $51bf: $f7
    ld a, l                                       ; $51c0: $7d
    db $db                                        ; $51c1: $db
    cp a                                          ; $51c2: $bf
    adc b                                         ; $51c3: $88
    ld [hl], l                                    ; $51c4: $75
    ld bc, $2319                                  ; $51c5: $01 $19 $23
    and l                                         ; $51c8: $a5
    daa                                           ; $51c9: $27
    nop                                           ; $51ca: $00
    ld h, a                                       ; $51cb: $67
    dec sp                                        ; $51cc: $3b
    ld h, d                                       ; $51cd: $62
    sbc $f7                                       ; $51ce: $de $f7
    dec c                                         ; $51d0: $0d
    nop                                           ; $51d1: $00
    halt                                          ; $51d2: $76
    ld b, d                                       ; $51d3: $42
    ld e, l                                       ; $51d4: $5d
    inc a                                         ; $51d5: $3c
    nop                                           ; $51d6: $00
    cp [hl]                                       ; $51d7: $be
    xor $15                                       ; $51d8: $ee $15
    adc d                                         ; $51da: $8a
    ld a, a                                       ; $51db: $7f
    rst $18                                       ; $51dc: $df
    ld [hl], e                                    ; $51dd: $73
    ld d, a                                       ; $51de: $57
    ld c, a                                       ; $51df: $4f
    db $db                                        ; $51e0: $db
    xor b                                         ; $51e1: $a8
    or c                                          ; $51e2: $b1
    ld c, e                                       ; $51e3: $4b
    rst $30                                       ; $51e4: $f7
    ld d, $67                                     ; $51e5: $16 $67
    inc bc                                        ; $51e7: $03
    ld e, a                                       ; $51e8: $5f
    scf                                           ; $51e9: $37
    adc e                                         ; $51ea: $8b
    ld l, e                                       ; $51eb: $6b
    inc d                                         ; $51ec: $14
    adc $d3                                       ; $51ed: $ce $d3
    inc [hl]                                      ; $51ef: $34
    sbc c                                         ; $51f0: $99
    push bc                                       ; $51f1: $c5
    ld [hl], c                                    ; $51f2: $71
    ld e, a                                       ; $51f3: $5f
    ld d, [hl]                                    ; $51f4: $56
    db $dd                                        ; $51f5: $dd
    ldh a, [$cb]                                  ; $51f6: $f0 $cb
    ld a, [hl+]                                   ; $51f8: $2a
    xor a                                         ; $51f9: $af
    ei                                            ; $51fa: $fb
    reti                                          ; $51fb: $d9


    daa                                           ; $51fc: $27
    inc b                                         ; $51fd: $04
    di                                            ; $51fe: $f3
    dec h                                         ; $51ff: $25
    ld l, d                                       ; $5200: $6a
    rrca                                          ; $5201: $0f
    nop                                           ; $5202: $00
    db $dd                                        ; $5203: $dd
    db $ed                                        ; $5204: $ed
    ld [hl], h                                    ; $5205: $74
    ld d, $c7                                     ; $5206: $16 $c7
    push bc                                       ; $5208: $c5
    db $f4                                        ; $5209: $f4
    add hl, sp                                    ; $520a: $39
    sub [hl]                                      ; $520b: $96
    push de                                       ; $520c: $d5
    ld c, $7d                                     ; $520d: $0e $7d
    xor [hl]                                      ; $520f: $ae
    db $e4                                        ; $5210: $e4
    db $f4                                        ; $5211: $f4
    dec sp                                        ; $5212: $3b
    ld e, h                                       ; $5213: $5c
    ld c, h                                       ; $5214: $4c
    sbc a                                         ; $5215: $9f
    di                                            ; $5216: $f3

Jump_03f_5217:
    ld e, h                                       ; $5217: $5c
    ld l, l                                       ; $5218: $6d
    db $d3                                        ; $5219: $d3
    inc de                                        ; $521a: $13
    nop                                           ; $521b: $00
    db $dd                                        ; $521c: $dd
    db $ec                                        ; $521d: $ec
    inc [hl]                                      ; $521e: $34
    and $2a                                       ; $521f: $e6 $2a
    cp a                                          ; $5221: $bf
    sbc a                                         ; $5222: $9f
    ld d, d                                       ; $5223: $52
    ld b, $11                                     ; $5224: $06 $11
    db $db                                        ; $5226: $db
    sub a                                         ; $5227: $97
    ld e, $eb                                     ; $5228: $1e $eb
    ld h, [hl]                                    ; $522a: $66
    rst $38                                       ; $522b: $ff
    ld [hl+], a                                   ; $522c: $22
    sub $05                                       ; $522d: $d6 $05
    ld h, h                                       ; $522f: $64
    adc h                                         ; $5230: $8c
    sub h                                         ; $5231: $94
    ld de, $9f67                                  ; $5232: $11 $67 $9f
    db $10                                        ; $5235: $10
    call z, $a897                                 ; $5236: $cc $97 $a8
    dec a                                         ; $5239: $3d
    sub $3d                                       ; $523a: $d6 $3d
    ret nz                                        ; $523c: $c0

    pop de                                        ; $523d: $d1

jr_03f_523e:
    rst $20                                       ; $523e: $e7
    add d                                         ; $523f: $82
    ld l, a                                       ; $5240: $6f
    jr z, jr_03f_523e                             ; $5241: $28 $fb

    ld [bc], a                                    ; $5243: $02
    push hl                                       ; $5244: $e5
    jp nz, $c594                                  ; $5245: $c2 $94 $c5

    sub $73                                       ; $5248: $d6 $73
    db $dd                                        ; $524a: $dd
    ei                                            ; $524b: $fb
    jp nc, Jump_03f_5b50                          ; $524c: $d2 $50 $5b

    ld a, h                                       ; $524f: $7c
    ld e, l                                       ; $5250: $5d
    ld l, a                                       ; $5251: $6f
    ret                                           ; $5252: $c9


    ld a, [hl-]                                   ; $5253: $3a
    ld [hl], l                                    ; $5254: $75
    sbc [hl]                                      ; $5255: $9e
    dec sp                                        ; $5256: $3b
    ld e, e                                       ; $5257: $5b
    ld e, h                                       ; $5258: $5c
    cp a                                          ; $5259: $bf
    rst $10                                       ; $525a: $d7
    ld e, c                                       ; $525b: $59
    rst $10                                       ; $525c: $d7
    rst $20                                       ; $525d: $e7
    and c                                         ; $525e: $a1
    call nc, $fb9d                                ; $525f: $d4 $9d $fb
    ld [hl], l                                    ; $5262: $75
    ld l, d                                       ; $5263: $6a
    ld l, d                                       ; $5264: $6a
    ld c, a                                       ; $5265: $4f
    nop                                           ; $5266: $00
    ld a, l                                       ; $5267: $7d
    ld [hl], e                                    ; $5268: $73
    dec h                                         ; $5269: $25
    and a                                         ; $526a: $a7
    ld d, l                                       ; $526b: $55
    rst $28                                       ; $526c: $ef
    ei                                            ; $526d: $fb
    xor $6e                                       ; $526e: $ee $6e
    ld [hl], c                                    ; $5270: $71
    ld d, l                                       ; $5271: $55
    and a                                         ; $5272: $a7
    adc c                                         ; $5273: $89
    dec a                                         ; $5274: $3d
    ld bc, $0717                                  ; $5275: $01 $17 $07
    pop hl                                        ; $5278: $e1
    db $eb                                        ; $5279: $eb
    and [hl]                                      ; $527a: $a6
    adc c                                         ; $527b: $89
    dec hl                                        ; $527c: $2b
    cp c                                          ; $527d: $b9
    sbc d                                         ; $527e: $9a
    db $fd                                        ; $527f: $fd
    ld d, d                                       ; $5280: $52
    ld a, d                                       ; $5281: $7a
    inc l                                         ; $5282: $2c
    jr nc, jr_03f_52f6                            ; $5283: $30 $71

    ld b, [hl]                                    ; $5285: $46
    or d                                          ; $5286: $b2
    ld c, [hl]                                    ; $5287: $4e
    sbc l                                         ; $5288: $9d
    push bc                                       ; $5289: $c5
    ld [hl], c                                    ; $528a: $71
    ld h, $0b                                     ; $528b: $26 $0b
    adc l                                         ; $528d: $8d
    ld l, c                                       ; $528e: $69
    adc c                                         ; $528f: $89
    xor a                                         ; $5290: $af
    or e                                          ; $5291: $b3
    adc $7c                                       ; $5292: $ce $7c
    db $dd                                        ; $5294: $dd
    ld l, c                                       ; $5295: $69
    xor a                                         ; $5296: $af
    rst $30                                       ; $5297: $f7
    cp d                                          ; $5298: $ba
    ld e, l                                       ; $5299: $5d
    dec a                                         ; $529a: $3d
    push hl                                       ; $529b: $e5
    ld b, d                                       ; $529c: $42
    ld b, a                                       ; $529d: $47
    ld c, a                                       ; $529e: $4f
    ld e, h                                       ; $529f: $5c
    ldh a, [$0d]                                  ; $52a0: $f0 $0d
    ld h, l                                       ; $52a2: $65
    ld h, $eb                                     ; $52a3: $26 $eb
    ld c, [hl]                                    ; $52a5: $4e
    jp Jump_000_2d37                              ; $52a6: $c3 $37 $2d


    sub c                                         ; $52a9: $91
    ld a, [hl-]                                   ; $52aa: $3a
    rst $08                                       ; $52ab: $cf
    add hl, de                                    ; $52ac: $19
    ret                                           ; $52ad: $c9


    ld a, [hl-]                                   ; $52ae: $3a

jr_03f_52af:
    ld [hl], l                                    ; $52af: $75
    ld d, $c7                                     ; $52b0: $16 $c7
    add hl, de                                    ; $52b2: $19
    pop hl                                        ; $52b3: $e1
    db $e3                                        ; $52b4: $e3
    ld [$da87], a                                 ; $52b5: $ea $87 $da
    rst $30                                       ; $52b8: $f7
    nop                                           ; $52b9: $00
    add c                                         ; $52ba: $81
    adc [hl]                                      ; $52bb: $8e
    ld hl, sp-$55                                 ; $52bc: $f8 $ab
    reti                                          ; $52be: $d9


    cpl                                           ; $52bf: $2f
    ld h, l                                       ; $52c0: $65
    ld d, $c7                                     ; $52c1: $16 $c7
    push af                                       ; $52c3: $f5
    ld [hl], e                                    ; $52c4: $73
    ret nc                                        ; $52c5: $d0

    res 7, [hl]                                   ; $52c6: $cb $be
    ld c, h                                       ; $52c8: $4c
    or e                                          ; $52c9: $b3
    or h                                          ; $52ca: $b4
    ld hl, sp-$2e                                 ; $52cb: $f8 $d2
    ld a, [c]                                     ; $52cd: $f2
    ld e, [hl]                                    ; $52ce: $5e

jr_03f_52cf:
    cpl                                           ; $52cf: $2f
    adc h                                         ; $52d0: $8c
    call nc, Call_000_1669                        ; $52d1: $d4 $69 $16
    sbc e                                         ; $52d4: $9b
    ld e, a                                       ; $52d5: $5f
    ldh a, [$0d]                                  ; $52d6: $f0 $0d
    and l                                         ; $52d8: $a5
    db $e4                                        ; $52d9: $e4
    ld l, d                                       ; $52da: $6a
    ld h, a                                       ; $52db: $67
    add d                                         ; $52dc: $82
    ld a, c                                       ; $52dd: $79
    inc bc                                        ; $52de: $03
    ld a, l                                       ; $52df: $7d
    jr c, jr_03f_52af                             ; $52e0: $38 $cd

    adc [hl]                                      ; $52e2: $8e
    inc a                                         ; $52e3: $3c
    xor [hl]                                      ; $52e4: $ae
    halt                                          ; $52e5: $76
    ld h, $98                                     ; $52e6: $26 $98
    ld a, [hl-]                                   ; $52e8: $3a
    inc hl                                        ; $52e9: $23
    ld e, c                                       ; $52ea: $59
    and a                                         ; $52eb: $a7
    sbc $0b                                       ; $52ec: $de $0b
    and h                                         ; $52ee: $a4
    ret c                                         ; $52ef: $d8

    db $fc                                        ; $52f0: $fc
    inc e                                         ; $52f1: $1c
    ld l, $98                                     ; $52f2: $2e $98
    sbc b                                         ; $52f4: $98
    ld [hl-], a                                   ; $52f5: $32

jr_03f_52f6:
    rst $38                                       ; $52f6: $ff
    ld [de], a                                    ; $52f7: $12
    cp c                                          ; $52f8: $b9
    cpl                                           ; $52f9: $2f
    sub b                                         ; $52fa: $90
    jp Jump_03f_7bd4                              ; $52fb: $c3 $d4 $7b


    or $6f                                        ; $52fe: $f6 $6f
    sbc l                                         ; $5300: $9d
    ld [hl], c                                    ; $5301: $71
    rra                                           ; $5302: $1f
    dec h                                         ; $5303: $25
    ld h, a                                       ; $5304: $67
    or d                                          ; $5305: $b2
    ret nc                                        ; $5306: $d0

    sbc b                                         ; $5307: $98
    sub [hl]                                      ; $5308: $96
    ld c, b                                       ; $5309: $48
    sbc l                                         ; $530a: $9d
    ld l, a                                       ; $530b: $6f
    push de                                       ; $530c: $d5
    inc d                                         ; $530d: $14
    ld h, d                                       ; $530e: $62
    and h                                         ; $530f: $a4
    sbc $bb                                       ; $5310: $de $bb
    inc l                                         ; $5312: $2c
    db $eb                                        ; $5313: $eb
    add a                                         ; $5314: $87
    rst $08                                       ; $5315: $cf
    inc h                                         ; $5316: $24
    call nz, $9f95                                ; $5317: $c4 $95 $9f
    push bc                                       ; $531a: $c5

jr_03f_531b:
    ld [hl], c                                    ; $531b: $71
    ld d, $d7                                     ; $531c: $16 $d7
    jr z, jr_03f_52cf                             ; $531e: $28 $af

    dec bc                                        ; $5320: $0b
    ld e, a                                       ; $5321: $5f
    ld a, [hl]                                    ; $5322: $7e
    xor h                                         ; $5323: $ac
    ld b, e                                       ; $5324: $43
    or $7f                                        ; $5325: $f6 $7f
    cp c                                          ; $5327: $b9
    ld bc, $1a76                                  ; $5328: $01 $76 $1a
    ld a, a                                       ; $532b: $7f
    ld h, $0b                                     ; $532c: $26 $0b
    adc l                                         ; $532e: $8d
    ld l, c                                       ; $532f: $69
    or [hl]                                       ; $5330: $b6
    cp b                                          ; $5331: $b8
    ldh a, [$85]                                  ; $5332: $f0 $85
    add [hl]                                      ; $5334: $86
    ld l, e                                       ; $5335: $6b
    jr jr_03f_5361                                ; $5336: $18 $29

    call nc, $c8c7                                ; $5338: $d4 $c7 $c8
    dec de                                        ; $533b: $1b
    nop                                           ; $533c: $00
    ld a, l                                       ; $533d: $7d
    ld l, c                                       ; $533e: $69
    xor b                                         ; $533f: $a8
    dec l                                         ; $5340: $2d
    cp [hl]                                       ; $5341: $be
    ld [hl], h                                    ; $5342: $74
    jp hl                                         ; $5343: $e9


    ld a, h                                       ; $5344: $7c
    ld [$ea4c], a                                 ; $5345: $ea $4c $ea
    db $eb                                        ; $5348: $eb
    ld [$bd2e], a                                 ; $5349: $ea $2e $bd
    ld [hl], a                                    ; $534c: $77
    add hl, sp                                    ; $534d: $39
    cp $a8                                        ; $534e: $fe $a8
    ld [hl], e                                    ; $5350: $73
    cp b                                          ; $5351: $b8
    ld [hl], e                                    ; $5352: $73
    or e                                          ; $5353: $b3
    or h                                          ; $5354: $b4
    ld e, h                                       ; $5355: $5c
    sbc a                                         ; $5356: $9f
    add a                                         ; $5357: $87
    ld a, [de]                                    ; $5358: $1a
    ld a, h                                       ; $5359: $7c
    ld a, $d1                                     ; $535a: $3e $d1
    ld [hl], e                                    ; $535c: $73
    sub b                                         ; $535d: $90
    ld a, e                                       ; $535e: $7b
    pop af                                        ; $535f: $f1
    xor a                                         ; $5360: $af

jr_03f_5361:
    adc e                                         ; $5361: $8b
    ld l, [hl]                                    ; $5362: $6e
    ld h, $0b                                     ; $5363: $26 $0b
    adc l                                         ; $5365: $8d
    ld l, c                                       ; $5366: $69
    or [hl]                                       ; $5367: $b6
    jr c, @-$2f                                   ; $5368: $38 $cf

    add hl, de                                    ; $536a: $19
    ret                                           ; $536b: $c9


    ld a, [hl-]                                   ; $536c: $3a
    push af                                       ; $536d: $f5
    ld b, $17                                     ; $536e: $06 $17
    push hl                                       ; $5370: $e5
    ld [hl-], a                                   ; $5371: $32
    ld c, d                                       ; $5372: $4a
    adc $e2                                       ; $5373: $ce $e2
    jr c, jr_03f_531b                             ; $5375: $38 $a4

    and c                                         ; $5377: $a1
    or [hl]                                       ; $5378: $b6
    ld hl, sp+$3a                                 ; $5379: $f8 $3a
    ld [$ee1c], a                                 ; $537b: $ea $1c $ee
    call c, Call_000_2d2c                         ; $537e: $dc $2c $2d
    ld [hl], a                                    ; $5381: $77
    sbc c                                         ; $5382: $99
    or h                                          ; $5383: $b4
    or b                                          ; $5384: $b0
    inc [hl]                                      ; $5385: $34
    db $e3                                        ; $5386: $e3
    inc d                                         ; $5387: $14
    ld a, $9f                                     ; $5388: $3e $9f
    add sp, $39                                   ; $538a: $e8 $39
    ret z                                         ; $538c: $c8

    cp l                                          ; $538d: $bd
    ld hl, sp-$29                                 ; $538e: $f8 $d7
    sub l                                         ; $5390: $95
    rst $10                                       ; $5391: $d7
    sbc c                                         ; $5392: $99
    xor h                                         ; $5393: $ac
    dec sp                                        ; $5394: $3b
    dec c                                         ; $5395: $0d
    rst $18                                       ; $5396: $df
    or h                                          ; $5397: $b4
    ld b, h                                       ; $5398: $44
    ld [$673c], a                                 ; $5399: $ea $3c $67
    inc h                                         ; $539c: $24
    db $eb                                        ; $539d: $eb
    call nc, $dd7b                                ; $539e: $d4 $7b $dd
    ld l, $e3                                     ; $53a1: $2e $e3
    jp nz, $2f44                                  ; $53a3: $c2 $44 $2f

    ld d, l                                       ; $53a6: $55
    rst $20                                       ; $53a7: $e7
    ld [hl], b                                    ; $53a8: $70
    pop hl                                        ; $53a9: $e1
    srl h                                         ; $53aa: $cb $3c
    ld h, a                                       ; $53ac: $67
    or d                                          ; $53ad: $b2
    xor $34                                       ; $53ae: $ee $34
    ld a, h                                       ; $53b0: $7c
    db $d3                                        ; $53b1: $d3
    ld [de], a                                    ; $53b2: $12
    xor c                                         ; $53b3: $a9
    add e                                         ; $53b4: $83
    db $e4                                        ; $53b5: $e4
    ld h, e                                       ; $53b6: $63
    db $d3                                        ; $53b7: $d3
    ld e, $00                                     ; $53b8: $1e $00
    rst $20                                       ; $53ba: $e7
    ret                                           ; $53bb: $c9


    sbc e                                         ; $53bc: $9b
    or $0a                                        ; $53bd: $f6 $0a
    rra                                           ; $53bf: $1f
    add l                                         ; $53c0: $85
    cp d                                          ; $53c1: $ba
    jp c, $f759                                   ; $53c2: $da $59 $f7

    push af                                       ; $53c5: $f5
    ld [hl], a                                    ; $53c6: $77
    ld a, [bc]                                    ; $53c7: $0a
    ld l, a                                       ; $53c8: $6f
    nop                                           ; $53c9: $00
    halt                                          ; $53ca: $76
    ld l, b                                       ; $53cb: $68
    ld e, $e3                                     ; $53cc: $1e $e3
    ei                                            ; $53ce: $fb
    sbc h                                         ; $53cf: $9c
    rst $20                                       ; $53d0: $e7
    add d                                         ; $53d1: $82
    ld l, a                                       ; $53d2: $6f
    jr z, jr_03f_53fa                             ; $53d3: $28 $25

    rst $28                                       ; $53d5: $ef
    ld e, l                                       ; $53d6: $5d

jr_03f_53d7:
    sub b                                         ; $53d7: $90
    ldh a, [$75]                                  ; $53d8: $f0 $75
    or e                                          ; $53da: $b3
    cp $2a                                        ; $53db: $fe $2a
    sub h                                         ; $53dd: $94
    ld l, $9d                                     ; $53de: $2e $9d
    ld [hl], c                                    ; $53e0: $71
    adc a                                         ; $53e1: $8f
    ld a, $57                                     ; $53e2: $3e $57
    xor b                                         ; $53e4: $a8
    di                                            ; $53e5: $f3
    dec c                                         ; $53e6: $0d
    ld a, [$4afd]                                 ; $53e7: $fa $fd $4a
    ld [$b04c], a                                 ; $53ea: $ea $4c $b0
    sbc c                                         ; $53ed: $99
    call nc, Call_000_1c59                        ; $53ee: $d4 $59 $1c
    rla                                           ; $53f1: $17
    db $e4                                        ; $53f2: $e4
    sbc $ea                                       ; $53f3: $de $ea
    db $fc                                        ; $53f5: $fc
    ei                                            ; $53f6: $fb

jr_03f_53f7:
    call c, $fecf                                 ; $53f7: $dc $cf $fe

jr_03f_53fa:
    ld b, l                                       ; $53fa: $45
    xor h                                         ; $53fb: $ac
    dec bc                                        ; $53fc: $0b
    ret z                                         ; $53fd: $c8

    jr jr_03f_5429                                ; $53fe: $18 $29

    dec a                                         ; $5400: $3d
    nop                                           ; $5401: $00
    db $dd                                        ; $5402: $dd
    db $ec                                        ; $5403: $ec
    inc [hl]                                      ; $5404: $34
    and h                                         ; $5405: $a4
    db $e4                                        ; $5406: $e4
    inc l                                         ; $5407: $2c
    adc [hl]                                      ; $5408: $8e
    adc e                                         ; $5409: $8b
    inc e                                         ; $540a: $1c
    db $e4                                        ; $540b: $e4
    inc [hl]                                      ; $540c: $34
    ld [de], a                                    ; $540d: $12
    ld d, a                                       ; $540e: $57
    ld d, d                                       ; $540f: $52
    ld h, a                                       ; $5410: $67
    inc h                                         ; $5411: $24
    db $eb                                        ; $5412: $eb
    call nc, $eb1e                                ; $5413: $d4 $1e $eb
    sub $37                                       ; $5416: $d6 $37
    ld [hl], l                                    ; $5418: $75
    dec d                                         ; $5419: $15
    sub $a9                                       ; $541a: $d6 $a9
    inc hl                                        ; $541c: $23
    adc $3e                                       ; $541d: $ce $3e
    ld hl, $2f98                                  ; $541f: $21 $98 $2f
    ld d, c                                       ; $5422: $51
    ld a, e                                       ; $5423: $7b
    nop                                           ; $5424: $00
    add c                                         ; $5425: $81
    sub h                                         ; $5426: $94
    xor [hl]                                      ; $5427: $ae
    push de                                       ; $5428: $d5

jr_03f_5429:
    db $ec                                        ; $5429: $ec
    sub a                                         ; $542a: $97
    ld [hl-], a                                   ; $542b: $32
    adc e                                         ; $542c: $8b
    db $e3                                        ; $542d: $e3
    jr nc, jr_03f_53d7                            ; $542e: $30 $a7

    xor [hl]                                      ; $5430: $ae
    di                                            ; $5431: $f3
    ei                                            ; $5432: $fb
    and b                                         ; $5433: $a0
    call $a45e                                    ; $5434: $cd $5e $a4
    ld [hl], l                                    ; $5437: $75
    ld a, [hl]                                    ; $5438: $7e
    add hl, sp                                    ; $5439: $39
    ld a, e                                       ; $543a: $7b
    ld c, d                                       ; $543b: $4a
    db $dd                                        ; $543c: $dd
    ld [de], a                                    ; $543d: $12
    cp c                                          ; $543e: $b9
    sbc d                                         ; $543f: $9a
    inc sp                                        ; $5440: $33
    pop bc                                        ; $5441: $c1
    ld d, [hl]                                    ; $5442: $56
    jp z, $d74b                                   ; $5443: $ca $4b $d7

Jump_03f_5446:
    dec c                                         ; $5446: $0d
    nop                                           ; $5447: $00
    add a                                         ; $5448: $87
    ld e, [hl]                                    ; $5449: $5e
    ld b, c                                       ; $544a: $41
    adc h                                         ; $544b: $8c
    ccf                                           ; $544c: $3f
    rst $08                                       ; $544d: $cf
    ld h, l                                       ; $544e: $65
    and a                                         ; $544f: $a7
    rra                                           ; $5450: $1f
    ld h, e                                       ; $5451: $63
    ld [$a17e], a                                 ; $5452: $ea $7e $a1
    ret nc                                        ; $5455: $d0

    or h                                          ; $5456: $b4
    call nc, $f7c9                                ; $5457: $d4 $c9 $f7
    ld c, a                                       ; $545a: $4f
    db $fc                                        ; $545b: $fc
    ld c, [hl]                                    ; $545c: $4e
    and c                                         ; $545d: $a1
    adc [hl]                                      ; $545e: $8e
    jr c, jr_03f_53f7                             ; $545f: $38 $96

    push af                                       ; $5461: $f5
    ld l, $ae                                     ; $5462: $2e $ae
    inc sp                                        ; $5464: $33
    rst $08                                       ; $5465: $cf
    push af                                       ; $5466: $f5
    sub [hl]                                      ; $5467: $96
    xor h                                         ; $5468: $ac
    ld d, e                                       ; $5469: $53
    rst $28                                       ; $546a: $ef
    push af                                       ; $546b: $f5
    call $f679                                    ; $546c: $cd $79 $f6
    and e                                         ; $546f: $a3
    ld l, $7c                                     ; $5470: $2e $7c
    ld a, l                                       ; $5472: $7d
    ld e, c                                       ; $5473: $59
    ld sp, hl                                     ; $5474: $f9
    ld h, l                                       ; $5475: $65
    sbc b                                         ; $5476: $98
    ld [de], a                                    ; $5477: $12
    dec e                                         ; $5478: $1d
    ld [hl], $ff                                  ; $5479: $36 $ff
    cp $de                                        ; $547b: $fe $de
    cp c                                          ; $547d: $b9
    ld c, l                                       ; $547e: $4d
    ld [$79f7], a                                 ; $547f: $ea $f7 $79
    ld [$15ce], a                                 ; $5482: $ea $ce $15
    ld a, [$7759]                                 ; $5485: $fa $59 $77
    ld e, $53                                     ; $5488: $1e $53
    jr nz, jr_03f_54aa                            ; $548a: $20 $1e

    ld a, [bc]                                    ; $548c: $0a
    nop                                           ; $548d: $00
    halt                                          ; $548e: $76
    and l                                         ; $548f: $a5
    ld b, c                                       ; $5490: $41
    ld e, h                                       ; $5491: $5c
    ld [hl], h                                    ; $5492: $74
    inc sp                                        ; $5493: $33
    ld e, c                                       ; $5494: $59
    ld l, b                                       ; $5495: $68
    ld c, h                                       ; $5496: $4c
    or e                                          ; $5497: $b3
    push bc                                       ; $5498: $c5
    dec de                                        ; $5499: $1b

jr_03f_549a:
    nop                                           ; $549a: $00
    cp l                                          ; $549b: $bd
    or e                                          ; $549c: $b3
    ret nc                                        ; $549d: $d0

    sbc b                                         ; $549e: $98
    ld h, [hl]                                    ; $549f: $66
    adc e                                         ; $54a0: $8b
    dec sp                                        ; $54a1: $3b
    db $f4                                        ; $54a2: $f4
    ld [bc], a                                    ; $54a3: $02
    and a                                         ; $54a4: $a7
    pop de                                        ; $54a5: $d1
    jp hl                                         ; $54a6: $e9


    ld [bc], a                                    ; $54a7: $02
    ld e, d                                       ; $54a8: $5a
    add hl, hl                                    ; $54a9: $29

jr_03f_54aa:
    dec c                                         ; $54aa: $0d
    ld h, [hl]                                    ; $54ab: $66
    inc sp                                        ; $54ac: $33
    jr nc, jr_03f_54b9                            ; $54ad: $30 $0a

    rrca                                          ; $54af: $0f
    dec b                                         ; $54b0: $05
    cp l                                          ; $54b1: $bd
    or e                                          ; $54b2: $b3
    ret nc                                        ; $54b3: $d0

    sbc b                                         ; $54b4: $98
    ld h, [hl]                                    ; $54b5: $66
    adc e                                         ; $54b6: $8b
    dec sp                                        ; $54b7: $3b
    db $f4                                        ; $54b8: $f4

jr_03f_54b9:
    inc a                                         ; $54b9: $3c
    ld d, a                                       ; $54ba: $57
    ld c, d                                       ; $54bb: $4a
    xor e                                         ; $54bc: $ab
    ld d, b                                       ; $54bd: $50
    ld d, $90                                     ; $54be: $16 $90
    jr nc, jr_03f_549a                            ; $54c0: $30 $d8

    or c                                          ; $54c2: $b1
    ld e, $0a                                     ; $54c3: $1e $0a
    nop                                           ; $54c5: $00
    cp l                                          ; $54c6: $bd
    or e                                          ; $54c7: $b3
    ret nc                                        ; $54c8: $d0

    sbc b                                         ; $54c9: $98
    ld h, [hl]                                    ; $54ca: $66
    adc e                                         ; $54cb: $8b
    dec sp                                        ; $54cc: $3b
    db $f4                                        ; $54cd: $f4
    inc a                                         ; $54ce: $3c
    ld hl, $6294                                  ; $54cf: $21 $94 $62
    ld e, l                                       ; $54d2: $5d
    ld h, b                                       ; $54d3: $60
    db $fd                                        ; $54d4: $fd
    ld d, d                                       ; $54d5: $52
    ld e, e                                       ; $54d6: $5b
    rrca                                          ; $54d7: $0f
    dec b                                         ; $54d8: $05
    cp l                                          ; $54d9: $bd
    or e                                          ; $54da: $b3
    ret nc                                        ; $54db: $d0

    sbc b                                         ; $54dc: $98
    ld h, [hl]                                    ; $54dd: $66
    adc e                                         ; $54de: $8b
    dec sp                                        ; $54df: $3b
    or h                                          ; $54e0: $b4
    rrca                                          ; $54e1: $0f
    dec b                                         ; $54e2: $05
    and [hl]                                      ; $54e3: $a6
    dec d                                         ; $54e4: $15
    rst $00                                       ; $54e5: $c7
    or d                                          ; $54e6: $b2
    ld a, $5f                                     ; $54e7: $3e $5f
    sbc d                                         ; $54e9: $9a
    ld l, c                                       ; $54ea: $69
    xor c                                         ; $54eb: $a9
    ld a, c                                       ; $54ec: $79
    jr z, jr_03f_54ef                             ; $54ed: $28 $00

jr_03f_54ef:
    db $dd                                        ; $54ef: $dd
    cpl                                           ; $54f0: $2f
    ld [hl], c                                    ; $54f1: $71
    ld d, l                                       ; $54f2: $55
    rla                                           ; $54f3: $17
    ld a, h                                       ; $54f4: $7c
    db $eb                                        ; $54f5: $eb
    inc a                                         ; $54f6: $3c
    ld d, a                                       ; $54f7: $57
    ld d, d                                       ; $54f8: $52
    ld h, a                                       ; $54f9: $67
    or d                                          ; $54fa: $b2
    call nc, $94ad                                ; $54fb: $d4 $ad $94
    call nc, Call_03f_4e79                        ; $54fe: $d4 $79 $4e
    add hl, hl                                    ; $5501: $29
    ld h, c                                       ; $5502: $61
    inc hl                                        ; $5503: $23
    ld b, [hl]                                    ; $5504: $46
    or $5c                                        ; $5505: $f6 $5c
    rst $30                                       ; $5507: $f7
    ret nz                                        ; $5508: $c0

    rst $28                                       ; $5509: $ef
    ld d, b                                       ; $550a: $50
    rst $30                                       ; $550b: $f7
    dec b                                         ; $550c: $05
    jp z, Jump_03f_7669                           ; $550d: $ca $69 $76

    add h                                         ; $5510: $84
    ld h, e                                       ; $5511: $63
    add hl, hl                                    ; $5512: $29
    xor c                                         ; $5513: $a9
    dec a                                         ; $5514: $3d
    ld bc, $3b67                                  ; $5515: $01 $67 $3b
    ld h, d                                       ; $5518: $62
    jp nz, Jump_03f_7e57                          ; $5519: $c2 $57 $7e

    and c                                         ; $551c: $a1
    ld h, h                                       ; $551d: $64
    dec [hl]                                      ; $551e: $35
    dec [hl]                                      ; $551f: $35
    push hl                                       ; $5520: $e5
    rla                                           ; $5521: $17
    jr jr_03f_556e                                ; $5522: $18 $4a

    cp d                                          ; $5524: $ba
    cp b                                          ; $5525: $b8
    sub d                                         ; $5526: $92
    and e                                         ; $5527: $a3
    add $ef                                       ; $5528: $c6 $ef
    db $fc                                        ; $552a: $fc
    jp nz, Jump_03f_47d7                          ; $552b: $c2 $d7 $47

    sbc a                                         ; $552e: $9f
    xor e                                         ; $552f: $ab
    cp a                                          ; $5530: $bf
    adc h                                         ; $5531: $8c
    cp b                                          ; $5532: $b8
    sub d                                         ; $5533: $92
    cp d                                          ; $5534: $ba
    add [hl]                                      ; $5535: $86
    dec d                                         ; $5536: $15
    ld a, [bc]                                    ; $5537: $0a
    cp [hl]                                       ; $5538: $be
    and a                                         ; $5539: $a7
    and h                                         ; $553a: $a4
    adc [hl]                                      ; $553b: $8e
    ld a, [de]                                    ; $553c: $1a
    ld a, $c6                                     ; $553d: $3e $c6
    ld b, a                                       ; $553f: $47
    sbc a                                         ; $5540: $9f
    ei                                            ; $5541: $fb
    ld a, l                                       ; $5542: $7d
    add c                                         ; $5543: $81
    inc e                                         ; $5544: $1c
    cp [hl]                                       ; $5545: $be
    ld c, [hl]                                    ; $5546: $4e
    add hl, hl                                    ; $5547: $29
    ld h, c                                       ; $5548: $61
    inc hl                                        ; $5549: $23
    ld b, [hl]                                    ; $554a: $46
    ld [$40bd], a                                 ; $554b: $ea $bd $40
    ld b, d                                       ; $554e: $42
    ld c, [hl]                                    ; $554f: $4e
    ld [hl], d                                    ; $5550: $72
    ld d, $c7                                     ; $5551: $16 $c7
    add hl, hl                                    ; $5553: $29
    rla                                           ; $5554: $17
    ld a, h                                       ; $5555: $7c
    sbc h                                         ; $5556: $9c
    ld h, a                                       ; $5557: $67
    cp a                                          ; $5558: $bf
    rst $30                                       ; $5559: $f7
    cp c                                          ; $555a: $b9
    cpl                                           ; $555b: $2f
    ret nc                                        ; $555c: $d0

    ld bc, $9338                                  ; $555d: $01 $38 $93
    and l                                         ; $5560: $a5
    ld l, [hl]                                    ; $5561: $6e
    and l                                         ; $5562: $a5
    db $e4                                        ; $5563: $e4
    dec c                                         ; $5564: $0d
    nop                                           ; $5565: $00
    rst $20                                       ; $5566: $e7
    ret                                           ; $5567: $c9


    sbc e                                         ; $5568: $9b
    or $0a                                        ; $5569: $f6 $0a
    sbc a                                         ; $556b: $9f
    db $fd                                        ; $556c: $fd
    ld b, e                                       ; $556d: $43

jr_03f_556e:
    jp nc, Jump_000_0dfc                          ; $556e: $d2 $fc $0d

    nop                                           ; $5571: $00
    rst $20                                       ; $5572: $e7
    ld [hl], b                                    ; $5573: $70
    ld hl, sp-$02                                 ; $5574: $f8 $fe
    rst $28                                       ; $5576: $ef
    ld e, l                                       ; $5577: $5d
    add $bd                                       ; $5578: $c6 $bd
    push de                                       ; $557a: $d5
    ld sp, hl                                     ; $557b: $f9
    rla                                           ; $557c: $17
    sbc e                                         ; $557d: $9b
    rst $18                                       ; $557e: $df
    xor a                                         ; $557f: $af
    db $e3                                        ; $5580: $e3
    call nc, $2cbc                                ; $5581: $d4 $bc $2c
    and h                                         ; $5584: $a4
    db $e4                                        ; $5585: $e4
    add d                                         ; $5586: $82
    inc e                                         ; $5587: $1c
    dec [hl]                                      ; $5588: $35
    cp [hl]                                       ; $5589: $be
    rst $08                                       ; $558a: $cf
    ld d, l                                       ; $558b: $55
    cp e                                          ; $558c: $bb
    cp d                                          ; $558d: $ba
    ld b, c                                       ; $558e: $41
    adc a                                         ; $558f: $8f
    ld a, $47                                     ; $5590: $3e $47
    dec [hl]                                      ; $5592: $35
    cpl                                           ; $5593: $2f
    rst $18                                       ; $5594: $df
    ld sp, hl                                     ; $5595: $f9
    ld a, [hl]                                    ; $5596: $7e
    xor c                                         ; $5597: $a9
    or e                                          ; $5598: $b3
    xor $83                                       ; $5599: $ee $83
    add hl, hl                                    ; $559b: $29
    ccf                                           ; $559c: $3f
    and h                                         ; $559d: $a4
    and c                                         ; $559e: $a1
    or [hl]                                       ; $559f: $b6
    sbc b                                         ; $55a0: $98
    ld [hl], e                                    ; $55a1: $73
    jr c, jr_03f_55f3                             ; $55a2: $38 $4f

    dec [hl]                                      ; $55a4: $35
    adc a                                         ; $55a5: $8f
    sbc d                                         ; $55a6: $9a
    scf                                           ; $55a7: $37
    nop                                           ; $55a8: $00
    or $59                                        ; $55a9: $f6 $59
    ld e, $be                                     ; $55ab: $1e $be
    ld d, b                                       ; $55ad: $50
    or d                                          ; $55ae: $b2
    sbc d                                         ; $55af: $9a
    sbc d                                         ; $55b0: $9a
    ld a, [c]                                     ; $55b1: $f2
    dec bc                                        ; $55b2: $0b
    inc c                                         ; $55b3: $0c
    dec h                                         ; $55b4: $25
    ld e, l                                       ; $55b5: $5d
    cp h                                          ; $55b6: $bc
    ld bc, $59f6                                  ; $55b7: $01 $f6 $59
    ld e, $3e                                     ; $55ba: $1e $3e
    ei                                            ; $55bc: $fb
    rla                                           ; $55bd: $17
    or c                                          ; $55be: $b1
    jp nz, $ddd7                                  ; $55bf: $c2 $d7 $dd

    ld [c], a                                     ; $55c2: $e2
    xor d                                         ; $55c3: $aa
    ld l, $72                                     ; $55c4: $2e $72
    ld d, c                                       ; $55c6: $51
    sbc [hl]                                      ; $55c7: $9e
    dec bc                                        ; $55c8: $0b
    ld d, e                                       ; $55c9: $53
    or $16                                        ; $55ca: $f6 $16
    ld h, a                                       ; $55cc: $67
    db $d3                                        ; $55cd: $d3
    inc de                                        ; $55ce: $13
    nop                                           ; $55cf: $00
    halt                                          ; $55d0: $76
    ld h, l                                       ; $55d1: $65
    and c                                         ; $55d2: $a1
    ld h, h                                       ; $55d3: $64
    dec [hl]                                      ; $55d4: $35
    dec [hl]                                      ; $55d5: $35
    ld h, l                                       ; $55d6: $65
    add c                                         ; $55d7: $81
    ld hl, sp+$21                                 ; $55d8: $f8 $21
    ld d, a                                       ; $55da: $57
    ld [hl], e                                    ; $55db: $73
    pop bc                                        ; $55dc: $c1
    ld e, a                                       ; $55dd: $5f
    db $fd                                        ; $55de: $fd
    add sp, -$21                                  ; $55df: $e8 $df
    rst $20                                       ; $55e1: $e7
    ld a, [hl]                                    ; $55e2: $7e
    dec e                                         ; $55e3: $1d
    and a                                         ; $55e4: $a7
    and $65                                       ; $55e5: $e6 $65
    ld h, $4b                                     ; $55e7: $26 $4b
    db $dd                                        ; $55e9: $dd
    ld c, d                                       ; $55ea: $4a
    ld c, c                                       ; $55eb: $49
    sbc l                                         ; $55ec: $9d
    rst $20                                       ; $55ed: $e7
    sub h                                         ; $55ee: $94
    ld [de], a                                    ; $55ef: $12
    ld [hl], $62                                  ; $55f0: $36 $62
    db $e4                                        ; $55f2: $e4

jr_03f_55f3:
    xor h                                         ; $55f3: $ac
    or e                                          ; $55f4: $b3
    ld a, a                                       ; $55f5: $7f
    ld c, b                                       ; $55f6: $48
    sbc d                                         ; $55f7: $9a
    ld e, a                                       ; $55f8: $5f
    call $d6f9                                    ; $55f9: $cd $f9 $d6
    cpl                                           ; $55fc: $2f
    ld h, a                                       ; $55fd: $67
    ld [hl], c                                    ; $55fe: $71
    ld e, h                                       ; $55ff: $5c
    ld c, c                                       ; $5600: $49
    dec e                                         ; $5601: $1d
    pop de                                        ; $5602: $d1
    inc h                                         ; $5603: $24
    ld b, [hl]                                    ; $5604: $46
    ld a, c                                       ; $5605: $79
    or c                                          ; $5606: $b1
    ld sp, hl                                     ; $5607: $f9
    add l                                         ; $5608: $85
    add hl, hl                                    ; $5609: $29
    ld a, e                                       ; $560a: $7b
    adc e                                         ; $560b: $8b
    or e                                          ; $560c: $b3
    cp c                                          ; $560d: $b9
    ld bc, $cbbd                                  ; $560e: $01 $bd $cb
    ld c, e                                       ; $5611: $4b
    adc $e2                                       ; $5612: $ce $e2
    jr c, @-$49                                   ; $5614: $38 $b5

    cp c                                          ; $5616: $b9
    rst $28                                       ; $5617: $ef
    db $db                                        ; $5618: $db
    cp d                                          ; $5619: $ba
    ld e, a                                       ; $561a: $5f
    ld a, c                                       ; $561b: $79
    sbc l                                         ; $561c: $9d
    ld d, d                                       ; $561d: $52
    jp nz, $8c46                                  ; $561e: $c2 $46 $8c

    call nc, Call_000_1c59                        ; $5621: $d4 $59 $1c
    ld d, a                                       ; $5624: $57
    ld d, d                                       ; $5625: $52
    ld d, a                                       ; $5626: $57
    ld a, [bc]                                    ; $5627: $0a
    dec hl                                        ; $5628: $2b
    adc a                                         ; $5629: $8f
    adc e                                         ; $562a: $8b
    ld e, a                                       ; $562b: $5f
    ld [hl], a                                    ; $562c: $77
    ld e, d                                       ; $562d: $5a
    ld d, l                                       ; $562e: $55
    cp h                                          ; $562f: $bc
    ld bc, $2fdd                                  ; $5630: $01 $dd $2f
    ld [c], a                                     ; $5633: $e2
    ld e, d                                       ; $5634: $5a
    dec e                                         ; $5635: $1d
    and [hl]                                      ; $5636: $a6
    call nz, $b69f                                ; $5637: $c4 $9f $b6
    ld [hl], l                                    ; $563a: $75
    sbc h                                         ; $563b: $9c
    sbc d                                         ; $563c: $9a
    sbc h                                         ; $563d: $9c
    jp Jump_03f_6985                              ; $563e: $c3 $85 $69


    or d                                          ; $5641: $b2
    daa                                           ; $5642: $27
    nop                                           ; $5643: $00
    or $df                                        ; $5644: $f6 $df
    ld a, a                                       ; $5646: $7f
    dec h                                         ; $5647: $25
    ld h, a                                       ; $5648: $67
    ld [hl], c                                    ; $5649: $71
    sbc h                                         ; $564a: $9c
    push bc                                       ; $564b: $c5
    dec [hl]                                      ; $564c: $35
    jp z, Jump_03f_7c2b                           ; $564d: $ca $2b $7c

    ld hl, $1725                                  ; $5650: $21 $25 $17
    adc c                                         ; $5653: $89
    inc sp                                        ; $5654: $33
    xor [hl]                                      ; $5655: $ae
    ld sp, hl                                     ; $5656: $f9
    rst $30                                       ; $5657: $f7
    ld a, c                                       ; $5658: $79
    inc bc                                        ; $5659: $03
    halt                                          ; $565a: $76
    or b                                          ; $565b: $b0
    inc c                                         ; $565c: $0c
    dec bc                                        ; $565d: $0b
    ld sp, $5172                                  ; $565e: $31 $72 $51
    cp [hl]                                       ; $5661: $be
    di                                            ; $5662: $f3
    db $fd                                        ; $5663: $fd
    ld [de], a                                    ; $5664: $12
    ld a, $fb                                     ; $5665: $3e $fb
    rla                                           ; $5667: $17
    or c                                          ; $5668: $b1
    sbc $bb                                       ; $5669: $de $bb
    adc h                                         ; $566b: $8c
    di                                            ; $566c: $f3
    ld l, c                                       ; $566d: $69
    db $dd                                        ; $566e: $dd
    ld sp, $1d0b                                  ; $566f: $31 $0b $1d
    add $5c                                       ; $5672: $c6 $5c
    sbc b                                         ; $5674: $98
    ld [hl-], a                                   ; $5675: $32
    sub e                                         ; $5676: $93
    jr jr_03f_569e                                ; $5677: $18 $25

    srl h                                         ; $5679: $cb $3c
    rla                                           ; $567b: $17
    sub [hl]                                      ; $567c: $96
    add a                                         ; $567d: $87
    ld e, [hl]                                    ; $567e: $5e
    ld l, a                                       ; $567f: $6f
    nop                                           ; $5680: $00
    ld h, a                                       ; $5681: $67
    scf                                           ; $5682: $37
    ld [hl+], a                                   ; $5683: $22
    ld a, h                                       ; $5684: $7c
    ld l, a                                       ; $5685: $6f
    ld [hl], c                                    ; $5686: $71
    ld [hl], $a3                                  ; $5687: $36 $a3
    add $2e                                       ; $5689: $c6 $2e
    ld e, h                                       ; $568b: $5c
    ld c, c                                       ; $568c: $49
    sbc l                                         ; $568d: $9d
    ret                                           ; $568e: $c9


    ld d, d                                       ; $568f: $52
    or a                                          ; $5690: $b7
    ld d, d                                       ; $5691: $52
    ld d, d                                       ; $5692: $52
    rst $20                                       ; $5693: $e7
    add hl, sp                                    ; $5694: $39
    and l                                         ; $5695: $a5
    add h                                         ; $5696: $84
    adc l                                         ; $5697: $8d
    jr jr_03f_56d3                                ; $5698: $18 $39

    adc e                                         ; $569a: $8b
    db $e3                                        ; $569b: $e3
    sub b                                         ; $569c: $90
    add [hl]                                      ; $569d: $86

jr_03f_569e:
    jp c, $de62                                   ; $569e: $da $62 $de

    nop                                           ; $56a1: $00
    cp l                                          ; $56a2: $bd
    call nc, $1666                                ; $56a3: $d4 $66 $16
    rst $00                                       ; $56a6: $c7
    ld d, c                                       ; $56a7: $51
    ld h, e                                       ; $56a8: $63
    adc [hl]                                      ; $56a9: $8e
    ld a, [hl-]                                   ; $56aa: $3a
    ld l, a                                       ; $56ab: $6f
    ld h, e                                       ; $56ac: $63
    ld [c], a                                     ; $56ad: $e2
    rst $10                                       ; $56ae: $d7
    ld a, c                                       ; $56af: $79
    inc bc                                        ; $56b0: $03
    ld h, a                                       ; $56b1: $67
    scf                                           ; $56b2: $37
    ld [hl+], a                                   ; $56b3: $22
    ld a, h                                       ; $56b4: $7c
    ld [hl], l                                    ; $56b5: $75
    sub a                                         ; $56b6: $97
    adc $db                                       ; $56b7: $ce $db
    sbc b                                         ; $56b9: $98
    ld hl, sp+$75                                 ; $56ba: $f8 $75
    sbc $00                                       ; $56bc: $de $00
    ld a, l                                       ; $56be: $7d
    dec e                                         ; $56bf: $1d
    sbc d                                         ; $56c0: $9a
    ld e, a                                       ; $56c1: $5f
    ldh a, [$ad]                                  ; $56c2: $f0 $ad

jr_03f_56c4:
    di                                            ; $56c4: $f3
    xor h                                         ; $56c5: $ac
    ld e, a                                       ; $56c6: $5f
    db $db                                        ; $56c7: $db
    ei                                            ; $56c8: $fb
    sbc h                                         ; $56c9: $9c
    or a                                          ; $56ca: $b7
    ld sp, $ebf1                                  ; $56cb: $31 $f1 $eb
    cp h                                          ; $56ce: $bc
    ld bc, $82bd                                  ; $56cf: $01 $bd $82
    add hl, hl                                    ; $56d2: $29

jr_03f_56d3:
    ccf                                           ; $56d3: $3f
    db $eb                                        ; $56d4: $eb
    cpl                                           ; $56d5: $2f
    ld [de], a                                    ; $56d6: $12
    and c                                         ; $56d7: $a1
    ld e, h                                       ; $56d8: $5c
    db $ed                                        ; $56d9: $ed
    ld c, h                                       ; $56da: $4c
    jr nc, jr_03f_56c4                            ; $56db: $30 $e7

    ld l, l                                       ; $56dd: $6d
    ld c, h                                       ; $56de: $4c
    db $fc                                        ; $56df: $fc
    ld a, [hl-]                                   ; $56e0: $3a
    ld l, a                                       ; $56e1: $6f
    nop                                           ; $56e2: $00
    halt                                          ; $56e3: $76
    cp d                                          ; $56e4: $ba
    scf                                           ; $56e5: $37
    or [hl]                                       ; $56e6: $b6
    ret c                                         ; $56e7: $d8

    ld h, d                                       ; $56e8: $62
    sbc $00                                       ; $56e9: $de $00
    ld h, a                                       ; $56eb: $67
    scf                                           ; $56ec: $37
    ld [hl+], a                                   ; $56ed: $22
    ld a, h                                       ; $56ee: $7c
    ld [hl], l                                    ; $56ef: $75
    sub a                                         ; $56f0: $97
    xor $8d                                       ; $56f1: $ee $8d
    dec l                                         ; $56f3: $2d
    or [hl]                                       ; $56f4: $b6
    sbc b                                         ; $56f5: $98
    scf                                           ; $56f6: $37
    nop                                           ; $56f7: $00
    ld a, l                                       ; $56f8: $7d
    dec e                                         ; $56f9: $1d
    sbc d                                         ; $56fa: $9a
    ld e, a                                       ; $56fb: $5f
    ldh a, [$ad]                                  ; $56fc: $f0 $ad
    di                                            ; $56fe: $f3
    xor h                                         ; $56ff: $ac
    ld e, a                                       ; $5700: $5f
    db $db                                        ; $5701: $db
    ei                                            ; $5702: $fb
    call c, Call_03f_5b1b                         ; $5703: $dc $1b $5b
    ld l, h                                       ; $5706: $6c
    ld sp, $006f                                  ; $5707: $31 $6f $00
    cp l                                          ; $570a: $bd
    add d                                         ; $570b: $82
    add hl, hl                                    ; $570c: $29
    ccf                                           ; $570d: $3f

jr_03f_570e:
    db $eb                                        ; $570e: $eb
    cpl                                           ; $570f: $2f
    ld [de], a                                    ; $5710: $12

Call_03f_5711:
    and c                                         ; $5711: $a1
    ld e, h                                       ; $5712: $5c
    db $ed                                        ; $5713: $ed
    ld c, h                                       ; $5714: $4c
    jr nc, jr_03f_570e                            ; $5715: $30 $f7

    add $16                                       ; $5717: $c6 $16
    ld e, e                                       ; $5719: $5b
    call z, $001b                                 ; $571a: $cc $1b $00
    ld a, l                                       ; $571d: $7d
    dec e                                         ; $571e: $1d
    sbc d                                         ; $571f: $9a
    ld e, a                                       ; $5720: $5f
    ldh a, [$ad]                                  ; $5721: $f0 $ad
    di                                            ; $5723: $f3
    xor h                                         ; $5724: $ac
    ld e, a                                       ; $5725: $5f
    db $db                                        ; $5726: $db
    ei                                            ; $5727: $fb
    call c, $87e3                                 ; $5728: $dc $e3 $87
    inc l                                         ; $572b: $2c
    ld a, c                                       ; $572c: $79
    inc bc                                        ; $572d: $03
    ld h, a                                       ; $572e: $67
    scf                                           ; $572f: $37
    ld [hl+], a                                   ; $5730: $22
    ld a, h                                       ; $5731: $7c
    ld [hl], l                                    ; $5732: $75
    sub a                                         ; $5733: $97
    xor $f1                                       ; $5734: $ee $f1
    ld b, e                                       ; $5736: $43
    sub [hl]                                      ; $5737: $96
    cp h                                          ; $5738: $bc
    ld bc, $82bd                                  ; $5739: $01 $bd $82
    add hl, hl                                    ; $573c: $29
    ccf                                           ; $573d: $3f

jr_03f_573e:
    db $eb                                        ; $573e: $eb
    cpl                                           ; $573f: $2f
    ld [de], a                                    ; $5740: $12
    and c                                         ; $5741: $a1
    ld e, h                                       ; $5742: $5c
    db $ed                                        ; $5743: $ed
    ld c, h                                       ; $5744: $4c
    jr nc, jr_03f_573e                            ; $5745: $30 $f7

    ld hl, sp+$21                                 ; $5747: $f8 $21
    ld c, e                                       ; $5749: $4b
    sbc $00                                       ; $574a: $de $00
    rla                                           ; $574c: $17
    ld c, e                                       ; $574d: $4b
    ld l, h                                       ; $574e: $6c
    ret nc                                        ; $574f: $d0

    db $eb                                        ; $5750: $eb
    dec a                                         ; $5751: $3d
    cp e                                          ; $5752: $bb
    or d                                          ; $5753: $b2
    ld a, [hl]                                    ; $5754: $7e
    cpl                                           ; $5755: $2f
    sbc $06                                       ; $5756: $de $06
    rst $20                                       ; $5758: $e7
    cp c                                          ; $5759: $b9
    sub d                                         ; $575a: $92
    cp d                                          ; $575b: $ba
    ld [hl], e                                    ; $575c: $73
    sbc h                                         ; $575d: $9c
    ld l, b                                       ; $575e: $68
    and c                                         ; $575f: $a1
    ld [hl], l                                    ; $5760: $75
    call nc, $9df8                                ; $5761: $d4 $f8 $9d
    ld e, a                                       ; $5764: $5f
    add hl, hl                                    ; $5765: $29
    call nz, $01bc                                ; $5766: $c4 $bc $01
    ld h, a                                       ; $5769: $67
    scf                                           ; $576a: $37
    ld [hl+], a                                   ; $576b: $22
    ld a, h                                       ; $576c: $7c
    ld [hl], l                                    ; $576d: $75
    sub a                                         ; $576e: $97
    ld l, $25                                     ; $576f: $2e $25
    ld [hl], $e8                                  ; $5771: $36 $e8
    push af                                       ; $5773: $f5
    ld b, $76                                     ; $5774: $06 $76
    ld h, l                                       ; $5776: $65
    and l                                         ; $5777: $a5
    ld [hl], l                                    ; $5778: $75
    inc h                                         ; $5779: $24
    rst $20                                       ; $577a: $e7
    sbc e                                         ; $577b: $9b
    pop hl                                        ; $577c: $e1
    inc l                                         ; $577d: $2c
    adc [hl]                                      ; $577e: $8e
    and e                                         ; $577f: $a3
    ld c, [hl]                                    ; $5780: $4e
    sbc $a6                                       ; $5781: $de $a6
    rst $38                                       ; $5783: $ff
    inc a                                         ; $5784: $3c
    ld d, a                                       ; $5785: $57
    ccf                                           ; $5786: $3f
    ld a, d                                       ; $5787: $7a
    jp hl                                         ; $5788: $e9


    add d                                         ; $5789: $82
    ld d, d                                       ; $578a: $52
    cp $06                                        ; $578b: $fe $06
    ld h, a                                       ; $578d: $67
    scf                                           ; $578e: $37
    ld [hl+], a                                   ; $578f: $22
    ld a, h                                       ; $5790: $7c
    ld [hl], l                                    ; $5791: $75
    sub a                                         ; $5792: $97
    ld c, [hl]                                    ; $5793: $4e

Jump_03f_5794:
    sbc $a6                                       ; $5794: $de $a6
    rst $38                                       ; $5796: $ff
    inc a                                         ; $5797: $3c
    ld d, a                                       ; $5798: $57
    ccf                                           ; $5799: $3f
    ld a, d                                       ; $579a: $7a
    jp hl                                         ; $579b: $e9


    add d                                         ; $579c: $82
    ld d, d                                       ; $579d: $52
    cp $06                                        ; $579e: $fe $06
    ld a, l                                       ; $57a0: $7d
    dec e                                         ; $57a1: $1d
    sbc d                                         ; $57a2: $9a
    ld e, a                                       ; $57a3: $5f
    ldh a, [$ad]                                  ; $57a4: $f0 $ad
    di                                            ; $57a6: $f3
    xor h                                         ; $57a7: $ac
    ld e, a                                       ; $57a8: $5f
    db $db                                        ; $57a9: $db
    ei                                            ; $57aa: $fb
    sbc a                                         ; $57ab: $9f
    cp h                                          ; $57ac: $bc
    ld c, l                                       ; $57ad: $4d
    rst $38                                       ; $57ae: $ff
    ld a, c                                       ; $57af: $79
    xor [hl]                                      ; $57b0: $ae
    ld a, [hl]                                    ; $57b1: $7e
    db $f4                                        ; $57b2: $f4
    jp nc, $a505                                  ; $57b3: $d2 $05 $a5

    db $fc                                        ; $57b6: $fc
    dec c                                         ; $57b7: $0d
    nop                                           ; $57b8: $00
    cp l                                          ; $57b9: $bd
    add d                                         ; $57ba: $82
    add hl, hl                                    ; $57bb: $29
    ccf                                           ; $57bc: $3f
    db $eb                                        ; $57bd: $eb
    cpl                                           ; $57be: $2f
    ld [de], a                                    ; $57bf: $12
    and c                                         ; $57c0: $a1
    ld e, h                                       ; $57c1: $5c
    db $ed                                        ; $57c2: $ed
    ld c, h                                       ; $57c3: $4c
    ldh a, [$27]                                  ; $57c4: $f0 $27
    ld l, a                                       ; $57c6: $6f
    db $d3                                        ; $57c7: $d3
    ld a, a                                       ; $57c8: $7f
    sbc [hl]                                      ; $57c9: $9e
    xor e                                         ; $57ca: $ab
    rra                                           ; $57cb: $1f
    cp l                                          ; $57cc: $bd
    ld [hl], h                                    ; $57cd: $74
    ld b, c                                       ; $57ce: $41
    add hl, hl                                    ; $57cf: $29
    ld a, a                                       ; $57d0: $7f
    inc bc                                        ; $57d1: $03
    cp l                                          ; $57d2: $bd
    ldh a, [rSCX]                                 ; $57d3: $f0 $43
    sub [hl]                                      ; $57d5: $96
    cp h                                          ; $57d6: $bc
    ld [hl], a                                    ; $57d7: $77
    ld [hl], c                                    ; $57d8: $71
    sub h                                         ; $57d9: $94
    ld e, h                                       ; $57da: $5c
    ld hl, sp-$0e                                 ; $57db: $f8 $f2
    ld h, e                                       ; $57dd: $63
    sbc c                                         ; $57de: $99
    cp [hl]                                       ; $57df: $be
    ret                                           ; $57e0: $c9


    dec de                                        ; $57e1: $1b
    nop                                           ; $57e2: $00
    cp l                                          ; $57e3: $bd
    ld a, [$fb11]                                 ; $57e4: $fa $11 $fb
    push hl                                       ; $57e7: $e5
    cp l                                          ; $57e8: $bd
    ld c, e                                       ; $57e9: $4b
    ld e, h                                       ; $57ea: $5c
    push de                                       ; $57eb: $d5
    ld h, c                                       ; $57ec: $61
    sub $1d                                       ; $57ed: $d6 $1d
    pop hl                                        ; $57ef: $e1
    ld [c], a                                     ; $57f0: $e2
    db $e3                                        ; $57f1: $e3
    db $e4                                        ; $57f2: $e4
    dec h                                         ; $57f3: $25
    ld l, a                                       ; $57f4: $6f
    nop                                           ; $57f5: $00
    ld h, a                                       ; $57f6: $67
    scf                                           ; $57f7: $37
    ld [hl+], a                                   ; $57f8: $22
    ld a, h                                       ; $57f9: $7c
    ld [hl], l                                    ; $57fa: $75
    sub a                                         ; $57fb: $97
    xor $fb                                       ; $57fc: $ee $fb
    ld de, $e5fb                                  ; $57fe: $11 $fb $e5
    dec c                                         ; $5801: $0d
    nop                                           ; $5802: $00
    ld a, l                                       ; $5803: $7d
    dec e                                         ; $5804: $1d
    sbc d                                         ; $5805: $9a
    ld e, a                                       ; $5806: $5f
    ldh a, [$ad]                                  ; $5807: $f0 $ad
    di                                            ; $5809: $f3
    xor h                                         ; $580a: $ac
    ld e, a                                       ; $580b: $5f
    db $db                                        ; $580c: $db
    ei                                            ; $580d: $fb
    call c, Call_000_23f7                         ; $580e: $dc $f7 $23
    or $cb                                        ; $5811: $f6 $cb
    dec de                                        ; $5813: $1b
    nop                                           ; $5814: $00
    cp l                                          ; $5815: $bd
    add d                                         ; $5816: $82
    add hl, hl                                    ; $5817: $29
    ccf                                           ; $5818: $3f

jr_03f_5819:
    db $eb                                        ; $5819: $eb
    cpl                                           ; $581a: $2f
    ld [de], a                                    ; $581b: $12
    and c                                         ; $581c: $a1
    ld e, h                                       ; $581d: $5c
    db $ed                                        ; $581e: $ed
    ld c, h                                       ; $581f: $4c
    jr nc, jr_03f_5819                            ; $5820: $30 $f7

    db $fd                                        ; $5822: $fd
    adc b                                         ; $5823: $88
    db $fd                                        ; $5824: $fd
    ld a, [c]                                     ; $5825: $f2
    ld b, $57                                     ; $5826: $06 $57
    rst $28                                       ; $5828: $ef
    add e                                         ; $5829: $83
    add hl, hl                                    ; $582a: $29
    cp a                                          ; $582b: $bf
    ld c, b                                       ; $582c: $48
    add h                                         ; $582d: $84
    ld [hl], d                                    ; $582e: $72
    ld a, [c]                                     ; $582f: $f2
    ld [hl], $fd                                  ; $5830: $36 $fd
    rst $20                                       ; $5832: $e7
    cp c                                          ; $5833: $b9
    rst $10                                       ; $5834: $d7
    ld l, d                                       ; $5835: $6a
    ld e, e                                       ; $5836: $5b
    rst $08                                       ; $5837: $cf
    sub d                                         ; $5838: $92
    scf                                           ; $5839: $37
    nop                                           ; $583a: $00
    ld a, l                                       ; $583b: $7d
    dec e                                         ; $583c: $1d
    sbc d                                         ; $583d: $9a
    ld e, a                                       ; $583e: $5f
    ldh a, [$ad]                                  ; $583f: $f0 $ad
    di                                            ; $5841: $f3
    xor h                                         ; $5842: $ac
    ld e, a                                       ; $5843: $5f
    db $db                                        ; $5844: $db
    ei                                            ; $5845: $fb
    sbc a                                         ; $5846: $9f
    cp h                                          ; $5847: $bc
    ld c, l                                       ; $5848: $4d
    rst $38                                       ; $5849: $ff
    ld a, c                                       ; $584a: $79
    xor $b5                                       ; $584b: $ee $b5
    jp c, $b3d6                                   ; $584d: $da $d6 $b3

    db $e4                                        ; $5850: $e4
    dec c                                         ; $5851: $0d
    nop                                           ; $5852: $00
    cp l                                          ; $5853: $bd
    add d                                         ; $5854: $82
    add hl, hl                                    ; $5855: $29
    cp a                                          ; $5856: $bf
    ld c, b                                       ; $5857: $48
    add h                                         ; $5858: $84
    ld [hl], d                                    ; $5859: $72
    or l                                          ; $585a: $b5
    inc sp                                        ; $585b: $33
    pop bc                                        ; $585c: $c1
    sbc a                                         ; $585d: $9f
    cp h                                          ; $585e: $bc
    ld c, l                                       ; $585f: $4d
    rst $38                                       ; $5860: $ff
    ld a, c                                       ; $5861: $79
    xor $b5                                       ; $5862: $ee $b5
    jp c, $b3d6                                   ; $5864: $da $d6 $b3

    db $e4                                        ; $5867: $e4
    dec c                                         ; $5868: $0d
    nop                                           ; $5869: $00
    ld a, l                                       ; $586a: $7d
    cp b                                          ; $586b: $b8
    cpl                                           ; $586c: $2f
    add h                                         ; $586d: $84
    inc h                                         ; $586e: $24
    rst $20                                       ; $586f: $e7
    cp c                                          ; $5870: $b9
    ld c, b                                       ; $5871: $48
    and h                                         ; $5872: $a4
    call z, $a964                                 ; $5873: $cc $64 $a9
    ld e, e                                       ; $5876: $5b
    add hl, hl                                    ; $5877: $29
    xor c                                         ; $5878: $a9
    di                                            ; $5879: $f3
    sbc h                                         ; $587a: $9c
    ld d, d                                       ; $587b: $52
    jp nz, $8c46                                  ; $587c: $c2 $46 $8c

    add h                                         ; $587f: $84
    cpl                                           ; $5880: $2f
    and h                                         ; $5881: $a4
    db $e4                                        ; $5882: $e4
    ld c, d                                       ; $5883: $4a
    ld c, [hl]                                    ; $5884: $4e
    dec de                                        ; $5885: $1b
    ld sp, $c2e6                                  ; $5886: $31 $e6 $c2
    sub h                                         ; $5889: $94
    or c                                          ; $588a: $b1
    sub h                                         ; $588b: $94
    cp a                                          ; $588c: $bf
    ld bc, $3767                                  ; $588d: $01 $67 $37
    ld [hl+], a                                   ; $5890: $22
    ld a, h                                       ; $5891: $7c
    ld [hl], l                                    ; $5892: $75
    sub a                                         ; $5893: $97
    adc $64                                       ; $5894: $ce $64
    xor c                                         ; $5896: $a9
    ld e, e                                       ; $5897: $5b
    add hl, hl                                    ; $5898: $29
    xor c                                         ; $5899: $a9
    di                                            ; $589a: $f3
    sbc h                                         ; $589b: $9c
    ld d, d                                       ; $589c: $52
    jp nz, $8c46                                  ; $589d: $c2 $46 $8c

    cp h                                          ; $58a0: $bc
    ld bc, $1d7d                                  ; $58a1: $01 $7d $1d
    sbc d                                         ; $58a4: $9a
    ld e, a                                       ; $58a5: $5f
    ldh a, [$ad]                                  ; $58a6: $f0 $ad
    di                                            ; $58a8: $f3
    xor h                                         ; $58a9: $ac
    ld e, a                                       ; $58aa: $5f
    db $db                                        ; $58ab: $db
    ei                                            ; $58ac: $fb
    call nc, Call_000_2c99                        ; $58ad: $d4 $99 $2c
    ld [hl], l                                    ; $58b0: $75
    dec hl                                        ; $58b1: $2b
    dec h                                         ; $58b2: $25
    ld [hl], l                                    ; $58b3: $75
    sbc [hl]                                      ; $58b4: $9e
    ld d, e                                       ; $58b5: $53
    ld c, d                                       ; $58b6: $4a
    ret c                                         ; $58b7: $d8

    adc b                                         ; $58b8: $88
    sub c                                         ; $58b9: $91
    rst $30                                       ; $58ba: $f7
    ld a, l                                       ; $58bb: $7d
    db $eb                                        ; $58bc: $eb
    sub a                                         ; $58bd: $97
    ld c, d                                       ; $58be: $4a
    adc $e2                                       ; $58bf: $ce $e2
    cp b                                          ; $58c1: $b8
    sub d                                         ; $58c2: $92
    ld a, [hl-]                                   ; $58c3: $3a
    ld l, l                                       ; $58c4: $6d
    ret nc                                        ; $58c5: $d0

    db $e3                                        ; $58c6: $e3
    ld [hl+], a                                   ; $58c7: $22
    or c                                          ; $58c8: $b1
    ld de, $8e7d                                  ; $58c9: $11 $7d $8e
    cp b                                          ; $58cc: $b8
    ld a, [c]                                     ; $58cd: $f2
    db $eb                                        ; $58ce: $eb
    and h                                         ; $58cf: $a4
    ld sp, hl                                     ; $58d0: $f9
    dec de                                        ; $58d1: $1b
    nop                                           ; $58d2: $00
    cp l                                          ; $58d3: $bd
    add d                                         ; $58d4: $82
    add hl, hl                                    ; $58d5: $29
    ccf                                           ; $58d6: $3f
    db $eb                                        ; $58d7: $eb
    cpl                                           ; $58d8: $2f
    ld [de], a                                    ; $58d9: $12
    and c                                         ; $58da: $a1
    ld e, h                                       ; $58db: $5c
    db $ed                                        ; $58dc: $ed
    ld c, h                                       ; $58dd: $4c
    jr nc, jr_03f_5955                            ; $58de: $30 $75

    ld h, $4b                                     ; $58e0: $26 $4b
    db $dd                                        ; $58e2: $dd
    ld c, d                                       ; $58e3: $4a
    ld c, c                                       ; $58e4: $49
    sbc l                                         ; $58e5: $9d
    rst $20                                       ; $58e6: $e7
    sub h                                         ; $58e7: $94
    ld [de], a                                    ; $58e8: $12
    ld [hl], $62                                  ; $58e9: $36 $62
    db $e4                                        ; $58eb: $e4
    dec c                                         ; $58ec: $0d
    nop                                           ; $58ed: $00
    cp l                                          ; $58ee: $bd
    inc l                                         ; $58ef: $2c
    adc $66                                       ; $58f0: $ce $66
    pop bc                                        ; $58f2: $c1
    or a                                          ; $58f3: $b7
    ld l, $6c                                     ; $58f4: $2e $6c
    inc l                                         ; $58f6: $2c
    di                                            ; $58f7: $f3
    ld e, h                                       ; $58f8: $5c
    daa                                           ; $58f9: $27
    or e                                          ; $58fa: $b3
    sub $f2                                       ; $58fb: $d6 $f2
    ld [$00dd], sp                                ; $58fd: $08 $dd $00
    ld bc, $bc07                                  ; $5900: $01 $07 $bc
    adc $73                                       ; $5903: $ce $73
    and c                                         ; $5905: $a1
    and e                                         ; $5906: $a3
    sbc b                                         ; $5907: $98
    and h                                         ; $5908: $a4
    add [hl]                                      ; $5909: $86
    ld [hl], $78                                  ; $590a: $36 $78
    jp c, $f66a                                   ; $590c: $da $6a $f6

    ld c, e                                       ; $590f: $4b
    ld e, c                                       ; $5910: $59
    inc h                                         ; $5911: $24
    ld d, d                                       ; $5912: $52
    ld h, [hl]                                    ; $5913: $66
    ld e, h                                       ; $5914: $5c
    di                                            ; $5915: $f3
    rst $28                                       ; $5916: $ef
    ld [hl], e                                    ; $5917: $73
    ld h, $71                                     ; $5918: $26 $71
    call nc, $1bd7                                ; $591a: $d4 $d7 $1b
    nop                                           ; $591d: $00
    ld a, l                                       ; $591e: $7d
    cp b                                          ; $591f: $b8
    ld d, b                                       ; $5920: $50
    ld [$8c39], sp                                ; $5921: $08 $39 $8c
    add hl, sp                                    ; $5924: $39
    ld h, e                                       ; $5925: $63
    ld e, e                                       ; $5926: $5b
    rst $20                                       ; $5927: $e7
    db $f4                                        ; $5928: $f4
    ld c, e                                       ; $5929: $4b
    or e                                          ; $592a: $b3
    ld e, l                                       ; $592b: $5d
    ldh a, [$35]                                  ; $592c: $f0 $35
    cp $de                                        ; $592e: $fe $de
    ld [c], a                                     ; $5930: $e2
    ld l, h                                       ; $5931: $6c
    add $b2                                       ; $5932: $c6 $b2
    jr nc, jr_03f_5981                            ; $5934: $30 $4b

    dec h                                         ; $5936: $25
    rst $20                                       ; $5937: $e7
    cp c                                          ; $5938: $b9
    ret nc                                        ; $5939: $d0

    sub l                                         ; $593a: $95
    jr nc, jr_03f_593e                            ; $593b: $30 $01

    rla                                           ; $593d: $17

jr_03f_593e:
    rst $30                                       ; $593e: $f7
    ld c, e                                       ; $593f: $4b
    sbc l                                         ; $5940: $9d
    rst $20                                       ; $5941: $e7
    xor b                                         ; $5942: $a8
    and $e5                                       ; $5943: $e6 $e5
    dec sp                                        ; $5945: $3b
    rst $18                                       ; $5946: $df
    cpl                                           ; $5947: $2f
    rst $28                                       ; $5948: $ef
    ei                                            ; $5949: $fb
    cp [hl]                                       ; $594a: $be
    ld a, [$5257]                                 ; $594b: $fa $57 $52
    rla                                           ; $594e: $17
    db $e4                                        ; $594f: $e4
    ld a, [hl+]                                   ; $5950: $2a
    ld c, l                                       ; $5951: $4d
    ld h, e                                       ; $5952: $63
    xor $31                                       ; $5953: $ee $31

jr_03f_5955:
    ld d, d                                       ; $5955: $52
    ld l, a                                       ; $5956: $6f
    nop                                           ; $5957: $00
    ld h, a                                       ; $5958: $67
    scf                                           ; $5959: $37
    ld [hl+], a                                   ; $595a: $22
    ld a, h                                       ; $595b: $7c
    ld [hl], l                                    ; $595c: $75
    sub a                                         ; $595d: $97
    ld l, $fb                                     ; $595e: $2e $fb
    and l                                         ; $5960: $a5
    adc $73                                       ; $5961: $ce $73
    ld d, h                                       ; $5963: $54
    di                                            ; $5964: $f3
    ld a, [c]                                     ; $5965: $f2
    sbc l                                         ; $5966: $9d
    rst $28                                       ; $5967: $ef
    sub a                                         ; $5968: $97
    scf                                           ; $5969: $37
    nop                                           ; $596a: $00
    ld a, l                                       ; $596b: $7d
    dec e                                         ; $596c: $1d
    sbc d                                         ; $596d: $9a
    ld e, a                                       ; $596e: $5f
    ldh a, [$ad]                                  ; $596f: $f0 $ad
    di                                            ; $5971: $f3
    xor h                                         ; $5972: $ac
    ld e, a                                       ; $5973: $5f
    db $db                                        ; $5974: $db
    ei                                            ; $5975: $fb
    call nc, $bf65                                ; $5976: $d4 $65 $bf
    call nc, $8e79                                ; $5979: $d4 $79 $8e
    ld l, d                                       ; $597c: $6a

Jump_03f_597d:
    ld e, [hl]                                    ; $597d: $5e
    cp [hl]                                       ; $597e: $be
    di                                            ; $597f: $f3
    db $fd                                        ; $5980: $fd

jr_03f_5981:
    ld a, [c]                                     ; $5981: $f2
    ld b, $bd                                     ; $5982: $06 $bd
    add d                                         ; $5984: $82

Call_03f_5985:
    add hl, hl                                    ; $5985: $29
    ccf                                           ; $5986: $3f
    db $eb                                        ; $5987: $eb
    cpl                                           ; $5988: $2f
    ld [de], a                                    ; $5989: $12
    and c                                         ; $598a: $a1
    ld e, h                                       ; $598b: $5c
    db $ed                                        ; $598c: $ed
    ld c, h                                       ; $598d: $4c

jr_03f_598e:
    jr nc, jr_03f_5a05                            ; $598e: $30 $75

    reti                                          ; $5990: $d9


    cpl                                           ; $5991: $2f
    ld [hl], l                                    ; $5992: $75
    sbc [hl]                                      ; $5993: $9e
    and e                                         ; $5994: $a3
    sbc d                                         ; $5995: $9a
    sub a                                         ; $5996: $97
    rst $28                                       ; $5997: $ef
    ld a, h                                       ; $5998: $7c
    cp a                                          ; $5999: $bf
    cp h                                          ; $599a: $bc
    ld bc, $82bd                                  ; $599b: $01 $bd $82
    add hl, hl                                    ; $599e: $29
    cp a                                          ; $599f: $bf
    ld c, b                                       ; $59a0: $48
    add h                                         ; $59a1: $84
    ld [hl], d                                    ; $59a2: $72
    add $51                                       ; $59a3: $c6 $51
    jr nc, jr_03f_598e                            ; $59a5: $30 $e7

    cp c                                          ; $59a7: $b9
    ld c, [hl]                                    ; $59a8: $4e
    inc sp                                        ; $59a9: $33
    add hl, hl                                    ; $59aa: $29
    ret c                                         ; $59ab: $d8

    ld a, [c]                                     ; $59ac: $f2
    ld b, $67                                     ; $59ad: $06 $67
    scf                                           ; $59af: $37
    ld [hl+], a                                   ; $59b0: $22
    ld a, h                                       ; $59b1: $7c
    ld [hl], l                                    ; $59b2: $75
    sub a                                         ; $59b3: $97
    adc $38                                       ; $59b4: $ce $38
    ld a, [bc]                                    ; $59b6: $0a
    and $3c                                       ; $59b7: $e6 $3c
    rst $10                                       ; $59b9: $d7
    ld l, c                                       ; $59ba: $69
    ld h, $05                                     ; $59bb: $26 $05
    ld e, e                                       ; $59bd: $5b
    sbc $00                                       ; $59be: $de $00
    ld a, l                                       ; $59c0: $7d
    dec e                                         ; $59c1: $1d
    sbc d                                         ; $59c2: $9a
    ld e, a                                       ; $59c3: $5f
    ldh a, [$ad]                                  ; $59c4: $f0 $ad
    di                                            ; $59c6: $f3
    xor h                                         ; $59c7: $ac
    ld e, a                                       ; $59c8: $5f
    db $db                                        ; $59c9: $db
    ei                                            ; $59ca: $fb
    call nc, Call_03f_4719                        ; $59cb: $d4 $19 $47
    pop bc                                        ; $59ce: $c1
    call nc, $ae79                                ; $59cf: $d4 $79 $ae
    db $d3                                        ; $59d2: $d3
    ld c, h                                       ; $59d3: $4c
    ld a, [bc]                                    ; $59d4: $0a
    or [hl]                                       ; $59d5: $b6
    cp h                                          ; $59d6: $bc
    ld bc, $82bd                                  ; $59d7: $01 $bd $82
    add hl, hl                                    ; $59da: $29
    ccf                                           ; $59db: $3f
    db $eb                                        ; $59dc: $eb
    cpl                                           ; $59dd: $2f
    ld [de], a                                    ; $59de: $12
    and c                                         ; $59df: $a1
    ld e, h                                       ; $59e0: $5c
    db $ed                                        ; $59e1: $ed
    ld c, h                                       ; $59e2: $4c
    jr nc, jr_03f_5a4c                            ; $59e3: $30 $67

    inc e                                         ; $59e5: $1c
    dec b                                         ; $59e6: $05
    ld [hl], e                                    ; $59e7: $73
    sbc [hl]                                      ; $59e8: $9e
    db $eb                                        ; $59e9: $eb
    inc [hl]                                      ; $59ea: $34
    sub e                                         ; $59eb: $93
    add d                                         ; $59ec: $82
    dec l                                         ; $59ed: $2d
    ld l, a                                       ; $59ee: $6f
    nop                                           ; $59ef: $00
    ld bc, $5e8d                                  ; $59f0: $01 $8d $5e
    ld a, [hl]                                    ; $59f3: $7e
    dec e                                         ; $59f4: $1d
    or $cf                                        ; $59f5: $f6 $cf
    sub a                                         ; $59f7: $97
    ei                                            ; $59f8: $fb
    cp [hl]                                       ; $59f9: $be
    inc bc                                        ; $59fa: $03
    pop af                                        ; $59fb: $f1
    ld b, e                                       ; $59fc: $43
    adc $b7                                       ; $59fd: $ce $b7
    ld a, [hl]                                    ; $59ff: $7e
    add hl, sp                                    ; $5a00: $39
    adc e                                         ; $5a01: $8b
    db $e3                                        ; $5a02: $e3
    sub h                                         ; $5a03: $94
    ld [hl], e                                    ; $5a04: $73

jr_03f_5a05:
    ld a, [$ee23]                                 ; $5a05: $fa $23 $ee
    ld sp, $f8da                                  ; $5a08: $31 $da $f8
    adc h                                         ; $5a0b: $8c
    xor c                                         ; $5a0c: $a9
    scf                                           ; $5a0d: $37
    nop                                           ; $5a0e: $00
    ld h, a                                       ; $5a0f: $67
    scf                                           ; $5a10: $37
    ld [hl+], a                                   ; $5a11: $22
    ld a, h                                       ; $5a12: $7c
    ld [hl], l                                    ; $5a13: $75
    sub a                                         ; $5a14: $97
    ld l, $6c                                     ; $5a15: $2e $6c
    db $f4                                        ; $5a17: $f4
    ld a, [c]                                     ; $5a18: $f2
    db $eb                                        ; $5a19: $eb
    or b                                          ; $5a1a: $b0
    ld a, a                                       ; $5a1b: $7f
    cp [hl]                                       ; $5a1c: $be
    call c, Call_03f_7d00                         ; $5a1d: $dc $00 $7d
    dec e                                         ; $5a20: $1d
    sbc d                                         ; $5a21: $9a
    ld e, a                                       ; $5a22: $5f
    ldh a, [$ad]                                  ; $5a23: $f0 $ad
    di                                            ; $5a25: $f3
    xor h                                         ; $5a26: $ac
    ld e, a                                       ; $5a27: $5f
    db $db                                        ; $5a28: $db
    ei                                            ; $5a29: $fb
    rst $10                                       ; $5a2a: $d7
    add l                                         ; $5a2b: $85
    adc l                                         ; $5a2c: $8d
    ld e, [hl]                                    ; $5a2d: $5e
    ld e, [hl]                                    ; $5a2e: $5e
    rst $10                                       ; $5a2f: $d7
    ld h, c                                       ; $5a30: $61
    rst $38                                       ; $5a31: $ff
    ld a, h                                       ; $5a32: $7c
    cp c                                          ; $5a33: $b9
    ld bc, $82bd                                  ; $5a34: $01 $bd $82
    add hl, hl                                    ; $5a37: $29
    cp a                                          ; $5a38: $bf
    ld c, b                                       ; $5a39: $48
    add h                                         ; $5a3a: $84
    ld [hl], d                                    ; $5a3b: $72
    or l                                          ; $5a3c: $b5
    inc sp                                        ; $5a3d: $33
    pop bc                                        ; $5a3e: $c1
    rst $10                                       ; $5a3f: $d7
    add l                                         ; $5a40: $85
    adc l                                         ; $5a41: $8d
    ld e, [hl]                                    ; $5a42: $5e
    ld e, [hl]                                    ; $5a43: $5e
    rst $10                                       ; $5a44: $d7
    ld h, c                                       ; $5a45: $61
    rst $38                                       ; $5a46: $ff
    ld a, h                                       ; $5a47: $7c
    cp c                                          ; $5a48: $b9
    ld bc, $7add                                  ; $5a49: $01 $dd $7a

jr_03f_5a4c:
    dec sp                                        ; $5a4c: $3b
    ld a, [bc]                                    ; $5a4d: $0a
    and $3c                                       ; $5a4e: $e6 $3c
    rst $20                                       ; $5a50: $e7
    or b                                          ; $5a51: $b0
    sbc c                                         ; $5a52: $99
    inc d                                         ; $5a53: $14
    ld l, h                                       ; $5a54: $6c
    cp c                                          ; $5a55: $b9
    or b                                          ; $5a56: $b0
    ld a, h                                       ; $5a57: $7c
    db $e4                                        ; $5a58: $e4
    ei                                            ; $5a59: $fb
    db $ec                                        ; $5a5a: $ec
    or c                                          ; $5a5b: $b1
    ld l, [hl]                                    ; $5a5c: $6e
    add c                                         ; $5a5d: $81
    add h                                         ; $5a5e: $84
    sbc h                                         ; $5a5f: $9c
    db $e4                                        ; $5a60: $e4
    inc l                                         ; $5a61: $2c
    adc [hl]                                      ; $5a62: $8e
    and e                                         ; $5a63: $a3
    xor [hl]                                      ; $5a64: $ae
    halt                                          ; $5a65: $76
    sub $55                                       ; $5a66: $d6 $55
    cp [hl]                                       ; $5a68: $be
    or h                                          ; $5a69: $b4
    call nc, $01ec                                ; $5a6a: $d4 $ec $01
    nop                                           ; $5a6d: $00
    ld h, a                                       ; $5a6e: $67
    scf                                           ; $5a6f: $37
    ld [hl+], a                                   ; $5a70: $22
    ld a, h                                       ; $5a71: $7c
    ld [hl], l                                    ; $5a72: $75
    sub a                                         ; $5a73: $97
    adc $38                                       ; $5a74: $ce $38
    ld a, [bc]                                    ; $5a76: $0a
    and $3c                                       ; $5a77: $e6 $3c
    rst $20                                       ; $5a79: $e7
    or b                                          ; $5a7a: $b0
    sbc c                                         ; $5a7b: $99
    inc d                                         ; $5a7c: $14
    ld l, h                                       ; $5a7d: $6c
    cp c                                          ; $5a7e: $b9
    or b                                          ; $5a7f: $b0
    ld a, h                                       ; $5a80: $7c
    db $e4                                        ; $5a81: $e4
    ei                                            ; $5a82: $fb
    cp h                                          ; $5a83: $bc
    ld bc, $1d7d                                  ; $5a84: $01 $7d $1d
    sbc d                                         ; $5a87: $9a
    ld e, a                                       ; $5a88: $5f
    ldh a, [$ad]                                  ; $5a89: $f0 $ad
    di                                            ; $5a8b: $f3
    xor h                                         ; $5a8c: $ac
    ld e, a                                       ; $5a8d: $5f
    db $db                                        ; $5a8e: $db
    ei                                            ; $5a8f: $fb
    call nc, Call_03f_4719                        ; $5a90: $d4 $19 $47
    pop bc                                        ; $5a93: $c1
    call nc, $ce79                                ; $5a94: $d4 $79 $ce
    ld h, c                                       ; $5a97: $61
    inc sp                                        ; $5a98: $33
    add hl, hl                                    ; $5a99: $29
    ret c                                         ; $5a9a: $d8

    ld [hl], d                                    ; $5a9b: $72
    ld h, c                                       ; $5a9c: $61
    ld sp, hl                                     ; $5a9d: $f9
    ret z                                         ; $5a9e: $c8

    rst $30                                       ; $5a9f: $f7
    ld a, c                                       ; $5aa0: $79
    inc bc                                        ; $5aa1: $03
    cp l                                          ; $5aa2: $bd
    add d                                         ; $5aa3: $82
    add hl, hl                                    ; $5aa4: $29
    ccf                                           ; $5aa5: $3f
    db $eb                                        ; $5aa6: $eb
    cpl                                           ; $5aa7: $2f
    ld [de], a                                    ; $5aa8: $12
    and c                                         ; $5aa9: $a1
    ld e, h                                       ; $5aaa: $5c
    db $ed                                        ; $5aab: $ed
    ld c, h                                       ; $5aac: $4c
    jr nc, jr_03f_5b16                            ; $5aad: $30 $67

Jump_03f_5aaf:
    inc e                                         ; $5aaf: $1c
    dec b                                         ; $5ab0: $05
    ld [hl], e                                    ; $5ab1: $73
    sbc [hl]                                      ; $5ab2: $9e
    ld [hl], e                                    ; $5ab3: $73
    ret c                                         ; $5ab4: $d8

    ld c, h                                       ; $5ab5: $4c
    ld a, [bc]                                    ; $5ab6: $0a
    or [hl]                                       ; $5ab7: $b6
    ld e, h                                       ; $5ab8: $5c
    ld e, b                                       ; $5ab9: $58
    ld a, $f2                                     ; $5aba: $3e $f2
    ld a, l                                       ; $5abc: $7d
    sbc $00                                       ; $5abd: $de $00
    rst $20                                       ; $5abf: $e7
    ld a, h                                       ; $5ac0: $7c
    db $e4                                        ; $5ac1: $e4
    ld b, d                                       ; $5ac2: $42
    ld l, c                                       ; $5ac3: $69
    ld a, [$aeb3]                                 ; $5ac4: $fa $b3 $ae
    db $e3                                        ; $5ac7: $e3
    call nc, $a2fc                                ; $5ac8: $d4 $fc $a2
    ld e, e                                       ; $5acb: $5b
    ld c, l                                       ; $5acc: $4d
    ld a, l                                       ; $5acd: $7d
    ld hl, sp-$14                                 ; $5ace: $f8 $ec
    ld e, a                                       ; $5ad0: $5f
    call nz, Call_000_037a                        ; $5ad1: $c4 $7a $03
    halt                                          ; $5ad4: $76
    ld b, d                                       ; $5ad5: $42
    ld e, l                                       ; $5ad6: $5d
    call Call_000_297e                            ; $5ad7: $cd $7e $29

jr_03f_5ada:
    di                                            ; $5ada: $f3
    ld e, h                                       ; $5adb: $5c
    ret                                           ; $5adc: $c9


    ld e, c                                       ; $5add: $59
    inc e                                         ; $5ade: $1c
    rla                                           ; $5adf: $17
    cp [hl]                                       ; $5ae0: $be
    ret nc                                        ; $5ae1: $d0

    ld d, b                                       ; $5ae2: $50
    pop hl                                        ; $5ae3: $e1
    dec bc                                        ; $5ae4: $0b
    ret z                                         ; $5ae5: $c8

    jr @+$2b                                      ; $5ae6: $18 $29

    rst $30                                       ; $5ae8: $f7
    ld [bc], a                                    ; $5ae9: $02
    ld e, [hl]                                    ; $5aea: $5e
    ld a, [hl]                                    ; $5aeb: $7e
    sbc [hl]                                      ; $5aec: $9e
    ld [hl], l                                    ; $5aed: $75
    ld l, d                                       ; $5aee: $6a
    sub h                                         ; $5aef: $94
    sub a                                         ; $5af0: $97
    ret z                                         ; $5af1: $c8

    ld e, c                                       ; $5af2: $59
    inc e                                         ; $5af3: $1c
    add a                                         ; $5af4: $87
    add hl, sp                                    ; $5af5: $39
    ld l, l                                       ; $5af6: $6d
    call nz, Call_000_1398                        ; $5af7: $c4 $98 $13
    and d                                         ; $5afa: $a2
    ld c, c                                       ; $5afb: $49
    add c                                         ; $5afc: $81
    cpl                                           ; $5afd: $2f
    ld h, [hl]                                    ; $5afe: $66
    db $fd                                        ; $5aff: $fd
    ld [hl], e                                    ; $5b00: $73
    ld hl, sp+$33                                 ; $5b01: $f8 $33
    ld e, c                                       ; $5b03: $59

Jump_03f_5b04:
    ld [hl], a                                    ; $5b04: $77
    ld a, [de]                                    ; $5b05: $1a
    cp [hl]                                       ; $5b06: $be
    ld l, c                                       ; $5b07: $69
    or [hl]                                       ; $5b08: $b6
    jr c, jr_03f_5ada                             ; $5b09: $38 $cf

    add hl, de                                    ; $5b0b: $19
    ret                                           ; $5b0c: $c9


    ld a, [hl-]                                   ; $5b0d: $3a
    ld [hl], l                                    ; $5b0e: $75
    pop hl                                        ; $5b0f: $e1
    sra a                                         ; $5b10: $cb $2f
    cp d                                          ; $5b12: $ba
    sbc l                                         ; $5b13: $9d
    sbc e                                         ; $5b14: $9b
    and l                                         ; $5b15: $a5

jr_03f_5b16:
    push hl                                       ; $5b16: $e5
    ld l, $93                                     ; $5b17: $2e $93
    ld d, $96                                     ; $5b19: $16 $96

Call_03f_5b1b:
    ld h, [hl]                                    ; $5b1b: $66
    sbc h                                         ; $5b1c: $9c
    sbc $bb                                       ; $5b1d: $de $bb
    ld d, [hl]                                    ; $5b1f: $56
    cp a                                          ; $5b20: $bf
    db $fc                                        ; $5b21: $fc
    or h                                          ; $5b22: $b4
    dec l                                         ; $5b23: $2d
    ld [hl], d                                    ; $5b24: $72
    call nz, Call_000_216a                        ; $5b25: $c4 $6a $21
    add $d7                                       ; $5b28: $c6 $d7
    db $fd                                        ; $5b2a: $fd
    inc e                                         ; $5b2b: $1c
    ld c, $92                                     ; $5b2c: $0e $92
    rst $00                                       ; $5b2e: $c7
    add l                                         ; $5b2f: $85
    inc l                                         ; $5b30: $2c
    dec c                                         ; $5b31: $0d
    sub d                                         ; $5b32: $92
    cp h                                          ; $5b33: $bc

Jump_03f_5b34:
    ld bc, $4401                                  ; $5b34: $01 $01 $44
    xor l                                         ; $5b37: $ad
    ld a, [hl-]                                   ; $5b38: $3a
    adc e                                         ; $5b39: $8b
    db $e3                                        ; $5b3a: $e3
    sub h                                         ; $5b3b: $94
    ld h, d                                       ; $5b3c: $62
    di                                            ; $5b3d: $f3
    cp d                                          ; $5b3e: $ba
    sbc d                                         ; $5b3f: $9a
    db $fd                                        ; $5b40: $fd
    ld d, d                                       ; $5b41: $52
    ld h, [hl]                                    ; $5b42: $66
    ld [de], a                                    ; $5b43: $12
    ld d, a                                       ; $5b44: $57
    ld d, d                                       ; $5b45: $52
    rla                                           ; $5b46: $17
    and h                                         ; $5b47: $a4
    add hl, bc                                    ; $5b48: $09
    or [hl]                                       ; $5b49: $b6
    cp $a9                                        ; $5b4a: $fe $a9
    ldh a, [rTIMA]                                ; $5b4c: $f0 $05
    ld h, h                                       ; $5b4e: $64
    adc h                                         ; $5b4f: $8c

Jump_03f_5b50:
    sub h                                         ; $5b50: $94
    ld a, e                                       ; $5b51: $7b
    sub a                                         ; $5b52: $97
    cp c                                          ; $5b53: $b9
    ld a, c                                       ; $5b54: $79
    halt                                          ; $5b55: $76
    ld e, d                                       ; $5b56: $5a
    ld l, c                                       ; $5b57: $69
    cp $fd                                        ; $5b58: $fe $fd
    ld l, d                                       ; $5b5a: $6a
    adc $24                                       ; $5b5b: $ce $24
    sub $8e                                       ; $5b5d: $d6 $8e
    dec d                                         ; $5b5f: $15
    sbc $bb                                       ; $5b60: $de $bb
    inc l                                         ; $5b62: $2c
    db $eb                                        ; $5b63: $eb
    sbc a                                         ; $5b64: $9f
    jp $c99f                                      ; $5b65: $c3 $9f $c9


    cp d                                          ; $5b68: $ba
    db $d3                                        ; $5b69: $d3
    ldh a, [rKEY1]                                ; $5b6a: $f0 $4d
    or e                                          ; $5b6c: $b3
    push bc                                       ; $5b6d: $c5
    ld a, c                                       ; $5b6e: $79
    adc $48                                       ; $5b6f: $ce $48
    sub $a9                                       ; $5b71: $d6 $a9
    dec bc                                        ; $5b73: $0b
    ld e, a                                       ; $5b74: $5f
    ld a, [hl]                                    ; $5b75: $7e
    pop de                                        ; $5b76: $d1
    db $ed                                        ; $5b77: $ed
    call c, Call_000_2d2c                         ; $5b78: $dc $2c $2d
    ld [hl], a                                    ; $5b7b: $77
    sbc c                                         ; $5b7c: $99
    or h                                          ; $5b7d: $b4
    or b                                          ; $5b7e: $b0
    inc [hl]                                      ; $5b7f: $34
    db $e3                                        ; $5b80: $e3
    db $f4                                        ; $5b81: $f4
    sbc $b5                                       ; $5b82: $de $b5
    ld a, [$a7e5]                                 ; $5b84: $fa $e5 $a7
    ld l, l                                       ; $5b87: $6d
    sub c                                         ; $5b88: $91
    inc hl                                        ; $5b89: $23
    ld d, [hl]                                    ; $5b8a: $56
    dec bc                                        ; $5b8b: $0b
    ld sp, $eebe                                  ; $5b8c: $31 $be $ee
    rst $20                                       ; $5b8f: $e7
    ld [hl], b                                    ; $5b90: $70
    sub b                                         ; $5b91: $90
    inc a                                         ; $5b92: $3c
    ld l, $64                                     ; $5b93: $2e $64

jr_03f_5b95:
    ld l, c                                       ; $5b95: $69
    sub b                                         ; $5b96: $90
    db $e4                                        ; $5b97: $e4
    dec c                                         ; $5b98: $0d
    nop                                           ; $5b99: $00
    sub a                                         ; $5b9a: $97
    ld h, l                                       ; $5b9b: $65
    db $fd                                        ; $5b9c: $fd
    adc e                                         ; $5b9d: $8b
    ld l, [hl]                                    ; $5b9e: $6e
    add sp, $58                                   ; $5b9f: $e8 $58
    ld sp, hl                                     ; $5ba1: $f9
    sbc c                                         ; $5ba2: $99
    xor h                                         ; $5ba3: $ac
    dec sp                                        ; $5ba4: $3b
    dec c                                         ; $5ba5: $0d
    rst $18                                       ; $5ba6: $df
    inc [hl]                                      ; $5ba7: $34
    ld e, e                                       ; $5ba8: $5b
    sbc h                                         ; $5ba9: $9c
    rst $20                                       ; $5baa: $e7
    adc h                                         ; $5bab: $8c
    ld h, h                                       ; $5bac: $64
    sbc l                                         ; $5bad: $9d
    ld a, [bc]                                    ; $5bae: $0a
    sbc a                                         ; $5baf: $9f
    db $fd                                        ; $5bb0: $fd
    adc e                                         ; $5bb1: $8b
    ld e, b                                       ; $5bb2: $58
    ld l, a                                       ; $5bb3: $6f
    nop                                           ; $5bb4: $00
    sub a                                         ; $5bb5: $97
    ld h, l                                       ; $5bb6: $65
    db $fd                                        ; $5bb7: $fd
    ld [hl], e                                    ; $5bb8: $73
    ld hl, sp+$43                                 ; $5bb9: $f8 $43
    rst $00                                       ; $5bbb: $c7
    jp z, $64cf                                   ; $5bbc: $ca $cf $64

    db $dd                                        ; $5bbf: $dd
    ld l, c                                       ; $5bc0: $69
    ld hl, sp-$5a                                 ; $5bc1: $f8 $a6
    reti                                          ; $5bc3: $d9


    ld [c], a                                     ; $5bc4: $e2
    inc a                                         ; $5bc5: $3c
    ld h, a                                       ; $5bc6: $67
    inc h                                         ; $5bc7: $24
    db $eb                                        ; $5bc8: $eb
    ld d, h                                       ; $5bc9: $54
    ld hl, sp-$0c                                 ; $5bca: $f8 $f4
    ld c, e                                       ; $5bcc: $4b
    di                                            ; $5bcd: $f3
    ccf                                           ; $5bce: $3f
    rst $08                                       ; $5bcf: $cf
    sub l                                         ; $5bd0: $95
    rst $18                                       ; $5bd1: $df
    ld bc, $b625                                  ; $5bd2: $01 $25 $b6
    ld a, [$6857]                                 ; $5bd5: $fa $57 $68
    add d                                         ; $5bd8: $82
    xor [hl]                                      ; $5bd9: $ae
    rst $38                                       ; $5bda: $ff
    rst $18                                       ; $5bdb: $df
    nop                                           ; $5bdc: $00
    cp l                                          ; $5bdd: $bd
    or e                                          ; $5bde: $b3
    xor $34                                       ; $5bdf: $ee $34
    ld a, h                                       ; $5be1: $7c
    db $d3                                        ; $5be2: $d3
    ld l, h                                       ; $5be3: $6c
    ld [hl], c                                    ; $5be4: $71

jr_03f_5be5:
    sbc [hl]                                      ; $5be5: $9e
    inc sp                                        ; $5be6: $33

Jump_03f_5be7:
    sub d                                         ; $5be7: $92
    ld [hl], l                                    ; $5be8: $75
    ld [$c662], a                                 ; $5be9: $ea $62 $c6
    cpl                                           ; $5bec: $2f
    dec [hl]                                      ; $5bed: $35
    ld sp, $e872                                  ; $5bee: $31 $72 $e8
    ld e, b                                       ; $5bf1: $58
    ld a, c                                       ; $5bf2: $79
    ld hl, sp-$14                                 ; $5bf3: $f8 $ec
    ld e, a                                       ; $5bf5: $5f
    call nz, $cf7a                                ; $5bf6: $c4 $7a $cf
    ld c, [hl]                                    ; $5bf9: $4e
    ld b, e                                       ; $5bfa: $43
    ld c, d                                       ; $5bfb: $4a
    adc $e2                                       ; $5bfc: $ce $e2
    jr c, jr_03f_5be5                             ; $5bfe: $38 $e5

    xor a                                         ; $5c00: $af
    db $e3                                        ; $5c01: $e3
    adc b                                         ; $5c02: $88
    ld a, a                                       ; $5c03: $7f
    inc bc                                        ; $5c04: $03
    rla                                           ; $5c05: $17
    jr c, jr_03f_5b95                             ; $5c06: $38 $8d

    cp c                                          ; $5c08: $b9
    ld e, a                                       ; $5c09: $5f
    ld l, h                                       ; $5c0a: $6c
    xor h                                         ; $5c0b: $ac
    jp $f85c                                      ; $5c0c: $c3 $5c $f8


    ld a, [c]                                     ; $5c0f: $f2
    dec hl                                        ; $5c10: $2b
    ccf                                           ; $5c11: $3f
    ld [hl], h                                    ; $5c12: $74
    xor h                                         ; $5c13: $ac
    db $fc                                        ; $5c14: $fc
    ld c, h                                       ; $5c15: $4c
    sub $9d                                       ; $5c16: $d6 $9d

jr_03f_5c18:
    add [hl]                                      ; $5c18: $86
    ld l, a                                       ; $5c19: $6f
    sbc d                                         ; $5c1a: $9a
    dec l                                         ; $5c1b: $2d
    adc $73                                       ; $5c1c: $ce $73
    ld b, [hl]                                    ; $5c1e: $46
    or d                                          ; $5c1f: $b2
    ld c, [hl]                                    ; $5c20: $4e
    add l                                         ; $5c21: $85
    rst $08                                       ; $5c22: $cf
    cp $45                                        ; $5c23: $fe $45
    xor h                                         ; $5c25: $ac
    rst $30                                       ; $5c26: $f7
    db $ec                                        ; $5c27: $ec
    inc [hl]                                      ; $5c28: $34
    and h                                         ; $5c29: $a4
    db $e4                                        ; $5c2a: $e4
    inc l                                         ; $5c2b: $2c
    adc [hl]                                      ; $5c2c: $8e
    dec bc                                        ; $5c2d: $0b
    dec e                                         ; $5c2e: $1d
    db $fd                                        ; $5c2f: $fd
    db $eb                                        ; $5c30: $eb
    sbc h                                         ; $5c31: $9c
    cp [hl]                                       ; $5c32: $be
    sub h                                         ; $5c33: $94
    cp a                                          ; $5c34: $bf
    ld bc, $6597                                  ; $5c35: $01 $97 $65
    db $fd                                        ; $5c38: $fd

Call_03f_5c39:
    adc e                                         ; $5c39: $8b
    ld l, [hl]                                    ; $5c3a: $6e
    jp c, $d720                                   ; $5c3b: $da $20 $d7

    adc b                                         ; $5c3e: $88
    sub c                                         ; $5c3f: $91
    inc sp                                        ; $5c40: $33
    ld e, c                                       ; $5c41: $59
    ld [hl], a                                    ; $5c42: $77
    ld a, [de]                                    ; $5c43: $1a
    cp [hl]                                       ; $5c44: $be
    ld l, c                                       ; $5c45: $69
    or [hl]                                       ; $5c46: $b6
    jr c, jr_03f_5c18                             ; $5c47: $38 $cf

    add hl, de                                    ; $5c49: $19
    ret                                           ; $5c4a: $c9


    ld a, [hl-]                                   ; $5c4b: $3a
    dec d                                         ; $5c4c: $15
    ld a, $fb                                     ; $5c4d: $3e $fb
    rla                                           ; $5c4f: $17
    or c                                          ; $5c50: $b1
    sbc $b3                                       ; $5c51: $de $b3
    db $d3                                        ; $5c53: $d3
    sub b                                         ; $5c54: $90
    sub d                                         ; $5c55: $92
    or e                                          ; $5c56: $b3
    jr c, @+$10                                   ; $5c57: $38 $0e

    ld [hl], e                                    ; $5c59: $73
    sub c                                         ; $5c5a: $91
    ld [$0ebd], sp                                ; $5c5b: $08 $bd $0e
    dec de                                        ; $5c5e: $1b
    ld b, d                                       ; $5c5f: $42
    ld c, $7f                                     ; $5c60: $0e $7f
    push af                                       ; $5c62: $f5
    sub a                                         ; $5c63: $97
    cp a                                          ; $5c64: $bf
    ld bc, $df81                                  ; $5c65: $01 $81 $df
    or c                                          ; $5c68: $b1
    ld sp, hl                                     ; $5c69: $f9
    ld e, c                                       ; $5c6a: $59
    inc e                                         ; $5c6b: $1c
    ld d, a                                       ; $5c6c: $57
    ld hl, $b17a                                  ; $5c6d: $21 $7a $b1
    ld a, c                                       ; $5c70: $79
    db $dd                                        ; $5c71: $dd
    xor a                                         ; $5c72: $af
    ld b, d                                       ; $5c73: $42
    ld e, c                                       ; $5c74: $59
    ld [hl], h                                    ; $5c75: $74
    ld b, e                                       ; $5c76: $43
    rst $00                                       ; $5c77: $c7
    jp z, $64cf                                   ; $5c78: $ca $cf $64

    db $dd                                        ; $5c7b: $dd
    ld l, c                                       ; $5c7c: $69
    ld hl, sp-$5a                                 ; $5c7d: $f8 $a6
    reti                                          ; $5c7f: $d9


    ld [c], a                                     ; $5c80: $e2
    inc a                                         ; $5c81: $3c
    ld h, a                                       ; $5c82: $67
    inc h                                         ; $5c83: $24
    db $eb                                        ; $5c84: $eb
    ld d, h                                       ; $5c85: $54
    ld hl, sp-$14                                 ; $5c86: $f8 $ec
    ld e, a                                       ; $5c88: $5f
    call nz, Call_000_037a                        ; $5c89: $c4 $7a $03
    db $dd                                        ; $5c8c: $dd
    ld a, d                                       ; $5c8d: $7a
    daa                                           ; $5c8e: $27
    call nz, $3745                                ; $5c8f: $c4 $45 $37
    ld [hl], h                                    ; $5c92: $74
    xor h                                         ; $5c93: $ac
    db $fc                                        ; $5c94: $fc
    ld c, h                                       ; $5c95: $4c
    sub $9d                                       ; $5c96: $d6 $9d
    add [hl]                                      ; $5c98: $86
    ld l, a                                       ; $5c99: $6f
    sbc d                                         ; $5c9a: $9a
    dec l                                         ; $5c9b: $2d
    adc $73                                       ; $5c9c: $ce $73
    ld b, [hl]                                    ; $5c9e: $46
    or d                                          ; $5c9f: $b2
    ld c, [hl]                                    ; $5ca0: $4e
    db $ed                                        ; $5ca1: $ed
    or c                                          ; $5ca2: $b1
    ld l, [hl]                                    ; $5ca3: $6e
    ld a, l                                       ; $5ca4: $7d
    adc b                                         ; $5ca5: $88
    adc $ff                                       ; $5ca6: $ce $ff
    ld c, h                                       ; $5ca8: $4c
    ld d, $1a                                     ; $5ca9: $16 $1a
    db $d3                                        ; $5cab: $d3
    ld l, h                                       ; $5cac: $6c
    ld [hl], c                                    ; $5cad: $71
    call nc, $a5d8                                ; $5cae: $d4 $d8 $a5
    dec bc                                        ; $5cb1: $0b
    cp [hl]                                       ; $5cb2: $be
    ld l, c                                       ; $5cb3: $69
    ld b, h                                       ; $5cb4: $44
    sbc a                                         ; $5cb5: $9f
    dec a                                         ; $5cb6: $3d
    nop                                           ; $5cb7: $00
    db $dd                                        ; $5cb8: $dd
    ld a, d                                       ; $5cb9: $7a
    daa                                           ; $5cba: $27
    call nz, $3745                                ; $5cbb: $c4 $45 $37
    ld [hl], h                                    ; $5cbe: $74
    xor h                                         ; $5cbf: $ac
    db $fc                                        ; $5cc0: $fc
    ld c, h                                       ; $5cc1: $4c
    sub $9d                                       ; $5cc2: $d6 $9d
    add [hl]                                      ; $5cc4: $86
    ld l, a                                       ; $5cc5: $6f
    sbc d                                         ; $5cc6: $9a
    dec l                                         ; $5cc7: $2d
    adc $73                                       ; $5cc8: $ce $73
    ld b, [hl]                                    ; $5cca: $46
    or d                                          ; $5ccb: $b2
    ld c, [hl]                                    ; $5ccc: $4e
    db $ed                                        ; $5ccd: $ed
    or c                                          ; $5cce: $b1
    ld l, [hl]                                    ; $5ccf: $6e
    ld d, a                                       ; $5cd0: $57
    cp h                                          ; $5cd1: $bc
    push af                                       ; $5cd2: $f5
    ld h, a                                       ; $5cd3: $67
    or d                                          ; $5cd4: $b2
    ret nc                                        ; $5cd5: $d0

    sbc b                                         ; $5cd6: $98
    ld h, [hl]                                    ; $5cd7: $66
    adc e                                         ; $5cd8: $8b
    xor e                                         ; $5cd9: $ab
    cp e                                          ; $5cda: $bb
    ld [hl], h                                    ; $5cdb: $74
    ld h, $e8                                     ; $5cdc: $26 $e8
    jp z, Jump_000_00f7                           ; $5cde: $ca $f7 $00

    halt                                          ; $5ce1: $76
    ld a, [de]                                    ; $5ce2: $1a
    ld d, d                                       ; $5ce3: $52
    ld [hl], d                                    ; $5ce4: $72
    ld d, $c7                                     ; $5ce5: $16 $c7
    ld de, $dd17                                  ; $5ce7: $11 $17 $dd
    ld c, h                                       ; $5cea: $4c
    ld d, $1a                                     ; $5ceb: $16 $1a
    db $d3                                        ; $5ced: $d3
    ld l, h                                       ; $5cee: $6c
    ld [hl], c                                    ; $5cef: $71
    ld d, $c7                                     ; $5cf0: $16 $c7
    ldh a, [rBGP]                                 ; $5cf2: $f0 $47
    adc l                                         ; $5cf4: $8d
    ccf                                           ; $5cf5: $3f
    ld [hl], h                                    ; $5cf6: $74
    xor h                                         ; $5cf7: $ac
    db $fc                                        ; $5cf8: $fc
    ld c, h                                       ; $5cf9: $4c
    sub $9d                                       ; $5cfa: $d6 $9d
    add [hl]                                      ; $5cfc: $86
    ld l, a                                       ; $5cfd: $6f
    sbc d                                         ; $5cfe: $9a
    dec l                                         ; $5cff: $2d
    adc $73                                       ; $5d00: $ce $73
    ld b, [hl]                                    ; $5d02: $46
    or d                                          ; $5d03: $b2
    ld c, [hl]                                    ; $5d04: $4e
    add l                                         ; $5d05: $85
    rst $08                                       ; $5d06: $cf
    cp $45                                        ; $5d07: $fe $45
    xor h                                         ; $5d09: $ac
    scf                                           ; $5d0a: $37
    nop                                           ; $5d0b: $00
    add c                                         ; $5d0c: $81
    ld l, l                                       ; $5d0d: $6d
    pop de                                        ; $5d0e: $d1
    ld d, l                                       ; $5d0f: $55
    ld a, [de]                                    ; $5d10: $1a
    push hl                                       ; $5d11: $e5
    ld h, a                                       ; $5d12: $67
    ld [hl], c                                    ; $5d13: $71
    call c, $a987                                 ; $5d14: $dc $87 $a9
    pop af                                        ; $5d17: $f1
    dec b                                         ; $5d18: $05
    ld a, $df                                     ; $5d19: $3e $df
    call nz, Call_03f_67e6                        ; $5d1b: $c4 $e6 $67
    ld [hl], c                                    ; $5d1e: $71
    inc e                                         ; $5d1f: $1c

jr_03f_5d20:
    ld [hl], l                                    ; $5d20: $75
    ld c, $7f                                     ; $5d21: $0e $7f
    dec e                                         ; $5d23: $1d
    ld b, a                                       ; $5d24: $47
    db $fc                                        ; $5d25: $fc
    sbc c                                         ; $5d26: $99
    xor h                                         ; $5d27: $ac
    dec sp                                        ; $5d28: $3b
    dec c                                         ; $5d29: $0d
    rst $18                                       ; $5d2a: $df
    inc [hl]                                      ; $5d2b: $34
    ld e, e                                       ; $5d2c: $5b
    sbc h                                         ; $5d2d: $9c
    rst $20                                       ; $5d2e: $e7
    adc h                                         ; $5d2f: $8c
    ld h, h                                       ; $5d30: $64
    sbc l                                         ; $5d31: $9d
    ld a, [bc]                                    ; $5d32: $0a
    sbc a                                         ; $5d33: $9f
    db $fd                                        ; $5d34: $fd
    adc e                                         ; $5d35: $8b
    ld e, b                                       ; $5d36: $58
    ld l, a                                       ; $5d37: $6f
    nop                                           ; $5d38: $00
    sub a                                         ; $5d39: $97
    ld [hl], c                                    ; $5d3a: $71
    ld e, a                                       ; $5d3b: $5f
    ld l, c                                       ; $5d3c: $69
    ld a, [$3ac2]                                 ; $5d3d: $fa $c2 $3a
    ld [hl], l                                    ; $5d40: $75
    add $3d                                       ; $5d41: $c6 $3d
    ld a, [$295c]                                 ; $5d43: $fa $5c $29
    add h                                         ; $5d46: $84
    inc e                                         ; $5d47: $1c

Call_03f_5d48:
    rst $20                                       ; $5d48: $e7
    ldh a, [$87]                                  ; $5d49: $f0 $87
    adc [hl]                                      ; $5d4b: $8e
    sub l                                         ; $5d4c: $95
    sbc a                                         ; $5d4d: $9f
    ret                                           ; $5d4e: $c9


    cp d                                          ; $5d4f: $ba
    db $d3                                        ; $5d50: $d3
    ldh a, [rKEY1]                                ; $5d51: $f0 $4d
    or e                                          ; $5d53: $b3
    push bc                                       ; $5d54: $c5
    dec de                                        ; $5d55: $1b
    nop                                           ; $5d56: $00
    halt                                          ; $5d57: $76
    cp d                                          ; $5d58: $ba
    sbc b                                         ; $5d59: $98

Call_03f_5d5a:
    ld a, $57                                     ; $5d5a: $3e $57
    ld [hl], d                                    ; $5d5c: $72
    ld d, $c7                                     ; $5d5d: $16 $c7
    ld b, l                                       ; $5d5f: $45
    ld [hl+], a                                   ; $5d60: $22
    sub h                                         ; $5d61: $94
    ei                                            ; $5d62: $fb
    ld h, b                                       ; $5d63: $60
    jp z, Jump_03f_6eaf                           ; $5d64: $ca $af $6e

    ld e, d                                       ; $5d67: $5a
    daa                                           ; $5d68: $27
    ld a, h                                       ; $5d69: $7c
    or $2f                                        ; $5d6a: $f6 $2f
    ld h, d                                       ; $5d6c: $62
    cp l                                          ; $5d6d: $bd
    ld bc, $737d                                  ; $5d6e: $01 $7d $73
    ld [hl], l                                    ; $5d71: $75
    sub a                                         ; $5d72: $97
    adc $64                                       ; $5d73: $ce $64
    db $dd                                        ; $5d75: $dd
    ld l, c                                       ; $5d76: $69
    ld hl, sp-$5a                                 ; $5d77: $f8 $a6
    dec h                                         ; $5d79: $25
    ld d, d                                       ; $5d7a: $52
    rla                                           ; $5d7b: $17
    and [hl]                                      ; $5d7c: $a6
    db $ec                                        ; $5d7d: $ec
    add e                                         ; $5d7e: $83
    add hl, hl                                    ; $5d7f: $29
    rrca                                          ; $5d80: $0f
    sbc a                                         ; $5d81: $9f
    db $fd                                        ; $5d82: $fd
    adc e                                         ; $5d83: $8b
    ld e, b                                       ; $5d84: $58
    ld l, a                                       ; $5d85: $6f
    nop                                           ; $5d86: $00
    ld d, a                                       ; $5d87: $57
    jr c, jr_03f_5d20                             ; $5d88: $38 $96

    ld a, [bc]                                    ; $5d8a: $0a
    ld d, a                                       ; $5d8b: $57
    inc e                                         ; $5d8c: $1c
    and c                                         ; $5d8d: $a1
    add h                                         ; $5d8e: $84
    rst $08                                       ; $5d8f: $cf
    cp $45                                        ; $5d90: $fe $45
    xor h                                         ; $5d92: $ac
    rst $30                                       ; $5d93: $f7
    ld a, [$c2e6]                                 ; $5d94: $fa $e6 $c2
    sub a                                         ; $5d97: $97
    rst $00                                       ; $5d98: $c7
    ld a, c                                       ; $5d99: $79
    xor [hl]                                      ; $5d9a: $ae
    inc d                                         ; $5d9b: $14
    ld b, d                                       ; $5d9c: $42
    cpl                                           ; $5d9d: $2f
    inc sp                                        ; $5d9e: $33
    ld e, c                                       ; $5d9f: $59
    ld [hl], a                                    ; $5da0: $77
    ld a, [de]                                    ; $5da1: $1a
    cp [hl]                                       ; $5da2: $be
    ld l, c                                       ; $5da3: $69
    adc c                                         ; $5da4: $89
    call nc, Call_03f_63a1                        ; $5da5: $d4 $a1 $63
    push hl                                       ; $5da8: $e5
    push af                                       ; $5da9: $f5
    ld b, $f6                                     ; $5daa: $06 $f6
    cp l                                          ; $5dac: $bd
    ld l, $bd                                     ; $5dad: $2e $bd

jr_03f_5daf:
    db $f4                                        ; $5daf: $f4
    ld [$5c05], a                                 ; $5db0: $ea $05 $5c
    ld a, h                                       ; $5db3: $7c
    reti                                          ; $5db4: $d9


    ld h, l                                       ; $5db5: $65
    halt                                          ; $5db6: $76
    sub a                                         ; $5db7: $97
    jp nz, $8267                                  ; $5db8: $c2 $67 $82

    cpl                                           ; $5dbb: $2f
    ld l, a                                       ; $5dbc: $6f
    ld [hl+], a                                   ; $5dbd: $22
    ld b, l                                       ; $5dbe: $45
    pop hl                                        ; $5dbf: $e1
    jp $a9af                                      ; $5dc0: $c3 $af $a9


    ld a, e                                       ; $5dc3: $7b
    db $f4                                        ; $5dc4: $f4
    inc de                                        ; $5dc5: $13
    sub [hl]                                      ; $5dc6: $96
    adc a                                         ; $5dc7: $8f
    db $f4                                        ; $5dc8: $f4
    ld l, e                                       ; $5dc9: $6b
    add sp, -$65                                  ; $5dca: $e8 $9b
    ld l, c                                       ; $5dcc: $69
    cp a                                          ; $5dcd: $bf
    rla                                           ; $5dce: $17
    ld l, $ca                                     ; $5dcf: $2e $ca
    ld a, e                                       ; $5dd1: $7b
    sub $2f                                       ; $5dd2: $d6 $2f
    jr nc, @+$76                                  ; $5dd4: $30 $74

    ld e, c                                       ; $5dd6: $59
    cp l                                          ; $5dd7: $bd
    ld b, a                                       ; $5dd8: $47
    ccf                                           ; $5dd9: $3f
    ret c                                         ; $5dda: $d8

    cp e                                          ; $5ddb: $bb
    ld a, [c]                                     ; $5ddc: $f2
    dec b                                         ; $5ddd: $05
    add hl, hl                                    ; $5dde: $29
    dec sp                                        ; $5ddf: $3b
    ld e, e                                       ; $5de0: $5b
    ld d, d                                       ; $5de1: $52
    rst $28                                       ; $5de2: $ef
    ld e, l                                       ; $5de3: $5d
    ld [hl], a                                    ; $5de4: $77
    sbc b                                         ; $5de5: $98
    ld e, $7d                                     ; $5de6: $1e $7d
    call z, Call_000_00e1                         ; $5de8: $cc $e1 $00
    sub a                                         ; $5deb: $97
    ld [hl], c                                    ; $5dec: $71
    pop bc                                        ; $5ded: $c1
    rst $00                                       ; $5dee: $c7
    ld sp, hl                                     ; $5def: $f9
    rst $30                                       ; $5df0: $f7
    add hl, sp                                    ; $5df1: $39
    add a                                         ; $5df2: $87
    cp a                                          ; $5df3: $bf
    jp z, $8b4b                                   ; $5df4: $ca $4b $8b

    rrca                                          ; $5df7: $0f
    ld e, a                                       ; $5df8: $5f
    scf                                           ; $5df9: $37
    sub [hl]                                      ; $5dfa: $96
    or c                                          ; $5dfb: $b1
    or b                                          ; $5dfc: $b0
    ld h, $c6                                     ; $5dfd: $26 $c6
    ld e, h                                       ; $5dff: $5c
    jr z, jr_03f_5daf                             ; $5e00: $28 $ad

    ld c, [hl]                                    ; $5e02: $4e
    pop af                                        ; $5e03: $f1
    db $ed                                        ; $5e04: $ed
    srl h                                         ; $5e05: $cb $3c
    ld h, a                                       ; $5e07: $67
    call c, $8b17                                 ; $5e08: $dc $17 $8b
    ld l, e                                       ; $5e0b: $6b
    sub h                                         ; $5e0c: $94
    push de                                       ; $5e0d: $d5
    rrca                                          ; $5e0e: $0f
    push hl                                       ; $5e0f: $e5
    ld [hl], d                                    ; $5e10: $72
    dec e                                         ; $5e11: $1d
    ld [hl], c                                    ; $5e12: $71
    db $fd                                        ; $5e13: $fd
    cp [hl]                                       ; $5e14: $be
    rst $00                                       ; $5e15: $c7
    ld a, d                                       ; $5e16: $7a
    dec b                                         ; $5e17: $05
    ld d, e                                       ; $5e18: $53
    ld a, [hl]                                    ; $5e19: $7e
    and c                                         ; $5e1a: $a1
    and e                                         ; $5e1b: $a3
    and a                                         ; $5e1c: $a7
    xor [hl]                                      ; $5e1d: $ae
    inc a                                         ; $5e1e: $3c
    or $7f                                        ; $5e1f: $f6 $7f
    add hl, de                                    ; $5e21: $19
    bit 0, d                                      ; $5e22: $cb $42
    ld l, c                                       ; $5e24: $69
    dec [hl]                                      ; $5e25: $35
    dec h                                         ; $5e26: $25
    rst $20                                       ; $5e27: $e7
    cp c                                          ; $5e28: $b9
    sub d                                         ; $5e29: $92
    cp d                                          ; $5e2a: $ba
    jp c, Jump_03f_6099                           ; $5e2b: $da $99 $60

    ld [$3482], a                                 ; $5e2e: $ea $82 $34
    pop bc                                        ; $5e31: $c1
    sub $3f                                       ; $5e32: $d6 $3f
    ld [hl], l                                    ; $5e34: $75
    ld d, $c7                                     ; $5e35: $16 $c7
    ld a, l                                       ; $5e37: $7d
    jr z, jr_03f_5e7e                             ; $5e38: $28 $44

    ld c, a                                       ; $5e3a: $4f
    jp hl                                         ; $5e3b: $e9


    jp nc, $001b                                  ; $5e3c: $d2 $1b $00

    db $dd                                        ; $5e3f: $dd
    ld [bc], a                                    ; $5e40: $02
    ld d, d                                       ; $5e41: $52
    ld d, [hl]                                    ; $5e42: $56
    db $dd                                        ; $5e43: $dd
    ld [hl], b                                    ; $5e44: $70
    call nc, $a5d8                                ; $5e45: $d4 $d8 $a5
    di                                            ; $5e48: $f3
    call nz, Call_000_3928                        ; $5e49: $c4 $28 $39
    rst $08                                       ; $5e4c: $cf
    sub l                                         ; $5e4d: $95
    sbc a                                         ; $5e4e: $9f
    jp hl                                         ; $5e4f: $e9


    xor d                                         ; $5e50: $aa
    ld e, a                                       ; $5e51: $5f
    ld a, [hl]                                    ; $5e52: $7e
    sbc [hl]                                      ; $5e53: $9e
    adc e                                         ; $5e54: $8b

Call_03f_5e55:
    ld l, [hl]                                    ; $5e55: $6e
    push de                                       ; $5e56: $d5
    ld e, a                                       ; $5e57: $5f
    or a                                          ; $5e58: $b7
    jp nc, $c7be                                  ; $5e59: $d2 $be $c7

    cp d                                          ; $5e5c: $ba
    reti                                          ; $5e5d: $d9


    jp hl                                         ; $5e5e: $e9


    ld a, h                                       ; $5e5f: $7c
    xor e                                         ; $5e60: $ab
    or [hl]                                       ; $5e61: $b6
    ld sp, $ccad                                  ; $5e62: $31 $ad $cc
    ld [hl], e                                    ; $5e65: $73
    ld b, [hl]                                    ; $5e66: $46
    ld c, b                                       ; $5e67: $48
    sbc c                                         ; $5e68: $99
    push bc                                       ; $5e69: $c5
    ld [hl], c                                    ; $5e6a: $71
    add sp, -$30                                  ; $5e6b: $e8 $d0
    db $fc                                        ; $5e6d: $fc
    add d                                         ; $5e6e: $82
    ld l, a                                       ; $5e6f: $6f
    ld a, l                                       ; $5e70: $7d
    sbc l                                         ; $5e71: $9d
    ld a, [hl]                                    ; $5e72: $7e
    and a                                         ; $5e73: $a7
    ld sp, hl                                     ; $5e74: $f9

Call_03f_5e75:
    inc e                                         ; $5e75: $1c
    cp [hl]                                       ; $5e76: $be
    rst $38                                       ; $5e77: $ff
    ld a, c                                       ; $5e78: $79
    adc [hl]                                      ; $5e79: $8e
    and l                                         ; $5e7a: $a5
    ld a, h                                       ; $5e7b: $7c
    rrca                                          ; $5e7c: $0f
    nop                                           ; $5e7d: $00

jr_03f_5e7e:
    db $dd                                        ; $5e7e: $dd
    db $ec                                        ; $5e7f: $ec
    ld e, a                                       ; $5e80: $5f
    rla                                           ; $5e81: $17
    add hl, hl                                    ; $5e82: $29
    ld [hl], l                                    ; $5e83: $75
    jp $39f7                                      ; $5e84: $c3 $f7 $39


    rst $08                                       ; $5e87: $cf
    sbc c                                         ; $5e88: $99
    xor h                                         ; $5e89: $ac
    ld b, e                                       ; $5e8a: $43
    ld a, c                                       ; $5e8b: $79
    ld e, c                                       ; $5e8c: $59
    ld c, h                                       ; $5e8d: $4c
    sbc a                                         ; $5e8e: $9f
    cp d                                          ; $5e8f: $ba
    sub d                                         ; $5e90: $92
    cp d                                          ; $5e91: $ba
    sub a                                         ; $5e92: $97
    ld l, b                                       ; $5e93: $68
    ld h, e                                       ; $5e94: $63
    ld e, h                                       ; $5e95: $5c
    ld c, c                                       ; $5e96: $49
    sbc l                                         ; $5e97: $9d
    rst $20                                       ; $5e98: $e7
    jp z, $34af                                   ; $5e99: $ca $af $34

    adc l                                         ; $5e9c: $8d
    ccf                                           ; $5e9d: $3f
    rst $08                                       ; $5e9e: $cf
    ld [hl-], a                                   ; $5e9f: $32
    sub e                                         ; $5ea0: $93
    add l                                         ; $5ea1: $85
    ld d, b                                       ; $5ea2: $50
    rr [hl]                                       ; $5ea3: $cb $1e
    db $eb                                        ; $5ea5: $eb
    sub $2b                                       ; $5ea6: $d6 $2b
    sbc b                                         ; $5ea8: $98
    ld a, [c]                                     ; $5ea9: $f2
    dec bc                                        ; $5eaa: $0b
    dec e                                         ; $5eab: $1d
    dec a                                         ; $5eac: $3d
    ld [hl], l                                    ; $5ead: $75
    push af                                       ; $5eae: $f5
    adc e                                         ; $5eaf: $8b
    add hl, bc                                    ; $5eb0: $09
    cp [hl]                                       ; $5eb1: $be
    ld b, h                                       ; $5eb2: $44
    xor $67                                       ; $5eb3: $ee $67
    sbc a                                         ; $5eb5: $9f
    db $10                                        ; $5eb6: $10
    call z, $a897                                 ; $5eb7: $cc $97 $a8
    dec a                                         ; $5eba: $3d
    nop                                           ; $5ebb: $00
    db $dd                                        ; $5ebc: $dd
    db $ec                                        ; $5ebd: $ec
    ld e, a                                       ; $5ebe: $5f
    rst $20                                       ; $5ebf: $e7
    add hl, hl                                    ; $5ec0: $29
    sub d                                         ; $5ec1: $92
    pop af                                        ; $5ec2: $f1
    ld a, l                                       ; $5ec3: $7d
    adc $24                                       ; $5ec4: $ce $24
    ld l, $48                                     ; $5ec6: $2e $48
    inc de                                        ; $5ec8: $13
    ld l, h                                       ; $5ec9: $6c
    db $fd                                        ; $5eca: $fd
    ld d, e                                       ; $5ecb: $53
    rst $30                                       ; $5ecc: $f7
    ld h, l                                       ; $5ecd: $65
    ld b, h                                       ; $5ece: $44
    ld c, b                                       ; $5ecf: $48
    ld l, b                                       ; $5ed0: $68

jr_03f_5ed1:
    db $e3                                        ; $5ed1: $e3
    ld [hl], e                                    ; $5ed2: $73
    sbc [hl]                                      ; $5ed3: $9e
    dec sp                                        ; $5ed4: $3b
    ld b, a                                       ; $5ed5: $47
    sbc $64                                       ; $5ed6: $de $64
    adc a                                         ; $5ed8: $8f
    ld [hl], l                                    ; $5ed9: $75
    cp e                                          ; $5eda: $bb
    call nz, $8571                                ; $5edb: $c4 $71 $85
    db $d3                                        ; $5ede: $d3
    ld h, $95                                     ; $5edf: $26 $95
    sbc a                                         ; $5ee1: $9f
    rst $20                                       ; $5ee2: $e7
    ld a, [bc]                                    ; $5ee3: $0a
    adc l                                         ; $5ee4: $8d

Call_03f_5ee5:
    ld l, c                                       ; $5ee5: $69
    or [hl]                                       ; $5ee6: $b6
    cp b                                          ; $5ee7: $b8
    jr nc, jr_03f_5f4f                            ; $5ee8: $30 $65

    pop bc                                        ; $5eea: $c1
    rst $28                                       ; $5eeb: $ef
    sub h                                         ; $5eec: $94
    sub a                                         ; $5eed: $97
    cp l                                          ; $5eee: $bd
    jp c, Jump_03f_73cc                           ; $5eef: $da $cc $73

    pop de                                        ; $5ef2: $d1
    jp hl                                         ; $5ef3: $e9


    ret nc                                        ; $5ef4: $d0

    or c                                          ; $5ef5: $b1
    sub d                                         ; $5ef6: $92
    cp d                                          ; $5ef7: $ba
    xor a                                         ; $5ef8: $af

jr_03f_5ef9:
    dec de                                        ; $5ef9: $1b
    sub h                                         ; $5efa: $94
    jp c, $0003                                   ; $5efb: $da $03 $00

    or $af                                        ; $5efe: $f6 $af
    inc sp                                        ; $5f00: $33
    adc c                                         ; $5f01: $89
    ld c, d                                       ; $5f02: $4a
    ret z                                         ; $5f03: $c8

    dec [hl]                                      ; $5f04: $35

Call_03f_5f05:
    sbc a                                         ; $5f05: $9f
    inc sp                                        ; $5f06: $33
    ld [c], a                                     ; $5f07: $e2
    ld a, [$8cbf]                                 ; $5f08: $fa $bf $8c
    ld h, l                                       ; $5f0b: $65
    push hl                                       ; $5f0c: $e5
    and c                                         ; $5f0d: $a1
    sbc h                                         ; $5f0e: $9c
    ld [hl], l                                    ; $5f0f: $75
    ld b, h                                       ; $5f10: $44
    sub e                                         ; $5f11: $93
    jr jr_03f_5ef9                                ; $5f12: $18 $e5

    ld h, l                                       ; $5f14: $65
    inc l                                         ; $5f15: $2c
    inc sp                                        ; $5f16: $33
    ld e, a                                       ; $5f17: $5f
    scf                                           ; $5f18: $37
    call z, $cafd                                 ; $5f19: $cc $fd $ca
    xor a                                         ; $5f1c: $af
    cp $fe                                        ; $5f1d: $fe $fe
    ld [hl], l                                    ; $5f1f: $75
    adc d                                         ; $5f20: $8a
    db $fc                                        ; $5f21: $fc
    cp l                                          ; $5f22: $bd
    xor e                                         ; $5f23: $ab
    rla                                           ; $5f24: $17
    and [hl]                                      ; $5f25: $a6
    xor h                                         ; $5f26: $ac
    cp d                                          ; $5f27: $ba
    pop hl                                        ; $5f28: $e1
    xor b                                         ; $5f29: $a8
    or c                                          ; $5f2a: $b1
    ld c, e                                       ; $5f2b: $4b
    rst $30                                       ; $5f2c: $f7
    ld d, $67                                     ; $5f2d: $16 $67
    ld [hl], e                                    ; $5f2f: $73
    rst $18                                       ; $5f30: $df
    ld [hl], a                                    ; $5f31: $77
    scf                                           ; $5f32: $37
    ld [c], a                                     ; $5f33: $e2
    db $ec                                        ; $5f34: $ec
    inc de                                        ; $5f35: $13
    add d                                         ; $5f36: $82
    ld sp, hl                                     ; $5f37: $f9
    ld [de], a                                    ; $5f38: $12
    or l                                          ; $5f39: $b5
    rlca                                          ; $5f3a: $07
    nop                                           ; $5f3b: $00
    ld bc, $a88d                                  ; $5f3c: $01 $8d $a8
    xor a                                         ; $5f3f: $af
    or e                                          ; $5f40: $b3
    jr c, jr_03f_5ed1                             ; $5f41: $38 $8e

    ld a, [hl-]                                   ; $5f43: $3a
    add a                                         ; $5f44: $87
    ccf                                           ; $5f45: $3f
    ld [hl], l                                    ; $5f46: $75
    sub h                                         ; $5f47: $94
    ret z                                         ; $5f48: $c8

    dec b                                         ; $5f49: $05
    cp a                                          ; $5f4a: $bf
    ld b, e                                       ; $5f4b: $43
    sbc c                                         ; $5f4c: $99
    ld [hl], $9f                                  ; $5f4d: $36 $9f

jr_03f_5f4f:
    ld d, e                                       ; $5f4f: $53
    ld d, $1a                                     ; $5f50: $16 $1a
    db $d3                                        ; $5f52: $d3
    ld [de], a                                    ; $5f53: $12
    rst $18                                       ; $5f54: $df
    rst $20                                       ; $5f55: $e7
    jp nz, $df97                                  ; $5f56: $c2 $97 $df

    ld a, c                                       ; $5f59: $79
    ld h, d                                       ; $5f5a: $62
    xor l                                         ; $5f5b: $ad
    xor [hl]                                      ; $5f5c: $ae
    ld l, [hl]                                    ; $5f5d: $6e
    add sp, $53                                   ; $5f5e: $e8 $53
    xor $05                                       ; $5f60: $ee $05
    ld [hl], d                                    ; $5f62: $72
    ld [c], a                                     ; $5f63: $e2
    ld [$fe14], a                                 ; $5f64: $ea $14 $fe
    inc l                                         ; $5f67: $2c
    adc [hl]                                      ; $5f68: $8e
    dec bc                                        ; $5f69: $0b
    cp [hl]                                       ; $5f6a: $be
    ld [hl], l                                    ; $5f6b: $75
    ld c, $7f                                     ; $5f6c: $0e $7f
    add sp, $58                                   ; $5f6e: $e8 $58
    ld sp, hl                                     ; $5f70: $f9
    sbc c                                         ; $5f71: $99
    xor h                                         ; $5f72: $ac
    dec sp                                        ; $5f73: $3b
    dec c                                         ; $5f74: $0d
    rst $18                                       ; $5f75: $df
    inc [hl]                                      ; $5f76: $34
    ld e, e                                       ; $5f77: $5b
    sbc h                                         ; $5f78: $9c
    rst $20                                       ; $5f79: $e7
    adc h                                         ; $5f7a: $8c
    ld h, h                                       ; $5f7b: $64
    sbc l                                         ; $5f7c: $9d
    ld a, [hl-]                                   ; $5f7d: $3a
    ld [c], a                                     ; $5f7e: $e2
    ld e, b                                       ; $5f7f: $58
    sub $bb                                       ; $5f80: $d6 $bb
    cp b                                          ; $5f82: $b8
    adc $3c                                       ; $5f83: $ce $3c
    rst $10                                       ; $5f85: $d7
    dec sp                                        ; $5f86: $3b
    dec bc                                        ; $5f87: $0b
    adc l                                         ; $5f88: $8d
    ld l, c                                       ; $5f89: $69
    adc c                                         ; $5f8a: $89
    ld c, l                                       ; $5f8b: $4d
    db $e3                                        ; $5f8c: $e3
    db $eb                                        ; $5f8d: $eb
    inc a                                         ; $5f8e: $3c
    rst $10                                       ; $5f8f: $d7
    ld e, e                                       ; $5f90: $5b
    or d                                          ; $5f91: $b2
    ld c, [hl]                                    ; $5f92: $4e
    sbc l                                         ; $5f93: $9d
    rst $20                                       ; $5f94: $e7

Jump_03f_5f95:
    ld a, [$943c]                                 ; $5f95: $fa $3c $94
    ld a, d                                       ; $5f98: $7a
    inc bc                                        ; $5f99: $03
    db $dd                                        ; $5f9a: $dd
    db $ec                                        ; $5f9b: $ec
    ld e, a                                       ; $5f9c: $5f
    ld h, a                                       ; $5f9d: $67
    ld [de], a                                    ; $5f9e: $12
    sub l                                         ; $5f9f: $95
    sub b                                         ; $5fa0: $90
    ld l, e                                       ; $5fa1: $6b
    ld a, $57                                     ; $5fa2: $3e $57
    ld d, d                                       ; $5fa4: $52
    rst $10                                       ; $5fa5: $d7
    db $10                                        ; $5fa6: $10
    ld [de], a                                    ; $5fa7: $12
    ld a, [$8c46]                                 ; $5fa8: $fa $46 $8c
    call nc, Call_000_1c59                        ; $5fab: $d4 $59 $1c
    rla                                           ; $5fae: $17
    ld [hl], $df                                  ; $5faf: $36 $df
    ld l, h                                       ; $5fb1: $6c
    rla                                           ; $5fb2: $17
    adc b                                         ; $5fb3: $88
    rra                                           ; $5fb4: $1f
    or d                                          ; $5fb5: $b2
    rst $00                                       ; $5fb6: $c7
    ld a, d                                       ; $5fb7: $7a
    dec d                                         ; $5fb8: $15
    ret z                                         ; $5fb9: $c8

    dec [hl]                                      ; $5fba: $35
    ld [c], a                                     ; $5fbb: $e2
    ld [hl+], a                                   ; $5fbc: $22
    rst $20                                       ; $5fbd: $e7
    sbc e                                         ; $5fbe: $9b
    pop hl                                        ; $5fbf: $e1
    inc l                                         ; $5fc0: $2c
    adc [hl]                                      ; $5fc1: $8e
    dec bc                                        ; $5fc2: $0b
    cp [hl]                                       ; $5fc3: $be
    ld [hl], l                                    ; $5fc4: $75
    ld c, $7f                                     ; $5fc5: $0e $7f
    add sp, $58                                   ; $5fc7: $e8 $58
    ld sp, hl                                     ; $5fc9: $f9
    sbc c                                         ; $5fca: $99
    xor h                                         ; $5fcb: $ac
    dec sp                                        ; $5fcc: $3b
    dec c                                         ; $5fcd: $0d
    rst $18                                       ; $5fce: $df
    inc [hl]                                      ; $5fcf: $34
    ld e, e                                       ; $5fd0: $5b
    sbc h                                         ; $5fd1: $9c
    rst $20                                       ; $5fd2: $e7
    adc h                                         ; $5fd3: $8c
    ld h, h                                       ; $5fd4: $64
    sbc l                                         ; $5fd5: $9d
    ld a, [hl-]                                   ; $5fd6: $3a
    ld [c], a                                     ; $5fd7: $e2
    ld e, b                                       ; $5fd8: $58
    sub $bb                                       ; $5fd9: $d6 $bb
    cp b                                          ; $5fdb: $b8
    adc $3c                                       ; $5fdc: $ce $3c
    rst $10                                       ; $5fde: $d7
    dec sp                                        ; $5fdf: $3b
    dec bc                                        ; $5fe0: $0b
    adc l                                         ; $5fe1: $8d
    ld l, c                                       ; $5fe2: $69
    adc c                                         ; $5fe3: $89
    ld c, l                                       ; $5fe4: $4d
    db $e3                                        ; $5fe5: $e3
    db $eb                                        ; $5fe6: $eb
    inc a                                         ; $5fe7: $3c
    rst $10                                       ; $5fe8: $d7
    ld e, e                                       ; $5fe9: $5b
    or d                                          ; $5fea: $b2
    ld c, [hl]                                    ; $5feb: $4e
    cp l                                          ; $5fec: $bd
    ld bc, $ecdd                                  ; $5fed: $01 $dd $ec
    ld e, a                                       ; $5ff0: $5f
    and a                                         ; $5ff1: $a7
    ld e, a                                       ; $5ff2: $5f
    ld a, [hl+]                                   ; $5ff3: $2a
    rst $28                                       ; $5ff4: $ef
    ld [hl], e                                    ; $5ff5: $73
    ccf                                           ; $5ff6: $3f
    ei                                            ; $5ff7: $fb
    add h                                         ; $5ff8: $84
    ld h, b                                       ; $5ff9: $60
    cp [hl]                                       ; $5ffa: $be
    ld b, h                                       ; $5ffb: $44
    sbc l                                         ; $5ffc: $9d
    rst $20                                       ; $5ffd: $e7
    jp z, Jump_03f_6bef                           ; $5ffe: $ca $ef $6b

    ld [c], a                                     ; $6001: $e2
    rst $30                                       ; $6002: $f7
    rst $38                                       ; $6003: $ff
    ld a, c                                       ; $6004: $79
    adc $e1                                       ; $6005: $ce $e1
    ld c, h                                       ; $6007: $4c
    ld [hl+], a                                   ; $6008: $22
    ei                                            ; $6009: $fb
    push hl                                       ; $600a: $e5
    jp nz, Jump_000_2403                          ; $600b: $c2 $03 $24

    ld [hl], h                                    ; $600e: $74
    ld a, [c]                                     ; $600f: $f2
    inc hl                                        ; $6010: $23
    xor [hl]                                      ; $6011: $ae
    sub h                                         ; $6012: $94
    xor a                                         ; $6013: $af
    ld e, a                                       ; $6014: $5f
    ld a, e                                       ; $6015: $7b
    call z, Call_03f_4cae                         ; $6016: $cc $ae $4c
    ld e, h                                       ; $6019: $5c
    sbc l                                         ; $601a: $9d
    ld [hl-], a                                   ; $601b: $32
    rst $08                                       ; $601c: $cf
    ld e, c                                       ; $601d: $59
    inc e                                         ; $601e: $1c
    rla                                           ; $601f: $17
    ld a, h                                       ; $6020: $7c
    db $eb                                        ; $6021: $eb
    inc e                                         ; $6022: $1c
    cp $d0                                        ; $6023: $fe $d0
    or c                                          ; $6025: $b1
    ld a, [c]                                     ; $6026: $f2
    inc sp                                        ; $6027: $33
    ld e, c                                       ; $6028: $59
    ld [hl], a                                    ; $6029: $77
    ld a, [de]                                    ; $602a: $1a
    cp [hl]                                       ; $602b: $be
    ld l, c                                       ; $602c: $69
    or [hl]                                       ; $602d: $b6
    jr c, @-$2f                                   ; $602e: $38 $cf

    add hl, de                                    ; $6030: $19
    ret                                           ; $6031: $c9


    ld a, [hl-]                                   ; $6032: $3a
    ld [hl], l                                    ; $6033: $75
    call nz, $acb1                                ; $6034: $c4 $b1 $ac
    ld [hl], a                                    ; $6037: $77
    ld [hl], c                                    ; $6038: $71
    sbc l                                         ; $6039: $9d
    ld a, c                                       ; $603a: $79
    xor [hl]                                      ; $603b: $ae
    ld [hl], a                                    ; $603c: $77
    ld d, $1a                                     ; $603d: $16 $1a
    db $d3                                        ; $603f: $d3
    ld [de], a                                    ; $6040: $12
    sbc e                                         ; $6041: $9b
    add $d7                                       ; $6042: $c6 $d7
    ld a, c                                       ; $6044: $79
    xor [hl]                                      ; $6045: $ae
    or a                                          ; $6046: $b7
    ld h, h                                       ; $6047: $64
    sbc l                                         ; $6048: $9d
    ld a, [hl-]                                   ; $6049: $3a
    rst $08                                       ; $604a: $cf
    push af                                       ; $604b: $f5
    ld a, c                                       ; $604c: $79
    jr z, jr_03f_60c4                             ; $604d: $28 $75

    jp z, $9285                                   ; $604f: $ca $85 $92

    pop hl                                        ; $6052: $e1
    ld b, e                                       ; $6053: $43
    ccf                                           ; $6054: $3f
    sub e                                         ; $6055: $93
    ld [hl], l                                    ; $6056: $75
    adc [hl]                                      ; $6057: $8e
    ld h, l                                       ; $6058: $65
    push de                                       ; $6059: $d5
    adc [hl]                                      ; $605a: $8e
    ld d, b                                       ; $605b: $50
    sbc $00                                       ; $605c: $de $00
    db $dd                                        ; $605e: $dd
    db $ec                                        ; $605f: $ec
    ld e, a                                       ; $6060: $5f
    ld h, a                                       ; $6061: $67
    ld d, d                                       ; $6062: $52
    ld l, c                                       ; $6063: $69
    add d                                         ; $6064: $82
    rst $28                                       ; $6065: $ef
    ld [hl], e                                    ; $6066: $73
    push hl                                       ; $6067: $e5
    sbc l                                         ; $6068: $9d
    or b                                          ; $6069: $b0
    ld d, b                                       ; $606a: $50
    rla                                           ; $606b: $17
    and [hl]                                      ; $606c: $a6
    call z, Call_000_1d64                         ; $606d: $cc $64 $1d
    ld d, $c6                                     ; $6070: $16 $c6
    sub a                                         ; $6072: $97
    sub l                                         ; $6073: $95
    sbc a                                         ; $6074: $9f
    add hl, hl                                    ; $6075: $29
    xor a                                         ; $6076: $af
    sbc h                                         ; $6077: $9c
    rst $20                                       ; $6078: $e7
    db $ec                                        ; $6079: $ec
    add hl, hl                                    ; $607a: $29
    sbc l                                         ; $607b: $9d
    inc l                                         ; $607c: $2c
    add hl, bc                                    ; $607d: $09
    reti                                          ; $607e: $d9


    db $fc                                        ; $607f: $fc
    xor h                                         ; $6080: $ac
    inc sp                                        ; $6081: $33
    adc c                                         ; $6082: $89
    ld c, d                                       ; $6083: $4a
    ret z                                         ; $6084: $c8

    dec [hl]                                      ; $6085: $35
    ld e, c                                       ; $6086: $59
    ld a, c                                       ; $6087: $79
    ld e, l                                       ; $6088: $5d
    or l                                          ; $6089: $b5
    xor l                                         ; $608a: $ad
    call nc, $bcae                                ; $608b: $d4 $ae $bc
    ld l, $7c                                     ; $608e: $2e $7c
    ld sp, hl                                     ; $6090: $f9
    sub l                                         ; $6091: $95
    ld e, a                                       ; $6092: $5f
    sbc b                                         ; $6093: $98
    and [hl]                                      ; $6094: $a6
    reti                                          ; $6095: $d9


    ld h, d                                       ; $6096: $62
    adc a                                         ; $6097: $8f
    ld e, l                                       ; $6098: $5d

Jump_03f_6099:
    cp l                                          ; $6099: $bd
    ldh [$5b], a                                  ; $609a: $e0 $5b
    rst $20                                       ; $609c: $e7
    ldh a, [$87]                                  ; $609d: $f0 $87
    adc [hl]                                      ; $609f: $8e
    sub l                                         ; $60a0: $95
    sbc a                                         ; $60a1: $9f
    ret                                           ; $60a2: $c9


    cp d                                          ; $60a3: $ba
    db $d3                                        ; $60a4: $d3
    ldh a, [rKEY1]                                ; $60a5: $f0 $4d
    or e                                          ; $60a7: $b3
    push bc                                       ; $60a8: $c5
    ld a, c                                       ; $60a9: $79
    adc $48                                       ; $60aa: $ce $48
    sub $a9                                       ; $60ac: $d6 $a9
    di                                            ; $60ae: $f3
    ld c, l                                       ; $60af: $4d
    jp $d6c4                                      ; $60b0: $c3 $c4 $d6


    add hl, hl                                    ; $60b3: $29
    inc e                                         ; $60b4: $1c
    ld [hl], c                                    ; $60b5: $71
    inc l                                         ; $60b6: $2c
    db $eb                                        ; $60b7: $eb
    ld e, l                                       ; $60b8: $5d
    ld e, h                                       ; $60b9: $5c
    ld h, a                                       ; $60ba: $67
    sbc [hl]                                      ; $60bb: $9e
    db $eb                                        ; $60bc: $eb
    sbc l                                         ; $60bd: $9d
    add l                                         ; $60be: $85
    add $b4                                       ; $60bf: $c6 $b4
    call nz, $f1a6                                ; $60c1: $c4 $a6 $f1

jr_03f_60c4:
    ld [hl], l                                    ; $60c4: $75
    sbc [hl]                                      ; $60c5: $9e
    db $eb                                        ; $60c6: $eb
    dec l                                         ; $60c7: $2d
    ld e, c                                       ; $60c8: $59
    and a                                         ; $60c9: $a7
    adc $73                                       ; $60ca: $ce $73
    ld a, l                                       ; $60cc: $7d
    ld e, $4a                                     ; $60cd: $1e $4a
    cp l                                          ; $60cf: $bd
    ld bc, $ccbd                                  ; $60d0: $01 $bd $cc
    ld [hl], a                                    ; $60d3: $77
    ld e, [hl]                                    ; $60d4: $5e
    rst $20                                       ; $60d5: $e7
    cp c                                          ; $60d6: $b9
    adc [hl]                                      ; $60d7: $8e
    sub e                                         ; $60d8: $93
    ld a, [c]                                     ; $60d9: $f2
    or d                                          ; $60da: $b2
    ld e, a                                       ; $60db: $5f
    nop                                           ; $60dc: $00
    ld e, c                                       ; $60dd: $59
    and c                                         ; $60de: $a1
    adc $ba                                       ; $60df: $ce $ba
    ldh [$eb], a                                  ; $60e1: $e0 $eb
    adc b                                         ; $60e3: $88
    ld h, $31                                     ; $60e4: $26 $31
    jp z, Jump_000_1cfb                           ; $60e6: $ca $fb $1c

    bit 1, d                                      ; $60e9: $cb $4a
    db $eb                                        ; $60eb: $eb
    ld c, b                                       ; $60ec: $48
    ld c, [hl]                                    ; $60ed: $4e
    or d                                          ; $60ee: $b2
    di                                            ; $60ef: $f3
    ld a, $e7                                     ; $60f0: $3e $e7
    cp c                                          ; $60f2: $b9
    ld a, [c]                                     ; $60f3: $f2
    db $eb                                        ; $60f4: $eb
    or h                                          ; $60f5: $b4
    ld c, [hl]                                    ; $60f6: $4e
    ld l, c                                       ; $60f7: $69
    add hl, de                                    ; $60f8: $19
    ld l, c                                       ; $60f9: $69
    cp $de                                        ; $60fa: $fe $de
    add hl, sp                                    ; $60fc: $39
    db $ec                                        ; $60fd: $ec
    ld d, b                                       ; $60fe: $50
    ld l, h                                       ; $60ff: $6c
    ld e, [hl]                                    ; $6100: $5e
    ld d, a                                       ; $6101: $57
    ld c, b                                       ; $6102: $48
    ld e, c                                       ; $6103: $59
    ld a, c                                       ; $6104: $79
    dec e                                         ; $6105: $1d
    ld h, [hl]                                    ; $6106: $66
    ld l, h                                       ; $6107: $6c
    and [hl]                                      ; $6108: $a6
    cp l                                          ; $6109: $bd
    xor $0d                                       ; $610a: $ee $0d
    push bc                                       ; $610c: $c5
    db $fc                                        ; $610d: $fc
    inc a                                         ; $610e: $3c
    ld d, a                                       ; $610f: $57
    ld a, [hl]                                    ; $6110: $7e
    add sp, $58                                   ; $6111: $e8 $58
    ld sp, hl                                     ; $6113: $f9
    sbc c                                         ; $6114: $99
    xor h                                         ; $6115: $ac
    dec sp                                        ; $6116: $3b
    dec c                                         ; $6117: $0d
    rst $18                                       ; $6118: $df
    inc [hl]                                      ; $6119: $34
    ld e, e                                       ; $611a: $5b
    sbc h                                         ; $611b: $9c
    rst $20                                       ; $611c: $e7
    adc h                                         ; $611d: $8c
    ld h, h                                       ; $611e: $64
    sbc l                                         ; $611f: $9d
    ld a, [hl-]                                   ; $6120: $3a
    rst $08                                       ; $6121: $cf
    or d                                          ; $6122: $b2
    push af                                       ; $6123: $f5
    ld l, $ae                                     ; $6124: $2e $ae
    inc sp                                        ; $6126: $33
    rst $08                                       ; $6127: $cf
    push af                                       ; $6128: $f5
    adc $42                                       ; $6129: $ce $42
    ld h, e                                       ; $612b: $63
    ld e, d                                       ; $612c: $5a
    ld h, d                                       ; $612d: $62
    db $d3                                        ; $612e: $d3
    ld hl, sp+$3a                                 ; $612f: $f8 $3a
    rst $08                                       ; $6131: $cf
    push af                                       ; $6132: $f5
    sub [hl]                                      ; $6133: $96
    xor h                                         ; $6134: $ac
    ld d, e                                       ; $6135: $53
    rst $20                                       ; $6136: $e7
    cp c                                          ; $6137: $b9
    or e                                          ; $6138: $b3
    push bc                                       ; $6139: $c5
    push af                                       ; $613a: $f5
    ld a, e                                       ; $613b: $7b
    sbc l                                         ; $613c: $9d
    ld [hl], l                                    ; $613d: $75
    ld a, l                                       ; $613e: $7d
    ld e, $4a                                     ; $613f: $1e $4a
    db $dd                                        ; $6141: $dd
    cp c                                          ; $6142: $b9
    ld e, a                                       ; $6143: $5f
    and a                                         ; $6144: $a7
    and [hl]                                      ; $6145: $a6
    sbc $00                                       ; $6146: $de $00
    db $dd                                        ; $6148: $dd
    ld [bc], a                                    ; $6149: $02
    cp c                                          ; $614a: $b9
    ret z                                         ; $614b: $c8

    ld a, l                                       ; $614c: $7d
    ld b, a                                       ; $614d: $47
    adc b                                         ; $614e: $88
    ld b, e                                       ; $614f: $43
    rst $00                                       ; $6150: $c7
    jp z, Jump_03f_42eb                           ; $6151: $ca $eb $42

    ld b, a                                       ; $6154: $47
    adc c                                         ; $6155: $89
    xor a                                         ; $6156: $af
    ei                                            ; $6157: $fb
    ld [hl-], a                                   ; $6158: $32
    sub e                                         ; $6159: $93
    ld [hl], l                                    ; $615a: $75
    ld e, b                                       ; $615b: $58
    jr jr_03f_61bd                                ; $615c: $18 $5f

    ld d, [hl]                                    ; $615e: $56
    ld a, [hl]                                    ; $615f: $7e
    sbc l                                         ; $6160: $9d
    inc bc                                        ; $6161: $03
    call nc, $e8e2                                ; $6162: $d4 $e2 $e8
    ld a, a                                       ; $6165: $7f
    ld d, $c7                                     ; $6166: $16 $c7
    ld b, l                                       ; $6168: $45
    ld l, $2c                                     ; $6169: $2e $2c
    adc a                                         ; $616b: $8f
    sub c                                         ; $616c: $91
    or [hl]                                       ; $616d: $b6
    ld h, e                                       ; $616e: $63
    ld e, c                                       ; $616f: $59
    jr z, jr_03f_61cb                             ; $6170: $28 $59

    ld c, l                                       ; $6172: $4d
    ld c, l                                       ; $6173: $4d

Jump_03f_6174:
    reti                                          ; $6174: $d9


    reti                                          ; $6175: $d9


    dec c                                         ; $6176: $0d
    ld d, c                                       ; $6177: $51
    ld a, e                                       ; $6178: $7b
    inc l                                         ; $6179: $2c
    jr nz, jr_03f_61e1                            ; $617a: $20 $65

    pop de                                        ; $617c: $d1
    xor l                                         ; $617d: $ad
    ld a, [hl+]                                   ; $617e: $2a
    xor h                                         ; $617f: $ac
    ld d, $13                                     ; $6180: $16 $13
    cp [hl]                                       ; $6182: $be
    ret c                                         ; $6183: $d8

    adc b                                         ; $6184: $88
    call nc, $fc39                                ; $6185: $d4 $39 $fc
    and c                                         ; $6188: $a1
    ld h, e                                       ; $6189: $63
    push hl                                       ; $618a: $e5
    ld h, a                                       ; $618b: $67
    or d                                          ; $618c: $b2
    xor $34                                       ; $618d: $ee $34
    ld a, h                                       ; $618f: $7c
    db $d3                                        ; $6190: $d3
    ld l, h                                       ; $6191: $6c
    ld [hl], c                                    ; $6192: $71
    sbc [hl]                                      ; $6193: $9e
    inc sp                                        ; $6194: $33
    sub d                                         ; $6195: $92
    ld [hl], l                                    ; $6196: $75
    ld [$6388], a                                 ; $6197: $ea $88 $63
    ld e, c                                       ; $619a: $59
    rst $28                                       ; $619b: $ef
    ld [c], a                                     ; $619c: $e2
    ld a, [hl-]                                   ; $619d: $3a
    di                                            ; $619e: $f3
    ld e, h                                       ; $619f: $5c
    rst $28                                       ; $61a0: $ef
    inc l                                         ; $61a1: $2c
    inc [hl]                                      ; $61a2: $34
    and [hl]                                      ; $61a3: $a6
    dec h                                         ; $61a4: $25
    ld [hl], $8d                                  ; $61a5: $36 $8d
    xor a                                         ; $61a7: $af
    di                                            ; $61a8: $f3
    ld e, h                                       ; $61a9: $5c
    ld l, a                                       ; $61aa: $6f
    ret                                           ; $61ab: $c9


    ld a, [hl-]                                   ; $61ac: $3a
    ld [hl], l                                    ; $61ad: $75
    sbc [hl]                                      ; $61ae: $9e
    db $eb                                        ; $61af: $eb
    di                                            ; $61b0: $f3
    ld d, b                                       ; $61b1: $50
    ld [$000d], a                                 ; $61b2: $ea $0d $00
    db $dd                                        ; $61b5: $dd
    db $ec                                        ; $61b6: $ec
    ld e, a                                       ; $61b7: $5f
    daa                                           ; $61b8: $27
    inc [hl]                                      ; $61b9: $34
    ld l, $a4                                     ; $61ba: $2e $a4
    cp h                                          ; $61bc: $bc

jr_03f_61bd:
    rst $08                                       ; $61bd: $cf
    sub l                                         ; $61be: $95
    rst $18                                       ; $61bf: $df
    and l                                         ; $61c0: $a5
    inc [hl]                                      ; $61c1: $34
    add hl, hl                                    ; $61c2: $29
    cp $7d                                        ; $61c3: $fe $7d
    jp z, Jump_03f_73cf                           ; $61c5: $ca $cf $73

    ld a, l                                       ; $61c8: $7d
    ld e, c                                       ; $61c9: $59
    ld l, c                                       ; $61ca: $69

jr_03f_61cb:
    and l                                         ; $61cb: $a5
    or b                                          ; $61cc: $b0
    rst $00                                       ; $61cd: $c7

Jump_03f_61ce:
    ld l, $7a                                     ; $61ce: $2e $7a
    dec e                                         ; $61d0: $1d
    ld h, [hl]                                    ; $61d1: $66
    ld l, h                                       ; $61d2: $6c
    and [hl]                                      ; $61d3: $a6
    cp l                                          ; $61d4: $bd
    adc $73                                       ; $61d5: $ce $73
    ld d, $c7                                     ; $61d7: $16 $c7
    dec b                                         ; $61d9: $05
    rst $18                                       ; $61da: $df
    ld a, [hl-]                                   ; $61db: $3a
    add a                                         ; $61dc: $87
    ccf                                           ; $61dd: $3f
    ld [hl], h                                    ; $61de: $74
    xor h                                         ; $61df: $ac
    db $fc                                        ; $61e0: $fc

jr_03f_61e1:
    ld c, h                                       ; $61e1: $4c
    sub $9d                                       ; $61e2: $d6 $9d
    add [hl]                                      ; $61e4: $86
    ld l, a                                       ; $61e5: $6f
    sbc d                                         ; $61e6: $9a
    dec l                                         ; $61e7: $2d
    adc $73                                       ; $61e8: $ce $73
    ld b, [hl]                                    ; $61ea: $46
    or d                                          ; $61eb: $b2
    ld c, [hl]                                    ; $61ec: $4e
    dec e                                         ; $61ed: $1d
    ld [hl], c                                    ; $61ee: $71
    inc l                                         ; $61ef: $2c
    db $eb                                        ; $61f0: $eb
    ld e, l                                       ; $61f1: $5d
    ld e, h                                       ; $61f2: $5c
    ld h, a                                       ; $61f3: $67
    sbc [hl]                                      ; $61f4: $9e
    db $eb                                        ; $61f5: $eb
    sbc l                                         ; $61f6: $9d
    add l                                         ; $61f7: $85
    add $b4                                       ; $61f8: $c6 $b4
    call nz, $f1a6                                ; $61fa: $c4 $a6 $f1
    ld [hl], l                                    ; $61fd: $75
    sbc [hl]                                      ; $61fe: $9e
    db $eb                                        ; $61ff: $eb
    dec l                                         ; $6200: $2d
    ld e, c                                       ; $6201: $59
    and a                                         ; $6202: $a7
    adc $73                                       ; $6203: $ce $73
    ld a, l                                       ; $6205: $7d
    ld e, $4a                                     ; $6206: $1e $4a
    ld e, l                                       ; $6208: $5d
    push bc                                       ; $6209: $c5
    or c                                          ; $620a: $b1
    inc a                                         ; $620b: $3c
    adc $73                                       ; $620c: $ce $73
    ld c, $f7                                     ; $620e: $0e $f7
    push bc                                       ; $6210: $c5
    push de                                       ; $6211: $d5
    sbc b                                         ; $6212: $98
    ei                                            ; $6213: $fb
    ld h, l                                       ; $6214: $65
    sub h                                         ; $6215: $94
    cp h                                          ; $6216: $bc
    ld bc, $7197                                  ; $6217: $01 $97 $71
    rra                                           ; $621a: $1f
    ld a, [hl-]                                   ; $621b: $3a
    adc h                                         ; $621c: $8c
    xor a                                         ; $621d: $af
    ld [hl], e                                    ; $621e: $73
    cp b                                          ; $621f: $b8
    ld hl, sp+$18                                 ; $6220: $f8 $18
    ld [hl], e                                    ; $6222: $73
    call nz, $b745                                ; $6223: $c4 $45 $b7
    jp nc, $fe34                                  ; $6226: $d2 $34 $fe

    inc a                                         ; $6229: $3c
    ld d, a                                       ; $622a: $57
    dec d                                         ; $622b: $15
    ld d, [hl]                                    ; $622c: $56
    adc e                                         ; $622d: $8b
    xor c                                         ; $622e: $a9
    ld a, e                                       ; $622f: $7b
    di                                            ; $6230: $f3
    cp [hl]                                       ; $6231: $be
    ld l, d                                       ; $6232: $6a
    db $dd                                        ; $6233: $dd
    ld c, h                                       ; $6234: $4c
    ld [$94c2], a                                 ; $6235: $ea $c2 $94
    sbc c                                         ; $6238: $99

jr_03f_6239:
    xor h                                         ; $6239: $ac
    jp $f8c2                                      ; $623a: $c3 $c2 $f8


    or d                                          ; $623d: $b2
    ld a, [c]                                     ; $623e: $f2
    dec hl                                        ; $623f: $2b
    inc [hl]                                      ; $6240: $34
    and [hl]                                      ; $6241: $a6
    reti                                          ; $6242: $d9


    ld [c], a                                     ; $6243: $e2
    inc a                                         ; $6244: $3c
    ld h, a                                       ; $6245: $67
    add a                                         ; $6246: $87
    and $31                                       ; $6247: $e6 $31
    ld a, [hl]                                    ; $6249: $7e
    db $dd                                        ; $624a: $dd
    adc b                                         ; $624b: $88
    ld sp, $9ef5                                  ; $624c: $31 $f5 $9e
    dec e                                         ; $624f: $1d
    adc [hl]                                      ; $6250: $8e
    ld h, l                                       ; $6251: $65
    ld h, $0b                                     ; $6252: $26 $0b
    and c                                         ; $6254: $a1
    sub [hl]                                      ; $6255: $96
    inc sp                                        ; $6256: $33
    ld c, l                                       ; $6257: $4d
    adc h                                         ; $6258: $8c
    dec hl                                        ; $6259: $2b
    adc a                                         ; $625a: $8f
    dec hl                                        ; $625b: $2b
    xor a                                         ; $625c: $af
    jp $cd8c                                      ; $625d: $c3 $8c $cd


    or h                                          ; $6260: $b4
    rst $10                                       ; $6261: $d7
    ld a, c                                       ; $6262: $79
    adc $e2                                       ; $6263: $ce $e2
    cp b                                          ; $6265: $b8
    ldh [$5b], a                                  ; $6266: $e0 $5b
    rst $20                                       ; $6268: $e7
    ldh a, [$87]                                  ; $6269: $f0 $87
    adc [hl]                                      ; $626b: $8e
    sub l                                         ; $626c: $95
    sbc a                                         ; $626d: $9f
    ret                                           ; $626e: $c9


    cp d                                          ; $626f: $ba
    db $d3                                        ; $6270: $d3
    ldh a, [rKEY1]                                ; $6271: $f0 $4d
    or e                                          ; $6273: $b3
    push bc                                       ; $6274: $c5
    ld a, c                                       ; $6275: $79
    adc $48                                       ; $6276: $ce $48
    sub $a9                                       ; $6278: $d6 $a9
    di                                            ; $627a: $f3
    ld c, l                                       ; $627b: $4d
    jp $d6c4                                      ; $627c: $c3 $c4 $d6


    add hl, hl                                    ; $627f: $29
    inc e                                         ; $6280: $1c
    ld [hl], c                                    ; $6281: $71
    inc l                                         ; $6282: $2c
    db $eb                                        ; $6283: $eb
    ld e, l                                       ; $6284: $5d
    ld e, h                                       ; $6285: $5c
    ld h, a                                       ; $6286: $67
    sbc [hl]                                      ; $6287: $9e
    db $eb                                        ; $6288: $eb
    sbc l                                         ; $6289: $9d
    add l                                         ; $628a: $85
    add $b4                                       ; $628b: $c6 $b4
    call nz, $f1a6                                ; $628d: $c4 $a6 $f1
    ld [hl], l                                    ; $6290: $75
    sbc [hl]                                      ; $6291: $9e
    db $eb                                        ; $6292: $eb
    dec l                                         ; $6293: $2d
    ld e, c                                       ; $6294: $59
    and a                                         ; $6295: $a7
    adc $73                                       ; $6296: $ce $73
    ld a, l                                       ; $6298: $7d
    ld e, $4a                                     ; $6299: $1e $4a
    cp l                                          ; $629b: $bd
    ld bc, $ecdd                                  ; $629c: $01 $dd $ec
    jr nc, jr_03f_6239                            ; $629f: $30 $98

    ld a, [c]                                     ; $62a1: $f2
    dec e                                         ; $62a2: $1d
    ld b, a                                       ; $62a3: $47
    db $fc                                        ; $62a4: $fc
    ld e, $f0                                     ; $62a5: $1e $f0
    dec b                                         ; $62a7: $05
    ld e, a                                       ; $62a8: $5f
    rlca                                          ; $62a9: $07
    dec a                                         ; $62aa: $3d
    cp [hl]                                       ; $62ab: $be
    rst $08                                       ; $62ac: $cf
    sub l                                         ; $62ad: $95
    sbc a                                         ; $62ae: $9f
    ld sp, hl                                     ; $62af: $f9
    cp $3f                                        ; $62b0: $fe $3f
    rst $08                                       ; $62b2: $cf
    sub l                                         ; $62b3: $95
    ld e, a                                       ; $62b4: $5f
    and c                                         ; $62b5: $a1
    add hl, bc                                    ; $62b6: $09
    cp d                                          ; $62b7: $ba
    cp $df                                        ; $62b8: $fe $df
    ld h, e                                       ; $62ba: $63
    cp l                                          ; $62bb: $bd
    inc de                                        ; $62bc: $13
    ld d, a                                       ; $62bd: $57
    ld a, [hl]                                    ; $62be: $7e
    sbc b                                         ; $62bf: $98
    or c                                          ; $62c0: $b1
    sbc c                                         ; $62c1: $99
    or $f3                                        ; $62c2: $f6 $f3
    sbc h                                         ; $62c4: $9c
    push bc                                       ; $62c5: $c5
    ld [hl], c                                    ; $62c6: $71
    pop bc                                        ; $62c7: $c1
    or a                                          ; $62c8: $b7
    adc $e1                                       ; $62c9: $ce $e1
    rrca                                          ; $62cb: $0f
    dec e                                         ; $62cc: $1d
    dec hl                                        ; $62cd: $2b
    ccf                                           ; $62ce: $3f
    sub e                                         ; $62cf: $93
    ld [hl], l                                    ; $62d0: $75
    and a                                         ; $62d1: $a7
    pop hl                                        ; $62d2: $e1
    sbc e                                         ; $62d3: $9b
    ld h, [hl]                                    ; $62d4: $66
    adc e                                         ; $62d5: $8b
    di                                            ; $62d6: $f3
    sbc h                                         ; $62d7: $9c
    sub c                                         ; $62d8: $91
    xor h                                         ; $62d9: $ac
    ld d, e                                       ; $62da: $53
    rst $20                                       ; $62db: $e7
    xor c                                         ; $62dc: $a9
    ld h, c                                       ; $62dd: $61
    ld h, d                                       ; $62de: $62
    db $eb                                        ; $62df: $eb
    inc d                                         ; $62e0: $14
    ld [$6388], a                                 ; $62e1: $ea $88 $63
    ld e, c                                       ; $62e4: $59

jr_03f_62e5:
    rst $28                                       ; $62e5: $ef
    ld [c], a                                     ; $62e6: $e2
    ld a, [hl-]                                   ; $62e7: $3a
    di                                            ; $62e8: $f3
    ld e, h                                       ; $62e9: $5c
    rst $28                                       ; $62ea: $ef
    inc l                                         ; $62eb: $2c
    inc [hl]                                      ; $62ec: $34
    and [hl]                                      ; $62ed: $a6
    dec h                                         ; $62ee: $25
    ld [hl], $8d                                  ; $62ef: $36 $8d
    xor a                                         ; $62f1: $af
    di                                            ; $62f2: $f3
    ld e, h                                       ; $62f3: $5c
    ld l, a                                       ; $62f4: $6f
    ret                                           ; $62f5: $c9


    ld a, [hl-]                                   ; $62f6: $3a
    ld [hl], l                                    ; $62f7: $75
    sbc [hl]                                      ; $62f8: $9e
    db $eb                                        ; $62f9: $eb
    di                                            ; $62fa: $f3
    ld d, b                                       ; $62fb: $50
    ld a, [hl+]                                   ; $62fc: $2a
    nop                                           ; $62fd: $00
    sub a                                         ; $62fe: $97
    or d                                          ; $62ff: $b2
    cp d                                          ; $6300: $ba
    db $10                                        ; $6301: $10
    ld d, [hl]                                    ; $6302: $56
    ld c, e                                       ; $6303: $4b
    ld a, h                                       ; $6304: $7c
    sbc l                                         ; $6305: $9d
    ld h, [hl]                                    ; $6306: $66
    ld b, a                                       ; $6307: $47
    cp b                                          ; $6308: $b8
    sub d                                         ; $6309: $92
    ld a, [hl-]                                   ; $630a: $3a
    and c                                         ; $630b: $a1
    ld l, c                                       ; $630c: $69

jr_03f_630d:
    call nz, $dd48                                ; $630d: $c4 $48 $dd
    sbc e                                         ; $6310: $9b
    call nz, $d348                                ; $6311: $c4 $48 $d3
    ld [$8c46], a                                 ; $6314: $ea $46 $8c
    xor c                                         ; $6317: $a9
    ei                                            ; $6318: $fb
    or d                                          ; $6319: $b2
    ld c, d                                       ; $631a: $4a
    sub [hl]                                      ; $631b: $96
    ld a, [bc]                                    ; $631c: $0a
    ld h, l                                       ; $631d: $65
    cp a                                          ; $631e: $bf
    di                                            ; $631f: $f3
    call nz, Call_03f_5d5a                        ; $6320: $c4 $5a $5d
    db $dd                                        ; $6323: $dd
    ret nc                                        ; $6324: $d0

    and a                                         ; $6325: $a7
    inc l                                         ; $6326: $2c
    jp z, $2aeb                                   ; $6327: $ca $eb $2a

    sub h                                         ; $632a: $94
    or c                                          ; $632b: $b1
    call z, $434e                                 ; $632c: $cc $4e $43
    or $cb                                        ; $632f: $f6 $cb
    ld a, c                                       ; $6331: $79
    xor $62                                       ; $6332: $ee $62
    ld a, [hl+]                                   ; $6334: $2a
    db $fd                                        ; $6335: $fd
    cp l                                          ; $6336: $bd
    xor $f6                                       ; $6337: $ee $f6
    ld l, a                                       ; $6339: $6f
    sbc l                                         ; $633a: $9d
    jp Jump_000_3a1f                              ; $633b: $c3 $1f $3a


    ld d, [hl]                                    ; $633e: $56
    ld a, [hl]                                    ; $633f: $7e
    ld h, $eb                                     ; $6340: $26 $eb

Jump_03f_6342:
    ld c, [hl]                                    ; $6342: $4e
    jp $cd37                                      ; $6343: $c3 $37 $cd


    ld d, $e7                                     ; $6346: $16 $e7
    add hl, sp                                    ; $6348: $39
    inc hl                                        ; $6349: $23
    ld e, c                                       ; $634a: $59
    and a                                         ; $634b: $a7
    adc [hl]                                      ; $634c: $8e
    jr c, jr_03f_62e5                             ; $634d: $38 $96

    push af                                       ; $634f: $f5
    ld l, $ae                                     ; $6350: $2e $ae
    inc sp                                        ; $6352: $33
    rst $08                                       ; $6353: $cf
    push af                                       ; $6354: $f5
    adc $42                                       ; $6355: $ce $42
    ld h, e                                       ; $6357: $63
    ld e, d                                       ; $6358: $5a
    ld h, d                                       ; $6359: $62
    db $d3                                        ; $635a: $d3
    ld hl, sp+$3a                                 ; $635b: $f8 $3a
    rst $08                                       ; $635d: $cf
    push af                                       ; $635e: $f5
    sub [hl]                                      ; $635f: $96
    xor h                                         ; $6360: $ac
    ld d, e                                       ; $6361: $53
    rst $20                                       ; $6362: $e7
    cp c                                          ; $6363: $b9
    ld a, $0f                                     ; $6364: $3e $0f
    and l                                         ; $6366: $a5
    ld l, $57                                     ; $6367: $2e $57
    ld [hl], d                                    ; $6369: $72
    pop bc                                        ; $636a: $c1
    rst $10                                       ; $636b: $d7
    ld l, c                                       ; $636c: $69
    ld e, $fc                                     ; $636d: $1e $fc
    ld a, $7b                                     ; $636f: $3e $7b
    ld [bc], a                                    ; $6371: $02
    or $af                                        ; $6372: $f6 $af
    xor e                                         ; $6374: $ab
    jr c, jr_03f_630d                             ; $6375: $38 $96

    sbc b                                         ; $6377: $98
    ei                                            ; $6378: $fb
    sbc l                                         ; $6379: $9d
    daa                                           ; $637a: $27
    sub $ea                                       ; $637b: $d6 $ea
    ld [$3e86], a                                 ; $637d: $ea $86 $3e
    ld h, l                                       ; $6380: $65
    sbc [hl]                                      ; $6381: $9e
    adc e                                         ; $6382: $8b
    ld l, [hl]                                    ; $6383: $6e
    ld e, a                                       ; $6384: $5f
    ld hl, $2746                                  ; $6385: $21 $46 $27
    cp a                                          ; $6388: $bf
    ld [hl], e                                    ; $6389: $73
    inc e                                         ; $638a: $1c
    ld c, e                                       ; $638b: $4b
    xor [hl]                                      ; $638c: $ae
    ld l, a                                       ; $638d: $6f
    sbc d                                         ; $638e: $9a
    add sp, $04                                   ; $638f: $e8 $04
    di                                            ; $6391: $f3
    sbc $2e                                       ; $6392: $de $2e
    ld c, d                                       ; $6394: $4a
    ld e, l                                       ; $6395: $5d
    ld hl, sp-$26                                 ; $6396: $f8 $da
    ld c, d                                       ; $6398: $4a
    ld c, c                                       ; $6399: $49
    sbc l                                         ; $639a: $9d
    rst $20                                       ; $639b: $e7
    db $ec                                        ; $639c: $ec
    inc de                                        ; $639d: $13
    add d                                         ; $639e: $82
    ld sp, hl                                     ; $639f: $f9
    ld [de], a                                    ; $63a0: $12

Call_03f_63a1:
    ld [hl], l                                    ; $63a1: $75
    ld h, c                                       ; $63a2: $61
    jp z, $0fca                                   ; $63a3: $ca $ca $0f

    db $d3                                        ; $63a6: $d3
    inc b                                         ; $63a7: $04
    add hl, sp                                    ; $63a8: $39

Jump_03f_63a9:
    db $eb                                        ; $63a9: $eb
    rrca                                          ; $63aa: $0f
    ld [hl], e                                    ; $63ab: $73
    dec c                                         ; $63ac: $0d
    ld h, e                                       ; $63ad: $63
    xor e                                         ; $63ae: $ab
    sbc e                                         ; $63af: $9b
    ld a, a                                       ; $63b0: $7f
    ld e, h                                       ; $63b1: $5c
    ld a, h                                       ; $63b2: $7c
    adc h                                         ; $63b3: $8c
    ld a, c                                       ; $63b4: $79
    inc bc                                        ; $63b5: $03
    db $dd                                        ; $63b6: $dd
    db $ec                                        ; $63b7: $ec
    ld e, a                                       ; $63b8: $5f
    rst $20                                       ; $63b9: $e7
    add hl, hl                                    ; $63ba: $29
    sub d                                         ; $63bb: $92
    pop af                                        ; $63bc: $f1
    ld a, l                                       ; $63bd: $7d
    xor $cb                                       ; $63be: $ee $cb
    and d                                         ; $63c0: $a2
    ld h, h                                       ; $63c1: $64
    sbc c                                         ; $63c2: $99
    ld [hl], l                                    ; $63c3: $75
    ld a, [$f2a5]                                 ; $63c4: $fa $a5 $f2
    ld a, $f7                                     ; $63c7: $3e $f7
    or e                                          ; $63c9: $b3
    and a                                         ; $63ca: $a7
    call nc, $912d                                ; $63cb: $d4 $2d $91
    dec a                                         ; $63ce: $3d
    ld d, $d8                                     ; $63cf: $16 $d8

jr_03f_63d1:
    adc b                                         ; $63d1: $88
    sub c                                         ; $63d2: $91
    ld a, [hl-]                                   ; $63d3: $3a
    adc e                                         ; $63d4: $8b
    db $e3                                        ; $63d5: $e3
    jp z, Jump_000_1d0f                           ; $63d6: $ca $0f $1d

    dec hl                                        ; $63d9: $2b
    ccf                                           ; $63da: $3f
    sub e                                         ; $63db: $93
    ld [hl], l                                    ; $63dc: $75
    and a                                         ; $63dd: $a7
    pop hl                                        ; $63de: $e1
    sbc e                                         ; $63df: $9b
    ld h, [hl]                                    ; $63e0: $66
    adc e                                         ; $63e1: $8b
    di                                            ; $63e2: $f3
    sbc h                                         ; $63e3: $9c
    sub c                                         ; $63e4: $91
    xor h                                         ; $63e5: $ac
    ld d, e                                       ; $63e6: $53
    rst $20                                       ; $63e7: $e7
    sbc e                                         ; $63e8: $9b
    add [hl]                                      ; $63e9: $86
    adc c                                         ; $63ea: $89
    xor l                                         ; $63eb: $ad
    ld d, e                                       ; $63ec: $53
    jr c, jr_03f_63d1                             ; $63ed: $38 $e2

    ld e, b                                       ; $63ef: $58
    sub $bb                                       ; $63f0: $d6 $bb
    cp b                                          ; $63f2: $b8
    adc $3c                                       ; $63f3: $ce $3c
    rst $10                                       ; $63f5: $d7
    dec sp                                        ; $63f6: $3b
    dec bc                                        ; $63f7: $0b
    adc l                                         ; $63f8: $8d
    ld l, c                                       ; $63f9: $69
    adc c                                         ; $63fa: $89
    ld c, l                                       ; $63fb: $4d
    db $e3                                        ; $63fc: $e3
    db $eb                                        ; $63fd: $eb
    inc a                                         ; $63fe: $3c
    rst $10                                       ; $63ff: $d7
    ld e, e                                       ; $6400: $5b
    or d                                          ; $6401: $b2
    ld c, [hl]                                    ; $6402: $4e
    sbc l                                         ; $6403: $9d
    rst $20                                       ; $6404: $e7
    ld a, [$943c]                                 ; $6405: $fa $3c $94
    ld a, [hl-]                                   ; $6408: $3a
    ld [$afca], a                                 ; $6409: $ea $ca $af
    sbc a                                         ; $640c: $9f
    db $d3                                        ; $640d: $d3
    ld hl, sp+$13                                 ; $640e: $f8 $13
    sbc d                                         ; $6410: $9a
    xor h                                         ; $6411: $ac
    ld b, e                                       ; $6412: $43
    and d                                         ; $6413: $a2
    cp $c2                                        ; $6414: $fe $c2
    sub h                                         ; $6416: $94
    ld b, l                                       ; $6417: $45
    and a                                         ; $6418: $a7
    ld a, e                                       ; $6419: $7b
    inc de                                        ; $641a: $13
    ld d, e                                       ; $641b: $53
    rla                                           ; $641c: $17
    and h                                         ; $641d: $a4
    ld h, h                                       ; $641e: $64
    inc sp                                        ; $641f: $33
    xor c                                         ; $6420: $a9
    scf                                           ; $6421: $37
    nop                                           ; $6422: $00
    db $dd                                        ; $6423: $dd
    db $ec                                        ; $6424: $ec
    ld e, a                                       ; $6425: $5f
    daa                                           ; $6426: $27
    inc [hl]                                      ; $6427: $34
    ld l, $a4                                     ; $6428: $2e $a4
    cp h                                          ; $642a: $bc
    rst $08                                       ; $642b: $cf
    ld b, l                                       ; $642c: $45
    and a                                         ; $642d: $a7
    inc de                                        ; $642e: $13
    ld b, d                                       ; $642f: $42
    ld e, a                                       ; $6430: $5f
    ld d, d                                       ; $6431: $52
    rst $20                                       ; $6432: $e7
    cp c                                          ; $6433: $b9
    cp [hl]                                       ; $6434: $be
    ld e, a                                       ; $6435: $5f
    ld l, c                                       ; $6436: $69
    cp $7d                                        ; $6437: $fe $7d
    adc a                                         ; $6439: $8f
    push af                                       ; $643a: $f5
    ld a, c                                       ; $643b: $79
    adc h                                         ; $643c: $8c
    call nz, $f446                                ; $643d: $c4 $46 $f4
    add hl, sp                                    ; $6440: $39
    ld [hl], l                                    ; $6441: $75
    and e                                         ; $6442: $a3
    add [hl]                                      ; $6443: $86
    ld [hl], $d2                                  ; $6444: $36 $d2
    and d                                         ; $6446: $a2
    sbc e                                         ; $6447: $9b
    ld a, a                                       ; $6448: $7f
    rst $18                                       ; $6449: $df
    ld a, [hl+]                                   ; $644a: $2a
    xor c                                         ; $644b: $a9
    add hl, bc                                    ; $644c: $09
    rra                                           ; $644d: $1f
    bit 7, d                                      ; $644e: $cb $7a
    rla                                           ; $6450: $17
    rst $10                                       ; $6451: $d7
    sbc c                                         ; $6452: $99
    rst $20                                       ; $6453: $e7
    ld a, d                                       ; $6454: $7a
    ld h, a                                       ; $6455: $67
    and c                                         ; $6456: $a1
    ld sp, $b12d                                  ; $6457: $31 $2d $b1
    ld l, c                                       ; $645a: $69
    ld a, h                                       ; $645b: $7c
    sbc l                                         ; $645c: $9d
    rst $20                                       ; $645d: $e7
    ld a, d                                       ; $645e: $7a
    ld c, e                                       ; $645f: $4b
    sub $a9                                       ; $6460: $d6 $a9
    di                                            ; $6462: $f3
    ld e, h                                       ; $6463: $5c
    sbc a                                         ; $6464: $9f
    add a                                         ; $6465: $87
    ld d, d                                       ; $6466: $52
    rla                                           ; $6467: $17
    add hl, sp                                    ; $6468: $39
    and c                                         ; $6469: $a1
    ld d, d                                       ; $646a: $52
    ld a, [hl+]                                   ; $646b: $2a
    ccf                                           ; $646c: $3f
    add a                                         ; $646d: $87
    ccf                                           ; $646e: $3f
    ld [hl], h                                    ; $646f: $74
    xor h                                         ; $6470: $ac
    db $fc                                        ; $6471: $fc
    ld c, h                                       ; $6472: $4c
    sub $9d                                       ; $6473: $d6 $9d
    add [hl]                                      ; $6475: $86
    ld l, a                                       ; $6476: $6f
    sbc d                                         ; $6477: $9a
    dec l                                         ; $6478: $2d
    adc $73                                       ; $6479: $ce $73
    ld b, [hl]                                    ; $647b: $46
    or d                                          ; $647c: $b2
    ld c, [hl]                                    ; $647d: $4e
    cp l                                          ; $647e: $bd
    ld bc, $ecdd                                  ; $647f: $01 $dd $ec
    ld e, a                                       ; $6482: $5f
    ld h, a                                       ; $6483: $67
    ld [de], a                                    ; $6484: $12
    sub l                                         ; $6485: $95
    sub b                                         ; $6486: $90
    ld l, e                                       ; $6487: $6b
    ld a, $57                                     ; $6488: $3e $57
    ld e, [hl]                                    ; $648a: $5e
    rlca                                          ; $648b: $07
    ld a, l                                       ; $648c: $7d
    add hl, hl                                    ; $648d: $29
    dec c                                         ; $648e: $0d
    ld e, a                                       ; $648f: $5f
    rla                                           ; $6490: $17
    cp [hl]                                       ; $6491: $be
    db $fc                                        ; $6492: $fc
    ld a, [$74a6]                                 ; $6493: $fa $a6 $74
    jr z, jr_03f_64c9                             ; $6496: $28 $31

    pop hl                                        ; $6498: $e1
    ld h, e                                       ; $6499: $63
    add hl, de                                    ; $649a: $19
    ld a, [hl-]                                   ; $649b: $3a
    ld d, [hl]                                    ; $649c: $56
    ld [hl], d                                    ; $649d: $72
    ld e, a                                       ; $649e: $5f
    scf                                           ; $649f: $37
    jr z, @+$69                                   ; $64a0: $28 $67

    ld [de], a                                    ; $64a2: $12
    ld b, a                                       ; $64a3: $47
    dec [hl]                                      ; $64a4: $35
    ld e, a                                       ; $64a5: $5f
    cp a                                          ; $64a6: $bf
    adc $73                                       ; $64a7: $ce $73
    or $0f                                        ; $64a9: $f6 $0f
    ld c, c                                       ; $64ab: $49
    di                                            ; $64ac: $f3
    dec a                                         ; $64ad: $3d
    ld d, $90                                     ; $64ae: $16 $90
    or d                                          ; $64b0: $b2
    sbc b                                         ; $64b1: $98
    pop af                                        ; $64b2: $f1
    set 1, h                                      ; $64b3: $cb $cc
    xor e                                         ; $64b5: $ab
    ei                                            ; $64b6: $fb
    jp nc, Jump_03f_7bfc                          ; $64b7: $d2 $fc $7b

    ld hl, sp+$62                                 ; $64ba: $f8 $62
    inc hl                                        ; $64bc: $23
    ld d, d                                       ; $64bd: $52
    rst $20                                       ; $64be: $e7
    ldh a, [$87]                                  ; $64bf: $f0 $87
    adc [hl]                                      ; $64c1: $8e
    sub l                                         ; $64c2: $95
    sbc a                                         ; $64c3: $9f
    ret                                           ; $64c4: $c9


    cp d                                          ; $64c5: $ba
    db $d3                                        ; $64c6: $d3
    ldh a, [rKEY1]                                ; $64c7: $f0 $4d

jr_03f_64c9:
    or e                                          ; $64c9: $b3
    push bc                                       ; $64ca: $c5
    ld a, c                                       ; $64cb: $79
    adc $48                                       ; $64cc: $ce $48
    sub $a9                                       ; $64ce: $d6 $a9
    inc hl                                        ; $64d0: $23
    adc [hl]                                      ; $64d1: $8e
    ld h, l                                       ; $64d2: $65
    cp l                                          ; $64d3: $bd
    adc e                                         ; $64d4: $8b
    db $eb                                        ; $64d5: $eb
    call z, $bd73                                 ; $64d6: $cc $73 $bd
    or e                                          ; $64d9: $b3
    ret nc                                        ; $64da: $d0

    sbc b                                         ; $64db: $98
    sub [hl]                                      ; $64dc: $96
    ret c                                         ; $64dd: $d8

    inc [hl]                                      ; $64de: $34
    cp [hl]                                       ; $64df: $be
    adc $73                                       ; $64e0: $ce $73
    cp l                                          ; $64e2: $bd
    dec h                                         ; $64e3: $25
    db $eb                                        ; $64e4: $eb
    call nc, $ae79                                ; $64e5: $d4 $79 $ae
    rst $08                                       ; $64e8: $cf
    ld b, e                                       ; $64e9: $43
    xor c                                         ; $64ea: $a9
    scf                                           ; $64eb: $37
    nop                                           ; $64ec: $00
    or $af                                        ; $64ed: $f6 $af
    inc sp                                        ; $64ef: $33
    rst $18                                       ; $64f0: $df
    rst $38                                       ; $64f1: $ff
    ld a, l                                       ; $64f2: $7d
    xor $d7                                       ; $64f3: $ee $d7
    scf                                           ; $64f5: $37
    and l                                         ; $64f6: $a5
    ld b, e                                       ; $64f7: $43
    adc c                                         ; $64f8: $89
    add hl, sp                                    ; $64f9: $39
    db $eb                                        ; $64fa: $eb
    ld e, b                                       ; $64fb: $58
    ld l, c                                       ; $64fc: $69
    pop af                                        ; $64fd: $f1
    ld a, l                                       ; $64fe: $7d
    ld l, $94                                     ; $64ff: $2e $94
    db $ec                                        ; $6501: $ec
    inc d                                         ; $6502: $14
    sub $af                                       ; $6503: $d6 $af
    dec bc                                        ; $6505: $0b
    ld e, a                                       ; $6506: $5f
    ld a, [hl]                                    ; $6507: $7e
    or $0f                                        ; $6508: $f6 $0f
    ld c, c                                       ; $650a: $49
    di                                            ; $650b: $f3
    rst $30                                       ; $650c: $f7
    ld a, [$82e6]                                 ; $650d: $fa $e6 $82
    ld l, a                                       ; $6510: $6f
    sbc l                                         ; $6511: $9d
    or b                                          ; $6512: $b0
    cp h                                          ; $6513: $bc
    ld l, c                                       ; $6514: $69
    or [hl]                                       ; $6515: $b6
    jr c, jr_03f_657a                             ; $6516: $38 $62

    inc d                                         ; $6518: $14
    adc [hl]                                      ; $6519: $8e
    ld a, [de]                                    ; $651a: $1a
    cp c                                          ; $651b: $b9
    scf                                           ; $651c: $37
    adc c                                         ; $651d: $89
    sub c                                         ; $651e: $91
    and [hl]                                      ; $651f: $a6
    push de                                       ; $6520: $d5
    adc l                                         ; $6521: $8d
    jr jr_03f_6597                                ; $6522: $18 $73

    sub $95                                       ; $6524: $d6 $95
    rra                                           ; $6526: $1f
    ld a, [hl-]                                   ; $6527: $3a
    ld d, [hl]                                    ; $6528: $56
    ld a, [hl]                                    ; $6529: $7e
    ld h, $eb                                     ; $652a: $26 $eb
    ld c, [hl]                                    ; $652c: $4e
    jp $cd37                                      ; $652d: $c3 $37 $cd


    ld d, $e7                                     ; $6530: $16 $e7
    add hl, sp                                    ; $6532: $39
    inc hl                                        ; $6533: $23
    ld e, c                                       ; $6534: $59
    and a                                         ; $6535: $a7
    adc $e2                                       ; $6536: $ce $e2
    cp b                                          ; $6538: $b8
    ldh [$5b], a                                  ; $6539: $e0 $5b
    ld b, a                                       ; $653b: $47
    inc e                                         ; $653c: $1c
    bit 7, d                                      ; $653d: $cb $7a
    rla                                           ; $653f: $17
    rst $10                                       ; $6540: $d7
    sbc c                                         ; $6541: $99
    rst $20                                       ; $6542: $e7
    ld a, d                                       ; $6543: $7a
    ld h, a                                       ; $6544: $67
    and c                                         ; $6545: $a1
    ld sp, $b12d                                  ; $6546: $31 $2d $b1
    ld l, c                                       ; $6549: $69
    ld a, h                                       ; $654a: $7c
    sbc l                                         ; $654b: $9d
    rst $20                                       ; $654c: $e7
    ld a, d                                       ; $654d: $7a
    ld c, e                                       ; $654e: $4b
    sub $a9                                       ; $654f: $d6 $a9
    di                                            ; $6551: $f3
    ld e, h                                       ; $6552: $5c
    sbc a                                         ; $6553: $9f
    add a                                         ; $6554: $87
    ld d, d                                       ; $6555: $52
    ld l, a                                       ; $6556: $6f
    nop                                           ; $6557: $00
    db $dd                                        ; $6558: $dd
    db $ec                                        ; $6559: $ec
    ld e, a                                       ; $655a: $5f
    ld d, a                                       ; $655b: $57
    ld a, [bc]                                    ; $655c: $0a
    and c                                         ; $655d: $a1
    rst $30                                       ; $655e: $f7
    cp c                                          ; $655f: $b9
    ld e, a                                       ; $6560: $5f
    ld sp, hl                                     ; $6561: $f9
    push bc                                       ; $6562: $c5
    inc d                                         ; $6563: $14
    pop hl                                        ; $6564: $e1
    ld c, h                                       ; $6565: $4c
    ld [c], a                                     ; $6566: $e2
    ld a, [$74a6]                                 ; $6567: $fa $a6 $74
    jr z, @+$33                                   ; $656a: $28 $31

    ld h, a                                       ; $656c: $67
    ld e, l                                       ; $656d: $5d
    pop hl                                        ; $656e: $e1
    add d                                         ; $656f: $82
    xor a                                         ; $6570: $af
    di                                            ; $6571: $f3
    ld d, h                                       ; $6572: $54
    cp [hl]                                       ; $6573: $be
    rst $08                                       ; $6574: $cf
    add hl, sp                                    ; $6575: $39
    ld e, h                                       ; $6576: $5c
    and l                                         ; $6577: $a5
    ld a, l                                       ; $6578: $7d
    ccf                                           ; $6579: $3f

jr_03f_657a:
    ld c, [hl]                                    ; $657a: $4e
    add hl, bc                                    ; $657b: $09
    add hl, sp                                    ; $657c: $39
    ret                                           ; $657d: $c9


    ld e, $eb                                     ; $657e: $1e $eb
    db $e3                                        ; $6580: $e3
    xor h                                         ; $6581: $ac
    ei                                            ; $6582: $fb
    jp nc, $ed2a                                  ; $6583: $d2 $2a $ed

    ld a, l                                       ; $6586: $7d
    jp nz, Jump_000_3427                          ; $6587: $c2 $27 $34

    adc [hl]                                      ; $658a: $8e
    ld [c], a                                     ; $658b: $e2
    ld e, a                                       ; $658c: $5f
    ld h, a                                       ; $658d: $67
    ld [hl], c                                    ; $658e: $71

Call_03f_658f:
    ld e, h                                       ; $658f: $5c
    sbc b                                         ; $6590: $98
    or d                                          ; $6591: $b2
    ld a, [c]                                     ; $6592: $f2
    xor e                                         ; $6593: $ab
    rst $38                                       ; $6594: $ff
    ldh [$c7], a                                  ; $6595: $e0 $c7

jr_03f_6597:
    ld e, a                                       ; $6597: $5f
    inc h                                         ; $6598: $24
    ld a, d                                       ; $6599: $7a
    jp hl                                         ; $659a: $e9


    jp nc, $fc39                                  ; $659b: $d2 $39 $fc

    and c                                         ; $659e: $a1
    ld h, e                                       ; $659f: $63
    push hl                                       ; $65a0: $e5
    ld h, a                                       ; $65a1: $67
    or d                                          ; $65a2: $b2
    xor $34                                       ; $65a3: $ee $34
    ld a, h                                       ; $65a5: $7c
    db $d3                                        ; $65a6: $d3
    ld l, h                                       ; $65a7: $6c
    ld [hl], c                                    ; $65a8: $71
    sbc [hl]                                      ; $65a9: $9e
    inc sp                                        ; $65aa: $33
    sub d                                         ; $65ab: $92
    ld [hl], l                                    ; $65ac: $75
    ld [$6388], a                                 ; $65ad: $ea $88 $63
    ld e, c                                       ; $65b0: $59
    rst $28                                       ; $65b1: $ef
    ld [c], a                                     ; $65b2: $e2
    ld a, [hl-]                                   ; $65b3: $3a
    di                                            ; $65b4: $f3
    ld e, h                                       ; $65b5: $5c
    rst $28                                       ; $65b6: $ef
    inc l                                         ; $65b7: $2c
    inc [hl]                                      ; $65b8: $34
    and [hl]                                      ; $65b9: $a6
    dec h                                         ; $65ba: $25
    ld [hl], $8d                                  ; $65bb: $36 $8d
    xor a                                         ; $65bd: $af
    di                                            ; $65be: $f3
    ld e, h                                       ; $65bf: $5c
    ld l, a                                       ; $65c0: $6f
    ret                                           ; $65c1: $c9


    ld a, [hl-]                                   ; $65c2: $3a
    ld [hl], l                                    ; $65c3: $75
    sbc [hl]                                      ; $65c4: $9e
    db $eb                                        ; $65c5: $eb
    di                                            ; $65c6: $f3
    ld d, b                                       ; $65c7: $50
    ld [$000d], a                                 ; $65c8: $ea $0d $00
    db $dd                                        ; $65cb: $dd
    db $ec                                        ; $65cc: $ec
    ld e, a                                       ; $65cd: $5f
    and a                                         ; $65ce: $a7
    reti                                          ; $65cf: $d9


    ld de, $5a56                                  ; $65d0: $11 $56 $5a
    and l                                         ; $65d3: $a5
    ld sp, hl                                     ; $65d4: $f9
    call c, $9d97                                 ; $65d5: $dc $97 $9d
    sbc l                                         ; $65d8: $9d
    ld l, d                                       ; $65d9: $6a
    ld [hl], c                                    ; $65da: $71
    ld e, h                                       ; $65db: $5c
    add b                                         ; $65dc: $80
    ld h, h                                       ; $65dd: $64
    or b                                          ; $65de: $b0
    ld [hl], l                                    ; $65df: $75
    sbc d                                         ; $65e0: $9a
    rst $08                                       ; $65e1: $cf
    ld e, c                                       ; $65e2: $59
    ld b, a                                       ; $65e3: $47
    inc [hl]                                      ; $65e4: $34
    adc c                                         ; $65e5: $89
    ld d, c                                       ; $65e6: $51
    sbc $e7                                       ; $65e7: $de $e7
    cp [hl]                                       ; $65e9: $be
    call z, $3361                                 ; $65ea: $cc $61 $33
    add hl, hl                                    ; $65ed: $29
    ret c                                         ; $65ee: $d8

    ld [hl], d                                    ; $65ef: $72
    ld b, c                                       ; $65f0: $41
    ld c, d                                       ; $65f1: $4a
    di                                            ; $65f2: $f3
    reti                                          ; $65f3: $d9


    ld h, e                                       ; $65f4: $63
    halt                                          ; $65f5: $76
    ld h, l                                       ; $65f6: $65
    cp l                                          ; $65f7: $bd
    adc e                                         ; $65f8: $8b
    db $eb                                        ; $65f9: $eb
    call z, $bd73                                 ; $65fa: $cc $73 $bd
    or e                                          ; $65fd: $b3
    ret nc                                        ; $65fe: $d0

    sbc b                                         ; $65ff: $98
    sub [hl]                                      ; $6600: $96
    ret c                                         ; $6601: $d8

    inc [hl]                                      ; $6602: $34
    cp [hl]                                       ; $6603: $be
    adc $73                                       ; $6604: $ce $73
    cp l                                          ; $6606: $bd
    dec h                                         ; $6607: $25
    db $eb                                        ; $6608: $eb
    call nc, $ae79                                ; $6609: $d4 $79 $ae
    rst $08                                       ; $660c: $cf
    ld b, e                                       ; $660d: $43
    xor c                                         ; $660e: $a9
    dec bc                                        ; $660f: $0b
    cp $1e                                        ; $6610: $fe $1e
    dec e                                         ; $6612: $1d
    sbc d                                         ; $6613: $9a
    or $3e                                        ; $6614: $f6 $3e
    ld h, a                                       ; $6616: $67
    ld [hl], c                                    ; $6617: $71
    ld e, h                                       ; $6618: $5c
    ld l, h                                       ; $6619: $6c
    ld b, h                                       ; $661a: $44
    adc $37                                       ; $661b: $ce $37
    dec c                                         ; $661d: $0d
    inc de                                        ; $661e: $13
    ld e, e                                       ; $661f: $5b
    and a                                         ; $6620: $a7
    ld [hl], b                                    ; $6621: $70
    ld c, $7f                                     ; $6622: $0e $7f
    add sp, $58                                   ; $6624: $e8 $58
    ld sp, hl                                     ; $6626: $f9
    sbc c                                         ; $6627: $99
    xor h                                         ; $6628: $ac
    dec sp                                        ; $6629: $3b
    dec c                                         ; $662a: $0d
    rst $18                                       ; $662b: $df
    inc [hl]                                      ; $662c: $34
    ld e, e                                       ; $662d: $5b
    sbc h                                         ; $662e: $9c
    rst $20                                       ; $662f: $e7
    adc h                                         ; $6630: $8c
    ld h, h                                       ; $6631: $64
    sbc l                                         ; $6632: $9d
    ld a, d                                       ; $6633: $7a
    inc bc                                        ; $6634: $03
    db $dd                                        ; $6635: $dd
    adc $13                                       ; $6636: $ce $13
    ld l, e                                       ; $6638: $6b
    ld [hl], l                                    ; $6639: $75
    ld [hl], l                                    ; $663a: $75
    ld b, e                                       ; $663b: $43
    sbc a                                         ; $663c: $9f
    or d                                          ; $663d: $b2
    ldh [rIF], a                                  ; $663e: $e0 $0f
    ld a, d                                       ; $6640: $7a
    ld a, h                                       ; $6641: $7c
    sbc a                                         ; $6642: $9f
    cp e                                          ; $6643: $bb
    add sp, $67                                   ; $6644: $e8 $67
    ld [hl-], a                                   ; $6646: $32
    db $fc                                        ; $6647: $fc
    ld a, c                                       ; $6648: $79
    xor [hl]                                      ; $6649: $ae
    db $fc                                        ; $664a: $fc
    call z, $f7eb                                 ; $664b: $cc $eb $f7
    ld e, b                                       ; $664e: $58
    or a                                          ; $664f: $b7
    ld e, [hl]                                    ; $6650: $5e
    ld l, d                                       ; $6651: $6a
    inc sp                                        ; $6652: $33
    push hl                                       ; $6653: $e5
    inc h                                         ; $6654: $24
    db $eb                                        ; $6655: $eb
    sub b                                         ; $6656: $90
    dec hl                                        ; $6657: $2b
    ccf                                           ; $6658: $3f
    di                                            ; $6659: $f3
    sbc [hl]                                      ; $665a: $9e
    ld hl, sp-$0d                                 ; $665b: $f8 $f3
    ld e, h                                       ; $665d: $5c
    sub h                                         ; $665e: $94
    and $b0                                       ; $665f: $e6 $b0
    ld a, [hl-]                                   ; $6661: $3a
    ld [hl], l                                    ; $6662: $75
    ld [$b50c], a                                 ; $6663: $ea $0c $b5
    ld d, l                                       ; $6666: $55
    ld d, d                                       ; $6667: $52
    rst $20                                       ; $6668: $e7
    cp c                                          ; $6669: $b9
    ret nz                                        ; $666a: $c0

    ld h, d                                       ; $666b: $62
    adc l                                         ; $666c: $8d
    ld b, c                                       ; $666d: $41
    ld c, d                                       ; $666e: $4a
    jp Jump_000_3b1e                              ; $666f: $c3 $1e $3b


    rst $00                                       ; $6672: $c7
    push de                                       ; $6673: $d5
    sbc l                                         ; $6674: $9d
    ld b, d                                       ; $6675: $42
    sbc a                                         ; $6676: $9f
    jp nz, $ce45                                  ; $6677: $c2 $45 $ce

    rst $38                                       ; $667a: $ff
    ld e, b                                       ; $667b: $58
    ld d, [hl]                                    ; $667c: $56
    or e                                          ; $667d: $b3
    ld e, a                                       ; $667e: $5f
    jp z, Jump_03f_4b7a                           ; $667f: $ca $7a $4b

    sub $39                                       ; $6682: $d6 $39
    rst $08                                       ; $6684: $cf
    sbc l                                         ; $6685: $9d
    dec l                                         ; $6686: $2d
    xor [hl]                                      ; $6687: $ae
    rst $18                                       ; $6688: $df
    db $eb                                        ; $6689: $eb
    xor h                                         ; $668a: $ac
    db $eb                                        ; $668b: $eb
    di                                            ; $668c: $f3
    ld d, b                                       ; $668d: $50
    ld [$fdce], a                                 ; $668e: $ea $ce $fd
    ld a, [hl-]                                   ; $6691: $3a
    dec [hl]                                      ; $6692: $35
    push af                                       ; $6693: $f5
    cp [hl]                                       ; $6694: $be
    rst $28                                       ; $6695: $ef
    ld l, [hl]                                    ; $6696: $6e
    inc l                                         ; $6697: $2c
    di                                            ; $6698: $f3
    sbc h                                         ; $6699: $9c
    db $fd                                        ; $669a: $fd
    adc e                                         ; $669b: $8b
    ld e, b                                       ; $669c: $58
    rla                                           ; $669d: $17
    sub b                                         ; $669e: $90
    ld sp, $7a52                                  ; $669f: $31 $52 $7a
    nop                                           ; $66a2: $00
    or $af                                        ; $66a3: $f6 $af
    inc hl                                        ; $66a5: $23
    sbc d                                         ; $66a6: $9a
    call nz, $ef28                                ; $66a7: $c4 $28 $ef
    ld [hl], e                                    ; $66aa: $73
    rst $20                                       ; $66ab: $e7
    adc c                                         ; $66ac: $89
    or l                                          ; $66ad: $b5
    cp d                                          ; $66ae: $ba
    cp d                                          ; $66af: $ba
    and c                                         ; $66b0: $a1
    ld c, a                                       ; $66b1: $4f
    add c                                         ; $66b2: $81
    cpl                                           ; $66b3: $2f
    cp d                                          ; $66b4: $ba
    sbc c                                         ; $66b5: $99
    rst $10                                       ; $66b6: $d7
    rra                                           ; $66b7: $1f
    ld [hl], c                                    ; $66b8: $71
    or $09                                        ; $66b9: $f6 $09
    pop bc                                        ; $66bb: $c1
    ld a, h                                       ; $66bc: $7c
    adc c                                         ; $66bd: $89
    ld a, [bc]                                    ; $66be: $0a
    sbc a                                         ; $66bf: $9f
    ld c, a                                       ; $66c0: $4f
    db $f4                                        ; $66c1: $f4
    ld e, h                                       ; $66c2: $5c
    and l                                         ; $66c3: $a5
    ld d, l                                       ; $66c4: $55
    sbc d                                         ; $66c5: $9a
    ld [hl], h                                    ; $66c6: $74
    jp hl                                         ; $66c7: $e9


    xor h                                         ; $66c8: $ac
    and e                                         ; $66c9: $a3
    ld b, [hl]                                    ; $66ca: $46
    rst $20                                       ; $66cb: $e7
    db $db                                        ; $66cc: $db
    ld c, e                                       ; $66cd: $4b
    sub a                                         ; $66ce: $97
    sbc $0b                                       ; $66cf: $de $0b
    ld a, b                                       ; $66d1: $78
    ld sp, hl                                     ; $66d2: $f9
    ld e, c                                       ; $66d3: $59
    inc e                                         ; $66d4: $1c
    rla                                           ; $66d5: $17
    db $d3                                        ; $66d6: $d3
    rst $20                                       ; $66d7: $e7
    ld e, b                                       ; $66d8: $58
    ld d, [hl]                                    ; $66d9: $56
    dec sp                                        ; $66da: $3b
    db $f4                                        ; $66db: $f4
    add hl, sp                                    ; $66dc: $39
    push hl                                       ; $66dd: $e5
    or h                                          ; $66de: $b4
    ld de, $cfe3                                  ; $66df: $11 $e3 $cf
    ld h, h                                       ; $66e2: $64
    sbc l                                         ; $66e3: $9d
    inc hl                                        ; $66e4: $23
    adc $bc                                       ; $66e5: $ce $bc

jr_03f_66e7:
    ld a, $7c                                     ; $66e7: $3e $7c
    pop bc                                        ; $66e9: $c1
    or a                                          ; $66ea: $b7
    adc $e1                                       ; $66eb: $ce $e1
    rrca                                          ; $66ed: $0f
    dec e                                         ; $66ee: $1d
    dec hl                                        ; $66ef: $2b
    ccf                                           ; $66f0: $3f
    sub e                                         ; $66f1: $93
    ld [hl], l                                    ; $66f2: $75
    and a                                         ; $66f3: $a7
    pop hl                                        ; $66f4: $e1
    sbc e                                         ; $66f5: $9b
    ld h, [hl]                                    ; $66f6: $66
    adc e                                         ; $66f7: $8b
    di                                            ; $66f8: $f3
    sbc h                                         ; $66f9: $9c
    sub c                                         ; $66fa: $91
    xor h                                         ; $66fb: $ac
    ld d, e                                       ; $66fc: $53
    rst $20                                       ; $66fd: $e7
    sbc e                                         ; $66fe: $9b
    add [hl]                                      ; $66ff: $86
    adc c                                         ; $6700: $89
    xor l                                         ; $6701: $ad
    ld d, e                                       ; $6702: $53
    jr c, jr_03f_66e7                             ; $6703: $38 $e2

    ld e, b                                       ; $6705: $58
    sub $bb                                       ; $6706: $d6 $bb
    cp b                                          ; $6708: $b8
    adc $3c                                       ; $6709: $ce $3c
    rst $10                                       ; $670b: $d7
    dec sp                                        ; $670c: $3b
    dec bc                                        ; $670d: $0b
    adc l                                         ; $670e: $8d
    ld l, c                                       ; $670f: $69
    adc c                                         ; $6710: $89
    ld c, l                                       ; $6711: $4d
    db $e3                                        ; $6712: $e3
    db $eb                                        ; $6713: $eb
    inc a                                         ; $6714: $3c
    rst $10                                       ; $6715: $d7
    ld e, e                                       ; $6716: $5b
    or d                                          ; $6717: $b2
    ld c, [hl]                                    ; $6718: $4e
    sbc l                                         ; $6719: $9d
    rst $20                                       ; $671a: $e7
    adc $16                                       ; $671b: $ce $16
    rst $10                                       ; $671d: $d7
    rst $28                                       ; $671e: $ef
    ld [hl], l                                    ; $671f: $75
    sub $f5                                       ; $6720: $d6 $f5
    ld a, c                                       ; $6722: $79
    jr z, jr_03f_679a                             ; $6723: $28 $75

    rst $20                                       ; $6725: $e7
    ld a, [hl]                                    ; $6726: $7e
    sbc l                                         ; $6727: $9d
    sbc d                                         ; $6728: $9a
    ld a, d                                       ; $6729: $7a
    inc bc                                        ; $672a: $03
    cp l                                          ; $672b: $bd
    add d                                         ; $672c: $82
    add hl, hl                                    ; $672d: $29
    cp a                                          ; $672e: $bf
    ret z                                         ; $672f: $c8

    push de                                       ; $6730: $d5
    cpl                                           ; $6731: $2f
    ld h, $f8                                     ; $6732: $26 $f8
    cp d                                          ; $6734: $ba
    ld e, a                                       ; $6735: $5f
    ld sp, hl                                     ; $6736: $f9
    reti                                          ; $6737: $d9


    ld l, c                                       ; $6738: $69
    ld a, h                                       ; $6739: $7c
    db $d3                                        ; $673a: $d3
    ld l, h                                       ; $673b: $6c
    ld [hl], c                                    ; $673c: $71
    sbc [hl]                                      ; $673d: $9e
    cp e                                          ; $673e: $bb
    or b                                          ; $673f: $b0
    ld hl, $a874                                  ; $6740: $21 $74 $a8
    xor [hl]                                      ; $6743: $ae
    or a                                          ; $6744: $b7
    and h                                         ; $6745: $a4
    ld a, [hl+]                                   ; $6746: $2a
    ld a, h                                       ; $6747: $7c
    or $2f                                        ; $6748: $f6 $2f
    ld h, d                                       ; $674a: $62
    cp l                                          ; $674b: $bd
    ld h, a                                       ; $674c: $67
    add a                                         ; $674d: $87
    add $11                                       ; $674e: $c6 $11
    and e                                         ; $6750: $a3
    db $fc                                        ; $6751: $fc
    ld e, b                                       ; $6752: $58
    or $e8                                        ; $6753: $f6 $e8
    xor e                                         ; $6755: $ab
    ld [c], a                                     ; $6756: $e2
    ld c, [hl]                                    ; $6757: $4e
    reti                                          ; $6758: $d9


    ld [hl], c                                    ; $6759: $71
    ld b, a                                       ; $675a: $47
    dec e                                         ; $675b: $1d
    ccf                                           ; $675c: $3f
    db $eb                                        ; $675d: $eb
    ld a, [hl-]                                   ; $675e: $3a
    ld c, [hl]                                    ; $675f: $4e
    call Call_03f_658f                            ; $6760: $cd $8f $65
    halt                                          ; $6763: $76
    or b                                          ; $6764: $b0
    ld b, d                                       ; $6765: $42
    and c                                         ; $6766: $a1
    and $3c                                       ; $6767: $e6 $3c
    ld h, a                                       ; $6769: $67
    sbc a                                         ; $676a: $9f
    db $10                                        ; $676b: $10
    call z, $a897                                 ; $676c: $cc $97 $a8
    scf                                           ; $676f: $37

Jump_03f_6770:
    nop                                           ; $6770: $00
    add c                                         ; $6771: $81
    call c, $f91f                                 ; $6772: $dc $1f $f9
    ld b, a                                       ; $6775: $47
    sbc d                                         ; $6776: $9a
    rst $28                                       ; $6777: $ef
    ret c                                         ; $6778: $d8

    xor [hl]                                      ; $6779: $ae
    db $fc                                        ; $677a: $fc
    ld c, h                                       ; $677b: $4c
    add hl, sp                                    ; $677c: $39
    jp nc, Jump_03f_5794                          ; $677d: $d2 $94 $57

    sbc $00                                       ; $6780: $de $00
    ld b, a                                       ; $6782: $47
    sbc h                                         ; $6783: $9c
    ld [hl], l                                    ; $6784: $75
    call z, $4700                                 ; $6785: $cc $00 $47
    sbc [hl]                                      ; $6788: $9e
    ld [hl], l                                    ; $6789: $75
    call z, $e700                                 ; $678a: $cc $00 $e7
    cp h                                          ; $678d: $bc
    sbc [hl]                                      ; $678e: $9e
    ld a, [bc]                                    ; $678f: $0a
    nop                                           ; $6790: $00
    db $dd                                        ; $6791: $dd
    ld [bc], a                                    ; $6792: $02
    ld a, [de]                                    ; $6793: $1a
    push bc                                       ; $6794: $c5
    ld d, e                                       ; $6795: $53
    ld [hl], a                                    ; $6796: $77
    sub $31                                       ; $6797: $d6 $31
    dec bc                                        ; $6799: $0b

jr_03f_679a:
    cp b                                          ; $679a: $b8
    or h                                          ; $679b: $b4
    rlca                                          ; $679c: $07
    nop                                           ; $679d: $00
    db $dd                                        ; $679e: $dd
    adc $7b                                       ; $679f: $ce $7b
    ld a, h                                       ; $67a1: $7c
    db $dd                                        ; $67a2: $dd
    ld e, c                                       ; $67a3: $59
    rst $00                                       ; $67a4: $c7
    inc l                                         ; $67a5: $2c
    ldh [$d2], a                                  ; $67a6: $e0 $d2
    ld e, $00                                     ; $67a8: $1e $00
    add c                                         ; $67aa: $81
    ld l, l                                       ; $67ab: $6d
    sbc b                                         ; $67ac: $98
    and e                                         ; $67ad: $a3
    add $2e                                       ; $67ae: $c6 $2e
    sbc l                                         ; $67b0: $9d
    ret nc                                        ; $67b1: $d0

    inc h                                         ; $67b2: $24
    call nc, Call_000_3e88                        ; $67b3: $d4 $88 $3e
    rst $10                                       ; $67b6: $d7
    ld e, e                                       ; $67b7: $5b
    or d                                          ; $67b8: $b2
    ld c, [hl]                                    ; $67b9: $4e
    sbc l                                         ; $67ba: $9d
    rst $20                                       ; $67bb: $e7
    adc $16                                       ; $67bc: $ce $16
    rst $10                                       ; $67be: $d7
    rst $28                                       ; $67bf: $ef
    ld [hl], l                                    ; $67c0: $75
    sub $f5                                       ; $67c1: $d6 $f5
    ld a, c                                       ; $67c3: $79
    jr z, jr_03f_683b                             ; $67c4: $28 $75

    rst $20                                       ; $67c6: $e7
    ld a, [hl]                                    ; $67c7: $7e
    sbc l                                         ; $67c8: $9d
    sbc d                                         ; $67c9: $9a
    ld a, [bc]                                    ; $67ca: $0a
    sbc a                                         ; $67cb: $9f
    ld h, a                                       ; $67cc: $67
    add a                                         ; $67cd: $87
    ld h, d                                       ; $67ce: $62
    di                                            ; $67cf: $f3
    ld a, [hl-]                                   ; $67d0: $3a
    sub $21                                       ; $67d1: $d6 $21
    ei                                            ; $67d3: $fb
    cp a                                          ; $67d4: $bf
    call c, $bd00                                 ; $67d5: $dc $00 $bd
    db $dd                                        ; $67d8: $dd
    and e                                         ; $67d9: $a3
    rst $08                                       ; $67da: $cf
    ld b, l                                       ; $67db: $45
    adc $e2                                       ; $67dc: $ce $e2
    add sp, $5f                                   ; $67de: $e8 $5f
    and a                                         ; $67e0: $a7
    dec c                                         ; $67e1: $0d
    rla                                           ; $67e2: $17
    and h                                         ; $67e3: $a4
    add hl, bc                                    ; $67e4: $09
    or [hl]                                       ; $67e5: $b6

Call_03f_67e6:
    cp $a9                                        ; $67e6: $fe $a9
    ldh a, [$95]                                  ; $67e8: $f0 $95
    call nc, $c919                                ; $67ea: $d4 $19 $c9
    ld a, [hl-]                                   ; $67ed: $3a
    ld [hl], l                                    ; $67ee: $75
    sbc [hl]                                      ; $67ef: $9e
    dec sp                                        ; $67f0: $3b
    ld e, e                                       ; $67f1: $5b
    ld e, h                                       ; $67f2: $5c
    cp a                                          ; $67f3: $bf
    rst $10                                       ; $67f4: $d7
    ld e, c                                       ; $67f5: $59
    rst $10                                       ; $67f6: $d7
    rst $20                                       ; $67f7: $e7
    and c                                         ; $67f8: $a1
    call nc, $fb9d                                ; $67f9: $d4 $9d $fb
    ld [hl], l                                    ; $67fc: $75
    ld l, d                                       ; $67fd: $6a
    ld [$4742], a                                 ; $67fe: $ea $42 $47
    rst $08                                       ; $6801: $cf
    add hl, hl                                    ; $6802: $29
    ld h, l                                       ; $6803: $65
    ld c, $7f                                     ; $6804: $0e $7f
    sub b                                         ; $6806: $90
    inc a                                         ; $6807: $3c
    xor $ad                                       ; $6808: $ee $ad
    adc $ff                                       ; $680a: $ce $ff
    dec c                                         ; $680c: $0d
    nop                                           ; $680d: $00
    sub a                                         ; $680e: $97
    jp nc, $d721                                  ; $680f: $d2 $21 $d7

    ld e, e                                       ; $6812: $5b
    or d                                          ; $6813: $b2
    ld c, [hl]                                    ; $6814: $4e
    sbc l                                         ; $6815: $9d
    rst $20                                       ; $6816: $e7
    adc $16                                       ; $6817: $ce $16
    rst $10                                       ; $6819: $d7
    rst $28                                       ; $681a: $ef
    ld [hl], l                                    ; $681b: $75
    sub $f5                                       ; $681c: $d6 $f5
    ld a, c                                       ; $681e: $79
    jr z, jr_03f_6896                             ; $681f: $28 $75

    rst $20                                       ; $6821: $e7
    ld a, [hl]                                    ; $6822: $7e
    sbc l                                         ; $6823: $9d
    sbc d                                         ; $6824: $9a
    ld a, [hl-]                                   ; $6825: $3a
    sub e                                         ; $6826: $93
    or l                                          ; $6827: $b5
    ld b, e                                       ; $6828: $43
    ld [$8bbd], a                                 ; $6829: $ea $bd $8b
    ld d, d                                       ; $682c: $52
    ld h, a                                       ; $682d: $67
    inc h                                         ; $682e: $24
    db $eb                                        ; $682f: $eb
    call nc, $ac99                                ; $6830: $d4 $99 $ac
    dec e                                         ; $6833: $1d
    ld d, d                                       ; $6834: $52
    and a                                         ; $6835: $a7

jr_03f_6836:
    sbc h                                         ; $6836: $9c
    and a                                         ; $6837: $a7
    ld [hl], $8c                                  ; $6838: $36 $8c
    add h                                         ; $683a: $84

jr_03f_683b:
    db $e4                                        ; $683b: $e4
    ld [hl], c                                    ; $683c: $71
    jp c, $9ca6                                   ; $683d: $da $a6 $9c

    adc e                                         ; $6840: $8b
    xor l                                         ; $6841: $ad
    or h                                          ; $6842: $b4
    cp $8f                                        ; $6843: $fe $8f
    inc sp                                        ; $6845: $33
    adc c                                         ; $6846: $89
    xor e                                         ; $6847: $ab
    ld a, [bc]                                    ; $6848: $0a
    xor e                                         ; $6849: $ab
    push bc                                       ; $684a: $c5
    inc e                                         ; $684b: $1c
    ld [hl], c                                    ; $684c: $71
    ld c, $7f                                     ; $684d: $0e $7f
    ld h, $eb                                     ; $684f: $26 $eb
    ld c, [hl]                                    ; $6851: $4e
    jp $cd37                                      ; $6852: $c3 $37 $cd


    ld d, $e7                                     ; $6855: $16 $e7
    add hl, sp                                    ; $6857: $39
    inc hl                                        ; $6858: $23
    ld e, c                                       ; $6859: $59
    and a                                         ; $685a: $a7
    sbc $00                                       ; $685b: $de $00
    or $5c                                        ; $685d: $f6 $5c
    jp c, $9cf8                                   ; $685f: $da $f8 $9c

    push bc                                       ; $6862: $c5
    ld [hl], c                                    ; $6863: $71
    dec h                                         ; $6864: $25
    ld [hl], l                                    ; $6865: $75
    db $10                                        ; $6866: $10
    ld l, e                                       ; $6867: $6b
    sub [hl]                                      ; $6868: $96
    call nc, $c95d                                ; $6869: $d4 $5d $c9
    rst $10                                       ; $686c: $d7
    ld b, d                                       ; $686d: $42
    db $eb                                        ; $686e: $eb
    ld a, [hl+]                                   ; $686f: $2a
    ld b, h                                       ; $6870: $44
    ld c, a                                       ; $6871: $4f
    ld e, h                                       ; $6872: $5c
    ld l, a                                       ; $6873: $6f
    ret                                           ; $6874: $c9


    ld a, [hl-]                                   ; $6875: $3a
    ld [hl], l                                    ; $6876: $75
    sbc [hl]                                      ; $6877: $9e
    dec sp                                        ; $6878: $3b
    ld e, e                                       ; $6879: $5b
    ld e, h                                       ; $687a: $5c
    cp a                                          ; $687b: $bf
    rst $10                                       ; $687c: $d7
    ld e, c                                       ; $687d: $59
    rst $10                                       ; $687e: $d7
    rst $20                                       ; $687f: $e7
    and c                                         ; $6880: $a1
    call nc, $fb9d                                ; $6881: $d4 $9d $fb
    ld [hl], l                                    ; $6884: $75
    ld l, d                                       ; $6885: $6a
    ld [$0b88], a                                 ; $6886: $ea $88 $0b
    rst $18                                       ; $6889: $df
    ld [c], a                                     ; $688a: $e2
    jr jr_03f_6836                                ; $688b: $18 $a9

    di                                            ; $688d: $f3
    call c, $8fa5                                 ; $688e: $dc $a5 $8f
    xor a                                         ; $6891: $af
    di                                            ; $6892: $f3
    ld e, h                                       ; $6893: $5c
    rst $28                                       ; $6894: $ef
    ld h, b                                       ; $6895: $60

jr_03f_6896:
    sbc d                                         ; $6896: $9a
    inc l                                         ; $6897: $2c
    rra                                           ; $6898: $1f
    ld a, c                                       ; $6899: $79
    inc bc                                        ; $689a: $03
    rla                                           ; $689b: $17
    cp l                                          ; $689c: $bd
    adc $64                                       ; $689d: $ce $64
    db $dd                                        ; $689f: $dd
    ld l, c                                       ; $68a0: $69
    ld hl, sp-$5a                                 ; $68a1: $f8 $a6
    dec h                                         ; $68a3: $25
    ld d, d                                       ; $68a4: $52
    ld d, a                                       ; $68a5: $57
    ld [hl], a                                    ; $68a6: $77
    jp hl                                         ; $68a7: $e9


    jp nz, $94f4                                  ; $68a8: $c2 $f4 $94

    call nc, Call_03f_79d7                        ; $68ab: $d4 $d7 $79
    xor [hl]                                      ; $68ae: $ae
    or a                                          ; $68af: $b7
    ld h, h                                       ; $68b0: $64
    sbc l                                         ; $68b1: $9d
    ld a, [hl-]                                   ; $68b2: $3a
    rst $08                                       ; $68b3: $cf
    sbc l                                         ; $68b4: $9d
    dec l                                         ; $68b5: $2d
    xor [hl]                                      ; $68b6: $ae
    rst $18                                       ; $68b7: $df
    db $eb                                        ; $68b8: $eb
    xor h                                         ; $68b9: $ac
    db $eb                                        ; $68ba: $eb
    di                                            ; $68bb: $f3
    ld d, b                                       ; $68bc: $50
    ld [$fdce], a                                 ; $68bd: $ea $ce $fd
    ld a, [hl-]                                   ; $68c0: $3a
    dec [hl]                                      ; $68c1: $35
    ld [hl], l                                    ; $68c2: $75
    ld b, d                                       ; $68c3: $42
    adc e                                         ; $68c4: $8b
    ld l, e                                       ; $68c5: $6b
    inc d                                         ; $68c6: $14
    ld [c], a                                     ; $68c7: $e2
    adc h                                         ; $68c8: $8c
    ld h, h                                       ; $68c9: $64
    sbc l                                         ; $68ca: $9d
    cp d                                          ; $68cb: $ba
    ld c, e                                       ; $68cc: $4b
    ld e, a                                       ; $68cd: $5f
    ld d, d                                       ; $68ce: $52
    ld h, a                                       ; $68cf: $67
    ld e, l                                       ; $68d0: $5d
    ld b, b                                       ; $68d1: $40
    sbc d                                         ; $68d2: $9a
    sbc h                                         ; $68d3: $9c
    ret                                           ; $68d4: $c9


    jp c, Jump_000_1521                           ; $68d5: $da $21 $15

    ld a, $eb                                     ; $68d8: $3e $eb
    ld a, [hl]                                    ; $68da: $7e
    dec d                                         ; $68db: $15
    ld a, [de]                                    ; $68dc: $1a
    ld [$eebe], a                                 ; $68dd: $ea $be $ee
    cp h                                          ; $68e0: $bc
    sbc $00                                       ; $68e1: $de $00
    halt                                          ; $68e3: $76
    or b                                          ; $68e4: $b0
    sbc d                                         ; $68e5: $9a
    ld b, [hl]                                    ; $68e6: $46
    ld [c], a                                     ; $68e7: $e2
    adc [hl]                                      ; $68e8: $8e
    add hl, sp                                    ; $68e9: $39
    ld a, [$f598]                                 ; $68ea: $fa $98 $f5
    sub [hl]                                      ; $68ed: $96
    xor h                                         ; $68ee: $ac
    ld d, e                                       ; $68ef: $53
    rst $20                                       ; $68f0: $e7
    cp c                                          ; $68f1: $b9
    or e                                          ; $68f2: $b3
    push bc                                       ; $68f3: $c5
    push af                                       ; $68f4: $f5
    ld a, e                                       ; $68f5: $7b
    sbc l                                         ; $68f6: $9d
    ld [hl], l                                    ; $68f7: $75
    ld a, l                                       ; $68f8: $7d
    ld e, $4a                                     ; $68f9: $1e $4a
    db $dd                                        ; $68fb: $dd
    cp c                                          ; $68fc: $b9
    ld e, a                                       ; $68fd: $5f
    and a                                         ; $68fe: $a7
    and [hl]                                      ; $68ff: $a6
    jp nz, Jump_03f_5be7                          ; $6900: $c2 $e7 $5b

    and l                                         ; $6903: $a5
    ld sp, hl                                     ; $6904: $f9
    and $53                                       ; $6905: $e6 $53
    ld b, a                                       ; $6907: $47
    call c, $c731                                 ; $6908: $dc $31 $c7
    call z, $f624                                 ; $690b: $cc $24 $f6
    ld [hl], e                                    ; $690e: $73
    jr jr_03f_6964                                ; $690f: $18 $53

    ld l, a                                       ; $6911: $6f
    nop                                           ; $6912: $00
    halt                                          ; $6913: $76
    or b                                          ; $6914: $b0
    sbc d                                         ; $6915: $9a
    ld b, [hl]                                    ; $6916: $46
    ld [c], a                                     ; $6917: $e2
    ld c, [hl]                                    ; $6918: $4e
    jr c, jr_03f_6995                             ; $6919: $38 $7a

    ld h, $eb                                     ; $691b: $26 $eb
    ld c, [hl]                                    ; $691d: $4e
    jp Jump_000_2d37                              ; $691e: $c3 $37 $2d


    sub c                                         ; $6921: $91
    ld a, [hl-]                                   ; $6922: $3a
    rst $08                                       ; $6923: $cf
    push af                                       ; $6924: $f5
    sub [hl]                                      ; $6925: $96
    xor h                                         ; $6926: $ac
    ld d, e                                       ; $6927: $53
    rst $20                                       ; $6928: $e7
    cp c                                          ; $6929: $b9
    or e                                          ; $692a: $b3
    push bc                                       ; $692b: $c5
    push af                                       ; $692c: $f5
    ld a, e                                       ; $692d: $7b
    sbc l                                         ; $692e: $9d
    ld [hl], l                                    ; $692f: $75
    ld a, l                                       ; $6930: $7d
    ld e, $4a                                     ; $6931: $1e $4a
    db $dd                                        ; $6933: $dd
    cp c                                          ; $6934: $b9
    ld e, a                                       ; $6935: $5f
    and a                                         ; $6936: $a7
    and [hl]                                      ; $6937: $a6
    sbc $bb                                       ; $6938: $de $bb
    add sp, $57                                   ; $693a: $e8 $57
    cp a                                          ; $693c: $bf
    dec [hl]                                      ; $693d: $35
    push bc                                       ; $693e: $c5
    and $a7                                       ; $693f: $e6 $a7
    adc c                                         ; $6941: $89
    xor e                                         ; $6942: $ab
    sbc l                                         ; $6943: $9d
    ld [hl], l                                    ; $6944: $75
    rlca                                          ; $6945: $07
    call nz, $a856                                ; $6946: $c4 $56 $a8
    ldh a, [$7d]                                  ; $6949: $f0 $7d
    add c                                         ; $694b: $81
    inc e                                         ; $694c: $1c
    cp [hl]                                       ; $694d: $be
    ld c, [hl]                                    ; $694e: $4e
    inc de                                        ; $694f: $13
    ld b, a                                       ; $6950: $47
    adc l                                         ; $6951: $8d
    rlca                                          ; $6952: $07
    add h                                         ; $6953: $84
    call $cebf                                    ; $6954: $cd $bf $ce
    cp d                                          ; $6957: $ba
    adc h                                         ; $6958: $8c
    ld a, [c]                                     ; $6959: $f2
    cp d                                          ; $695a: $ba
    ret nc                                        ; $695b: $d0

    pop de                                        ; $695c: $d1
    inc de                                        ; $695d: $13
    and a                                         ; $695e: $a7
    sub h                                         ; $695f: $94
    dec [hl]                                      ; $6960: $35
    inc [hl]                                      ; $6961: $34
    push bc                                       ; $6962: $c5
    ld l, c                                       ; $6963: $69

jr_03f_6964:
    ld l, $a4                                     ; $6964: $2e $a4
    db $f4                                        ; $6966: $f4
    ld [hl], e                                    ; $6967: $73
    cp [hl]                                       ; $6968: $be
    sbc c                                         ; $6969: $99
    or $85                                        ; $696a: $f6 $85
    ld a, d                                       ; $696c: $7a
    inc bc                                        ; $696d: $03
    halt                                          ; $696e: $76
    or b                                          ; $696f: $b0
    sbc d                                         ; $6970: $9a
    ld b, [hl]                                    ; $6971: $46
    ld [c], a                                     ; $6972: $e2
    ld a, [hl+]                                   ; $6973: $2a
    cpl                                           ; $6974: $2f
    dec l                                         ; $6975: $2d
    ld [hl], l                                    ; $6976: $75
    cp l                                          ; $6977: $bd
    dec h                                         ; $6978: $25
    db $eb                                        ; $6979: $eb
    call nc, $ee79                                ; $697a: $d4 $79 $ee
    ld l, h                                       ; $697d: $6c
    ld [hl], c                                    ; $697e: $71
    db $fd                                        ; $697f: $fd
    ld e, [hl]                                    ; $6980: $5e
    ld h, a                                       ; $6981: $67
    ld e, l                                       ; $6982: $5d
    sbc a                                         ; $6983: $9f
    add a                                         ; $6984: $87

Jump_03f_6985:
    ld d, d                                       ; $6985: $52
    ld [hl], a                                    ; $6986: $77
    xor $d7                                       ; $6987: $ee $d7
    xor c                                         ; $6989: $a9
    xor c                                         ; $698a: $a9
    ld c, e                                       ; $698b: $4b
    db $e3                                        ; $698c: $e3
    ld c, d                                       ; $698d: $4a
    ld c, h                                       ; $698e: $4c
    dec e                                         ; $698f: $1d
    ld [hl], c                                    ; $6990: $71
    or $09                                        ; $6991: $f6 $09
    pop bc                                        ; $6993: $c1
    ld a, h                                       ; $6994: $7c

jr_03f_6995:
    adc c                                         ; $6995: $89
    ld a, d                                       ; $6996: $7a
    rst $28                                       ; $6997: $ef
    ld l, h                                       ; $6998: $6c
    and a                                         ; $6999: $a7
    and $67                                       ; $699a: $e6 $67
    ld [de], a                                    ; $699c: $12
    ld h, a                                       ; $699d: $67
    ld e, h                                       ; $699e: $5c
    di                                            ; $699f: $f3
    rst $28                                       ; $69a0: $ef
    ld [hl], e                                    ; $69a1: $73
    sub $11                                       ; $69a2: $d6 $11
    ld c, l                                       ; $69a4: $4d
    ld h, d                                       ; $69a5: $62
    sub h                                         ; $69a6: $94
    sub a                                         ; $69a7: $97
    ld l, $dd                                     ; $69a8: $2e $dd
    rla                                           ; $69aa: $17
    ret z                                         ; $69ab: $c8

    ld h, c                                       ; $69ac: $61
    sbc $00                                       ; $69ad: $de $00
    add c                                         ; $69af: $81
    ld l, l                                       ; $69b0: $6d
    ld h, $6b                                     ; $69b1: $26 $6b
    adc d                                         ; $69b3: $8a
    ld l, c                                       ; $69b4: $69
    xor a                                         ; $69b5: $af
    dec bc                                        ; $69b6: $0b
    ld e, a                                       ; $69b7: $5f
    ld a, [hl]                                    ; $69b8: $7e
    ld h, $51                                     ; $69b9: $26 $51
    add hl, bc                                    ; $69bb: $09
    cp c                                          ; $69bc: $b9
    ld h, $ab                                     ; $69bd: $26 $ab
    cp e                                          ; $69bf: $bb
    ld [hl], h                                    ; $69c0: $74
    cp l                                          ; $69c1: $bd
    dec h                                         ; $69c2: $25
    db $eb                                        ; $69c3: $eb
    call nc, $ee79                                ; $69c4: $d4 $79 $ee
    ld l, h                                       ; $69c7: $6c
    ld [hl], c                                    ; $69c8: $71
    db $fd                                        ; $69c9: $fd
    ld e, [hl]                                    ; $69ca: $5e
    ld h, a                                       ; $69cb: $67
    ld e, l                                       ; $69cc: $5d
    sbc a                                         ; $69cd: $9f
    add a                                         ; $69ce: $87
    ld d, d                                       ; $69cf: $52
    ld [hl], a                                    ; $69d0: $77
    xor $d7                                       ; $69d1: $ee $d7

jr_03f_69d3:
    xor c                                         ; $69d3: $a9
    xor c                                         ; $69d4: $a9
    ldh a, [$85]                                  ; $69d5: $f0 $85
    adc [hl]                                      ; $69d7: $8e
    sbc [hl]                                      ; $69d8: $9e
    ld a, [hl-]                                   ; $69d9: $3a
    and a                                         ; $69da: $a7
    cpl                                           ; $69db: $2f
    xor e                                         ; $69dc: $ab
    cp e                                          ; $69dd: $bb
    ld [hl], h                                    ; $69de: $74
    ld h, $eb                                     ; $69df: $26 $eb
    ld c, [hl]                                    ; $69e1: $4e
    jp Jump_000_2d37                              ; $69e2: $c3 $37 $2d


    sub c                                         ; $69e5: $91
    ld a, d                                       ; $69e6: $7a
    inc bc                                        ; $69e7: $03
    add c                                         ; $69e8: $81
    sub h                                         ; $69e9: $94
    add hl, sp                                    ; $69ea: $39
    ld e, h                                       ; $69eb: $5c
    rst $00                                       ; $69ec: $c7
    ld l, c                                       ; $69ed: $69
    call z, $8e61                                 ; $69ee: $cc $61 $8e
    cp d                                          ; $69f1: $ba
    ld hl, sp-$48                                 ; $69f2: $f8 $b8
    ld a, [$de4b]                                 ; $69f4: $fa $4b $de
    cp e                                          ; $69f7: $bb
    ld a, [hl-]                                   ; $69f8: $3a
    rst $00                                       ; $69f9: $c7
    ld a, [hl-]                                   ; $69fa: $3a
    and h                                         ; $69fb: $a4
    xor c                                         ; $69fc: $a9
    ld a, [hl-]                                   ; $69fd: $3a
    ld l, l                                       ; $69fe: $6d
    ld b, h                                       ; $69ff: $44
    sbc a                                         ; $6a00: $9f
    ld [hl], e                                    ; $6a01: $73
    cp b                                          ; $6a02: $b8
    or b                                          ; $6a03: $b0
    jp hl                                         ; $6a04: $e9


    add a                                         ; $6a05: $87
    rra                                           ; $6a06: $1f
    or d                                          ; $6a07: $b2
    ld d, b                                       ; $6a08: $50
    ld l, a                                       ; $6a09: $6f
    nop                                           ; $6a0a: $00
    rla                                           ; $6a0b: $17
    and l                                         ; $6a0c: $a5
    ld c, [hl]                                    ; $6a0d: $4e
    jr @-$19                                      ; $6a0e: $18 $e5

    ld h, e                                       ; $6a10: $63
    ld [$7134], a                                 ; $6a11: $ea $34 $71
    sub c                                         ; $6a14: $91
    ld [hl+], a                                   ; $6a15: $22
    xor l                                         ; $6a16: $ad
    ld d, e                                       ; $6a17: $53
    xor b                                         ; $6a18: $a8
    rst $30                                       ; $6a19: $f7
    ld [bc], a                                    ; $6a1a: $02
    sbc l                                         ; $6a1b: $9d
    ld l, $fb                                     ; $6a1c: $2e $fb
    and l                                         ; $6a1e: $a5
    ld l, $72                                     ; $6a1f: $2e $72
    jp c, Jump_03f_4720                           ; $6a21: $da $20 $47

    ld e, h                                       ; $6a24: $5c
    sbc b                                         ; $6a25: $98
    or d                                          ; $6a26: $b2
    sbc b                                         ; $6a27: $98
    cp $57                                        ; $6a28: $fe $57
    ld a, [hl]                                    ; $6a2a: $7e

jr_03f_6a2b:
    pop bc                                        ; $6a2b: $c1
    rst $28                                       ; $6a2c: $ef
    or h                                          ; $6a2d: $b4
    ld hl, sp-$5a                                 ; $6a2e: $f8 $a6
    reti                                          ; $6a30: $d9


    ld [c], a                                     ; $6a31: $e2
    dec c                                         ; $6a32: $0d
    nop                                           ; $6a33: $00
    ld a, l                                       ; $6a34: $7d
    ld [hl], e                                    ; $6a35: $73
    add l                                         ; $6a36: $85
    dec bc                                        ; $6a37: $0b
    add l                                         ; $6a38: $85
    ld a, [de]                                    ; $6a39: $1a
    xor c                                         ; $6a3a: $a9
    ei                                            ; $6a3b: $fb
    ld c, b                                       ; $6a3c: $48
    inc [hl]                                      ; $6a3d: $34
    call $f716                                    ; $6a3e: $cd $16 $f7
    dec hl                                        ; $6a41: $2b
    xor c                                         ; $6a42: $a9
    db $eb                                        ; $6a43: $eb
    jr c, jr_03f_69d3                             ; $6a44: $38 $8d

    xor c                                         ; $6a46: $a9
    di                                            ; $6a47: $f3
    inc e                                         ; $6a48: $1c
    inc h                                         ; $6a49: $24
    adc a                                         ; $6a4a: $8f
    dec l                                         ; $6a4b: $2d
    and $bd                                       ; $6a4c: $e6 $bd
    ret nz                                        ; $6a4e: $c0

    call nz, Call_03f_5e75                        ; $6a4f: $c4 $75 $5e
    db $e3                                        ; $6a52: $e3
    ld h, e                                       ; $6a53: $63
    db $e4                                        ; $6a54: $e4
    xor b                                         ; $6a55: $a8
    pop af                                        ; $6a56: $f1
    add b                                         ; $6a57: $80
    or b                                          ; $6a58: $b0
    ld sp, hl                                     ; $6a59: $f9
    call nc, $001b                                ; $6a5a: $d4 $1b $00
    ld d, a                                       ; $6a5d: $57
    rst $20                                       ; $6a5e: $e7
    ld e, b                                       ; $6a5f: $58
    add a                                         ; $6a60: $87
    inc [hl]                                      ; $6a61: $34
    ld d, l                                       ; $6a62: $55
    and a                                         ; $6a63: $a7
    adc l                                         ; $6a64: $8d
    add sp, $73                                   ; $6a65: $e8 $73
    ld c, $7f                                     ; $6a67: $0e $7f
    call nc, $d1f8                                ; $6a69: $d4 $f8 $d1
    db $fd                                        ; $6a6c: $fd
    ld c, h                                       ; $6a6d: $4c
    sub $61                                       ; $6a6e: $d6 $61
    ld h, c                                       ; $6a70: $61
    ld a, h                                       ; $6a71: $7c
    ld hl, sp+$42                                 ; $6a72: $f8 $42
    ld c, d                                       ; $6a74: $4a
    xor $cb                                       ; $6a75: $ee $cb
    xor d                                         ; $6a77: $aa
    dec de                                        ; $6a78: $1b
    ld a, [hl]                                    ; $6a79: $7e
    ld e, c                                       ; $6a7a: $59
    call $c499                                    ; $6a7b: $cd $99 $c4
    ld a, [bc]                                    ; $6a7e: $0a
    dec h                                         ; $6a7f: $25
    jp c, $b88c                                   ; $6a80: $da $8c $b8

    adc [hl]                                      ; $6a83: $8e
    db $d3                                        ; $6a84: $d3
    sbc b                                         ; $6a85: $98
    scf                                           ; $6a86: $37
    nop                                           ; $6a87: $00
    add c                                         ; $6a88: $81
    ld l, l                                       ; $6a89: $6d
    dec [hl]                                      ; $6a8a: $35
    ld d, a                                       ; $6a8b: $57
    ld [hl], d                                    ; $6a8c: $72
    and c                                         ; $6a8d: $a1
    db $10                                        ; $6a8e: $10
    ld [hl], d                                    ; $6a8f: $72
    jr jr_03f_6af1                                ; $6a90: $18 $5f

    pop hl                                        ; $6a92: $e1
    adc e                                         ; $6a93: $8b
    sbc h                                         ; $6a94: $9c
    ld l, a                                       ; $6a95: $6f
    ld d, d                                       ; $6a96: $52
    ld [hl], l                                    ; $6a97: $75
    ld d, $c7                                     ; $6a98: $16 $c7
    ld d, c                                       ; $6a9a: $51
    ld d, e                                       ; $6a9b: $53
    daa                                           ; $6a9c: $27
    adc h                                         ; $6a9d: $8c
    ld a, [c]                                     ; $6a9e: $f2
    ld sp, $9a75                                  ; $6a9f: $31 $75 $9a
    jr c, jr_03f_6a2b                             ; $6aa2: $38 $87

    dec bc                                        ; $6aa4: $0b
    db $d3                                        ; $6aa5: $d3
    db $e4                                        ; $6aa6: $e4
    jr nz, jr_03f_6b22                            ; $6aa7: $20 $79

    ld l, l                                       ; $6aa9: $6d
    call nz, Call_03f_7a98                        ; $6aaa: $c4 $98 $7a
    inc bc                                        ; $6aad: $03
    add c                                         ; $6aae: $81
    adc l                                         ; $6aaf: $8d

jr_03f_6ab0:
    ld [hl], l                                    ; $6ab0: $75
    jr z, @+$5e                                   ; $6ab1: $28 $5c

    call $b905                                    ; $6ab3: $cd $05 $b9
    ld d, b                                       ; $6ab6: $50
    ld [$8c39], sp                                ; $6ab7: $08 $39 $8c
    rst $28                                       ; $6aba: $ef
    ld [hl], e                                    ; $6abb: $73
    add $b6                                       ; $6abc: $c6 $b6
    adc $29                                       ; $6abe: $ce $29
    push bc                                       ; $6ac0: $c5
    and $17                                       ; $6ac1: $e6 $17
    adc c                                         ; $6ac3: $89
    sub h                                         ; $6ac4: $94
    dec b                                         ; $6ac5: $05
    or e                                          ; $6ac6: $b3
    xor $48                                       ; $6ac7: $ee $48
    ld [$000d], a                                 ; $6ac9: $ea $0d $00
    rla                                           ; $6acc: $17
    db $fd                                        ; $6acd: $fd
    ld c, $c0                                     ; $6ace: $0e $c0
    ld h, [hl]                                    ; $6ad0: $66
    ld a, [hl]                                    ; $6ad1: $7e
    cp [hl]                                       ; $6ad2: $be
    ld d, l                                       ; $6ad3: $55
    jr z, jr_03f_6ab0                             ; $6ad4: $28 $da

    ld l, h                                       ; $6ad6: $6c
    ld [hl], c                                    ; $6ad7: $71
    ld d, $c7                                     ; $6ad8: $16 $c7
    ld b, l                                       ; $6ada: $45
    ld [hl+], a                                   ; $6adb: $22
    sub h                                         ; $6adc: $94
    and e                                         ; $6add: $a3
    adc $e2                                       ; $6ade: $ce $e2
    cp b                                          ; $6ae0: $b8
    sbc d                                         ; $6ae1: $9a
    dec bc                                        ; $6ae2: $0b
    ld e, l                                       ; $6ae3: $5d
    ld a, c                                       ; $6ae4: $79
    cp h                                          ; $6ae5: $bc
    ld bc, $f667                                  ; $6ae6: $01 $67 $f6
    ei                                            ; $6ae9: $fb
    ld a, [c]                                     ; $6aea: $f2
    adc e                                         ; $6aeb: $8b
    xor [hl]                                      ; $6aec: $ae
    jp nc, Jump_000_3f28                          ; $6aed: $d2 $28 $3f

    add a                                         ; $6af0: $87

jr_03f_6af1:
    inc de                                        ; $6af1: $13
    sub [hl]                                      ; $6af2: $96
    db $ec                                        ; $6af3: $ec
    scf                                           ; $6af4: $37
    ld [c], a                                     ; $6af5: $e2
    jp z, Jump_03f_5aaf                           ; $6af6: $ca $af $5a

    adc b                                         ; $6af9: $88
    sub c                                         ; $6afa: $91
    bit 7, l                                      ; $6afb: $cb $7d
    add c                                         ; $6afd: $81
    ld [hl], d                                    ; $6afe: $72
    pop hl                                        ; $6aff: $e1
    dec bc                                        ; $6b00: $0b
    ld c, l                                       ; $6b01: $4d
    di                                            ; $6b02: $f3
    ld a, c                                       ; $6b03: $79
    xor a                                         ; $6b04: $af
    rrca                                          ; $6b05: $0f
    and a                                         ; $6b06: $a7
    call nz, $c4d8                                ; $6b07: $c4 $d8 $c4
    and $57                                       ; $6b0a: $e6 $57
    dec sp                                        ; $6b0c: $3b
    inc de                                        ; $6b0d: $13
    call z, $5dd5                                 ; $6b0e: $cc $d5 $5d
    cp d                                          ; $6b11: $ba
    inc bc                                        ; $6b12: $03
    ld h, d                                       ; $6b13: $62
    dec hl                                        ; $6b14: $2b
    scf                                           ; $6b15: $37
    nop                                           ; $6b16: $00
    ld a, l                                       ; $6b17: $7d
    ld [hl], e                                    ; $6b18: $73
    call nc, $c7c5                                ; $6b19: $d4 $c5 $c7
    push de                                       ; $6b1c: $d5
    ld e, a                                       ; $6b1d: $5f
    ld [hl], d                                    ; $6b1e: $72
    ld c, d                                       ; $6b1f: $4a
    sbc c                                         ; $6b20: $99
    rst $20                                       ; $6b21: $e7

jr_03f_6b22:
    xor h                                         ; $6b22: $ac
    call nc, $01bc                                ; $6b23: $d4 $bc $01
    add c                                         ; $6b26: $81
    ld l, c                                       ; $6b27: $69
    sbc l                                         ; $6b28: $9d
    jp $ad85                                      ; $6b29: $c3 $85 $ad


    cp h                                          ; $6b2c: $bc
    inc l                                         ; $6b2d: $2c
    ld a, h                                       ; $6b2e: $7c
    ld sp, hl                                     ; $6b2f: $f9
    sub l                                         ; $6b30: $95
    sbc a                                         ; $6b31: $9f
    ret                                           ; $6b32: $c9


    jp c, $f361                                   ; $6b33: $da $61 $f3

    rst $28                                       ; $6b36: $ef
    ld l, a                                       ; $6b37: $6f
    nop                                           ; $6b38: $00
    rst $10                                       ; $6b39: $d7
    sub [hl]                                      ; $6b3a: $96
    ret c                                         ; $6b3b: $d8

    ld [$89af], a                                 ; $6b3c: $ea $af $89
    sub c                                         ; $6b3f: $91
    xor e                                         ; $6b40: $ab
    add hl, sp                                    ; $6b41: $39
    ld l, l                                       ; $6b42: $6d
    call nz, Call_03f_7398                        ; $6b43: $c4 $98 $73
    cp b                                          ; $6b46: $b8
    jr nc, jr_03f_6b96                            ; $6b47: $30 $4d

    ld l, $2c                                     ; $6b49: $2e $2c
    adc a                                         ; $6b4b: $8f
    ld a, c                                       ; $6b4c: $79
    inc bc                                        ; $6b4d: $03
    halt                                          ; $6b4e: $76
    ld a, [de]                                    ; $6b4f: $1a
    db $d3                                        ; $6b50: $d3
    cp d                                          ; $6b51: $ba
    or b                                          ; $6b52: $b0
    ld h, c                                       ; $6b53: $61
    ld a, h                                       ; $6b54: $7c
    sbc a                                         ; $6b55: $9f
    db $d3                                        ; $6b56: $d3
    db $ec                                        ; $6b57: $ec
    ld [$70e7], sp                                ; $6b58: $08 $e7 $70
    pop hl                                        ; $6b5b: $e1
    scf                                           ; $6b5c: $37
    db $fd                                        ; $6b5d: $fd
    ld a, [hl]                                    ; $6b5e: $7e
    sbc h                                         ; $6b5f: $9c
    ld [hl], l                                    ; $6b60: $75
    cp a                                          ; $6b61: $bf
    ld a, [bc]                                    ; $6b62: $0a
    dec c                                         ; $6b63: $0d
    ld [hl], l                                    ; $6b64: $75
    dec [hl]                                      ; $6b65: $35
    rla                                           ; $6b66: $17
    ld [hl], $34                                  ; $6b67: $36 $34
    pop bc                                        ; $6b69: $c1
    rra                                           ; $6b6a: $1f
    ld [hl], c                                    ; $6b6b: $71
    push hl                                       ; $6b6c: $e5
    ld b, a                                       ; $6b6d: $47
    dec c                                         ; $6b6e: $0d
    cp a                                          ; $6b6f: $bf
    ld hl, sp-$41                                 ; $6b70: $f8 $bf
    ld bc, $7576                                  ; $6b72: $01 $76 $75
    ld c, b                                       ; $6b75: $48
    ld d, e                                       ; $6b76: $53
    ld [hl], l                                    ; $6b77: $75
    jp c, Jump_000_3e88                           ; $6b78: $da $88 $3e

    rst $20                                       ; $6b7b: $e7
    ld [hl], b                                    ; $6b7c: $70
    sbc l                                         ; $6b7d: $9d
    inc [hl]                                      ; $6b7e: $34
    adc h                                         ; $6b7f: $8c
    add hl, bc                                    ; $6b80: $09
    ld e, a                                       ; $6b81: $5f
    ld c, b                                       ; $6b82: $48
    ret                                           ; $6b83: $c9


    ld b, l                                       ; $6b84: $45
    ld sp, hl                                     ; $6b85: $f9
    adc $f7                                       ; $6b86: $ce $f7
    xor e                                         ; $6b88: $ab
    ld a, [hl-]                                   ; $6b89: $3a
    rst $28                                       ; $6b8a: $ef
    inc h                                         ; $6b8b: $24
    rla                                           ; $6b8c: $17
    cp [hl]                                       ; $6b8d: $be
    db $fc                                        ; $6b8e: $fc
    inc a                                         ; $6b8f: $3c
    xor e                                         ; $6b90: $ab
    dec de                                        ; $6b91: $1b
    ld [hl], $a9                                  ; $6b92: $36 $a9
    add hl, sp                                    ; $6b94: $39
    add a                                         ; $6b95: $87

jr_03f_6b96:
    dec bc                                        ; $6b96: $0b
    db $d3                                        ; $6b97: $d3

jr_03f_6b98:
    db $e4                                        ; $6b98: $e4
    ld l, d                                       ; $6b99: $6a
    or $4b                                        ; $6b9a: $f6 $4b
    cp c                                          ; $6b9c: $b9
    ld bc, $737d                                  ; $6b9d: $01 $7d $73
    ld sp, $ea7d                                  ; $6ba0: $31 $7d $ea
    ld c, d                                       ; $6ba3: $4a
    ld [$5184], a                                 ; $6ba4: $ea $84 $51
    ld a, $a6                                     ; $6ba7: $3e $a6
    adc [hl]                                      ; $6ba9: $8e
    ld a, [de]                                    ; $6baa: $1a
    cp e                                          ; $6bab: $bb
    ld [hl], b                                    ; $6bac: $70
    add h                                         ; $6bad: $84
    dec d                                         ; $6bae: $15
    ld l, h                                       ; $6baf: $6c
    sbc l                                         ; $6bb0: $9d
    and $53                                       ; $6bb1: $e6 $53
    rla                                           ; $6bb3: $17
    ld d, d                                       ; $6bb4: $52
    ld [$6247], a                                 ; $6bb5: $ea $47 $62
    ld h, h                                       ; $6bb8: $64
    ld c, l                                       ; $6bb9: $4d
    adc h                                         ; $6bba: $8c
    add h                                         ; $6bbb: $84
    xor a                                         ; $6bbc: $af
    cp e                                          ; $6bbd: $bb
    ld a, [hl]                                    ; $6bbe: $7e
    add a                                         ; $6bbf: $87
    jp c, Jump_000_06f3                           ; $6bc0: $da $f3 $06

    cp l                                          ; $6bc3: $bd
    add l                                         ; $6bc4: $85
    add hl, sp                                    ; $6bc5: $39
    adc e                                         ; $6bc6: $8b
    db $e3                                        ; $6bc7: $e3
    ld e, b                                       ; $6bc8: $58
    ld d, [hl]                                    ; $6bc9: $56
    cp a                                          ; $6bca: $bf
    sbc b                                         ; $6bcb: $98
    inc e                                         ; $6bcc: $1c
    ld [hl], l                                    ; $6bcd: $75
    dec h                                         ; $6bce: $25
    ld d, a                                       ; $6bcf: $57
    or e                                          ; $6bd0: $b3
    ld e, a                                       ; $6bd1: $5f
    jp z, $8e2c                                   ; $6bd2: $ca $2c $8e

    adc e                                         ; $6bd5: $8b
    ld b, h                                       ; $6bd6: $44
    jr z, @+$71                                   ; $6bd7: $28 $6f

    nop                                           ; $6bd9: $00
    cp l                                          ; $6bda: $bd
    ld d, [hl]                                    ; $6bdb: $56
    and c                                         ; $6bdc: $a1
    and c                                         ; $6bdd: $a1
    adc [hl]                                      ; $6bde: $8e
    ld h, $98                                     ; $6bdf: $26 $98
    di                                            ; $6be1: $f3
    ld e, h                                       ; $6be2: $5c
    ld c, l                                       ; $6be3: $4d
    ld c, h                                       ; $6be4: $4c
    db $dd                                        ; $6be5: $dd
    ld e, e                                       ; $6be6: $5b
    inc e                                         ; $6be7: $1c
    ld c, e                                       ; $6be8: $4b
    ld c, c                                       ; $6be9: $49

jr_03f_6bea:
    sbc l                                         ; $6bea: $9d
    or a                                          ; $6beb: $b7
    ld a, c                                       ; $6bec: $79
    ld e, l                                       ; $6bed: $5d
    ld [hl], l                                    ; $6bee: $75

Jump_03f_6bef:
    sub a                                         ; $6bef: $97
    ld l, c                                       ; $6bf0: $69
    add l                                         ; $6bf1: $85
    ld a, [hl-]                                   ; $6bf2: $3a
    rst $08                                       ; $6bf3: $cf
    push de                                       ; $6bf4: $d5
    ld l, l                                       ; $6bf5: $6d
    db $fd                                        ; $6bf6: $fd
    ld e, h                                       ; $6bf7: $5c
    add l                                         ; $6bf8: $85
    jr jr_03f_6b98                                ; $6bf9: $18 $9d

    add a                                         ; $6bfb: $87
    rst $08                                       ; $6bfc: $cf
    cp b                                          ; $6bfd: $b8
    ld b, a                                       ; $6bfe: $47
    sbc a                                         ; $6bff: $9f
    jp $e51c                                      ; $6c00: $c3 $1c $e5


    ld d, a                                       ; $6c03: $57
    ld [hl], a                                    ; $6c04: $77
    jp hl                                         ; $6c05: $e9


    inc l                                         ; $6c06: $2c
    adc [hl]                                      ; $6c07: $8e
    ld [hl], e                                    ; $6c08: $73
    jr c, jr_03f_6bea                             ; $6c09: $38 $df

    ld a, [hl-]                                   ; $6c0b: $3a
    xor [hl]                                      ; $6c0c: $ae
    ld e, a                                       ; $6c0d: $5f
    xor $57                                       ; $6c0e: $ee $57
    cp d                                          ; $6c10: $ba
    jp nz, $ffd6                                  ; $6c11: $c2 $d6 $ff

    ld b, $76                                     ; $6c14: $06 $76
    ld a, [de]                                    ; $6c16: $1a
    db $d3                                        ; $6c17: $d3
    cp d                                          ; $6c18: $ba
    add [hl]                                      ; $6c19: $86
    sub c                                         ; $6c1a: $91
    jr jr_03f_6c3c                                ; $6c1b: $18 $1f

    ld a, l                                       ; $6c1d: $7d
    adc $64                                       ; $6c1e: $ce $64
    db $ed                                        ; $6c20: $ed
    or b                                          ; $6c21: $b0
    sbc c                                         ; $6c22: $99
    sub a                                         ; $6c23: $97
    sbc d                                         ; $6c24: $9a
    inc sp                                        ; $6c25: $33
    adc c                                         ; $6c26: $89
    xor e                                         ; $6c27: $ab
    db $db                                        ; $6c28: $db
    sbc $b8                                       ; $6c29: $de $b8
    rla                                           ; $6c2b: $17
    sub [hl]                                      ; $6c2c: $96
    ld e, a                                       ; $6c2d: $5f
    jp $6948                                      ; $6c2e: $c3 $48 $69


    add hl, hl                                    ; $6c31: $29
    scf                                           ; $6c32: $37
    nop                                           ; $6c33: $00
    ld bc, $9e8e                                  ; $6c34: $01 $8e $9e
    or e                                          ; $6c37: $b3
    jr c, jr_03f_6c88                             ; $6c38: $38 $4e

    ld l, l                                       ; $6c3a: $6d
    ld c, e                                       ; $6c3b: $4b

jr_03f_6c3c:
    ld c, [hl]                                    ; $6c3c: $4e
    ld sp, hl                                     ; $6c3d: $f9
    ld [hl], e                                    ; $6c3e: $73
    jr c, @+$63                                   ; $6c3f: $38 $61

    sub h                                         ; $6c41: $94
    adc a                                         ; $6c42: $8f
    add hl, bc                                    ; $6c43: $09
    ld e, a                                       ; $6c44: $5f
    ld c, b                                       ; $6c45: $48
    ld c, c                                       ; $6c46: $49
    ld hl, sp-$56                                 ; $6c47: $f8 $aa
    push hl                                       ; $6c49: $e5
    pop de                                        ; $6c4a: $d1
    ld a, h                                       ; $6c4b: $7c
    ld c, l                                       ; $6c4c: $4d
    adc h                                         ; $6c4d: $8c
    add h                                         ; $6c4e: $84
    cpl                                           ; $6c4f: $2f
    ld [de], a                                    ; $6c50: $12
    and c                                         ; $6c51: $a1
    ld e, h                                       ; $6c52: $5c
    call Call_000_297e                            ; $6c53: $cd $7e $29
    dec bc                                        ; $6c56: $0b
    dec de                                        ; $6c57: $1b
    add $9f                                       ; $6c58: $c6 $9f
    push bc                                       ; $6c5a: $c5
    ld [hl], c                                    ; $6c5b: $71
    push hl                                       ; $6c5c: $e5
    rla                                           ; $6c5d: $17
    ld d, d                                       ; $6c5e: $52
    inc [hl]                                      ; $6c5f: $34
    pop af                                        ; $6c60: $f1
    ld h, a                                       ; $6c61: $67
    ld [hl], c                                    ; $6c62: $71
    ld e, h                                       ; $6c63: $5c
    sbc b                                         ; $6c64: $98
    ld l, d                                       ; $6c65: $6a
    cp e                                          ; $6c66: $bb
    ldh a, [$e5]                                  ; $6c67: $f0 $e5
    ld h, a                                       ; $6c69: $67
    ld [hl], c                                    ; $6c6a: $71
    ld e, h                                       ; $6c6b: $5c
    call $9b05                                    ; $6c6c: $cd $05 $9b
    ld l, c                                       ; $6c6f: $69
    sub h                                         ; $6c70: $94
    rst $00                                       ; $6c71: $c7
    dec de                                        ; $6c72: $1b
    nop                                           ; $6c73: $00
    sub a                                         ; $6c74: $97
    db $e3                                        ; $6c75: $e3
    xor a                                         ; $6c76: $af
    jp nz, $a3fe                                  ; $6c77: $c2 $fe $a3

    ld b, [hl]                                    ; $6c7a: $46
    ld d, a                                       ; $6c7b: $57
    pop hl                                        ; $6c7c: $e1
    adc b                                         ; $6c7d: $88
    ld [hl], e                                    ; $6c7e: $73
    ld hl, sp+$23                                 ; $6c7f: $f8 $23
    xor h                                         ; $6c81: $ac
    jr nc, @-$49                                  ; $6c82: $30 $b5

    sbc c                                         ; $6c84: $99
    ld h, [hl]                                    ; $6c85: $66
    adc e                                         ; $6c86: $8b
    sub e                                         ; $6c87: $93

jr_03f_6c88:
    adc h                                         ; $6c88: $8c
    rra                                           ; $6c89: $1f
    ld d, e                                       ; $6c8a: $53
    jp c, Jump_000_3acf                           ; $6c8b: $da $cf $3a

    ld l, d                                       ; $6c8e: $6a
    ld [hl], h                                    ; $6c8f: $74
    dec d                                         ; $6c90: $15
    xor [hl]                                      ; $6c91: $ae
    ld a, [hl]                                    ; $6c92: $7e
    pop hl                                        ; $6c93: $e1
    ei                                            ; $6c94: $fb
    sbc h                                         ; $6c95: $9c
    ld [hl], a                                    ; $6c96: $77
    ld a, [c]                                     ; $6c97: $f2
    jr jr_03f_6cd3                                ; $6c98: $18 $39

    ld h, l                                       ; $6c9a: $65
    db $fd                                        ; $6c9b: $fd
    ld hl, sp+$7a                                 ; $6c9c: $f8 $7a
    inc bc                                        ; $6c9e: $03
    halt                                          ; $6c9f: $76
    ld l, b                                       ; $6ca0: $68
    ld e, $e3                                     ; $6ca1: $1e $e3
    ei                                            ; $6ca3: $fb
    sbc h                                         ; $6ca4: $9c
    rst $20                                       ; $6ca5: $e7
    ld a, [hl+]                                   ; $6ca6: $2a
    sub h                                         ; $6ca7: $94
    ret z                                         ; $6ca8: $c8

    ld a, e                                       ; $6ca9: $7b
    ld a, l                                       ; $6caa: $7d
    ld [hl], e                                    ; $6cab: $73
    sub c                                         ; $6cac: $91
    ret z                                         ; $6cad: $c8

    ld a, [hl-]                                   ; $6cae: $3a
    ld [hl], l                                    ; $6caf: $75
    sbc [hl]                                      ; $6cb0: $9e
    push af                                       ; $6cb1: $f5
    ld l, e                                       ; $6cb2: $6b
    ld a, e                                       ; $6cb3: $7b
    rst $38                                       ; $6cb4: $ff
    cp d                                          ; $6cb5: $ba
    ld c, d                                       ; $6cb6: $4a
    db $d3                                        ; $6cb7: $d3
    ld d, $5f                                     ; $6cb8: $16 $5f
    rla                                           ; $6cba: $17
    and [hl]                                      ; $6cbb: $a6
    db $ec                                        ; $6cbc: $ec
    dec l                                         ; $6cbd: $2d
    adc $e6                                       ; $6cbe: $ce $e6
    ld b, $dd                                     ; $6cc0: $06 $dd
    db $ed                                        ; $6cc2: $ed
    inc [hl]                                      ; $6cc3: $34
    ld [hl], d                                    ; $6cc4: $72
    push af                                       ; $6cc5: $f5
    adc e                                         ; $6cc6: $8b
    ret                                           ; $6cc7: $c9


    push de                                       ; $6cc8: $d5
    ld e, h                                       ; $6cc9: $5c
    ldh a, [$0d]                                  ; $6cca: $f0 $0d
    rla                                           ; $6ccc: $17
    cp [hl]                                       ; $6ccd: $be
    ret nc                                        ; $6cce: $d0

    ld d, b                                       ; $6ccf: $50
    ld d, [hl]                                    ; $6cd0: $56
    ld [hl], a                                    ; $6cd1: $77
    jp hl                                         ; $6cd2: $e9


jr_03f_6cd3:
    and b                                         ; $6cd3: $a0
    inc d                                         ; $6cd4: $14
    sbc a                                         ; $6cd5: $9f
    dec a                                         ; $6cd6: $3d
    ld bc, $e517                                  ; $6cd7: $01 $17 $e5
    or h                                          ; $6cda: $b4
    ld de, $c263                                  ; $6cdb: $11 $63 $c2
    rla                                           ; $6cde: $17
    ld a, h                                       ; $6cdf: $7c
    ld e, l                                       ; $6ce0: $5d
    ld c, b                                       ; $6ce1: $48
    pop af                                        ; $6ce2: $f1
    call $bde7                                    ; $6ce3: $cd $e7 $bd
    di                                            ; $6ce6: $f3
    ld sp, $c556                                  ; $6ce7: $31 $56 $c5
    ld hl, sp+$25                                 ; $6cea: $f8 $25
    rst $20                                       ; $6cec: $e7
    add hl, sp                                    ; $6ced: $39
    ld [hl], h                                    ; $6cee: $74
    xor h                                         ; $6cef: $ac
    db $e4                                        ; $6cf0: $e4
    dec c                                         ; $6cf1: $0d
    nop                                           ; $6cf2: $00
    ld h, a                                       ; $6cf3: $67
    dec sp                                        ; $6cf4: $3b
    ld [c], a                                     ; $6cf5: $e2
    ld a, [de]                                    ; $6cf6: $1a
    ld b, [hl]                                    ; $6cf7: $46
    ld h, d                                       ; $6cf8: $62
    call z, Call_000_017b                         ; $6cf9: $cc $7b $01
    ld [c], a                                     ; $6cfc: $e2
    ret c                                         ; $6cfd: $d8

    ld sp, hl                                     ; $6cfe: $f9
    ld h, l                                       ; $6cff: $65
    sub h                                         ; $6d00: $94
    ld e, a                                       ; $6d01: $5f
    add l                                         ; $6d02: $85
    db $fd                                        ; $6d03: $fd
    ld l, a                                       ; $6d04: $6f
    nop                                           ; $6d05: $00
    halt                                          ; $6d06: $76
    ld a, [de]                                    ; $6d07: $1a
    ld a, a                                       ; $6d08: $7f
    dec d                                         ; $6d09: $15
    or $1f                                        ; $6d0a: $f6 $1f
    and $4a                                       ; $6d0c: $e6 $4a
    ld l, $f8                                     ; $6d0e: $2e $f8
    ld a, [hl-]                                   ; $6d10: $3a
    sub e                                         ; $6d11: $93
    xor b                                         ; $6d12: $a8
    add h                                         ; $6d13: $84
    ld e, h                                       ; $6d14: $5c
    di                                            ; $6d15: $f3
    add hl, bc                                    ; $6d16: $09
    ld e, a                                       ; $6d17: $5f
    ld c, b                                       ; $6d18: $48
    ret                                           ; $6d19: $c9


    ld h, c                                       ; $6d1a: $61
    ld l, $72                                     ; $6d1b: $2e $72
    jp nc, $bfd0                                  ; $6d1d: $d2 $d0 $bf

    sbc $00                                       ; $6d20: $de $00
    halt                                          ; $6d22: $76
    cp b                                          ; $6d23: $b8
    ld a, [c]                                     ; $6d24: $f2
    inc sp                                        ; $6d25: $33
    inc l                                         ; $6d26: $2c
    db $ec                                        ; $6d27: $ec
    ret z                                         ; $6d28: $c8

    sbc e                                         ; $6d29: $9b
    ld h, [hl]                                    ; $6d2a: $66
    adc e                                         ; $6d2b: $8b
    di                                            ; $6d2c: $f3
    ld e, h                                       ; $6d2d: $5c
    ld [hl], h                                    ; $6d2e: $74
    dec bc                                        ; $6d2f: $0b
    and l                                         ; $6d30: $a5
    push de                                       ; $6d31: $d5
    sub h                                         ; $6d32: $94
    db $fd                                        ; $6d33: $fd
    pop bc                                        ; $6d34: $c1
    add hl, sp                                    ; $6d35: $39
    ld [c], a                                     ; $6d36: $e2
    db $ec                                        ; $6d37: $ec
    inc de                                        ; $6d38: $13
    add d                                         ; $6d39: $82
    ld sp, hl                                     ; $6d3a: $f9
    ld [de], a                                    ; $6d3b: $12
    dec d                                         ; $6d3c: $15
    cp [hl]                                       ; $6d3d: $be
    ld c, d                                       ; $6d3e: $4a
    ld e, d                                       ; $6d3f: $5a
    rst $30                                       ; $6d40: $f7
    inc sp                                        ; $6d41: $33
    adc c                                         ; $6d42: $89
    add [hl]                                      ; $6d43: $86
    sbc [hl]                                      ; $6d44: $9e
    ld [de], a                                    ; $6d45: $12
    add hl, sp                                    ; $6d46: $39
    add a                                         ; $6d47: $87
    dec bc                                        ; $6d48: $0b
    add l                                         ; $6d49: $85
    ld [hl], l                                    ; $6d4a: $75
    set 2, l                                      ; $6d4b: $cb $d5
    adc $3a                                       ; $6d4d: $ce $3a
    ld l, d                                       ; $6d4f: $6a
    ld c, b                                       ; $6d50: $48
    db $d3                                        ; $6d51: $d3
    cp [hl]                                       ; $6d52: $be
    sbc h                                         ; $6d53: $9c
    ld a, [hl-]                                   ; $6d54: $3a
    add a                                         ; $6d55: $87
    db $eb                                        ; $6d56: $eb
    dec l                                         ; $6d57: $2d
    ld e, c                                       ; $6d58: $59
    rst $20                                       ; $6d59: $e7
    inc a                                         ; $6d5a: $3c
    ld [hl], a                                    ; $6d5b: $77
    or [hl]                                       ; $6d5c: $b6
    cp b                                          ; $6d5d: $b8

jr_03f_6d5e:
    ld a, [hl]                                    ; $6d5e: $7e
    xor a                                         ; $6d5f: $af
    or e                                          ; $6d60: $b3
    xor [hl]                                      ; $6d61: $ae
    rst $08                                       ; $6d62: $cf
    ld b, e                                       ; $6d63: $43
    xor c                                         ; $6d64: $a9
    dec sp                                        ; $6d65: $3b
    rst $30                                       ; $6d66: $f7
    db $eb                                        ; $6d67: $eb
    call nc, Call_03f_79d4                        ; $6d68: $d4 $d4 $79
    adc $fe                                       ; $6d6b: $ce $fe

jr_03f_6d6d:
    ld b, l                                       ; $6d6d: $45
    xor h                                         ; $6d6e: $ac
    dec bc                                        ; $6d6f: $0b
    ret z                                         ; $6d70: $c8

    jr jr_03f_6d9c                                ; $6d71: $18 $29

    rst $30                                       ; $6d73: $f7
    cp d                                          ; $6d74: $ba
    reti                                          ; $6d75: $d9


    ld h, c                                       ; $6d76: $61
    jr nc, jr_03f_6d5e                            ; $6d77: $30 $e5

    dec sp                                        ; $6d79: $3b
    adc [hl]                                      ; $6d7a: $8e
    ld hl, sp+$3d                                 ; $6d7b: $f8 $3d
    nop                                           ; $6d7d: $00
    halt                                          ; $6d7e: $76
    ld h, l                                       ; $6d7f: $65
    and l                                         ; $6d80: $a5
    ld [hl], l                                    ; $6d81: $75
    inc h                                         ; $6d82: $24
    add a                                         ; $6d83: $87
    cp c                                          ; $6d84: $b9
    ldh a, [$85]                                  ; $6d85: $f0 $85
    add [hl]                                      ; $6d87: $86
    and e                                         ; $6d88: $a3
    add $97                                       ; $6d89: $c6 $97
    push de                                       ; $6d8b: $d5
    adc $3a                                       ; $6d8c: $ce $3a
    ld d, e                                       ; $6d8e: $53
    ld e, [hl]                                    ; $6d8f: $5e
    ld [hl], d                                    ; $6d90: $72
    pop hl                                        ; $6d91: $e1
    res 5, a                                      ; $6d92: $cb $af
    db $fc                                        ; $6d94: $fc
    ld a, [bc]                                    ; $6d95: $0a
    ld c, l                                       ; $6d96: $4d
    ld [hl], h                                    ; $6d97: $74
    ld a, [c]                                     ; $6d98: $f2
    rst $30                                       ; $6d99: $f7
    adc $f9                                       ; $6d9a: $ce $f9

jr_03f_6d9c:
    jp nz, $9465                                  ; $6d9c: $c2 $65 $94

    ld e, a                                       ; $6d9f: $5f
    add [hl]                                      ; $6da0: $86
    add hl, hl                                    ; $6da1: $29
    pop de                                        ; $6da2: $d1
    ld h, c                                       ; $6da3: $61
    di                                            ; $6da4: $f3
    rst $28                                       ; $6da5: $ef
    pop hl                                        ; $6da6: $e1
    or e                                          ; $6da7: $b3
    ld a, a                                       ; $6da8: $7f
    ld de, $0deb                                  ; $6da9: $11 $eb $0d
    nop                                           ; $6dac: $00
    halt                                          ; $6dad: $76
    ld h, l                                       ; $6dae: $65
    pop af                                        ; $6daf: $f1
    dec sp                                        ; $6db0: $3b
    ld c, [hl]                                    ; $6db1: $4e
    jr jr_03f_6d6d                                ; $6db2: $18 $b9

    sbc b                                         ; $6db4: $98
    cp $2b                                        ; $6db5: $fe $2b
    ld [hl], $3f                                  ; $6db7: $36 $3f
    ld l, d                                       ; $6db9: $6a
    db $ec                                        ; $6dba: $ec
    ld e, d                                       ; $6dbb: $5a
    add [hl]                                      ; $6dbc: $86
    jp nc, Jump_03f_46ea                          ; $6dbd: $d2 $ea $46

    db $f4                                        ; $6dc0: $f4
    add hl, sp                                    ; $6dc1: $39
    ld l, d                                       ; $6dc2: $6a
    sbc $3b                                       ; $6dc3: $de $3b
    rra                                           ; $6dc5: $1f
    ld h, e                                       ; $6dc6: $63
    ld d, l                                       ; $6dc7: $55
    adc h                                         ; $6dc8: $8c
    ld e, a                                       ; $6dc9: $5f
    ld [hl], d                                    ; $6dca: $72
    sbc [hl]                                      ; $6dcb: $9e
    ld b, e                                       ; $6dcc: $43
    rst $00                                       ; $6dcd: $c7
    ld c, d                                       ; $6dce: $4a
    jp nz, $ff67                                  ; $6dcf: $c2 $67 $ff

    ld [hl+], a                                   ; $6dd2: $22
    sub $1b                                       ; $6dd3: $d6 $1b
    nop                                           ; $6dd5: $00
    sub a                                         ; $6dd6: $97
    cp [hl]                                       ; $6dd7: $be
    ld c, l                                       ; $6dd8: $4d
    rst $38                                       ; $6dd9: $ff
    ld a, c                                       ; $6dda: $79
    xor $b5                                       ; $6ddb: $ee $b5
    jp c, $b3d6                                   ; $6ddd: $da $d6 $b3

    inc h                                         ; $6de0: $24
    nop                                           ; $6de1: $00
    rla                                           ; $6de2: $17
    ld c, e                                       ; $6de3: $4b
    ld l, h                                       ; $6de4: $6c
    ret nc                                        ; $6de5: $d0

    db $eb                                        ; $6de6: $eb
    sub h                                         ; $6de7: $94
    and $15                                       ; $6de8: $e6 $15
    nop                                           ; $6dea: $00
    rst $20                                       ; $6deb: $e7
    ret c                                         ; $6dec: $d8

    sbc b                                         ; $6ded: $98
    ld hl, sp+$75                                 ; $6dee: $f8 $75
    ld [bc], a                                    ; $6df0: $02
    cp l                                          ; $6df1: $bd
    ld a, [$fb11]                                 ; $6df2: $fa $11 $fb
    dec h                                         ; $6df5: $25
    nop                                           ; $6df6: $00
    sub a                                         ; $6df7: $97
    cp [hl]                                       ; $6df8: $be
    ld c, l                                       ; $6df9: $4d
    rst $38                                       ; $6dfa: $ff
    ld a, c                                       ; $6dfb: $79
    xor [hl]                                      ; $6dfc: $ae
    ld a, [hl]                                    ; $6dfd: $7e
    db $f4                                        ; $6dfe: $f4
    jp nc, $a505                                  ; $6dff: $d2 $05 $a5

    inc a                                         ; $6e02: $3c
    nop                                           ; $6e03: $00
    cp l                                          ; $6e04: $bd
    adc h                                         ; $6e05: $8c
    dec l                                         ; $6e06: $2d
    or [hl]                                       ; $6e07: $b6
    sbc b                                         ; $6e08: $98
    nop                                           ; $6e09: $00
    or $59                                        ; $6e0a: $f6 $59
    ld e, $3e                                     ; $6e0c: $1e $3e
    ei                                            ; $6e0e: $fb
    rla                                           ; $6e0f: $17
    or c                                          ; $6e10: $b1
    sbc $00                                       ; $6e11: $de $00
    db $dd                                        ; $6e13: $dd
    cpl                                           ; $6e14: $2f
    ld [hl], c                                    ; $6e15: $71
    ld d, l                                       ; $6e16: $55
    rla                                           ; $6e17: $17
    ld a, h                                       ; $6e18: $7c
    db $eb                                        ; $6e19: $eb
    inc a                                         ; $6e1a: $3c
    add a                                         ; $6e1b: $87
    adc [hl]                                      ; $6e1c: $8e
    sub l                                         ; $6e1d: $95
    add h                                         ; $6e1e: $84
    rst $08                                       ; $6e1f: $cf
    cp $45                                        ; $6e20: $fe $45
    xor h                                         ; $6e22: $ac
    dec a                                         ; $6e23: $3d
    ld bc, $3b67                                  ; $6e24: $01 $67 $3b
    ld [c], a                                     ; $6e27: $e2
    dec hl                                        ; $6e28: $2b
    ld a, h                                       ; $6e29: $7c
    or $2f                                        ; $6e2a: $f6 $2f

jr_03f_6e2c:
    ld h, d                                       ; $6e2c: $62
    cp l                                          ; $6e2d: $bd
    ld bc, $6f81                                  ; $6e2e: $01 $81 $6f
    ld a, [hl]                                    ; $6e31: $7e
    ld c, $7f                                     ; $6e32: $0e $7f
    push de                                       ; $6e34: $d5
    add hl, de                                    ; $6e35: $19
    inc de                                        ; $6e36: $13
    sub d                                         ; $6e37: $92
    xor a                                         ; $6e38: $af
    or [hl]                                       ; $6e39: $b6
    ld a, c                                       ; $6e3a: $79
    ld hl, sp-$44                                 ; $6e3b: $f8 $bc
    sub e                                         ; $6e3d: $93
    sub a                                         ; $6e3e: $97
    xor [hl]                                      ; $6e3f: $ae
    push de                                       ; $6e40: $d5
    ld e, l                                       ; $6e41: $5d
    ld a, d                                       ; $6e42: $7a
    inc bc                                        ; $6e43: $03
    or $59                                        ; $6e44: $f6 $59
    ld e, $3e                                     ; $6e46: $1e $3e
    ei                                            ; $6e48: $fb
    rla                                           ; $6e49: $17
    or c                                          ; $6e4a: $b1
    sbc $00                                       ; $6e4b: $de $00
    add c                                         ; $6e4d: $81
    ld e, a                                       ; $6e4e: $5f
    sbc h                                         ; $6e4f: $9c
    ld c, a                                       ; $6e50: $4f
    add l                                         ; $6e51: $85
    rst $08                                       ; $6e52: $cf
    cp $45                                        ; $6e53: $fe $45
    xor h                                         ; $6e55: $ac
    scf                                           ; $6e56: $37
    nop                                           ; $6e57: $00
    db $dd                                        ; $6e58: $dd
    cpl                                           ; $6e59: $2f
    ld [hl], c                                    ; $6e5a: $71
    ld d, l                                       ; $6e5b: $55
    rla                                           ; $6e5c: $17
    cp a                                          ; $6e5d: $bf
    ret nz                                        ; $6e5e: $c0

    ld h, a                                       ; $6e5f: $67
    rst $38                                       ; $6e60: $ff
    ld [hl+], a                                   ; $6e61: $22
    sub $9e                                       ; $6e62: $d6 $9e
    nop                                           ; $6e64: $00
    db $dd                                        ; $6e65: $dd
    ld a, e                                       ; $6e66: $7b
    db $db                                        ; $6e67: $db
    sub $39                                       ; $6e68: $d6 $39
    ld l, d                                       ; $6e6a: $6a
    db $ec                                        ; $6e6b: $ec
    ld d, d                                       ; $6e6c: $52
    ld hl, sp-$14                                 ; $6e6d: $f8 $ec
    ld e, a                                       ; $6e6f: $5f
    call nz, Call_000_13da                        ; $6e70: $c4 $da $13
    nop                                           ; $6e73: $00
    db $dd                                        ; $6e74: $dd
    db $ed                                        ; $6e75: $ed
    ld [hl], h                                    ; $6e76: $74
    cp [hl]                                       ; $6e77: $be
    ld d, l                                       ; $6e78: $55
    jr z, jr_03f_6e2c                             ; $6e79: $28 $b1

    ld sp, hl                                     ; $6e7b: $f9
    sbc h                                         ; $6e7c: $9c
    ld a, a                                       ; $6e7d: $7f
    ld e, c                                       ; $6e7e: $59
    push bc                                       ; $6e7f: $c5
    or c                                          ; $6e80: $b1
    call nz, $85d7                                ; $6e81: $c4 $d7 $85
    add hl, hl                                    ; $6e84: $29
    ei                                            ; $6e85: $fb
    and b                                         ; $6e86: $a0
    dec c                                         ; $6e87: $0d
    ld a, h                                       ; $6e88: $7c
    dec d                                         ; $6e89: $15
    adc d                                         ; $6e8a: $8a
    ld a, a                                       ; $6e8b: $7f
    rst $18                                       ; $6e8c: $df
    inc de                                        ; $6e8d: $13
    nop                                           ; $6e8e: $00
    add c                                         ; $6e8f: $81

jr_03f_6e90:
    dec c                                         ; $6e90: $0d
    jp z, Jump_000_1e69                           ; $6e91: $ca $69 $1e

    db $fc                                        ; $6e94: $fc
    add sp, $73                                   ; $6e95: $e8 $73
    ld h, $71                                     ; $6e97: $26 $71
    ret nc                                        ; $6e99: $d0

    sub a                                         ; $6e9a: $97
    jp nc, $f5f0                                  ; $6e9b: $d2 $f0 $f5

    ld e, [hl]                                    ; $6e9e: $5e
    rst $30                                       ; $6e9f: $f7
    ld c, e                                       ; $6ea0: $4b
    ld e, h                                       ; $6ea1: $5c
    push de                                       ; $6ea2: $d5
    ld l, c                                       ; $6ea3: $69
    add e                                         ; $6ea4: $83
    or b                                          ; $6ea5: $b0
    ld d, l                                       ; $6ea6: $55
    scf                                           ; $6ea7: $37
    di                                            ; $6ea8: $f3
    jp nc, $13d5                                  ; $6ea9: $d2 $d5 $13

    nop                                           ; $6eac: $00
    db $dd                                        ; $6ead: $dd
    db $ed                                        ; $6eae: $ed

Jump_03f_6eaf:
    ld [hl], h                                    ; $6eaf: $74
    ld c, $e7                                     ; $6eb0: $0e $e7
    ld l, l                                       ; $6eb2: $6d
    ld a, [hl]                                    ; $6eb3: $7e
    or l                                          ; $6eb4: $b5
    or e                                          ; $6eb5: $b3
    ld l, $a4                                     ; $6eb6: $2e $a4
    cp [hl]                                       ; $6eb8: $be
    ld c, a                                       ; $6eb9: $4f
    ld hl, sp+$2a                                 ; $6eba: $f8 $2a
    inc d                                         ; $6ebc: $14
    rst $38                                       ; $6ebd: $ff
    ld e, $3e                                     ; $6ebe: $1e $3e
    ei                                            ; $6ec0: $fb
    rla                                           ; $6ec1: $17
    or c                                          ; $6ec2: $b1
    or $04                                        ; $6ec3: $f6 $04
    ld a, l                                       ; $6ec5: $7d
    jr c, jr_03f_6e90                             ; $6ec6: $38 $c8

    ld l, c                                       ; $6ec8: $69
    ld a, h                                       ; $6ec9: $7c
    or c                                          ; $6eca: $b1
    ld sp, hl                                     ; $6ecb: $f9
    add l                                         ; $6ecc: $85
    jp hl                                         ; $6ecd: $e9


    add hl, hl                                    ; $6ece: $29
    xor e                                         ; $6ecf: $ab
    ld h, h                                       ; $6ed0: $64
    xor c                                         ; $6ed1: $a9
    ld d, b                                       ; $6ed2: $50
    or $2b                                        ; $6ed3: $f6 $2b
    ccf                                           ; $6ed5: $3f
    di                                            ; $6ed6: $f3
    push af                                       ; $6ed7: $f5
    rst $18                                       ; $6ed8: $df
    nop                                           ; $6ed9: $00
    add c                                         ; $6eda: $81
    dec c                                         ; $6edb: $0d
    jp z, $1485                                   ; $6edc: $ca $85 $14

    rst $18                                       ; $6edf: $df
    ld a, h                                       ; $6ee0: $7c
    adc [hl]                                      ; $6ee1: $8e
    jr c, jr_03f_6f4e                             ; $6ee2: $38 $6a

    db $e4                                        ; $6ee4: $e4
    adc d                                         ; $6ee5: $8a
    add e                                         ; $6ee6: $83
    ld e, [hl]                                    ; $6ee7: $5e
    ld l, [hl]                                    ; $6ee8: $6e
    nop                                           ; $6ee9: $00
    ld a, l                                       ; $6eea: $7d
    cp b                                          ; $6eeb: $b8
    ld d, b                                       ; $6eec: $50
    ld [$8c39], sp                                ; $6eed: $08 $39 $8c
    add hl, sp                                    ; $6ef0: $39
    ld l, a                                       ; $6ef1: $6f
    adc e                                         ; $6ef2: $8b
    sbc [hl]                                      ; $6ef3: $9e
    dec bc                                        ; $6ef4: $0b
    ld a, [hl]                                    ; $6ef5: $7e
    ld b, a                                       ; $6ef6: $47
    cp d                                          ; $6ef7: $ba
    ld b, [hl]                                    ; $6ef8: $46
    adc l                                         ; $6ef9: $8d
    rst $28                                       ; $6efa: $ef
    ld [hl], e                                    ; $6efb: $73
    or $0f                                        ; $6efc: $f6 $0f
    ld c, c                                       ; $6efe: $49
    di                                            ; $6eff: $f3
    scf                                           ; $6f00: $37
    nop                                           ; $6f01: $00
    db $dd                                        ; $6f02: $dd
    db $ed                                        ; $6f03: $ed
    ld e, a                                       ; $6f04: $5f
    rla                                           ; $6f05: $17
    db $fc                                        ; $6f06: $fc
    ld c, [hl]                                    ; $6f07: $4e
    ld a, c                                       ; $6f08: $79
    sbc a                                         ; $6f09: $9f
    inc sp                                        ; $6f0a: $33
    adc c                                         ; $6f0b: $89
    or e                                          ; $6f0c: $b3
    ld a, a                                       ; $6f0d: $7f
    ld c, b                                       ; $6f0e: $48
    sbc d                                         ; $6f0f: $9a
    rst $28                                       ; $6f10: $ef
    add hl, sp                                    ; $6f11: $39
    ei                                            ; $6f12: $fb
    scf                                           ; $6f13: $37
    ld e, h                                       ; $6f14: $5c
    db $ed                                        ; $6f15: $ed
    ld c, h                                       ; $6f16: $4c
    jr nc, jr_03f_6f80                            ; $6f17: $30 $67

    ld [hl], c                                    ; $6f19: $71
    sbc h                                         ; $6f1a: $9c
    ld a, [hl]                                    ; $6f1b: $7e
    pop hl                                        ; $6f1c: $e1
    inc a                                         ; $6f1d: $3c
    ld h, a                                       ; $6f1e: $67
    ld e, [hl]                                    ; $6f1f: $5e
    rst $38                                       ; $6f20: $ff
    ld b, $dd                                     ; $6f21: $06 $dd
    db $ed                                        ; $6f23: $ed
    rra                                           ; $6f24: $1f
    sub d                                         ; $6f25: $92
    and $47                                       ; $6f26: $e6 $47
    adc l                                         ; $6f28: $8d
    ld e, l                                       ; $6f29: $5d
    inc hl                                        ; $6f2a: $23
    ld d, [hl]                                    ; $6f2b: $56
    ld d, e                                       ; $6f2c: $53
    ld [$39ec], a                                 ; $6f2d: $ea $ec $39
    ei                                            ; $6f30: $fb
    scf                                           ; $6f31: $37
    call c, $e817                                 ; $6f32: $dc $17 $e8
    nop                                           ; $6f35: $00
    ld e, h                                       ; $6f36: $5c
    ld l, h                                       ; $6f37: $6c
    xor h                                         ; $6f38: $ac
    jp $c59c                                      ; $6f39: $c3 $9c $c5


    ld [hl], c                                    ; $6f3c: $71
    sbc b                                         ; $6f3d: $98
    dec hl                                        ; $6f3e: $2b
    ld e, h                                       ; $6f3f: $5c
    add l                                         ; $6f40: $85
    ld a, c                                       ; $6f41: $79
    inc bc                                        ; $6f42: $03
    sub a                                         ; $6f43: $97
    db $e3                                        ; $6f44: $e3
    rst $08                                       ; $6f45: $cf
    and h                                         ; $6f46: $a4
    cp $a8                                        ; $6f47: $fe $a8
    ld d, e                                       ; $6f49: $53
    ld b, d                                       ; $6f4a: $42
    ld c, [hl]                                    ; $6f4b: $4e
    ld e, $3e                                     ; $6f4c: $1e $3e

jr_03f_6f4e:
    ei                                            ; $6f4e: $fb
    add a                                         ; $6f4f: $87
    and h                                         ; $6f50: $a4
    ld sp, hl                                     ; $6f51: $f9
    ld h, c                                       ; $6f52: $61
    adc [hl]                                      ; $6f53: $8e
    ld a, [hl-]                                   ; $6f54: $3a
    ld d, e                                       ; $6f55: $53
    sbc $69                                       ; $6f56: $de $69
    sub h                                         ; $6f58: $94
    xor h                                         ; $6f59: $ac
    or [hl]                                       ; $6f5a: $b6
    db $ed                                        ; $6f5b: $ed
    inc [hl]                                      ; $6f5c: $34
    sub e                                         ; $6f5d: $93
    rst $30                                       ; $6f5e: $f7
    ld c, [hl]                                    ; $6f5f: $4e
    cpl                                           ; $6f60: $2f
    and e                                         ; $6f61: $a3
    add $ae                                       ; $6f62: $c6 $ae
    ld de, $6ea7                                  ; $6f64: $11 $a7 $6e
    and $3b                                       ; $6f67: $e6 $3b
    ld a, a                                       ; $6f69: $7f
    ldh a, [$2f]                                  ; $6f6a: $f0 $2f
    and [hl]                                      ; $6f6c: $a6
    rst $08                                       ; $6f6d: $cf
    or c                                          ; $6f6e: $b1
    inc l                                         ; $6f6f: $2c
    ld [hl], $d6                                  ; $6f70: $36 $d6
    ld h, c                                       ; $6f72: $61
    sbc $00                                       ; $6f73: $de $00
    db $dd                                        ; $6f75: $dd
    db $ed                                        ; $6f76: $ed
    rra                                           ; $6f77: $1f
    sub d                                         ; $6f78: $92
    and $17                                       ; $6f79: $e6 $17
    db $fc                                        ; $6f7b: $fc
    ld l, c                                       ; $6f7c: $69
    di                                            ; $6f7d: $f3
    add hl, sp                                    ; $6f7e: $39
    di                                            ; $6f7f: $f3

jr_03f_6f80:
    ld a, [de]                                    ; $6f80: $1a
    dec de                                        ; $6f81: $1b
    db $f4                                        ; $6f82: $f4
    ld a, $7b                                     ; $6f83: $3e $7b
    ld [bc], a                                    ; $6f85: $02
    and a                                         ; $6f86: $a7
    sbc h                                         ; $6f87: $9c
    or d                                          ; $6f88: $b2
    ld l, d                                       ; $6f89: $6a
    ld a, c                                       ; $6f8a: $79
    dec [hl]                                      ; $6f8b: $35
    xor c                                         ; $6f8c: $a9
    di                                            ; $6f8d: $f3
    ld e, h                                       ; $6f8e: $5c
    ld b, b                                       ; $6f8f: $40
    sbc d                                         ; $6f90: $9a
    ld h, [hl]                                    ; $6f91: $66
    adc e                                         ; $6f92: $8b
    or e                                          ; $6f93: $b3
    and a                                         ; $6f94: $a7
    ld [hl], h                                    ; $6f95: $74
    or d                                          ; $6f96: $b2
    jp nc, $97e2                                  ; $6f97: $d2 $e2 $97

    sub $ff                                       ; $6f9a: $d6 $ff
    ld sp, $c472                                  ; $6f9c: $31 $72 $c4
    sub l                                         ; $6f9f: $95
    ld e, a                                       ; $6fa0: $5f
    ld hl, sp+$42                                 ; $6fa1: $f8 $42
    rrca                                          ; $6fa3: $0f
    rst $18                                       ; $6fa4: $df
    add hl, hl                                    ; $6fa5: $29
    and a                                         ; $6fa6: $a7
    xor h                                         ; $6fa7: $ac
    ld e, d                                       ; $6fa8: $5a
    ld e, [hl]                                    ; $6fa9: $5e
    ld c, l                                       ; $6faa: $4d
    ld [$173c], a                                 ; $6fab: $ea $3c $17
    sub b                                         ; $6fae: $90

Call_03f_6faf:
    and [hl]                                      ; $6faf: $a6
    reti                                          ; $6fb0: $d9


    ld [c], a                                     ; $6fb1: $e2
    db $ec                                        ; $6fb2: $ec
    add hl, hl                                    ; $6fb3: $29
    sbc l                                         ; $6fb4: $9d
    xor h                                         ; $6fb5: $ac
    or h                                          ; $6fb6: $b4
    ld hl, sp-$5b                                 ; $6fb7: $f8 $a5
    push af                                       ; $6fb9: $f5
    ld a, a                                       ; $6fba: $7f
    adc h                                         ; $6fbb: $8c
    cp h                                          ; $6fbc: $bc
    rst $28                                       ; $6fbd: $ef
    dec de                                        ; $6fbe: $1b
    nop                                           ; $6fbf: $00
    halt                                          ; $6fc0: $76
    ld h, $98                                     ; $6fc1: $26 $98
    di                                            ; $6fc3: $f3
    ld e, h                                       ; $6fc4: $5c
    ld c, l                                       ; $6fc5: $4d
    ld c, h                                       ; $6fc6: $4c
    db $dd                                        ; $6fc7: $dd
    xor a                                         ; $6fc8: $af
    ld l, [hl]                                    ; $6fc9: $6e
    xor e                                         ; $6fca: $ab
    cp a                                          ; $6fcb: $bf
    cp $1b                                        ; $6fcc: $fe $1b
    nop                                           ; $6fce: $00
    ld h, a                                       ; $6fcf: $67
    rra                                           ; $6fd0: $1f
    and b                                         ; $6fd1: $a0
    ld d, $47                                     ; $6fd2: $16 $47
    rst $38                                       ; $6fd4: $ff
    db $eb                                        ; $6fd5: $eb
    ld h, l                                       ; $6fd6: $65
    and d                                         ; $6fd7: $a2
    ei                                            ; $6fd8: $fb
    ld [bc], a                                    ; $6fd9: $02
    nop                                           ; $6fda: $00
    db $dd                                        ; $6fdb: $dd
    db $ec                                        ; $6fdc: $ec
    ld e, a                                       ; $6fdd: $5f
    rst $30                                       ; $6fde: $f7
    and c                                         ; $6fdf: $a1
    db $10                                        ; $6fe0: $10
    ld a, l                                       ; $6fe1: $7d
    di                                            ; $6fe2: $f3
    add hl, sp                                    ; $6fe3: $39
    add a                                         ; $6fe4: $87
    dec bc                                        ; $6fe5: $0b
    jp nc, Jump_03f_5b04                          ; $6fe6: $d2 $04 $5b

    rst $38                                       ; $6fe9: $ff
    db $ec                                        ; $6fea: $ec
    ld bc, $e700                                  ; $6feb: $01 $00 $e7
    cp c                                          ; $6fee: $b9
    rla                                           ; $6fef: $17

Jump_03f_6ff0:
    rst $38                                       ; $6ff0: $ff
    add sp, $73                                   ; $6ff1: $e8 $73
    ld bc, $b12f                                  ; $6ff3: $01 $2f $b1
    ld sp, hl                                     ; $6ff6: $f9
    cp a                                          ; $6ff7: $bf
    rst $28                                       ; $6ff8: $ef
    dec de                                        ; $6ff9: $1b
    nop                                           ; $6ffa: $00
    db $dd                                        ; $6ffb: $dd
    ld [bc], a                                    ; $6ffc: $02
    ld e, [hl]                                    ; $6ffd: $5e
    ld h, d                                       ; $6ffe: $62
    di                                            ; $6fff: $f3
    cp a                                          ; $7000: $bf
    di                                            ; $7001: $f3
    call c, Call_03f_7f8b                         ; $7002: $dc $8b $7f
    rst $38                                       ; $7005: $ff
    dec a                                         ; $7006: $3d
    nop                                           ; $7007: $00
    ld a, l                                       ; $7008: $7d
    ld [hl], e                                    ; $7009: $73
    or c                                          ; $700a: $b1
    ld de, $8ba9                                  ; $700b: $11 $a9 $8b
    jp hl                                         ; $700e: $e9


    ld d, e                                       ; $700f: $53
    ld d, a                                       ; $7010: $57
    ld d, d                                       ; $7011: $52
    rst $10                                       ; $7012: $d7
    ld e, e                                       ; $7013: $5b
    or d                                          ; $7014: $b2
    ld c, [hl]                                    ; $7015: $4e
    sbc l                                         ; $7016: $9d
    rst $20                                       ; $7017: $e7
    ld a, [$943c]                                 ; $7018: $fa $3c $94
    ld a, [hl-]                                   ; $701b: $3a
    db $eb                                        ; $701c: $eb
    adc $16                                       ; $701d: $ce $16
    rst $10                                       ; $701f: $d7
    rst $28                                       ; $7020: $ef
    ld [hl], l                                    ; $7021: $75
    rst $20                                       ; $7022: $e7
    ld a, [hl]                                    ; $7023: $7e
    sbc l                                         ; $7024: $9d
    sbc d                                         ; $7025: $9a
    ld a, [hl-]                                   ; $7026: $3a
    and h                                         ; $7027: $a4
    and c                                         ; $7028: $a1
    cp [hl]                                       ; $7029: $be
    or h                                          ; $702a: $b4
    call nc, $2f85                                ; $702b: $d4 $85 $2f
    ccf                                           ; $702e: $3f
    ld l, d                                       ; $702f: $6a
    db $fc                                        ; $7030: $fc
    sbc c                                         ; $7031: $99
    xor h                                         ; $7032: $ac
    dec sp                                        ; $7033: $3b
    dec c                                         ; $7034: $0d
    rst $18                                       ; $7035: $df
    inc [hl]                                      ; $7036: $34
    ld e, e                                       ; $7037: $5b
    cp h                                          ; $7038: $bc
    ld bc, $697d                                  ; $7039: $01 $7d $69
    xor b                                         ; $703c: $a8
    dec l                                         ; $703d: $2d
    cp [hl]                                       ; $703e: $be
    ld c, [hl]                                    ; $703f: $4e
    ld e, c                                       ; $7040: $59
    ld l, b                                       ; $7041: $68
    ld c, h                                       ; $7042: $4c
    ld c, e                                       ; $7043: $4b
    ld a, h                                       ; $7044: $7c
    reti                                          ; $7045: $d9


    and c                                         ; $7046: $a1
    cp l                                          ; $7047: $bd
    dec h                                         ; $7048: $25
    db $eb                                        ; $7049: $eb
    call nc, $e743                                ; $704a: $d4 $43 $e7
    sbc l                                         ; $704d: $9d
    inc a                                         ; $704e: $3c
    ld b, [hl]                                    ; $704f: $46
    adc $e1                                       ; $7050: $ce $e1
    adc b                                         ; $7052: $88
    add $11                                       ; $7053: $c6 $11
    and e                                         ; $7055: $a3
    db $e4                                        ; $7056: $e4
    ld [$a82e], a                                 ; $7057: $ea $2e $a8
    sbc c                                         ; $705a: $99
    ld e, h                                       ; $705b: $5c
    ld hl, sp-$0e                                 ; $705c: $f8 $f2
    inc sp                                        ; $705e: $33
    jp nz, Jump_000_3997                          ; $705f: $c2 $97 $39

    db $fc                                        ; $7062: $fc
    sbc c                                         ; $7063: $99
    xor h                                         ; $7064: $ac
    dec sp                                        ; $7065: $3b
    dec c                                         ; $7066: $0d
    rst $18                                       ; $7067: $df
    inc [hl]                                      ; $7068: $34
    ld e, e                                       ; $7069: $5b
    cp h                                          ; $706a: $bc
    ld bc, $737d                                  ; $706b: $01 $7d $73
    or c                                          ; $706e: $b1
    ld de, $8ba9                                  ; $706f: $11 $a9 $8b
    jp hl                                         ; $7072: $e9


    ld d, e                                       ; $7073: $53
    ld d, a                                       ; $7074: $57
    ld d, d                                       ; $7075: $52
    rst $10                                       ; $7076: $d7
    ld e, e                                       ; $7077: $5b
    or d                                          ; $7078: $b2
    ld c, [hl]                                    ; $7079: $4e
    sbc l                                         ; $707a: $9d
    rst $20                                       ; $707b: $e7
    ld a, [$943c]                                 ; $707c: $fa $3c $94
    ld a, [hl-]                                   ; $707f: $3a
    db $eb                                        ; $7080: $eb
    adc $16                                       ; $7081: $ce $16
    rst $10                                       ; $7083: $d7
    rst $28                                       ; $7084: $ef
    ld [hl], l                                    ; $7085: $75
    rst $20                                       ; $7086: $e7
    ld a, [hl]                                    ; $7087: $7e
    sbc l                                         ; $7088: $9d
    sbc d                                         ; $7089: $9a
    ld a, [hl-]                                   ; $708a: $3a
    and h                                         ; $708b: $a4
    and c                                         ; $708c: $a1
    cp [hl]                                       ; $708d: $be

Call_03f_708e:
    or h                                          ; $708e: $b4
    call nc, $2f85                                ; $708f: $d4 $85 $2f
    ccf                                           ; $7092: $3f
    ld l, d                                       ; $7093: $6a
    db $fc                                        ; $7094: $fc
    sbc c                                         ; $7095: $99
    xor h                                         ; $7096: $ac
    dec sp                                        ; $7097: $3b
    dec c                                         ; $7098: $0d
    rst $18                                       ; $7099: $df
    inc [hl]                                      ; $709a: $34
    ld e, e                                       ; $709b: $5b
    cp h                                          ; $709c: $bc
    rst $10                                       ; $709d: $d7
    sub a                                         ; $709e: $97
    add [hl]                                      ; $709f: $86
    jp c, $ebe2                                   ; $70a0: $da $e2 $eb

    sub h                                         ; $70a3: $94
    add l                                         ; $70a4: $85
    add $b4                                       ; $70a5: $c6 $b4
    call nz, Call_000_1d97                        ; $70a7: $c4 $97 $1d
    jp c, $b25b                                   ; $70aa: $da $5b $b2

    ld c, [hl]                                    ; $70ad: $4e
    dec a                                         ; $70ae: $3d
    ld [hl], h                                    ; $70af: $74
    sbc $c9                                       ; $70b0: $de $c9
    ld h, e                                       ; $70b2: $63
    db $e4                                        ; $70b3: $e4
    inc e                                         ; $70b4: $1c
    adc [hl]                                      ; $70b5: $8e
    ld l, b                                       ; $70b6: $68
    inc e                                         ; $70b7: $1c
    ld sp, $ae4a                                  ; $70b8: $31 $4a $ae
    xor $82                                       ; $70bb: $ee $82
    sbc d                                         ; $70bd: $9a
    ret                                           ; $70be: $c9


    add l                                         ; $70bf: $85
    cpl                                           ; $70c0: $2f
    ccf                                           ; $70c1: $3f
    inc hl                                        ; $70c2: $23
    ld a, h                                       ; $70c3: $7c
    sbc c                                         ; $70c4: $99
    jp $c99f                                      ; $70c5: $c3 $9f $c9


    cp d                                          ; $70c8: $ba
    db $d3                                        ; $70c9: $d3
    ldh a, [rKEY1]                                ; $70ca: $f0 $4d
    or e                                          ; $70cc: $b3
    push bc                                       ; $70cd: $c5
    dec de                                        ; $70ce: $1b
    nop                                           ; $70cf: $00
    sub a                                         ; $70d0: $97
    halt                                          ; $70d1: $76
    add l                                         ; $70d2: $85
    call Call_03f_7c27                            ; $70d3: $cd $27 $7c
    dec d                                         ; $70d6: $15
    rst $00                                       ; $70d7: $c7
    ld d, d                                       ; $70d8: $52
    pop hl                                        ; $70d9: $e1
    ld a, [hl]                                    ; $70da: $7e
    push hl                                       ; $70db: $e5
    ld h, a                                       ; $70dc: $67
    cp [hl]                                       ; $70dd: $be
    cp $d9                                        ; $70de: $fe $d9
    cp a                                          ; $70e0: $bf
    adc b                                         ; $70e1: $88
    push af                                       ; $70e2: $f5
    ld b, $97                                     ; $70e3: $06 $97
    jr c, jr_03f_7131                             ; $70e5: $38 $4a

    di                                            ; $70e7: $f3
    add hl, sp                                    ; $70e8: $39
    push hl                                       ; $70e9: $e5
    pop bc                                        ; $70ea: $c1
    add hl, hl                                    ; $70eb: $29
    dec bc                                        ; $70ec: $0b
    ret z                                         ; $70ed: $c8

    jr jr_03f_7119                                ; $70ee: $18 $29

    ld [hl], b                                    ; $70f0: $70
    nop                                           ; $70f1: $00
    or $3f                                        ; $70f2: $f6 $3f
    ld l, l                                       ; $70f4: $6d
    ld a, $f7                                     ; $70f5: $3e $f7
    add [hl]                                      ; $70f7: $86
    ld h, c                                       ; $70f8: $61
    ld a, h                                       ; $70f9: $7c
    sbc a                                         ; $70fa: $9f
    inc hl                                        ; $70fb: $23
    adc [hl]                                      ; $70fc: $8e
    ld h, l                                       ; $70fd: $65
    cp l                                          ; $70fe: $bd
    or e                                          ; $70ff: $b3
    db $10                                        ; $7100: $10
    ld l, d                                       ; $7101: $6a
    add hl, sp                                    ; $7102: $39
    ei                                            ; $7103: $fb
    add h                                         ; $7104: $84
    ld h, b                                       ; $7105: $60
    cp [hl]                                       ; $7106: $be
    ld b, h                                       ; $7107: $44
    sbc l                                         ; $7108: $9d
    rst $20                                       ; $7109: $e7
    ld a, [$d43c]                                 ; $710a: $fa $3c $d4
    ld a, [hl]                                    ; $710d: $7e
    sub $d9                                       ; $710e: $d6 $d9
    db $d3                                        ; $7110: $d3
    inc b                                         ; $7111: $04
    sbc e                                         ; $7112: $9b
    and c                                         ; $7113: $a1
    ret c                                         ; $7114: $d8

    inc a                                         ; $7115: $3c
    nop                                           ; $7116: $00
    cp l                                          ; $7117: $bd
    ld d, e                                       ; $7118: $53

jr_03f_7119:
    ld a, h                                       ; $7119: $7c
    ei                                            ; $711a: $fb
    ld d, d                                       ; $711b: $52
    inc de                                        ; $711c: $13
    inc hl                                        ; $711d: $23
    pop hl                                        ; $711e: $e1
    nop                                           ; $711f: $00
    cp l                                          ; $7120: $bd
    ld c, d                                       ; $7121: $4a
    rst $00                                       ; $7122: $c7
    jp hl                                         ; $7123: $e9


    adc $71                                       ; $7124: $ce $71
    ld [hl], l                                    ; $7126: $75
    and a                                         ; $7127: $a7
    ret nc                                        ; $7128: $d0

    and a                                         ; $7129: $a7
    stop                                          ; $712a: $10 $00
    rla                                           ; $712c: $17
    or b                                          ; $712d: $b0
    sbc d                                         ; $712e: $9a
    di                                            ; $712f: $f3
    ld e, h                                       ; $7130: $5c

jr_03f_7131:
    sbc a                                         ; $7131: $9f
    add a                                         ; $7132: $87
    ld d, d                                       ; $7133: $52
    ld bc, $337d                                  ; $7134: $01 $7d $33
    cp [hl]                                       ; $7137: $be
    adc $64                                       ; $7138: $ce $64
    sbc l                                         ; $713a: $9d
    dec hl                                        ; $713b: $2b
    ccf                                           ; $713c: $3f
    ld [hl+], a                                   ; $713d: $22
    dec b                                         ; $713e: $05
    or d                                          ; $713f: $b2
    ld sp, hl                                     ; $7140: $f9
    add hl, de                                    ; $7141: $19
    and c                                         ; $7142: $a1
    pop hl                                        ; $7143: $e1
    dec c                                         ; $7144: $0d
    nop                                           ; $7145: $00
    db $dd                                        ; $7146: $dd
    ld a, d                                       ; $7147: $7a
    ld b, c                                       ; $7148: $41
    db $10                                        ; $7149: $10
    call nc, Call_03f_7663                        ; $714a: $d4 $63 $76
    sbc d                                         ; $714d: $9a
    and e                                         ; $714e: $a3
    ld c, [hl]                                    ; $714f: $4e
    jr jr_03f_718c                                ; $7150: $18 $3a

    ld [$231f], sp                                ; $7152: $08 $1f $23
    ld l, a                                       ; $7155: $6f
    nop                                           ; $7156: $00
    sub a                                         ; $7157: $97
    jp nc, $b0b4                                  ; $7158: $d2 $b4 $b0

    ld de, $1723                                  ; $715b: $11 $23 $17
    sub b                                         ; $715e: $90
    and [hl]                                      ; $715f: $a6
    dec h                                         ; $7160: $25
    ld d, d                                       ; $7161: $52
    ld bc, $96e7                                  ; $7162: $01 $e7 $96
    ld d, $12                                     ; $7165: $16 $12
    ld a, l                                       ; $7167: $7d
    ld [bc], a                                    ; $7168: $02
    ld d, a                                       ; $7169: $57
    ld d, b                                       ; $716a: $50
    ld [$4a56], a                                 ; $716b: $ea $56 $4a
    ld c, e                                       ; $716e: $4b
    and a                                         ; $716f: $a7
    nop                                           ; $7170: $00
    ld d, a                                       ; $7171: $57
    ld d, b                                       ; $7172: $50
    ld a, h                                       ; $7173: $7c
    xor e                                         ; $7174: $ab
    ld e, e                                       ; $7175: $5b
    add hl, hl                                    ; $7176: $29
    dec l                                         ; $7177: $2d
    sbc l                                         ; $7178: $9d
    ld [bc], a                                    ; $7179: $02
    rst $20                                       ; $717a: $e7
    and e                                         ; $717b: $a3
    ld hl, $96fa                                  ; $717c: $21 $fa $96
    nop                                           ; $717f: $00
    inc bc                                        ; $7180: $03
    inc bc                                        ; $7181: $03
    inc bc                                        ; $7182: $03
    inc bc                                        ; $7183: $03
    inc bc                                        ; $7184: $03
    inc bc                                        ; $7185: $03
    inc bc                                        ; $7186: $03

jr_03f_7187:
    inc bc                                        ; $7187: $03
    inc bc                                        ; $7188: $03
    inc bc                                        ; $7189: $03
    inc bc                                        ; $718a: $03
    inc bc                                        ; $718b: $03

jr_03f_718c:
    inc bc                                        ; $718c: $03
    inc bc                                        ; $718d: $03
    inc bc                                        ; $718e: $03
    inc bc                                        ; $718f: $03
    inc bc                                        ; $7190: $03
    inc bc                                        ; $7191: $03
    inc bc                                        ; $7192: $03
    inc bc                                        ; $7193: $03
    inc bc                                        ; $7194: $03
    inc bc                                        ; $7195: $03
    inc bc                                        ; $7196: $03
    inc bc                                        ; $7197: $03
    inc bc                                        ; $7198: $03
    inc bc                                        ; $7199: $03
    inc bc                                        ; $719a: $03
    inc bc                                        ; $719b: $03
    inc bc                                        ; $719c: $03
    inc bc                                        ; $719d: $03
    inc bc                                        ; $719e: $03
    inc bc                                        ; $719f: $03
    inc bc                                        ; $71a0: $03
    inc bc                                        ; $71a1: $03
    inc bc                                        ; $71a2: $03
    inc bc                                        ; $71a3: $03
    inc bc                                        ; $71a4: $03
    inc bc                                        ; $71a5: $03
    inc bc                                        ; $71a6: $03
    inc bc                                        ; $71a7: $03
    inc bc                                        ; $71a8: $03
    inc bc                                        ; $71a9: $03
    cp l                                          ; $71aa: $bd
    jr nc, jr_03f_7187                            ; $71ab: $30 $da

    ld hl, sp-$74                                 ; $71ad: $f8 $8c
    add hl, bc                                    ; $71af: $09
    nop                                           ; $71b0: $00
    ld bc, $9a69                                  ; $71b1: $01 $69 $9a
    dec l                                         ; $71b4: $2d
    adc $9e                                       ; $71b5: $ce $9e
    jp nc, $4ac9                                  ; $71b7: $d2 $c9 $4a

    adc e                                         ; $71ba: $8b
    scf                                           ; $71bb: $37
    nop                                           ; $71bc: $00
    rst $20                                       ; $71bd: $e7
    ret                                           ; $71be: $c9


    db $e3                                        ; $71bf: $e3
    ld [bc], a                                    ; $71c0: $02
    jp nc, Jump_03f_5b34                          ; $71c1: $d2 $34 $5b

    sbc h                                         ; $71c4: $9c
    dec a                                         ; $71c5: $3d
    and l                                         ; $71c6: $a5
    sub e                                         ; $71c7: $93
    sub l                                         ; $71c8: $95
    ld d, $6f                                     ; $71c9: $16 $6f
    nop                                           ; $71cb: $00
    ld bc, $9a69                                  ; $71cc: $01 $69 $9a
    dec l                                         ; $71cf: $2d
    ld l, $48                                     ; $71d0: $2e $48
    jp hl                                         ; $71d2: $e9


    inc [hl]                                      ; $71d3: $34
    db $d3                                        ; $71d4: $d3
    db $fc                                        ; $71d5: $fc
    inc bc                                        ; $71d6: $03
    ld bc, $9a69                                  ; $71d7: $01 $69 $9a
    dec l                                         ; $71da: $2d
    xor [hl]                                      ; $71db: $ae
    jp nc, $d7e2                                  ; $71dc: $d2 $e2 $d7

    dec c                                         ; $71df: $0d
    ld d, $00                                     ; $71e0: $16 $00
    ld bc, $9a69                                  ; $71e2: $01 $69 $9a
    dec l                                         ; $71e5: $2d
    ld l, $6c                                     ; $71e6: $2e $6c
    dec [hl]                                      ; $71e8: $35
    ld sp, $62da                                  ; $71e9: $31 $da $62
    inc sp                                        ; $71ec: $33
    rrca                                          ; $71ed: $0f
    nop                                           ; $71ee: $00
    rst $20                                       ; $71ef: $e7
    ret                                           ; $71f0: $c9


    db $e3                                        ; $71f1: $e3
    ld [bc], a                                    ; $71f2: $02
    jp nc, Jump_03f_5b34                          ; $71f3: $d2 $34 $5b

    ld e, h                                       ; $71f6: $5c
    ret c                                         ; $71f7: $d8

    ld l, d                                       ; $71f8: $6a
    ld h, d                                       ; $71f9: $62
    cp h                                          ; $71fa: $bc
    ld bc, $0303                                  ; $71fb: $01 $03 $03
    inc bc                                        ; $71fe: $03
    inc bc                                        ; $71ff: $03
    inc bc                                        ; $7200: $03
    inc bc                                        ; $7201: $03
    inc bc                                        ; $7202: $03
    inc bc                                        ; $7203: $03
    inc bc                                        ; $7204: $03
    inc bc                                        ; $7205: $03
    inc bc                                        ; $7206: $03
    rla                                           ; $7207: $17
    or l                                          ; $7208: $b5
    adc [hl]                                      ; $7209: $8e
    db $e4                                        ; $720a: $e4
    inc a                                         ; $720b: $3c
    ld d, a                                       ; $720c: $57
    ld a, a                                       ; $720d: $7f
    pop af                                        ; $720e: $f1
    call Call_03f_44b4                            ; $720f: $cd $b4 $44
    ld a, [hl+]                                   ; $7212: $2a
    nop                                           ; $7213: $00
    inc bc                                        ; $7214: $03
    inc bc                                        ; $7215: $03
    inc bc                                        ; $7216: $03
    inc bc                                        ; $7217: $03
    inc bc                                        ; $7218: $03
    inc bc                                        ; $7219: $03
    inc bc                                        ; $721a: $03
    inc bc                                        ; $721b: $03
    inc bc                                        ; $721c: $03
    inc bc                                        ; $721d: $03
    inc bc                                        ; $721e: $03
    inc bc                                        ; $721f: $03
    inc bc                                        ; $7220: $03
    inc bc                                        ; $7221: $03
    inc bc                                        ; $7222: $03
    inc bc                                        ; $7223: $03
    inc bc                                        ; $7224: $03
    inc bc                                        ; $7225: $03
    inc bc                                        ; $7226: $03
    inc bc                                        ; $7227: $03
    inc bc                                        ; $7228: $03
    rst $20                                       ; $7229: $e7
    ret                                           ; $722a: $c9


    ld b, e                                       ; $722b: $43
    ld a, h                                       ; $722c: $7c

Call_03f_722d:
    db $dd                                        ; $722d: $dd
    ld h, l                                       ; $722e: $65
    jp hl                                         ; $722f: $e9


    ld d, e                                       ; $7230: $53
    rla                                           ; $7231: $17
    ld hl, sp-$63                                 ; $7232: $f8 $9d
    inc d                                         ; $7234: $14
    ld a, [hl+]                                   ; $7235: $2a
    nop                                           ; $7236: $00
    inc bc                                        ; $7237: $03
    cp l                                          ; $7238: $bd
    add e                                         ; $7239: $83
    call Call_000_0214                            ; $723a: $cd $14 $02
    halt                                          ; $723d: $76
    ld [hl], l                                    ; $723e: $75
    ld hl, sp-$08                                 ; $723f: $f8 $f8
    cp $e7                                        ; $7241: $fe $e7
    add hl, sp                                    ; $7243: $39
    di                                            ; $7244: $f3
    push hl                                       ; $7245: $e5
    dec sp                                        ; $7246: $3b
    rst $18                                       ; $7247: $df
    rst $38                                       ; $7248: $ff
    ld bc, $af01                                  ; $7249: $01 $01 $af
    sub c                                         ; $724c: $91
    add l                                         ; $724d: $85
    ld a, [hl-]                                   ; $724e: $3a
    rst $08                                       ; $724f: $cf
    sbc c                                         ; $7250: $99
    cpl                                           ; $7251: $2f
    sbc [hl]                                      ; $7252: $9e
    sub d                                         ; $7253: $92
    nop                                           ; $7254: $00
    ld d, a                                       ; $7255: $57
    cp h                                          ; $7256: $bc
    or h                                          ; $7257: $b4
    ld hl, sp+$3a                                 ; $7258: $f8 $3a
    rst $08                                       ; $725a: $cf
    add hl, bc                                    ; $725b: $09
    and c                                         ; $725c: $a1
    cpl                                           ; $725d: $2f
    xor l                                         ; $725e: $ad
    ccf                                           ; $725f: $3f
    nop                                           ; $7260: $00
    inc bc                                        ; $7261: $03
    inc bc                                        ; $7262: $03
    inc bc                                        ; $7263: $03
    inc bc                                        ; $7264: $03
    inc bc                                        ; $7265: $03
    inc bc                                        ; $7266: $03
    inc bc                                        ; $7267: $03
    inc bc                                        ; $7268: $03
    inc bc                                        ; $7269: $03
    inc bc                                        ; $726a: $03
    inc bc                                        ; $726b: $03
    inc bc                                        ; $726c: $03
    inc bc                                        ; $726d: $03
    inc bc                                        ; $726e: $03
    inc bc                                        ; $726f: $03
    inc bc                                        ; $7270: $03
    inc bc                                        ; $7271: $03
    inc bc                                        ; $7272: $03
    rst $20                                       ; $7273: $e7
    sub [hl]                                      ; $7274: $96
    ld [hl], a                                    ; $7275: $77
    pop af                                        ; $7276: $f1

Call_03f_7277:
    ld bc, $0303                                  ; $7277: $01 $03 $03
    inc bc                                        ; $727a: $03
    inc bc                                        ; $727b: $03
    inc bc                                        ; $727c: $03
    rst $38                                       ; $727d: $ff
    rst $38                                       ; $727e: $ff
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
    rst $38                                       ; $7290: $ff
    rst $38                                       ; $7291: $ff
    rst $38                                       ; $7292: $ff
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    rst $38                                       ; $7295: $ff
    rst $38                                       ; $7296: $ff
    rst $38                                       ; $7297: $ff
    rst $38                                       ; $7298: $ff
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    rst $38                                       ; $72b3: $ff
    rst $38                                       ; $72b4: $ff
    rst $38                                       ; $72b5: $ff
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    rst $38                                       ; $72bb: $ff
    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
    rst $38                                       ; $72c0: $ff
    rst $38                                       ; $72c1: $ff
    rst $38                                       ; $72c2: $ff
    rst $38                                       ; $72c3: $ff
    rst $38                                       ; $72c4: $ff
    rst $38                                       ; $72c5: $ff
    rst $38                                       ; $72c6: $ff
    rst $38                                       ; $72c7: $ff
    rst $38                                       ; $72c8: $ff
    rst $38                                       ; $72c9: $ff
    rst $38                                       ; $72ca: $ff
    rst $38                                       ; $72cb: $ff
    rst $38                                       ; $72cc: $ff
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
    rst $38                                       ; $72d3: $ff
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    rst $38                                       ; $72e0: $ff
    rst $38                                       ; $72e1: $ff
    rst $38                                       ; $72e2: $ff
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    rst $38                                       ; $730c: $ff
    rst $38                                       ; $730d: $ff
    rst $38                                       ; $730e: $ff
    rst $38                                       ; $730f: $ff
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    rst $38                                       ; $7312: $ff
    rst $38                                       ; $7313: $ff
    rst $38                                       ; $7314: $ff
    rst $38                                       ; $7315: $ff
    rst $38                                       ; $7316: $ff
    rst $38                                       ; $7317: $ff
    rst $38                                       ; $7318: $ff
    rst $38                                       ; $7319: $ff
    rst $38                                       ; $731a: $ff
    rst $38                                       ; $731b: $ff
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    rst $38                                       ; $731e: $ff
    rst $38                                       ; $731f: $ff
    rst $38                                       ; $7320: $ff
    rst $38                                       ; $7321: $ff
    rst $38                                       ; $7322: $ff
    rst $38                                       ; $7323: $ff
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    rst $38                                       ; $7327: $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    rst $38                                       ; $7330: $ff
    rst $38                                       ; $7331: $ff
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    rst $38                                       ; $733b: $ff
    rst $38                                       ; $733c: $ff
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    rst $38                                       ; $7340: $ff
    rst $38                                       ; $7341: $ff
    rst $38                                       ; $7342: $ff
    rst $38                                       ; $7343: $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    rst $38                                       ; $7346: $ff
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    rst $38                                       ; $7356: $ff
    rst $38                                       ; $7357: $ff
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    rst $38                                       ; $7367: $ff
    rst $38                                       ; $7368: $ff
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    rst $38                                       ; $7379: $ff
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff

Call_03f_7398:
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    rst $38                                       ; $73ad: $ff
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff

Call_03f_73ba:
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    rst $38                                       ; $73c2: $ff
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff

Jump_03f_73cc:
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff

Jump_03f_73cf:
    rst $38                                       ; $73cf: $ff
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    rst $38                                       ; $73fe: $ff
    rst $38                                       ; $73ff: $ff
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    rst $38                                       ; $7402: $ff
    rst $38                                       ; $7403: $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    rst $38                                       ; $7408: $ff
    rst $38                                       ; $7409: $ff
    rst $38                                       ; $740a: $ff
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    rst $38                                       ; $740f: $ff
    rst $38                                       ; $7410: $ff
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    rst $38                                       ; $7413: $ff
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    rst $38                                       ; $7426: $ff
    rst $38                                       ; $7427: $ff
    rst $38                                       ; $7428: $ff
    rst $38                                       ; $7429: $ff
    rst $38                                       ; $742a: $ff
    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff

Jump_03f_742f:
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    rst $38                                       ; $745b: $ff
    rst $38                                       ; $745c: $ff
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
    rst $38                                       ; $745f: $ff
    rst $38                                       ; $7460: $ff
    rst $38                                       ; $7461: $ff
    rst $38                                       ; $7462: $ff
    rst $38                                       ; $7463: $ff
    rst $38                                       ; $7464: $ff
    rst $38                                       ; $7465: $ff
    rst $38                                       ; $7466: $ff
    rst $38                                       ; $7467: $ff
    rst $38                                       ; $7468: $ff
    rst $38                                       ; $7469: $ff
    rst $38                                       ; $746a: $ff
    rst $38                                       ; $746b: $ff
    rst $38                                       ; $746c: $ff
    rst $38                                       ; $746d: $ff
    rst $38                                       ; $746e: $ff
    rst $38                                       ; $746f: $ff
    rst $38                                       ; $7470: $ff
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    rst $38                                       ; $7473: $ff
    rst $38                                       ; $7474: $ff
    rst $38                                       ; $7475: $ff
    rst $38                                       ; $7476: $ff
    rst $38                                       ; $7477: $ff
    rst $38                                       ; $7478: $ff
    rst $38                                       ; $7479: $ff
    rst $38                                       ; $747a: $ff
    rst $38                                       ; $747b: $ff
    rst $38                                       ; $747c: $ff
    rst $38                                       ; $747d: $ff
    rst $38                                       ; $747e: $ff
    rst $38                                       ; $747f: $ff
    rst $38                                       ; $7480: $ff
    rst $38                                       ; $7481: $ff
    rst $38                                       ; $7482: $ff
    rst $38                                       ; $7483: $ff
    rst $38                                       ; $7484: $ff
    rst $38                                       ; $7485: $ff
    rst $38                                       ; $7486: $ff
    rst $38                                       ; $7487: $ff
    rst $38                                       ; $7488: $ff
    rst $38                                       ; $7489: $ff
    rst $38                                       ; $748a: $ff
    rst $38                                       ; $748b: $ff
    rst $38                                       ; $748c: $ff
    rst $38                                       ; $748d: $ff
    rst $38                                       ; $748e: $ff
    rst $38                                       ; $748f: $ff
    rst $38                                       ; $7490: $ff
    rst $38                                       ; $7491: $ff
    rst $38                                       ; $7492: $ff
    rst $38                                       ; $7493: $ff
    rst $38                                       ; $7494: $ff
    rst $38                                       ; $7495: $ff
    rst $38                                       ; $7496: $ff
    rst $38                                       ; $7497: $ff
    rst $38                                       ; $7498: $ff
    rst $38                                       ; $7499: $ff
    rst $38                                       ; $749a: $ff
    rst $38                                       ; $749b: $ff
    rst $38                                       ; $749c: $ff
    rst $38                                       ; $749d: $ff
    rst $38                                       ; $749e: $ff
    rst $38                                       ; $749f: $ff
    rst $38                                       ; $74a0: $ff
    rst $38                                       ; $74a1: $ff
    rst $38                                       ; $74a2: $ff
    rst $38                                       ; $74a3: $ff
    rst $38                                       ; $74a4: $ff
    rst $38                                       ; $74a5: $ff
    rst $38                                       ; $74a6: $ff
    rst $38                                       ; $74a7: $ff
    rst $38                                       ; $74a8: $ff
    rst $38                                       ; $74a9: $ff
    rst $38                                       ; $74aa: $ff
    rst $38                                       ; $74ab: $ff
    rst $38                                       ; $74ac: $ff
    rst $38                                       ; $74ad: $ff
    rst $38                                       ; $74ae: $ff
    rst $38                                       ; $74af: $ff
    rst $38                                       ; $74b0: $ff
    rst $38                                       ; $74b1: $ff
    rst $38                                       ; $74b2: $ff
    rst $38                                       ; $74b3: $ff
    rst $38                                       ; $74b4: $ff
    rst $38                                       ; $74b5: $ff
    rst $38                                       ; $74b6: $ff
    rst $38                                       ; $74b7: $ff
    rst $38                                       ; $74b8: $ff
    rst $38                                       ; $74b9: $ff
    rst $38                                       ; $74ba: $ff
    rst $38                                       ; $74bb: $ff
    rst $38                                       ; $74bc: $ff
    rst $38                                       ; $74bd: $ff
    rst $38                                       ; $74be: $ff
    rst $38                                       ; $74bf: $ff
    rst $38                                       ; $74c0: $ff
    rst $38                                       ; $74c1: $ff
    rst $38                                       ; $74c2: $ff
    rst $38                                       ; $74c3: $ff
    rst $38                                       ; $74c4: $ff
    rst $38                                       ; $74c5: $ff
    rst $38                                       ; $74c6: $ff
    rst $38                                       ; $74c7: $ff
    rst $38                                       ; $74c8: $ff
    rst $38                                       ; $74c9: $ff
    rst $38                                       ; $74ca: $ff
    rst $38                                       ; $74cb: $ff
    rst $38                                       ; $74cc: $ff
    rst $38                                       ; $74cd: $ff
    rst $38                                       ; $74ce: $ff
    rst $38                                       ; $74cf: $ff
    rst $38                                       ; $74d0: $ff
    rst $38                                       ; $74d1: $ff
    rst $38                                       ; $74d2: $ff
    rst $38                                       ; $74d3: $ff
    rst $38                                       ; $74d4: $ff
    rst $38                                       ; $74d5: $ff
    rst $38                                       ; $74d6: $ff
    rst $38                                       ; $74d7: $ff
    rst $38                                       ; $74d8: $ff
    rst $38                                       ; $74d9: $ff
    rst $38                                       ; $74da: $ff
    rst $38                                       ; $74db: $ff
    rst $38                                       ; $74dc: $ff
    rst $38                                       ; $74dd: $ff
    rst $38                                       ; $74de: $ff
    rst $38                                       ; $74df: $ff
    rst $38                                       ; $74e0: $ff
    rst $38                                       ; $74e1: $ff
    rst $38                                       ; $74e2: $ff
    rst $38                                       ; $74e3: $ff
    rst $38                                       ; $74e4: $ff
    rst $38                                       ; $74e5: $ff
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    rst $38                                       ; $74e8: $ff
    rst $38                                       ; $74e9: $ff
    rst $38                                       ; $74ea: $ff
    rst $38                                       ; $74eb: $ff
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    rst $38                                       ; $74f0: $ff
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff
    rst $38                                       ; $7500: $ff
    rst $38                                       ; $7501: $ff
    rst $38                                       ; $7502: $ff
    rst $38                                       ; $7503: $ff
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    rst $38                                       ; $7508: $ff
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    rst $38                                       ; $7517: $ff
    rst $38                                       ; $7518: $ff
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    rst $38                                       ; $751f: $ff
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    rst $38                                       ; $7527: $ff
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rst $38                                       ; $752f: $ff
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    rst $38                                       ; $7550: $ff
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    rst $38                                       ; $755e: $ff
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    rst $38                                       ; $7574: $ff
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff
    rst $38                                       ; $7577: $ff
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    rst $38                                       ; $757e: $ff
    rst $38                                       ; $757f: $ff
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    rst $38                                       ; $7582: $ff
    rst $38                                       ; $7583: $ff
    rst $38                                       ; $7584: $ff
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    rst $38                                       ; $758c: $ff
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $38                                       ; $758f: $ff
    rst $38                                       ; $7590: $ff
    rst $38                                       ; $7591: $ff
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
    rst $38                                       ; $7596: $ff
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    rst $38                                       ; $7599: $ff
    rst $38                                       ; $759a: $ff
    rst $38                                       ; $759b: $ff

Call_03f_759c:
    rst $38                                       ; $759c: $ff
    rst $38                                       ; $759d: $ff
    rst $38                                       ; $759e: $ff
    rst $38                                       ; $759f: $ff
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    rst $38                                       ; $75ab: $ff
    rst $38                                       ; $75ac: $ff
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    rst $38                                       ; $75be: $ff
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    rst $38                                       ; $75c2: $ff
    rst $38                                       ; $75c3: $ff
    rst $38                                       ; $75c4: $ff
    rst $38                                       ; $75c5: $ff
    rst $38                                       ; $75c6: $ff
    rst $38                                       ; $75c7: $ff
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    rst $38                                       ; $75cd: $ff
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    rst $38                                       ; $75de: $ff
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    rst $38                                       ; $75ee: $ff
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    rst $38                                       ; $7613: $ff
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    rst $38                                       ; $761b: $ff
    rst $38                                       ; $761c: $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    rst $38                                       ; $7643: $ff
    rst $38                                       ; $7644: $ff
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    rst $38                                       ; $764f: $ff
    rst $38                                       ; $7650: $ff
    rst $38                                       ; $7651: $ff
    rst $38                                       ; $7652: $ff
    rst $38                                       ; $7653: $ff
    rst $38                                       ; $7654: $ff
    rst $38                                       ; $7655: $ff
    rst $38                                       ; $7656: $ff
    rst $38                                       ; $7657: $ff
    rst $38                                       ; $7658: $ff
    rst $38                                       ; $7659: $ff
    rst $38                                       ; $765a: $ff
    rst $38                                       ; $765b: $ff
    rst $38                                       ; $765c: $ff
    rst $38                                       ; $765d: $ff
    rst $38                                       ; $765e: $ff
    rst $38                                       ; $765f: $ff
    rst $38                                       ; $7660: $ff
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff

Call_03f_7663:
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    rst $38                                       ; $7667: $ff
    rst $38                                       ; $7668: $ff

Jump_03f_7669:
    rst $38                                       ; $7669: $ff
    rst $38                                       ; $766a: $ff
    rst $38                                       ; $766b: $ff
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    rst $38                                       ; $766e: $ff
    rst $38                                       ; $766f: $ff
    rst $38                                       ; $7670: $ff
    rst $38                                       ; $7671: $ff
    rst $38                                       ; $7672: $ff
    rst $38                                       ; $7673: $ff
    rst $38                                       ; $7674: $ff
    rst $38                                       ; $7675: $ff
    rst $38                                       ; $7676: $ff
    rst $38                                       ; $7677: $ff
    rst $38                                       ; $7678: $ff
    rst $38                                       ; $7679: $ff
    rst $38                                       ; $767a: $ff
    rst $38                                       ; $767b: $ff
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    rst $38                                       ; $767f: $ff
    rst $38                                       ; $7680: $ff
    rst $38                                       ; $7681: $ff
    rst $38                                       ; $7682: $ff
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    rst $38                                       ; $7687: $ff
    rst $38                                       ; $7688: $ff
    rst $38                                       ; $7689: $ff
    rst $38                                       ; $768a: $ff
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    rst $38                                       ; $768d: $ff
    rst $38                                       ; $768e: $ff
    rst $38                                       ; $768f: $ff
    rst $38                                       ; $7690: $ff
    rst $38                                       ; $7691: $ff
    rst $38                                       ; $7692: $ff
    rst $38                                       ; $7693: $ff
    rst $38                                       ; $7694: $ff
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    rst $38                                       ; $7697: $ff
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
    rst $38                                       ; $769a: $ff
    rst $38                                       ; $769b: $ff
    rst $38                                       ; $769c: $ff
    rst $38                                       ; $769d: $ff
    rst $38                                       ; $769e: $ff
    rst $38                                       ; $769f: $ff
    rst $38                                       ; $76a0: $ff
    rst $38                                       ; $76a1: $ff
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    rst $38                                       ; $76a4: $ff
    rst $38                                       ; $76a5: $ff
    rst $38                                       ; $76a6: $ff
    rst $38                                       ; $76a7: $ff
    rst $38                                       ; $76a8: $ff
    rst $38                                       ; $76a9: $ff
    rst $38                                       ; $76aa: $ff
    rst $38                                       ; $76ab: $ff
    rst $38                                       ; $76ac: $ff
    rst $38                                       ; $76ad: $ff
    rst $38                                       ; $76ae: $ff
    rst $38                                       ; $76af: $ff
    rst $38                                       ; $76b0: $ff
    rst $38                                       ; $76b1: $ff
    rst $38                                       ; $76b2: $ff
    rst $38                                       ; $76b3: $ff
    rst $38                                       ; $76b4: $ff
    rst $38                                       ; $76b5: $ff
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff
    rst $38                                       ; $76ba: $ff
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    rst $38                                       ; $76ca: $ff
    rst $38                                       ; $76cb: $ff
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $38                                       ; $7772: $ff
    rst $38                                       ; $7773: $ff
    rst $38                                       ; $7774: $ff
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    rst $38                                       ; $7799: $ff
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    rst $38                                       ; $779d: $ff
    rst $38                                       ; $779e: $ff
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    rst $38                                       ; $77a2: $ff
    rst $38                                       ; $77a3: $ff
    rst $38                                       ; $77a4: $ff
    rst $38                                       ; $77a5: $ff
    rst $38                                       ; $77a6: $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff
    rst $38                                       ; $77a9: $ff
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    rst $38                                       ; $77ad: $ff
    rst $38                                       ; $77ae: $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    rst $38                                       ; $77ba: $ff
    rst $38                                       ; $77bb: $ff
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    rst $38                                       ; $77c2: $ff
    rst $38                                       ; $77c3: $ff
    rst $38                                       ; $77c4: $ff
    rst $38                                       ; $77c5: $ff
    rst $38                                       ; $77c6: $ff
    rst $38                                       ; $77c7: $ff
    rst $38                                       ; $77c8: $ff
    rst $38                                       ; $77c9: $ff
    rst $38                                       ; $77ca: $ff
    rst $38                                       ; $77cb: $ff
    rst $38                                       ; $77cc: $ff
    rst $38                                       ; $77cd: $ff
    rst $38                                       ; $77ce: $ff
    rst $38                                       ; $77cf: $ff
    rst $38                                       ; $77d0: $ff
    rst $38                                       ; $77d1: $ff
    rst $38                                       ; $77d2: $ff
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    rst $38                                       ; $77dd: $ff
    rst $38                                       ; $77de: $ff
    rst $38                                       ; $77df: $ff
    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    rst $38                                       ; $77ee: $ff
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    rst $38                                       ; $77f9: $ff
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    rst $38                                       ; $77fe: $ff
    rst $38                                       ; $77ff: $ff
    rst $38                                       ; $7800: $ff
    rst $38                                       ; $7801: $ff
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    rst $38                                       ; $7804: $ff
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    rst $38                                       ; $7811: $ff
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    rst $38                                       ; $7818: $ff
    rst $38                                       ; $7819: $ff
    rst $38                                       ; $781a: $ff
    rst $38                                       ; $781b: $ff
    rst $38                                       ; $781c: $ff
    rst $38                                       ; $781d: $ff
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    rst $38                                       ; $7824: $ff
    rst $38                                       ; $7825: $ff
    rst $38                                       ; $7826: $ff
    rst $38                                       ; $7827: $ff
    rst $38                                       ; $7828: $ff
    rst $38                                       ; $7829: $ff
    rst $38                                       ; $782a: $ff
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    rst $38                                       ; $7834: $ff
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    rst $38                                       ; $783c: $ff
    rst $38                                       ; $783d: $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff
    rst $38                                       ; $7840: $ff
    rst $38                                       ; $7841: $ff
    rst $38                                       ; $7842: $ff
    rst $38                                       ; $7843: $ff
    rst $38                                       ; $7844: $ff
    rst $38                                       ; $7845: $ff
    rst $38                                       ; $7846: $ff
    rst $38                                       ; $7847: $ff
    rst $38                                       ; $7848: $ff
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    rst $38                                       ; $784c: $ff
    rst $38                                       ; $784d: $ff
    rst $38                                       ; $784e: $ff
    rst $38                                       ; $784f: $ff
    rst $38                                       ; $7850: $ff
    rst $38                                       ; $7851: $ff
    rst $38                                       ; $7852: $ff
    rst $38                                       ; $7853: $ff
    rst $38                                       ; $7854: $ff
    rst $38                                       ; $7855: $ff
    rst $38                                       ; $7856: $ff
    rst $38                                       ; $7857: $ff
    rst $38                                       ; $7858: $ff
    rst $38                                       ; $7859: $ff
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    rst $38                                       ; $785c: $ff
    rst $38                                       ; $785d: $ff
    rst $38                                       ; $785e: $ff
    rst $38                                       ; $785f: $ff
    rst $38                                       ; $7860: $ff
    rst $38                                       ; $7861: $ff
    rst $38                                       ; $7862: $ff
    rst $38                                       ; $7863: $ff
    rst $38                                       ; $7864: $ff
    rst $38                                       ; $7865: $ff
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    rst $38                                       ; $7868: $ff
    rst $38                                       ; $7869: $ff
    rst $38                                       ; $786a: $ff
    rst $38                                       ; $786b: $ff
    rst $38                                       ; $786c: $ff
    rst $38                                       ; $786d: $ff
    rst $38                                       ; $786e: $ff
    rst $38                                       ; $786f: $ff
    rst $38                                       ; $7870: $ff
    rst $38                                       ; $7871: $ff
    rst $38                                       ; $7872: $ff
    rst $38                                       ; $7873: $ff
    rst $38                                       ; $7874: $ff
    rst $38                                       ; $7875: $ff
    rst $38                                       ; $7876: $ff
    rst $38                                       ; $7877: $ff
    rst $38                                       ; $7878: $ff
    rst $38                                       ; $7879: $ff
    rst $38                                       ; $787a: $ff
    rst $38                                       ; $787b: $ff
    rst $38                                       ; $787c: $ff
    rst $38                                       ; $787d: $ff
    rst $38                                       ; $787e: $ff
    rst $38                                       ; $787f: $ff
    rst $38                                       ; $7880: $ff
    rst $38                                       ; $7881: $ff
    rst $38                                       ; $7882: $ff
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    rst $38                                       ; $7886: $ff
    rst $38                                       ; $7887: $ff
    rst $38                                       ; $7888: $ff
    rst $38                                       ; $7889: $ff
    rst $38                                       ; $788a: $ff
    rst $38                                       ; $788b: $ff
    rst $38                                       ; $788c: $ff
    rst $38                                       ; $788d: $ff
    rst $38                                       ; $788e: $ff
    rst $38                                       ; $788f: $ff
    rst $38                                       ; $7890: $ff
    rst $38                                       ; $7891: $ff
    rst $38                                       ; $7892: $ff
    rst $38                                       ; $7893: $ff
    rst $38                                       ; $7894: $ff
    rst $38                                       ; $7895: $ff
    rst $38                                       ; $7896: $ff
    rst $38                                       ; $7897: $ff
    rst $38                                       ; $7898: $ff
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff
    rst $38                                       ; $789b: $ff
    rst $38                                       ; $789c: $ff
    rst $38                                       ; $789d: $ff
    rst $38                                       ; $789e: $ff
    rst $38                                       ; $789f: $ff
    rst $38                                       ; $78a0: $ff
    rst $38                                       ; $78a1: $ff
    rst $38                                       ; $78a2: $ff
    rst $38                                       ; $78a3: $ff
    rst $38                                       ; $78a4: $ff
    rst $38                                       ; $78a5: $ff
    rst $38                                       ; $78a6: $ff
    rst $38                                       ; $78a7: $ff
    rst $38                                       ; $78a8: $ff
    rst $38                                       ; $78a9: $ff
    rst $38                                       ; $78aa: $ff
    rst $38                                       ; $78ab: $ff
    rst $38                                       ; $78ac: $ff
    rst $38                                       ; $78ad: $ff
    rst $38                                       ; $78ae: $ff
    rst $38                                       ; $78af: $ff
    rst $38                                       ; $78b0: $ff
    rst $38                                       ; $78b1: $ff
    rst $38                                       ; $78b2: $ff
    rst $38                                       ; $78b3: $ff
    rst $38                                       ; $78b4: $ff
    rst $38                                       ; $78b5: $ff
    rst $38                                       ; $78b6: $ff
    rst $38                                       ; $78b7: $ff
    rst $38                                       ; $78b8: $ff
    rst $38                                       ; $78b9: $ff
    rst $38                                       ; $78ba: $ff
    rst $38                                       ; $78bb: $ff
    rst $38                                       ; $78bc: $ff
    rst $38                                       ; $78bd: $ff
    rst $38                                       ; $78be: $ff
    rst $38                                       ; $78bf: $ff
    rst $38                                       ; $78c0: $ff
    rst $38                                       ; $78c1: $ff
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rst $38                                       ; $78c4: $ff
    rst $38                                       ; $78c5: $ff
    rst $38                                       ; $78c6: $ff
    rst $38                                       ; $78c7: $ff
    rst $38                                       ; $78c8: $ff
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    rst $38                                       ; $78cd: $ff
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    rst $38                                       ; $78db: $ff
    rst $38                                       ; $78dc: $ff
    rst $38                                       ; $78dd: $ff
    rst $38                                       ; $78de: $ff
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    rst $38                                       ; $78e1: $ff
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    rst $38                                       ; $78ed: $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    rst $38                                       ; $78f6: $ff
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    rst $38                                       ; $78fd: $ff
    rst $38                                       ; $78fe: $ff
    rst $38                                       ; $78ff: $ff
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    rst $38                                       ; $7904: $ff
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    rst $38                                       ; $790e: $ff
    rst $38                                       ; $790f: $ff
    rst $38                                       ; $7910: $ff
    rst $38                                       ; $7911: $ff
    rst $38                                       ; $7912: $ff
    rst $38                                       ; $7913: $ff
    rst $38                                       ; $7914: $ff
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    rst $38                                       ; $7919: $ff
    rst $38                                       ; $791a: $ff
    rst $38                                       ; $791b: $ff
    rst $38                                       ; $791c: $ff
    rst $38                                       ; $791d: $ff
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    rst $38                                       ; $7921: $ff
    rst $38                                       ; $7922: $ff
    rst $38                                       ; $7923: $ff
    rst $38                                       ; $7924: $ff
    rst $38                                       ; $7925: $ff
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    rst $38                                       ; $7928: $ff
    rst $38                                       ; $7929: $ff
    rst $38                                       ; $792a: $ff
    rst $38                                       ; $792b: $ff
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rst $38                                       ; $7939: $ff
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    rst $38                                       ; $7940: $ff
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    rst $38                                       ; $794a: $ff
    rst $38                                       ; $794b: $ff
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
    rst $38                                       ; $7951: $ff
    rst $38                                       ; $7952: $ff
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    rst $38                                       ; $7955: $ff
    rst $38                                       ; $7956: $ff
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    rst $38                                       ; $7959: $ff
    rst $38                                       ; $795a: $ff
    rst $38                                       ; $795b: $ff
    rst $38                                       ; $795c: $ff
    rst $38                                       ; $795d: $ff
    rst $38                                       ; $795e: $ff
    rst $38                                       ; $795f: $ff
    rst $38                                       ; $7960: $ff
    rst $38                                       ; $7961: $ff
    rst $38                                       ; $7962: $ff
    rst $38                                       ; $7963: $ff
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    rst $38                                       ; $7966: $ff
    rst $38                                       ; $7967: $ff
    rst $38                                       ; $7968: $ff
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    rst $38                                       ; $7971: $ff
    rst $38                                       ; $7972: $ff
    rst $38                                       ; $7973: $ff
    rst $38                                       ; $7974: $ff
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rst $38                                       ; $7977: $ff
    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    rst $38                                       ; $797f: $ff
    rst $38                                       ; $7980: $ff
    rst $38                                       ; $7981: $ff
    rst $38                                       ; $7982: $ff
    rst $38                                       ; $7983: $ff
    rst $38                                       ; $7984: $ff
    rst $38                                       ; $7985: $ff
    rst $38                                       ; $7986: $ff
    rst $38                                       ; $7987: $ff
    rst $38                                       ; $7988: $ff
    rst $38                                       ; $7989: $ff
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $38                                       ; $798c: $ff
    rst $38                                       ; $798d: $ff
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
    rst $38                                       ; $7990: $ff
    rst $38                                       ; $7991: $ff
    rst $38                                       ; $7992: $ff
    rst $38                                       ; $7993: $ff
    rst $38                                       ; $7994: $ff
    rst $38                                       ; $7995: $ff
    rst $38                                       ; $7996: $ff
    rst $38                                       ; $7997: $ff
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    rst $38                                       ; $799a: $ff
    rst $38                                       ; $799b: $ff
    rst $38                                       ; $799c: $ff
    rst $38                                       ; $799d: $ff
    rst $38                                       ; $799e: $ff
    rst $38                                       ; $799f: $ff
    rst $38                                       ; $79a0: $ff
    rst $38                                       ; $79a1: $ff
    rst $38                                       ; $79a2: $ff
    rst $38                                       ; $79a3: $ff
    rst $38                                       ; $79a4: $ff
    rst $38                                       ; $79a5: $ff
    rst $38                                       ; $79a6: $ff
    rst $38                                       ; $79a7: $ff
    rst $38                                       ; $79a8: $ff
    rst $38                                       ; $79a9: $ff
    rst $38                                       ; $79aa: $ff
    rst $38                                       ; $79ab: $ff
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    rst $38                                       ; $79b3: $ff
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    rst $38                                       ; $79b6: $ff
    rst $38                                       ; $79b7: $ff
    rst $38                                       ; $79b8: $ff
    rst $38                                       ; $79b9: $ff
    rst $38                                       ; $79ba: $ff
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    rst $38                                       ; $79c2: $ff
    rst $38                                       ; $79c3: $ff
    rst $38                                       ; $79c4: $ff
    rst $38                                       ; $79c5: $ff
    rst $38                                       ; $79c6: $ff
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    rst $38                                       ; $79cc: $ff
    rst $38                                       ; $79cd: $ff
    rst $38                                       ; $79ce: $ff
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff

Call_03f_79d4:
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff

Call_03f_79d7:
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    rst $38                                       ; $79da: $ff
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    rst $38                                       ; $79de: $ff
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    rst $38                                       ; $79e7: $ff
    rst $38                                       ; $79e8: $ff
    rst $38                                       ; $79e9: $ff
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff

Call_03f_79f7:
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    rst $38                                       ; $7a13: $ff
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    rst $38                                       ; $7a16: $ff
    rst $38                                       ; $7a17: $ff
    rst $38                                       ; $7a18: $ff
    rst $38                                       ; $7a19: $ff
    rst $38                                       ; $7a1a: $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    rst $38                                       ; $7a24: $ff
    rst $38                                       ; $7a25: $ff
    rst $38                                       ; $7a26: $ff
    rst $38                                       ; $7a27: $ff
    rst $38                                       ; $7a28: $ff
    rst $38                                       ; $7a29: $ff
    rst $38                                       ; $7a2a: $ff
    rst $38                                       ; $7a2b: $ff
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    rst $38                                       ; $7a31: $ff
    rst $38                                       ; $7a32: $ff
    rst $38                                       ; $7a33: $ff
    rst $38                                       ; $7a34: $ff
    rst $38                                       ; $7a35: $ff
    rst $38                                       ; $7a36: $ff
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    rst $38                                       ; $7a3e: $ff
    rst $38                                       ; $7a3f: $ff
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    rst $38                                       ; $7a43: $ff
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    rst $38                                       ; $7a46: $ff
    rst $38                                       ; $7a47: $ff
    rst $38                                       ; $7a48: $ff
    rst $38                                       ; $7a49: $ff
    rst $38                                       ; $7a4a: $ff
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff
    rst $38                                       ; $7a50: $ff
    rst $38                                       ; $7a51: $ff
    rst $38                                       ; $7a52: $ff
    rst $38                                       ; $7a53: $ff
    rst $38                                       ; $7a54: $ff
    rst $38                                       ; $7a55: $ff
    rst $38                                       ; $7a56: $ff
    rst $38                                       ; $7a57: $ff
    rst $38                                       ; $7a58: $ff
    rst $38                                       ; $7a59: $ff
    rst $38                                       ; $7a5a: $ff
    rst $38                                       ; $7a5b: $ff
    rst $38                                       ; $7a5c: $ff
    rst $38                                       ; $7a5d: $ff
    rst $38                                       ; $7a5e: $ff
    rst $38                                       ; $7a5f: $ff
    rst $38                                       ; $7a60: $ff
    rst $38                                       ; $7a61: $ff
    rst $38                                       ; $7a62: $ff
    rst $38                                       ; $7a63: $ff
    rst $38                                       ; $7a64: $ff
    rst $38                                       ; $7a65: $ff
    rst $38                                       ; $7a66: $ff
    rst $38                                       ; $7a67: $ff
    rst $38                                       ; $7a68: $ff
    rst $38                                       ; $7a69: $ff
    rst $38                                       ; $7a6a: $ff
    rst $38                                       ; $7a6b: $ff
    rst $38                                       ; $7a6c: $ff
    rst $38                                       ; $7a6d: $ff
    rst $38                                       ; $7a6e: $ff
    rst $38                                       ; $7a6f: $ff
    rst $38                                       ; $7a70: $ff
    rst $38                                       ; $7a71: $ff
    rst $38                                       ; $7a72: $ff
    rst $38                                       ; $7a73: $ff
    rst $38                                       ; $7a74: $ff
    rst $38                                       ; $7a75: $ff
    rst $38                                       ; $7a76: $ff
    rst $38                                       ; $7a77: $ff
    rst $38                                       ; $7a78: $ff
    rst $38                                       ; $7a79: $ff
    rst $38                                       ; $7a7a: $ff
    rst $38                                       ; $7a7b: $ff
    rst $38                                       ; $7a7c: $ff
    rst $38                                       ; $7a7d: $ff
    rst $38                                       ; $7a7e: $ff
    rst $38                                       ; $7a7f: $ff
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    rst $38                                       ; $7a82: $ff
    rst $38                                       ; $7a83: $ff
    rst $38                                       ; $7a84: $ff
    rst $38                                       ; $7a85: $ff
    rst $38                                       ; $7a86: $ff
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rst $38                                       ; $7a8c: $ff
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    rst $38                                       ; $7a90: $ff
    rst $38                                       ; $7a91: $ff
    rst $38                                       ; $7a92: $ff
    rst $38                                       ; $7a93: $ff
    rst $38                                       ; $7a94: $ff
    rst $38                                       ; $7a95: $ff
    rst $38                                       ; $7a96: $ff
    rst $38                                       ; $7a97: $ff

Call_03f_7a98:
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    rst $38                                       ; $7a9a: $ff
    rst $38                                       ; $7a9b: $ff
    rst $38                                       ; $7a9c: $ff
    rst $38                                       ; $7a9d: $ff
    rst $38                                       ; $7a9e: $ff
    rst $38                                       ; $7a9f: $ff
    rst $38                                       ; $7aa0: $ff
    rst $38                                       ; $7aa1: $ff
    rst $38                                       ; $7aa2: $ff
    rst $38                                       ; $7aa3: $ff
    rst $38                                       ; $7aa4: $ff
    rst $38                                       ; $7aa5: $ff
    rst $38                                       ; $7aa6: $ff
    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    rst $38                                       ; $7aa9: $ff
    rst $38                                       ; $7aaa: $ff
    rst $38                                       ; $7aab: $ff
    rst $38                                       ; $7aac: $ff
    rst $38                                       ; $7aad: $ff
    rst $38                                       ; $7aae: $ff
    rst $38                                       ; $7aaf: $ff
    rst $38                                       ; $7ab0: $ff
    rst $38                                       ; $7ab1: $ff
    rst $38                                       ; $7ab2: $ff
    rst $38                                       ; $7ab3: $ff
    rst $38                                       ; $7ab4: $ff
    rst $38                                       ; $7ab5: $ff
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    rst $38                                       ; $7aba: $ff
    rst $38                                       ; $7abb: $ff
    rst $38                                       ; $7abc: $ff
    rst $38                                       ; $7abd: $ff
    rst $38                                       ; $7abe: $ff
    rst $38                                       ; $7abf: $ff
    rst $38                                       ; $7ac0: $ff
    rst $38                                       ; $7ac1: $ff
    rst $38                                       ; $7ac2: $ff
    rst $38                                       ; $7ac3: $ff
    rst $38                                       ; $7ac4: $ff
    rst $38                                       ; $7ac5: $ff
    rst $38                                       ; $7ac6: $ff
    rst $38                                       ; $7ac7: $ff
    rst $38                                       ; $7ac8: $ff
    rst $38                                       ; $7ac9: $ff
    rst $38                                       ; $7aca: $ff
    rst $38                                       ; $7acb: $ff
    rst $38                                       ; $7acc: $ff
    rst $38                                       ; $7acd: $ff
    rst $38                                       ; $7ace: $ff
    rst $38                                       ; $7acf: $ff
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    rst $38                                       ; $7ad2: $ff
    rst $38                                       ; $7ad3: $ff
    rst $38                                       ; $7ad4: $ff
    rst $38                                       ; $7ad5: $ff
    rst $38                                       ; $7ad6: $ff
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    rst $38                                       ; $7ada: $ff
    rst $38                                       ; $7adb: $ff
    rst $38                                       ; $7adc: $ff
    rst $38                                       ; $7add: $ff
    rst $38                                       ; $7ade: $ff
    rst $38                                       ; $7adf: $ff
    rst $38                                       ; $7ae0: $ff
    rst $38                                       ; $7ae1: $ff

Jump_03f_7ae2:
    rst $38                                       ; $7ae2: $ff
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    rst $38                                       ; $7ae6: $ff
    rst $38                                       ; $7ae7: $ff
    rst $38                                       ; $7ae8: $ff
    rst $38                                       ; $7ae9: $ff
    rst $38                                       ; $7aea: $ff
    rst $38                                       ; $7aeb: $ff
    rst $38                                       ; $7aec: $ff
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    rst $38                                       ; $7aef: $ff
    rst $38                                       ; $7af0: $ff
    rst $38                                       ; $7af1: $ff
    rst $38                                       ; $7af2: $ff
    rst $38                                       ; $7af3: $ff
    rst $38                                       ; $7af4: $ff
    rst $38                                       ; $7af5: $ff
    rst $38                                       ; $7af6: $ff
    rst $38                                       ; $7af7: $ff

Jump_03f_7af8:
    rst $38                                       ; $7af8: $ff
    rst $38                                       ; $7af9: $ff
    rst $38                                       ; $7afa: $ff
    rst $38                                       ; $7afb: $ff
    rst $38                                       ; $7afc: $ff
    rst $38                                       ; $7afd: $ff
    rst $38                                       ; $7afe: $ff
    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    rst $38                                       ; $7b06: $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    rst $38                                       ; $7b12: $ff
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    rst $38                                       ; $7b15: $ff
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff
    rst $38                                       ; $7b1a: $ff
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    rst $38                                       ; $7b1d: $ff
    rst $38                                       ; $7b1e: $ff
    rst $38                                       ; $7b1f: $ff
    rst $38                                       ; $7b20: $ff
    rst $38                                       ; $7b21: $ff
    rst $38                                       ; $7b22: $ff
    rst $38                                       ; $7b23: $ff
    rst $38                                       ; $7b24: $ff
    rst $38                                       ; $7b25: $ff
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    rst $38                                       ; $7b28: $ff
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    rst $38                                       ; $7b2d: $ff
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rst $38                                       ; $7b31: $ff
    rst $38                                       ; $7b32: $ff
    rst $38                                       ; $7b33: $ff
    rst $38                                       ; $7b34: $ff
    rst $38                                       ; $7b35: $ff
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rst $38                                       ; $7b39: $ff
    rst $38                                       ; $7b3a: $ff
    rst $38                                       ; $7b3b: $ff
    rst $38                                       ; $7b3c: $ff
    rst $38                                       ; $7b3d: $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    rst $38                                       ; $7b42: $ff
    rst $38                                       ; $7b43: $ff
    rst $38                                       ; $7b44: $ff
    rst $38                                       ; $7b45: $ff
    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    rst $38                                       ; $7b48: $ff
    rst $38                                       ; $7b49: $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rst $38                                       ; $7b4d: $ff
    rst $38                                       ; $7b4e: $ff
    rst $38                                       ; $7b4f: $ff
    rst $38                                       ; $7b50: $ff
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    rst $38                                       ; $7b55: $ff
    rst $38                                       ; $7b56: $ff
    rst $38                                       ; $7b57: $ff
    rst $38                                       ; $7b58: $ff
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff
    rst $38                                       ; $7b5d: $ff
    rst $38                                       ; $7b5e: $ff
    rst $38                                       ; $7b5f: $ff
    rst $38                                       ; $7b60: $ff
    rst $38                                       ; $7b61: $ff
    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    rst $38                                       ; $7b6a: $ff
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    rst $38                                       ; $7b6d: $ff
    rst $38                                       ; $7b6e: $ff
    rst $38                                       ; $7b6f: $ff
    rst $38                                       ; $7b70: $ff
    rst $38                                       ; $7b71: $ff
    rst $38                                       ; $7b72: $ff
    rst $38                                       ; $7b73: $ff
    rst $38                                       ; $7b74: $ff
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    rst $38                                       ; $7b7b: $ff
    rst $38                                       ; $7b7c: $ff
    rst $38                                       ; $7b7d: $ff
    rst $38                                       ; $7b7e: $ff
    rst $38                                       ; $7b7f: $ff
    rst $38                                       ; $7b80: $ff
    rst $38                                       ; $7b81: $ff
    rst $38                                       ; $7b82: $ff
    rst $38                                       ; $7b83: $ff
    rst $38                                       ; $7b84: $ff
    rst $38                                       ; $7b85: $ff
    rst $38                                       ; $7b86: $ff
    rst $38                                       ; $7b87: $ff
    rst $38                                       ; $7b88: $ff
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rst $38                                       ; $7b8b: $ff
    rst $38                                       ; $7b8c: $ff
    rst $38                                       ; $7b8d: $ff
    rst $38                                       ; $7b8e: $ff
    rst $38                                       ; $7b8f: $ff
    rst $38                                       ; $7b90: $ff
    rst $38                                       ; $7b91: $ff
    rst $38                                       ; $7b92: $ff
    rst $38                                       ; $7b93: $ff
    rst $38                                       ; $7b94: $ff
    rst $38                                       ; $7b95: $ff
    rst $38                                       ; $7b96: $ff
    rst $38                                       ; $7b97: $ff
    rst $38                                       ; $7b98: $ff
    rst $38                                       ; $7b99: $ff
    rst $38                                       ; $7b9a: $ff
    rst $38                                       ; $7b9b: $ff
    rst $38                                       ; $7b9c: $ff
    rst $38                                       ; $7b9d: $ff
    rst $38                                       ; $7b9e: $ff
    rst $38                                       ; $7b9f: $ff
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    rst $38                                       ; $7ba6: $ff
    rst $38                                       ; $7ba7: $ff
    rst $38                                       ; $7ba8: $ff
    rst $38                                       ; $7ba9: $ff
    rst $38                                       ; $7baa: $ff
    rst $38                                       ; $7bab: $ff
    rst $38                                       ; $7bac: $ff
    rst $38                                       ; $7bad: $ff
    rst $38                                       ; $7bae: $ff
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    rst $38                                       ; $7bb2: $ff
    rst $38                                       ; $7bb3: $ff
    rst $38                                       ; $7bb4: $ff
    rst $38                                       ; $7bb5: $ff
    rst $38                                       ; $7bb6: $ff
    rst $38                                       ; $7bb7: $ff
    rst $38                                       ; $7bb8: $ff
    rst $38                                       ; $7bb9: $ff
    rst $38                                       ; $7bba: $ff
    rst $38                                       ; $7bbb: $ff
    rst $38                                       ; $7bbc: $ff
    rst $38                                       ; $7bbd: $ff
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    rst $38                                       ; $7bc1: $ff
    rst $38                                       ; $7bc2: $ff
    rst $38                                       ; $7bc3: $ff
    rst $38                                       ; $7bc4: $ff
    rst $38                                       ; $7bc5: $ff
    rst $38                                       ; $7bc6: $ff
    rst $38                                       ; $7bc7: $ff
    rst $38                                       ; $7bc8: $ff
    rst $38                                       ; $7bc9: $ff
    rst $38                                       ; $7bca: $ff
    rst $38                                       ; $7bcb: $ff
    rst $38                                       ; $7bcc: $ff
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    rst $38                                       ; $7bd0: $ff
    rst $38                                       ; $7bd1: $ff
    rst $38                                       ; $7bd2: $ff
    rst $38                                       ; $7bd3: $ff

Jump_03f_7bd4:
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    rst $38                                       ; $7bd7: $ff
    rst $38                                       ; $7bd8: $ff
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rst $38                                       ; $7bdf: $ff
    rst $38                                       ; $7be0: $ff
    rst $38                                       ; $7be1: $ff
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    rst $38                                       ; $7be7: $ff
    rst $38                                       ; $7be8: $ff
    rst $38                                       ; $7be9: $ff
    rst $38                                       ; $7bea: $ff
    rst $38                                       ; $7beb: $ff
    rst $38                                       ; $7bec: $ff
    rst $38                                       ; $7bed: $ff
    rst $38                                       ; $7bee: $ff
    rst $38                                       ; $7bef: $ff
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    rst $38                                       ; $7bf5: $ff
    rst $38                                       ; $7bf6: $ff
    rst $38                                       ; $7bf7: $ff
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff

Jump_03f_7bfc:
    rst $38                                       ; $7bfc: $ff
    rst $38                                       ; $7bfd: $ff
    rst $38                                       ; $7bfe: $ff
    rst $38                                       ; $7bff: $ff
    rst $38                                       ; $7c00: $ff
    rst $38                                       ; $7c01: $ff
    rst $38                                       ; $7c02: $ff
    rst $38                                       ; $7c03: $ff
    rst $38                                       ; $7c04: $ff
    rst $38                                       ; $7c05: $ff
    rst $38                                       ; $7c06: $ff
    rst $38                                       ; $7c07: $ff
    rst $38                                       ; $7c08: $ff
    rst $38                                       ; $7c09: $ff
    rst $38                                       ; $7c0a: $ff
    rst $38                                       ; $7c0b: $ff
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    rst $38                                       ; $7c0e: $ff
    rst $38                                       ; $7c0f: $ff
    rst $38                                       ; $7c10: $ff
    rst $38                                       ; $7c11: $ff
    rst $38                                       ; $7c12: $ff
    rst $38                                       ; $7c13: $ff
    rst $38                                       ; $7c14: $ff
    rst $38                                       ; $7c15: $ff
    rst $38                                       ; $7c16: $ff
    rst $38                                       ; $7c17: $ff
    rst $38                                       ; $7c18: $ff
    rst $38                                       ; $7c19: $ff
    rst $38                                       ; $7c1a: $ff
    rst $38                                       ; $7c1b: $ff
    rst $38                                       ; $7c1c: $ff
    rst $38                                       ; $7c1d: $ff
    rst $38                                       ; $7c1e: $ff
    rst $38                                       ; $7c1f: $ff
    rst $38                                       ; $7c20: $ff
    rst $38                                       ; $7c21: $ff
    rst $38                                       ; $7c22: $ff
    rst $38                                       ; $7c23: $ff
    rst $38                                       ; $7c24: $ff
    rst $38                                       ; $7c25: $ff
    rst $38                                       ; $7c26: $ff

Call_03f_7c27:
    rst $38                                       ; $7c27: $ff
    rst $38                                       ; $7c28: $ff
    rst $38                                       ; $7c29: $ff
    rst $38                                       ; $7c2a: $ff

Jump_03f_7c2b:
    rst $38                                       ; $7c2b: $ff
    rst $38                                       ; $7c2c: $ff
    rst $38                                       ; $7c2d: $ff
    rst $38                                       ; $7c2e: $ff
    rst $38                                       ; $7c2f: $ff
    rst $38                                       ; $7c30: $ff
    rst $38                                       ; $7c31: $ff
    rst $38                                       ; $7c32: $ff
    rst $38                                       ; $7c33: $ff
    rst $38                                       ; $7c34: $ff
    rst $38                                       ; $7c35: $ff
    rst $38                                       ; $7c36: $ff
    rst $38                                       ; $7c37: $ff
    rst $38                                       ; $7c38: $ff
    rst $38                                       ; $7c39: $ff
    rst $38                                       ; $7c3a: $ff
    rst $38                                       ; $7c3b: $ff
    rst $38                                       ; $7c3c: $ff
    rst $38                                       ; $7c3d: $ff
    rst $38                                       ; $7c3e: $ff
    rst $38                                       ; $7c3f: $ff
    rst $38                                       ; $7c40: $ff
    rst $38                                       ; $7c41: $ff
    rst $38                                       ; $7c42: $ff
    rst $38                                       ; $7c43: $ff
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    rst $38                                       ; $7c46: $ff
    rst $38                                       ; $7c47: $ff
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rst $38                                       ; $7c4a: $ff
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    rst $38                                       ; $7c4d: $ff
    rst $38                                       ; $7c4e: $ff
    rst $38                                       ; $7c4f: $ff
    rst $38                                       ; $7c50: $ff
    rst $38                                       ; $7c51: $ff
    rst $38                                       ; $7c52: $ff
    rst $38                                       ; $7c53: $ff
    rst $38                                       ; $7c54: $ff
    rst $38                                       ; $7c55: $ff
    rst $38                                       ; $7c56: $ff
    rst $38                                       ; $7c57: $ff
    rst $38                                       ; $7c58: $ff
    rst $38                                       ; $7c59: $ff
    rst $38                                       ; $7c5a: $ff
    rst $38                                       ; $7c5b: $ff
    rst $38                                       ; $7c5c: $ff
    rst $38                                       ; $7c5d: $ff
    rst $38                                       ; $7c5e: $ff
    rst $38                                       ; $7c5f: $ff
    rst $38                                       ; $7c60: $ff
    rst $38                                       ; $7c61: $ff
    rst $38                                       ; $7c62: $ff
    rst $38                                       ; $7c63: $ff
    rst $38                                       ; $7c64: $ff
    rst $38                                       ; $7c65: $ff
    rst $38                                       ; $7c66: $ff
    rst $38                                       ; $7c67: $ff
    rst $38                                       ; $7c68: $ff
    rst $38                                       ; $7c69: $ff
    rst $38                                       ; $7c6a: $ff
    rst $38                                       ; $7c6b: $ff
    rst $38                                       ; $7c6c: $ff
    rst $38                                       ; $7c6d: $ff
    rst $38                                       ; $7c6e: $ff
    rst $38                                       ; $7c6f: $ff
    rst $38                                       ; $7c70: $ff
    rst $38                                       ; $7c71: $ff
    rst $38                                       ; $7c72: $ff
    rst $38                                       ; $7c73: $ff
    rst $38                                       ; $7c74: $ff
    rst $38                                       ; $7c75: $ff
    rst $38                                       ; $7c76: $ff
    rst $38                                       ; $7c77: $ff
    rst $38                                       ; $7c78: $ff
    rst $38                                       ; $7c79: $ff
    rst $38                                       ; $7c7a: $ff
    rst $38                                       ; $7c7b: $ff
    rst $38                                       ; $7c7c: $ff
    rst $38                                       ; $7c7d: $ff
    rst $38                                       ; $7c7e: $ff
    rst $38                                       ; $7c7f: $ff
    rst $38                                       ; $7c80: $ff
    rst $38                                       ; $7c81: $ff
    rst $38                                       ; $7c82: $ff
    rst $38                                       ; $7c83: $ff
    rst $38                                       ; $7c84: $ff
    rst $38                                       ; $7c85: $ff
    rst $38                                       ; $7c86: $ff
    rst $38                                       ; $7c87: $ff
    rst $38                                       ; $7c88: $ff
    rst $38                                       ; $7c89: $ff
    rst $38                                       ; $7c8a: $ff
    rst $38                                       ; $7c8b: $ff
    rst $38                                       ; $7c8c: $ff
    rst $38                                       ; $7c8d: $ff
    rst $38                                       ; $7c8e: $ff
    rst $38                                       ; $7c8f: $ff
    rst $38                                       ; $7c90: $ff
    rst $38                                       ; $7c91: $ff
    rst $38                                       ; $7c92: $ff
    rst $38                                       ; $7c93: $ff
    rst $38                                       ; $7c94: $ff
    rst $38                                       ; $7c95: $ff
    rst $38                                       ; $7c96: $ff
    rst $38                                       ; $7c97: $ff
    rst $38                                       ; $7c98: $ff
    rst $38                                       ; $7c99: $ff
    rst $38                                       ; $7c9a: $ff
    rst $38                                       ; $7c9b: $ff
    rst $38                                       ; $7c9c: $ff
    rst $38                                       ; $7c9d: $ff
    rst $38                                       ; $7c9e: $ff
    rst $38                                       ; $7c9f: $ff
    rst $38                                       ; $7ca0: $ff
    rst $38                                       ; $7ca1: $ff
    rst $38                                       ; $7ca2: $ff
    rst $38                                       ; $7ca3: $ff
    rst $38                                       ; $7ca4: $ff
    rst $38                                       ; $7ca5: $ff
    rst $38                                       ; $7ca6: $ff
    rst $38                                       ; $7ca7: $ff
    rst $38                                       ; $7ca8: $ff
    rst $38                                       ; $7ca9: $ff
    rst $38                                       ; $7caa: $ff
    rst $38                                       ; $7cab: $ff
    rst $38                                       ; $7cac: $ff
    rst $38                                       ; $7cad: $ff
    rst $38                                       ; $7cae: $ff
    rst $38                                       ; $7caf: $ff
    rst $38                                       ; $7cb0: $ff
    rst $38                                       ; $7cb1: $ff
    rst $38                                       ; $7cb2: $ff
    rst $38                                       ; $7cb3: $ff
    rst $38                                       ; $7cb4: $ff
    rst $38                                       ; $7cb5: $ff
    rst $38                                       ; $7cb6: $ff
    rst $38                                       ; $7cb7: $ff
    rst $38                                       ; $7cb8: $ff
    rst $38                                       ; $7cb9: $ff
    rst $38                                       ; $7cba: $ff
    rst $38                                       ; $7cbb: $ff
    rst $38                                       ; $7cbc: $ff
    rst $38                                       ; $7cbd: $ff
    rst $38                                       ; $7cbe: $ff
    rst $38                                       ; $7cbf: $ff
    rst $38                                       ; $7cc0: $ff
    rst $38                                       ; $7cc1: $ff
    rst $38                                       ; $7cc2: $ff
    rst $38                                       ; $7cc3: $ff
    rst $38                                       ; $7cc4: $ff
    rst $38                                       ; $7cc5: $ff
    rst $38                                       ; $7cc6: $ff
    rst $38                                       ; $7cc7: $ff
    rst $38                                       ; $7cc8: $ff
    rst $38                                       ; $7cc9: $ff
    rst $38                                       ; $7cca: $ff
    rst $38                                       ; $7ccb: $ff
    rst $38                                       ; $7ccc: $ff
    rst $38                                       ; $7ccd: $ff
    rst $38                                       ; $7cce: $ff
    rst $38                                       ; $7ccf: $ff
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    rst $38                                       ; $7cd2: $ff
    rst $38                                       ; $7cd3: $ff
    rst $38                                       ; $7cd4: $ff
    rst $38                                       ; $7cd5: $ff
    rst $38                                       ; $7cd6: $ff
    rst $38                                       ; $7cd7: $ff
    rst $38                                       ; $7cd8: $ff
    rst $38                                       ; $7cd9: $ff
    rst $38                                       ; $7cda: $ff
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    rst $38                                       ; $7cde: $ff
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    rst $38                                       ; $7ce6: $ff
    rst $38                                       ; $7ce7: $ff
    rst $38                                       ; $7ce8: $ff
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    rst $38                                       ; $7ceb: $ff
    rst $38                                       ; $7cec: $ff
    rst $38                                       ; $7ced: $ff
    rst $38                                       ; $7cee: $ff
    rst $38                                       ; $7cef: $ff
    rst $38                                       ; $7cf0: $ff
    rst $38                                       ; $7cf1: $ff
    rst $38                                       ; $7cf2: $ff
    rst $38                                       ; $7cf3: $ff
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    rst $38                                       ; $7cf6: $ff
    rst $38                                       ; $7cf7: $ff
    rst $38                                       ; $7cf8: $ff
    rst $38                                       ; $7cf9: $ff
    rst $38                                       ; $7cfa: $ff
    rst $38                                       ; $7cfb: $ff
    rst $38                                       ; $7cfc: $ff
    rst $38                                       ; $7cfd: $ff
    rst $38                                       ; $7cfe: $ff
    rst $38                                       ; $7cff: $ff

Call_03f_7d00:
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    rst $38                                       ; $7d02: $ff
    rst $38                                       ; $7d03: $ff
    rst $38                                       ; $7d04: $ff
    rst $38                                       ; $7d05: $ff
    rst $38                                       ; $7d06: $ff
    rst $38                                       ; $7d07: $ff
    rst $38                                       ; $7d08: $ff
    rst $38                                       ; $7d09: $ff
    rst $38                                       ; $7d0a: $ff
    rst $38                                       ; $7d0b: $ff
    rst $38                                       ; $7d0c: $ff
    rst $38                                       ; $7d0d: $ff
    rst $38                                       ; $7d0e: $ff
    rst $38                                       ; $7d0f: $ff
    rst $38                                       ; $7d10: $ff
    rst $38                                       ; $7d11: $ff
    rst $38                                       ; $7d12: $ff
    rst $38                                       ; $7d13: $ff
    rst $38                                       ; $7d14: $ff
    rst $38                                       ; $7d15: $ff
    rst $38                                       ; $7d16: $ff
    rst $38                                       ; $7d17: $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    rst $38                                       ; $7d1a: $ff
    rst $38                                       ; $7d1b: $ff
    rst $38                                       ; $7d1c: $ff
    rst $38                                       ; $7d1d: $ff
    rst $38                                       ; $7d1e: $ff
    rst $38                                       ; $7d1f: $ff
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    rst $38                                       ; $7d22: $ff
    rst $38                                       ; $7d23: $ff
    rst $38                                       ; $7d24: $ff
    rst $38                                       ; $7d25: $ff
    rst $38                                       ; $7d26: $ff
    rst $38                                       ; $7d27: $ff
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    rst $38                                       ; $7d2c: $ff
    rst $38                                       ; $7d2d: $ff
    rst $38                                       ; $7d2e: $ff
    rst $38                                       ; $7d2f: $ff
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    rst $38                                       ; $7d3e: $ff
    rst $38                                       ; $7d3f: $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    rst $38                                       ; $7d42: $ff
    rst $38                                       ; $7d43: $ff
    rst $38                                       ; $7d44: $ff
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    rst $38                                       ; $7d47: $ff
    rst $38                                       ; $7d48: $ff
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    rst $38                                       ; $7d4d: $ff
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    rst $38                                       ; $7d50: $ff
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff
    rst $38                                       ; $7d55: $ff
    rst $38                                       ; $7d56: $ff
    rst $38                                       ; $7d57: $ff
    rst $38                                       ; $7d58: $ff
    rst $38                                       ; $7d59: $ff
    rst $38                                       ; $7d5a: $ff
    rst $38                                       ; $7d5b: $ff
    rst $38                                       ; $7d5c: $ff
    rst $38                                       ; $7d5d: $ff
    rst $38                                       ; $7d5e: $ff
    rst $38                                       ; $7d5f: $ff
    rst $38                                       ; $7d60: $ff
    rst $38                                       ; $7d61: $ff
    rst $38                                       ; $7d62: $ff
    rst $38                                       ; $7d63: $ff
    rst $38                                       ; $7d64: $ff
    rst $38                                       ; $7d65: $ff
    rst $38                                       ; $7d66: $ff
    rst $38                                       ; $7d67: $ff
    rst $38                                       ; $7d68: $ff
    rst $38                                       ; $7d69: $ff
    rst $38                                       ; $7d6a: $ff
    rst $38                                       ; $7d6b: $ff
    rst $38                                       ; $7d6c: $ff
    rst $38                                       ; $7d6d: $ff
    rst $38                                       ; $7d6e: $ff
    rst $38                                       ; $7d6f: $ff
    rst $38                                       ; $7d70: $ff
    rst $38                                       ; $7d71: $ff
    rst $38                                       ; $7d72: $ff
    rst $38                                       ; $7d73: $ff
    rst $38                                       ; $7d74: $ff
    rst $38                                       ; $7d75: $ff
    rst $38                                       ; $7d76: $ff
    rst $38                                       ; $7d77: $ff
    rst $38                                       ; $7d78: $ff
    rst $38                                       ; $7d79: $ff
    rst $38                                       ; $7d7a: $ff
    rst $38                                       ; $7d7b: $ff
    rst $38                                       ; $7d7c: $ff
    rst $38                                       ; $7d7d: $ff
    rst $38                                       ; $7d7e: $ff
    rst $38                                       ; $7d7f: $ff
    rst $38                                       ; $7d80: $ff
    rst $38                                       ; $7d81: $ff
    rst $38                                       ; $7d82: $ff
    rst $38                                       ; $7d83: $ff
    rst $38                                       ; $7d84: $ff
    rst $38                                       ; $7d85: $ff
    rst $38                                       ; $7d86: $ff
    rst $38                                       ; $7d87: $ff
    rst $38                                       ; $7d88: $ff
    rst $38                                       ; $7d89: $ff
    rst $38                                       ; $7d8a: $ff
    rst $38                                       ; $7d8b: $ff
    rst $38                                       ; $7d8c: $ff
    rst $38                                       ; $7d8d: $ff
    rst $38                                       ; $7d8e: $ff
    rst $38                                       ; $7d8f: $ff
    rst $38                                       ; $7d90: $ff
    rst $38                                       ; $7d91: $ff
    rst $38                                       ; $7d92: $ff
    rst $38                                       ; $7d93: $ff
    rst $38                                       ; $7d94: $ff
    rst $38                                       ; $7d95: $ff
    rst $38                                       ; $7d96: $ff
    rst $38                                       ; $7d97: $ff
    rst $38                                       ; $7d98: $ff
    rst $38                                       ; $7d99: $ff
    rst $38                                       ; $7d9a: $ff
    rst $38                                       ; $7d9b: $ff
    rst $38                                       ; $7d9c: $ff
    rst $38                                       ; $7d9d: $ff
    rst $38                                       ; $7d9e: $ff
    rst $38                                       ; $7d9f: $ff
    rst $38                                       ; $7da0: $ff
    rst $38                                       ; $7da1: $ff
    rst $38                                       ; $7da2: $ff
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff
    rst $38                                       ; $7da5: $ff
    rst $38                                       ; $7da6: $ff
    rst $38                                       ; $7da7: $ff
    rst $38                                       ; $7da8: $ff
    rst $38                                       ; $7da9: $ff
    rst $38                                       ; $7daa: $ff
    rst $38                                       ; $7dab: $ff
    rst $38                                       ; $7dac: $ff
    rst $38                                       ; $7dad: $ff
    rst $38                                       ; $7dae: $ff
    rst $38                                       ; $7daf: $ff
    rst $38                                       ; $7db0: $ff
    rst $38                                       ; $7db1: $ff
    rst $38                                       ; $7db2: $ff
    rst $38                                       ; $7db3: $ff
    rst $38                                       ; $7db4: $ff
    rst $38                                       ; $7db5: $ff
    rst $38                                       ; $7db6: $ff
    rst $38                                       ; $7db7: $ff
    rst $38                                       ; $7db8: $ff
    rst $38                                       ; $7db9: $ff
    rst $38                                       ; $7dba: $ff
    rst $38                                       ; $7dbb: $ff
    rst $38                                       ; $7dbc: $ff
    rst $38                                       ; $7dbd: $ff
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    rst $38                                       ; $7dc0: $ff
    rst $38                                       ; $7dc1: $ff
    rst $38                                       ; $7dc2: $ff
    rst $38                                       ; $7dc3: $ff
    rst $38                                       ; $7dc4: $ff
    rst $38                                       ; $7dc5: $ff
    rst $38                                       ; $7dc6: $ff
    rst $38                                       ; $7dc7: $ff
    rst $38                                       ; $7dc8: $ff
    rst $38                                       ; $7dc9: $ff
    rst $38                                       ; $7dca: $ff
    rst $38                                       ; $7dcb: $ff
    rst $38                                       ; $7dcc: $ff
    rst $38                                       ; $7dcd: $ff
    rst $38                                       ; $7dce: $ff
    rst $38                                       ; $7dcf: $ff
    rst $38                                       ; $7dd0: $ff
    rst $38                                       ; $7dd1: $ff
    rst $38                                       ; $7dd2: $ff
    rst $38                                       ; $7dd3: $ff
    rst $38                                       ; $7dd4: $ff
    rst $38                                       ; $7dd5: $ff
    rst $38                                       ; $7dd6: $ff
    rst $38                                       ; $7dd7: $ff
    rst $38                                       ; $7dd8: $ff
    rst $38                                       ; $7dd9: $ff
    rst $38                                       ; $7dda: $ff
    rst $38                                       ; $7ddb: $ff
    rst $38                                       ; $7ddc: $ff
    rst $38                                       ; $7ddd: $ff
    rst $38                                       ; $7dde: $ff
    rst $38                                       ; $7ddf: $ff
    rst $38                                       ; $7de0: $ff
    rst $38                                       ; $7de1: $ff
    rst $38                                       ; $7de2: $ff
    rst $38                                       ; $7de3: $ff
    rst $38                                       ; $7de4: $ff
    rst $38                                       ; $7de5: $ff
    rst $38                                       ; $7de6: $ff
    rst $38                                       ; $7de7: $ff
    rst $38                                       ; $7de8: $ff
    rst $38                                       ; $7de9: $ff
    rst $38                                       ; $7dea: $ff
    rst $38                                       ; $7deb: $ff
    rst $38                                       ; $7dec: $ff
    rst $38                                       ; $7ded: $ff
    rst $38                                       ; $7dee: $ff
    rst $38                                       ; $7def: $ff
    rst $38                                       ; $7df0: $ff
    rst $38                                       ; $7df1: $ff
    rst $38                                       ; $7df2: $ff
    rst $38                                       ; $7df3: $ff
    rst $38                                       ; $7df4: $ff
    rst $38                                       ; $7df5: $ff
    rst $38                                       ; $7df6: $ff
    rst $38                                       ; $7df7: $ff
    rst $38                                       ; $7df8: $ff
    rst $38                                       ; $7df9: $ff
    rst $38                                       ; $7dfa: $ff
    rst $38                                       ; $7dfb: $ff
    rst $38                                       ; $7dfc: $ff
    rst $38                                       ; $7dfd: $ff
    rst $38                                       ; $7dfe: $ff
    rst $38                                       ; $7dff: $ff
    rst $38                                       ; $7e00: $ff
    rst $38                                       ; $7e01: $ff
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    rst $38                                       ; $7e04: $ff
    rst $38                                       ; $7e05: $ff
    rst $38                                       ; $7e06: $ff
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    rst $38                                       ; $7e09: $ff
    rst $38                                       ; $7e0a: $ff
    rst $38                                       ; $7e0b: $ff
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    rst $38                                       ; $7e0e: $ff
    rst $38                                       ; $7e0f: $ff
    rst $38                                       ; $7e10: $ff
    rst $38                                       ; $7e11: $ff
    rst $38                                       ; $7e12: $ff
    rst $38                                       ; $7e13: $ff
    rst $38                                       ; $7e14: $ff
    rst $38                                       ; $7e15: $ff
    rst $38                                       ; $7e16: $ff
    rst $38                                       ; $7e17: $ff
    rst $38                                       ; $7e18: $ff
    rst $38                                       ; $7e19: $ff
    rst $38                                       ; $7e1a: $ff
    rst $38                                       ; $7e1b: $ff
    rst $38                                       ; $7e1c: $ff
    rst $38                                       ; $7e1d: $ff
    rst $38                                       ; $7e1e: $ff
    rst $38                                       ; $7e1f: $ff
    rst $38                                       ; $7e20: $ff
    rst $38                                       ; $7e21: $ff
    rst $38                                       ; $7e22: $ff
    rst $38                                       ; $7e23: $ff
    rst $38                                       ; $7e24: $ff
    rst $38                                       ; $7e25: $ff
    rst $38                                       ; $7e26: $ff
    rst $38                                       ; $7e27: $ff
    rst $38                                       ; $7e28: $ff
    rst $38                                       ; $7e29: $ff
    rst $38                                       ; $7e2a: $ff
    rst $38                                       ; $7e2b: $ff
    rst $38                                       ; $7e2c: $ff
    rst $38                                       ; $7e2d: $ff
    rst $38                                       ; $7e2e: $ff
    rst $38                                       ; $7e2f: $ff
    rst $38                                       ; $7e30: $ff
    rst $38                                       ; $7e31: $ff
    rst $38                                       ; $7e32: $ff
    rst $38                                       ; $7e33: $ff
    rst $38                                       ; $7e34: $ff
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

Jump_03f_7e57:
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

Jump_03f_7ee3:
    rst $38                                       ; $7ee3: $ff
    rst $38                                       ; $7ee4: $ff
    rst $38                                       ; $7ee5: $ff
    rst $38                                       ; $7ee6: $ff
    rst $38                                       ; $7ee7: $ff
    rst $38                                       ; $7ee8: $ff
    rst $38                                       ; $7ee9: $ff
    rst $38                                       ; $7eea: $ff

Call_03f_7eeb:
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

Call_03f_7f05:
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

Jump_03f_7f3a:
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

Call_03f_7f8b:
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
